import SequenceMachineLib.Basic
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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

/-!
# A043401: Numbers whose base-7 representation contains exactly one 2.

The programs for A043401, the canonical program `A043401.P1017218747689233538` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043401 has offset 1).

The definition of A043401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043401.P9944396728794259199

`eq[1, A316863(A007093(n))]`
-/

namespace A043401.P9944396728794259199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043401.P9944396728794259199

namespace A043401

/-- `eq[1, A316863(A007093(n))]` -/
def P9944396728794259199.Spec : Prop :=
  ∀ n, (P9944396728794259199.a n : ℤ) = A043401 (n + 1)

end A043401

/-! ## A043401.P16295020421790282275

`eq[1, A316864(A256307(n))]`
-/

namespace A043401.P16295020421790282275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043401.P16295020421790282275

namespace A043401

/-- `eq[1, A316864(A256307(n))]` -/
def P16295020421790282275.Spec : Prop :=
  ∀ n, (P16295020421790282275.a n : ℤ) = A043401 (n + 1)

end A043401

/-! ## A043401.P3920186945134002731

`eq[1, A316864(A028374(n+1))]`
-/

namespace A043401.P3920186945134002731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043401.P3920186945134002731

namespace A043401

/-- `eq[1, A316864(A028374(n+1))]` -/
def P3920186945134002731.Spec : Prop :=
  ∀ n, (P3920186945134002731.a n : ℤ) = A043401 (n + 1)

end A043401

/-! ## A043401.P9854392244156546556

`eq[1, A316864(A168501(n+1))]`
-/

namespace A043401.P9854392244156546556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043401.P9854392244156546556

namespace A043401

/-- `eq[1, A316864(A168501(n+1))]` -/
def P9854392244156546556.Spec : Prop :=
  ∀ n, (P9854392244156546556.a n : ℤ) = A043401 (n + 1)

end A043401

/-! ## A043401.P1017218747689233538

`eq[1, A316863(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043401

/-- `eq[1, A316863(A307913(n+1))]` -/
def P1017218747689233538.Spec : Prop :=
  ∀ n, (P1017218747689233538.a n : ℤ) = A043401 (n + 1)

theorem P1017218747689233538.correct : P1017218747689233538.Spec := by
  intro n
  simp only [A043401, Nat.add_sub_cancel]

end A043401

/-!
# A043402: Numbers whose base-7 representation contains exactly two 2's.

The programs for A043402, the canonical program `A043402.P12936859337194893635` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043402 has offset 1).

The definition of A043402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043402.P15964928507638676317

`eq[2, A316863(A007093(n))]`
-/

namespace A043402.P15964928507638676317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043402.P15964928507638676317

namespace A043402

/-- `eq[2, A316863(A007093(n))]` -/
def P15964928507638676317.Spec : Prop :=
  ∀ n, (P15964928507638676317.a n : ℤ) = A043402 (n + 1)

end A043402

/-! ## A043402.P14779920949697590570

`eq[2, A316864(A256307(n))]`
-/

namespace A043402.P14779920949697590570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256307 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043402.P14779920949697590570

namespace A043402

/-- `eq[2, A316864(A256307(n))]` -/
def P14779920949697590570.Spec : Prop :=
  ∀ n, (P14779920949697590570.a n : ℤ) = A043402 (n + 1)

end A043402

/-! ## A043402.P15214274367364917864

`eq[2, A316864(A028374(n+1))]`
-/

namespace A043402.P15214274367364917864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043402.P15214274367364917864

namespace A043402

/-- `eq[2, A316864(A028374(n+1))]` -/
def P15214274367364917864.Spec : Prop :=
  ∀ n, (P15214274367364917864.a n : ℤ) = A043402 (n + 1)

end A043402

/-! ## A043402.P16525004958663926755

`eq[2, A316864(A168501(n+1))]`
-/

namespace A043402.P16525004958663926755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043402.P16525004958663926755

namespace A043402

/-- `eq[2, A316864(A168501(n+1))]` -/
def P16525004958663926755.Spec : Prop :=
  ∀ n, (P16525004958663926755.a n : ℤ) = A043402 (n + 1)

end A043402

/-! ## A043402.P12936859337194893635

`eq[2, A316863(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043402

/-- `eq[2, A316863(A307913(n+1))]` -/
def P12936859337194893635.Spec : Prop :=
  ∀ n, (P12936859337194893635.a n : ℤ) = A043402 (n + 1)

theorem P12936859337194893635.correct : P12936859337194893635.Spec := by
  intro n
  simp only [A043402, Nat.add_sub_cancel]

end A043402

/-!
# A043403: Numbers whose base-7 representation contains exactly three 2's.

The programs for A043403, there is no canonical definition to state claims against.
-/

/-! ## A043403.P12232864991316620015

`eq[3, A316863(A007093(n))]`
-/

namespace A043403.P12232864991316620015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043403.P12232864991316620015

/-! ## A043403.P18192188636081274974

`A037466(A023732(n+1)^A179748(n+1))`
-/

namespace A043403.P18192188636081274974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A023732 (n + 1) : ℚ) ^ (A179748 (n + 1) : ℤ))).toNat

end

end A043403.P18192188636081274974

/-! ## A043403.P7150701273288658776

`A025480(C(A043411(2*n+1), A003108(n)))`
-/

namespace A043403.P7150701273288658776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Nat.choose (A043411 (2 * n + 1)).toNat (A003108 n).toNat)

end

end A043403.P7150701273288658776

/-!
# A043404: Numbers whose base-7 representation contains exactly four 2's.

The programs for A043404, there is no canonical definition to state claims against.
-/

/-! ## A043404.P2542652224630853942

`A037466(C(A043360(n+1), A247026(n)))`
-/

namespace A043404.P2542652224630853942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Nat.choose (A043360 (n + 1)).toNat (A247026 n).toNat)

end

end A043404.P2542652224630853942

/-! ## A043404.P11308420621239568701

`A037466(A247026(n)²*A043360(n+1))`
-/

namespace A043404.P11308420621239568701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A247026 n ^ 2 * A043360 (n + 1)).toNat

end

end A043404.P11308420621239568701

/-!
# A043405: Numbers whose base-7 representation contains exactly one 3.

The programs for A043405, the canonical program `A043405.P10085483638679098183` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043405 has offset 1).

The definition of A043405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043405.P10612739817141582293

`eq[1, A316864(A007093(n))]`
-/

namespace A043405.P10612739817141582293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043405.P10612739817141582293

namespace A043405

/-- `eq[1, A316864(A007093(n))]` -/
def P10612739817141582293.Spec : Prop :=
  ∀ n, (P10612739817141582293.a n : ℤ) = A043405 (n + 1)

end A043405

/-! ## A043405.P11603668062988019941

`eq[1, A316867(record[A222229(n)])]`
-/

namespace A043405.P11603668062988019941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043405.P11603668062988019941

namespace A043405

/-- `eq[1, A316867(record[A222229(n)])]` -/
def P11603668062988019941.Spec : Prop :=
  ∀ n, (P11603668062988019941.a n : ℤ) = A043405 (n + 1)

end A043405

/-! ## A043405.P10582664618442164328

`eq[1, A316864(record[A222251(n)])]`
-/

namespace A043405.P10582664618442164328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043405.P10582664618442164328

namespace A043405

/-- `eq[1, A316864(record[A222251(n)])]` -/
def P10582664618442164328.Spec : Prop :=
  ∀ n, (P10582664618442164328.a n : ℤ) = A043405 (n + 1)

end A043405

/-! ## A043405.P10085483638679098183

`eq[1, A316865(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043405

/-- `eq[1, A316865(A307913(n+1))]` -/
def P10085483638679098183.Spec : Prop :=
  ∀ n, (P10085483638679098183.a n : ℤ) = A043405 (n + 1)

theorem P10085483638679098183.correct : P10085483638679098183.Spec := by
  intro n
  simp only [A043405, Nat.add_sub_cancel]

end A043405

/-! ## A043405.P15794652054748803542

`eq[char[8*(n+1)]+1, C(4, A167600(n+1))]`
-/

namespace A043405.P15794652054748803542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A167600 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A043405.P15794652054748803542

namespace A043405

/-- `eq[char[8*(n+1)]+1, C(4, A167600(n+1))]` -/
def P15794652054748803542.Spec : Prop :=
  ∀ n, (P15794652054748803542.a n : ℤ) = A043405 (n + 1)

end A043405

/-!
# A043406: Numbers whose base-7 representation contains exactly two 3's.

The programs for A043406, the canonical program `A043406.P15114839911339223726` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043406 has offset 1).

The definition of A043406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043406.P5486693326874355450

`eq[2, A316864(A007093(n))]`
-/

namespace A043406.P5486693326874355450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043406.P5486693326874355450

namespace A043406

/-- `eq[2, A316864(A007093(n))]` -/
def P5486693326874355450.Spec : Prop :=
  ∀ n, (P5486693326874355450.a n : ℤ) = A043406 (n + 1)

end A043406

/-! ## A043406.P15114839911339223726

`eq[2, A316865(A307913(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043406

/-- `eq[2, A316865(A307913(n+1))]` -/
def P15114839911339223726.Spec : Prop :=
  ∀ n, (P15114839911339223726.a n : ℤ) = A043406 (n + 1)

theorem P15114839911339223726.correct : P15114839911339223726.Spec := by
  intro n
  simp only [A043406, Nat.add_sub_cancel]

end A043406

/-! ## A043406.P17478773949453075429

`floor(A037466(A045304(n+1)^A043283(n+1))/7)`
-/

namespace A043406.P17478773949453075429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037466 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A043283 (n + 1) : ℤ))).toNat : ℚ) / 7⌋

end

end A043406.P17478773949453075429

namespace A043406

/-- `floor(A037466(A045304(n+1)^A043283(n+1))/7)` -/
def P17478773949453075429.Spec : Prop :=
  ∀ n, P17478773949453075429.a n = A043406 (n + 1)

end A043406

/-! ## A043406.P6477487889770983344

`A043418(2*n+1)/A006530(A000079(2*n+1))`
-/

namespace A043406.P6477487889770983344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043418 (2 * n + 1) : ℚ) / (A006530 (A000079 (2 * n + 1)).toNat : ℚ)

end

end A043406.P6477487889770983344

namespace A043406

/-- `A043418(2*n+1)/A006530(A000079(2*n+1))` -/
def P6477487889770983344.Spec : Prop :=
  ∀ n, P6477487889770983344.a n = (A043406 (n + 1) : ℚ)

end A043406

/-!
# A043407: Numbers whose base-7 representation contains exactly three 3's.

The programs for A043407, there is no canonical definition to state claims against.
-/

/-! ## A043407.P9358178639273925599

`A037466(A023736(n+1)%A133970(2*n+5))`
-/

namespace A043407.P9358178639273925599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Int.tmod (A023736 (n + 1)) (A133970 (2 * n + 5))).toNat

end

end A043407.P9358178639273925599

/-! ## A043407.P7201908663100333331

`A037466(A045304(n+1)^A067059(n))`
-/

namespace A043407.P7201908663100333331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043407.P7201908663100333331

/-! ## A043407.P13743035211219123059

`A037466(C(A045304(n+1), A067059(n)))`
-/

namespace A043407.P13743035211219123059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Nat.choose (A045304 (n + 1)).toNat (A067059 n).toNat)

end

end A043407.P13743035211219123059

/-! ## A043407.P13929985745758958234

`A028902(A043503(n+1)^A184257(n+1))`
-/

