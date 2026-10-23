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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A104401: a(n) = A104235(n)/4.

The programs for A104401, the canonical program `A104401.P12404378533121080749` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104401 has offset 0).

The definition of A104401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104235, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104401.P12404378533121080749

`A104235(n+1)/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104401

/-- `A104235(n+1)/4` -/
def P12404378533121080749.Spec : Prop :=
  ∀ n, P12404378533121080749.a n = (A104401 n : ℚ)

end A104401

/-! ## A104401.P11401954139949701822

`comp[or(n, n+1)-val(n+1, 2)]/4`
-/

namespace A104401.P11401954139949701822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 4

end

end A104401.P11401954139949701822

namespace A104401

/-- `comp[or(n, n+1)-val(n+1, 2)]/4` -/
def P11401954139949701822.Spec : Prop :=
  ∀ n, P11401954139949701822.a n = (A104401 n : ℚ)

end A104401

/-! ## A104401.P16134433236004581034

`eq[4*n, A102370(4*n)]`
-/

namespace A104401.P16134433236004581034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102370 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104401.P16134433236004581034

namespace A104401

/-- `eq[4*n, A102370(4*n)]` -/
def P16134433236004581034.Spec : Prop :=
  ∀ n, (P16134433236004581034.a n : ℤ) = A104401 n

end A104401

/-! ## A104401.P14862869230941466954

`record[ceil((n-3)/4)/A227287(n)]`
-/

namespace A104401.P14862869230941466954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈((n : ℤ) - 3 : ℚ) / 4⌉ : ℚ) / (A227287 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104401.P14862869230941466954

namespace A104401

/-- `record[ceil((n-3)/4)/A227287(n)]` -/
def P14862869230941466954.Spec : Prop :=
  ∀ n, P14862869230941466954.a n = (A104401 n : ℚ)

end A104401

/-! ## A104401.P10547038122507512653

`A002265(A104235(n+1))`
-/

namespace A104401.P10547038122507512653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A104235 (n + 1)).toNat

end

end A104401.P10547038122507512653

namespace A104401

/-- `A002265(A104235(n+1))` -/
def P10547038122507512653.Spec : Prop :=
  ∀ n, P10547038122507512653.a n = A104401 n

end A104401

/-! ## A104401.P642686003440993916

`lt[A028233(3*(n+1)), A028233((n+3)²)]`
-/

namespace A104401.P642686003440993916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n + 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104401.P642686003440993916

namespace A104401

/-- `lt[A028233(3*(n+1)), A028233((n+3)²)]` -/
def P642686003440993916.Spec : Prop :=
  ∀ n, (P642686003440993916.a n : ℤ) = A104401 n

end A104401

/-! ## A104401.P14733440281195014884

`eq[A157334(n), A373531(n+1)]`
-/

namespace A104401.P14733440281195014884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104401.P14733440281195014884

namespace A104401

/-- `eq[A157334(n), A373531(n+1)]` -/
def P14733440281195014884.Spec : Prop :=
  ∀ n, (P14733440281195014884.a n : ℤ) = A104401 n

end A104401

/-! ## A104401.P12988268499810651978

`lt[A059268(A334032(n+1)), A001148(3*(n+1))]`
-/

namespace A104401.P12988268499810651978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A334032 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001148 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104401.P12988268499810651978

namespace A104401

/-- `lt[A059268(A334032(n+1)), A001148(3*(n+1))]` -/
def P12988268499810651978.Spec : Prop :=
  ∀ n, (P12988268499810651978.a n : ℤ) = A104401 n

end A104401

/-! ## A104401.P5662793845343161099

`lt[A384890(n), A029898(A002620(3*n+1))]`
-/

namespace A104401.P5662793845343161099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 (A002620 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A104401.P5662793845343161099

namespace A104401

/-- `lt[A384890(n), A029898(A002620(3*n+1))]` -/
def P5662793845343161099.Spec : Prop :=
  ∀ n, (P5662793845343161099.a n : ℤ) = A104401 n

end A104401

/-!
# A104402: Matrix inverse of triangle A091491, read by rows.

The programs for A104402, the canonical program `A104402.P8208994642325040538` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104402 has offset 0).

The definition of A104402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104402.P8208994642325040538

`Δ[-A109466(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104402

/-- `Δ[-A109466(n)]` -/
def P8208994642325040538.Spec : Prop :=
  ∀ n, P8208994642325040538.a n = A104402 n

theorem P8208994642325040538.correct : P8208994642325040538.Spec := by
  intro n
  simp only [A104402]

end A104402

/-! ## A104402.P3380458460526242045

`A109466(n)-A109466(n+1)`
-/

namespace A104402.P3380458460526242045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n - A109466 (n + 1)

end

end A104402.P3380458460526242045

namespace A104402

/-- `A109466(n)-A109466(n+1)` -/
def P3380458460526242045.Spec : Prop :=
  ∀ n, P3380458460526242045.a n = A104402 n

theorem P3380458460526242045.correct : P3380458460526242045.Spec := by
  intro n
  simp only [A104402, Nat.add_sub_cancel, A104402.P3380458460526242045.a, A104402.P8208994642325040538.f1, A104402.P8208994642325040538.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A104402

/-! ## A104402.P8685621413307645872

`Δ[A097807(n)²-A109466(n)]`
-/

namespace A104402.P8685621413307645872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 - A109466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P8685621413307645872

namespace A104402

/-- `Δ[A097807(n)²-A109466(n)]` -/
def P8685621413307645872.Spec : Prop :=
  ∀ n, P8685621413307645872.a n = A104402 n

end A104402

/-! ## A104402.P14468229050400815355

`Δ[-(A110509(n)/A052509(n))]`
-/

namespace A104402.P14468229050400815355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A052509 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P14468229050400815355

namespace A104402

/-- `Δ[-(A110509(n)/A052509(n))]` -/
def P14468229050400815355.Spec : Prop :=
  ∀ n, P14468229050400815355.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P8155438898264130387

`Δ[-(A110509(n)/A130321(n))]`
-/

namespace A104402.P8155438898264130387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A130321 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P8155438898264130387

namespace A104402

/-- `Δ[-(A110509(n)/A130321(n))]` -/
def P8155438898264130387.Spec : Prop :=
  ∀ n, P8155438898264130387.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P14319160914348816057

`Δ[-(A110517(n)/A152714(n))]`
-/

namespace A104402.P14319160914348816057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110517 n : ℚ) / (A152714 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P14319160914348816057

namespace A104402

/-- `Δ[-(A110517(n)/A152714(n))]` -/
def P14319160914348816057.Spec : Prop :=
  ∀ n, P14319160914348816057.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P10246221420596129252

`Δ[-(A110509(n)/A057728(n+1))]`
-/

namespace A104402.P10246221420596129252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A057728 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P10246221420596129252

namespace A104402

/-- `Δ[-(A110509(n)/A057728(n+1))]` -/
def P10246221420596129252.Spec : Prop :=
  ∀ n, P10246221420596129252.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P9988293448573428776

`Δ[-(A110509(n)/A209434(n))]`
-/

namespace A104402.P9988293448573428776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A209434 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P9988293448573428776

namespace A104402

/-- `Δ[-(A110509(n)/A209434(n))]` -/
def P9988293448573428776.Spec : Prop :=
  ∀ n, P9988293448573428776.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P17713754215643914261

`Δ[-(A105868(n)/A130595(n))]`
-/

namespace A104402.P17713754215643914261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A105868 n : ℚ) / (A130595 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P17713754215643914261

namespace A104402

/-- `Δ[-(A105868(n)/A130595(n))]` -/
def P17713754215643914261.Spec : Prop :=
  ∀ n, P17713754215643914261.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P7870637015134211520

`Δ[-(A110509(n)/A209438(n))]`
-/

namespace A104402.P7870637015134211520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A209438 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P7870637015134211520

namespace A104402

/-- `Δ[-(A110509(n)/A209438(n))]` -/
def P7870637015134211520.Spec : Prop :=
  ∀ n, P7870637015134211520.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P8208601026818151648

`Δ[-(A110509(n)/A209439(n))]`
-/

namespace A104402.P8208601026818151648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A110509 n : ℚ) / (A209439 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P8208601026818151648

namespace A104402

/-- `Δ[-(A110509(n)/A209439(n))]` -/
def P8208601026818151648.Spec : Prop :=
  ∀ n, P8208601026818151648.a n = (A104402 n : ℚ)

end A104402

/-! ## A104402.P3627282786888728231

`Δ[-(A026729(n)*A114116(n))]`
-/

namespace A104402.P3627282786888728231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A026729 n * A114116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104402.P3627282786888728231

namespace A104402

/-- `Δ[-(A026729(n)*A114116(n))]` -/
def P3627282786888728231.Spec : Prop :=
  ∀ n, P3627282786888728231.a n = A104402 n

end A104402

/-!
# A104403: a(0)=0; for n>0, a(n) = A102371(4n)/4.

The programs for A104403, there is no canonical definition to state claims against.
-/

/-! ## A104403.P2632362782208526579

`A000695(A081294(n))-A366373(n)`
-/

namespace A104403.P2632362782208526579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A081294 n).toNat - A366373 n

end

end A104403.P2632362782208526579

/-! ## A104403.P11521097456330235627

`A000290(A081294(n))-A345937(n+1)`
-/

namespace A104403.P11521097456330235627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A081294 n).toNat - A345937 (n + 1)

end

end A104403.P11521097456330235627

/-! ## A104403.P13805095594345934109

`A000290(A011782(2*n))-A345937(n+1)`
-/

namespace A104403.P13805095594345934109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A011782 (2 * n)).toNat - A345937 (n + 1)

end

end A104403.P13805095594345934109

/-!
# A104404: Number of groups of order n all of whose subgroups are normal.

The programs for A104404, there is no canonical definition to state claims against.
-/

/-! ## A104404.P17783778574457877522

`A000688(n+1)+A104488(n+1)`
-/

namespace A104404.P17783778574457877522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) + A104488 (n + 1)

end

end A104404.P17783778574457877522

/-! ## A104404.P16385427372153092025

`A028310(Δ[A104452(A028310(n))])`
-/

namespace A104404.P16385427372153092025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104452 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A104404.P16385427372153092025

/-! ## A104404.P17736999848066472490

`A104488(A133265(n))+A000688(n+1)`
-/

namespace A104404.P17736999848066472490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A133265 n).toNat + A000688 (n + 1)

end

end A104404.P17736999848066472490

/-! ## A104404.P12092016521434626537

`A104488(n+1)+A050360(A101296(n+1))`
-/

namespace A104404.P12092016521434626537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1) + A050360 (A101296 (n + 1)).toNat

end

end A104404.P12092016521434626537

/-! ## A104404.P7370975823888251335

`A060689(n+1)+A104488(n+1)+A066295(n+1)`
-/

namespace A104404.P7370975823888251335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + (A104488 (n + 1) + A066295 (n + 1))

end

end A104404.P7370975823888251335

/-! ## A104404.P5596681143611119676

`A066060(n+1)+A104488(n+1)-A088806(n+1)`
-/

namespace A104404.P5596681143611119676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) + (A104488 (n + 1) - A088806 (n + 1))

end

end A104404.P5596681143611119676

/-! ## A104404.P8266535317611788229

`A238877(Δ[n²])+A104488(n+1)`
-/

namespace A104404.P8266535317611788229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A104488 (n + 1)

end

end A104404.P8266535317611788229

/-! ## A104404.P2039313751100145102

`A104488(n+1)+A101872(A003961(n+1))`
-/

namespace A104404.P2039313751100145102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1) + A101872 (A003961 (n + 1)).toNat

end

end A104404.P2039313751100145102

/-! ## A104404.P6887947544088317903

`A104488(n+1)+A101872(A064988(n+1))`
-/

namespace A104404.P6887947544088317903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1) + A101872 (A064988 (n + 1)).toNat

end

end A104404.P6887947544088317903

/-! ## A104404.P7210321729472815376

`A112310(A037291(n+1))`
-/

namespace A104404.P7210321729472815376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A037291 (n + 1)).toNat

end

end A104404.P7210321729472815376

/-!
# A104405: A084203 (the cube root of A083953) read mod 3.

The programs for A104405, there is no canonical definition to state claims against.
-/

/-! ## A104405.P2074650379369742295

`A083953(3*n)%3`
-/

namespace A104405.P2074650379369742295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083953 (3 * n)) 3

end

end A104405.P2074650379369742295

/-! ## A104405.P1690174003557961857

`dr(A083953(A008585(n)))%3`
-/

namespace A104405.P1690174003557961857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A083953 (A008585 n).toNat) % 3

end

end A104405.P1690174003557961857

/-! ## A104405.P14322536485421840451

`A083953(A005843(n)+n)!%3`
-/

namespace A104405.P14322536485421840451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A083953 (A005843 n + (n : ℤ)).toNat).toNat % 3

end

end A104405.P14322536485421840451

/-! ## A104405.P15844006103959343134

`gcd(C(n, n²), A083953(A008486(n)))%3`
-/

namespace A104405.P15844006103959343134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A083953 (A008486 n).toNat) % 3

end

end A104405.P15844006103959343134

/-! ## A104405.P17699835985982831743

`A108913(3*n)`
-/

namespace A104405.P17699835985982831743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108913 (3 * n)

end

end A104405.P17699835985982831743

/-! ## A104405.P8827345625638865767

`A110628(n)%3`
-/

namespace A104405.P8827345625638865767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110628 n) 3

end

end A104405.P8827345625638865767

/-! ## A104405.P2698778343042785027

`A082375(lcm((-1)^n, A110628(n)))`
-/

namespace A104405.P2698778343042785027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (Int.lcm ((-1) ^ n) (A110628 n))

end

end A104405.P2698778343042785027

/-! ## A104405.P15909243945889981902

`A110657(and(A066322(n), A110628(n)))`
-/

namespace A104405.P15909243945889981902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.land (A066322 n) (A110628 n)).toNat

end

end A104405.P15909243945889981902

/-! ## A104405.P4424815013219421465

`A130125(A020639(2*(n+1))²-A110628(n))`
-/

namespace A104405.P4424815013219421465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 (A020639 (2 * (n + 1)) ^ 2 - A110628 n).toNat

end

end A104405.P4424815013219421465

/-!
# A104406: Number of numbers <= n having no 2 in ternary representation.

The programs for A104406, the canonical program `A104406.P1074933166497164848` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104406 has offset 1).

The definition of A104406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104406.P1074933166497164848

`∑[A039966(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104406

/-- `∑[A039966(n+1)]` -/
def P1074933166497164848.Spec : Prop :=
  ∀ n, P1074933166497164848.a n = A104406 (n + 1)

theorem P1074933166497164848.correct : P1074933166497164848.Spec := by
  intro n
  simp only [A104406, Nat.add_sub_cancel]

end A104406

/-! ## A104406.P1040056710615339205

`∑[abs(Δ[A081611(n)])]`
-/

namespace A104406.P1040056710615339205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P1040056710615339205

namespace A104406

/-- `∑[abs(Δ[A081611(n)])]` -/
def P1040056710615339205.Spec : Prop :=
  ∀ n, P1040056710615339205.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P805056393053533405

`A081611(n+1)-1`
-/

namespace A104406.P805056393053533405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (n + 1) - 1

end

end A104406.P805056393053533405

namespace A104406

/-- `A081611(n+1)-1` -/
def P805056393053533405.Spec : Prop :=
  ∀ n, P805056393053533405.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P10789896255510493550

`∑[2-Δ[A190941(n)]]`
-/

namespace A104406.P10789896255510493550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P10789896255510493550

namespace A104406

/-- `∑[2-Δ[A190941(n)]]` -/
def P10789896255510493550.Spec : Prop :=
  ∀ n, P10789896255510493550.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P9212151449087629265

`∑[1-A189820(n+2)]`
-/

namespace A104406.P9212151449087629265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P9212151449087629265

namespace A104406

/-- `∑[1-A189820(n+2)]` -/
def P9212151449087629265.Spec : Prop :=
  ∀ n, P9212151449087629265.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P14895407746700288657

`∑[2-A190592(n+1)]`
-/

namespace A104406.P14895407746700288657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A190592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P14895407746700288657

namespace A104406

/-- `∑[2-A190592(n+1)]` -/
def P14895407746700288657.Spec : Prop :=
  ∀ n, P14895407746700288657.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P9999054787326657737

`∑[A088917(2*(n+1))]`
-/

namespace A104406.P9999054787326657737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P9999054787326657737

namespace A104406

/-- `∑[A088917(2*(n+1))]` -/
def P9999054787326657737.Spec : Prop :=
  ∀ n, P9999054787326657737.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P6412239275467495417

`∑[C(2, A273515(n+1))]`
-/

namespace A104406.P6412239275467495417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A273515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P6412239275467495417

namespace A104406

/-- `∑[C(2, A273515(n+1))]` -/
def P6412239275467495417.Spec : Prop :=
  ∀ n, (P6412239275467495417.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P13300560233006228662

`1-A081610(n+1)+n`
-/

namespace A104406.P13300560233006228662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081610 (n + 1) + (n : ℤ)

end

end A104406.P13300560233006228662

namespace A104406

/-- `1-A081610(n+1)+n` -/
def P13300560233006228662.Spec : Prop :=
  ∀ n, P13300560233006228662.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P13503842743352247752

`∑[char[A005836(n+1)-1]]`
-/

namespace A104406.P13503842743352247752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P13503842743352247752

namespace A104406

/-- `∑[char[A005836(n+1)-1]]` -/
def P13503842743352247752.Spec : Prop :=
  ∀ n, (P13503842743352247752.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P5061053567132310381

`∑[char[A107681(n+1)-1]]`
-/

namespace A104406.P5061053567132310381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P5061053567132310381

namespace A104406

/-- `∑[char[A107681(n+1)-1]]` -/
def P5061053567132310381.Spec : Prop :=
  ∀ n, (P5061053567132310381.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P503659098400988192

`∑[char[A003278(n+1)-2]]`
-/

namespace A104406.P503659098400988192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P503659098400988192

namespace A104406

/-- `∑[char[A003278(n+1)-2]]` -/
def P503659098400988192.Spec : Prop :=
  ∀ n, (P503659098400988192.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P13354722548078970590

`2*(n+1)-A190941(n+1)`
-/

namespace A104406.P13354722548078970590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A190941 (n + 1)

end

end A104406.P13354722548078970590

namespace A104406

/-- `2*(n+1)-A190941(n+1)` -/
def P13354722548078970590.Spec : Prop :=
  ∀ n, P13354722548078970590.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P3506072856001836103

`A289207(A081611(n+1)+1)`
-/

namespace A104406.P3506072856001836103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A081611 (n + 1) + 1).toNat

end

end A104406.P3506072856001836103

namespace A104406

/-- `A289207(A081611(n+1)+1)` -/
def P3506072856001836103.Spec : Prop :=
  ∀ n, P3506072856001836103.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P9223196492824682850

`∑[A000045(Δ[A088564(n)])]`
-/

namespace A104406.P9223196492824682850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P9223196492824682850

namespace A104406

/-- `∑[A000045(Δ[A088564(n)])]` -/
def P9223196492824682850.Spec : Prop :=
  ∀ n, P9223196492824682850.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P13344691779587025756

`A004396(A088564(n+1))-1`
-/

namespace A104406.P13344691779587025756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A088564 (n + 1)).toNat - 1

end

end A104406.P13344691779587025756

namespace A104406

/-- `A004396(A088564(n+1))-1` -/
def P13344691779587025756.Spec : Prop :=
  ∀ n, P13344691779587025756.a n = A104406 (n + 1)

end A104406

/-! ## A104406.P6752423119587767369

`∑[char[A060372(n)-1]]`
-/

namespace A104406.P6752423119587767369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P6752423119587767369

namespace A104406

/-- `∑[char[A060372(n)-1]]` -/
def P6752423119587767369.Spec : Prop :=
  ∀ n, (P6752423119587767369.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P2474766353057734744

`∑[char[A060374(n)-1]]`
-/

namespace A104406.P2474766353057734744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P2474766353057734744

namespace A104406

/-- `∑[char[A060374(n)-1]]` -/
def P2474766353057734744.Spec : Prop :=
  ∀ n, (P2474766353057734744.a n : ℤ) = A104406 (n + 1)

end A104406

/-! ## A104406.P8577218379445521985

`A061392(A167878(n+1))`
-/

namespace A104406.P8577218379445521985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A167878 (n + 1)).toNat

end

end A104406.P8577218379445521985

namespace A104406

/-- `A061392(A167878(n+1))` -/
def P8577218379445521985.Spec : Prop :=
  ∀ n, P8577218379445521985.a n = A104406 (n + 1)

end A104406

/-!
# A104407: Number of Hamiltonian groups of order <= n.

The programs for A104407, there is no canonical definition to state claims against.
-/

/-! ## A104407.P12032286315891241109

`∑[A104488(n+1)]`
-/

namespace A104407.P12032286315891241109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P12032286315891241109

/-! ## A104407.P1879400238491294704

`A104452(n+1)-A063966(n+1)`
-/

namespace A104407.P1879400238491294704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104452 (n + 1) - A063966 (n + 1)

end

end A104407.P1879400238491294704

/-! ## A104407.P15458536904044893683

`∑[A104404(n+1)-A000688(n+1)]`
-/

namespace A104407.P15458536904044893683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P15458536904044893683

/-! ## A104407.P3636102862826321976

`∑[A104404(n+1)-∏{e}[n+1, A330642(#)]]`
-/

namespace A104407.P3636102862826321976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - ∏ p ∈ Nat.primeFactors (f2 n), A330642 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P3636102862826321976

/-! ## A104407.P9825550212940651788

`∑[(A104404(n+1)%A000001(n+1))%A000688(n+1)]`
-/

namespace A104407.P9825550212940651788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A104404 (n + 1)) (A000001 (n + 1))) (A000688 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P9825550212940651788

/-! ## A104407.P6328872624461750253

`A001222(∏[Δ[A007094(n)]])`
-/

namespace A104407.P6328872624461750253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104407.P6328872624461750253

/-! ## A104407.P7304762222093174099

`∑[A121262(∑[A034856(n+1)])]`
-/

namespace A104407.P7304762222093174099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P7304762222093174099

/-! ## A104407.P1762742431972398279

`∑[A121262(∑[A166136(n+1)])]`
-/

namespace A104407.P1762742431972398279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104407.P1762742431972398279

/-! ## A104407.P8614597834987088142

`A002265(A002265(2*n+3)%A093001(n+1))`
-/

namespace A104407.P8614597834987088142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A002265 (2 * n + 3)) (A093001 (n + 1))).toNat