namespace A043407.P13929985745758958234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (SequenceMachineLib.roundAway ((A043503 (n + 1) : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A043407.P13929985745758958234

/-! ## A043407.P5697146970920044493

`A037466(A045304(n+1)^A184257(n+1))`
-/

namespace A043407.P5697146970920044493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A043407.P5697146970920044493

/-!
# A043408: Numbers whose base-7 representation contains exactly four 3's.

The programs for A043408, there is no canonical definition to state claims against.
-/

/-! ## A043408.P15658003131059647722

`A037466(A043364(n+1)%A195681(n+4))`
-/

namespace A043408.P15658003131059647722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Int.tmod (A043364 (n + 1)) (A195681 (n + 4))).toNat

end

end A043408.P15658003131059647722

/-! ## A043408.P14063090209303571745

`A017017(A043407(n+1)^A067059(n))`
-/

namespace A043408.P14063090209303571745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (SequenceMachineLib.roundAway ((A043407 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043408.P14063090209303571745

/-! ## A043408.P17136736294722161805

`A037466(A043364(n+1)^A067059(n))`
-/

namespace A043408.P17136736294722161805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A043364 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043408.P17136736294722161805

/-! ## A043408.P10724927972614492393

`A017017(C(A043407(n+1), A067059(n)))`
-/

namespace A043408.P10724927972614492393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 (Nat.choose (A043407 (n + 1)).toNat (A067059 n).toNat)

end

end A043408.P10724927972614492393

/-! ## A043408.P18149277081728460896

`A037466(C(A043364(n+1), A067059(n)))`
-/

namespace A043408.P18149277081728460896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Nat.choose (A043364 (n + 1)).toNat (A067059 n).toNat)

end

end A043408.P18149277081728460896

/-!
# A043409: Numbers whose base-7 representation contains exactly one 4.

The programs for A043409, the canonical program `A043409.P7252361644559475722` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043409 has offset 1).

The definition of A043409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043409.P7252361644559475722

`eq[1, A316865(A007093(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043409

/-- `eq[1, A316865(A007093(n))]` -/
def P7252361644559475722.Spec : Prop :=
  ∀ n, (P7252361644559475722.a n : ℤ) = A043409 (n + 1)

theorem P7252361644559475722.correct : P7252361644559475722.Spec := by
  intro n
  simp only [A043409, Nat.add_sub_cancel]

end A043409

/-! ## A043409.P12080515485368800095

`eq[1, A316865(record[A222251(n)])]`
-/

namespace A043409.P12080515485368800095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043409.P12080515485368800095

namespace A043409

/-- `eq[1, A316865(record[A222251(n)])]` -/
def P12080515485368800095.Spec : Prop :=
  ∀ n, (P12080515485368800095.a n : ℤ) = A043409 (n + 1)

end A043409

/-! ## A043409.P14141592760556926756

`eq[1, A316867(A028374(n+1))]`
-/

namespace A043409.P14141592760556926756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043409.P14141592760556926756

namespace A043409

/-- `eq[1, A316867(A028374(n+1))]` -/
def P14141592760556926756.Spec : Prop :=
  ∀ n, (P14141592760556926756.a n : ℤ) = A043409 (n + 1)

end A043409

/-! ## A043409.P3272649029208605694

`eq[1, A102681(2*A007093(n))]`
-/

namespace A043409.P3272649029208605694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (2 * A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043409.P3272649029208605694

namespace A043409

/-- `eq[1, A102681(2*A007093(n))]` -/
def P3272649029208605694.Spec : Prop :=
  ∀ n, (P3272649029208605694.a n : ℤ) = A043409 (n + 1)

end A043409

/-!
# A043410: Numbers whose base-7 representation contains exactly two 4's.

The programs for A043410, the canonical program `A043410.P788888032322188627` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043410 has offset 1).

The definition of A043410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043410.P788888032322188627

`eq[2, A316865(A007093(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043410

/-- `eq[2, A316865(A007093(n))]` -/
def P788888032322188627.Spec : Prop :=
  ∀ n, (P788888032322188627.a n : ℤ) = A043410 (n + 1)

theorem P788888032322188627.correct : P788888032322188627.Spec := by
  intro n
  simp only [A043410, Nat.add_sub_cancel]

end A043410

/-! ## A043410.P2914796712384275996

`eq[2, A316867(A028374(n+1))]`
-/

namespace A043410.P2914796712384275996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043410.P2914796712384275996

namespace A043410

/-- `eq[2, A316867(A028374(n+1))]` -/
def P2914796712384275996.Spec : Prop :=
  ∀ n, (P2914796712384275996.a n : ℤ) = A043410 (n + 1)

end A043410

/-! ## A043410.P36762957541530611

`eq[2, A102681(2*A007093(n))]`
-/

namespace A043410.P36762957541530611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (2 * A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043410.P36762957541530611

namespace A043410

/-- `eq[2, A102681(2*A007093(n))]` -/
def P36762957541530611.Spec : Prop :=
  ∀ n, (P36762957541530611.a n : ℤ) = A043410 (n + 1)

end A043410

/-! ## A043410.P1170209989216279039

`A037466(A023739(n+1)%A096758(n+2))`
-/

namespace A043410.P1170209989216279039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Int.tmod (A023739 (n + 1)) (A096758 (n + 2))).toNat

end

end A043410.P1170209989216279039

namespace A043410

/-- `A037466(A023739(n+1)%A096758(n+2))` -/
def P1170209989216279039.Spec : Prop :=
  ∀ n, P1170209989216279039.a n = A043410 (n + 1)

end A043410

/-!
# A043411: Numbers whose base-7 representation contains exactly three 4's.

The programs for A043411, there is no canonical definition to state claims against.
-/

/-! ## A043411.P13354518093907043562

`A017029(A043410(n+1)^A146237(n+1))`
-/

namespace A043411.P13354518093907043562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (SequenceMachineLib.roundAway ((A043410 (n + 1) : ℚ) ^ (A146237 (n + 1) : ℤ))).toNat

end

end A043411.P13354518093907043562

/-! ## A043411.P17921712124479258362

`A017029(C(A043410(n+1), A146237(n+1)))`
-/

namespace A043411.P17921712124479258362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (Nat.choose (A043410 (n + 1)).toNat (A146237 (n + 1)).toNat)

end

end A043411.P17921712124479258362

/-! ## A043411.P17024598325821248777

`A037466(C(A023740(n+1), A146237(n+1)))`
-/

namespace A043411.P17024598325821248777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Nat.choose (A023740 (n + 1)).toNat (A146237 (n + 1)).toNat)

end

end A043411.P17024598325821248777

/-! ## A043411.P11956676831419002717

`A037466(A146237(n+1)²*A023740(n+1))`
-/

namespace A043411.P11956676831419002717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A146237 (n + 1) ^ 2 * A023740 (n + 1)).toNat

end

end A043411.P11956676831419002717

/-! ## A043411.P9475677099363406002

`A017029(A146237(n+1)²²*A043410(n+1))`
-/

namespace A043411.P9475677099363406002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 ((A146237 (n + 1) ^ 2) ^ 2 * A043410 (n + 1)).toNat

end

end A043411.P9475677099363406002

/-!
# A043412: Numbers whose base-7 representation contains exactly four 4's.

The programs for A043412, there is no canonical definition to state claims against.
-/

/-! ## A043412.P7915732683804609608

`A020658(A043388(n+1)*A262438(n))`
-/

namespace A043412.P7915732683804609608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A043388 (n + 1) * A262438 n).toNat

end

end A043412.P7915732683804609608

/-! ## A043412.P11124580928951309453

`A020658(A043388(n+1)^A262438(n))`
-/

namespace A043412.P11124580928951309453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (SequenceMachineLib.roundAway ((A043388 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043412.P11124580928951309453

/-! ## A043412.P10219332133254157246

`A020658(A043388(n+1)*A146237(n+1))`
-/

namespace A043412.P10219332133254157246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A043388 (n + 1) * A146237 (n + 1)).toNat

end

end A043412.P10219332133254157246

/-! ## A043412.P17594077633597678838

`A017029(A043411(n+1)^A146237(n+1))`
-/

namespace A043412.P17594077633597678838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (SequenceMachineLib.roundAway ((A043411 (n + 1) : ℚ) ^ (A146237 (n + 1) : ℤ))).toNat

end

end A043412.P17594077633597678838

/-! ## A043412.P9042676171200130779

`A020658(A043388(n+1)^A146237(n+1))`
-/

namespace A043412.P9042676171200130779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (SequenceMachineLib.roundAway ((A043388 (n + 1) : ℚ) ^ (A146237 (n + 1) : ℤ))).toNat

end

end A043412.P9042676171200130779

/-!
# A043413: Numbers whose base-7 representation contains exactly one 5.

The programs for A043413, the canonical program `A043413.P1988318233112169477` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043413 has offset 1).

The definition of A043413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043413.P1988318233112169477

`eq[5, A053585(A338880(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043413

/-- `eq[5, A053585(A338880(n))]` -/
def P1988318233112169477.Spec : Prop :=
  ∀ n, (P1988318233112169477.a n : ℤ) = A043413 (n + 1)

theorem P1988318233112169477.correct : P1988318233112169477.Spec := by
  intro n
  simp only [A043413, Nat.add_sub_cancel]

end A043413

/-! ## A043413.P10241290337090305118

`eq[1, A316866(A007093(n))]`
-/

namespace A043413.P10241290337090305118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043413.P10241290337090305118

namespace A043413

/-- `eq[1, A316866(A007093(n))]` -/
def P10241290337090305118.Spec : Prop :=
  ∀ n, (P10241290337090305118.a n : ℤ) = A043413 (n + 1)

end A043413

/-! ## A043413.P6878755316243859896

`eq[1, A316866(record[A222251(n)])]`
-/

namespace A043413.P6878755316243859896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043413.P6878755316243859896

namespace A043413

/-- `eq[1, A316866(record[A222251(n)])]` -/
def P6878755316243859896.Spec : Prop :=
  ∀ n, (P6878755316243859896.a n : ℤ) = A043413 (n + 1)

end A043413

/-! ## A043413.P13935516576644558070

`eq[1, A316869(A028374(n+1))]`
-/

namespace A043413.P13935516576644558070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043413.P13935516576644558070

namespace A043413

/-- `eq[1, A316869(A028374(n+1))]` -/
def P13935516576644558070.Spec : Prop :=
  ∀ n, (P13935516576644558070.a n : ℤ) = A043413 (n + 1)

end A043413

/-! ## A043413.P1017231469628934357

`eq[1, A316868(A307913(n+1))]`
-/

namespace A043413.P1017231469628934357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A307913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043413.P1017231469628934357

namespace A043413

/-- `eq[1, A316868(A307913(n+1))]` -/
def P1017231469628934357.Spec : Prop :=
  ∀ n, (P1017231469628934357.a n : ℤ) = A043413 (n + 1)

end A043413

/-!
# A043414: Numbers whose base-7 representation contains exactly two 5's.

The programs for A043414, there is no canonical definition to state claims against.
-/

/-! ## A043414.P2047660235409941100

`A044553(n+1)+6%A200829(n+1)`
-/

namespace A043414.P2047660235409941100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044553 (n + 1) + Int.tmod 6 (A200829 (n + 1))

end

end A043414.P2047660235409941100

/-! ## A043414.P4811912333812811376

`A271091(A020699(n))+A044173(n+1)`
-/

namespace A043414.P4811912333812811376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 (A020699 n).toNat + A044173 (n + 1)

end

end A043414.P4811912333812811376

/-!
# A043416: Numbers whose base-7 representation contains exactly four 5's.

The programs for A043416, there is no canonical definition to state claims against.
-/

/-! ## A043416.P581665801578784486

`A017041(A043415(n+1))%Δ[A075941(n)]`
-/

namespace A043416.P581665801578784486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017041 (A043415 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A043416.P581665801578784486

/-! ## A043416.P9691489782485481208

`A017041(A271839(n)²²*A043415(n+1))`
-/

namespace A043416.P9691489782485481208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 ((A271839 n ^ 2) ^ 2 * A043415 (n + 1)).toNat

end

end A043416.P9691489782485481208

/-! ## A043416.P3154847817836329874

`A017041(A043415(n+1))*A280497(p?[53*n-7])`
-/

namespace A043416.P3154847817836329874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A043415 (n + 1)).toNat * A280497 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043416.P3154847817836329874

/-! ## A043416.P13932735096449779344

`A017041(A043415(n+1))+A008683(A257361(n+1))`
-/

namespace A043416.P13932735096449779344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (A043415 (n + 1)).toNat + A008683 (A257361 (n + 1)).toNat

end

end A043416.P13932735096449779344

/-!
# A043417: Numbers whose base-7 representation contains exactly one 6.

The programs for A043417, the canonical program `A043417.P1469029716067992225` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043417 has offset 1).

The definition of A043417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043417.P1469029716067992225

`eq[1, A102677(A007093(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043417

/-- `eq[1, A102677(A007093(n))]` -/
def P1469029716067992225.Spec : Prop :=
  ∀ n, (P1469029716067992225.a n : ℤ) = A043417 (n + 1)

theorem P1469029716067992225.correct : P1469029716067992225.Spec := by
  intro n
  simp only [A043417, Nat.add_sub_cancel]

end A043417

/-! ## A043417.P14911868431862902850

`eq[1, A102679(record[A222251(n)])]`
-/

namespace A043417.P14911868431862902850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043417.P14911868431862902850

namespace A043417

/-- `eq[1, A102679(record[A222251(n)])]` -/
def P14911868431862902850.Spec : Prop :=
  ∀ n, (P14911868431862902850.a n : ℤ) = A043417 (n + 1)

end A043417

/-! ## A043417.P6951368874428510382

`eq[1, A102681(record[A222251(n)])]`
-/

namespace A043417.P6951368874428510382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043417.P6951368874428510382

namespace A043417

/-- `eq[1, A102681(record[A222251(n)])]` -/
def P6951368874428510382.Spec : Prop :=
  ∀ n, (P6951368874428510382.a n : ℤ) = A043417 (n + 1)

end A043417

/-! ## A043417.P8722292329438797173

`eq[1, A102683(record[A222251(n)])]`
-/

namespace A043417.P8722292329438797173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043417.P8722292329438797173

namespace A043417

/-- `eq[1, A102683(record[A222251(n)])]` -/
def P8722292329438797173.Spec : Prop :=
  ∀ n, (P8722292329438797173.a n : ℤ) = A043417 (n + 1)

end A043417

/-! ## A043417.P10284315589584216113

`A337141(lt[A328596(n+1)/4, A106614(n)])`
-/

namespace A043417.P10284315589584216113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328596 (n + 1) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A043417.P10284315589584216113

namespace A043417

/-- `A337141(lt[A328596(n+1)/4, A106614(n)])` -/
def P10284315589584216113.Spec : Prop :=
  ∀ n, P10284315589584216113.a n = A043417 (n + 1)

end A043417

/-!
# A043418: Numbers whose base-7 representation contains exactly two 6's.

The programs for A043418, the canonical program `A043418.P16320520258228525458` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043418 has offset 1).

The definition of A043418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043418.P16320520258228525458

`eq[2, A102677(A007093(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043418

/-- `eq[2, A102677(A007093(n))]` -/
def P16320520258228525458.Spec : Prop :=
  ∀ n, (P16320520258228525458.a n : ℤ) = A043418 (n + 1)

theorem P16320520258228525458.correct : P16320520258228525458.Spec := by
  intro n
  simp only [A043418, Nat.add_sub_cancel]

end A043418

/-! ## A043418.P8254361507099920928

`A068505(A043514(n+1)%A155005(2*n+5))`
-/

namespace A043418.P8254361507099920928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (Int.tmod (A043514 (n + 1)) (A155005 (2 * n + 5))).toNat

end

end A043418.P8254361507099920928

namespace A043418

/-- `A068505(A043514(n+1)%A155005(2*n+5))` -/
def P8254361507099920928.Spec : Prop :=
  ∀ n, P8254361507099920928.a n = A043418 (n + 1)

end A043418

/-! ## A043418.P14856261596655307067

`A017053(A337141(n+1)%A321642(n))`
-/

namespace A043418.P14856261596655307067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (Int.tmod (A337141 (n + 1)) (A321642 n)).toNat

end

end A043418.P14856261596655307067

namespace A043418

/-- `A017053(A337141(n+1)%A321642(n))` -/
def P14856261596655307067.Spec : Prop :=
  ∀ n, P14856261596655307067.a n = A043418 (n + 1)

end A043418

/-!
# A043419: Numbers whose base-7 representation contains exactly three 6's.

The programs for A043419, there is no canonical definition to state claims against.
-/

/-! ## A043419.P1802071412195071985

`A017053(A043418(n+1)%A125522(n+1))`
-/

namespace A043419.P1802071412195071985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (Int.tmod (A043418 (n + 1)) (A125522 (n + 1))).toNat

end

end A043419.P1802071412195071985

/-! ## A043419.P318534204137464955

`A017053(A043418(n+1)^A191523(n+1))`
-/

namespace A043419.P318534204137464955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (SequenceMachineLib.roundAway ((A043418 (n + 1) : ℚ) ^ (A191523 (n + 1) : ℤ))).toNat

end

end A043419.P318534204137464955

/-! ## A043419.P14909010622628411749

`A017053(A191523(n+1)²²*A043418(n+1))`
-/

namespace A043419.P14909010622628411749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 ((A191523 (n + 1) ^ 2) ^ 2 * A043418 (n + 1)).toNat

end

end A043419.P14909010622628411749

/-!
# A043420: Numbers whose base-7 representation contains exactly four 6's.

The programs for A043420, there is no canonical definition to state claims against.
-/

/-! ## A043420.P16189603554803267114

`A017053(A043419(n+1)^A193518(n+1))`
-/

namespace A043420.P16189603554803267114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (SequenceMachineLib.roundAway ((A043419 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A043420.P16189603554803267114

/-! ## A043420.P5114874971684919008

`A017053(C(A043419(n+1), A193518(n+1)))`
-/

namespace A043420.P5114874971684919008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (Nat.choose (A043419 (n + 1)).toNat (A193518 (n + 1)).toNat)

end

end A043420.P5114874971684919008

/-! ## A043420.P2403250043798377213

`A017053(A193518(n+1)²²*A043419(n+1))`
-/

namespace A043420.P2403250043798377213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 ((A193518 (n + 1) ^ 2) ^ 2 * A043419 (n + 1)).toNat

end

end A043420.P2403250043798377213

/-! ## A043420.P18141653682912298379

`A017053(A043419(n+1)%A003828(n+1))`
-/

namespace A043420.P18141653682912298379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (Int.tmod (A043419 (n + 1)) (A003828 (n + 1))).toNat

end

end A043420.P18141653682912298379

/-!
# A043421: Numbers having one 0 in base 8.

The programs for A043421, there is no canonical definition to state claims against.
-/

/-! ## A043421.P10409184768733598822

`record[A117358(A043422(n+1))]`
-/

namespace A043421.P10409184768733598822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A043422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043421.P10409184768733598822

/-! ## A043421.P9972098266804397851

`eq[A055641(A007094(n)), A057427(n)]`
-/

namespace A043421.P9972098266804397851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043421.P9972098266804397851

/-! ## A043421.P12195446236380007549

`eq[A014963(2*(n+2)), A055641(A007094(n))]`
-/

namespace A043421.P12195446236380007549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043421.P12195446236380007549

/-! ## A043421.P9946748239578567361

`eq[A010052(A001859(n)), A309959(n)]`
-/

namespace A043421.P9946748239578567361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A001859 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043421.P9946748239578567361

/-! ## A043421.P15605069096159363253

`eq[A112316(A000196(n²)), A309959(n)]`
-/

namespace A043421.P15605069096159363253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A000196 (n ^ 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043421.P15605069096159363253

/-!
# A043422: Numbers having two 0's in base 8.

The programs for A043422, there is no canonical definition to state claims against.
-/

/-! ## A043422.P17478346067078130800

`record[A117358(A043423(n+1))]`
-/

namespace A043422.P17478346067078130800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A043423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043422.P17478346067078130800

/-! ## A043422.P9876429813562462730

`eq[2, A055641(A007094(n))]`
-/

namespace A043422.P9876429813562462730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043422.P9876429813562462730

/-! ## A043422.P14079733003705351950

`A025466(n!)+64*(n+1)`
-/

namespace A043422.P14079733003705351950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (Nat.factorial n) + (64 * (n + 1) : ℤ)

end

end A043422.P14079733003705351950

/-! ## A043422.P7401394119237220871

`A173923(A007290(n))+A044187(n+1)`
-/

namespace A043422.P7401394119237220871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173923 (A007290 n).toNat + A044187 (n + 1)

end

end A043422.P7401394119237220871

/-!
# A043423: Numbers having three 0's in base 8.

The programs for A043423, there is no canonical definition to state claims against.
-/

/-! ## A043423.P5969179657617165191

`record[A117358(A043424(n+1))]`
-/

namespace A043423.P5969179657617165191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A043424 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043423.P5969179657617165191

/-! ## A043423.P1305512614965862526

`A309092(2*(n+1))+A309061(A309094(n+1))`
-/

namespace A043423.P1305512614965862526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309092 (2 * (n + 1)) + A309061 (A309094 (n + 1)).toNat

end

end A043423.P1305512614965862526

/-! ## A043423.P9049264100702596475

`A158011(n+1)+A043287(abs(2*4^n-3))`
-/

namespace A043423.P9049264100702596475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158011 (n + 1) + A043287 |(2 * 4 ^ n : ℤ) - 3|.toNat

end

end A043423.P9049264100702596475

/-! ## A043423.P17973163028362155918

`A158011(n+1)+A054868(A000142(n))`
-/

namespace A043423.P17973163028362155918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158011 (n + 1) + A054868 (A000142 n).toNat

end

end A043423.P17973163028362155918

/-!
# A043425: Numbers having one 1 in base 8.

The programs for A043425, the canonical program `A043425.P2414303622433475634` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043425 has offset 1).

The definition of A043425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043425.P287478253499645469

`eq[1, A268643(A007094(n))]`
-/

namespace A043425.P287478253499645469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P287478253499645469

namespace A043425

/-- `eq[1, A268643(A007094(n))]` -/
def P287478253499645469.Spec : Prop :=
  ∀ n, (P287478253499645469.a n : ℤ) = A043425 (n + 1)

end A043425

/-! ## A043425.P2414303622433475634

`eq[1, A268643(A008541(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043425

/-- `eq[1, A268643(A008541(n+1))]` -/
def P2414303622433475634.Spec : Prop :=
  ∀ n, (P2414303622433475634.a n : ℤ) = A043425 (n + 1)

theorem P2414303622433475634.correct : P2414303622433475634.Spec := by
  intro n
  simp only [A043425, Nat.add_sub_cancel]

end A043425

/-! ## A043425.P12094125660938452660

`eq[1, A316863(A256308(n))]`
-/

namespace A043425.P12094125660938452660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P12094125660938452660

namespace A043425

/-- `eq[1, A316863(A256308(n))]` -/
def P12094125660938452660.Spec : Prop :=
  ∀ n, (P12094125660938452660.a n : ℤ) = A043425 (n + 1)

end A043425

/-! ## A043425.P4160264992592478992

`eq[1, A268643(record[A222253(n)])]`
-/

namespace A043425.P4160264992592478992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P4160264992592478992

namespace A043425

/-- `eq[1, A268643(record[A222253(n)])]` -/
def P4160264992592478992.Spec : Prop :=
  ∀ n, (P4160264992592478992.a n : ℤ) = A043425 (n + 1)

end A043425

/-! ## A043425.P6743722749121140641

`eq[1, A268643(eq[n, A222251(n)])]`
-/

namespace A043425.P6743722749121140641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P6743722749121140641

namespace A043425

/-- `eq[1, A268643(eq[n, A222251(n)])]` -/
def P6743722749121140641.Spec : Prop :=
  ∀ n, (P6743722749121140641.a n : ℤ) = A043425 (n + 1)

end A043425

/-! ## A043425.P9367072776762036621

`eq[1, A268643(eq[n, A222253(n)])]`
-/

namespace A043425.P9367072776762036621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P9367072776762036621

namespace A043425

/-- `eq[1, A268643(eq[n, A222253(n)])]` -/
def P9367072776762036621.Spec : Prop :=
  ∀ n, (P9367072776762036621.a n : ℤ) = A043425 (n + 1)

end A043425

/-! ## A043425.P10487356015072239821

`eq[1, A268643(A008539(n+1))]`
-/

namespace A043425.P10487356015072239821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043425.P10487356015072239821

namespace A043425

/-- `eq[1, A268643(A008539(n+1))]` -/
def P10487356015072239821.Spec : Prop :=
  ∀ n, (P10487356015072239821.a n : ℤ) = A043425 (n + 1)

end A043425

/-!
# A043426: Numbers having two 1's in base 8.

The programs for A043426, the canonical program `A043426.P14037301533186646558` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043426 has offset 1).

The definition of A043426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043426.P3173009132764458277

`eq[2, A268643(A007094(n))]`
-/

namespace A043426.P3173009132764458277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043426.P3173009132764458277

namespace A043426

/-- `eq[2, A268643(A007094(n))]` -/
def P3173009132764458277.Spec : Prop :=
  ∀ n, (P3173009132764458277.a n : ℤ) = A043426 (n + 1)

end A043426

/-! ## A043426.P3585194901393058134

`eq[2, A316863(A256308(n))]`
-/

namespace A043426.P3585194901393058134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043426.P3585194901393058134

namespace A043426

/-- `eq[2, A316863(A256308(n))]` -/
def P3585194901393058134.Spec : Prop :=
  ∀ n, (P3585194901393058134.a n : ℤ) = A043426 (n + 1)

end A043426

/-! ## A043426.P14037301533186646558

`eq[2, A268643(A008541(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043426

/-- `eq[2, A268643(A008541(n+1))]` -/
def P14037301533186646558.Spec : Prop :=
  ∀ n, (P14037301533186646558.a n : ℤ) = A043426 (n + 1)

theorem P14037301533186646558.correct : P14037301533186646558.Spec := by
  intro n
  simp only [A043426, Nat.add_sub_cancel]

end A043426

/-! ## A043426.P13715594267270769522

`eq[2, A268643(A008539(n+1))]`
-/

namespace A043426.P13715594267270769522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043426.P13715594267270769522

namespace A043426

/-- `eq[2, A268643(A008539(n+1))]` -/
def P13715594267270769522.Spec : Prop :=
  ∀ n, (P13715594267270769522.a n : ℤ) = A043426 (n + 1)

end A043426

/-!
# A043427: Numbers having three 1's in base 8.

The programs for A043427, there is no canonical definition to state claims against.
-/

/-! ## A043427.P10451492127373899017

`eq[3, A268643(A007094(n))]`
-/

namespace A043427.P10451492127373899017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043427.P10451492127373899017

/-! ## A043427.P8719249519481586712

`record[A053645(A043428(n+1))]`
-/

namespace A043427.P8719249519481586712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A043428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043427.P8719249519481586712

/-! ## A043427.P9528114862482026626

`record[A062050(A043428(n+1)-1)]`
-/

namespace A043427.P9528114862482026626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A043428 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043427.P9528114862482026626

/-!
# A043428: Numbers having four 1's in base 8.

The programs for A043428, there is no canonical definition to state claims against.
-/

/-! ## A043428.P1724317235017737959

`A037474(A043400(n+1)^A055642(n))`
-/

namespace A043428.P1724317235017737959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043400 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A043428.P1724317235017737959

/-! ## A043428.P9024262339167085338

`A037474(C(A043400(n+1), A055642(n)))`
-/

namespace A043428.P9024262339167085338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A043400 (n + 1)).toNat (A055642 n).toNat)

end

end A043428.P9024262339167085338

/-! ## A043428.P16762870585504028070

`A037474(A055642(n)²*A043400(n+1))`
-/

namespace A043428.P16762870585504028070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A055642 n ^ 2 * A043400 (n + 1)).toNat

end

end A043428.P16762870585504028070

/-! ## A043428.P12199580120442160079

`A037474(A043400(n+1)*A055642(n)*A055642(n))`
-/

namespace A043428.P12199580120442160079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043400 (n + 1) * A055642 n * A055642 n).toNat

end

end A043428.P12199580120442160079

/-!
# A043429: Numbers having one 2 in base 8.

The programs for A043429, the canonical program `A043429.P15064913157282269590` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043429 has offset 1).

The definition of A043429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043429.P14873849050402735361

`eq[1, A316863(A007094(n))]`
-/

namespace A043429.P14873849050402735361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P14873849050402735361

namespace A043429

/-- `eq[1, A316863(A007094(n))]` -/
def P14873849050402735361.Spec : Prop :=
  ∀ n, (P14873849050402735361.a n : ℤ) = A043429 (n + 1)

end A043429

/-! ## A043429.P2754260885904074426

`eq[1, A316864(A256308(n))]`
-/

namespace A043429.P2754260885904074426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P2754260885904074426

namespace A043429

/-- `eq[1, A316864(A256308(n))]` -/
def P2754260885904074426.Spec : Prop :=
  ∀ n, (P2754260885904074426.a n : ℤ) = A043429 (n + 1)

end A043429

/-! ## A043429.P7975591122961860687

`eq[1, A316863(record[A222253(n)])]`
-/

namespace A043429.P7975591122961860687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P7975591122961860687

namespace A043429

/-- `eq[1, A316863(record[A222253(n)])]` -/
def P7975591122961860687.Spec : Prop :=
  ∀ n, (P7975591122961860687.a n : ℤ) = A043429 (n + 1)

end A043429

/-! ## A043429.P15064913157282269590

`eq[1, A316863(A008541(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043429

/-- `eq[1, A316863(A008541(n+1))]` -/
def P15064913157282269590.Spec : Prop :=
  ∀ n, (P15064913157282269590.a n : ℤ) = A043429 (n + 1)

theorem P15064913157282269590.correct : P15064913157282269590.Spec := by
  intro n
  simp only [A043429, Nat.add_sub_cancel]

end A043429

/-! ## A043429.P13902577772888698739

`eq[1, A316864(eq[n, A222232(n)])]`
-/

namespace A043429.P13902577772888698739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P13902577772888698739

namespace A043429

/-- `eq[1, A316864(eq[n, A222232(n)])]` -/
def P13902577772888698739.Spec : Prop :=
  ∀ n, (P13902577772888698739.a n : ℤ) = A043429 (n + 1)

end A043429

/-! ## A043429.P1660225806829933887

`eq[1, A316863(eq[n, A222253(n)])]`
-/

namespace A043429.P1660225806829933887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P1660225806829933887

namespace A043429

/-- `eq[1, A316863(eq[n, A222253(n)])]` -/
def P1660225806829933887.Spec : Prop :=
  ∀ n, (P1660225806829933887.a n : ℤ) = A043429 (n + 1)

end A043429

/-! ## A043429.P12649915132486460336

`eq[1, A316863(A008539(n+1))]`
-/

namespace A043429.P12649915132486460336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043429.P12649915132486460336

namespace A043429

/-- `eq[1, A316863(A008539(n+1))]` -/
def P12649915132486460336.Spec : Prop :=
  ∀ n, (P12649915132486460336.a n : ℤ) = A043429 (n + 1)

end A043429

/-!
# A043430: Numbers having two 2's in base 8.

The programs for A043430, the canonical program `A043430.P1982640148982015273` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043430 has offset 1).

The definition of A043430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043430.P4764044524188728857

`eq[2, A316863(A007094(n))]`
-/

namespace A043430.P4764044524188728857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043430.P4764044524188728857

namespace A043430

/-- `eq[2, A316863(A007094(n))]` -/
def P4764044524188728857.Spec : Prop :=
  ∀ n, (P4764044524188728857.a n : ℤ) = A043430 (n + 1)

end A043430

/-! ## A043430.P211201277462732674

`eq[2, A316864(A256308(n))]`
-/

namespace A043430.P211201277462732674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043430.P211201277462732674

namespace A043430

/-- `eq[2, A316864(A256308(n))]` -/
def P211201277462732674.Spec : Prop :=
  ∀ n, (P211201277462732674.a n : ℤ) = A043430 (n + 1)

end A043430

/-! ## A043430.P1982640148982015273

`eq[2, A316863(A008541(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A043430

/-- `eq[2, A316863(A008541(n+1))]` -/
def P1982640148982015273.Spec : Prop :=
  ∀ n, (P1982640148982015273.a n : ℤ) = A043430 (n + 1)

theorem P1982640148982015273.correct : P1982640148982015273.Spec := by
  intro n
  simp only [A043430, Nat.add_sub_cancel]

end A043430

/-! ## A043430.P17204010877848817736

`eq[2, A316863(A008539(n+1))]`
-/

namespace A043430.P17204010877848817736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043430.P17204010877848817736

namespace A043430

/-- `eq[2, A316863(A008539(n+1))]` -/
def P17204010877848817736.Spec : Prop :=
  ∀ n, (P17204010877848817736.a n : ℤ) = A043430 (n + 1)

end A043430

/-! ## A043430.P3435345343505363314

`A037471(C(A043378(n+1), A323529(n+1)))`
-/

namespace A043430.P3435345343505363314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Nat.choose (A043378 (n + 1)).toNat (A323529 (n + 1)).toNat)

end

end A043430.P3435345343505363314

namespace A043430

/-- `A037471(C(A043378(n+1), A323529(n+1)))` -/
def P3435345343505363314.Spec : Prop :=
  ∀ n, P3435345343505363314.a n = A043430 (n + 1)

end A043430

/-!
# A043431: Numbers having three 2's in base 8.

The programs for A043431, there is no canonical definition to state claims against.
-/

/-! ## A043431.P5503207112056300650

`A037474(A043403(n+1)^A003108(n))`
-/

namespace A043431.P5503207112056300650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043403 (n + 1) : ℚ) ^ (A003108 n : ℤ))).toNat

end

end A043431.P5503207112056300650

/-! ## A043431.P4767396638171915226

`A037474(A043403(n+1)^A179748(n+1))`
-/

namespace A043431.P4767396638171915226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043403 (n + 1) : ℚ) ^ (A179748 (n + 1) : ℤ))).toNat

end

end A043431.P4767396638171915226

/-! ## A043431.P16595818257985894632

`A037462(A045148(n+1))*A309861(A309861(n)²)`
-/

namespace A043431.P16595818257985894632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (A045148 (n + 1)).toNat * A309861 (A309861 n ^ 2).toNat

end

end A043431.P16595818257985894632

/-!
# A043432: Numbers having four 2's in base 8.

The programs for A043432, there is no canonical definition to state claims against.
-/

/-! ## A043432.P8823226143077771681

`A037462(lcm(A043344(n+1), A045153(n+1)))`
-/

namespace A043432.P8823226143077771681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (Int.lcm (A043344 (n + 1)) (A045153 (n + 1)))

end

end A043432.P8823226143077771681

/-! ## A043432.P7845585871719682430

`A037462(A045153(n+1)%Δ[A334836(n+2)])`
-/

namespace A043432.P7845585871719682430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (Int.tmod (A045153 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A043432.P7845585871719682430

/-! ## A043432.P9289713475235052455

`A037462(A045153(n+1)%A334836(n+4))`
-/

namespace A043432.P9289713475235052455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (Int.tmod (A045153 (n + 1)) (A334836 (n + 4))).toNat

end

end A043432.P9289713475235052455

/-! ## A043432.P4201484165110804261

`A037467(C(A043360(n+1), A247026(n)))`
-/

namespace A043432.P4201484165110804261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Nat.choose (A043360 (n + 1)).toNat (A247026 n).toNat)

end

end A043432.P4201484165110804261

/-!
# A043433: Numbers having one 3 in base 8.

The programs for A043433, the canonical program `A043433.P9795498793324602999` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043433 has offset 1).

The definition of A043433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043433.P14586850899335945950

`eq[1, A316864(A007094(n))]`
-/

namespace A043433.P14586850899335945950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P14586850899335945950

namespace A043433

/-- `eq[1, A316864(A007094(n))]` -/
def P14586850899335945950.Spec : Prop :=
  ∀ n, (P14586850899335945950.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P16635591369759059795

`eq[1, A316864(record[A222253(n)])]`
-/

namespace A043433.P16635591369759059795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P16635591369759059795

namespace A043433

/-- `eq[1, A316864(record[A222253(n)])]` -/
def P16635591369759059795.Spec : Prop :=
  ∀ n, (P16635591369759059795.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P9795498793324602999

`eq[1, A316864(eq[0, A102681(n)])]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043433

/-- `eq[1, A316864(eq[0, A102681(n)])]` -/
def P9795498793324602999.Spec : Prop :=
  ∀ n, (P9795498793324602999.a n : ℤ) = A043433 (n + 1)

theorem P9795498793324602999.correct : P9795498793324602999.Spec := by
  intro n
  simp only [A043433, Nat.add_sub_cancel]

end A043433

/-! ## A043433.P14860625748171144462

`eq[1, A316864(lt[A054055(n), 8])]`
-/

namespace A043433.P14860625748171144462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P14860625748171144462

namespace A043433

/-- `eq[1, A316864(lt[A054055(n), 8])]` -/
def P14860625748171144462.Spec : Prop :=
  ∀ n, (P14860625748171144462.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P17641224535477068024

`eq[1, A316864(eq[n, A222248(n)])]`
-/

namespace A043433.P17641224535477068024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P17641224535477068024

namespace A043433

/-- `eq[1, A316864(eq[n, A222248(n)])]` -/
def P17641224535477068024.Spec : Prop :=
  ∀ n, (P17641224535477068024.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P1629405155355834372

`eq[1, A316864(eq[n, A222251(n)])]`
-/

namespace A043433.P1629405155355834372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P1629405155355834372

namespace A043433

/-- `eq[1, A316864(eq[n, A222251(n)])]` -/
def P1629405155355834372.Spec : Prop :=
  ∀ n, (P1629405155355834372.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P12789571089319548517

`eq[1, A316864(eq[n, A222252(n)])]`
-/

namespace A043433.P12789571089319548517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P12789571089319548517

namespace A043433

/-- `eq[1, A316864(eq[n, A222252(n)])]` -/
def P12789571089319548517.Spec : Prop :=
  ∀ n, (P12789571089319548517.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P1265227517484737346

`eq[1, A316864(eq[n, A222253(n)])]`
-/

namespace A043433.P1265227517484737346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P1265227517484737346

namespace A043433

/-- `eq[1, A316864(eq[n, A222253(n)])]` -/
def P1265227517484737346.Spec : Prop :=
  ∀ n, (P1265227517484737346.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P4273310523216386654

`eq[1, A316864(eq[n, A222254(n)])]`
-/

namespace A043433.P4273310523216386654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P4273310523216386654

namespace A043433

/-- `eq[1, A316864(eq[n, A222254(n)])]` -/
def P4273310523216386654.Spec : Prop :=
  ∀ n, (P4273310523216386654.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P10940300121801143601

`eq[1, A316864(record[n-2*A136400(n)])]`
-/

namespace A043433.P10940300121801143601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P10940300121801143601

namespace A043433

/-- `eq[1, A316864(record[n-2*A136400(n)])]` -/
def P10940300121801143601.Spec : Prop :=
  ∀ n, (P10940300121801143601.a n : ℤ) = A043433 (n + 1)

end A043433

/-! ## A043433.P7514203472071783915

`eq[1, A316864(A008539(n+1))]`
-/

namespace A043433.P7514203472071783915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P7514203472071783915

namespace A043433

/-- `eq[1, A316864(A008539(n+1))]` -/
def P7514203472071783915.Spec : Prop :=
  ∀ n, (P7514203472071783915.a n : ℤ) = A043433 (n + 1)

end A043433

/-!
# A043434: Numbers having two 3's in base 8.

The programs for A043434, the canonical program `A043434.P9059207754723185637` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043434 has offset 1).

The definition of A043434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043434.P9059207754723185637

`eq[2, A316864(A007094(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043434

/-- `eq[2, A316864(A007094(n))]` -/
def P9059207754723185637.Spec : Prop :=
  ∀ n, (P9059207754723185637.a n : ℤ) = A043434 (n + 1)

theorem P9059207754723185637.correct : P9059207754723185637.Spec := by
  intro n
  simp only [A043434, Nat.add_sub_cancel]

end A043434

/-! ## A043434.P1446094250615563912

`record[A008624(A004525(A043435(n+1)))]`
-/

namespace A043434.P1446094250615563912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A004525 (A043435 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043434.P1446094250615563912

namespace A043434

/-- `record[A008624(A004525(A043435(n+1)))]` -/
def P1446094250615563912.Spec : Prop :=
  ∀ n, P1446094250615563912.a n = A043434 (n + 1)

end A043434

/-! ## A043434.P12213388882934144402

`eq[2, A316864(A008539(n+1))]`
-/

namespace A043434.P12213388882934144402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043434.P12213388882934144402

namespace A043434

/-- `eq[2, A316864(A008539(n+1))]` -/
def P12213388882934144402.Spec : Prop :=
  ∀ n, (P12213388882934144402.a n : ℤ) = A043434 (n + 1)

end A043434

/-! ## A043434.P10996931643095655768

`A037474(A043406(n+1)^A043283(n+1))`
-/

namespace A043434.P10996931643095655768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043406 (n + 1) : ℚ) ^ (A043283 (n + 1) : ℤ))).toNat

end

end A043434.P10996931643095655768

namespace A043434

/-- `A037474(A043406(n+1)^A043283(n+1))` -/
def P10996931643095655768.Spec : Prop :=
  ∀ n, P10996931643095655768.a n = A043434 (n + 1)

end A043434

/-!
# A043435: Numbers having three 3's in base 8.

The programs for A043435, there is no canonical definition to state claims against.
-/

/-! ## A043435.P12700857061039919636

`A037471(A043383(n+1)%A106299(3*n+5))`
-/

namespace A043435.P12700857061039919636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.tmod (A043383 (n + 1)) (A106299 (3 * n + 5))).toNat

end

end A043435.P12700857061039919636

/-! ## A043435.P3088547911649977242

`A037471(A043383(n+1)%A123287(n+2))`
-/

namespace A043435.P3088547911649977242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.tmod (A043383 (n + 1)) (A123287 (n + 2 + 31))).toNat

end

end A043435.P3088547911649977242

/-! ## A043435.P12618271731037472321

`A037462(A023720(n+1)^A067059(n))`
-/

namespace A043435.P12618271731037472321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (SequenceMachineLib.roundAway ((A023720 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043435.P12618271731037472321

/-! ## A043435.P5374778527473697732

`A037471(A043383(n+1)^A067059(n))`
-/

namespace A043435.P5374778527473697732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043383 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043435.P5374778527473697732

/-! ## A043435.P11290250061824536946

`A037474(A043407(n+1)^A067059(n))`
-/

namespace A043435.P11290250061824536946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043407 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043435.P11290250061824536946

/-!
# A043436: Numbers having four 3's in base 8.

The programs for A043436, there is no canonical definition to state claims against.
-/

/-! ## A043436.P15115876837497110394

`A037474(A043408(n+1)%A122239(n+4))`
-/

namespace A043436.P15115876837497110394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A043408 (n + 1)) (A122239 (n + 4))).toNat

end

end A043436.P15115876837497110394

/-! ## A043436.P17282442466501752677

`A037474(A043408(n+1))%A195681(n+2)`
-/

namespace A043436.P17282442466501752677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043408 (n + 1)).toNat) (A195681 (n + 2))

end

end A043436.P17282442466501752677

/-! ## A043436.P6868315054269643283

`A037462(A043348(n+1)%A096708(2*n+3))`
-/

namespace A043436.P6868315054269643283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037462 (Int.tmod (A043348 (n + 1)) (A096708 (2 * n + 3))).toNat

end

end A043436.P6868315054269643283

/-! ## A043436.P3364969911526949754

`A037471(lcm(3, A043384(n+1)))`
-/

namespace A043436.P3364969911526949754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.lcm 3 (A043384 (n + 1)))

end

end A043436.P3364969911526949754

/-! ## A043436.P14326073451116266766

`A037474(A043408(n+1)*A067059(n))`
-/

namespace A043436.P14326073451116266766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043408 (n + 1) * A067059 n).toNat

end

end A043436.P14326073451116266766

/-!
# A043437: Numbers having one 4 in base 8.

The programs for A043437, the canonical program `A043437.P12782922583909026684` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043437 has offset 1).

The definition of A043437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043437.P12782922583909026684

`eq[1, A316865(A007094(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A043437

/-- `eq[1, A316865(A007094(n))]` -/
def P12782922583909026684.Spec : Prop :=
  ∀ n, (P12782922583909026684.a n : ℤ) = A043437 (n + 1)

theorem P12782922583909026684.correct : P12782922583909026684.Spec := by
  intro n
  simp only [A043437, Nat.add_sub_cancel]

end A043437

/-! ## A043437.P3378167384948729329

`eq[1, A316865(record[A222250(n)])]`
-/

namespace A043437.P3378167384948729329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043437.P3378167384948729329

namespace A043437

/-- `eq[1, A316865(record[A222250(n)])]` -/
def P3378167384948729329.Spec : Prop :=
  ∀ n, (P3378167384948729329.a n : ℤ) = A043437 (n + 1)

end A043437

/-! ## A043437.P10368118403810272567

`eq[1, A316865(record[A222253(n)])]`
-/

namespace A043437.P10368118403810272567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043437.P10368118403810272567

namespace A043437

/-- `eq[1, A316865(record[A222253(n)])]` -/
def P10368118403810272567.Spec : Prop :=
  ∀ n, (P10368118403810272567.a n : ℤ) = A043437 (n + 1)

end A043437

/-! ## A043437.P2835343283634523351

`eq[1, A316865(A008539(n+1))]`
-/

namespace A043437.P2835343283634523351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043437.P2835343283634523351

namespace A043437

/-- `eq[1, A316865(A008539(n+1))]` -/
def P2835343283634523351.Spec : Prop :=
  ∀ n, (P2835343283634523351.a n : ℤ) = A043437 (n + 1)

end A043437

/-!
# A043438: Numbers having two 4's in base 8.

The programs for A043438, there is no canonical definition to state claims against.
-/

/-! ## A043438.P2337753351964052776

`record[A110657(A008619(A043439(n+1)))]`
-/

namespace A043438.P2337753351964052776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A008619 (A043439 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043438.P2337753351964052776

/-! ## A043438.P279801097017153351

`A037467(A023739(n+1)^A196017(n+1))`
-/

namespace A043438.P279801097017153351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (SequenceMachineLib.roundAway ((A023739 (n + 1) : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat

end

end A043438.P279801097017153351

/-! ## A043438.P13367144835287057862

`A037467(A023739(n+1)%A045345(n+5))`
-/

namespace A043438.P13367144835287057862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Int.tmod (A023739 (n + 1)) (A045345 (n + 5))).toNat

end

end A043438.P13367144835287057862

/-! ## A043438.P1478325799188756402

`floor(A037471(A043387(n+1)^A196017(n+1))/8)`
-/

namespace A043438.P1478325799188756402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037471 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat : ℚ) / 8⌋

end

end A043438.P1478325799188756402

/-! ## A043438.P7840400269864453196

`A037474(A043410(n+1))^A146237(A146237(n+1))`
-/

namespace A043438.P7840400269864453196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037474 (A043410 (n + 1)).toNat : ℚ) ^ (A146237 (A146237 (n + 1)).toNat : ℤ)

end

end A043438.P7840400269864453196

/-!
# A043439: Numbers having three 4's in base 8.

The programs for A043439, there is no canonical definition to state claims against.
-/

/-! ## A043439.P8746283845849469349

`A037471(A043387(n+1)^A262438(n))`
-/

namespace A043439.P8746283845849469349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043439.P8746283845849469349

/-! ## A043439.P13661514713076221281

`A037471(C(A043387(n+1), A262438(n)))`
-/

namespace A043439.P13661514713076221281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Nat.choose (A043387 (n + 1)).toNat (A262438 n).toNat)

end

end A043439.P13661514713076221281

/-! ## A043439.P339315507759625829

`A037471(A262438(n)²²*A043387(n+1))`
-/

namespace A043439.P339315507759625829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 ((A262438 n ^ 2) ^ 2 * A043387 (n + 1)).toNat

end

end A043439.P339315507759625829

/-! ## A043439.P13477560230655956967

`A037471(A043387(n+1)^A063775(n+1))`
-/

namespace A043439.P13477560230655956967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A063775 (n + 1) : ℤ))).toNat

end

end A043439.P13477560230655956967

/-! ## A043439.P7983457421937943931

`A037471(C(A043387(n+1), A063775(n+1)))`
-/

namespace A043439.P7983457421937943931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Nat.choose (A043387 (n + 1)).toNat (A063775 (n + 1)).toNat)

end

end A043439.P7983457421937943931

/-!
# A043440: Numbers having four 4's in base 8.

The programs for A043440, there is no canonical definition to state claims against.
-/

/-! ## A043440.P14299975934756799822

`A037471(lcm(A043388(n+1), A168361(n+1)))`
-/

namespace A043440.P14299975934756799822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.lcm (A043388 (n + 1)) (A168361 (n + 1)))

end

end A043440.P14299975934756799822

/-! ## A043440.P2108887806697991805

`A037471(lcm(2, A043388(n+1)))`
-/

namespace A043440.P2108887806697991805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.lcm 2 (A043388 (n + 1)))

end

end A043440.P2108887806697991805

/-! ## A043440.P6582393509141850540

`A037471(A043388(n+1)*A262438(n))`
-/

namespace A043440.P6582393509141850540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A043388 (n + 1) * A262438 n).toNat

end

end A043440.P6582393509141850540

/-! ## A043440.P10922236915742072786

`A037471(A043388(n+1)^A262438(n))`
-/

namespace A043440.P10922236915742072786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043388 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043440.P10922236915742072786

/-! ## A043440.P16612075054023581428

`A037471(A043388(n+1)*A322356(n+1))`
-/

namespace A043440.P16612075054023581428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A043388 (n + 1) * A322356 (n + 1)).toNat

end

end A043440.P16612075054023581428

/-!
# A043441: Numbers having one 5 in base 8.

The programs for A043441, the canonical program `A043441.P6379859131163105572` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043441 has offset 1).

The definition of A043441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043441.P6379859131163105572

`eq[1, A316866(A007094(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043441

/-- `eq[1, A316866(A007094(n))]` -/
def P6379859131163105572.Spec : Prop :=
  ∀ n, (P6379859131163105572.a n : ℤ) = A043441 (n + 1)

theorem P6379859131163105572.correct : P6379859131163105572.Spec := by
  intro n
  simp only [A043441, Nat.add_sub_cancel]

end A043441

/-! ## A043441.P12463524360559046026

`eq[1, A316867(A256308(n))]`
-/

namespace A043441.P12463524360559046026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A256308 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043441.P12463524360559046026

namespace A043441

/-- `eq[1, A316867(A256308(n))]` -/
def P12463524360559046026.Spec : Prop :=
  ∀ n, (P12463524360559046026.a n : ℤ) = A043441 (n + 1)

end A043441

/-! ## A043441.P8773428544289482006

`eq[1, A316866(record[A222250(n)])]`
-/

namespace A043441.P8773428544289482006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043441.P8773428544289482006

namespace A043441

/-- `eq[1, A316866(record[A222250(n)])]` -/
def P8773428544289482006.Spec : Prop :=
  ∀ n, (P8773428544289482006.a n : ℤ) = A043441 (n + 1)

end A043441

/-!
# A043442: Numbers having two 5's in base 8.

The programs for A043442, there is no canonical definition to state claims against.
-/

/-! ## A043442.P4279880142143435530

`A037471(A043390(n+1)^A124976(n+1))`
-/

namespace A043442.P4279880142143435530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043390 (n + 1) : ℚ) ^ (A124976 (n + 1) : ℤ))).toNat

end

end A043442.P4279880142143435530

/-! ## A043442.P15872292281411167822

`A091084(A091083(n+1))+A044227(n+1)`
-/

namespace A043442.P15872292281411167822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091084 (A091083 (n + 1)).toNat + A044227 (n + 1)

end

end A043442.P15872292281411167822

/-!
# A043443: Numbers having three 5's in base 8.

The programs for A043443, there is no canonical definition to state claims against.
-/

/-! ## A043443.P5062823333490866972

`A037471(A226287(n+1)+A043391(n+1))`
-/

namespace A043443.P5062823333490866972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A226287 (n + 1) + A043391 (n + 1)).toNat

end

end A043443.P5062823333490866972

/-! ## A043443.P7914800213777571072

`A037471(A043391(n+1)^A226273(n))`
-/

namespace A043443.P7914800213777571072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043391 (n + 1) : ℚ) ^ (A226273 n : ℤ))).toNat

end

end A043443.P7914800213777571072

/-! ## A043443.P16628652694850955949

`A037471(C(A043391(n+1), A226273(n)))`
-/

namespace A043443.P16628652694850955949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Nat.choose (A043391 (n + 1)).toNat (A226273 n).toNat)

end

end A043443.P16628652694850955949

/-! ## A043443.P848997399663595577

`A037471(A226273(n)²²*A043391(n+1))`
-/

namespace A043443.P848997399663595577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 ((A226273 n ^ 2) ^ 2 * A043391 (n + 1)).toNat

end

end A043443.P848997399663595577

/-! ## A043443.P12363908304260598995

`A037471(A226286(n+1)+A043391(n+1))`
-/

namespace A043443.P12363908304260598995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A226286 (n + 1) + A043391 (n + 1)).toNat

end

end A043443.P12363908304260598995

/-!
# A043444: Numbers having four 5's in base 8.

The programs for A043444, there is no canonical definition to state claims against.
-/

/-! ## A043444.P12268907680202532601

`A037471(A226287(n+1)+A043392(n+1))`
-/

namespace A043444.P12268907680202532601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A226287 (n + 1) + A043392 (n + 1)).toNat

end

end A043444.P12268907680202532601

/-! ## A043444.P4505425631977370677

`A037471(A043392(n+1)*A226273(n))`
-/

namespace A043444.P4505425631977370677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A043392 (n + 1) * A226273 n).toNat

end

end A043444.P4505425631977370677

/-! ## A043444.P9862392845062090709

`A037471(A043392(n+1)^A226273(n))`
-/

namespace A043444.P9862392845062090709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A043392 (n + 1) : ℚ) ^ (A226273 n : ℤ))).toNat

end

end A043444.P9862392845062090709

/-! ## A043444.P15650321135725408637

`A037471(lcm(A043392(n+1), A226273(n)))`
-/

namespace A043444.P15650321135725408637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Int.lcm (A043392 (n + 1)) (A226273 n))

end

end A043444.P15650321135725408637

/-! ## A043444.P879094116859982426

`A037471(C(A043392(n+1), A226273(n)))`
-/

namespace A043444.P879094116859982426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (Nat.choose (A043392 (n + 1)).toNat (A226273 n).toNat)

end

end A043444.P879094116859982426

/-!
# A043445: Numbers having exactly one 6 in base 8.

The programs for A043445, the canonical program `A043445.P5603443380075508067` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043445 has offset 1).

The definition of A043445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043445.P5603443380075508067

`eq[1, A316867(A007094(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043445

/-- `eq[1, A316867(A007094(n))]` -/
def P5603443380075508067.Spec : Prop :=
  ∀ n, (P5603443380075508067.a n : ℤ) = A043445 (n + 1)

theorem P5603443380075508067.correct : P5603443380075508067.Spec := by
  intro n
  simp only [A043445, Nat.add_sub_cancel]

end A043445

/-! ## A043445.P16030866888599246956

`eq[1, A316867(lt[A054055(n), 8])]`
-/

namespace A043445.P16030866888599246956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043445.P16030866888599246956

namespace A043445

/-- `eq[1, A316867(lt[A054055(n), 8])]` -/
def P16030866888599246956.Spec : Prop :=
  ∀ n, (P16030866888599246956.a n : ℤ) = A043445 (n + 1)

end A043445

/-! ## A043445.P12323005497989149500

`eq[1, A316869(A008539(n+1))]`
-/

namespace A043445.P12323005497989149500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A008539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043445.P12323005497989149500

namespace A043445

/-- `eq[1, A316869(A008539(n+1))]` -/
def P12323005497989149500.Spec : Prop :=
  ∀ n, (P12323005497989149500.a n : ℤ) = A043445 (n + 1)

end A043445

/-! ## A043445.P1988510172768950623

`A037474(A337141(n+1)^A334549(n))`
-/

namespace A043445.P1988510172768950623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A337141 (n + 1) : ℚ) ^ (A334549 n : ℤ))).toNat

end

end A043445.P1988510172768950623

namespace A043445

/-- `A037474(A337141(n+1)^A334549(n))` -/
def P1988510172768950623.Spec : Prop :=
  ∀ n, P1988510172768950623.a n = A043445 (n + 1)

end A043445

/-!
# A043446: Numbers having two 6's in base 8.

The programs for A043446, there is no canonical definition to state claims against.
-/

/-! ## A043446.P8472556289398344926

`A037474(A043418(n+1))+A014744(A014727(n))`
-/

namespace A043446.P8472556289398344926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043418 (n + 1)).toNat + A014744 (A014727 n).toNat

end

end A043446.P8472556289398344926

/-! ## A043446.P673737128604171146

`A037474(A043418(n+1))+A014744(A014725(n+1))`
-/

namespace A043446.P673737128604171146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043418 (n + 1)).toNat + A014744 (A014725 (n + 1)).toNat

end

end A043446.P673737128604171146

/-! ## A043446.P4594790962395317416

`A010051(A067756(n+1))*A037474(A043418(n+1))`
-/

namespace A043446.P4594790962395317416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A067756 (n + 1)).toNat * A037474 (A043418 (n + 1)).toNat

end

end A043446.P4594790962395317416

/-! ## A043446.P13213133836366324070

`A037474(A043418(n+1))%A001281(A031781(n+1))`
-/

namespace A043446.P13213133836366324070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037474 (A043418 (n + 1)).toNat) (A001281 (A031781 (n + 1)).toNat)

end

end A043446.P13213133836366324070

/-! ## A043446.P9686236396841489051

`A037474(A043418(n+1))+A010051(A043418(n+1)²)`
-/

namespace A043446.P9686236396841489051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043418 (n + 1)).toNat + A010051 (A043418 (n + 1) ^ 2).toNat

end

end A043446.P9686236396841489051

/-!
# A043447: Numbers having three 6's in base 8.

The programs for A043447, there is no canonical definition to state claims against.
-/

/-! ## A043447.P11607918498897676795

`A037474(A043419(n+1)^A193518(n+1))`
-/

namespace A043447.P11607918498897676795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A043419 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A043447.P11607918498897676795

/-! ## A043447.P9659354294539239545

`A037474(C(A043419(n+1), A193518(n+1)))`
-/

namespace A043447.P9659354294539239545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A043419 (n + 1)).toNat (A193518 (n + 1)).toNat)

end

end A043447.P9659354294539239545

/-! ## A043447.P6376285050083341780

`A037474(A193518(n+1)²²*A043419(n+1))`
-/

namespace A043447.P6376285050083341780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 ((A193518 (n + 1) ^ 2) ^ 2 * A043419 (n + 1)).toNat

end

end A043447.P6376285050083341780

/-! ## A043447.P13418775227307245376

`A037474(A043419(n+1)*A193518(3*n+2))`
-/

namespace A043447.P13418775227307245376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A043419 (n + 1) * A193518 (3 * n + 2)).toNat

end

end A043447.P13418775227307245376

/-!
# A043449: Numbers having one 7 in base 8.

The programs for A043449, the canonical program `A043449.P12380842579223967355` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043449 has offset 1).

The definition of A043449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043449.P12380842579223967355

`eq[7, A053585(A338881(n))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A043449

/-- `eq[7, A053585(A338881(n))]` -/
def P12380842579223967355.Spec : Prop :=
  ∀ n, (P12380842579223967355.a n : ℤ) = A043449 (n + 1)

theorem P12380842579223967355.correct : P12380842579223967355.Spec := by
  intro n
  simp only [A043449, Nat.add_sub_cancel]

end A043449

/-! ## A043449.P11915998391321775422

`A068505(∩[A043517(n+1), A283610(n+1)])`
-/

namespace A043449.P11915998391321775422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A043449.P11915998391321775422

namespace A043449

/-- `A068505(∩[A043517(n+1), A283610(n+1)])` -/
def P11915998391321775422.Spec : Prop :=
  ∀ n, P11915998391321775422.a n = A043449 (n + 1)

end A043449

/-! ## A043449.P13520313919666210932

`eq[1, A102679(A007094(n))]`
-/

namespace A043449.P13520313919666210932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043449.P13520313919666210932

namespace A043449

/-- `eq[1, A102679(A007094(n))]` -/
def P13520313919666210932.Spec : Prop :=
  ∀ n, (P13520313919666210932.a n : ℤ) = A043449 (n + 1)

end A043449

/-! ## A043449.P16408807067580107017

`A337239(A331995(n+1))%A007088(A027620(n))`
-/

namespace A043449.P16408807067580107017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337239 (A331995 (n + 1)).toNat) (A007088 (A027620 n).toNat)

end

end A043449.P16408807067580107017

namespace A043449

/-- `A337239(A331995(n+1))%A007088(A027620(n))` -/
def P16408807067580107017.Spec : Prop :=
  ∀ n, P16408807067580107017.a n = A043449 (n + 1)

end A043449

/-! ## A043449.P5983689983549245828

`A337239(A331995(n+1))+A000007(A181708(n+2))`
-/

namespace A043449.P5983689983549245828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (A331995 (n + 1)).toNat + A000007 (A181708 (n + 2)).toNat

end

end A043449.P5983689983549245828

namespace A043449

/-- `A337239(A331995(n+1))+A000007(A181708(n+2))` -/
def P5983689983549245828.Spec : Prop :=
  ∀ n, P5983689983549245828.a n = A043449 (n + 1)

end A043449

/-!
# A043450: Numbers having two 7's in base 8.

The programs for A043450, the canonical program `A043450.P5047331127486138788` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043450 has offset 1).

The definition of A043450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043450.P5047331127486138788

`eq[2, A102679(A007094(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043450

/-- `eq[2, A102679(A007094(n))]` -/
def P5047331127486138788.Spec : Prop :=
  ∀ n, (P5047331127486138788.a n : ℤ) = A043450 (n + 1)

theorem P5047331127486138788.correct : P5047331127486138788.Spec := by
  intro n
  simp only [A043450, Nat.add_sub_cancel]

end A043450

/-! ## A043450.P3039195233418123948

`A004771(A043449(n+1))%A356638(A061487(n+1))`
-/

namespace A043450.P3039195233418123948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 (A043449 (n + 1)).toNat) (A356638 (A061487 (n + 1)).toNat)

end

end A043450.P3039195233418123948

namespace A043450

/-- `A004771(A043449(n+1))%A356638(A061487(n+1))` -/
def P3039195233418123948.Spec : Prop :=
  ∀ n, P3039195233418123948.a n = A043450 (n + 1)

end A043450

/-! ## A043450.P3191709830116849937

`A004771(A043449(n+1)*A290830(n))`
-/

namespace A043450.P3191709830116849937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A043449 (n + 1) * A290830 n).toNat

end

end A043450.P3191709830116849937

namespace A043450

/-- `A004771(A043449(n+1)*A290830(n))` -/
def P3191709830116849937.Spec : Prop :=
  ∀ n, P3191709830116849937.a n = A043450 (n + 1)

end A043450

/-! ## A043450.P10165293022545542156

`A004771(A043449(n+1)^A290830(n))`
-/

namespace A043450.P10165293022545542156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (SequenceMachineLib.roundAway ((A043449 (n + 1) : ℚ) ^ (A290830 n : ℤ))).toNat

end

end A043450.P10165293022545542156

namespace A043450

/-- `A004771(A043449(n+1)^A290830(n))` -/
def P10165293022545542156.Spec : Prop :=
  ∀ n, P10165293022545542156.a n = A043450 (n + 1)

end A043450

/-!
# A043451: Numbers having three 7's in base 8.

The programs for A043451, there is no canonical definition to state claims against.
-/

/-! ## A043451.P17711721073410249284

`A004771(A043450(n+1)%A356638(2*n+1))`
-/

namespace A043451.P17711721073410249284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (Int.tmod (A043450 (n + 1)) (A356638 (2 * n + 1))).toNat

end

end A043451.P17711721073410249284

/-! ## A043451.P11305345178317947222

`A004771(A043450(n+1)^A179051(n))`
-/

namespace A043451.P11305345178317947222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (SequenceMachineLib.roundAway ((A043450 (n + 1) : ℚ) ^ (A179051 n : ℤ))).toNat

end

end A043451.P11305345178317947222

/-! ## A043451.P9123610746394997106

`A004771(C(A043450(n+1), A179051(n)))`
-/

namespace A043451.P9123610746394997106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (Nat.choose (A043450 (n + 1)).toNat (A179051 n).toNat)

end

end A043451.P9123610746394997106

/-!
# A043453: Numbers having one 0 in base 9.

The programs for A043453, the canonical program `A043453.P3959600562205998710` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043453 has offset 1).