end

end A104407.P8614597834987088142

/-!
# A104408: Coefficients of the A-Rogers-Selberg identity.

The programs for A104408, there is no canonical definition to state claims against.
-/

/-! ## A104408.P4302487039507245394

`or(A101688(A286521(n)), A132967(n+1))`
-/

namespace A104408.P4302487039507245394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101688 (A286521 n).toNat) (A132967 (n + 1))

end

end A104408.P4302487039507245394

/-! ## A104408.P5151706887806925471

`or(A132967(n+1), A345197(A345916(3*n+2)))`
-/

namespace A104408.P5151706887806925471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132967 (n + 1)) (A345197 (A345916 (3 * n + 2)).toNat)

end

end A104408.P5151706887806925471

/-! ## A104408.P4546981628485583573

`-A262352(∑[A056487(n)])`
-/

namespace A104408.P4546981628485583573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104408.P4546981628485583573

/-! ## A104408.P10761058506364793352

`-A262352(∑[A285184(n)])`
-/

namespace A104408.P10761058506364793352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A262352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104408.P10761058506364793352

/-!
# A104409: Coefficients of the B-Rogers-Selberg identity.

The programs for A104409, there is no canonical definition to state claims against.
-/

/-! ## A104409.P8041546942953915542

`A259774(n)+A003982(A161951(n+1))`
-/

namespace A104409.P8041546942953915542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259774 n + A003982 (A161951 (n + 1)).toNat

end

end A104409.P8041546942953915542

/-! ## A104409.P6613568232593167681

`A259774(n)+A003982(A187829(n+1))`
-/

namespace A104409.P6613568232593167681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259774 n + A003982 (A187829 (n + 1)).toNat

end

end A104409.P6613568232593167681

/-! ## A104409.P17161952847438248583

`A267263(2^n)-A246277(n+1)`
-/

namespace A104409.P17161952847438248583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (2 ^ n) - A246277 (n + 1)

end

end A104409.P17161952847438248583

/-! ## A104409.P11580328398516218221

`A121373(A114848(2*n+3))-A082303(2*n+1)`
-/

namespace A104409.P11580328398516218221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A114848 (2 * n + 3)).toNat - A082303 (2 * n + 1)

end

end A104409.P11580328398516218221

/-!
# A104410: Coefficients of the C-Rogers-Selberg identity.

The programs for A104410, there is no canonical definition to state claims against.
-/

/-! ## A104410.P17404781242111171756

`A258741(n)+A118917(A037957(n))`
-/

namespace A104410.P17404781242111171756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258741 n + A118917 (A037957 n).toNat

end

end A104410.P17404781242111171756

/-! ## A104410.P16066354521671491883

`A029838(2*n)+A010051(A140711(2*n+3))`
-/

namespace A104410.P16066354521671491883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (2 * n) + A010051 (A140711 (2 * n + 3)).toNat

end

end A104410.P16066354521671491883

/-! ## A104410.P13777222129846125347

`A258741(n)+A162782(A000463(n+1))`
-/

namespace A104410.P13777222129846125347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258741 n + A162782 (A000463 (n + 1)).toNat

end

end A104410.P13777222129846125347

/-! ## A104410.P13495638259989061485

`A258741(n)-A015014(A199974(2*(n+2)))`
-/

namespace A104410.P13495638259989061485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258741 n - A015014 (A199974 (2 * (n + 2))).toNat

end

end A104410.P13495638259989061485

/-! ## A104410.P3929515149495473972

`A258741(n)+A025469(A059966(n+1))`
-/

namespace A104410.P3929515149495473972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258741 n + A025469 (A059966 (n + 1)).toNat

end

end A104410.P3929515149495473972

/-!
# A104411: Number of prime factors, with multiplicity, of the tetranacci numbers A000078.

The programs for A104411, the canonical program `A104411.P9702985753244307808` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104411 has offset 3).

The definition of A104411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104411.P9702985753244307808

`A001222(A000078(n+3))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104411

/-- `A001222(A000078(n+3))` -/
def P9702985753244307808.Spec : Prop :=
  ∀ n, P9702985753244307808.a n = A104411 (n + 3)

theorem P9702985753244307808.correct : P9702985753244307808.Spec := by
  intro n
  simp only [A104411, Nat.add_sub_cancel]

end A104411

/-! ## A104411.P8451105866875247626

`∑{e}[Δ[2*a(n-1)-a(n-5)], #]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16`
-/

namespace A104411.P8451105866875247626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8, 16] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104411.P8451105866875247626

namespace A104411

/-- `∑{e}[Δ[2*a(n-1)-a(n-5)], #]` -/
def P8451105866875247626.Spec : Prop :=
  ∀ n, (P8451105866875247626.a n : ℤ) = A104411 (n + 3)

end A104411

/-! ## A104411.P11787977009893127297

`∑{e}[∑[A001631(n+2)], #]`
-/

namespace A104411.P11787977009893127297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104411.P11787977009893127297

namespace A104411

/-- `∑{e}[∑[A001631(n+2)], #]` -/
def P11787977009893127297.Spec : Prop :=
  ∀ n, (P11787977009893127297.a n : ℤ) = A104411 (n + 3)

end A104411

/-! ## A104411.P4906999493499447140

`∑{e}[A048887(∑[n+3]), #]`
-/

namespace A104411.P4906999493499447140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104411.P4906999493499447140

namespace A104411

/-- `∑{e}[A048887(∑[n+3]), #]` -/
def P4906999493499447140.Spec : Prop :=
  ∀ n, (P4906999493499447140.a n : ℤ) = A104411 (n + 3)

end A104411

/-! ## A104411.P11640425345000492809

`∑{e}[A274759(3*n+1), #]`
-/

namespace A104411.P11640425345000492809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274759 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104411.P11640425345000492809

namespace A104411

/-- `∑{e}[A274759(3*n+1), #]` -/
def P11640425345000492809.Spec : Prop :=
  ∀ n, (P11640425345000492809.a n : ℤ) = A104411 (n + 3)

end A104411

/-!
# A104412: Number of prime factors, with multiplicity, of the pentanacci numbers A001591.

The programs for A104412, the canonical program `A104412.P17284963174005014146` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104412 has offset 4).

The definition of A104412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104412.P17284963174005014146

`A001222(A001591(n+4))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104412

/-- `A001222(A001591(n+4))` -/
def P17284963174005014146.Spec : Prop :=
  ∀ n, P17284963174005014146.a n = A104412 (n + 4)

theorem P17284963174005014146.correct : P17284963174005014146.Spec := by
  intro n
  simp only [A104412, Nat.add_sub_cancel]

end A104412

/-! ## A104412.P7757762921101694311

`∑{e}[∑[A124312(n+3)], #]`
-/

namespace A104412.P7757762921101694311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104412.P7757762921101694311

namespace A104412

/-- `∑{e}[∑[A124312(n+3)], #]` -/
def P7757762921101694311.Spec : Prop :=
  ∀ n, (P7757762921101694311.a n : ℤ) = A104412 (n + 4)

end A104412

/-! ## A104412.P1361297109052694686

`∑{e}[Δ[A001949(n+4)], #]`
-/

namespace A104412.P1361297109052694686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104412.P1361297109052694686

namespace A104412

/-- `∑{e}[Δ[A001949(n+4)], #]` -/
def P1361297109052694686.Spec : Prop :=
  ∀ n, (P1361297109052694686.a n : ℤ) = A104412 (n + 4)

end A104412

/-! ## A104412.P6822614753947385690

`∑{e}[record[A001591(A008611(n))], #]`
-/

namespace A104412.P6822614753947385690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104412.P6822614753947385690

namespace A104412

/-- `∑{e}[record[A001591(A008611(n))], #]` -/
def P6822614753947385690.Spec : Prop :=
  ∀ n, (P6822614753947385690.a n : ℤ) = A104412 (n + 4)

end A104412

/-! ## A104412.P14200619322255838670

`∑{e}[record[A001591(A008612(n))], #]`
-/

namespace A104412.P14200619322255838670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104412.P14200619322255838670

namespace A104412

/-- `∑{e}[record[A001591(A008612(n))], #]` -/
def P14200619322255838670.Spec : Prop :=
  ∀ n, (P14200619322255838670.a n : ℤ) = A104412 (n + 4)

end A104412

/-!
# A104413: Number of prime factors, with multiplicity, of the hexanacci numbers A001592.

The programs for A104413, the canonical program `A104413.P15549275769069144348` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104413 has offset 5).

The definition of A104413 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104413.P15549275769069144348

`A001222(A001592(n+5))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104413

/-- `A001222(A001592(n+5))` -/
def P15549275769069144348.Spec : Prop :=
  ∀ n, P15549275769069144348.a n = A104413 (n + 5)

theorem P15549275769069144348.correct : P15549275769069144348.Spec := by
  intro n
  simp only [A104413, Nat.add_sub_cancel]

end A104413

/-! ## A104413.P15999327270629277614

`∑{e}[∑[A251706(n+4)], #]`
-/

namespace A104413.P15999327270629277614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104413.P15999327270629277614

namespace A104413

/-- `∑{e}[∑[A251706(n+4)], #]` -/
def P15999327270629277614.Spec : Prop :=
  ∀ n, (P15999327270629277614.a n : ℤ) = A104413 (n + 5)

end A104413

/-! ## A104413.P16720624169654227759

`∑{e}[record[A001592(A008611(n))], #]`
-/

namespace A104413.P16720624169654227759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104413.P16720624169654227759

namespace A104413

/-- `∑{e}[record[A001592(A008611(n))], #]` -/
def P16720624169654227759.Spec : Prop :=
  ∀ n, (P16720624169654227759.a n : ℤ) = A104413 (n + 5)

end A104413

/-! ## A104413.P17096270617364879866

`∑{e}[record[A001592(A008612(n))], #]`
-/

namespace A104413.P17096270617364879866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104413.P17096270617364879866

namespace A104413

/-- `∑{e}[record[A001592(A008612(n))], #]` -/
def P17096270617364879866.Spec : Prop :=
  ∀ n, (P17096270617364879866.a n : ℤ) = A104413 (n + 5)

end A104413

/-! ## A104413.P17373044243323529327

`∑{e}[record[A001592(A025480(n))], #]`
-/

namespace A104413.P17373044243323529327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104413.P17373044243323529327

namespace A104413

/-- `∑{e}[record[A001592(A025480(n))], #]` -/
def P17373044243323529327.Spec : Prop :=
  ∀ n, (P17373044243323529327.a n : ℤ) = A104413 (n + 5)

end A104413

/-!
# A104414: Number of prime factors, with multiplicity, of the heptanacci numbers A066178.

The programs for A104414, the canonical program `A104414.P8215569169422538008` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104414 has offset 0).

The definition of A104414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104414.P8215569169422538008

`A001222(A066178(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104414

/-- `A001222(A066178(n))` -/
def P8215569169422538008.Spec : Prop :=
  ∀ n, P8215569169422538008.a n = A104414 n

theorem P8215569169422538008.correct : P8215569169422538008.Spec := by
  intro n
  simp only [A104414]

end A104414

/-! ## A104414.P14312482923384368059

`∑{e}[A122189(n+6), #]`
-/

namespace A104414.P14312482923384368059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104414.P14312482923384368059

namespace A104414

/-- `∑{e}[A122189(n+6), #]` -/
def P14312482923384368059.Spec : Prop :=
  ∀ n, (P14312482923384368059.a n : ℤ) = A104414 n

end A104414

/-! ## A104414.P1353968973813045118

`∑{e}[∑[A251710(n+5)], #]`
-/

namespace A104414.P1353968973813045118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104414.P1353968973813045118

namespace A104414

/-- `∑{e}[∑[A251710(n+5)], #]` -/
def P1353968973813045118.Spec : Prop :=
  ∀ n, (P1353968973813045118.a n : ℤ) = A104414 n

end A104414

/-! ## A104414.P2521024773152113327

`∑{e}[A048887((n+4)²-∑[n+1]), #]`
-/

namespace A104414.P2521024773152113327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104414.P2521024773152113327

namespace A104414

/-- `∑{e}[A048887((n+4)²-∑[n+1]), #]` -/
def P2521024773152113327.Spec : Prop :=
  ∀ n, (P2521024773152113327.a n : ℤ) = A104414 n

end A104414

/-! ## A104414.P12579829162389185803

`∑{e}[A066178(n), A000027(#)]`
-/

namespace A104414.P12579829162389185803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A104414.P12579829162389185803

namespace A104414

/-- `∑{e}[A066178(n), A000027(#)]` -/
def P12579829162389185803.Spec : Prop :=
  ∀ n, P12579829162389185803.a n = A104414 n

end A104414

/-!
# A104415: Number of prime factors, with multiplicity, of the nonzero octanacci numbers A079262.

The programs for A104415, the canonical program `A104415.P4240638088064684004` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104415 has offset 1).

The definition of A104415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104415.P4240638088064684004

`A001222(A079262(n+7))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104415

/-- `A001222(A079262(n+7))` -/
def P4240638088064684004.Spec : Prop :=
  ∀ n, P4240638088064684004.a n = A104415 (n + 1)

theorem P4240638088064684004.correct : P4240638088064684004.Spec := by
  intro n
  simp only [A104415, Nat.add_sub_cancel]

end A104415

/-! ## A104415.P9800014754589049211

`∑{e}[record[A079262(A008615(n))], #]`
-/

namespace A104415.P9800014754589049211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (A008615 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104415.P9800014754589049211

namespace A104415

/-- `∑{e}[record[A079262(A008615(n))], #]` -/
def P9800014754589049211.Spec : Prop :=
  ∀ n, (P9800014754589049211.a n : ℤ) = A104415 (n + 1)

end A104415

/-! ## A104415.P2561718696038172989

`∑{e}[record[A079262(A025480(n))], #]`
-/

namespace A104415.P2561718696038172989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104415.P2561718696038172989

namespace A104415

/-- `∑{e}[record[A079262(A025480(n))], #]` -/
def P2561718696038172989.Spec : Prop :=
  ∀ n, (P2561718696038172989.a n : ℤ) = A104415 (n + 1)

end A104415

/-! ## A104415.P27683596550558205

`∑{e}[record[A079262(A033930(n))], #]`
-/

namespace A104415.P27683596550558205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104415.P27683596550558205

namespace A104415

/-- `∑{e}[record[A079262(A033930(n))], #]` -/
def P27683596550558205.Spec : Prop :=
  ∀ n, (P27683596550558205.a n : ℤ) = A104415 (n + 1)

end A104415

/-! ## A104415.P17531030633247953617

`∑{e}[record[A079262(A112689(n))], #]`
-/

namespace A104415.P17531030633247953617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (A112689 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104415.P17531030633247953617

namespace A104415

/-- `∑{e}[record[A079262(A112689(n))], #]` -/
def P17531030633247953617.Spec : Prop :=
  ∀ n, (P17531030633247953617.a n : ℤ) = A104415 (n + 1)

end A104415

/-!
# A104416: Triangle, read by rows, where T(n,k) = A008275(k+1,n-k+1) are Stirling numbers of the first kind.

The programs for A104416, there is no canonical definition to state claims against.
-/

/-! ## A104416.P97319383822316828

`A104556(n)-A324677(A324691(n))`
-/

namespace A104416.P97319383822316828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n - A324677 (A324691 n).toNat

end

end A104416.P97319383822316828

/-! ## A104416.P24472411173273417

`A104556(n)-A055641(A060627(n+1))`
-/

namespace A104416.P24472411173273417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n - A055641 (A060627 (n + 1)).toNat

end

end A104416.P24472411173273417

/-! ## A104416.P15219141711052838391

`A104556(n)-A353495(A219143(n+1))`
-/

namespace A104416.P15219141711052838391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n - A353495 (A219143 (n + 1)).toNat

end

end A104416.P15219141711052838391

/-! ## A104416.P2447608465715344497

`A104556(n)-A010815(A219046(2*n+5))`
-/

namespace A104416.P2447608465715344497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n - A010815 (A219046 (2 * n + 5)).toNat

end

end A104416.P2447608465715344497

/-! ## A104416.P16222185654702441093

`A008275(n+1)%A221914(A342663(n+5))`
-/

namespace A104416.P16222185654702441093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008275 (n + 1)) (A221914 (A342663 (n + 5)).toNat)

end

end A104416.P16222185654702441093

/-!
# A104417: Triangle, read by rows, equal to the matrix inverse of A104416, where A104416(n,k) = A008275(k+1,n-k+1) (Stirling numbers of the first kind).

The programs for A104417, there is no canonical definition to state claims against.
-/

/-! ## A104417.P7419948006658211221

`A106210(n)+A081150(A326474(n))`
-/

namespace A104417.P7419948006658211221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106210 n + A081150 (A326474 n).toNat

end

end A104417.P7419948006658211221

/-! ## A104417.P5871669416290583766

`A106210(n)+A025456(A059570(n+1))`
-/

namespace A104417.P5871669416290583766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106210 n + A025456 (A059570 (n + 1)).toNat

end

end A104417.P5871669416290583766

/-! ## A104417.P8150849900971569087

`or(A033842(n), A035187(A221165(n+1)))`
-/

namespace A104417.P8150849900971569087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033842 n) (A035187 (A221165 (n + 1)).toNat)

end

end A104417.P8150849900971569087

/-! ## A104417.P2118810901117575558

`A185035(A002113(n+1))+A033842(n)`
-/

namespace A104417.P2118810901117575558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 (A002113 (n + 1)).toNat + A033842 n

end

end A104417.P2118810901117575558

/-!
# A104418: Number of prime factors, with multiplicity, of the nonzero 9-acci numbers.

The programs for A104418, there is no canonical definition to state claims against.
-/

/-! ## A104418.P15570211123908239788

`∑{e}[A258800(n), #]`
-/

namespace A104418.P15570211123908239788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104418.P15570211123908239788

/-! ## A104418.P6296431300189645275

`∑{e}[A104144(n+8), #]`
-/

namespace A104418.P6296431300189645275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104418.P6296431300189645275

/-! ## A104418.P17862706801533205184

`∑{e}[record[A104144(A004788(n))], #]`
-/

namespace A104418.P17862706801533205184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A004788 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104418.P17862706801533205184

/-! ## A104418.P5448519589468946875

`∑{e}[record[A104144(A005599(n))], #]`
-/

namespace A104418.P5448519589468946875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A005599 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104418.P5448519589468946875

/-! ## A104418.P5679152890842466336

`∑{e}[record[A104144(A008611(n))], #]`
-/

namespace A104418.P5679152890842466336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104418.P5679152890842466336

/-!
# A104429: Number of ways to split {1, 2, 3, ..., 3n} into n arithmetic progressions each with 3 terms.

The programs for A104429, there is no canonical definition to state claims against.
-/

/-! ## A104429.P15732540659250980118

`A104443(∑[n+2]-1)`
-/

namespace A104429.P15732540659250980118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A104429.P15732540659250980118

/-! ## A104429.P6830600656844256530

`A279199(n)+A202705(n)`
-/

namespace A104429.P6830600656844256530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279199 n + A202705 n

end

end A104429.P6830600656844256530

/-! ## A104429.P838569772174540133

`A185284(n)+A104443(A034856(n+1))`
-/

namespace A104429.P838569772174540133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A104443 (A034856 (n + 1)).toNat

end

end A104429.P838569772174540133

/-!
# A104430: Number of ways to split 1, 2, 3, ..., 4n into n arithmetic progressions each with 4 terms.

The programs for A104430, there is no canonical definition to state claims against.
-/

/-! ## A104430.P15775385155840443679

`A104443(∑[n+3])`
-/

namespace A104430.P15775385155840443679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104430.P15775385155840443679

/-! ## A104430.P12970773529254428017

`A185284(n)+A104443(A141214(n))`
-/

namespace A104430.P12970773529254428017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A104443 (A141214 n).toNat

end

end A104430.P12970773529254428017

/-! ## A104430.P14902541483917745366

`∑{d}[A104443(A141214(n)), A000010(#)]`
-/

namespace A104430.P14902541483917745366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104430.P14902541483917745366

/-! ## A104430.P15868119928077642031

`A347778(A293606(n))`
-/

namespace A104430.P15868119928077642031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (A293606 n).toNat

end

end A104430.P15868119928077642031

/-!
# A104431: Number of ways to split 1, 2, 3, ..., 5n into n arithmetic progressions each with 5 terms.

The programs for A104431, there is no canonical definition to state claims against.
-/

/-! ## A104431.P5080975943998436442

`A104443(∑[n+4]+2)`
-/

namespace A104431.P5080975943998436442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A104431.P5080975943998436442

/-! ## A104431.P4797985154332871663

`A001524(n)+A000375(A000041(n))`
-/

namespace A104431.P4797985154332871663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001524 n + A000375 (A000041 n).toNat

end

end A104431.P4797985154332871663

/-! ## A104431.P17462425514345280050

`A349430(n)+A037824(A299043(n))`
-/

namespace A104431.P17462425514345280050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349430 n + A037824 (A299043 n).toNat

end

end A104431.P17462425514345280050

/-! ## A104431.P13925616340582379011

`A337588(A280194(n))+A280194(n)`
-/

namespace A104431.P13925616340582379011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337588 (A280194 n).toNat + A280194 n

end

end A104431.P13925616340582379011

/-!
# A104432: Number of ways to split 1, 2, 3, ..., 6n into n arithmetic progressions each with 6 terms.

The programs for A104432, there is no canonical definition to state claims against.
-/

/-! ## A104432.P1227883063551546618

`A104443(A000217(n+4)+n)`
-/

namespace A104432.P1227883063551546618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A104432.P1227883063551546618

/-! ## A104432.P17816693137557129947

`A104443(eq[4, A122200(n)])`
-/

namespace A104432.P17816693137557129947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104432.P17816693137557129947

/-! ## A104432.P12471181205079885368

`A114640(A002378(n))+A004525(n)`
-/

namespace A104432.P12471181205079885368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (A002378 n).toNat + A004525 n

end

end A104432.P12471181205079885368

/-! ## A104432.P14723138984988522709

`A104433(n)+A037879(A001710(n))`
-/

namespace A104432.P14723138984988522709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104433 n + A037879 (A001710 n).toNat

end

end A104432.P14723138984988522709

/-!
# A104433: Number of ways to split 1, 2, 3, ..., 7n into n arithmetic progressions each with 7 terms.

The programs for A104433, there is no canonical definition to state claims against.
-/

/-! ## A104433.P9283401518561736514

`A104442(n)+A005088(A104429(n))`
-/

namespace A104433.P9283401518561736514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104442 n + A005088 (A104429 n).toNat

end

end A104433.P9283401518561736514

/-! ## A104433.P334019615270947211

`A104434(n)+A014082(A274739(n))`
-/

namespace A104433.P334019615270947211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104434 n + A014082 (A274739 n).toNat

end

end A104433.P334019615270947211

/-! ## A104433.P9463501727239759945

`A104434(n)+A001222(A309861(n))`
-/

namespace A104433.P9463501727239759945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104434 n + A001222 (A309861 n).toNat

end

end A104433.P9463501727239759945

/-! ## A104433.P15399611573681803013

`A104442(n)+A029153(A309861(n))`
-/

namespace A104433.P15399611573681803013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104442 n + A029153 (A309861 n).toNat

end

end A104433.P15399611573681803013

/-! ## A104433.P17820331742711150002

`A104434(n)+A014082(A330679(n))`
-/

namespace A104433.P17820331742711150002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104434 n + A014082 (A330679 n).toNat

end

end A104433.P17820331742711150002

/-!
# A104434: Number of ways to split 1, 2, 3, ..., 8n into n arithmetic progressions each with 8 terms.

The programs for A104434, there is no canonical definition to state claims against.
-/

/-! ## A104434.P5265266208999992973

`A285006(A285042(n))+A104442(n)`
-/

namespace A104434.P5265266208999992973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A285042 n).toNat + A104442 n