The definition of A043453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043453.P3959600562205998710

`eq[A055641(A007095(n)), A057427(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043453

/-- `eq[A055641(A007095(n)), A057427(n)]` -/
def P3959600562205998710.Spec : Prop :=
  ∀ n, (P3959600562205998710.a n : ℤ) = A043453 (n + 1)

theorem P3959600562205998710.correct : P3959600562205998710.Spec := by
  intro n
  simp only [A043453, Nat.add_sub_cancel]

end A043453

/-! ## A043453.P14559876546889653312

`eq[A055641(A007095(n)), A141044(n)]`
-/

namespace A043453.P14559876546889653312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P14559876546889653312

namespace A043453

/-- `eq[A055641(A007095(n)), A141044(n)]` -/
def P14559876546889653312.Spec : Prop :=
  ∀ n, (P14559876546889653312.a n : ℤ) = A043453 (n + 1)

end A043453

/-! ## A043453.P17500256231685203048

`eq[A055641(A007095(n)), A174965(n+1)]`
-/

namespace A043453.P17500256231685203048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P17500256231685203048

namespace A043453

/-- `eq[A055641(A007095(n)), A174965(n+1)]` -/
def P17500256231685203048.Spec : Prop :=
  ∀ n, (P17500256231685203048.a n : ℤ) = A043453 (n + 1)

end A043453

/-! ## A043453.P12448780174143045628

`eq[A014963(3*(n+1)), A055641(A007095(n))]`
-/

namespace A043453.P12448780174143045628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P12448780174143045628

namespace A043453

/-- `eq[A014963(3*(n+1)), A055641(A007095(n))]` -/
def P12448780174143045628.Spec : Prop :=
  ∀ n, (P12448780174143045628.a n : ℤ) = A043453 (n + 1)

end A043453

/-! ## A043453.P424669897361422728

`eq[A014963(3*(n+1)), A055641(A052421(n+1))]`
-/

namespace A043453.P424669897361422728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P424669897361422728

namespace A043453

/-- `eq[A014963(3*(n+1)), A055641(A052421(n+1))]` -/
def P424669897361422728.Spec : Prop :=
  ∀ n, (P424669897361422728.a n : ℤ) = A043453 (n + 1)

end A043453

/-!
# A043454: Numbers having two 0's in base 9.

The programs for A043454, the canonical program `A043454.P3294804726548310803` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043454 has offset 1).

The definition of A043454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043454.P5014552414306527262

`eq[2, A055641(A007095(n))]`
-/

namespace A043454.P5014552414306527262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P5014552414306527262

namespace A043454

/-- `eq[2, A055641(A007095(n))]` -/
def P5014552414306527262.Spec : Prop :=
  ∀ n, (P5014552414306527262.a n : ℤ) = A043454 (n + 1)

end A043454

/-! ## A043454.P9491886219461441882

`eq[2, A055641(A052405(n+1))]`
-/

namespace A043454.P9491886219461441882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P9491886219461441882

namespace A043454

/-- `eq[2, A055641(A052405(n+1))]` -/
def P9491886219461441882.Spec : Prop :=
  ∀ n, (P9491886219461441882.a n : ℤ) = A043454 (n + 1)

end A043454

/-! ## A043454.P3294804726548310803

`eq[2, A055641(A052413(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A043454

/-- `eq[2, A055641(A052413(n+1))]` -/
def P3294804726548310803.Spec : Prop :=
  ∀ n, (P3294804726548310803.a n : ℤ) = A043454 (n + 1)

theorem P3294804726548310803.correct : P3294804726548310803.Spec := by
  intro n
  simp only [A043454, Nat.add_sub_cancel]

end A043454

/-! ## A043454.P2944597333888248180

`eq[2, A055641(A052414(n+1))]`
-/

namespace A043454.P2944597333888248180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P2944597333888248180

namespace A043454

/-- `eq[2, A055641(A052414(n+1))]` -/
def P2944597333888248180.Spec : Prop :=
  ∀ n, (P2944597333888248180.a n : ℤ) = A043454 (n + 1)

end A043454

/-! ## A043454.P14539849040261899971

`eq[2, A055641(A052419(n+1))]`
-/

namespace A043454.P14539849040261899971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043454.P14539849040261899971

namespace A043454

/-- `eq[2, A055641(A052419(n+1))]` -/
def P14539849040261899971.Spec : Prop :=
  ∀ n, (P14539849040261899971.a n : ℤ) = A043454 (n + 1)

end A043454

/-!
# A043455: Numbers having three 0's in base 9.

The programs for A043455, there is no canonical definition to state claims against.
-/

/-! ## A043455.P12330396106706118654

`A257493(n)+A158395(A032555(n+1))`
-/

namespace A043455.P12330396106706118654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 n + A158395 (A032555 (n + 1)).toNat

end

end A043455.P12330396106706118654

/-! ## A043455.P13549487685698356444

`A158397(n+1)-A168184(A000110(n))`
-/

namespace A043455.P13549487685698356444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) - A168184 (A000110 n).toNat

end

end A043455.P13549487685698356444

/-! ## A043455.P15479549747952263012

`A158397(n+1)-A284948(A001835(n))`
-/

namespace A043455.P15479549747952263012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) - A284948 (A001835 n).toNat

end

end A043455.P15479549747952263012

/-! ## A043455.P13543464748053212070

`A158397(n+1)-A079343(A357221(n))`
-/

namespace A043455.P13543464748053212070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158397 (n + 1) - A079343 (A357221 n).toNat

end

end A043455.P13543464748053212070

/-!
# A043457: Numbers having one 1 in base 9.

The programs for A043457, the canonical program `A043457.P3491725996769993334` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043457 has offset 1).

The definition of A043457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043457.P6167459708403588628

`eq[1, A268643(A007095(n))]`
-/

namespace A043457.P6167459708403588628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P6167459708403588628

namespace A043457

/-- `eq[1, A268643(A007095(n))]` -/
def P6167459708403588628.Spec : Prop :=
  ∀ n, (P6167459708403588628.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P4152952772262935748

`eq[1, A268643(A052404(n+1))]`
-/

namespace A043457.P4152952772262935748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P4152952772262935748

namespace A043457

/-- `eq[1, A268643(A052404(n+1))]` -/
def P4152952772262935748.Spec : Prop :=
  ∀ n, (P4152952772262935748.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P11421179660988966715

`eq[1, A268643(A052405(n+1))]`
-/

namespace A043457.P11421179660988966715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P11421179660988966715

namespace A043457

/-- `eq[1, A268643(A052405(n+1))]` -/
def P11421179660988966715.Spec : Prop :=
  ∀ n, (P11421179660988966715.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P3491725996769993334

`eq[1, A268643(A052406(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043457

/-- `eq[1, A268643(A052406(n+1))]` -/
def P3491725996769993334.Spec : Prop :=
  ∀ n, (P3491725996769993334.a n : ℤ) = A043457 (n + 1)

theorem P3491725996769993334.correct : P3491725996769993334.Spec := by
  intro n
  simp only [A043457, Nat.add_sub_cancel]

end A043457

/-! ## A043457.P14798376159532119842

`eq[1, A268643(A052413(n+1))]`
-/

namespace A043457.P14798376159532119842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P14798376159532119842

namespace A043457

/-- `eq[1, A268643(A052413(n+1))]` -/
def P14798376159532119842.Spec : Prop :=
  ∀ n, (P14798376159532119842.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P117627097416614769

`eq[1, A268643(A052414(n+1))]`
-/

namespace A043457.P117627097416614769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P117627097416614769

namespace A043457

/-- `eq[1, A268643(A052414(n+1))]` -/
def P117627097416614769.Spec : Prop :=
  ∀ n, (P117627097416614769.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P17738993829381314567

`eq[1, A268643(A052421(n+1))]`
-/

namespace A043457.P17738993829381314567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P17738993829381314567

namespace A043457

/-- `eq[1, A268643(A052421(n+1))]` -/
def P17738993829381314567.Spec : Prop :=
  ∀ n, (P17738993829381314567.a n : ℤ) = A043457 (n + 1)

end A043457

/-! ## A043457.P9261073657790572598

`eq[1, A316863(A052383(n+1))]`
-/

namespace A043457.P9261073657790572598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043457.P9261073657790572598

namespace A043457

/-- `eq[1, A316863(A052383(n+1))]` -/
def P9261073657790572598.Spec : Prop :=
  ∀ n, (P9261073657790572598.a n : ℤ) = A043457 (n + 1)

end A043457

/-!
# A043458: Numbers having exactly two 1's in base 9.

The programs for A043458, the canonical program `A043458.P7829890838301452085` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043458 has offset 1).

The definition of A043458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043458.P11022368222227288357

`eq[2, A268643(A007095(n))]`
-/

namespace A043458.P11022368222227288357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P11022368222227288357

namespace A043458

/-- `eq[2, A268643(A007095(n))]` -/
def P11022368222227288357.Spec : Prop :=
  ∀ n, (P11022368222227288357.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P16334478667811036311

`eq[2, A268643(A052404(n+1))]`
-/

namespace A043458.P16334478667811036311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P16334478667811036311

namespace A043458

/-- `eq[2, A268643(A052404(n+1))]` -/
def P16334478667811036311.Spec : Prop :=
  ∀ n, (P16334478667811036311.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P10192901520143186927

`eq[2, A268643(A052405(n+1))]`
-/

namespace A043458.P10192901520143186927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P10192901520143186927

namespace A043458

/-- `eq[2, A268643(A052405(n+1))]` -/
def P10192901520143186927.Spec : Prop :=
  ∀ n, (P10192901520143186927.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P9168223560367334143

`eq[2, A268643(A052406(n+1))]`
-/

namespace A043458.P9168223560367334143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P9168223560367334143

namespace A043458

/-- `eq[2, A268643(A052406(n+1))]` -/
def P9168223560367334143.Spec : Prop :=
  ∀ n, (P9168223560367334143.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P15973746157376208081

`eq[2, A268643(A052413(n+1))]`
-/

namespace A043458.P15973746157376208081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P15973746157376208081

namespace A043458

/-- `eq[2, A268643(A052413(n+1))]` -/
def P15973746157376208081.Spec : Prop :=
  ∀ n, (P15973746157376208081.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P16365046212360501011

`eq[2, A268643(A052414(n+1))]`
-/

namespace A043458.P16365046212360501011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P16365046212360501011

namespace A043458

/-- `eq[2, A268643(A052414(n+1))]` -/
def P16365046212360501011.Spec : Prop :=
  ∀ n, (P16365046212360501011.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P6981930012472231535

`eq[2, A268643(A052421(n+1))]`
-/

namespace A043458.P6981930012472231535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P6981930012472231535

namespace A043458

/-- `eq[2, A268643(A052421(n+1))]` -/
def P6981930012472231535.Spec : Prop :=
  ∀ n, (P6981930012472231535.a n : ℤ) = A043458 (n + 1)

end A043458

/-! ## A043458.P7829890838301452085

`eq[2, A316863(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043458

/-- `eq[2, A316863(A052383(n+1))]` -/
def P7829890838301452085.Spec : Prop :=
  ∀ n, (P7829890838301452085.a n : ℤ) = A043458 (n + 1)

theorem P7829890838301452085.correct : P7829890838301452085.Spec := by
  intro n
  simp only [A043458, Nat.add_sub_cancel]

end A043458

/-!
# A043459: Numbers having three 1's in base 9.

The programs for A043459, there is no canonical definition to state claims against.
-/

/-! ## A043459.P6777588948318908185

`eq[3, A268643(A007095(n))]`
-/

namespace A043459.P6777588948318908185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043459.P6777588948318908185

/-! ## A043459.P7948909842365538929

`eq[3, A268643(A052404(n+1))]`
-/

namespace A043459.P7948909842365538929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043459.P7948909842365538929

/-! ## A043459.P7527943587685518319

`eq[3, A268643(A052405(n+1))]`
-/

namespace A043459.P7527943587685518319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043459.P7527943587685518319

/-! ## A043459.P14760428776058071795

`eq[3, A268643(A052406(n+1))]`
-/

namespace A043459.P14760428776058071795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043459.P14760428776058071795

/-! ## A043459.P11653001461721075880

`eq[3, A268643(A052413(n+1))]`
-/

namespace A043459.P11653001461721075880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043459.P11653001461721075880

/-!
# A043460: Numbers having four 1's in base 9.

The programs for A043460, there is no canonical definition to state claims against.
-/

/-! ## A043460.P5769261726359287782

`A037475(A043400(n+1)^A055642(n))`
-/

namespace A043460.P5769261726359287782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043400 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A043460.P5769261726359287782

/-! ## A043460.P2952263081616745499

`A037477(A043428(n+1)^A055642(n))`
-/

namespace A043460.P2952263081616745499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043428 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A043460.P2952263081616745499

/-! ## A043460.P3632365573612781204

`A037477(C(A043428(n+1), A055642(n)))`
-/

namespace A043460.P3632365573612781204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043428 (n + 1)).toNat (A055642 n).toNat)

end

end A043460.P3632365573612781204

/-! ## A043460.P11296658456062895495

`A037475(A055642(n)²*A043400(n+1))`
-/

namespace A043460.P11296658456062895495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A055642 n ^ 2 * A043400 (n + 1)).toNat

end

end A043460.P11296658456062895495

/-! ## A043460.P2978303045722211078

`A037477(A055642(n)²*A043428(n+1))`
-/

namespace A043460.P2978303045722211078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A055642 n ^ 2 * A043428 (n + 1)).toNat

end

end A043460.P2978303045722211078

/-!
# A043461: Numbers having one 2 in base 9.

The programs for A043461, the canonical program `A043461.P3339968190733267824` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043461 has offset 1).

The definition of A043461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043461.P1621489977276865932

`eq[1, A316863(A007095(n))]`
-/

namespace A043461.P1621489977276865932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P1621489977276865932

namespace A043461

/-- `eq[1, A316863(A007095(n))]` -/
def P1621489977276865932.Spec : Prop :=
  ∀ n, (P1621489977276865932.a n : ℤ) = A043461 (n + 1)

end A043461

/-! ## A043461.P3339968190733267824

`eq[1, A316864(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043461

/-- `eq[1, A316864(A052383(n+1))]` -/
def P3339968190733267824.Spec : Prop :=
  ∀ n, (P3339968190733267824.a n : ℤ) = A043461 (n + 1)

theorem P3339968190733267824.correct : P3339968190733267824.Spec := by
  intro n
  simp only [A043461, Nat.add_sub_cancel]

end A043461

/-! ## A043461.P10155669929064300042

`eq[1, A316864(A052404(n+1))]`
-/

namespace A043461.P10155669929064300042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P10155669929064300042

namespace A043461

/-- `eq[1, A316864(A052404(n+1))]` -/
def P10155669929064300042.Spec : Prop :=
  ∀ n, (P10155669929064300042.a n : ℤ) = A043461 (n + 1)

end A043461

/-! ## A043461.P3299183955313751220

`eq[1, A316863(A052405(n+1))]`
-/

namespace A043461.P3299183955313751220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P3299183955313751220

namespace A043461

/-- `eq[1, A316863(A052405(n+1))]` -/
def P3299183955313751220.Spec : Prop :=
  ∀ n, (P3299183955313751220.a n : ℤ) = A043461 (n + 1)

end A043461

/-! ## A043461.P7500072568367272593

`eq[1, A316863(A052406(n+1))]`
-/

namespace A043461.P7500072568367272593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P7500072568367272593

namespace A043461

/-- `eq[1, A316863(A052406(n+1))]` -/
def P7500072568367272593.Spec : Prop :=
  ∀ n, (P7500072568367272593.a n : ℤ) = A043461 (n + 1)

end A043461

/-! ## A043461.P16666398358375864126

`eq[1, A316863(A052413(n+1))]`
-/

namespace A043461.P16666398358375864126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P16666398358375864126

namespace A043461

/-- `eq[1, A316863(A052413(n+1))]` -/
def P16666398358375864126.Spec : Prop :=
  ∀ n, (P16666398358375864126.a n : ℤ) = A043461 (n + 1)

end A043461

/-! ## A043461.P12777069373860855287

`eq[1, A316864(eq[n, A004176(n)])]`
-/

namespace A043461.P12777069373860855287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P12777069373860855287

namespace A043461

/-- `eq[1, A316864(eq[n, A004176(n)])]` -/
def P12777069373860855287.Spec : Prop :=
  ∀ n, (P12777069373860855287.a n : ℤ) = A043461 (n + 1)

end A043461

/-!
# A043462: Numbers having two 2's in base 9.

The programs for A043462, the canonical program `A043462.P18230116493276596016` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043462 has offset 1).

The definition of A043462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043462.P7060884893378177887

`eq[2, A316863(A007095(n))]`
-/

namespace A043462.P7060884893378177887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P7060884893378177887

namespace A043462

/-- `eq[2, A316863(A007095(n))]` -/
def P7060884893378177887.Spec : Prop :=
  ∀ n, (P7060884893378177887.a n : ℤ) = A043462 (n + 1)

end A043462

/-! ## A043462.P18230116493276596016

`eq[2, A316864(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043462

/-- `eq[2, A316864(A052383(n+1))]` -/
def P18230116493276596016.Spec : Prop :=
  ∀ n, (P18230116493276596016.a n : ℤ) = A043462 (n + 1)

theorem P18230116493276596016.correct : P18230116493276596016.Spec := by
  intro n
  simp only [A043462, Nat.add_sub_cancel]

end A043462

/-! ## A043462.P4614376938599587396

`eq[2, A316864(A052404(n+1))]`
-/

namespace A043462.P4614376938599587396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P4614376938599587396

namespace A043462

/-- `eq[2, A316864(A052404(n+1))]` -/
def P4614376938599587396.Spec : Prop :=
  ∀ n, (P4614376938599587396.a n : ℤ) = A043462 (n + 1)

end A043462

/-! ## A043462.P2556814740629561784

`eq[2, A316863(A052405(n+1))]`
-/

namespace A043462.P2556814740629561784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P2556814740629561784

namespace A043462

/-- `eq[2, A316863(A052405(n+1))]` -/
def P2556814740629561784.Spec : Prop :=
  ∀ n, (P2556814740629561784.a n : ℤ) = A043462 (n + 1)

end A043462

/-! ## A043462.P15258951805045317572

`eq[2, A316863(A052406(n+1))]`
-/

namespace A043462.P15258951805045317572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P15258951805045317572

namespace A043462

/-- `eq[2, A316863(A052406(n+1))]` -/
def P15258951805045317572.Spec : Prop :=
  ∀ n, (P15258951805045317572.a n : ℤ) = A043462 (n + 1)

end A043462

/-! ## A043462.P8210367637322340690

`eq[2, A316863(A052413(n+1))]`
-/

namespace A043462.P8210367637322340690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P8210367637322340690

namespace A043462

/-- `eq[2, A316863(A052413(n+1))]` -/
def P8210367637322340690.Spec : Prop :=
  ∀ n, (P8210367637322340690.a n : ℤ) = A043462 (n + 1)

end A043462

/-!
# A043463: Numbers having three 2's in base 9.

The programs for A043463, there is no canonical definition to state claims against.
-/

/-! ## A043463.P11242515877867822457

`A037477(A043431(n+1)^A003108(n))`
-/

namespace A043463.P11242515877867822457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043431 (n + 1) : ℚ) ^ (A003108 n : ℤ))).toNat

end

end A043463.P11242515877867822457

/-! ## A043463.P4922921233148250098

`A037475(A043403(n+1)^A179748(n+1))`
-/

namespace A043463.P4922921233148250098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043403 (n + 1) : ℚ) ^ (A179748 (n + 1) : ℤ))).toNat

end

end A043463.P4922921233148250098

/-! ## A043463.P4849002812477393353

`A037475(C(A043403(n+1), A179748(n+1)))`
-/

namespace A043463.P4849002812477393353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A043403 (n + 1)).toNat (A179748 (n + 1)).toNat)

end

end A043463.P4849002812477393353

/-! ## A043463.P13647982492664989909

`A037477(A043431(n+1))*A309861(A309861(n)²)`
-/

namespace A043463.P13647982492664989909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043431 (n + 1)).toNat * A309861 (A309861 n ^ 2).toNat

end

end A043463.P13647982492664989909

/-!
# A043464: Numbers having four 2's in base 9.

The programs for A043464, there is no canonical definition to state claims against.
-/

/-! ## A043464.P5888886392770077868

`A037477(lcm(A043432(n+1), A117816(n+1)))`
-/

namespace A043464.P5888886392770077868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lcm (A043432 (n + 1)) (A117816 (n + 1)))

end

end A043464.P5888886392770077868

/-! ## A043464.P9935124814582747991

`A037463(lcm(A043344(n+1), A045153(n+1)))`
-/

namespace A043464.P9935124814582747991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (Int.lcm (A043344 (n + 1)) (A045153 (n + 1)))

end

end A043464.P9935124814582747991

/-! ## A043464.P9321187555946902190

`A037463(A045153(n+1)%Δ[A334836(n+2)])`
-/

namespace A043464.P9321187555946902190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (Int.tmod (A045153 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A043464.P9321187555946902190

/-! ## A043464.P16443106624821476959

`A037477(lcm(2, A043432(n+1)))`
-/

namespace A043464.P16443106624821476959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lcm 2 (A043432 (n + 1)))

end

end A043464.P16443106624821476959

/-! ## A043464.P2167878948133593518

`A037463(A045153(n+1)%A334836(n+4))`
-/

namespace A043464.P2167878948133593518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (Int.tmod (A045153 (n + 1)) (A334836 (n + 4))).toNat

end

end A043464.P2167878948133593518

/-!
# A043465: Numbers having one 3 in base 9.

The programs for A043465, the canonical program `A043465.P15128784765198913118` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043465 has offset 1).

The definition of A043465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043465.P14963959529362856022

`eq[1, A316864(A007095(n))]`
-/

namespace A043465.P14963959529362856022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P14963959529362856022

namespace A043465

/-- `eq[1, A316864(A007095(n))]` -/
def P14963959529362856022.Spec : Prop :=
  ∀ n, (P14963959529362856022.a n : ℤ) = A043465 (n + 1)

end A043465

/-! ## A043465.P15128784765198913118

`eq[1, A316864(A052406(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A043465

/-- `eq[1, A316864(A052406(n+1))]` -/
def P15128784765198913118.Spec : Prop :=
  ∀ n, (P15128784765198913118.a n : ℤ) = A043465 (n + 1)

theorem P15128784765198913118.correct : P15128784765198913118.Spec := by
  intro n
  simp only [A043465, Nat.add_sub_cancel]

end A043465

/-! ## A043465.P5905637529991174623

`eq[1, A316864(A052413(n+1))]`
-/

namespace A043465.P5905637529991174623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P5905637529991174623

namespace A043465

/-- `eq[1, A316864(A052413(n+1))]` -/
def P5905637529991174623.Spec : Prop :=
  ∀ n, (P5905637529991174623.a n : ℤ) = A043465 (n + 1)

end A043465

/-! ## A043465.P4215310549059782817

`eq[1, A316864(A052414(n+1))]`
-/

namespace A043465.P4215310549059782817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P4215310549059782817

namespace A043465

/-- `eq[1, A316864(A052414(n+1))]` -/
def P4215310549059782817.Spec : Prop :=
  ∀ n, (P4215310549059782817.a n : ℤ) = A043465 (n + 1)

end A043465

/-! ## A043465.P7308093530341781462

`eq[1, A316864(A052419(n+1))]`
-/

namespace A043465.P7308093530341781462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P7308093530341781462

namespace A043465

/-- `eq[1, A316864(A052419(n+1))]` -/
def P7308093530341781462.Spec : Prop :=
  ∀ n, (P7308093530341781462.a n : ℤ) = A043465 (n + 1)

end A043465

/-! ## A043465.P11530192817289896686

`eq[1, A316864(A052421(n+1))]`
-/

namespace A043465.P11530192817289896686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043465.P11530192817289896686

namespace A043465

/-- `eq[1, A316864(A052421(n+1))]` -/
def P11530192817289896686.Spec : Prop :=
  ∀ n, (P11530192817289896686.a n : ℤ) = A043465 (n + 1)

end A043465

/-!
# A043466: Numbers having two 3's in base 9.

The programs for A043466, the canonical program `A043466.P4392991474352702089` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043466 has offset 1).

The definition of A043466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043466.P4392991474352702089

`eq[2, A316864(A007095(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043466

/-- `eq[2, A316864(A007095(n))]` -/
def P4392991474352702089.Spec : Prop :=
  ∀ n, (P4392991474352702089.a n : ℤ) = A043466 (n + 1)

theorem P4392991474352702089.correct : P4392991474352702089.Spec := by
  intro n
  simp only [A043466, Nat.add_sub_cancel]

end A043466

/-! ## A043466.P4285559857081422360

`A037475(A043406(n+1)^A195842(n+1))`
-/

namespace A043466.P4285559857081422360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043406 (n + 1) : ℚ) ^ (A195842 (n + 1) : ℤ))).toNat

end

end A043466.P4285559857081422360

namespace A043466

/-- `A037475(A043406(n+1)^A195842(n+1))` -/
def P4285559857081422360.Spec : Prop :=
  ∀ n, P4285559857081422360.a n = A043466 (n + 1)

end A043466

/-! ## A043466.P18308881081862511956

`A037477(A043434(n+1)^A195842(n+1))`
-/

namespace A043466.P18308881081862511956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043434 (n + 1) : ℚ) ^ (A195842 (n + 1) : ℤ))).toNat

end

end A043466.P18308881081862511956

namespace A043466

/-- `A037477(A043434(n+1)^A195842(n+1))` -/
def P18308881081862511956.Spec : Prop :=
  ∀ n, P18308881081862511956.a n = A043466 (n + 1)

end A043466

/-!
# A043467: Numbers having three 3's in base 9.

The programs for A043467, there is no canonical definition to state claims against.
-/

/-! ## A043467.P8218831352406263009

`record[A078898(A043479((n+1)/2^val(n+1, 2)))]`
-/

namespace A043467.P8218831352406263009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A043479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043467.P8218831352406263009

/-! ## A043467.P10184678673669081404

`A037472(A043383(n+1)^A067059(n))`
-/

namespace A043467.P10184678673669081404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A043383 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043467.P10184678673669081404

/-! ## A043467.P4663040002754214942

`A037475(A043407(n+1)^A067059(n))`
-/

namespace A043467.P4663040002754214942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043407 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043467.P4663040002754214942

/-! ## A043467.P7455620485296378601

`A037468(A045304(n+1)^A067059(n))`
-/

namespace A043467.P7455620485296378601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (SequenceMachineLib.roundAway ((A045304 (n + 1) : ℚ) ^ (A067059 n : ℤ))).toNat