end

end A104434.P5265266208999992973

/-! ## A104434.P194289614321771215

`A285006(A002572(n+1))+A104442(n)`
-/

namespace A104434.P194289614321771215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A002572 (n + 1)).toNat + A104442 n

end

end A104434.P194289614321771215

/-! ## A104434.P12955336429998406012

`A104442(n)+A025465(A001353(n))`
-/

namespace A104434.P12955336429998406012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104442 n + A025465 (A001353 n).toNat

end

end A104434.P12955336429998406012

/-! ## A104434.P13035319232118579712

`A104442(n)+A037912(A053497(n))`
-/

namespace A104434.P13035319232118579712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104442 n + A037912 (A053497 n).toNat

end

end A104434.P13035319232118579712

/-! ## A104434.P17274766404217995707

`A185284(A000124(n))+A104442(n)`
-/

namespace A104434.P17274766404217995707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A104442 n

end

end A104434.P17274766404217995707

/-!
# A104435: Number of ways to split 1, 2, 3, ..., 2n into 2 arithmetic progressions each with n terms.

The programs for A104435, the canonical program `A104435.P6511307280691734295` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104435 has offset 1).

The definition of A104435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104435.P6511307280691734295

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104435

/-- `a(n-1)` -/
def P6511307280691734295.Spec : Prop :=
  ∀ n, (P6511307280691734295.a n : ℤ) = A104435 (n + 1)

theorem P6511307280691734295.correct : P6511307280691734295.Spec := by
  intro n
  simp only [A104435, Nat.add_sub_cancel]

end A104435

/-!
# A104440: Number of ways to split 1, 2, 3, ..., 7n into 7 arithmetic progressions each with n terms.

The programs for A104440, there is no canonical definition to state claims against.
-/

/-! ## A104440.P3411551324291494897

`A104443(A056119(n)+28)`
-/

namespace A104440.P3411551324291494897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A056119 n + 28).toNat

end

end A104440.P3411551324291494897

/-!
# A104442: Number of ways to split 1, 2, 3, ..., tn into n arithmetic progressions each with t terms, t>n.

The programs for A104442, there is no canonical definition to state claims against.
-/

/-! ## A104442.P13506443340016099907

`A104443(A056220(n+1))`
-/

namespace A104442.P13506443340016099907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A056220 (n + 1)).toNat

end

end A104442.P13506443340016099907

/-! ## A104442.P3041865797844465981

`A104443(A106232(n+1))`
-/

namespace A104442.P3041865797844465981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A106232 (n + 1)).toNat

end

end A104442.P3041865797844465981

/-! ## A104442.P10304121218806471218

`A104443(A132209(n+1))`
-/

namespace A104442.P10304121218806471218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104443 (A132209 (n + 1)).toNat

end

end A104442.P10304121218806471218

/-! ## A104442.P8637136918053080270

`A104434(n)-A285006(A285042(n))`
-/

namespace A104442.P8637136918053080270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104434 n - A285006 (A285042 n).toNat

end

end A104442.P8637136918053080270

/-! ## A104442.P17995108113175397808

`A104434(n)-A285006(A002572(n+1))`
-/

namespace A104442.P17995108113175397808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104434 n - A285006 (A002572 (n + 1)).toNat

end

end A104442.P17995108113175397808

/-!
# A104443: Square array of P(n,t) read by antidiagonals: P(n,t) = number of ways to split [t*n] into n arithmetic progressions each with t terms.

The programs for A104443, there is no canonical definition to state claims against.
-/

/-! ## A104443.P18302087975169343538

`gcd(A001498(n), A292860(A187829(n+1)))`
-/

namespace A104443.P18302087975169343538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001498 n) (A292860 (A187829 (n + 1)).toNat)

end

end A104443.P18302087975169343538

/-!
# A104444: Not the difference of two palindromes (where 0 is considered a palindrome).

The programs for A104444, there is no canonical definition to state claims against.
-/

/-! ## A104444.P18181557938123812261

`filter[A084843(n+2), A145568(#)]`
-/

namespace A104444.P18181557938123812261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A104444.P18181557938123812261

/-! ## A104444.P1423392168509829098

`record[A084843(A028920(A004442(n)))]`
-/

namespace A104444.P1423392168509829098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (A028920 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104444.P1423392168509829098

/-! ## A104444.P5411854856091786613

`∩[A084843(n+1), A088997(n+1)]`
-/

namespace A104444.P5411854856091786613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104444.P5411854856091786613

/-! ## A104444.P10894491692417791796

`A084843(A351374(n+2))`
-/

namespace A104444.P10894491692417791796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084843 (A351374 (n + 2)).toNat

end

end A104444.P10894491692417791796

/-!
# A104445: Triangular matrix T, read by rows, that satisfies: SHIFT_LEFT_UP(T) = T^2 - T + I, or, equivalently: T(n+1,k+1) = [T^2](n,k) - T(n,k) + [T^0](n,k) for n>=k>=0, with T(0,0)=1.

The programs for A104445, there is no canonical definition to state claims against.
-/

/-! ## A104445.P9005581596720614001

`A091351(n+1-∑[char[∑[n]]])`
-/

namespace A104445.P9005581596720614001
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104445.P9005581596720614001

/-! ## A104445.P9286101201102230225

`A098446(A056943(n+1))`
-/

namespace A104445.P9286101201102230225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 (A056943 (n + 1)).toNat

end

end A104445.P9286101201102230225

/-! ## A104445.P12860612616786806244

`A091351(A083920(n))+val(2*(n+1)+1, 2)`
-/

namespace A104445.P12860612616786806244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A083920 n).toNat + (SequenceMachineLib.valuation (2 * (n + 1) + 1) 2 : ℤ)

end

end A104445.P12860612616786806244

/-! ## A104445.P8943337787313998989

`A091351(A083920(n))^A035214(n)`
-/

namespace A104445.P8943337787313998989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091351 (A083920 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A104445.P8943337787313998989

/-! ## A104445.P2663022516618956500

`A091351(A271439(n))^A035214(n)`
-/

namespace A104445.P2663022516618956500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091351 (A271439 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A104445.P2663022516618956500

/-! ## A104445.P7130349112466324537

`gcd(A010816(n), A091351(A083920(n)))`
-/

namespace A104445.P7130349112466324537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A091351 (A083920 n).toNat)

end

end A104445.P7130349112466324537

/-!
# A104446: Square of triangular matrix A104445, read by rows, where X=A104445 satisfies: SHIFT_LEFT_UP(X) = X^2 - X + I.

The programs for A104446, there is no canonical definition to state claims against.
-/

/-! ## A104446.P6086030608561061355

`A091351(n+1)+A104445(n)%A185624(n)`
-/

namespace A104446.P6086030608561061355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (n + 1) + Int.tmod (A104445 n) (A185624 n)

end

end A104446.P6086030608561061355

/-! ## A104446.P1458306327510224050

`A204330(A185624(n))`
-/

namespace A104446.P1458306327510224050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A185624 n).toNat

end

end A104446.P1458306327510224050

/-! ## A104446.P17324214348976058671

`A206916(A111184(n+1))`
-/

namespace A104446.P17324214348976058671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A111184 (n + 1)).toNat

end

end A104446.P17324214348976058671

/-! ## A104446.P12232526831591279058

`A206916(A129062(n+1))`
-/

namespace A104446.P12232526831591279058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A129062 (n + 1)).toNat

end

end A104446.P12232526831591279058

/-! ## A104446.P13402447998352524470

`A206916(A271703(n+1))`
-/

namespace A104446.P13402447998352524470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206916 (A271703 (n + 1)).toNat

end

end A104446.P13402447998352524470

/-!
# A104447: Column 1 of triangular matrix A104446.

The programs for A104447, there is no canonical definition to state claims against.
-/

/-! ## A104447.P15554618258478336036

`record[A104446(comp[∑[n]])]`
-/

namespace A104447.P15554618258478336036
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104446 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104447.P15554618258478336036

/-! ## A104447.P9936074994843532464

`A104446(∑[n+1]+1)`
-/

namespace A104447.P9936074994843532464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A104447.P9936074994843532464

/-! ## A104447.P11098004957220605787

`record[A104446(n)/A066657(n)]`
-/

namespace A104447.P11098004957220605787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104446 n : ℚ) / (A066657 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104447.P11098004957220605787

/-! ## A104447.P3974204938528099183

`record[gcd(A053119(n), A104446(n))]`
-/

namespace A104447.P3974204938528099183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053119 n) (A104446 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104447.P3974204938528099183

/-! ## A104447.P9563276885671365273

`record[and(A104446(n), A108299(n))]`
-/

namespace A104447.P9563276885671365273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104446 n) (A108299 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104447.P9563276885671365273

/-!
# A104448: Row sums of triangle A104446.

The programs for A104448, there is no canonical definition to state claims against.
-/

/-! ## A104448.P3448639403455785852

`record[A127420(n)-Δ[A127420(n)]]`
-/

namespace A104448.P3448639403455785852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104448.P3448639403455785852

/-! ## A104448.P11960019731800742492

`∑[A154099(A011965(n))]`
-/

namespace A104448.P11960019731800742492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A011965 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104448.P11960019731800742492

/-! ## A104448.P18004135484765059348

`∑[A247908(∑[A032346(n)])]`
-/

namespace A104448.P18004135484765059348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104448.P18004135484765059348

/-!
# A104449: Fibonacci sequence with initial values a(0) = 3 and a(1) = 1.

The programs for A104449, the canonical program `A104449.P3916126840219185072` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104449 has offset 0).

The definition of A104449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104449.P3916126840219185072

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104449

/-- `a(n-1)+a(n-2)` -/
def P3916126840219185072.Spec : Prop :=
  ∀ n, (P3916126840219185072.a n : ℤ) = A104449 n

theorem P3916126840219185072.correct : P3916126840219185072.Spec := by
  intro n
  simp only [A104449]

end A104449

/-! ## A104449.P13559234165040209511

`ogf((-3+2x)/(-1+x+x^2))`
-/

namespace A104449.P13559234165040209511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -1, -1] n

end

end A104449.P13559234165040209511

namespace A104449

/-- `ogf((-3+2x)/(-1+x+x^2))` -/
def P13559234165040209511.Spec : Prop :=
  ∀ n, P13559234165040209511.a n = A104449 n

end A104449

/-! ## A104449.P7352233503704013274

`a(n-1)-floor(-a(n-2))` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A104449.P7352233503704013274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A104449.P7352233503704013274

namespace A104449

/-- `a(n-1)-floor(-a(n-2))` -/
def P7352233503704013274.Spec : Prop :=
  ∀ n, P7352233503704013274.a n = A104449 n

end A104449

/-! ## A104449.P7520366998690796948

`a(n-1)-ceil(-a(n-2))` with `a(0)=3, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A104449.P7520366998690796948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A104449.P7520366998690796948

namespace A104449

/-- `a(n-1)-ceil(-a(n-2))` -/
def P7520366998690796948.Spec : Prop :=
  ∀ n, P7520366998690796948.a n = A104449 n

end A104449

/-! ## A104449.P14234928768247637290

`a(n-1)-round(-a(n-2))` with `a(0)=3, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A104449.P14234928768247637290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A104449.P14234928768247637290

namespace A104449

/-- `a(n-1)-round(-a(n-2))` -/
def P14234928768247637290.Spec : Prop :=
  ∀ n, P14234928768247637290.a n = A104449 n

end A104449