end

end A043467.P7455620485296378601

/-!
# A043468: Numbers having four 3's in base 9.

The programs for A043468, there is no canonical definition to state claims against.
-/

/-! ## A043468.P4110305106980433518

`A037475(A043408(n+1)%A195681(n+2))`
-/

namespace A043468.P4110305106980433518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A043408 (n + 1)) (A195681 (n + 2))).toNat

end

end A043468.P4110305106980433518

/-! ## A043468.P1307290568686779837

`A037463(A043348(n+1)%A096708(2*n+3))`
-/

namespace A043468.P1307290568686779837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (Int.tmod (A043348 (n + 1)) (A096708 (2 * n + 3))).toNat

end

end A043468.P1307290568686779837

/-! ## A043468.P17570360527102089876

`A037472(lcm(3, A043384(n+1)))`
-/

namespace A043468.P17570360527102089876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (Int.lcm 3 (A043384 (n + 1)))

end

end A043468.P17570360527102089876

/-! ## A043468.P9815779890510764945

`A043480(2*n+1)/A043529(A043527(3*n+4))`
-/

namespace A043468.P9815779890510764945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043480 (2 * n + 1) : ℚ) / (A043529 (A043527 (3 * n + 4)).toNat : ℚ)

end

end A043468.P9815779890510764945

/-! ## A043468.P12723989294447886655

`A037475(A043408(n+1)*A067059(n))`
-/

namespace A043468.P12723989294447886655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A043408 (n + 1) * A067059 n).toNat

end

end A043468.P12723989294447886655

/-!
# A043469: Numbers having one 4 in base 9.

The programs for A043469, the canonical program `A043469.P1102294554062349445` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043469 has offset 1).

The definition of A043469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043469.P1831835592583320290

`eq[1, A160383(A289813(n))]`
-/

namespace A043469.P1831835592583320290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A289813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P1831835592583320290

namespace A043469

/-- `eq[1, A160383(A289813(n))]` -/
def P1831835592583320290.Spec : Prop :=
  ∀ n, (P1831835592583320290.a n : ℤ) = A043469 (n + 1)

end A043469

/-! ## A043469.P1102294554062349445

`eq[1, A316865(A007095(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043469

/-- `eq[1, A316865(A007095(n))]` -/
def P1102294554062349445.Spec : Prop :=
  ∀ n, (P1102294554062349445.a n : ℤ) = A043469 (n + 1)

theorem P1102294554062349445.correct : P1102294554062349445.Spec := by
  intro n
  simp only [A043469, Nat.add_sub_cancel]

end A043469

/-! ## A043469.P6847767193519801134

`eq[1, A316865(A052413(n+1))]`
-/

namespace A043469.P6847767193519801134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P6847767193519801134

namespace A043469

/-- `eq[1, A316865(A052413(n+1))]` -/
def P6847767193519801134.Spec : Prop :=
  ∀ n, (P6847767193519801134.a n : ℤ) = A043469 (n + 1)

end A043469

/-! ## A043469.P7766469117167227576

`eq[1, A316865(A052414(n+1))]`
-/

namespace A043469.P7766469117167227576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P7766469117167227576

namespace A043469

/-- `eq[1, A316865(A052414(n+1))]` -/
def P7766469117167227576.Spec : Prop :=
  ∀ n, (P7766469117167227576.a n : ℤ) = A043469 (n + 1)

end A043469

/-! ## A043469.P11697367152908362743

`eq[1, A316865(A052419(n+1))]`
-/

namespace A043469.P11697367152908362743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P11697367152908362743

namespace A043469

/-- `eq[1, A316865(A052419(n+1))]` -/
def P11697367152908362743.Spec : Prop :=
  ∀ n, (P11697367152908362743.a n : ℤ) = A043469 (n + 1)

end A043469

/-!
# A043470: Numbers having two 4's in base 9.

The programs for A043470, there is no canonical definition to state claims against.
-/

/-! ## A043470.P4752986964156162676

`A037477(A043438(n+1)^A196017(n+1))`
-/

namespace A043470.P4752986964156162676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043438 (n + 1) : ℚ) ^ (A196017 (n + 1) : ℤ))).toNat

end

end A043470.P4752986964156162676

/-! ## A043470.P2142956270775688852

`A037468(A023739(n+1)%A096758(n+2))`
-/

namespace A043470.P2142956270775688852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (Int.tmod (A023739 (n + 1)) (A096758 (n + 2))).toNat

end

end A043470.P2142956270775688852

/-! ## A043470.P4443411816177958915

`A037477(A043438(n+1)%A045345(n+5))`
-/

namespace A043470.P4443411816177958915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043438 (n + 1)) (A045345 (n + 5))).toNat

end

end A043470.P4443411816177958915

/-! ## A043470.P3169351458506385104

`A043486(2*n+1)/A020639(A034472(n))`
-/

namespace A043470.P3169351458506385104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043486 (2 * n + 1) : ℚ) / (A020639 (A034472 n).toNat : ℚ)

end

end A043470.P3169351458506385104

/-! ## A043470.P9194728073445659412

`A037468(A023739(n+1))%A332315(2*n+1)`
-/

namespace A043470.P9194728073445659412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037468 (A023739 (n + 1)).toNat) (A332315 (2 * n + 1))

end

end A043470.P9194728073445659412

/-!
# A043471: Numbers having three 4's in base 9.

The programs for A043471, there is no canonical definition to state claims against.
-/

/-! ## A043471.P10453940195734457042

`A037477(A043439(n+1))*A208183(A208183(n)²)`
-/

namespace A043471.P10453940195734457042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043439 (n + 1)).toNat * A208183 (A208183 n ^ 2).toNat

end

end A043471.P10453940195734457042

/-! ## A043471.P11262901430290828651

`A004525(lcm(2, A043487(Δ[n²])))`
-/

namespace A043471.P11262901430290828651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A043487 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat))

end

end A043471.P11262901430290828651

/-! ## A043471.P10021398376176820782

`A037472(A043387(n+1)^A262438(n))`
-/

namespace A043471.P10021398376176820782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A043387 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043471.P10021398376176820782

/-! ## A043471.P2945040186111127370

`A037477(A043439(n+1)^A262438(n))`
-/

namespace A043471.P2945040186111127370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043439 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A043471.P2945040186111127370

/-!
# A043472: Numbers having four 4's in base 9.

The programs for A043472, there is no canonical definition to state claims against.
-/

/-! ## A043472.P4123921493125375316

`A037472(lcm(A043388(n+1), A168361(n+1)))`
-/

namespace A043472.P4123921493125375316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (Int.lcm (A043388 (n + 1)) (A168361 (n + 1)))

end

end A043472.P4123921493125375316

/-! ## A043472.P14341540392518375610

`A043488(2*n+1)/A043536(A043488(2*(n+1)))`
-/

namespace A043472.P14341540392518375610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043488 (2 * n + 1) : ℚ) / (A043536 (A043488 (2 * (n + 1))).toNat : ℚ)

end

end A043472.P14341540392518375610

/-! ## A043472.P9643313851733114246

`A043488(2*n+1)/A043537(A043499(2*(n+1)))`
-/

namespace A043472.P9643313851733114246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043488 (2 * n + 1) : ℚ) / (A043537 (A043499 (2 * (n + 1))).toNat : ℚ)

end

end A043472.P9643313851733114246

/-! ## A043472.P2776834080882356385

`A043488(2*n+1)/A043537(A043519(2*(n+1)))`
-/

namespace A043472.P2776834080882356385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043488 (2 * n + 1) : ℚ) / (A043537 (A043519 (2 * (n + 1))).toNat : ℚ)

end

end A043472.P2776834080882356385

/-!
# A043473: Numbers having exactly one 5 in base 9.

The programs for A043473, the canonical program `A043473.P2283782173635327789` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043473 has offset 1).

The definition of A043473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043473.P846304029307911733

`eq[5, A060904(A338882(n))]`
-/

namespace A043473.P846304029307911733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A338882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043473.P846304029307911733

namespace A043473

/-- `eq[5, A060904(A338882(n))]` -/
def P846304029307911733.Spec : Prop :=
  ∀ n, (P846304029307911733.a n : ℤ) = A043473 (n + 1)

end A043473

/-! ## A043473.P2283782173635327789

`eq[1, A316866(A007095(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043473

/-- `eq[1, A316866(A007095(n))]` -/
def P2283782173635327789.Spec : Prop :=
  ∀ n, (P2283782173635327789.a n : ℤ) = A043473 (n + 1)

theorem P2283782173635327789.correct : P2283782173635327789.Spec := by
  intro n
  simp only [A043473, Nat.add_sub_cancel]

end A043473

/-! ## A043473.P11416031007234126332

`eq[1, A316867(A052383(n+1))]`
-/

namespace A043473.P11416031007234126332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043473.P11416031007234126332

namespace A043473

/-- `eq[1, A316867(A052383(n+1))]` -/
def P11416031007234126332.Spec : Prop :=
  ∀ n, (P11416031007234126332.a n : ℤ) = A043473 (n + 1)

end A043473

/-! ## A043473.P16137860823632099528

`eq[1, A316867(A052404(n+1))]`
-/

namespace A043473.P16137860823632099528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043473.P16137860823632099528

namespace A043473

/-- `eq[1, A316867(A052404(n+1))]` -/
def P16137860823632099528.Spec : Prop :=
  ∀ n, (P16137860823632099528.a n : ℤ) = A043473 (n + 1)

end A043473

/-!
# A043474: Numbers having two 5's in base 9.

The programs for A043474, the canonical program `A043474.P3675095178451187142` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043474 has offset 1).

The definition of A043474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043474.P3675095178451187142

`eq[4, A286361(A338882(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A043474

/-- `eq[4, A286361(A338882(n))]` -/
def P3675095178451187142.Spec : Prop :=
  ∀ n, (P3675095178451187142.a n : ℤ) = A043474 (n + 1)

theorem P3675095178451187142.correct : P3675095178451187142.Spec := by
  intro n
  simp only [A043474, Nat.add_sub_cancel]

end A043474

/-! ## A043474.P11745713004631036848

`record[A008611(A002264(A043475(n+1)))]`
-/

namespace A043474.P11745713004631036848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A002264 (A043475 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043474.P11745713004631036848

namespace A043474

/-- `record[A008611(A002264(A043475(n+1)))]` -/
def P11745713004631036848.Spec : Prop :=
  ∀ n, P11745713004631036848.a n = A043474 (n + 1)

end A043474

/-! ## A043474.P3374928876214182867

`A343609(A043475(n+1)^A117358(n+1))`
-/

namespace A043474.P3374928876214182867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (SequenceMachineLib.roundAway ((A043475 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A043474.P3374928876214182867

namespace A043474

/-- `A343609(A043475(n+1)^A117358(n+1))` -/
def P3374928876214182867.Spec : Prop :=
  ∀ n, P3374928876214182867.a n = A043474 (n + 1)

end A043474

/-! ## A043474.P16363766676536073334

`A343609(A117358(n+1)²*A043475(n+1))`
-/

namespace A043474.P16363766676536073334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A117358 (n + 1) ^ 2 * A043475 (n + 1)).toNat

end

end A043474.P16363766676536073334

namespace A043474

/-- `A343609(A117358(n+1)²*A043475(n+1))` -/
def P16363766676536073334.Spec : Prop :=
  ∀ n, P16363766676536073334.a n = A043474 (n + 1)

end A043474

/-! ## A043474.P411838675483270516

`A037477(A043442(n+1)%A091083(2*(n+1)))`
-/

namespace A043474.P411838675483270516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043442 (n + 1)) (A091083 (2 * (n + 1)))).toNat

end

end A043474.P411838675483270516

namespace A043474

/-- `A037477(A043442(n+1)%A091083(2*(n+1)))` -/
def P411838675483270516.Spec : Prop :=
  ∀ n, P411838675483270516.a n = A043474 (n + 1)

end A043474

/-!
# A043475: Numbers having three 5's in base 9.

The programs for A043475, there is no canonical definition to state claims against.
-/

/-! ## A043475.P12226194307574110822

`A037477(A043443(n+1))%A215327(n+9)`
-/

namespace A043475.P12226194307574110822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A043443 (n + 1)).toNat) (A215327 (n + 9))

end

end A043475.P12226194307574110822

/-! ## A043475.P6383604887268722163

`A132792(A008805(n))+A037477(A043443(n+1))`
-/

namespace A043475.P6383604887268722163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132792 (A008805 n).toNat + A037477 (A043443 (n + 1)).toNat

end

end A043475.P6383604887268722163

/-! ## A043475.P1066857328358988180

`A037477(A043443(n+1))+A000038(A000043(n+1))`
-/

namespace A043475.P1066857328358988180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043443 (n + 1)).toNat + A000038 (A000043 (n + 1)).toNat

end

end A043475.P1066857328358988180

/-! ## A043475.P9716380769966108482

`A037477(A043443(n+1))+A008683(A275315(n+1))`
-/

namespace A043475.P9716380769966108482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043443 (n + 1)).toNat + A008683 (A275315 (n + 1)).toNat

end

end A043475.P9716380769966108482

/-! ## A043475.P15453599682592000980

`A001221(A261404(n+1))*A037477(A043443(n+1))`
-/

namespace A043475.P15453599682592000980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A261404 (n + 1)).toNat * A037477 (A043443 (n + 1)).toNat

end

end A043475.P15453599682592000980

/-!
# A043476: Numbers having four 5's in base 9.

The programs for A043476, there is no canonical definition to state claims against.
-/

/-! ## A043476.P7658800804266413232

`A017221(A043475(A161953(n+1)))`
-/

namespace A043476.P7658800804266413232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A043475 (A161953 (n + 1)).toNat).toNat

end

end A043476.P7658800804266413232

/-! ## A043476.P15654667246659508329

`A017221(A008835(n+1)*A043475(n+1))`
-/

namespace A043476.P15654667246659508329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A008835 (n + 1) * A043475 (n + 1)).toNat

end

end A043476.P15654667246659508329

/-! ## A043476.P10960340783313945382

`A037472(A008835(n+1)*A043392(n+1))`
-/

namespace A043476.P10960340783313945382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A008835 (n + 1) * A043392 (n + 1)).toNat

end

end A043476.P10960340783313945382

/-! ## A043476.P3429520538316503369

`A017221(A043475(n+1)^A008835(n+1))`
-/

namespace A043476.P3429520538316503369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (SequenceMachineLib.roundAway ((A043475 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A043476.P3429520538316503369

/-! ## A043476.P16257804502593381281

`A037472(A043392(n+1)^A008835(n+1))`
-/

namespace A043476.P16257804502593381281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A043392 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A043476.P16257804502593381281

/-!
# A043477: Numbers having one 6 in base 9.

The programs for A043477, the canonical program `A043477.P7307924685735947069` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043477 has offset 1).

The definition of A043477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043477.P12214163112832514300

`eq[1, A316867(A007095(n))]`
-/

namespace A043477.P12214163112832514300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043477.P12214163112832514300

namespace A043477

/-- `eq[1, A316867(A007095(n))]` -/
def P12214163112832514300.Spec : Prop :=
  ∀ n, (P12214163112832514300.a n : ℤ) = A043477 (n + 1)

end A043477

/-! ## A043477.P2711999479663708637

`eq[1, A316868(A256289(n))]`
-/

namespace A043477.P2711999479663708637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A256289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043477.P2711999479663708637

namespace A043477

/-- `eq[1, A316868(A256289(n))]` -/
def P2711999479663708637.Spec : Prop :=
  ∀ n, (P2711999479663708637.a n : ℤ) = A043477 (n + 1)

end A043477

/-! ## A043477.P7307924685735947069

`eq[1, A316868(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043477

/-- `eq[1, A316868(A052383(n+1))]` -/
def P7307924685735947069.Spec : Prop :=
  ∀ n, (P7307924685735947069.a n : ℤ) = A043477 (n + 1)

theorem P7307924685735947069.correct : P7307924685735947069.Spec := by
  intro n
  simp only [A043477, Nat.add_sub_cancel]

end A043477

/-! ## A043477.P3934925365663411572

`eq[1, A316868(A052404(n+1))]`
-/

namespace A043477.P3934925365663411572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043477.P3934925365663411572

namespace A043477

/-- `eq[1, A316868(A052404(n+1))]` -/
def P3934925365663411572.Spec : Prop :=
  ∀ n, (P3934925365663411572.a n : ℤ) = A043477 (n + 1)

end A043477

/-! ## A043477.P6607814007624930911

`eq[8, A171654(A171679(n))]`
-/

namespace A043477.P6607814007624930911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171654 (A171679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043477.P6607814007624930911

namespace A043477

/-- `eq[8, A171654(A171679(n))]` -/
def P6607814007624930911.Spec : Prop :=
  ∀ n, (P6607814007624930911.a n : ℤ) = A043477 (n + 1)

end A043477

/-!
# A043478: Numbers having two 6's in base 9.

The programs for A043478, there is no canonical definition to state claims against.
-/

/-! ## A043478.P848566815851379139

`A037475(A043418(n+1)^A278657(n))`
-/

namespace A043478.P848566815851379139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043418 (n + 1) : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A043478.P848566815851379139

/-! ## A043478.P18136441434438213204

`floor(A037477(A043447(n+1)*A278657(n))/9)`
-/

namespace A043478.P18136441434438213204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037477 (A043447 (n + 1) * A278657 n).toNat : ℚ) / 9⌋

end

end A043478.P18136441434438213204

/-! ## A043478.P7596088049323963905

`A037475(A043418(n+1)%A125522(n+1))`
-/

namespace A043478.P7596088049323963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A043418 (n + 1)) (A125522 (n + 1))).toNat

end

end A043478.P7596088049323963905

/-! ## A043478.P14770193781574229715

`A037477(A043446(n+1)%A352263(3*n+1))`
-/

namespace A043478.P14770193781574229715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043446 (n + 1)) (A352263 (3 * n + 1))).toNat

end

end A043478.P14770193781574229715

/-!
# A043479: Numbers having three 6's in base 9.

The programs for A043479, there is no canonical definition to state claims against.
-/

/-! ## A043479.P9122028179852958540

`A037475(A043419(n+1)^A193518(n+1))`
-/

namespace A043479.P9122028179852958540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A043419 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A043479.P9122028179852958540

/-! ## A043479.P2891713621518337280

`A037477(A043447(n+1)^A193518(n+1))`
-/

namespace A043479.P2891713621518337280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043447 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A043479.P2891713621518337280

/-! ## A043479.P16845698989975659790

`A037475(C(A043419(n+1), A193518(n+1)))`
-/

namespace A043479.P16845698989975659790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A043419 (n + 1)).toNat (A193518 (n + 1)).toNat)

end

end A043479.P16845698989975659790

/-! ## A043479.P8468659831796429850

`A037477(C(A043447(n+1), A193518(n+1)))`
-/

namespace A043479.P8468659831796429850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A043447 (n + 1)).toNat (A193518 (n + 1)).toNat)

end

end A043479.P8468659831796429850

/-! ## A043479.P15877830139119093948

`A037477(A193518(n+1)²*A043447(n+1))`
-/

namespace A043479.P15877830139119093948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A193518 (n + 1) ^ 2 * A043447 (n + 1)).toNat

end

end A043479.P15877830139119093948

/-!
# A043480: Numbers having four 6's in base 9.

The programs for A043480, there is no canonical definition to state claims against.
-/

/-! ## A043480.P5248078524210665877

`A017233(A043479(n+1)^A193518(n+1))`
-/

namespace A043480.P5248078524210665877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (SequenceMachineLib.roundAway ((A043479 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A043480.P5248078524210665877

/-! ## A043480.P9609675871844479817

`A017233(A043479(n+1)%A179137(n+1))`
-/

namespace A043480.P9609675871844479817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (Int.tmod (A043479 (n + 1)) (A179137 (n + 1))).toNat

end

end A043480.P9609675871844479817

/-! ## A043480.P2377906914660561042

`A017233(A193518(n+1)²*A043479(n+1))`
-/

namespace A043480.P2377906914660561042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A193518 (n + 1) ^ 2 * A043479 (n + 1)).toNat

end

end A043480.P2377906914660561042

/-! ## A043480.P8630227344805513582

`A017233(A043479(n+1)*A193518(n+1)*A193518(n+1))`
-/

namespace A043480.P8630227344805513582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A043479 (n + 1) * A193518 (n + 1) * A193518 (n + 1)).toNat

end

end A043480.P8630227344805513582

/-! ## A043480.P1652941018355532552

`A017233(lcm(3, A043479(n+1)))`
-/

namespace A043480.P1652941018355532552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (Int.lcm 3 (A043479 (n + 1)))

end

end A043480.P1652941018355532552

/-!
# A043481: Numbers having one 7 in base 9.

The programs for A043481, the canonical program `A043481.P16324422325216548464` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043481 has offset 1).