/-! ## A104449.P10937570209251239609

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=5, a(1)=2`
-/

namespace A104449.P10937570209251239609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A104449.P10937570209251239609

namespace A104449

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P10937570209251239609.Spec : Prop :=
  ∀ n, P10937570209251239609.a n = A104449 n

end A104449

/-! ## A104449.P16214082523944426064

`2*a(n-1)-a(n-3)` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A104449.P16214082523944426064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A104449.P16214082523944426064

namespace A104449

/-- `2*a(n-1)-a(n-3)` -/
def P16214082523944426064.Spec : Prop :=
  ∀ n, P16214082523944426064.a n = A104449 n

end A104449

/-! ## A104449.P15282867221300628126

`a(n-1)-(char[1]-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A104449.P15282867221300628126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A104449.P15282867221300628126

namespace A104449

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P15282867221300628126.Spec : Prop :=
  ∀ n, P15282867221300628126.a n = A104449 n

end A104449

/-! ## A104449.P14140215647367282812

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A104449.P14140215647367282812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A104449.P14140215647367282812

namespace A104449

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P14140215647367282812.Spec : Prop :=
  ∀ n, P14140215647367282812.a n = A104449 n

end A104449

/-! ## A104449.P13665397490300460031

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=3, a(1)=1`
-/

namespace A104449.P13665397490300460031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 1] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A104449.P13665397490300460031

namespace A104449

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P13665397490300460031.Spec : Prop :=
  ∀ n, P13665397490300460031.a n = (A104449 n : ℚ)

end A104449

/-! ## A104449.P13057715460273942958

`A212804(n)+A000032(n)`
-/

namespace A104449.P13057715460273942958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A000032 n

end

end A104449.P13057715460273942958

namespace A104449

/-- `A212804(n)+A000032(n)` -/
def P13057715460273942958.Spec : Prop :=
  ∀ n, P13057715460273942958.a n = A104449 n

end A104449

/-! ## A104449.P16453504858074889921

`A295686(n)+A115008(n)`
-/

namespace A104449.P16453504858074889921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 n + A115008 n

end

end A104449.P16453504858074889921

namespace A104449

/-- `A295686(n)+A115008(n)` -/
def P16453504858074889921.Spec : Prop :=
  ∀ n, P16453504858074889921.a n = A104449 n

end A104449

/-! ## A104449.P11701099610819118192

`A013655(n)-A000045(n)`
-/

namespace A104449.P11701099610819118192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - A000045 n

end

end A104449.P11701099610819118192

namespace A104449

/-- `A013655(n)-A000045(n)` -/
def P11701099610819118192.Spec : Prop :=
  ∀ n, P11701099610819118192.a n = A104449 n

end A104449

/-! ## A104449.P17865676004832076576

`A013915(n)-A002062(n)`
-/

namespace A104449.P17865676004832076576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 n - A002062 n

end

end A104449.P17865676004832076576

namespace A104449

/-- `A013915(n)-A002062(n)` -/
def P17865676004832076576.Spec : Prop :=
  ∀ n, P17865676004832076576.a n = A104449 n

end A104449

/-! ## A104449.P13275598220577998951

`A000032(n)+Δ[A000045(n)]`
-/

namespace A104449.P13275598220577998951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A104449.P13275598220577998951

namespace A104449

/-- `A000032(n)+Δ[A000045(n)]` -/
def P13275598220577998951.Spec : Prop :=
  ∀ n, P13275598220577998951.a n = A104449 n

end A104449

/-! ## A104449.P15199455319264790945

`A000032(n)+Δ[A001611(n)]`
-/

namespace A104449.P15199455319264790945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n)

end

end A104449.P15199455319264790945

namespace A104449

/-- `A000032(n)+Δ[A001611(n)]` -/
def P15199455319264790945.Spec : Prop :=
  ∀ n, P15199455319264790945.a n = A104449 n

end A104449

/-! ## A104449.P2807289926276337130

`A020695(n)-Δ[A000032(n)]`
-/

namespace A104449.P2807289926276337130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (f1 (n + 1) - f1 n)

end

end A104449.P2807289926276337130

namespace A104449

/-- `A020695(n)-Δ[A000032(n)]` -/
def P2807289926276337130.Spec : Prop :=
  ∀ n, P2807289926276337130.a n = A104449 n

end A104449

/-! ## A104449.P16166625298855163605

`A118658(n)+A000045(n+1)`
-/

namespace A104449.P16166625298855163605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A000045 (n + 1)

end

end A104449.P16166625298855163605

namespace A104449

/-- `A118658(n)+A000045(n+1)` -/
def P16166625298855163605.Spec : Prop :=
  ∀ n, P16166625298855163605.a n = A104449 n

end A104449

/-! ## A104449.P10170215509584106622

`A000032(n)-A152163(n+1)`
-/

namespace A104449.P10170215509584106622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A152163 (n + 1)

end

end A104449.P10170215509584106622

namespace A104449

/-- `A000032(n)-A152163(n+1)` -/
def P10170215509584106622.Spec : Prop :=
  ∀ n, P10170215509584106622.a n = A104449 n

end A104449

/-! ## A104449.P2622103760076229803

`A001612(n)+A212804(n)-1`
-/

namespace A104449.P2622103760076229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + (A212804 n - 1)

end

end A104449.P2622103760076229803

namespace A104449

/-- `A001612(n)+A212804(n)-1` -/
def P2622103760076229803.Spec : Prop :=
  ∀ n, P2622103760076229803.a n = A104449 n

end A104449

/-!
# A104450: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 3, 2, 5, 7, 12, 19, 31, 50, ....

The programs for A104450, there is no canonical definition to state claims against.
-/

/-! ## A104450.P14165858139711380433

`A219487(eq[0, A219485(n+1)])`
-/

namespace A104450.P14165858139711380433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104450.P14165858139711380433

/-! ## A104450.P8727732043387578473

`A219487(lt[A219485(n+1), 1])`
-/

namespace A104450.P8727732043387578473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104450.P8727732043387578473

/-! ## A104450.P5421438942029302807

`A219487(lt[A219485(n), 1]-1)`
-/

namespace A104450.P5421438942029302807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219487 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A104450.P5421438942029302807

/-! ## A104450.P2702311750504010767

`A219492(eq[A219492(n+2), A219492(n+7)])`
-/

namespace A104450.P2702311750504010767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219492 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104450.P2702311750504010767

/-! ## A104450.P3543326022643809254

`A219491(lt[A219491(n+1), (n+1)^A219491(n)])`
-/

namespace A104450.P3543326022643809254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219491 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A219491 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219491 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A104450.P3543326022643809254

/-!
# A104451: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 2, 5, 7, 12, 19, 31, 50, 81, ....

The programs for A104451, there is no canonical definition to state claims against.
-/

/-! ## A104451.P11352721201544124868

`A104450(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A104451.P11352721201544124868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A104450 n - a (n - 3)

end

end A104451.P11352721201544124868

/-! ## A104451.P17680754824778299358

`A219485(record[1-A219485(n)+n])`
-/

namespace A104451.P17680754824778299358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219485 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104451.P17680754824778299358

/-! ## A104451.P15224760514552100960

`A219485(record[1-(A219485(n)-n)])`
-/

namespace A104451.P15224760514552100960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A219485 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104451.P15224760514552100960

/-! ## A104451.P11056203650507253785

`A219485(eq[0, A219485(n+1)])`
-/

namespace A104451.P11056203650507253785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104451.P11056203650507253785

/-! ## A104451.P17366869124352996754

`A219485(eq[0, A219485(n)]-1)`
-/

namespace A104451.P17366869124352996754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A104451.P17366869124352996754

/-! ## A104451.P12636788867904538235

`A219485(lt[A219485(n+1), 1])`
-/

namespace A104451.P12636788867904538235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A104451.P12636788867904538235

/-! ## A104451.P14565721255053517511

`A219485(lt[A219485(n), 1]-1)`
-/

namespace A104451.P14565721255053517511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A104451.P14565721255053517511

/-! ## A104451.P4086814030305754008

`A219485(record[n/(A219485(n+1)+1)])`
-/

namespace A104451.P4086814030305754008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A219485 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A104451.P4086814030305754008

/-!
# A104452: Number of groups of order <= n all of whose subgroups are normal.

The programs for A104452, there is no canonical definition to state claims against.
-/

/-! ## A104452.P14452236948149188994

`∑[A104404(n+1)]`
-/

namespace A104452.P14452236948149188994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104452.P14452236948149188994

/-! ## A104452.P17980776039760998965

`A104404(round(sqrt(n²+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A104452.P17980776039760998965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104404 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + a (n - 1)

end

end A104452.P17980776039760998965

/-! ## A104452.P7122650710975760275

`A104407(n+1)+A063966(n+1)`
-/

namespace A104452.P7122650710975760275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104407 (n + 1) + A063966 (n + 1)

end

end A104452.P7122650710975760275

/-! ## A104452.P7953978022013396596

`A104407(n+1)+∑[A000688(n+1)]`
-/

namespace A104452.P7953978022013396596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104407 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104452.P7953978022013396596

/-! ## A104452.P14411661014228104443

`∑[A104488(n+1)+A000688(n+1)]`
-/

namespace A104452.P14411661014228104443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1) + A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104452.P14411661014228104443

/-! ## A104452.P15889188266763673408

`A063966(n+1)+∑[A104488(n+1)]`
-/

namespace A104452.P15889188266763673408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063966 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104452.P15889188266763673408

/-!
# A104454: Expansion of 1/(sqrt(1-5x)*sqrt(1-9x)).

The programs for A104454, there is no canonical definition to state claims against.
-/

/-! ## A104454.P1895876296693840888

`A292627(eq[7, A025581(n)])`
-/

namespace A104454.P1895876296693840888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104454.P1895876296693840888

/-! ## A104454.P3015351523160326438

`A292627(eq[15, A099375(n)])`
-/

namespace A104454.P3015351523160326438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104454.P3015351523160326438

/-! ## A104454.P14361911194499388981

`A292627(eq[8, A004736(n+1)])`
-/

namespace A104454.P14361911194499388981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104454.P14361911194499388981

/-! ## A104454.P8913305372568854111

`A292627(eq[7, val(A130321(n), 2)])`
-/

namespace A104454.P8913305372568854111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130321 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A104454.P8913305372568854111

/-! ## A104454.P15461196297260375874

`A292627(A000096(n+6)+n+1)`
-/

namespace A104454.P15461196297260375874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A104454.P15461196297260375874

/-! ## A104454.P15232103915100660278

`A292627(2*n+A000217(n+6)+7)`
-/

namespace A104454.P15232103915100660278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A104454.P15232103915100660278

/-! ## A104454.P6788951188685056188

`sqrt(A307811(n))`
-/

namespace A104454.P6788951188685056188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A307811 n : ℝ)

end

end A104454.P6788951188685056188

/-!
# A104455: Expansion of e.g.f. exp(5*x)*(BesselI(0,2*x) - BesselI(1,2*x)).

The programs for A104455, there is no canonical definition to state claims against.
-/

/-! ## A104455.P14387271969233144042

`A126331(∑[n])`
-/

namespace A104455.P14387271969233144042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104455.P14387271969233144042

/-! ## A104455.P18318277052972660517

`A171589(∑[n])`
-/

namespace A104455.P18318277052972660517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171589 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104455.P18318277052972660517

/-! ## A104455.P8809082876277307740

`record[A171589(n)]`
-/

namespace A104455.P8809082876277307740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P8809082876277307740

/-! ## A104455.P423400711868344588

`A182401(n-1)+3*a(n-1)` with `a(0)=1`
-/

namespace A104455.P423400711868344588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182401 (n - 1) + 3 * a (n - 1)

end

end A104455.P423400711868344588

/-! ## A104455.P2888108625186645058

`record[A126331(n)/A007318(n)]`
-/

namespace A104455.P2888108625186645058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126331 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P2888108625186645058

/-! ## A104455.P18036979227111342311

`record[A126331(n)/A047110(n)]`
-/

namespace A104455.P18036979227111342311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126331 n : ℚ) / (A047110 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P18036979227111342311

/-! ## A104455.P16330829126912885728

`record[A126331(A161680(A008611(n)))]`
-/

namespace A104455.P16330829126912885728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (A161680 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P16330829126912885728

/-! ## A104455.P135245928433389072

`record[A126331(A161680(A008615(n)))]`
-/

namespace A104455.P135245928433389072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (A161680 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P135245928433389072

/-! ## A104455.P12675123342820917913

`record[A126331(A161680(A028242(n)))]`
-/

namespace A104455.P12675123342820917913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (A161680 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P12675123342820917913

/-! ## A104455.P8910684277789373888

`record[A126331(A161680(A126759(n)))]`
-/

namespace A104455.P8910684277789373888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (A161680 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P8910684277789373888

/-! ## A104455.P5476915223549321001

`or(A000007(n), A126331(A000217(n)))`
-/

namespace A104455.P5476915223549321001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A126331 (A000217 n).toNat)

end

end A104455.P5476915223549321001

/-! ## A104455.P8713912023070354647

`record[A126331(A008611(2*n)*A008611(n+1))]`
-/

namespace A104455.P8713912023070354647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126331 (A008611 (2 * n) * A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P8713912023070354647

/-! ## A104455.P3647744287523322988

`record[A126331(n)/A013613(n)]`
-/

namespace A104455.P3647744287523322988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126331 n : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104455.P3647744287523322988

/-! ## A104455.P10314913590612350825

`A383948(n)/(n+1)`
-/

namespace A104455.P10314913590612350825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383948 n : ℚ) / (n + 1 : ℚ)

end

end A104455.P10314913590612350825

/-!
# A104456: Number of ways of partitioning the integers {1,2,..,4n-1} into two unordered sets such that the sums of parts are equal in both sets (parts in one of the sets hence sum up to n*(4n-1)). Number of solutions to {1 +- 2 +- 3+ ... +- 4n-1 = 0}.

The programs for A104456, there is no canonical definition to state claims against.
-/

/-! ## A104456.P12696256545368251793

`A123117(n+1)/2`
-/

namespace A104456.P12696256545368251793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123117 (n + 1) : ℚ) / 2

end

end A104456.P12696256545368251793

/-! ## A104456.P11860826148143036672

`A058377(4*(n+1)-1)`
-/

namespace A104456.P11860826148143036672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (4 * (n + 1) - 1)

end

end A104456.P11860826148143036672

/-! ## A104456.P15226766455033984627

`A069918(4*n+3)`
-/

namespace A104456.P15226766455033984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069918 (4 * n + 3)

end

end A104456.P15226766455033984627

/-! ## A104456.P4199405914830339579

`record[Δ[A058377(n+2)]]`
-/

namespace A104456.P4199405914830339579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104456.P4199405914830339579

/-! ## A104456.P10729850092986072623

`A025591(4*n+3)/2`
-/

namespace A104456.P10729850092986072623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (4 * n + 3) : ℚ) / 2

end

end A104456.P10729850092986072623

/-! ## A104456.P6024311016343880290

`record[Δ[A063865(2*n+1)/2]]`
-/

namespace A104456.P6024311016343880290
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104456.P6024311016343880290

/-! ## A104456.P5087197563769257231

`record[A063865(A165754(n))/2]`
-/

namespace A104456.P5087197563769257231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063865 (A165754 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104456.P5087197563769257231

/-!
# A104457: Decimal expansion of 1 + phi = phi^2 = (3 + sqrt(5))/2.

The programs for A104457, there is no canonical definition to state claims against.
-/

/-! ## A104457.P12234984121125796543

`floor(A001622(n)+acot(n))`
-/

namespace A104457.P12234984121125796543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001622 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A104457.P12234984121125796543

/-! ## A104457.P7689676638544465772

`A296184(n)-char[ceil(n*ϕ^20)]`
-/

namespace A104457.P7689676638544465772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 20⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104457.P7689676638544465772

/-! ## A104457.P13431408966906717238

`A001622(n)+A000007(n)`
-/

namespace A104457.P13431408966906717238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A000007 n

end

end A104457.P13431408966906717238

/-! ## A104457.P4218085582618742634

`A001622(n)*A054977(n)`
-/

namespace A104457.P4218085582618742634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A054977 n

end

end A104457.P4218085582618742634

/-! ## A104457.P604189766612321548

`A000038(n)!*A001622(n)`
-/

namespace A104457.P604189766612321548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A001622 (n + 1)

end

end A104457.P604189766612321548

/-! ## A104457.P5842137205001812860

`A001622(n)+char[A004935(n)]`
-/

namespace A104457.P5842137205001812860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A104457.P5842137205001812860

/-! ## A104457.P7752199500459517534

`A001622(n)+1-A057427(n)`
-/

namespace A104457.P7752199500459517534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (1 - A057427 n)

end

end A104457.P7752199500459517534

/-! ## A104457.P11195751646756725663

`(A296184(n)+A001622(n))/2`
-/

namespace A104457.P11195751646756725663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296184 (n + 1) + A001622 (n + 1) : ℚ) / 2

end

end A104457.P11195751646756725663

/-! ## A104457.P17321488356184258173

`4*A001622(n)/A040002(n)`
-/

namespace A104457.P17321488356184258173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A001622 (n + 1) : ℚ) / (A040002 n : ℚ))

end

end A104457.P17321488356184258173

/-! ## A104457.P6985309627396259069

`A001622(n)+C(A001877(n), n)`
-/

namespace A104457.P6985309627396259069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (Nat.choose (A001877 n).toNat n : ℤ)

end

end A104457.P6985309627396259069

/-! ## A104457.P453567480312329725

`A001622(n)+∏{d}[n, A010051(#)]`
-/

namespace A104457.P453567480312329725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A010051 d

end

end A104457.P453567480312329725

/-! ## A104457.P16971453386839037573

`A010051(2*(n+1))+A001622(n)`
-/

namespace A104457.P16971453386839037573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A001622 (n + 1)

end

end A104457.P16971453386839037573

/-! ## A104457.P2071240621315694149

`A109578(2*n+1)+A001622(n)`
-/

namespace A104457.P2071240621315694149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * n + 1) + A001622 (n + 1)

end

end A104457.P2071240621315694149

/-! ## A104457.P7179701723323706142

`A001622(n)+1-A019425(A005843(n))`
-/

namespace A104457.P7179701723323706142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (1 - A019425 (A005843 n).toNat)

end

end A104457.P7179701723323706142

/-! ## A104457.P16049647007239488395

`A001622(n)+1-A019425(A019425(n))`
-/

namespace A104457.P16049647007239488395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (1 - A019425 (A019425 n).toNat)

end

end A104457.P16049647007239488395

/-! ## A104457.P4755018585815357235

`A001622(n)+2-A020639(A004277(n))`
-/

namespace A104457.P4755018585815357235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + 2 - A020639 (A004277 n).toNat

end

end A104457.P4755018585815357235

/-! ## A104457.P9984215426755197303

`A010054(A010054(n)+n)+A001622(n)`
-/

namespace A104457.P9984215426755197303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A010054 n + (n : ℤ)).toNat + A001622 (n + 1)

end

end A104457.P9984215426755197303

/-! ## A104457.P4100921607899500537

`A023533(A023533(n)+n)+A001622(n)`
-/

namespace A104457.P4100921607899500537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A023533 n + (n : ℤ)).toNat + A001622 (n + 1)

end

end A104457.P4100921607899500537

/-! ## A104457.P13088232901208252435

`A001622(n)+A014176(n)-A002193(n)`
-/

namespace A104457.P13088232901208252435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A014176 (n + 1) - A002193 (n + 1))

end

end A104457.P13088232901208252435

/-! ## A104457.P7123368848480014508

`A001622(n)+A026351(n)-A004956(n)`
-/

namespace A104457.P7123368848480014508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A026351 n - A004956 n)

end

end A104457.P7123368848480014508

/-!
# A104458: Define the first two terms to be 2 and 3. All the other terms are obtained by concatenating the two previous terms.

The programs for A104458, there is no canonical definition to state claims against.
-/

/-! ## A104458.P13433507552798603484

`A108047(n+1)+A008352(n)`
-/

namespace A104458.P13433507552798603484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 1) + A008352 n

end

end A104458.P13433507552798603484

/-! ## A104458.P50339709348508137

`A131293(n+1)+A008352(n)`
-/

namespace A104458.P50339709348508137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) + A008352 n

end

end A104458.P50339709348508137

/-! ## A104458.P11670537171372759172

`3*A008352(n)-A113526(n+1)`
-/

namespace A104458.P11670537171372759172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008352 n - A113526 (n + 1)

end

end A104458.P11670537171372759172

/-! ## A104458.P10964408319534924235

`A008351(n+1)+A008352(n)-A061107(n)`
-/

namespace A104458.P10964408319534924235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008351 (n + 1) + (A008352 n - A061107 n)

end

end A104458.P10964408319534924235

/-! ## A104458.P1663875290789600680

`A108047(n+1)+(A113526(n+1)+A108047(n+1))/2`
-/

namespace A104458.P1663875290789600680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108047 (n + 1) : ℚ) + (A113526 (n + 1) + A108047 (n + 1) : ℚ) / 2

end

end A104458.P1663875290789600680

/-!
# A104459: Possible differences between adjacent palindromes.

The programs for A104459, the canonical program `A104459.P18109229940889195381` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104459 has offset 1).

The definition of A104459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104459.P18109229940889195381

`10*a(n-2)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104459

/-- `10*a(n-2)` -/
def P18109229940889195381.Spec : Prop :=
  ∀ n, (P18109229940889195381.a n : ℤ) = A104459 (n + 1)

theorem P18109229940889195381.correct : P18109229940889195381.Spec := by
  intro n
  simp only [A104459, Nat.add_sub_cancel]

end A104459

/-! ## A104459.P16958923664589970577

`ogf((1+2x-9x^3)/(1-10x^2))`
-/

namespace A104459.P16958923664589970577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -9] [1, 0, -10] n

end

end A104459.P16958923664589970577

namespace A104459

/-- `ogf((1+2x-9x^3)/(1-10x^2))` -/
def P16958923664589970577.Spec : Prop :=
  ∀ n, P16958923664589970577.a n = A104459 (n + 1)

end A104459

/-! ## A104459.P16066060655954121582

`A281366(record[A003815(n)+1])`
-/

namespace A104459.P16066060655954121582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104459.P16066060655954121582

namespace A104459

/-- `A281366(record[A003815(n)+1])` -/
def P16066060655954121582.Spec : Prop :=
  ∀ n, P16066060655954121582.a n = A104459 (n + 1)

end A104459

/-! ## A104459.P6360067830446920769

`A281366(A042948(n)+A019590(n+1))`
-/

namespace A104459.P6360067830446920769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281366 (A042948 n + A019590 (n + 1)).toNat

end

end A104459.P6360067830446920769

namespace A104459

/-- `A281366(A042948(n)+A019590(n+1))` -/
def P6360067830446920769.Spec : Prop :=
  ∀ n, P6360067830446920769.a n = A104459 (n + 1)

end A104459

/-! ## A104459.P16256368949214382095

`A109868(A114112(n+1))`
-/

namespace A104459.P16256368949214382095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109868 (A114112 (n + 1)).toNat

end

end A104459.P16256368949214382095

namespace A104459

/-- `A109868(A114112(n+1))` -/
def P16256368949214382095.Spec : Prop :=
  ∀ n, P16256368949214382095.a n = A104459 (n + 1)

end A104459

/-! ## A104459.P11797982441644518347

`∩[A356520(n+1), A064222(n)]`
-/

namespace A104459.P11797982441644518347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104459.P11797982441644518347

namespace A104459

/-- `∩[A356520(n+1), A064222(n)]` -/
def P11797982441644518347.Spec : Prop :=
  ∀ n, (P11797982441644518347.a n : ℤ) = A104459 (n + 1)

end A104459

/-!
# A104460: Number of hierarchical orderings for n unlabeled elements with 2 possible classes for levels l>=2.

The programs for A104460, there is no canonical definition to state claims against.
-/

/-! ## A104460.P13804570090552076775

`A014419(A161634(n+1))`
-/

namespace A104460.P13804570090552076775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A161634 (n + 1)).toNat

end

end A104460.P13804570090552076775

/-!
# A104461: Number of instances of nonprimes m in Pythagorean triples x,y,z such that x^2 + y^2 = z^2. Except for 1, the number of instances of composite numbers m in Pythagorean triples.

The programs for A104461, the canonical program `A104461.P3569709191651872692` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104461 has offset 1).

The definition of A104461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104461.P3569709191651872692

`A046081(Δ[A051349(n)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A104461

/-- `A046081(Δ[A051349(n)])` -/
def P3569709191651872692.Spec : Prop :=
  ∀ n, P3569709191651872692.a n = A104461 (n + 1)

theorem P3569709191651872692.correct : P3569709191651872692.Spec := by
  intro n
  simp only [A104461, Nat.add_sub_cancel]

end A104461

/-! ## A104461.P5540732325946721881

`A046081(A018252(n+1))`
-/

namespace A104461.P5540732325946721881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A018252 (n + 1)).toNat

end

end A104461.P5540732325946721881

namespace A104461

/-- `A046081(A018252(n+1))` -/
def P5540732325946721881.Spec : Prop :=
  ∀ n, P5540732325946721881.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P16344758569611711738

`A046081(A065090(n+2))`
-/

namespace A104461.P16344758569611711738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A065090 (n + 2)).toNat

end

end A104461.P16344758569611711738

namespace A104461

/-- `A046081(A065090(n+2))` -/
def P16344758569611711738.Spec : Prop :=
  ∀ n, P16344758569611711738.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P4580776182586299061

`A046081(A141468(n+2))`
-/

namespace A104461.P4580776182586299061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A141468 (n + 2)).toNat

end

end A104461.P4580776182586299061

namespace A104461

/-- `A046081(A141468(n+2))` -/
def P4580776182586299061.Spec : Prop :=
  ∀ n, P4580776182586299061.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P3474921964259034674

`A046081(∑[A054546(n+1)])`
-/

namespace A104461.P3474921964259034674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A104461.P3474921964259034674

namespace A104461

/-- `A046081(∑[A054546(n+1)])` -/
def P3474921964259034674.Spec : Prop :=
  ∀ n, P3474921964259034674.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P17837905577174368295

`A046081(record[A063928(n+1)])`
-/

namespace A104461.P17837905577174368295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104461.P17837905577174368295

namespace A104461

/-- `A046081(record[A063928(n+1)])` -/
def P17837905577174368295.Spec : Prop :=
  ∀ n, P17837905577174368295.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P17518571154473859250

`A046081(A060462(n+1)+1)`
-/

namespace A104461.P17518571154473859250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A060462 (n + 1) + 1).toNat

end

end A104461.P17518571154473859250

namespace A104461

/-- `A046081(A060462(n+1)+1)` -/
def P17518571154473859250.Spec : Prop :=
  ∀ n, P17518571154473859250.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P4693735889866370683

`A046081(A073846(2*n+1))`
-/

namespace A104461.P4693735889866370683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A073846 (2 * n + 1)).toNat

end

end A104461.P4693735889866370683

namespace A104461

/-- `A046081(A073846(2*n+1))` -/
def P4693735889866370683.Spec : Prop :=
  ∀ n, P4693735889866370683.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P9185763027001871239

`∑{d}[A018252(n+1), A024363(#)]`
-/

namespace A104461.P9185763027001871239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024363 d

end

end A104461.P9185763027001871239

namespace A104461

/-- `∑{d}[A018252(n+1), A024363(#)]` -/
def P9185763027001871239.Spec : Prop :=
  ∀ n, P9185763027001871239.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P5998976994386025522

`A046081(comp[record[A000010(n+1)]]+1)`
-/

namespace A104461.P5998976994386025522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A104461.P5998976994386025522

namespace A104461

/-- `A046081(comp[record[A000010(n+1)]]+1)` -/
def P5998976994386025522.Spec : Prop :=
  ∀ n, P5998976994386025522.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P16349664001244883033

`A046081(comp[A020639(n+2)-1]+1)`
-/

namespace A104461.P16349664001244883033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A104461.P16349664001244883033

namespace A104461

/-- `A046081(comp[A020639(n+2)-1]+1)` -/
def P16349664001244883033.Spec : Prop :=
  ∀ n, P16349664001244883033.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P8825153188856095939

`A046081(A051349(n+1)-A051349(n))`
-/

namespace A104461.P8825153188856095939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A051349 (n + 1) - A051349 n).toNat

end

end A104461.P8825153188856095939

namespace A104461

/-- `A046081(A051349(n+1)-A051349(n))` -/
def P8825153188856095939.Spec : Prop :=
  ∀ n, P8825153188856095939.a n = A104461 (n + 1)

theorem P8825153188856095939.correct : P8825153188856095939.Spec := by
  intro n
  simp only [A104461, Nat.add_sub_cancel, A104461.P8825153188856095939.a, A104461.P3569709191651872692.f1, A104461.P3569709191651872692.a, SequenceMachineLib.memo_apply]

end A104461

/-! ## A104461.P6183269765467485149

`A046081(A000040(n+1)-A014237(n+1))`
-/

namespace A104461.P6183269765467485149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A000040 (n + 1) - A014237 (n + 1)).toNat

end

end A104461.P6183269765467485149

namespace A104461

/-- `A046081(A000040(n+1)-A014237(n+1))` -/
def P6183269765467485149.Spec : Prop :=
  ∀ n, P6183269765467485149.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P4522357186053187146

`A046081(A022797(n+1)-A000040(n+1))`
-/

namespace A104461.P4522357186053187146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A022797 (n + 1) - A000040 (n + 1)).toNat

end

end A104461.P4522357186053187146

namespace A104461

/-- `A046081(A022797(n+1)-A000040(n+1))` -/
def P4522357186053187146.Spec : Prop :=
  ∀ n, P4522357186053187146.a n = A104461 (n + 1)

end A104461

/-! ## A104461.P7085185651886026620

`A046081(A022797(n+1)-record[A020639(n+2)])`
-/

namespace A104461.P7085185651886026620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A022797 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104461.P7085185651886026620

namespace A104461

/-- `A046081(A022797(n+1)-record[A020639(n+2)])` -/
def P7085185651886026620.Spec : Prop :=
  ∀ n, P7085185651886026620.a n = A104461 (n + 1)

end A104461

/-!
# A104462: Convert the binary strings in A101305 to decimal.

The programs for A104462, there is no canonical definition to state claims against.
-/

/-! ## A104462.P17354862674989669179

`(2*a(n-1)+1)*2^n` with `a(0)=0`
-/

namespace A104462.P17354862674989669179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a (n - 1) + 1) * 2 ^ n

end

end A104462.P17354862674989669179

/-! ## A104462.P987807700553501501

`lcm(a(n-1)+or(1, a(n-1)), 2^n)` with `a(0)=0`
-/

namespace A104462.P987807700553501501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (a (n - 1) + Nat.lor 1 (a (n - 1))) (2 ^ n)

end

end A104462.P987807700553501501

/-! ## A104462.P5993932347814720838

`lcm(a(n-1)+a(n-1)+1, 2^n-a(n-1)%2)` with `a(0)=0`
-/

namespace A104462.P5993932347814720838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.lcm (a (n - 1) + (a (n - 1) + 1) : ℤ) ((2 ^ n : ℤ) - ((a (n - 1) % 2 : ℕ) : ℤ))

end

end A104462.P5993932347814720838

/-! ## A104462.P12939160423739475240

`2^n*A076131(n)`
-/

namespace A104462.P12939160423739475240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A076131 n

end

end A104462.P12939160423739475240

/-! ## A104462.P14279149695504956440

`(A076131(n+1)-1)/2`
-/

namespace A104462.P14279149695504956440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076131 (n + 1) - 1 : ℚ) / 2

end

end A104462.P14279149695504956440

/-!
# A104463: Complement of {A072756(n): n>=2}.

The programs for A104463, there is no canonical definition to state claims against.
-/

/-! ## A104463.P795672839715429661

`comp[A072756(n+2)]`
-/

namespace A104463.P795672839715429661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072756 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104463.P795672839715429661

/-! ## A104463.P6134895194658183791

`∪[n^4, A072757(n)]`
-/

namespace A104463.P6134895194658183791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A104463.P6134895194658183791

/-! ## A104463.P1819207321793772774

`floor(atan(15)*A072756(n))`
-/

namespace A104463.P1819207321793772774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (15 : ℝ) * (A072756 n : ℝ)⌋

end

end A104463.P1819207321793772774

/-! ## A104463.P722103981597105645

`comp[A026343(n+1)+1]`
-/

namespace A104463.P722103981597105645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026343 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A104463.P722103981597105645

/-! ## A104463.P8059768521017422724

`A072758(comp[2*(n+1)])`
-/

namespace A104463.P8059768521017422724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A104463.P8059768521017422724

/-! ## A104463.P6382697803816097230

`eq[1, -a(A092942(n))]` with `a(0)=1, a(1)=1`
-/

namespace A104463.P6382697803816097230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  -f2 (A092942 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104463.P6382697803816097230

/-! ## A104463.P16368267679477683623

`A032766(A072756(n))`
-/

namespace A104463.P16368267679477683623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A072756 n).toNat

end

end A104463.P16368267679477683623

/-! ## A104463.P9616999682472810815

`A032766(comp[A072757(n)])`
-/

namespace A104463.P9616999682472810815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072757 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A104463.P9616999682472810815

/-! ## A104463.P4932114184009802488

`A057353(2*A072756(n))`
-/

namespace A104463.P4932114184009802488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A072756 n).toNat

end

end A104463.P4932114184009802488

/-! ## A104463.P4895599397429966340

`A004526(3*A072756(n))`
-/

namespace A104463.P4895599397429966340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A072756 n).toNat

end

end A104463.P4895599397429966340

/-!
# A104464: Permutation of natural numbers based on A072756 and A104463.

The programs for A104464, there is no canonical definition to state claims against.
-/

/-! ## A104464.P15108359395640412479

`A072758(n+1)`
-/

namespace A104464.P15108359395640412479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 (n + 1)

end

end A104464.P15108359395640412479

/-! ## A104464.P18271628839450611291

`∑[Δ[A072758(n)]%30]`
-/

namespace A104464.P18271628839450611291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104464.P18271628839450611291

/-! ## A104464.P13400896173499172135

`A072758(Δ[n²]-n)%89`
-/

namespace A104464.P13400896173499172135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 89

end

end A104464.P13400896173499172135

/-! ## A104464.P13752051874691896044

`A000027(A072758(Δ[n²]-n))`
-/

namespace A104464.P13752051874691896044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A104464.P13752051874691896044

/-! ## A104464.P2643696096833406894

`A000188(A072758(Δ[n²]-n)²)`
-/

namespace A104464.P2643696096833406894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat

end

end A104464.P2643696096833406894

/-! ## A104464.P5957547973336814417

`A000196(A072758(Δ[n²]-n)²)`
-/

namespace A104464.P5957547973336814417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2).toNat

end

end A104464.P5957547973336814417

/-! ## A104464.P7240788244834711348

`or(A000007(n), A072758(Δ[n²]-n))`
-/

namespace A104464.P7240788244834711348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A104464.P7240788244834711348

/-! ## A104464.P9181769639555200489

`∑{d}[A072758(Δ[n²]-n), A000010(#)]`
-/

namespace A104464.P9181769639555200489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A104464.P9181769639555200489

/-! ## A104464.P9821880048217550004

`∏{d}[A072758(Δ[n²]-n), A014963(#)]`
-/

namespace A104464.P9821880048217550004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072758 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A104464.P9821880048217550004

/-! ## A104464.P16386476569197841586

`A007318(C(2, n))*A072758(Δ[n²]-n)`
-/

namespace A104464.P16386476569197841586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A072758 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A104464.P16386476569197841586

/-!
# A104466: a(n) is the least k with n distinct prime factors such that the sum of its prime factors (counting multiplicity) divides k, or 0 if no such k exists. First member of A036844 with n distinct prime factors.

The programs for A104466, there is no canonical definition to state claims against.
-/

/-! ## A104466.P9945877669124755860

`A005843(A181131(n)*A357642(n))`
-/

namespace A104466.P9945877669124755860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A181131 n * A357642 n).toNat

end

end A104466.P9945877669124755860

/-!
# A104467: Coefficients of the A-Bailey Mod 9 identity.

The programs for A104467, there is no canonical definition to state claims against.
-/

/-! ## A104467.P16939592908238792430

`A062246(3*n)`
-/

namespace A104467.P16939592908238792430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 (3 * n)

end

end A104467.P16939592908238792430

/-! ## A104467.P14864874259255775287

`A062246(A008486(n))+A000038(n)`
-/

namespace A104467.P14864874259255775287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 (A008486 n).toNat + A000038 n

end

end A104467.P14864874259255775287

/-! ## A104467.P2305887076958531438

`or(A000007(n), A062246(A008585(n)))`
-/

namespace A104467.P2305887076958531438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A062246 (A008585 n).toNat)

end

end A104467.P2305887076958531438

/-! ## A104467.P9587313758856871683

`A062246(A008585(n))/abs(A020985(n))`
-/

namespace A104467.P9587313758856871683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062246 (A008585 n).toNat : ℚ) / (|A020985 n| : ℚ)

end

end A104467.P9587313758856871683

/-! ## A104467.P12326064254497701225

`A062246(A008585(n))+A000007(n+1)`
-/

namespace A104467.P12326064254497701225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 (A008585 n).toNat + A000007 (n + 1)

end

end A104467.P12326064254497701225

/-! ## A104467.P6515054131806063720

`A062246(A008585(n))+and(2, A000005(n+1)²)`
-/

namespace A104467.P6515054131806063720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 (A008585 n).toNat + Int.land 2 (A000005 (n + 1) ^ 2)

end

end A104467.P6515054131806063720

/-! ## A104467.P2378755747165407657

`A062246(A008585(n))+A008683(A273412(n))`
-/

namespace A104467.P2378755747165407657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062246 (A008585 n).toNat + A008683 (A273412 n).toNat

end

end A104467.P2378755747165407657

/-!
# A104468: Coefficients of the B-Bailey Mod 9 identity.

The programs for A104468, there is no canonical definition to state claims against.
-/

/-! ## A104468.P578142697817257556

`-A062246(3*n+1)`
-/

namespace A104468.P578142697817257556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062246 (3 * n + 1)

end

end A104468.P578142697817257556

/-! ## A104468.P16037356993501105262

`A001222(gcd(n, n+1))-A062246(3*n+1)`
-/

namespace A104468.P16037356993501105262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - A062246 (3 * n + 1)

end

end A104468.P16037356993501105262

/-! ## A104468.P1875439772728434232

`A326540(A050605(n))-A062246(3*n+1)`
-/

namespace A104468.P1875439772728434232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326540 (A050605 n).toNat - A062246 (3 * n + 1)

end

end A104468.P1875439772728434232

/-! ## A104468.P3781922622496446694

`A005171(A000040(n+1))-A062246(3*n+1)`
-/

namespace A104468.P3781922622496446694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000040 (n + 1)).toNat - A062246 (3 * n + 1)

end

end A104468.P3781922622496446694

/-! ## A104468.P9480708093565386984

`A072071(A060747(2*(n+2)))-A062246(3*n+1)`
-/

namespace A104468.P9480708093565386984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072071 (A060747 (2 * (n + 2))).toNat - A062246 (3 * n + 1)

end

end A104468.P9480708093565386984

/-! ## A104468.P7517018179438060094

`A008683(A066112(2*(n+1)))-A062246(3*n+1)`
-/

namespace A104468.P7517018179438060094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A066112 (2 * (n + 1))).toNat - A062246 (3 * n + 1)

end

end A104468.P7517018179438060094

/-! ## A104468.P7556601305513573149

`A299173(A068896(n+1))-A062246(3*n+1)`
-/

namespace A104468.P7556601305513573149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A068896 (n + 1)).toNat - A062246 (3 * n + 1)

end

end A104468.P7556601305513573149

/-!
# A104469: Coefficients of the C-Bailey Mod 9 identity.

The programs for A104469, there is no canonical definition to state claims against.
-/

/-! ## A104469.P18017166393857089901

`-A062246(3*n+2)`
-/

namespace A104469.P18017166393857089901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062246 (3 * n + 2)

end

end A104469.P18017166393857089901

/-! ## A104469.P6564823914146997225

`char[A321489(n+1)]-A062246(3*n+2)`
-/

namespace A104469.P6564823914146997225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321489 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A062246 (3 * n + 2)

end

end A104469.P6564823914146997225

/-! ## A104469.P12835113335568446297

`char[A321492(n+1)]-A062246(3*n+2)`
-/

namespace A104469.P12835113335568446297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321492 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A062246 (3 * n + 2)

end

end A104469.P12835113335568446297

/-! ## A104469.P5743568499813859697

`A333806(A045342(n+1))-A062246(3*n+2)`
-/

namespace A104469.P5743568499813859697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A045342 (n + 1)).toNat - A062246 (3 * n + 2)

end

end A104469.P5743568499813859697

/-!
# A104470: Tribonacci equivalent of mousetrap sequence (A002467).

The programs for A104470, the canonical program `A104470.P18047846991698406157` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104470 has offset 0).

The definition of A104470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A104470.P18047846991698406157

`n*(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104470

/-- `n*(a(n-1)+a(n-2)+a(n-3))` -/
def P18047846991698406157.Spec : Prop :=
  ∀ n, (P18047846991698406157.a n : ℤ) = A104470 n

theorem P18047846991698406157.correct : P18047846991698406157.Spec := by
  intro n
  simp only [A104470]

end A104470

/-! ## A104470.P17635761771932583755

`A063882(A218677(n)+A000111(n))`
-/

namespace A104470.P17635761771932583755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A218677 n + A000111 n).toNat

end

end A104470.P17635761771932583755

namespace A104470

/-- `A063882(A218677(n)+A000111(n))` -/
def P17635761771932583755.Spec : Prop :=
  ∀ n, P17635761771932583755.a n = A104470 n

end A104470

/-!
# A104471: Triangle of degree numbers for certain polynomials.

The programs for A104471, there is no canonical definition to state claims against.
-/

/-! ## A104471.P14664633490179258735

`A000120(A157638(n)*A193845(n))`
-/

namespace A104471.P14664633490179258735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A157638 n * A193845 n).toNat

end

end A104471.P14664633490179258735

/-! ## A104471.P17001245549370623427

`A000120(A323837(n)+A193817(n)²)`
-/

namespace A104471.P17001245549370623427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A323837 n + A193817 n ^ 2).toNat

end

end A104471.P17001245549370623427

/-! ## A104471.P10380297230745993807

`A001227(A038220(n)*A298508(n+1))`
-/

namespace A104471.P10380297230745993807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A038220 n * A298508 (n + 1)).toNat

end

end A104471.P10380297230745993807

/-! ## A104471.P10868838342554838907

`gcd((n+1)!, A081743(A323837(n)+A193817(n)²))`
-/

namespace A104471.P10868838342554838907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (n + 1) : ℤ) (A081743 (A323837 n + A193817 n ^ 2).toNat)

end

end A104471.P10868838342554838907

/-! ## A104471.P11529911331150208045

`A081743(A323837(n)+A193817(n)²)-A000007(n)`
-/

namespace A104471.P11529911331150208045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A323837 n + A193817 n ^ 2).toNat - A000007 n

end

end A104471.P11529911331150208045

/-!
# A104472: Triangle of degree numbers for certain polynomials.

The programs for A104472, there is no canonical definition to state claims against.
-/

/-! ## A104472.P16875876007473559624

`A104471(A245300(n)+1)`
-/

namespace A104472.P16875876007473559624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104471 (A245300 n + 1).toNat

end

end A104472.P16875876007473559624

/-!
# A104473: a(n) = binomial(n+2,2)*binomial(n+6,2).

The programs for A104473, the canonical program `A104473.P12790889180174591625` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104473 has offset 0).

The definition of A104473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+2, 2)*C(n+6, 2)` (program `A104473.P12790889180174591625`, by `A104473.P12790889180174591625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104473.P12790889180174591625

`C(n+2, 2)*C(n+6, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104473

/-- `C(n+2, 2)*C(n+6, 2)` -/
def P12790889180174591625.Spec : Prop :=
  ∀ n, (P12790889180174591625.a n : ℤ) = A104473 n

theorem P12790889180174591625.correct : P12790889180174591625.Spec := by
  intro n
  simp only [A104473]

end A104473

/-! ## A104473.P4297547663670808888

`1/4*(n+1)*(n+2)*(n+5)*(n+6)`
-/

namespace A104473.P4297547663670808888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (n + 1 : ℚ) * (n + 2 : ℚ) * (n + 5 : ℚ) * (n + 6 : ℚ)

end

end A104473.P4297547663670808888

namespace A104473

/-- `1/4*(n+1)*(n+2)*(n+5)*(n+6)` -/
def P4297547663670808888.Spec : Prop :=
  ∀ n, P4297547663670808888.a n = (A104473 n : ℚ)

end A104473

/-! ## A104473.P11315460636961042842

`A034856(n+2)²-1`
-/

namespace A104473.P11315460636961042842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 2) ^ 2 - 1

end

end A104473.P11315460636961042842

namespace A104473

/-- `A034856(n+2)²-1` -/
def P11315460636961042842.Spec : Prop :=
  ∀ n, P11315460636961042842.a n = A104473 n

end A104473

/-! ## A104473.P4518905995879138022

`∑[∑[lcm(3, (n+2)²+n+1)]]`
-/

namespace A104473.P4518905995879138022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 ((n + 2) ^ 2 + (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P4518905995879138022

namespace A104473

/-- `∑[∑[lcm(3, (n+2)²+n+1)]]` -/
def P4518905995879138022.Spec : Prop :=
  ∀ n, (P4518905995879138022.a n : ℤ) = A104473 n

end A104473

/-! ## A104473.P11566278885530341508

`∑[(n+5)*∑[a(n-1)+2]]` with `a(0)=3`
-/

namespace A104473.P11566278885530341508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P11566278885530341508

namespace A104473

/-- `∑[(n+5)*∑[a(n-1)+2]]` -/
def P11566278885530341508.Spec : Prop :=
  ∀ n, (P11566278885530341508.a n : ℤ) = A104473 n

end A104473

/-! ## A104473.P12906197995416441874

`∑[(lcm(n+2, n+3)+n-1)*(n+3)]`
-/

namespace A104473.P12906197995416441874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 2) (n + 3) : ℤ) + ((n : ℤ) - 1)) * (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P12906197995416441874

namespace A104473

/-- `∑[(lcm(n+2, n+3)+n-1)*(n+3)]` -/
def P12906197995416441874.Spec : Prop :=
  ∀ n, P12906197995416441874.a n = A104473 n

end A104473

/-! ## A104473.P15746375736294564408

`Δ[A008778(n)]²-1`
-/

namespace A104473.P15746375736294564408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A104473.P15746375736294564408

namespace A104473

/-- `Δ[A008778(n)]²-1` -/
def P15746375736294564408.Spec : Prop :=
  ∀ n, P15746375736294564408.a n = A104473 n

end A104473

/-! ## A104473.P7507129519650087013

`∑[A096382(n+3)/2]`
-/

namespace A104473.P7507129519650087013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096382 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P7507129519650087013

namespace A104473

/-- `∑[A096382(n+3)/2]` -/
def P7507129519650087013.Spec : Prop :=
  ∀ n, P7507129519650087013.a n = (A104473 n : ℚ)

end A104473

/-! ## A104473.P4104648180586905296

`∑[A243427(n+1)]²-1`
-/

namespace A104473.P4104648180586905296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A104473.P4104648180586905296

namespace A104473

/-- `∑[A243427(n+1)]²-1` -/
def P4104648180586905296.Spec : Prop :=
  ∀ n, P4104648180586905296.a n = A104473 n

end A104473

/-! ## A104473.P5320662180487803022

`∑[A058794(n+1)-(n+3)]`
-/

namespace A104473.P5320662180487803022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (n + 1) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P5320662180487803022

namespace A104473

/-- `∑[A058794(n+1)-(n+3)]` -/
def P5320662180487803022.Spec : Prop :=
  ∀ n, P5320662180487803022.a n = A104473 n

end A104473

/-! ## A104473.P18301420933825118009

`∑[∑[∑[3*(A004277(n)+4)]]]`
-/

namespace A104473.P18301420933825118009
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A004277 n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P18301420933825118009

namespace A104473

/-- `∑[∑[∑[3*(A004277(n)+4)]]]` -/
def P18301420933825118009.Spec : Prop :=
  ∀ n, P18301420933825118009.a n = A104473 n

end A104473

/-! ## A104473.P16938522267811630988

`∑[A370912(n+1)]`
-/

namespace A104473.P16938522267811630988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P16938522267811630988

namespace A104473

/-- `∑[A370912(n+1)]` -/
def P16938522267811630988.Spec : Prop :=
  ∀ n, P16938522267811630988.a n = A104473 n

end A104473

/-! ## A104473.P9723811304902433920

`∑[∑[A211441(n+2)]]`
-/

namespace A104473.P9723811304902433920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211441 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P9723811304902433920

namespace A104473

/-- `∑[∑[A211441(n+2)]]` -/
def P9723811304902433920.Spec : Prop :=
  ∀ n, P9723811304902433920.a n = A104473 n

end A104473

/-! ## A104473.P13976267559971933300

`∑[A212836(n+2)-2]`
-/

namespace A104473.P13976267559971933300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212836 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P13976267559971933300

namespace A104473

/-- `∑[A212836(n+2)-2]` -/
def P13976267559971933300.Spec : Prop :=
  ∀ n, P13976267559971933300.a n = A104473 n

end A104473

/-! ## A104473.P154470970978176750

`∑[3*A077415(n+3)]`
-/

namespace A104473.P154470970978176750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077415 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P154470970978176750

namespace A104473

/-- `∑[3*A077415(n+3)]` -/
def P154470970978176750.Spec : Prop :=
  ∀ n, P154470970978176750.a n = A104473 n

end A104473

/-! ## A104473.P12762242578117503313

`Δ[A074742(n+1)]²-1`
-/

namespace A104473.P12762242578117503313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A104473.P12762242578117503313

namespace A104473

/-- `Δ[A074742(n+1)]²-1` -/
def P12762242578117503313.Spec : Prop :=
  ∀ n, P12762242578117503313.a n = A104473 n

end A104473

/-! ## A104473.P11492231097845817922

`∑[∑[A166143(n+2)+2]]`
-/

namespace A104473.P11492231097845817922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P11492231097845817922

namespace A104473

/-- `∑[∑[A166143(n+2)+2]]` -/
def P11492231097845817922.Spec : Prop :=
  ∀ n, P11492231097845817922.a n = A104473 n

end A104473

/-! ## A104473.P3359219833324241757

`∑[A229013(n+2)+2*n]`
-/

namespace A104473.P3359219833324241757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229013 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P3359219833324241757

namespace A104473

/-- `∑[A229013(n+2)+2*n]` -/
def P3359219833324241757.Spec : Prop :=
  ∀ n, P3359219833324241757.a n = A104473 n

end A104473

/-! ## A104473.P3696914443810060004

`∑[(n+3)*A028347(n+3)]`
-/

namespace A104473.P3696914443810060004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A028347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104473.P3696914443810060004

namespace A104473

/-- `∑[(n+3)*A028347(n+3)]` -/
def P3696914443810060004.Spec : Prop :=
  ∀ n, P3696914443810060004.a n = A104473 n

end A104473

/-! ## A104473.P14593779744868234688

`∑[A090197(n+1)]+(n+1)²`
-/

namespace A104473.P14593779744868234688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A104473.P14593779744868234688

namespace A104473

/-- `∑[A090197(n+1)]+(n+1)²` -/
def P14593779744868234688.Spec : Prop :=
  ∀ n, P14593779744868234688.a n = A104473 n

end A104473

/-!
# A104474: a(n) = binomial(n+3,3)*binomial(n+7,3).

The programs for A104474, the canonical program `A104474.P16458781086807637301` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104474 has offset 0).