The definition of A043481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043481.P2194630646964839166

`eq[6, A051626(A338882(n))]`
-/

namespace A043481.P2194630646964839166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A338882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043481.P2194630646964839166

namespace A043481

/-- `eq[6, A051626(A338882(n))]` -/
def P2194630646964839166.Spec : Prop :=
  ∀ n, (P2194630646964839166.a n : ℤ) = A043481 (n + 1)

end A043481

/-! ## A043481.P16324422325216548464

`eq[1, A316868(A007095(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A043481

/-- `eq[1, A316868(A007095(n))]` -/
def P16324422325216548464.Spec : Prop :=
  ∀ n, (P16324422325216548464.a n : ℤ) = A043481 (n + 1)

theorem P16324422325216548464.correct : P16324422325216548464.Spec := by
  intro n
  simp only [A043481, Nat.add_sub_cancel]

end A043481

/-! ## A043481.P18364046721236911900

`eq[1, A316869(A256289(n))]`
-/

namespace A043481.P18364046721236911900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A256289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043481.P18364046721236911900

namespace A043481

/-- `eq[1, A316869(A256289(n))]` -/
def P18364046721236911900.Spec : Prop :=
  ∀ n, (P18364046721236911900.a n : ℤ) = A043481 (n + 1)

end A043481

/-! ## A043481.P15700472571392233324

`eq[1, A316869(A052383(n+1))]`
-/

namespace A043481.P15700472571392233324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043481.P15700472571392233324

namespace A043481

/-- `eq[1, A316869(A052383(n+1))]` -/
def P15700472571392233324.Spec : Prop :=
  ∀ n, (P15700472571392233324.a n : ℤ) = A043481 (n + 1)

end A043481

/-! ## A043481.P512687386798737482

`A316945(A031495(n+2))`
-/

namespace A043481.P512687386798737482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A031495 (n + 2)).toNat

end

end A043481.P512687386798737482

namespace A043481

/-- `A316945(A031495(n+2))` -/
def P512687386798737482.Spec : Prop :=
  ∀ n, P512687386798737482.a n = A043481 (n + 1)

end A043481

/-!
# A043482: Numbers having two 7's in base 9.

The programs for A043482, there is no canonical definition to state claims against.
-/

/-! ## A043482.P8790020081819702235

`A037477(A043450(n+1)%A356638(2*n+1))`
-/

namespace A043482.P8790020081819702235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A043450 (n + 1)) (A356638 (2 * n + 1))).toNat

end

end A043482.P8790020081819702235

/-! ## A043482.P12683285180957316284

`A037477(A043450(n+1)+and(2, A211035(n+1)))`
-/

namespace A043482.P12683285180957316284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043450 (n + 1) + Int.land 2 (A211035 (n + 1))).toNat

end

end A043482.P12683285180957316284

/-! ## A043482.P4904118983813723681

`A239705(A102139(n+1))!*A037477(A043450(n+1))`
-/

namespace A043482.P4904118983813723681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A239705 (A102139 (n + 1)).toNat).toNat : ℤ) * A037477 (A043450 (n + 1)).toNat

end

end A043482.P4904118983813723681

/-! ## A043482.P10911477762833998304

`A037477(A136400(n)!*A043450(n+1))`
-/

namespace A043482.P10911477762833998304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((Nat.factorial (A136400 n).toNat : ℤ) * A043450 (n + 1)).toNat

end

end A043482.P10911477762833998304

/-! ## A043482.P3257262188825441572

`A037477(A043450(n+1)^A136400(n)!)`
-/

namespace A043482.P3257262188825441572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043450 (n + 1) ^ Nat.factorial (A136400 n).toNat).toNat

end

end A043482.P3257262188825441572

/-!
# A043483: Numbers having three 7's in base 9.

The programs for A043483, there is no canonical definition to state claims against.
-/

/-! ## A043483.P17992834003968353097

`A037477(A043451(n+1)^A152847(n))`
-/

namespace A043483.P17992834003968353097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A043451 (n + 1) : ℚ) ^ (A152847 n : ℤ))).toNat

end

end A043483.P17992834003968353097

/-! ## A043483.P8953568309821596358

`A037477(A152847(n)²*A043451(n+1))`
-/

namespace A043483.P8953568309821596358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A152847 n ^ 2 * A043451 (n + 1)).toNat

end

end A043483.P8953568309821596358

/-! ## A043483.P12887391787344651733

`A249422(A343234(n))+A037477(A043451(n+1))`
-/

namespace A043483.P12887391787344651733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249422 (A343234 n).toNat + A037477 (A043451 (n + 1)).toNat

end

end A043483.P12887391787344651733

/-! ## A043483.P730310654077583980

`A037477(A043451(n+1))+A000007(A343234(n)²)`
-/

namespace A043483.P730310654077583980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043451 (n + 1)).toNat + A000007 (A343234 n ^ 2).toNat

end

end A043483.P730310654077583980

/-! ## A043483.P3253623891711756744

`A037477(A043451(n+1))*A204162(A100176(n+1))`
-/

namespace A043483.P3253623891711756744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A043451 (n + 1)).toNat * A204162 (A100176 (n + 1)).toNat

end

end A043483.P3253623891711756744

/-!
# A043485: Numbers having one 8 in base 9.

The programs for A043485, the canonical program `A043485.P15787335647716386183` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043485 has offset 1).

The definition of A043485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043485.P1911439405860271586

`eq[1, A102681(A007095(n))]`
-/

namespace A043485.P1911439405860271586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043485.P1911439405860271586

namespace A043485

/-- `eq[1, A102681(A007095(n))]` -/
def P1911439405860271586.Spec : Prop :=
  ∀ n, (P1911439405860271586.a n : ℤ) = A043485 (n + 1)

end A043485

/-! ## A043485.P15787335647716386183

`eq[1, A102683(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043485

/-- `eq[1, A102683(A052383(n+1))]` -/
def P15787335647716386183.Spec : Prop :=
  ∀ n, (P15787335647716386183.a n : ℤ) = A043485 (n + 1)

theorem P15787335647716386183.correct : P15787335647716386183.Spec := by
  intro n
  simp only [A043485, Nat.add_sub_cancel]

end A043485

/-! ## A043485.P7737359848442902377

`eq[A102683(A052404(n+1)), 1]`
-/

namespace A043485.P7737359848442902377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052404 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A043485.P7737359848442902377

namespace A043485

/-- `eq[A102683(A052404(n+1)), 1]` -/
def P7737359848442902377.Spec : Prop :=
  ∀ n, (P7737359848442902377.a n : ℤ) = A043485 (n + 1)

end A043485

/-! ## A043485.P5605989231090447934

`eq[A102683(A052421(n+1)), A272901(n+1)]`
-/

namespace A043485.P5605989231090447934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043485.P5605989231090447934

namespace A043485

/-- `eq[A102683(A052421(n+1)), A272901(n+1)]` -/
def P5605989231090447934.Spec : Prop :=
  ∀ n, (P5605989231090447934.a n : ℤ) = A043485 (n + 1)

end A043485

/-! ## A043485.P12509884731568677717

`∩[A184425(n+1), A338090(n+1)]`
-/

namespace A043485.P12509884731568677717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043485.P12509884731568677717

namespace A043485

/-- `∩[A184425(n+1), A338090(n+1)]` -/
def P12509884731568677717.Spec : Prop :=
  ∀ n, (P12509884731568677717.a n : ℤ) = A043485 (n + 1)

end A043485

/-!
# A043486: Numbers having two 8's in base 9.

The programs for A043486, the canonical program `A043486.P10892600540300639593` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043486 has offset 1).

The definition of A043486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043486.P8114485845036944932

`eq[2, A102681(A007095(n))]`
-/

namespace A043486.P8114485845036944932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P8114485845036944932

namespace A043486

/-- `eq[2, A102681(A007095(n))]` -/
def P8114485845036944932.Spec : Prop :=
  ∀ n, (P8114485845036944932.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P10892600540300639593

`eq[2, A102683(A052383(n+1))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043486

/-- `eq[2, A102683(A052383(n+1))]` -/
def P10892600540300639593.Spec : Prop :=
  ∀ n, (P10892600540300639593.a n : ℤ) = A043486 (n + 1)

theorem P10892600540300639593.correct : P10892600540300639593.Spec := by
  intro n
  simp only [A043486, Nat.add_sub_cancel]

end A043486

/-! ## A043486.P18408683999019612058

`eq[2, A102683(A052404(n+1))]`
-/

namespace A043486.P18408683999019612058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052404 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P18408683999019612058

namespace A043486

/-- `eq[2, A102683(A052404(n+1))]` -/
def P18408683999019612058.Spec : Prop :=
  ∀ n, (P18408683999019612058.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P6267388378588484758

`eq[2, A102683(A052405(n+1))]`
-/

namespace A043486.P6267388378588484758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P6267388378588484758

namespace A043486

/-- `eq[2, A102683(A052405(n+1))]` -/
def P6267388378588484758.Spec : Prop :=
  ∀ n, (P6267388378588484758.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P16310698771671692720

`eq[2, A102683(A052406(n+1))]`
-/

namespace A043486.P16310698771671692720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P16310698771671692720

namespace A043486

/-- `eq[2, A102683(A052406(n+1))]` -/
def P16310698771671692720.Spec : Prop :=
  ∀ n, (P16310698771671692720.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P14749573174355905898

`eq[2, A102683(A052413(n+1))]`
-/

namespace A043486.P14749573174355905898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P14749573174355905898

namespace A043486

/-- `eq[2, A102683(A052413(n+1))]` -/
def P14749573174355905898.Spec : Prop :=
  ∀ n, (P14749573174355905898.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P2991710794774361042

`eq[2, A102683(A052414(n+1))]`
-/

namespace A043486.P2991710794774361042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P2991710794774361042

namespace A043486

/-- `eq[2, A102683(A052414(n+1))]` -/
def P2991710794774361042.Spec : Prop :=
  ∀ n, (P2991710794774361042.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P15615175105521424927

`eq[2, A102683(A052419(n+1))]`
-/

namespace A043486.P15615175105521424927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P15615175105521424927

namespace A043486

/-- `eq[2, A102683(A052419(n+1))]` -/
def P15615175105521424927.Spec : Prop :=
  ∀ n, (P15615175105521424927.a n : ℤ) = A043486 (n + 1)

end A043486

/-! ## A043486.P14324960651975644765

`eq[2, A102683(A052421(n+1))]`
-/

namespace A043486.P14324960651975644765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P14324960651975644765

namespace A043486

/-- `eq[2, A102683(A052421(n+1))]` -/
def P14324960651975644765.Spec : Prop :=
  ∀ n, (P14324960651975644765.a n : ℤ) = A043486 (n + 1)

end A043486

/-!
# A043489: Numbers having one 0 in base 10.

The programs for A043489, the canonical program `A043489.P7351051359913768251` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043489 has offset 1).

The definition of A043489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043489.P7351051359913768251

`eq[n, n*A055641(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043489

/-- `eq[n, n*A055641(n)]` -/
def P7351051359913768251.Spec : Prop :=
  ∀ n, (P7351051359913768251.a n : ℤ) = A043489 (n + 1)

theorem P7351051359913768251.correct : P7351051359913768251.Spec := by
  intro n
  simp only [A043489, Nat.add_sub_cancel]

end A043489

/-! ## A043489.P13778836863104213992

`eq[A055641(n), A329684(n)]`
-/

namespace A043489.P13778836863104213992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P13778836863104213992

namespace A043489

/-- `eq[A055641(n), A329684(n)]` -/
def P13778836863104213992.Spec : Prop :=
  ∀ n, (P13778836863104213992.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P9613398539756613482

`eq[A055641(n), A373565(n)]`
-/

namespace A043489.P9613398539756613482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P9613398539756613482

namespace A043489

/-- `eq[A055641(n), A373565(n)]` -/
def P9613398539756613482.Spec : Prop :=
  ∀ n, (P9613398539756613482.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P12550873421115259653

`eq[A007954(n)+1, A055641(n)]`
-/

namespace A043489.P12550873421115259653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P12550873421115259653

namespace A043489

/-- `eq[A007954(n)+1, A055641(n)]` -/
def P12550873421115259653.Spec : Prop :=
  ∀ n, (P12550873421115259653.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P2126301950750222923

`eq[A045512(n)+1, A045503(n)]`
-/

namespace A043489.P2126301950750222923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P2126301950750222923

namespace A043489

/-- `eq[A045512(n)+1, A045503(n)]` -/
def P2126301950750222923.Spec : Prop :=
  ∀ n, (P2126301950750222923.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P917684734273722727

`eq[A045496(n+1), A055641(n)]`
-/

namespace A043489.P917684734273722727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P917684734273722727

namespace A043489

/-- `eq[A045496(n+1), A055641(n)]` -/
def P917684734273722727.Spec : Prop :=
  ∀ n, (P917684734273722727.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P16057278935433645130

`eq[A045497(n+1), A055641(n)]`
-/

namespace A043489.P16057278935433645130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P16057278935433645130

namespace A043489

/-- `eq[A045497(n+1), A055641(n)]` -/
def P16057278935433645130.Spec : Prop :=
  ∀ n, (P16057278935433645130.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P2830445926486297807

`eq[A054054(n)+1, A055641(n)]`
-/

namespace A043489.P2830445926486297807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P2830445926486297807

namespace A043489

/-- `eq[A054054(n)+1, A055641(n)]` -/
def P2830445926486297807.Spec : Prop :=
  ∀ n, (P2830445926486297807.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P4312378474082642522

`eq[A055641(n), A059811(n+1)]`
-/

namespace A043489.P4312378474082642522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P4312378474082642522

namespace A043489

/-- `eq[A055641(n), A059811(n+1)]` -/
def P4312378474082642522.Spec : Prop :=
  ∀ n, (P4312378474082642522.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P3168917912740685942

`eq[A055641(n), A078315(n+1)]`
-/

namespace A043489.P3168917912740685942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P3168917912740685942

namespace A043489

/-- `eq[A055641(n), A078315(n+1)]` -/
def P3168917912740685942.Spec : Prop :=
  ∀ n, (P3168917912740685942.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P12760581269505615343

`eq[A098736(n)+1, A055641(n)]`
-/

namespace A043489.P12760581269505615343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P12760581269505615343

namespace A043489

/-- `eq[A098736(n)+1, A055641(n)]` -/
def P12760581269505615343.Spec : Prop :=
  ∀ n, (P12760581269505615343.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P18226936676939235560

`eq[A055641(n), A121273(n+1)]`
-/

namespace A043489.P18226936676939235560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P18226936676939235560

namespace A043489

/-- `eq[A055641(n), A121273(n+1)]` -/
def P18226936676939235560.Spec : Prop :=
  ∀ n, (P18226936676939235560.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P3267820850283057675

`eq[A055641(n), A125846(n+1)]`
-/

namespace A043489.P3267820850283057675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P3267820850283057675

namespace A043489

/-- `eq[A055641(n), A125846(n+1)]` -/
def P3267820850283057675.Spec : Prop :=
  ∀ n, (P3267820850283057675.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P13094586238358390031

`eq[A055641(n), A125847(n+1)]`
-/

namespace A043489.P13094586238358390031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P13094586238358390031

namespace A043489

/-- `eq[A055641(n), A125847(n+1)]` -/
def P13094586238358390031.Spec : Prop :=
  ∀ n, (P13094586238358390031.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P15588471633786451775

`eq[A055641(n), A171624(n+1)]`
-/

namespace A043489.P15588471633786451775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P15588471633786451775

namespace A043489

/-- `eq[A055641(n), A171624(n+1)]` -/
def P15588471633786451775.Spec : Prop :=
  ∀ n, (P15588471633786451775.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P1070630517460902783

`eq[A188642(n)+1, A055641(n)]`
-/

namespace A043489.P1070630517460902783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P1070630517460902783

namespace A043489

/-- `eq[A188642(n)+1, A055641(n)]` -/
def P1070630517460902783.Spec : Prop :=
  ∀ n, (P1070630517460902783.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P15933003157805316438

`eq[A055641(n), A309059(n+1)]`
-/

namespace A043489.P15933003157805316438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P15933003157805316438

namespace A043489

/-- `eq[A055641(n), A309059(n+1)]` -/
def P15933003157805316438.Spec : Prop :=
  ∀ n, (P15933003157805316438.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P14929536935307796487

`eq[A055641(n), A319658(n+1)]`
-/

namespace A043489.P14929536935307796487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043489.P14929536935307796487

namespace A043489

/-- `eq[A055641(n), A319658(n+1)]` -/
def P14929536935307796487.Spec : Prop :=
  ∀ n, (P14929536935307796487.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P2510096884256270993

`eq[n, n*A064692(A064770(n))]`
-/

namespace A043489.P2510096884256270993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064692 (A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043489.P2510096884256270993

namespace A043489

/-- `eq[n, n*A064692(A064770(n))]` -/
def P2510096884256270993.Spec : Prop :=
  ∀ n, (P2510096884256270993.a n : ℤ) = A043489 (n + 1)

end A043489

/-! ## A043489.P5263322227608310184

`eq[n, n*A316864(A222212(n))]`
-/

namespace A043489.P5263322227608310184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316864 (A222212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043489.P5263322227608310184

namespace A043489

/-- `eq[n, n*A316864(A222212(n))]` -/
def P5263322227608310184.Spec : Prop :=
  ∀ n, (P5263322227608310184.a n : ℤ) = A043489 (n + 1)

end A043489

/-!
# A043490: Numbers having two 0's in base 10.

The programs for A043490, the canonical program `A043490.P9431805500912801668` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043490 has offset 1).

The definition of A043490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043490.P9431805500912801668

`eq[2, A055641(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043490

/-- `eq[2, A055641(n)]` -/
def P9431805500912801668.Spec : Prop :=
  ∀ n, (P9431805500912801668.a n : ℤ) = A043490 (n + 1)

theorem P9431805500912801668.correct : P9431805500912801668.Spec := by
  intro n
  simp only [A043490, Nat.add_sub_cancel]

end A043490

/-! ## A043490.P9153870418282840767

`A075617(A218037(n+1))`
-/

namespace A043490.P9153870418282840767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A218037 (n + 1)).toNat

end

end A043490.P9153870418282840767

namespace A043490

/-- `A075617(A218037(n+1))` -/
def P9153870418282840767.Spec : Prop :=
  ∀ n, P9153870418282840767.a n = A043490 (n + 1)

end A043490

/-! ## A043490.P3122773835234678323

`A218037(A187829(n+1))`
-/

namespace A043490.P3122773835234678323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218037 (A187829 (n + 1)).toNat

end

end A043490.P3122773835234678323

namespace A043490

/-- `A218037(A187829(n+1))` -/
def P3122773835234678323.Spec : Prop :=
  ∀ n, P3122773835234678323.a n = A043490 (n + 1)

end A043490

/-! ## A043490.P13096483628328921450

`A218037(A077168(n))`
-/

namespace A043490.P13096483628328921450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218037 (A077168 n).toNat

end

end A043490.P13096483628328921450

namespace A043490

/-- `A218037(A077168(n))` -/
def P13096483628328921450.Spec : Prop :=
  ∀ n, P13096483628328921450.a n = A043490 (n + 1)

end A043490

/-! ## A043490.P632012885107665106

`A218037(A004907(n+2))`
-/

namespace A043490.P632012885107665106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218037 (A004907 (n + 2)).toNat

end

end A043490.P632012885107665106

namespace A043490

/-- `A218037(A004907(n+2))` -/
def P632012885107665106.Spec : Prop :=
  ∀ n, P632012885107665106.a n = A043490 (n + 1)

end A043490

/-!
# A043491: Numbers having three 0's in base 10.

The programs for A043491, there is no canonical definition to state claims against.
-/

/-! ## A043491.P5503347919305317328

`A057169(lcm(A043490(n+1), A218037(n+1)))`
-/

namespace A043491.P5503347919305317328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057169 (Int.lcm (A043490 (n + 1)) (A218037 (n + 1)))

end

end A043491.P5503347919305317328

/-! ## A043491.P2281187146818318969

`A057169(A001221(lcm(4, 2^n))*A218037(n+1))`
-/

namespace A043491.P2281187146818318969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057169 (A001221 (Nat.lcm 4 (2 ^ n)) * A218037 (n + 1)).toNat

end

end A043491.P2281187146818318969

/-! ## A043491.P6008209683100598836

`A001222(A014210(n))*A057169(A218037(n+1))`
-/

namespace A043491.P6008209683100598836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014210 n).toNat * A057169 (A218037 (n + 1)).toNat

end

end A043491.P6008209683100598836

/-! ## A043491.P18188477973781689002

`A118764(A168650(n+1))-3`
-/

namespace A043491.P18188477973781689002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A168650 (n + 1)).toNat - 3

end

end A043491.P18188477973781689002

/-!
# A043492: Numbers having four 0's in base 10.

The programs for A043492, there is no canonical definition to state claims against.
-/

/-! ## A043492.P13709211779686916644

`A168651(n+1)+A184974(A036639(n))`
-/

namespace A043492.P13709211779686916644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168651 (n + 1) + A184974 (A036639 n).toNat

end

end A043492.P13709211779686916644

/-! ## A043492.P14400806522675279737

`A168651(n+1)+A082784(A240904(n))`
-/

namespace A043492.P14400806522675279737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168651 (n + 1) + A082784 (A240904 n).toNat

end

end A043492.P14400806522675279737

/-! ## A043492.P1555754796496201906

`A168651(n+1)+A036639(A036639(n)+1)`
-/

namespace A043492.P1555754796496201906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168651 (n + 1) + A036639 (A036639 n + 1).toNat

end

end A043492.P1555754796496201906

/-! ## A043492.P16470892783318270470

`A185284(A168657(n+1))+A168651(n+1)`
-/

namespace A043492.P16470892783318270470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A168657 (n + 1)).toNat + A168651 (n + 1)

end

end A043492.P16470892783318270470

/-! ## A043492.P15160955044447602707

`A194233(10*A044332(n+1))+A064834(n+1)`
-/

namespace A043492.P15160955044447602707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (10 * A044332 (n + 1)).toNat + A064834 (n + 1)

end

end A043492.P15160955044447602707

/-!
# A043493: Numbers that contain a single 1.

The programs for A043493, the canonical program `A043493.P15826475109488052881` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043493 has offset 1).

The definition of A043493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043493.P15826475109488052881

`eq[1, A268643(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043493

/-- `eq[1, A268643(n)]` -/
def P15826475109488052881.Spec : Prop :=
  ∀ n, (P15826475109488052881.a n : ℤ) = A043493 (n + 1)

theorem P15826475109488052881.correct : P15826475109488052881.Spec := by
  intro n
  simp only [A043493, Nat.add_sub_cancel]

end A043493

/-! ## A043493.P15726963734845473230

`record[gcd(n+1, A268643(n+1)+n)]`
-/

namespace A043493.P15726963734845473230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A268643 (n + 1) + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043493.P15726963734845473230

namespace A043493

/-- `record[gcd(n+1, A268643(n+1)+n)]` -/
def P15726963734845473230.Spec : Prop :=
  ∀ n, (P15726963734845473230.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P17466447031587353515

`eq[A102669(n)+1, A055640(n)]`
-/

namespace A043493.P17466447031587353515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043493.P17466447031587353515

namespace A043493

/-- `eq[A102669(n)+1, A055640(n)]` -/
def P17466447031587353515.Spec : Prop :=
  ∀ n, (P17466447031587353515.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P519051894916651200

`record[A011531(n+1)/A268643(A011531(n+1))]`
-/

namespace A043493.P519051894916651200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011531 (n + 1) : ℚ) / (A268643 (A011531 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043493.P519051894916651200

namespace A043493

/-- `record[A011531(n+1)/A268643(A011531(n+1))]` -/
def P519051894916651200.Spec : Prop :=
  ∀ n, P519051894916651200.a n = (A043493 (n + 1) : ℚ)

end A043493

/-! ## A043493.P994460645619130332

`eq[A145594(A004176(n)+1), A145594(n)]`
-/

namespace A043493.P994460645619130332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145594 (A004176 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043493.P994460645619130332

namespace A043493

/-- `eq[A145594(A004176(n)+1), A145594(n)]` -/
def P994460645619130332.Spec : Prop :=
  ∀ n, (P994460645619130332.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P8507235394703084220

`A000720(p?[A008578(n+1)*A268643(n)])`
-/

namespace A043493.P8507235394703084220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A268643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043493.P8507235394703084220

namespace A043493

/-- `A000720(p?[A008578(n+1)*A268643(n)])` -/
def P8507235394703084220.Spec : Prop :=
  ∀ n, P8507235394703084220.a n = A043493 (n + 1)

end A043493

/-! ## A043493.P4333136585960195132

`eq[1, val(A113581(n), 2)]`
-/

namespace A043493.P4333136585960195132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113581 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043493.P4333136585960195132

namespace A043493

/-- `eq[1, val(A113581(n), 2)]` -/
def P4333136585960195132.Spec : Prop :=
  ∀ n, (P4333136585960195132.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P15142534291208171777

`eq[1, A100910(A017281(n))]`
-/

namespace A043493.P15142534291208171777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043493.P15142534291208171777

namespace A043493

/-- `eq[1, A100910(A017281(n))]` -/
def P15142534291208171777.Spec : Prop :=
  ∀ n, (P15142534291208171777.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P10553185237590060445

`lt[1, A009531(A113581(n))]`
-/

namespace A043493.P10553185237590060445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A043493.P10553185237590060445

namespace A043493

/-- `lt[1, A009531(A113581(n))]` -/
def P10553185237590060445.Spec : Prop :=
  ∀ n, (P10553185237590060445.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P8152417694577777020

`eq[1, A100910(A017293(n)-1)]`
-/

namespace A043493.P8152417694577777020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017293 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043493.P8152417694577777020

namespace A043493

/-- `eq[1, A100910(A017293(n)-1)]` -/
def P8152417694577777020.Spec : Prop :=
  ∀ n, (P8152417694577777020.a n : ℤ) = A043493 (n + 1)

end A043493

/-! ## A043493.P3859801134930356867

`eq[1, A010873(A113581(n)-1)]`
-/

namespace A043493.P3859801134930356867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A113581 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043493.P3859801134930356867

namespace A043493

/-- `eq[1, A010873(A113581(n)-1)]` -/
def P3859801134930356867.Spec : Prop :=
  ∀ n, (P3859801134930356867.a n : ℤ) = A043493 (n + 1)

end A043493

/-!
# A043494: Numbers having two 1's in base 10.

The programs for A043494, there is no canonical definition to state claims against.
-/

/-! ## A043494.P14188211553173685708

`record[A326108(n+2)]`
-/

namespace A043494.P14188211553173685708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043494.P14188211553173685708

/-! ## A043494.P1736190976082855769

`eq[2, A268643(n)]`
-/

namespace A043494.P1736190976082855769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043494.P1736190976082855769

/-! ## A043494.P3283906567082412565

`eq[A102669(n)+2, A055640(n)]`
-/

namespace A043494.P3283906567082412565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043494.P3283906567082412565

/-! ## A043494.P7430851695887014459

`eq[2, val(A113581(n), 2)]`
-/

namespace A043494.P7430851695887014459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113581 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043494.P7430851695887014459

/-! ## A043494.P2536708126793111365

`eq[2, A100910(A017281(n))]`
-/

namespace A043494.P2536708126793111365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043494.P2536708126793111365

/-!
# A043495: Numbers having three 1's in base 10.

The programs for A043495, there is no canonical definition to state claims against.
-/

/-! ## A043495.P16767643521151146617

`record[A326109(round(n/(n+1)+n+1)+1)]`
-/

namespace A043495.P16767643521151146617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326109 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043495.P16767643521151146617

/-! ## A043495.P15308483304145761811

`record[A326109(n+3)-A130706(2*n+1)]`
-/

namespace A043495.P15308483304145761811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326109 (n + 3) - A130706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043495.P15308483304145761811

/-! ## A043495.P5448260799419463956

`eq[3, A268643(n)]`
-/

namespace A043495.P5448260799419463956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043495.P5448260799419463956

/-! ## A043495.P11874472980525620869

`eq[3, A007953(A321797(n))]`
-/

namespace A043495.P11874472980525620869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A321797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043495.P11874472980525620869

/-! ## A043495.P6664857102335355410

`eq[11, A321537(A004186(n))]`
-/

namespace A043495.P6664857102335355410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043495.P6664857102335355410

/-!
# A043496: Numbers having four 1's in base 10.

The programs for A043496, there is no canonical definition to state claims against.
-/

/-! ## A043496.P2789777508608613336

`record[A326110(n+2)]`
-/

namespace A043496.P2789777508608613336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326110 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043496.P2789777508608613336

/-! ## A043496.P3545144859064107112

`A007095(A043460(n+1)*A208673(n))`
-/

namespace A043496.P3545144859064107112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043460 (n + 1) * A208673 n).toNat

end

end A043496.P3545144859064107112

/-! ## A043496.P13236859538011559298

`A007095(A043460(n+1)^A208673(n))`
-/

namespace A043496.P13236859538011559298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A043460 (n + 1) : ℚ) ^ (A208673 n : ℤ))).toNat

end

end A043496.P13236859538011559298

/-! ## A043496.P6357903626683402390

`A007095(lcm(A043460(n+1), A208673(n)))`
-/

namespace A043496.P6357903626683402390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.lcm (A043460 (n + 1)) (A208673 n))

end

end A043496.P6357903626683402390

/-! ## A043496.P14281951485518615518

`A007095(A043460(n+1)*A298589(n+1))`
-/

namespace A043496.P14281951485518615518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A043460 (n + 1) * A298589 (n + 1)).toNat

end

end A043496.P14281951485518615518

/-!
# A043497: Numbers having one 2 in base 10.

The programs for A043497, the canonical program `A043497.P15153707418781849022` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043497 has offset 1).

The definition of A043497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043497.P15153707418781849022

`eq[1, A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043497

/-- `eq[1, A316863(n)]` -/
def P15153707418781849022.Spec : Prop :=
  ∀ n, (P15153707418781849022.a n : ℤ) = A043497 (n + 1)

theorem P15153707418781849022.correct : P15153707418781849022.Spec := by
  intro n
  simp only [A043497, Nat.add_sub_cancel]

end A043497

/-! ## A043497.P11612406812152177194

`eq[1, A075053(A001613(n))]`
-/

namespace A043497.P11612406812152177194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P11612406812152177194

namespace A043497

/-- `eq[1, A075053(A001613(n))]` -/
def P11612406812152177194.Spec : Prop :=
  ∀ n, (P11612406812152177194.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P6680874457446706626

`eq[1, A268643(A035043(n))]`
-/

namespace A043497.P6680874457446706626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P6680874457446706626

namespace A043497

/-- `eq[1, A268643(A035043(n))]` -/
def P6680874457446706626.Spec : Prop :=
  ∀ n, (P6680874457446706626.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P10189329309156027935

`eq[1, A316864(A048379(n))]`
-/

namespace A043497.P10189329309156027935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P10189329309156027935

namespace A043497

/-- `eq[1, A316864(A048379(n))]` -/
def P10189329309156027935.Spec : Prop :=
  ∀ n, (P10189329309156027935.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P10063778844280926231

`eq[1, A268643(A235049(n))]`
-/

namespace A043497.P10063778844280926231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P10063778844280926231

namespace A043497

/-- `eq[1, A268643(A235049(n))]` -/
def P10063778844280926231.Spec : Prop :=
  ∀ n, (P10063778844280926231.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P15681331611108864731

`eq[1, A316865(A222228(n))]`
-/

namespace A043497.P15681331611108864731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P15681331611108864731

namespace A043497

/-- `eq[1, A316865(A222228(n))]` -/
def P15681331611108864731.Spec : Prop :=
  ∀ n, (P15681331611108864731.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P17642207189836864504

`eq[A102671(n)+1, A102669(n)]`
-/

namespace A043497.P17642207189836864504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043497.P17642207189836864504

namespace A043497

/-- `eq[A102671(n)+1, A102669(n)]` -/
def P17642207189836864504.Spec : Prop :=
  ∀ n, (P17642207189836864504.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P15423631083504969041

`eq[1, A268643(n-A064770(n))]`
-/

namespace A043497.P15423631083504969041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P15423631083504969041

namespace A043497

/-- `eq[1, A268643(n-A064770(n))]` -/
def P15423631083504969041.Spec : Prop :=
  ∀ n, (P15423631083504969041.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P11575497935777033393

`eq[1, A268643(n-A136400(n))]`
-/

namespace A043497.P11575497935777033393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A136400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P11575497935777033393

namespace A043497

/-- `eq[1, A268643(n-A136400(n))]` -/
def P11575497935777033393.Spec : Prop :=
  ∀ n, (P11575497935777033393.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P16878284137984990574

`eq[A102673(n)+1, A102669(A107130(n))]`
-/

namespace A043497.P16878284137984990574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043497.P16878284137984990574

namespace A043497

/-- `eq[A102673(n)+1, A102669(A107130(n))]` -/
def P16878284137984990574.Spec : Prop :=
  ∀ n, (P16878284137984990574.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P4337836718986094552

`eq[A102669(A235049(n))+1, A102669(n)]`
-/

namespace A043497.P4337836718986094552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A235049 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043497.P4337836718986094552

namespace A043497

/-- `eq[A102669(A235049(n))+1, A102669(n)]` -/
def P4337836718986094552.Spec : Prop :=
  ∀ n, (P4337836718986094552.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P3957395530108934592

`eq[2*A051801(A004177(n)), A051801(n)]`
-/

namespace A043497.P3957395530108934592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051801 (A004177 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043497.P3957395530108934592

namespace A043497

/-- `eq[2*A051801(A004177(n)), A051801(n)]` -/
def P3957395530108934592.Spec : Prop :=
  ∀ n, (P3957395530108934592.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P16177440657248944171

`record[A011532(n+1)/A316863(A011532(n+1))]`
-/

namespace A043497.P16177440657248944171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011532 (n + 1) : ℚ) / (A316863 (A011532 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A043497.P16177440657248944171

namespace A043497

/-- `record[A011532(n+1)/A316863(A011532(n+1))]` -/
def P16177440657248944171.Spec : Prop :=
  ∀ n, P16177440657248944171.a n = (A043497 (n + 1) : ℚ)

end A043497

/-! ## A043497.P14949467834932899988

`A000720(p?[A008578(n+1)*A316863(n)])`
-/

namespace A043497.P14949467834932899988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A316863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A043497.P14949467834932899988

namespace A043497

/-- `A000720(p?[A008578(n+1)*A316863(n)])` -/
def P14949467834932899988.Spec : Prop :=
  ∀ n, P14949467834932899988.a n = A043497 (n + 1)

end A043497

/-! ## A043497.P15929429894670625732

`eq[1, A100910(A017293(n))]`
-/

namespace A043497.P15929429894670625732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P15929429894670625732

namespace A043497

/-- `eq[1, A100910(A017293(n))]` -/
def P15929429894670625732.Spec : Prop :=
  ∀ n, (P15929429894670625732.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P15740493526313401208

`eq[1, A100910(A017281(n)+1)]`
-/

namespace A043497.P15740493526313401208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P15740493526313401208

namespace A043497

/-- `eq[1, A100910(A017281(n)+1)]` -/
def P15740493526313401208.Spec : Prop :=
  ∀ n, (P15740493526313401208.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P2132845565904689062

`eq[1, A100910(A017317(n)-2)]`
-/

namespace A043497.P2132845565904689062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017317 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P2132845565904689062

namespace A043497

/-- `eq[1, A100910(A017317(n)-2)]` -/
def P2132845565904689062.Spec : Prop :=
  ∀ n, (P2132845565904689062.a n : ℤ) = A043497 (n + 1)

end A043497

/-! ## A043497.P11933881235049852506

`eq[1, A007949(A113581(n))]`
-/

namespace A043497.P11933881235049852506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P11933881235049852506

namespace A043497

/-- `eq[1, A007949(A113581(n))]` -/
def P11933881235049852506.Spec : Prop :=
  ∀ n, (P11933881235049852506.a n : ℤ) = A043497 (n + 1)

end A043497

/-!
# A043498: Numbers having two 2's in base 10.

The programs for A043498, the canonical program `A043498.P17962041537627906744` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A043498 has offset 1).

The definition of A043498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A043498.P17962041537627906744

`eq[2, A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A043498

/-- `eq[2, A316863(n)]` -/
def P17962041537627906744.Spec : Prop :=
  ∀ n, (P17962041537627906744.a n : ℤ) = A043498 (n + 1)

theorem P17962041537627906744.correct : P17962041537627906744.Spec := by
  intro n
  simp only [A043498, Nat.add_sub_cancel]

end A043498

/-! ## A043498.P5740376136955143256

`eq[2, A075053(A001613(n))]`
-/

namespace A043498.P5740376136955143256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P5740376136955143256

namespace A043498

/-- `eq[2, A075053(A001613(n))]` -/
def P5740376136955143256.Spec : Prop :=
  ∀ n, (P5740376136955143256.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P7979967662880433059

`eq[2, A268643(A035043(n))]`
-/

namespace A043498.P7979967662880433059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P7979967662880433059

namespace A043498

/-- `eq[2, A268643(A035043(n))]` -/
def P7979967662880433059.Spec : Prop :=
  ∀ n, (P7979967662880433059.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P25626777340468131

`eq[2, A316864(A048379(n))]`
-/

namespace A043498.P25626777340468131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A048379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P25626777340468131

namespace A043498

/-- `eq[2, A316864(A048379(n))]` -/
def P25626777340468131.Spec : Prop :=
  ∀ n, (P25626777340468131.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P11937785455365883320

`eq[2, A268643(A235049(n))]`
-/

namespace A043498.P11937785455365883320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P11937785455365883320

namespace A043498

/-- `eq[2, A268643(A235049(n))]` -/
def P11937785455365883320.Spec : Prop :=
  ∀ n, (P11937785455365883320.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P15411217582688587368

`eq[2, A316865(A222228(n))]`
-/

namespace A043498.P15411217582688587368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P15411217582688587368

namespace A043498

/-- `eq[2, A316865(A222228(n))]` -/
def P15411217582688587368.Spec : Prop :=
  ∀ n, (P15411217582688587368.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P16310337646387762029

`eq[A102671(n)+2, A102669(n)]`
-/

namespace A043498.P16310337646387762029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043498.P16310337646387762029

namespace A043498

/-- `eq[A102671(n)+2, A102669(n)]` -/
def P16310337646387762029.Spec : Prop :=
  ∀ n, (P16310337646387762029.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P8705814182149367007

`eq[2, A268643(n-A064770(n))]`
-/

namespace A043498.P8705814182149367007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P8705814182149367007

namespace A043498

/-- `eq[2, A268643(n-A064770(n))]` -/
def P8705814182149367007.Spec : Prop :=
  ∀ n, (P8705814182149367007.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P15479979476715592519

`eq[2, A268643(n-A136400(n))]`
-/

namespace A043498.P15479979476715592519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 ((n : ℤ) - A136400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P15479979476715592519

namespace A043498

/-- `eq[2, A268643(n-A136400(n))]` -/
def P15479979476715592519.Spec : Prop :=
  ∀ n, (P15479979476715592519.a n : ℤ) = A043498 (n + 1)

end A043498

/-! ## A043498.P4131589056080130320

`eq[A102669(A235049(n))+2, A102669(n)]`
-/

namespace A043498.P4131589056080130320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A235049 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043498.P4131589056080130320

namespace A043498

/-- `eq[A102669(A235049(n))+2, A102669(n)]` -/
def P4131589056080130320.Spec : Prop :=
  ∀ n, (P4131589056080130320.a n : ℤ) = A043498 (n + 1)

end A043498

/-!
# A043499: Numbers having three 2's in base 10.

The programs for A043499, there is no canonical definition to state claims against.
-/

/-! ## A043499.P14152227804665183593

`A007095(A043463(n+1))%A043464(A331565(n+1))`
-/

namespace A043499.P14152227804665183593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A043463 (n + 1)).toNat) (A043464 (A331565 (n + 1)).toNat)

end

end A043499.P14152227804665183593

/-! ## A043499.P18056322186222992058

`A007094(A043431(n+1)^A189006(n))`
-/

namespace A043499.P18056322186222992058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043431 (n + 1) : ℚ) ^ (A189006 n : ℤ))).toNat

end

end A043499.P18056322186222992058

/-! ## A043499.P9557362015905823632

`A007094(A043431(n+1)^A212177(n+1))`
-/

namespace A043499.P9557362015905823632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A043431 (n + 1) : ℚ) ^ (A212177 (n + 1) : ℤ))).toNat

end

end A043499.P9557362015905823632

/-! ## A043499.P421526571075409334

`A007093(C(A043403(n+1), A184257(n+1)))`
-/

namespace A043499.P421526571075409334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Nat.choose (A043403 (n + 1)).toNat (A184257 (n + 1)).toNat)

end

end A043499.P421526571075409334

/-! ## A043499.P608875027492154803

`A007094(A212177(n+1)²²*A043431(n+1))`
-/

namespace A043499.P608875027492154803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((A212177 (n + 1) ^ 2) ^ 2 * A043431 (n + 1)).toNat

end

end A043499.P608875027492154803