The definition of A104474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*C(n+7, 3)` (program `A104474.P16458781086807637301`, by `A104474.P16458781086807637301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104474.P16458781086807637301

`C(n+3, 3)*C(n+7, 3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104474

/-- `C(n+3, 3)*C(n+7, 3)` -/
def P16458781086807637301.Spec : Prop :=
  ∀ n, (P16458781086807637301.a n : ℤ) = A104474 n

theorem P16458781086807637301.correct : P16458781086807637301.Spec := by
  intro n
  simp only [A104474]

end A104474

/-! ## A104474.P5313222393229006482

`1/36*(n+1)*(n+2)*(n+3)*(n+5)*(n+6)*(n+7)`
-/

namespace A104474.P5313222393229006482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 36 * (n + 1 : ℚ) * (n + 2 : ℚ) * (n + 3 : ℚ) * (n + 5 : ℚ) * (n + 6 : ℚ) * (n + 7 : ℚ)

end

end A104474.P5313222393229006482

namespace A104474

/-- `1/36*(n+1)*(n+2)*(n+3)*(n+5)*(n+6)*(n+7)` -/
def P5313222393229006482.Spec : Prop :=
  ∀ n, P5313222393229006482.a n = (A104474 n : ℚ)

end A104474

/-! ## A104474.P774961570988790594

`140*A000580(n+7)/(n+4)`
-/

namespace A104474.P774961570988790594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (140 * A000580 (n + 7) : ℚ) / (n + 4 : ℚ)

end

end A104474.P774961570988790594

namespace A104474

/-- `140*A000580(n+7)/(n+4)` -/
def P774961570988790594.Spec : Prop :=
  ∀ n, P774961570988790594.a n = (A104474 n : ℚ)

end A104474

/-! ## A104474.P10182938401097709269

`∑[abs(Δ[A005286(n)²])]`
-/

namespace A104474.P10182938401097709269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104474.P10182938401097709269

namespace A104474

/-- `∑[abs(Δ[A005286(n)²])]` -/
def P10182938401097709269.Spec : Prop :=
  ∀ n, P10182938401097709269.a n = A104474 n

end A104474

/-! ## A104474.P2609809641213100875

`A005286(n+1)²-1`
-/

namespace A104474.P2609809641213100875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 (n + 1) ^ 2 - 1

end

end A104474.P2609809641213100875

namespace A104474

/-- `A005286(n+1)²-1` -/
def P2609809641213100875.Spec : Prop :=
  ∀ n, P2609809641213100875.a n = A104474 n

end A104474

/-! ## A104474.P7368726260157513029

`A105939(n+1)*A105939(n)/A027790(n+3)`
-/

namespace A104474.P7368726260157513029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105939 (n + 1) * A105939 n : ℚ) / (A027790 (n + 3) : ℚ)

end

end A104474.P7368726260157513029

namespace A104474

/-- `A105939(n+1)*A105939(n)/A027790(n+3)` -/
def P7368726260157513029.Spec : Prop :=
  ∀ n, P7368726260157513029.a n = (A104474 n : ℚ)

end A104474

/-! ## A104474.P924143967339498657

`A062264(A167614(n+2))`
-/

namespace A104474.P924143967339498657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (A167614 (n + 2)).toNat

end

end A104474.P924143967339498657

namespace A104474

/-- `A062264(A167614(n+2))` -/
def P924143967339498657.Spec : Prop :=
  ∀ n, P924143967339498657.a n = A104474 n

end A104474

/-! ## A104474.P3538181214429078781

`A178301(A052905(n)+8)`
-/

namespace A104474.P3538181214429078781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A052905 n + 8).toNat

end

end A104474.P3538181214429078781

namespace A104474

/-- `A178301(A052905(n)+8)` -/
def P3538181214429078781.Spec : Prop :=
  ∀ n, P3538181214429078781.a n = A104474 n

end A104474

/-! ## A104474.P6142051470318175638

`A178301(A055999(n)+9)`
-/

namespace A104474.P6142051470318175638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178301 (A055999 n + 9).toNat

end

end A104474.P6142051470318175638

namespace A104474

/-- `A178301(A055999(n)+9)` -/
def P6142051470318175638.Spec : Prop :=
  ∀ n, P6142051470318175638.a n = A104474 n

end A104474

/-!
# A104475: a(n) = binomial(n+4,4) * binomial(n+8,4).

The programs for A104475, the canonical program `A104475.P16613940170614013258` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104475 has offset 0).

The definition of A104475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*C(n+8, 4)` (program `A104475.P16613940170614013258`, by `A104475.P16613940170614013258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104475.P16613940170614013258

`C(n+4, 4)*C(n+8, 4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104475

/-- `C(n+4, 4)*C(n+8, 4)` -/
def P16613940170614013258.Spec : Prop :=
  ∀ n, (P16613940170614013258.a n : ℤ) = A104475 n

theorem P16613940170614013258.correct : P16613940170614013258.Spec := by
  intro n
  simp only [A104475]

end A104475

/-! ## A104475.P16730994054173301246

`70*A000581(n+8)`
-/

namespace A104475.P16730994054173301246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A000581 (n + 8)

end

end A104475.P16730994054173301246

namespace A104475

/-- `70*A000581(n+8)` -/
def P16730994054173301246.Spec : Prop :=
  ∀ n, P16730994054173301246.a n = A104475 n

end A104475

/-! ## A104475.P11371789521097603542

`70*C(n+8, 8)`
-/

namespace A104475.P11371789521097603542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  70 * Nat.choose (n + 8) 8

end

end A104475.P11371789521097603542

namespace A104475

/-- `70*C(n+8, 8)` -/
def P11371789521097603542.Spec : Prop :=
  ∀ n, (P11371789521097603542.a n : ℤ) = A104475 n

end A104475

/-! ## A104475.P17608020622502225470

`(8/n+1)*a(n-1)` with `a(0)=70`
-/

namespace A104475.P17608020622502225470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [70] fun n a =>
  (8 / (n : ℚ) + 1) * a (n - 1)

end

end A104475.P17608020622502225470

namespace A104475

/-- `(8/n+1)*a(n-1)` -/
def P17608020622502225470.Spec : Prop :=
  ∀ n, P17608020622502225470.a n = (A104475 n : ℚ)

end A104475

/-! ## A104475.P14273947415030205289

`∑[70*A000580(n+7)]`
-/

namespace A104475.P14273947415030205289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104475.P14273947415030205289

namespace A104475

/-- `∑[70*A000580(n+7)]` -/
def P14273947415030205289.Spec : Prop :=
  ∀ n, P14273947415030205289.a n = A104475 n

end A104475

/-! ## A104475.P14545585844124060607

`10*(A097299(n)+A054487(n))`
-/

namespace A104475.P14545585844124060607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A097299 n + A054487 n)

end

end A104475.P14545585844124060607

namespace A104475

/-- `10*(A097299(n)+A054487(n))` -/
def P14545585844124060607.Spec : Prop :=
  ∀ n, P14545585844124060607.a n = A104475 n

end A104475

/-! ## A104475.P14946202848959335529

`5*A088625(n+8)`
-/

namespace A104475.P14946202848959335529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088625 (n + 8)

end

end A104475.P14946202848959335529

namespace A104475

/-- `5*A088625(n+8)` -/
def P14946202848959335529.Spec : Prop :=
  ∀ n, P14946202848959335529.a n = A104475 n

end A104475

/-! ## A104475.P15423018491980783468

`A000332(n+4)*A000332(n+8)`
-/

namespace A104475.P15423018491980783468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000332 (n + 8)

end

end A104475.P15423018491980783468

namespace A104475

/-- `A000332(n+4)*A000332(n+8)` -/
def P15423018491980783468.Spec : Prop :=
  ∀ n, P15423018491980783468.a n = A104475 n

end A104475

/-! ## A104475.P385206226761694617

`70*A007318(A134227(n+7)-3)`
-/

namespace A104475.P385206226761694617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A007318 (A134227 (n + 7) - 3).toNat

end

end A104475.P385206226761694617

namespace A104475

/-- `70*A007318(A134227(n+7)-3)` -/
def P385206226761694617.Spec : Prop :=
  ∀ n, P385206226761694617.a n = A104475 n

end A104475

/-! ## A104475.P3078853425224316954

`A089627(A000217(n+8)+4)`
-/

namespace A104475.P3078853425224316954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (A000217 (n + 8) + 4).toNat

end

end A104475.P3078853425224316954

namespace A104475

/-- `A089627(A000217(n+8)+4)` -/
def P3078853425224316954.Spec : Prop :=
  ∀ n, P3078853425224316954.a n = A104475 n

end A104475

/-!
# A104476: a(n) = binomial(n+7,7)*binomial(n+11,7).

The programs for A104476, the canonical program `A104476.P10758786504659540950` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104476 has offset 0).

The definition of A104476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*C(n+11, 7)` (program `A104476.P10758786504659540950`, by `A104476.P10758786504659540950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104476.P10758786504659540950

`C(n+7, 7)*C(n+11, 7)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104476

/-- `C(n+7, 7)*C(n+11, 7)` -/
def P10758786504659540950.Spec : Prop :=
  ∀ n, (P10758786504659540950.a n : ℤ) = A104476 n

theorem P10758786504659540950.correct : P10758786504659540950.Spec := by
  intro n
  simp only [A104476]

end A104476

/-! ## A104476.P6540029553803523454

`A000580(n+7)*A000580(n+11)`
-/

namespace A104476.P6540029553803523454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A000580 (n + 11)

end

end A104476.P6540029553803523454

namespace A104476

/-- `A000580(n+7)*A000580(n+11)` -/
def P6540029553803523454.Spec : Prop :=
  ∀ n, P6540029553803523454.a n = A104476 n

end A104476

/-! ## A104476.P10611362544028898242

`A062264(eq[8, A002260(n+1)])`
-/

namespace A104476.P10611362544028898242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062264 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104476.P10611362544028898242

namespace A104476

/-- `A062264(eq[8, A002260(n+1)])` -/
def P10611362544028898242.Spec : Prop :=
  ∀ n, P10611362544028898242.a n = A104476 n

end A104476

/-! ## A104476.P14505638378853545126

`A007318(A155212(n+4))*A007318(A155212(n+8))`
-/

namespace A104476.P14505638378853545126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155212 (n + 4)).toNat * A007318 (A155212 (n + 8)).toNat

end

end A104476.P14505638378853545126

namespace A104476

/-- `A007318(A155212(n+4))*A007318(A155212(n+8))` -/
def P14505638378853545126.Spec : Prop :=
  ∀ n, P14505638378853545126.a n = A104476 n

end A104476

/-!
# A104477: Number of successive squarefree intervals between primes.

The programs for A104477, the canonical program `A104477.P14182491758873467040` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104477 has offset 1).

The definition of A104477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104477.P14182491758873467040

`and(1, n+1)*A104481(A008619(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A104477

/-- `and(1, n+1)*A104481(A008619(n))` -/
def P14182491758873467040.Spec : Prop :=
  ∀ n, P14182491758873467040.a n = A104477 (n + 1)

theorem P14182491758873467040.correct : P14182491758873467040.Spec := by
  intro n
  simp only [A104477, Nat.add_sub_cancel]

end A104477

/-! ## A104477.P4698537344877409904

`char[2*n]*A104481(A003602(n+1))`
-/

namespace A104477.P4698537344877409904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A104481 (A003602 (n + 1)).toNat

end

end A104477.P4698537344877409904

namespace A104477

/-- `char[2*n]*A104481(A003602(n+1))` -/
def P4698537344877409904.Spec : Prop :=
  ∀ n, P4698537344877409904.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P13755906265461525004

`(n+1)%2*A104481(A004526(n)+1)`
-/

namespace A104477.P13755906265461525004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A104481 (A004526 n + 1).toNat

end

end A104477.P13755906265461525004

namespace A104477

/-- `(n+1)%2*A104481(A004526(n)+1)` -/
def P13755906265461525004.Spec : Prop :=
  ∀ n, P13755906265461525004.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P9654616562206836194

`A014085(A158416(n))-A000034(n)`
-/

namespace A104477.P9654616562206836194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A158416 n).toNat - A000034 n

end

end A104477.P9654616562206836194

namespace A104477

/-- `A014085(A158416(n))-A000034(n)` -/
def P9654616562206836194.Spec : Prop :=
  ∀ n, P9654616562206836194.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P16896504964194020928

`A059841(n)*A104481(A008619(n))`
-/

namespace A104477.P16896504964194020928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A104481 (A008619 n).toNat

end

end A104477.P16896504964194020928

namespace A104477

/-- `A059841(n)*A104481(A008619(n))` -/
def P16896504964194020928.Spec : Prop :=
  ∀ n, P16896504964194020928.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P9814505604308258054

`lcm(A056594(n), A104481(A008619(n)))`
-/

namespace A104477.P9814505604308258054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A104481 (A008619 n).toNat)

end

end A104477.P9814505604308258054

namespace A104477

/-- `lcm(A056594(n), A104481(A008619(n)))` -/
def P9814505604308258054.Spec : Prop :=
  ∀ n, (P9814505604308258054.a n : ℤ) = A104477 (n + 1)

end A104477

/-! ## A104477.P9667023919292552013

`Δ[A038107(A080513(n))-A080513(n)]`
-/

namespace A104477.P9667023919292552013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A080513 n).toNat - A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104477.P9667023919292552013

namespace A104477

/-- `Δ[A038107(A080513(n))-A080513(n)]` -/
def P9667023919292552013.Spec : Prop :=
  ∀ n, P9667023919292552013.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P11669472649890776065

`Δ[A038107(A008619(n+1))-A008619(n+1)]`
-/

namespace A104477.P11669472649890776065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008619 (n + 1)).toNat - A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104477.P11669472649890776065

namespace A104477

/-- `Δ[A038107(A008619(n+1))-A008619(n+1)]` -/
def P11669472649890776065.Spec : Prop :=
  ∀ n, P11669472649890776065.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P6761373396981955715

`Δ[A000720(A080513(n)²)-A080513(n)]`
-/

namespace A104477.P6761373396981955715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A080513 n ^ 2).toNat - A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104477.P6761373396981955715

namespace A104477

/-- `Δ[A000720(A080513(n)²)-A080513(n)]` -/
def P6761373396981955715.Spec : Prop :=
  ∀ n, P6761373396981955715.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P4859283363318982862

`A014085(A002260(A134519(n+1)))-A000034(n)`
-/

namespace A104477.P4859283363318982862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A002260 (A134519 (n + 1)).toNat).toNat - A000034 n

end

end A104477.P4859283363318982862

namespace A104477

/-- `A014085(A002260(A134519(n+1)))-A000034(n)` -/
def P4859283363318982862.Spec : Prop :=
  ∀ n, P4859283363318982862.a n = A104477 (n + 1)

end A104477

/-! ## A104477.P8512706095234466194

`A056594(n²)*A104481(A008619(n))`
-/

namespace A104477.P8512706095234466194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A104481 (A008619 n).toNat

end

end A104477.P8512706095234466194

namespace A104477

/-- `A056594(n²)*A104481(A008619(n))` -/
def P8512706095234466194.Spec : Prop :=
  ∀ n, P8512706095234466194.a n = A104477 (n + 1)

end A104477

/-!
# A104478: a(n) = binomial(n+8,8)*binomial(n+12,8).

The programs for A104478, the canonical program `A104478.P5072429885755652543` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104478 has offset 0).

The definition of A104478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*C(n+12, 8)` (program `A104478.P5072429885755652543`, by `A104478.P5072429885755652543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A104478.P5072429885755652543

`C(n+8, 8)*C(n+12, 8)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A104478

/-- `C(n+8, 8)*C(n+12, 8)` -/
def P5072429885755652543.Spec : Prop :=
  ∀ n, (P5072429885755652543.a n : ℤ) = A104478 n

theorem P5072429885755652543.correct : P5072429885755652543.Spec := by
  intro n
  simp only [A104478]

end A104478

/-! ## A104478.P10890111403220166605

`A000581(n+8)*A000581(n+12)`
-/

namespace A104478.P10890111403220166605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000581 (n + 12)

end

end A104478.P10890111403220166605

namespace A104478

/-- `A000581(n+8)*A000581(n+12)` -/
def P10890111403220166605.Spec : Prop :=
  ∀ n, P10890111403220166605.a n = A104478 n

end A104478

/-! ## A104478.P3697980520922489436

`A140325(n+4)/A000079(n+2)²*A140325(n)`
-/

namespace A104478.P3697980520922489436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 (n + 4) : ℚ) / (A000079 (n + 2) ^ 2 : ℚ) * (A140325 n : ℚ)

end

end A104478.P3697980520922489436

namespace A104478

/-- `A140325(n+4)/A000079(n+2)²*A140325(n)` -/
def P3697980520922489436.Spec : Prop :=
  ∀ n, P3697980520922489436.a n = (A104478 n : ℚ)

end A104478

/-! ## A104478.P9614312816762801635

`A140325(n+4)/A000079(2*(n+2))*A140325(n)`
-/

namespace A104478.P9614312816762801635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 (n + 4) : ℚ) / (A000079 (2 * (n + 2)) : ℚ) * (A140325 n : ℚ)

end

end A104478.P9614312816762801635

namespace A104478

/-- `A140325(n+4)/A000079(2*(n+2))*A140325(n)` -/
def P9614312816762801635.Spec : Prop :=
  ∀ n, P9614312816762801635.a n = (A104478 n : ℚ)

end A104478

/-! ## A104478.P16575607636758457608

`A054142(A052905(n+2))*A054142(A052905(n+6))`
-/

namespace A104478.P16575607636758457608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A052905 (n + 2)).toNat * A054142 (A052905 (n + 6)).toNat

end

end A104478.P16575607636758457608

namespace A104478

/-- `A054142(A052905(n+2))*A054142(A052905(n+6))` -/
def P16575607636758457608.Spec : Prop :=
  ∀ n, P16575607636758457608.a n = A104478 n

end A104478

/-!
# A104479: Positive integers n such that n^16 + 1 is semiprime (A001358).

The programs for A104479, there is no canonical definition to state claims against.
-/

/-! ## A104479.P11305683449264445312

`eq[2, A194003(n²)]`
-/

namespace A104479.P11305683449264445312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104479.P11305683449264445312

/-! ## A104479.P14574705222422122217

`eq[2, A194003(∑[2*n+1])!]+1`
-/

namespace A104479.P14574705222422122217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A194003 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A104479.P14574705222422122217

/-! ## A104479.P13998291941222464284

`eq[2, A194003(A000290(n))!]`
-/

namespace A104479.P13998291941222464284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A194003 (A000290 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104479.P13998291941222464284

/-! ## A104479.P5355430710077504783

`eq[A194003(A000290(n)), A239374(n+2)]`
-/

namespace A104479.P5355430710077504783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (A000290 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239374 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104479.P5355430710077504783

/-! ## A104479.P3894323025154895754

`eq[A194003(A253909(n)), A239374(n+2)]`
-/

namespace A104479.P3894323025154895754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239374 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104479.P3894323025154895754

/-!
# A104480: Numbers m such that the period length P(m) of the Fibonacci sequence modulo m is a perfect square.

The programs for A104480, there is no canonical definition to state claims against.
-/

/-! ## A104480.P8286246231412561615

`lt[A053186(A001175(n+1)), 1]+1`
-/

namespace A104480.P8286246231412561615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A001175 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A104480.P8286246231412561615

/-! ## A104480.P11557819851498486344

`eq[1, A003285(A001175(n+1)+1)]+1`
-/

namespace A104480.P11557819851498486344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A001175 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104480.P11557819851498486344

/-!
# A104481: Bisection of A104477.

The programs for A104481, the canonical program `A104481.P11972793429433204995` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104481 has offset 1).

The definition of A104481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104481.P11072554850552244734

`A014085(n+1)-1`
-/

namespace A104481.P11072554850552244734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1) - 1

end

end A104481.P11072554850552244734

namespace A104481

/-- `A014085(n+1)-1` -/
def P11072554850552244734.Spec : Prop :=
  ∀ n, P11072554850552244734.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P11972793429433204995

`A180304(n+1)/(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A104481

/-- `A180304(n+1)/(n+1)-1` -/
def P11972793429433204995.Spec : Prop :=
  ∀ n, P11972793429433204995.a n = (A104481 (n + 1) : ℚ)

end A104481

/-! ## A104481.P399059035394637781

`A023443(A014085(n+1))`
-/

namespace A104481.P399059035394637781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A014085 (n + 1)).toNat

end

end A104481.P399059035394637781

namespace A104481

/-- `A023443(A014085(n+1))` -/
def P399059035394637781.Spec : Prop :=
  ∀ n, P399059035394637781.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P6133885130183395141

`A289207(A014085(n+1)+1)`
-/

namespace A104481.P6133885130183395141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A014085 (n + 1) + 1).toNat

end

end A104481.P6133885130183395141

namespace A104481

/-- `A289207(A014085(n+1)+1)` -/
def P6133885130183395141.Spec : Prop :=
  ∀ n, P6133885130183395141.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P15030393858459710096

`Δ[∑[A014085(n)]-n]`
-/

namespace A104481.P15030393858459710096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104481.P15030393858459710096

namespace A104481

/-- `Δ[∑[A014085(n)]-n]` -/
def P15030393858459710096.Spec : Prop :=
  ∀ n, P15030393858459710096.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P4106336382171984618

`Δ[A147609(n+1)]+1`
-/

namespace A104481.P4106336382171984618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A104481.P4106336382171984618

namespace A104481

/-- `Δ[A147609(n+1)]+1` -/
def P4106336382171984618.Spec : Prop :=
  ∀ n, P4106336382171984618.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P8546501322496222620

`Δ[A161187(n+1)]-2`
-/

namespace A104481.P8546501322496222620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A104481.P8546501322496222620

namespace A104481

/-- `Δ[A161187(n+1)]-2` -/
def P8546501322496222620.Spec : Prop :=
  ∀ n, P8546501322496222620.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P3485219734746551375

`Δ[A038107(n+1)]-1`
-/

namespace A104481.P3485219734746551375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A104481.P3485219734746551375

namespace A104481

/-- `Δ[A038107(n+1)]-1` -/
def P3485219734746551375.Spec : Prop :=
  ∀ n, P3485219734746551375.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P5069389810635064419

`A104477(Δ[n²])`
-/

namespace A104481.P5069389810635064419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A104481.P5069389810635064419

namespace A104481

/-- `A104477(Δ[n²])` -/
def P5069389810635064419.Spec : Prop :=
  ∀ n, P5069389810635064419.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P5393490549316853690

`A104477(2*n+1)%(n+2)`
-/

namespace A104481.P5393490549316853690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104477 (2 * n + 1)) (n + 2 : ℤ)

end

end A104481.P5393490549316853690

namespace A104481

/-- `A104477(2*n+1)%(n+2)` -/
def P5393490549316853690.Spec : Prop :=
  ∀ n, P5393490549316853690.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P5490127515460229722

`A104477(2*n+1)+A104477(2*(n+1))`
-/

namespace A104481.P5490127515460229722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (2 * n + 1) + A104477 (2 * (n + 1))

end

end A104481.P5490127515460229722

namespace A104481

/-- `A104477(2*n+1)+A104477(2*(n+1))` -/
def P5490127515460229722.Spec : Prop :=
  ∀ n, P5490127515460229722.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P16208338783146409326

`Δ[A220506(2*(n+1))]-1`
-/

namespace A104481.P16208338783146409326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A104481.P16208338783146409326

namespace A104481

/-- `Δ[A220506(2*(n+1))]-1` -/
def P16208338783146409326.Spec : Prop :=
  ∀ n, P16208338783146409326.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P15578086322407398094

`Δ[A000720((n+1)²)]-1`
-/

namespace A104481.P15578086322407398094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A104481.P15578086322407398094

namespace A104481

/-- `Δ[A000720((n+1)²)]-1` -/
def P15578086322407398094.Spec : Prop :=
  ∀ n, P15578086322407398094.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P15406459678034627273

`A327802(A333241(A014085(A060715(A060756(n+1)))))`
-/

namespace A104481.P15406459678034627273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (A333241 (A014085 (A060715 (A060756 (n + 1)).toNat).toNat).toNat).toNat

end

end A104481.P15406459678034627273

namespace A104481

/-- `A327802(A333241(A014085(A060715(A060756(n+1)))))` -/
def P15406459678034627273.Spec : Prop :=
  ∀ n, P15406459678034627273.a n = A104481 (n + 1)

end A104481

/-! ## A104481.P14639191576788959873

`A213649(A038107(n+1)+2)`
-/

namespace A104481.P14639191576788959873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213649 (A038107 (n + 1) + 2).toNat

end

end A104481.P14639191576788959873

namespace A104481

/-- `A213649(A038107(n+1)+2)` -/
def P14639191576788959873.Spec : Prop :=
  ∀ n, P14639191576788959873.a n = A104481 (n + 1)

end A104481

/-!
# A104482: Number of distinct prime divisors of 11...119 (with n 1's).

The programs for A104482, there is no canonical definition to state claims against.
-/

/-! ## A104482.P14186708310414242590

`A051700(A065189(Δ[A276600(n+1)]))`
-/

namespace A104482.P14186708310414242590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A065189 (f1 (n + 1) - f1 n).toNat).toNat

end

end A104482.P14186708310414242590

/-! ## A104482.P2905097639759578151

`A001221(or(A152672(n+1), A289103(n)))`
-/

namespace A104482.P2905097639759578151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A152672 (n + 1)) (A289103 n)).toNat

end

end A104482.P2905097639759578151

/-! ## A104482.P395230651460713061

`A230415(A306950(n+1))`
-/

namespace A104482.P395230651460713061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (A306950 (n + 1)).toNat

end

end A104482.P395230651460713061

/-! ## A104482.P13302513878790949607

`A069010(A281038(n)+A000040(n+5))`
-/

namespace A104482.P13302513878790949607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A281038 n + A000040 (n + 5)).toNat

end

end A104482.P13302513878790949607

/-!
# A104483: Number of distinct prime divisors of 33...337 (with n 3s).

The programs for A104483, there is no canonical definition to state claims against.
-/

/-! ## A104483.P14253155871156970431

`A275806(A334544(n+1)+A331508(n))`
-/

namespace A104483.P14253155871156970431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A334544 (n + 1) + A331508 n).toNat

end

end A104483.P14253155871156970431

/-! ## A104483.P11303893991175362578

`A001221(A099801(n+4)*A187502(2*n+3))`
-/

namespace A104483.P11303893991175362578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A099801 (n + 4) * A187502 (2 * n + 3)).toNat

end

end A104483.P11303893991175362578

/-!
# A104484: Number of distinct prime divisors of 33...331 (with n 3s).

The programs for A104484, there is no canonical definition to state claims against.
-/

/-! ## A104484.P6067078278626291994

`floor(log2(A105267(n)))`
-/

namespace A104484.P6067078278626291994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A105267 n).toNat

end

end A104484.P6067078278626291994

/-! ## A104484.P6790855070397313062

`A000523(A105267(n))`
-/

namespace A104484.P6790855070397313062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A105267 n).toNat

end

end A104484.P6790855070397313062

/-! ## A104484.P8260913041877242334

`A000120(A105267(n)-1)`
-/

namespace A104484.P8260913041877242334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105267 n - 1).toNat

end

end A104484.P8260913041877242334

/-! ## A104484.P4744698267153003425

`A252736(2*A105267(n))`
-/

namespace A104484.P4744698267153003425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A105267 n).toNat

end

end A104484.P4744698267153003425

/-! ## A104484.P5455148978276183622

`A020951(3*A105267(n))`
-/

namespace A104484.P5455148978276183622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (3 * A105267 n).toNat

end

end A104484.P5455148978276183622

/-! ## A104484.P6656038219401874796

`A083912(27*A105267(n))`
-/

namespace A104484.P6656038219401874796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (27 * A105267 n).toNat

end

end A104484.P6656038219401874796

/-! ## A104484.P1609921040946728303

`∑{d}[A105267(n), A069513(#)]`
-/

namespace A104484.P1609921040946728303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A104484.P1609921040946728303

/-! ## A104484.P13907420973199525758

`∑{e}[A105267(n), A000027(#)]`
-/

namespace A104484.P13907420973199525758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A104484.P13907420973199525758

/-! ## A104484.P2403485420206370981

`∑{e}[A105267(n), A002377(#)]`
-/

namespace A104484.P2403485420206370981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002377 (Nat.factorization (f1 n).natAbs p)

end

end A104484.P2403485420206370981

/-! ## A104484.P15594498770233016160

`∑{e}[A105267(n), A044916(#)]`
-/

namespace A104484.P15594498770233016160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A044916 (Nat.factorization (f1 n).natAbs p)

end

end A104484.P15594498770233016160

/-! ## A104484.P1926245670534665864

`∑{e}[A105267(n), A161953(#)]`
-/

namespace A104484.P1926245670534665864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A161953 (Nat.factorization (f1 n).natAbs p)

end

end A104484.P1926245670534665864

/-! ## A104484.P8086274428713007232

`∑{e}[A105267(n)%A000040(n+1)², #]`
-/

namespace A104484.P8086274428713007232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105267 n) (A000040 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A104484.P8086274428713007232

/-! ## A104484.P6347581228989563961

`∑{d}[A105267(n), A001221(A014963(#))]`
-/

namespace A104484.P6347581228989563961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A104484.P6347581228989563961

/-! ## A104484.P12866299824939207872

`A001222(A105267(n)²)/2`
-/

namespace A104484.P12866299824939207872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A105267 n ^ 2).toNat : ℚ) / 2

end

end A104484.P12866299824939207872

/-!
# A104485: Primes p = p(k) such that prime(k) + 2 and prime(k+1) + 2 are both semiprimes.

The programs for A104485, there is no canonical definition to state claims against.
-/

/-! ## A104485.P10339921161747280334

`∩[A063637(n+1), A064989(A063637(n+1))]`
-/

namespace A104485.P10339921161747280334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A063637 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104485.P10339921161747280334

/-! ## A104485.P11196212599819450475

`∩[A109611(n+1), A064989(A117242(n+1))]`
-/

namespace A104485.P11196212599819450475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A117242 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104485.P11196212599819450475

/-! ## A104485.P9215530532921266847

`∩[A063637(n+2), A252463(A063637(n+2))]`
-/

namespace A104485.P9215530532921266847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A063637 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104485.P9215530532921266847

/-!
# A104486: Smallest semiprime containing exactly n 0's.

The programs for A104486, there is no canonical definition to state claims against.
-/

/-! ## A104486.P7519931131482684314

`A098449(A077739(n+1)+A057427(n)+1)`
-/

namespace A104486.P7519931131482684314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (A077739 (n + 1) + (A057427 n + 1)).toNat

end

end A104486.P7519931131482684314

/-! ## A104486.P8643377539170776387

`A098449(A077739(n+2)+A057427(n))`
-/

namespace A104486.P8643377539170776387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098449 (A077739 (n + 2) + A057427 n).toNat

end

end A104486.P8643377539170776387

/-!
# A104487: a(n+3) = 6a(n+2) - 10a(n+1) + 3a(n); a(0) = 1, a(1) = 4, a(2) = 14.

The programs for A104487, the canonical program `A104487.P4628420298259898103` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104487 has offset 0).

The definition of A104487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104487.P6110413944055980455

`ogf((1-2x)/(1-6x+10x^2-3x^3))`
-/

namespace A104487.P6110413944055980455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, 10, -3] n

end

end A104487.P6110413944055980455

namespace A104487

/-- `ogf((1-2x)/(1-6x+10x^2-3x^3))` -/
def P6110413944055980455.Spec : Prop :=
  ∀ n, P6110413944055980455.a n = A104487 n

end A104487

/-! ## A104487.P7550318766430102941

`record[A191584(n)]`
-/

namespace A104487.P7550318766430102941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104487.P7550318766430102941

namespace A104487

/-- `record[A191584(n)]` -/
def P7550318766430102941.Spec : Prop :=
  ∀ n, P7550318766430102941.a n = A104487 n

end A104487

/-! ## A104487.P1934264399859533433

`A191584(2*n)`
-/

namespace A104487.P1934264399859533433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191584 (2 * n)

end

end A104487.P1934264399859533433

namespace A104487

/-- `A191584(2*n)` -/
def P1934264399859533433.Spec : Prop :=
  ∀ n, P1934264399859533433.a n = A104487 n

end A104487

/-! ## A104487.P4628420298259898103

`Δ[A285197(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104487

/-- `Δ[A285197(n+1)]` -/
def P4628420298259898103.Spec : Prop :=
  ∀ n, P4628420298259898103.a n = A104487 n

theorem P4628420298259898103.correct : P4628420298259898103.Spec := by
  intro n
  simp only [A104487]

end A104487

/-! ## A104487.P10729634622677254059

`3^(n+1)-A048575(n)`
-/

namespace A104487.P10729634622677254059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A048575 n

end

end A104487.P10729634622677254059

namespace A104487

/-- `3^(n+1)-A048575(n)` -/
def P10729634622677254059.Spec : Prop :=
  ∀ n, P10729634622677254059.a n = A104487 n

end A104487

/-! ## A104487.P8783517395724142323

`3^(n+1)-A122367(n+1)`
-/

namespace A104487.P8783517395724142323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A122367 (n + 1)

end

end A104487.P8783517395724142323

namespace A104487

/-- `3^(n+1)-A122367(n+1)` -/
def P8783517395724142323.Spec : Prop :=
  ∀ n, P8783517395724142323.a n = A104487 n

end A104487

/-! ## A104487.P13421516157703893341

`3^(n+1)-A001519(n+2)`
-/

namespace A104487.P13421516157703893341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A001519 (n + 2)

end

end A104487.P13421516157703893341

namespace A104487

/-- `3^(n+1)-A001519(n+2)` -/
def P13421516157703893341.Spec : Prop :=
  ∀ n, P13421516157703893341.a n = A104487 n

end A104487

/-! ## A104487.P4399257948366878830

`3^(n+1)-A000045(2*n+3)`
-/

namespace A104487.P4399257948366878830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A000045 (2 * n + 3)

end

end A104487.P4399257948366878830

namespace A104487

/-- `3^(n+1)-A000045(2*n+3)` -/
def P4399257948366878830.Spec : Prop :=
  ∀ n, P4399257948366878830.a n = A104487 n

end A104487

/-! ## A104487.P9748598691144606241

`record[A056449(n+1)-A020695(n)]`
-/

namespace A104487.P9748598691144606241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (n + 1) - A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104487.P9748598691144606241

namespace A104487

/-- `record[A056449(n+1)-A020695(n)]` -/
def P9748598691144606241.Spec : Prop :=
  ∀ n, P9748598691144606241.a n = A104487 n

end A104487

/-! ## A104487.P10794796731740812978

`A186314(n+1)+A001906(n+1)`
-/

namespace A104487.P10794796731740812978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186314 (n + 1) + A001906 (n + 1)

end

end A104487.P10794796731740812978

namespace A104487

/-- `A186314(n+1)+A001906(n+1)` -/
def P10794796731740812978.Spec : Prop :=
  ∀ n, P10794796731740812978.a n = A104487 n

end A104487

/-! ## A104487.P523645034780601697

`A186314(n+1)+A088305(n+1)`
-/

namespace A104487.P523645034780601697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186314 (n + 1) + A088305 (n + 1)

end

end A104487.P523645034780601697

namespace A104487

/-- `A186314(n+1)+A088305(n+1)` -/
def P523645034780601697.Spec : Prop :=
  ∀ n, P523645034780601697.a n = A104487 n

end A104487

/-! ## A104487.P11760175680904559275

`A060188(n+2)-A152891(n+1)`
-/

namespace A104487.P11760175680904559275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060188 (n + 2) - A152891 (n + 1)

end

end A104487.P11760175680904559275

namespace A104487

/-- `A060188(n+2)-A152891(n+1)` -/
def P11760175680904559275.Spec : Prop :=
  ∀ n, P11760175680904559275.a n = A104487 n

end A104487

/-! ## A104487.P3997327420205707817

`A285197(n+2)-A285197(n+1)`
-/

namespace A104487.P3997327420205707817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285197 (n + 2) - A285197 (n + 1)

end

end A104487.P3997327420205707817

namespace A104487

/-- `A285197(n+2)-A285197(n+1)` -/
def P3997327420205707817.Spec : Prop :=
  ∀ n, P3997327420205707817.a n = A104487 n

theorem P3997327420205707817.correct : P3997327420205707817.Spec := by
  intro n
  simp only [A104487, Nat.add_sub_cancel, A104487.P3997327420205707817.a, A104487.P4628420298259898103.f1, A104487.P4628420298259898103.a, SequenceMachineLib.memo_apply]

end A104487

/-! ## A104487.P2049065198534983463

`A186314(n+1)+A147600(2*n)`
-/

namespace A104487.P2049065198534983463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186314 (n + 1) + A147600 (2 * n)

end

end A104487.P2049065198534983463

namespace A104487

/-- `A186314(n+1)+A147600(2*n)` -/
def P2049065198534983463.Spec : Prop :=
  ∀ n, P2049065198534983463.a n = A104487 n

end A104487

/-! ## A104487.P9934321644733498126

`A000244(n+1)-A020695(2*n)`
-/

namespace A104487.P9934321644733498126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - A020695 (2 * n)

end

end A104487.P9934321644733498126

namespace A104487

/-- `A000244(n+1)-A020695(2*n)` -/
def P9934321644733498126.Spec : Prop :=
  ∀ n, P9934321644733498126.a n = A104487 n

end A104487

/-! ## A104487.P12582187560716444712

`A168607(n+1)-A018910(2*n)`
-/

namespace A104487.P12582187560716444712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (n + 1) - A018910 (2 * n)

end

end A104487.P12582187560716444712

namespace A104487

/-- `A168607(n+1)-A018910(2*n)` -/
def P12582187560716444712.Spec : Prop :=
  ∀ n, P12582187560716444712.a n = A104487 n

end A104487

/-! ## A104487.P9398646593941587876

`A262600(n+2)+A048328(2*n+1)`
-/

namespace A104487.P9398646593941587876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262600 (n + 2) + A048328 (2 * n + 1)

end

end A104487.P9398646593941587876

namespace A104487

/-- `A262600(n+2)+A048328(2*n+1)` -/
def P9398646593941587876.Spec : Prop :=
  ∀ n, P9398646593941587876.a n = A104487 n

end A104487

/-! ## A104487.P4302076805739429244

`A056449(2*(n+1))-A020695(2*n)`
-/

namespace A104487.P4302076805739429244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (2 * (n + 1)) - A020695 (2 * n)

end

end A104487.P4302076805739429244

namespace A104487

/-- `A056449(2*(n+1))-A020695(2*n)` -/
def P4302076805739429244.Spec : Prop :=
  ∀ n, P4302076805739429244.a n = A104487 n

end A104487

/-! ## A104487.P18215221976473547176

`A000045(record[A006257(n)])+3*a(n-1)` with `a(0)=1`
-/

namespace A104487.P18215221976473547176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 3 * a (n - 1)

end

end A104487.P18215221976473547176

namespace A104487

/-- `A000045(record[A006257(n)])+3*a(n-1)` -/
def P18215221976473547176.Spec : Prop :=
  ∀ n, P18215221976473547176.a n = A104487 n

end A104487

/-! ## A104487.P1496727004365193705

`A000244(n+1)-Δ[Δ[A000045(2*n+1)]]`
-/

namespace A104487.P1496727004365193705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) - (f1 (n + 1) - f1 n)

end

end A104487.P1496727004365193705

namespace A104487

/-- `A000244(n+1)-Δ[Δ[A000045(2*n+1)]]` -/
def P1496727004365193705.Spec : Prop :=
  ∀ n, P1496727004365193705.a n = A104487 n

end A104487

/-!
# A104488: Number of Hamiltonian groups of order n.

The programs for A104488, there is no canonical definition to state claims against.
-/

/-! ## A104488.P13417512844860378539

`A104404(n+1)-A000688(n+1)`
-/

namespace A104488.P13417512844860378539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - A000688 (n + 1)

end

end A104488.P13417512844860378539

/-! ## A104488.P1211011979051468326

`A104404(n+1)-∑{d}[n+1, A188585(#)]`
-/

namespace A104488.P1211011979051468326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A188585 d

end

end A104488.P1211011979051468326

/-! ## A104488.P3389528203615677581

`A104404(n+1)-∏{e}[n+1, A000041(#)]`
-/

namespace A104488.P3389528203615677581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A104488.P3389528203615677581

/-! ## A104488.P1822801354998964377

`A104404(n+1)-∏{e}[n+1, A330642(#)]`
-/

namespace A104488.P1822801354998964377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A330642 (Nat.factorization (f1 n) p)

end

end A104488.P1822801354998964377

/-! ## A104488.P92976697645476563

`A104404(n+1)-∏{p}[n+1, A000041(val(n+1, #))]`
-/

namespace A104488.P92976697645476563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n), A000041 (SequenceMachineLib.valuation (n + 1) p)

end

end A104488.P92976697645476563

/-! ## A104488.P13679156995452604461

`(A104404(n+1)%A000001(n+1))%A000688(n+1)`
-/

namespace A104488.P13679156995452604461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A104404 (n + 1)) (A000001 (n + 1))) (A000688 (n + 1))

end

end A104488.P13679156995452604461

/-! ## A104488.P14795368661350524245

`A104404(n+1)-A104404(A003961(n+1))`
-/

namespace A104488.P14795368661350524245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - A104404 (A003961 (n + 1)).toNat

end

end A104488.P14795368661350524245

/-! ## A104488.P2432998863921998141

`A104404(n+1)-A104404(A064988(n+1))`
-/

namespace A104488.P2432998863921998141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (n + 1) - A104404 (A064988 (n + 1)).toNat

end

end A104488.P2432998863921998141

/-! ## A104488.P13442609822362557954

`val(A041109(n), 9)`
-/

namespace A104488.P13442609822362557954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A041109 n).toNat 9

end

end A104488.P13442609822362557954

/-! ## A104488.P7458288308587102787

`val(A041597(n), 6*6/2)`
-/

namespace A104488.P7458288308587102787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A041597 n).toNat (SequenceMachineLib.roundAway (6 * ((6 : ℚ) / 2))).toNat

end

end A104488.P7458288308587102787

/-! ## A104488.P4802331282845233556

`val(A042543(n), 9)`
-/

namespace A104488.P4802331282845233556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042543 n).toNat 9

end

end A104488.P4802331282845233556

/-! ## A104488.P1341567664033826945

`val(A042773(n), 9)`
-/

namespace A104488.P1341567664033826945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A042773 n).toNat 9

end

end A104488.P1341567664033826945

/-! ## A104488.P14176860029734861397

`val(∑[A117365(∑[n]+1)²], 8)`
-/

namespace A104488.P14176860029734861397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 8

end

end A104488.P14176860029734861397

/-! ## A104488.P3231606747391632518

`val(A000040(A002024(∑[n]+1)+2)²+n, 8)`
-/

namespace A104488.P3231606747391632518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2).toNat ^ 2 + (n : ℤ)).toNat 8

end

end A104488.P3231606747391632518

/-!
# A104489: Read central column in Table 3 in reference from right to left, convert to base 10.

The programs for A104489, the canonical program `A104489.P2998061387433102461` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104489 has offset 1).

The definition of A104489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104489.P2998061387433102461

`n+2-and(n+1, A103530(n+2))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104489

/-- `n+2-and(n+1, A103530(n+2))` -/
def P2998061387433102461.Spec : Prop :=
  ∀ n, P2998061387433102461.a n = A104489 (n + 1)

theorem P2998061387433102461.correct : P2998061387433102461.Spec := by
  intro n
  simp only [A104489, Nat.add_sub_cancel]

end A104489

/-! ## A104489.P18258809378798028226

`and(n, A102371(n+1))+1`
-/

namespace A104489.P18258809378798028226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A102371 (n + 1)) + 1

end

end A104489.P18258809378798028226

namespace A104489

/-- `and(n, A102371(n+1))+1` -/
def P18258809378798028226.Spec : Prop :=
  ∀ n, P18258809378798028226.a n = A104489 (n + 1)

end A104489

/-! ## A104489.P13972267680601666237

`1-and(n, A105033(n))+n`
-/

namespace A104489.P13972267680601666237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A105033 n) + (n : ℤ)

end

end A104489.P13972267680601666237

namespace A104489

/-- `1-and(n, A105033(n))+n` -/
def P13972267680601666237.Spec : Prop :=
  ∀ n, P13972267680601666237.a n = A104489 (n + 1)

end A104489

/-! ## A104489.P12467825116482977540

`and(n, A103529(n+2))+1`
-/

namespace A104489.P12467825116482977540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A103529 (n + 2)) + 1

end

end A104489.P12467825116482977540

namespace A104489

/-- `and(n, A103529(n+2))+1` -/
def P12467825116482977540.Spec : Prop :=
  ∀ n, P12467825116482977540.a n = A104489 (n + 1)

end A104489

/-! ## A104489.P9746425683643026357

`and(n, A105024(n+1)-(n+1))+1`
-/

namespace A104489.P9746425683643026357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A105024 (n + 1) - (n + 1 : ℤ)) + 1

end

end A104489.P9746425683643026357

namespace A104489

/-- `and(n, A105024(n+1)-(n+1))+1` -/
def P9746425683643026357.Spec : Prop :=
  ∀ n, P9746425683643026357.a n = A104489 (n + 1)

end A104489

/-!
# A104490: Read central column in Table 3 in reference from right to left.

The programs for A104490, the canonical program `A104490.P4559893148070478827` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104490 has offset 1).

The definition of A104490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104490.P4559893148070478827

`A007088(A104489(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A104490

/-- `A007088(A104489(n+1))` -/
def P4559893148070478827.Spec : Prop :=
  ∀ n, P4559893148070478827.a n = A104490 (n + 1)

theorem P4559893148070478827.correct : P4559893148070478827.Spec := by
  intro n
  simp only [A104490, Nat.add_sub_cancel]

end A104490

/-! ## A104490.P15826813928873092204

`A185544(2*A104489(n+1))`
-/

namespace A104490.P15826813928873092204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A104489 (n + 1)).toNat

end

end A104490.P15826813928873092204

namespace A104490

/-- `A185544(2*A104489(n+1))` -/
def P15826813928873092204.Spec : Prop :=
  ∀ n, P15826813928873092204.a n = A104490 (n + 1)

end A104490

/-! ## A104490.P13338274834100008391

`A185544(lcm(2, A104489(n+1)))`
-/

namespace A104490.P13338274834100008391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A104489 (n + 1)))

end

end A104490.P13338274834100008391

namespace A104490

/-- `A185544(lcm(2, A104489(n+1)))` -/
def P13338274834100008391.Spec : Prop :=
  ∀ n, P13338274834100008391.a n = A104490 (n + 1)

end A104490

/-! ## A104490.P1504625101187881970

`A007088(and(n, A102371(n+1))+1)`
-/

namespace A104490.P1504625101187881970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (n : ℤ) (A102371 (n + 1)) + 1).toNat

end

end A104490.P1504625101187881970

namespace A104490

/-- `A007088(and(n, A102371(n+1))+1)` -/
def P1504625101187881970.Spec : Prop :=
  ∀ n, P1504625101187881970.a n = A104490 (n + 1)

end A104490

/-! ## A104490.P6055004799856867553

`A007088(and(n, A103529(n+2))+1)`
-/

namespace A104490.P6055004799856867553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (n : ℤ) (A103529 (n + 2)) + 1).toNat

end

end A104490.P6055004799856867553

namespace A104490

/-- `A007088(and(n, A103529(n+2))+1)` -/
def P6055004799856867553.Spec : Prop :=
  ∀ n, P6055004799856867553.a n = A104490 (n + 1)

end A104490

/-!
# A104491: Prime numbers n for which the square excess of the n-th prime is prime.

The programs for A104491, there is no canonical definition to state claims against.
-/

/-! ## A104491.P4676767818812104845

`p?[A102821(n)]`
-/

namespace A104491.P4676767818812104845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104491.P4676767818812104845

/-! ## A104491.P4950124438583142300

`filter[A102821(n), A010051(#)]`
-/

namespace A104491.P4950124438583142300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A104491.P4950124438583142300

/-! ## A104491.P11516567960044707253

`filter[A102821(n), A080339(#)]`
-/

namespace A104491.P11516567960044707253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A104491.P11516567960044707253

/-! ## A104491.P12531957476552619363

`record[A006530(A102821(n)²)]`
-/

namespace A104491.P12531957476552619363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102821 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104491.P12531957476552619363

/-!
# A104492: Cube excess of the n-th prime.

The programs for A104492, the canonical program `A104492.P15547546368258611959` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104492 has offset 1).

The definition of A104492 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A104492.P15547546368258611959

`A055400(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A104492

/-- `A055400(A000040(n+1))` -/
def P15547546368258611959.Spec : Prop :=
  ∀ n, P15547546368258611959.a n = A104492 (n + 1)

theorem P15547546368258611959.correct : P15547546368258611959.Spec := by
  intro n
  simp only [A104492, Nat.add_sub_cancel]

end A104492

/-! ## A104492.P10239550229182164765

`A055400(Δ[A007504(n)])`
-/

namespace A104492.P10239550229182164765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (f1 (n + 1) - f1 n).toNat

end

end A104492.P10239550229182164765

namespace A104492

/-- `A055400(Δ[A007504(n)])` -/
def P10239550229182164765.Spec : Prop :=
  ∀ n, P10239550229182164765.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P1022407002821772800

`A055400(record[A051698(n)])`
-/

namespace A104492.P1022407002821772800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104492.P1022407002821772800

namespace A104492

/-- `A055400(record[A051698(n)])` -/
def P1022407002821772800.Spec : Prop :=
  ∀ n, P1022407002821772800.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P16761720223837367191

`A055400(A008578(n+2))`
-/

namespace A104492.P16761720223837367191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A008578 (n + 2)).toNat

end

end A104492.P16761720223837367191

namespace A104492

/-- `A055400(A008578(n+2))` -/
def P16761720223837367191.Spec : Prop :=
  ∀ n, P16761720223837367191.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P7706668219713871968

`A055400(A182986(n+2))`
-/

namespace A104492.P7706668219713871968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A182986 (n + 2)).toNat

end

end A104492.P7706668219713871968

namespace A104492

/-- `A055400(A182986(n+2))` -/
def P7706668219713871968.Spec : Prop :=
  ∀ n, P7706668219713871968.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P1572689979637909650

`A055400(eq[0, A007920(n)])`
-/

namespace A104492.P1572689979637909650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104492.P1572689979637909650

namespace A104492

/-- `A055400(eq[0, A007920(n)])` -/
def P1572689979637909650.Spec : Prop :=
  ∀ n, P1572689979637909650.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P9487192433954648224

`A055400(eq[0, A325142(n)])`
-/

namespace A104492.P9487192433954648224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104492.P9487192433954648224

namespace A104492

/-- `A055400(eq[0, A325142(n)])` -/
def P9487192433954648224.Spec : Prop :=
  ∀ n, P9487192433954648224.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P4664122912310973610

`A055400(eq[1, A003415(n)])`
-/

namespace A104492.P4664122912310973610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104492.P4664122912310973610

namespace A104492

/-- `A055400(eq[1, A003415(n)])` -/
def P4664122912310973610.Spec : Prop :=
  ∀ n, P4664122912310973610.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P4703037345468005574

`A055400(eq[1, A032741(n)])`
-/

namespace A104492.P4703037345468005574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104492.P4703037345468005574

namespace A104492

/-- `A055400(eq[1, A032741(n)])` -/
def P4703037345468005574.Spec : Prop :=
  ∀ n, P4703037345468005574.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P14056497866253349938

`A055400(eq[2, A077462(n)])`
-/

namespace A104492.P14056497866253349938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A104492.P14056497866253349938

namespace A104492

/-- `A055400(eq[2, A077462(n)])` -/
def P14056497866253349938.Spec : Prop :=
  ∀ n, P14056497866253349938.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P7596165320689035065

`A055400(record[A006530(n+2)])`
-/

namespace A104492.P7596165320689035065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104492.P7596165320689035065

namespace A104492

/-- `A055400(record[A006530(n+2)])` -/
def P7596165320689035065.Spec : Prop :=
  ∀ n, P7596165320689035065.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P12503908195720257141

`A055400(record[A014963(n+2)])`
-/

namespace A104492.P12503908195720257141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104492.P12503908195720257141

namespace A104492

/-- `A055400(record[A014963(n+2)])` -/
def P12503908195720257141.Spec : Prop :=
  ∀ n, P12503908195720257141.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P11360481220777910599

`A055400(record[A020639(n+2)])`
-/

namespace A104492.P11360481220777910599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A104492.P11360481220777910599

namespace A104492

/-- `A055400(record[A020639(n+2)])` -/
def P11360481220777910599.Spec : Prop :=
  ∀ n, P11360481220777910599.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P8547840795189488333

`A055400(A007504(n+1)-A007504(n))`
-/

namespace A104492.P8547840795189488333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A007504 (n + 1) - A007504 n).toNat

end

end A104492.P8547840795189488333

namespace A104492

/-- `A055400(A007504(n+1)-A007504(n))` -/
def P8547840795189488333.Spec : Prop :=
  ∀ n, P8547840795189488333.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P6031726095128233264

`Δ[A007504(n)]-A048762(A006093(n+1))`
-/

namespace A104492.P6031726095128233264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048762 (A006093 (n + 1)).toNat

end

end A104492.P6031726095128233264

namespace A104492

/-- `Δ[A007504(n)]-A048762(A006093(n+1))` -/
def P6031726095128233264.Spec : Prop :=
  ∀ n, P6031726095128233264.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P15722955425116374686

`p?[A014681(n)]-A048762(A006093(n+1))`
-/

namespace A104492.P15722955425116374686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A048762 (A006093 (n + 1)).toNat

end

end A104492.P15722955425116374686

namespace A104492

/-- `p?[A014681(n)]-A048762(A006093(n+1))` -/
def P15722955425116374686.Spec : Prop :=
  ∀ n, P15722955425116374686.a n = A104492 (n + 1)

end A104492

/-! ## A104492.P9165393905774756603

`p?[A259153(n)]-A048762(A006093(n+1))`
-/

namespace A104492.P9165393905774756603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A048762 (A006093 (n + 1)).toNat

end

end A104492.P9165393905774756603

namespace A104492

/-- `p?[A259153(n)]-A048762(A006093(n+1))` -/
def P9165393905774756603.Spec : Prop :=
  ∀ n, P9165393905774756603.a n = A104492 (n + 1)

end A104492

/-!
# A104493: Numbers n for which the cube excess of the n-th prime is prime.

The programs for A104493, there is no canonical definition to state claims against.
-/

/-! ## A104493.P3516131623651023218

`A000720(A176870(n+1))`
-/

namespace A104493.P3516131623651023218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A176870 (n + 1)).toNat

end

end A104493.P3516131623651023218

/-! ## A104493.P8817847070282508641

`record[A049084(A176865(n+1))]`
-/

namespace A104493.P8817847070282508641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A176865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104493.P8817847070282508641

/-! ## A104493.P11613117893439143374

`A000720(p?[A176865(n+1)])`
-/

namespace A104493.P11613117893439143374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P11613117893439143374

/-! ## A104493.P426131679786323041

`A003963(p?[A176865(n+1)])`
-/

namespace A104493.P426131679786323041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P426131679786323041

/-! ## A104493.P2515172438973528639

`A003963(p?[A176870(n+1)])`
-/

namespace A104493.P2515172438973528639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P2515172438973528639

/-! ## A104493.P54359977838058699

`A026233(p?[A176865(n+1)])`
-/

namespace A104493.P54359977838058699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P54359977838058699

/-! ## A104493.P1891636377098753923

`A026233(p?[A176870(n+1)])`
-/

namespace A104493.P1891636377098753923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P1891636377098753923

/-! ## A104493.P11153007341145539301

`A049084(p?[A176865(n+1)])`
-/

namespace A104493.P11153007341145539301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P11153007341145539301

/-! ## A104493.P16964852949009570378

`A049084(p?[A176870(n+1)])`
-/

namespace A104493.P16964852949009570378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P16964852949009570378

/-! ## A104493.P16821504444214610428

`A056239(p?[A176870(n+1)])`
-/

namespace A104493.P16821504444214610428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104493.P16821504444214610428

/-!
# A104494: Positive integers n such that n^17 + 1 is semiprime (A001358).

The programs for A104494, there is no canonical definition to state claims against.
-/

/-! ## A104494.P5222632366789564572

`p?[A250185(n+1)+1]-1`
-/

namespace A104494.P5222632366789564572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A104494.P5222632366789564572

/-! ## A104494.P11008859530234291943

`xor(A020985(n)², p?[A250185(n+1)+1])`
-/

namespace A104494.P11008859530234291943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A104494.P11008859530234291943

/-! ## A104494.P2580422024115540930

`xor(A065357(n)², p?[A250185(n+1)+1])`
-/

namespace A104494.P2580422024115540930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065357 n ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A104494.P2580422024115540930

/-! ## A104494.P2005133706881306867

`xor(A056594(2*n)², p?[A250185(n+1)+1])`
-/

namespace A104494.P2005133706881306867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 (2 * n) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A104494.P2005133706881306867

/-! ## A104494.P8611456640490213317

`∩[A006093(n+1), A250185(n+1)]`
-/

namespace A104494.P8611456640490213317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104494.P8611456640490213317

/-! ## A104494.P17506160742434358109

`∩[A068499(n+1), A250185(n+1)]`
-/

namespace A104494.P17506160742434358109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104494.P17506160742434358109

/-! ## A104494.P17275960364023878968

`A000010(p?[A250185(n+1)+1])`
-/

namespace A104494.P17275960364023878968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104494.P17275960364023878968

/-! ## A104494.P162386870873668927

`A004442(p?[A250185(n+1)+1])`
-/

namespace A104494.P162386870873668927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A104494.P162386870873668927

/-! ## A104494.P6423185020747787814

`∩[A132631(n+1), A250185(n+1)]`
-/

namespace A104494.P6423185020747787814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104494.P6423185020747787814

/-!
# A104495: Matrix inverse of triangle A099602, read by rows, where row n of A099602 equals the inverse binomial transform of column n of the triangle of trinomial coefficients (A027907).

The programs for A104495, there is no canonical definition to state claims against.
-/

/-! ## A104495.P12359409626551473500

`xor(A130595(n), A242953(A341033(n)))`
-/

namespace A104495.P12359409626551473500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130595 n) (A242953 (A341033 n).toNat)

end

end A104495.P12359409626551473500

/-! ## A104495.P14400145901469204897

`A192456(A244903(n+1))`
-/

namespace A104495.P14400145901469204897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192456 (A244903 (n + 1)).toNat

end

end A104495.P14400145901469204897

/-! ## A104495.P13500602538647514293

`A130595(n)+A014035(A007283(n))`
-/

namespace A104495.P13500602538647514293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + A014035 (A007283 n).toNat

end

end A104495.P13500602538647514293

/-! ## A104495.P3838715937547529686

`A240332(A210592(n))+A130595(n)`
-/

namespace A104495.P3838715937547529686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240332 (A210592 n).toNat + A130595 n

end

end A104495.P3838715937547529686

/-! ## A104495.P17507200380451593720

`A130595(n)-A038382(A058710(n))`
-/

namespace A104495.P17507200380451593720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n - A038382 (A058710 n).toNat

end

end A104495.P17507200380451593720

/-!
# A104496: Expansion of 2*(2*x+1)/((x+1)*(sqrt(4*x+1)+1)).

The programs for A104496, the canonical program `A104496.P18327460265736652066` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A104496 has offset 0).

The definition of A104496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A104496.P18327460265736652066

`A099324(n)+A168491(n)-A033999(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A104496

/-- `A099324(n)+A168491(n)-A033999(n)` -/
def P18327460265736652066.Spec : Prop :=
  ∀ n, P18327460265736652066.a n = A104496 n

theorem P18327460265736652066.correct : P18327460265736652066.Spec := by
  intro n
  simp only [A104496]

end A104496

/-! ## A104496.P18295044973682131442

`A159972(n)-A062157(n)*A120304(n)`
-/

namespace A104496.P18295044973682131442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159972 n - A062157 n * A120304 n

end

end A104496.P18295044973682131442

namespace A104496

/-- `A159972(n)-A062157(n)*A120304(n)` -/
def P18295044973682131442.Spec : Prop :=
  ∀ n, P18295044973682131442.a n = A104496 n

end A104496

/-! ## A104496.P1933982294879592721

`(-1)^n*A127156(∑[n])`
-/

namespace A104496.P1933982294879592721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104496.P1933982294879592721

namespace A104496

/-- `(-1)^n*A127156(∑[n])` -/
def P1933982294879592721.Spec : Prop :=
  ∀ n, P1933982294879592721.a n = A104496 n

end A104496

/-!
# A104497: Expansion of sqrt(1-8x)/sqrt(1-4x).

The programs for A104497, there is no canonical definition to state claims against.
-/

/-! ## A104497.P13770323195805006300

`A000007(n)-2*A104498(n)`
-/

namespace A104497.P13770323195805006300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - 2 * A104498 n

end

end A104497.P13770323195805006300

/-! ## A104497.P328566913173686044

`A089013(and(n, -n))-2*A104498(n)`
-/

namespace A104497.P328566913173686044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (Int.land (n : ℤ) (-(n : ℤ))).toNat - 2 * A104498 n

end

end A104497.P328566913173686044

/-! ## A104497.P13107902174265030617

`A035363(record[A014963(n+2)])-2*A104498(n)`
-/

namespace A104497.P13107902174265030617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2 * A104498 n

end

end A104497.P13107902174265030617

/-! ## A104497.P4686610220191792623

`A089013(n²)-2*A104498(n)`
-/

namespace A104497.P4686610220191792623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 (n ^ 2) - 2 * A104498 n

end

end A104497.P4686610220191792623

/-! ## A104497.P17036427083728572900

`A035363(record[A001353(n)%(n+1)])-2*A104498(n)`
-/

namespace A104497.P17036427083728572900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001353 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2 * A104498 n

end

end A104497.P17036427083728572900

/-!
# A104498: Expansion of (1/2)*(1-sqrt(1-8*x)/sqrt(1-4*x)).

The programs for A104498, there is no canonical definition to state claims against.
-/

/-! ## A104498.P12558509388734830206

`floor(abs(A104497(n)/2))`
-/

namespace A104498.P12558509388734830206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(A104497 n : ℚ) / 2|⌋

end

end A104498.P12558509388734830206

/-! ## A104498.P5594011689343198450

`(A000007(n)-A104497(n))/2`
-/

namespace A104498.P5594011689343198450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n - A104497 n : ℚ) / 2

end

end A104498.P5594011689343198450

/-! ## A104498.P6715259247436681840

`abs(A104497(n)/2)*A000040(n+1)%2`
-/

namespace A104498.P6715259247436681840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A104497 n : ℚ) / 2| * (Int.tmod (A000040 (n + 1)) 2 : ℚ)

end

end A104498.P6715259247436681840

/-! ## A104498.P6455447244852396761

`A113429(3*n+2)-floor(A104497(n)/2)`
-/

namespace A104498.P6455447244852396761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (3 * n + 2) - ⌊(A104497 n : ℚ) / 2⌋

end

end A104498.P6455447244852396761

/-! ## A104498.P17819119434879889397

`abs(A104497(n)/2)*char[A007318(n)]`
-/

namespace A104498.P17819119434879889397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A104497 n : ℚ) / 2| * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A104498.P17819119434879889397

/-!
# A104499: Primes by index in A001945.

The programs for A104499, there is no canonical definition to state claims against.
-/

/-! ## A104499.P11929236506408083884

`eq[1, ∑{e}[A001945(n), #]]`
-/

namespace A104499.P11929236506408083884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104499.P11929236506408083884

/-! ## A104499.P16519492018385805035

`eq[0, A007920(A001945(n))]`
-/

namespace A104499.P16519492018385805035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A104499.P16519492018385805035

/-! ## A104499.P17881642825558123126

`eq[1, A001222(A001945(n+1))]+1`
-/

namespace A104499.P17881642825558123126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001945 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A104499.P17881642825558123126

/-! ## A104499.P12532310511494424274

`eq[A000007(n), A072480(A001945(n))]`
-/

namespace A104499.P12532310511494424274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A001945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104499.P12532310511494424274

/-! ## A104499.P8648062018990692590

`eq[A000038(n), A072480(A001945(n))]`
-/

namespace A104499.P8648062018990692590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A001945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A104499.P8648062018990692590

