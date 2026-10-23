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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
# A052400: Number of fully amphichiral and invertible prime knots with n crossings.

The programs for A052400, there is no canonical definition to state claims against.
-/

/-! ## A052400.P3148470550564584654

`A052402(n+1)-A051769(n+1)`
-/

namespace A052400.P3148470550564584654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) - A051769 (n + 1)

end

end A052400.P3148470550564584654

/-! ## A052400.P17891729984422187806

`A002863(n+1)-(A052403(n+1)+A051769(n+1))`
-/

namespace A052400.P17891729984422187806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052403 (n + 1) + A051769 (n + 1))

end

end A052400.P17891729984422187806

/-! ## A052400.P8175739781013922122

`A052401(n+1)-(A051768(n+1)+A051767(n+1))`
-/

namespace A052400.P8175739781013922122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052401 (n + 1) - (A051768 (n + 1) + A051767 (n + 1))

end

end A052400.P8175739781013922122

/-! ## A052400.P1131652968695760290

`A051766(n+1)+A052401(n+1)-A052403(n+1)`
-/

namespace A052400.P1131652968695760290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051766 (n + 1) + (A052401 (n + 1) - A052403 (n + 1))

end

end A052400.P1131652968695760290

/-! ## A052400.P18063149998864839680

`A051763(n+1)+A002864(n+1)-(A052403(n+1)+A051769(n+1))`
-/

namespace A052400.P18063149998864839680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A052403 (n + 1) + A051769 (n + 1))

end

end A052400.P18063149998864839680

/-!
# A052401: Number of amphichiral prime knots with n crossings (A051767 + A051768 + A052400).

The programs for A052401, there is no canonical definition to state claims against.
-/

/-! ## A052401.P5703747693969288147

`A051767(n+1)+A051768(n+1)+A052400(n+1)`
-/

namespace A052401.P5703747693969288147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051767 (n + 1) + A051768 (n + 1) + A052400 (n + 1)

end

end A052401.P5703747693969288147

/-! ## A052401.P6952271647695019740

`A002863(n+1)-(A051769(n+1)+A051766(n+1))`
-/

namespace A052401.P6952271647695019740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A051769 (n + 1) + A051766 (n + 1))

end

end A052401.P6952271647695019740

/-! ## A052401.P9905080198731253340

`A052400(n+1)+A052403(n+1)-A051766(n+1)`
-/

namespace A052401.P9905080198731253340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052400 (n + 1) + (A052403 (n + 1) - A051766 (n + 1))

end

end A052401.P9905080198731253340

/-! ## A052401.P148715004710647449

`A051763(n+1)+A002864(n+1)-(A051769(n+1)+A051766(n+1))`
-/

namespace A052401.P148715004710647449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A051769 (n + 1) + A051766 (n + 1))

end

end A052401.P148715004710647449

/-! ## A052401.P10301874371151563463

`A051767(n+1)+A051768(n+1)+A052402(n+1)-A051769(n+1)`
-/

namespace A052401.P10301874371151563463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051767 (n + 1) + (A051768 (n + 1) + (A052402 (n + 1) - A051769 (n + 1)))

end

end A052401.P10301874371151563463

/-!
# A052402: Number of invertible prime knots with n crossings.

The programs for A052402, there is no canonical definition to state claims against.
-/

/-! ## A052402.P4899549259844817995

`A052400(n+1)+A051769(n+1)`
-/

namespace A052402.P4899549259844817995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052400 (n + 1) + A051769 (n + 1)

end

end A052402.P4899549259844817995

/-! ## A052402.P18056000516176798636

`A002863(n+1)-A052403(n+1)`
-/

namespace A052402.P18056000516176798636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052403 (n + 1)

end

end A052402.P18056000516176798636

/-! ## A052402.P14134251573173205757

`Δ[A116584(abs(1-n)+1)]-A052403(n+1)`
-/

namespace A052402.P14134251573173205757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052403 (n + 1)

end

end A052402.P14134251573173205757

/-! ## A052402.P16393979889670236025

`A002864(n+1)+A051763(n+1)-A052403(n+1)`
-/

namespace A052402.P16393979889670236025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A052403 (n + 1))

end

end A052402.P16393979889670236025

/-! ## A052402.P4591441127922130762

`A052407(n+1)+A052408(n+1)-A052403(n+1)`
-/

namespace A052402.P4591441127922130762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) + (A052408 (n + 1) - A052403 (n + 1))

end

end A052402.P4591441127922130762

/-!
# A052403: Number of noninvertible prime knots with n crossings (A002863-A052402).

The programs for A052403, there is no canonical definition to state claims against.
-/

/-! ## A052403.P17026685912446909875

`A002863(n+1)-A052402(n+1)`
-/

namespace A052403.P17026685912446909875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052402 (n + 1)

end

end A052403.P17026685912446909875

/-! ## A052403.P6202061738531753890

`Δ[A116584(abs(1-n)+1)]-A052402(n+1)`
-/

namespace A052403.P6202061738531753890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052402 (n + 1)

end

end A052403.P6202061738531753890

/-! ## A052403.P10437807985028539938

`A051766(n+1)+A051768(n+1)+A051767(n+1)`
-/

namespace A052403.P10437807985028539938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051766 (n + 1) + (A051768 (n + 1) + A051767 (n + 1))

end

end A052403.P10437807985028539938

/-! ## A052403.P8241658227997061783

`A002863(n+1)-(A052400(n+1)+A051769(n+1))`
-/

namespace A052403.P8241658227997061783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052400 (n + 1) + A051769 (n + 1))

end

end A052403.P8241658227997061783

/-! ## A052403.P2131143681111501209

`A002864(n+1)+A051763(n+1)-A052402(n+1)`
-/

namespace A052403.P2131143681111501209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A052402 (n + 1))

end

end A052403.P2131143681111501209

/-!
# A052404: Numbers without 2 as a digit.

The programs for A052404, the canonical program `A052404.P15206820385513292875` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052404 has offset 1).

The definition of A052404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052404.P8129917913583102861

`comp[A011532(n+1)]`
-/

namespace A052404.P8129917913583102861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052404.P8129917913583102861

namespace A052404

/-- `comp[A011532(n+1)]` -/
def P8129917913583102861.Spec : Prop :=
  ∀ n, (P8129917913583102861.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P10635752924932547227

`record[A004721(n)]`
-/

namespace A052404.P10635752924932547227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052404.P10635752924932547227

namespace A052404

/-- `record[A004721(n)]` -/
def P10635752924932547227.Spec : Prop :=
  ∀ n, P10635752924932547227.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P901787933807001135

`A004721(lt[n, A004721(n)+1])`
-/

namespace A052404.P901787933807001135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052404.P901787933807001135

namespace A052404

/-- `A004721(lt[n, A004721(n)+1])` -/
def P901787933807001135.Spec : Prop :=
  ∀ n, P901787933807001135.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P17969786790732326832

`A004721(lt[n-1, A004721(n)])`
-/

namespace A052404.P17969786790732326832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004721 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052404.P17969786790732326832

namespace A052404

/-- `A004721(lt[n-1, A004721(n)])` -/
def P17969786790732326832.Spec : Prop :=
  ∀ n, P17969786790732326832.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P10356448166596437238

`record[A004177(n)]`
-/

namespace A052404.P10356448166596437238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052404.P10356448166596437238

namespace A052404

/-- `record[A004177(n)]` -/
def P10356448166596437238.Spec : Prop :=
  ∀ n, P10356448166596437238.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P15206820385513292875

`eq[0, A316863(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052404

/-- `eq[0, A316863(n)]` -/
def P15206820385513292875.Spec : Prop :=
  ∀ n, (P15206820385513292875.a n : ℤ) = A052404 (n + 1)

theorem P15206820385513292875.correct : P15206820385513292875.Spec := by
  intro n
  simp only [A052404, Nat.add_sub_cancel]

end A052404

/-! ## A052404.P7347034548919703129

`eq[1, A040001(A211396(n))]`
-/

namespace A052404.P7347034548919703129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P7347034548919703129

namespace A052404

/-- `eq[1, A040001(A211396(n))]` -/
def P7347034548919703129.Spec : Prop :=
  ∀ n, (P7347034548919703129.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P16207721046675797714

`lt[A316863(A057846(n)), 1]`
-/

namespace A052404.P16207721046675797714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A057846 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052404.P16207721046675797714

namespace A052404

/-- `lt[A316863(A057846(n)), 1]` -/
def P16207721046675797714.Spec : Prop :=
  ∀ n, (P16207721046675797714.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P12476669140809630434

`eq[A102669(n), A102671(n)]`
-/

namespace A052404.P12476669140809630434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052404.P12476669140809630434

namespace A052404

/-- `eq[A102669(n), A102671(n)]` -/
def P12476669140809630434.Spec : Prop :=
  ∀ n, (P12476669140809630434.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P9447520680174932508

`eq[2, A106469(A211396(n)+1)]`
-/

namespace A052404.P9447520680174932508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P9447520680174932508

namespace A052404

/-- `eq[2, A106469(A211396(n)+1)]` -/
def P9447520680174932508.Spec : Prop :=
  ∀ n, (P9447520680174932508.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P13263199805115693656

`eq[2, A133265(A211396(n)+1)]`
-/

namespace A052404.P13263199805115693656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P13263199805115693656

namespace A052404

/-- `eq[2, A133265(A211396(n)+1)]` -/
def P13263199805115693656.Spec : Prop :=
  ∀ n, (P13263199805115693656.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P11406550138905405403

`eq[2, A266662(A211396(n)+1)]`
-/

namespace A052404.P11406550138905405403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P11406550138905405403

namespace A052404

/-- `eq[2, A266662(A211396(n)+1)]` -/
def P11406550138905405403.Spec : Prop :=
  ∀ n, (P11406550138905405403.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P9347158201187149395

`eq[2, A266722(A211396(n)+1)]`
-/

namespace A052404.P9347158201187149395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P9347158201187149395

namespace A052404

/-- `eq[2, A266722(A211396(n)+1)]` -/
def P9347158201187149395.Spec : Prop :=
  ∀ n, (P9347158201187149395.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P16240480450639048984

`lt[n, A055642(n)+A004177(n)]`
-/

namespace A052404.P16240480450639048984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n + A004177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052404.P16240480450639048984

namespace A052404

/-- `lt[n, A055642(n)+A004177(n)]` -/
def P16240480450639048984.Spec : Prop :=
  ∀ n, (P16240480450639048984.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P983543044989321890

`eq[A004176(n), A004177(A004176(n))]`
-/

namespace A052404.P983543044989321890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052404.P983543044989321890

namespace A052404

/-- `eq[A004176(n), A004177(A004176(n))]` -/
def P983543044989321890.Spec : Prop :=
  ∀ n, (P983543044989321890.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P17152565261750782385

`eq[A102669(n), A102669(A235049(n))]`
-/

namespace A052404.P17152565261750782385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A235049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052404.P17152565261750782385

namespace A052404

/-- `eq[A102669(n), A102669(A235049(n))]` -/
def P17152565261750782385.Spec : Prop :=
  ∀ n, (P17152565261750782385.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P16434193675666781966

`lt[0, ∏{digits}[n, (2-#)²]]`
-/

namespace A052404.P16434193675666781966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (2 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052404.P16434193675666781966

namespace A052404

/-- `lt[0, ∏{digits}[n, (2-#)²]]` -/
def P16434193675666781966.Spec : Prop :=
  ∀ n, (P16434193675666781966.a n : ℤ) = A052404 (n + 1)

end A052404

/-! ## A052404.P7049170476518489583

`record[A035044(n)]`
-/

namespace A052404.P7049170476518489583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052404.P7049170476518489583

namespace A052404

/-- `record[A035044(n)]` -/
def P7049170476518489583.Spec : Prop :=
  ∀ n, P7049170476518489583.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P5753354429363492516

`A035043(record[A035043(n)])`
-/

namespace A052404.P5753354429363492516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052404.P5753354429363492516

namespace A052404

/-- `A035043(record[A035043(n)])` -/
def P5753354429363492516.Spec : Prop :=
  ∀ n, P5753354429363492516.a n = A052404 (n + 1)

end A052404

/-! ## A052404.P83115497721134758

`record[A222234(A222228(n))]`
-/

namespace A052404.P83115497721134758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A222228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052404.P83115497721134758

namespace A052404

/-- `record[A222234(A222228(n))]` -/
def P83115497721134758.Spec : Prop :=
  ∀ n, P83115497721134758.a n = A052404 (n + 1)

end A052404

/-!
# A052405: Numbers without 3 as a digit.

The programs for A052405, the canonical program `A052405.P8022865480491917303` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052405 has offset 1).

The definition of A052405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052405.P8022865480491917303

`comp[A011533(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A052405

/-- `comp[A011533(n+1)]` -/
def P8022865480491917303.Spec : Prop :=
  ∀ n, (P8022865480491917303.a n : ℤ) = A052405 (n + 1)

theorem P8022865480491917303.correct : P8022865480491917303.Spec := by
  intro n
  simp only [A052405, Nat.add_sub_cancel]

end A052405

/-! ## A052405.P6234167104793572673

`record[A004722(n)]`
-/

namespace A052405.P6234167104793572673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052405.P6234167104793572673

namespace A052405

/-- `record[A004722(n)]` -/
def P6234167104793572673.Spec : Prop :=
  ∀ n, P6234167104793572673.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P1707253622322782588

`eq[0, A316864(n)]`
-/

namespace A052405.P1707253622322782588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052405.P1707253622322782588

namespace A052405

/-- `eq[0, A316864(n)]` -/
def P1707253622322782588.Spec : Prop :=
  ∀ n, (P1707253622322782588.a n : ℤ) = A052405 (n + 1)

end A052405

/-! ## A052405.P6259393600709372216

`eq[0, A102671(n)-A102673(n)]`
-/

namespace A052405.P6259393600709372216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n - A102673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052405.P6259393600709372216

namespace A052405

/-- `eq[0, A102671(n)-A102673(n)]` -/
def P6259393600709372216.Spec : Prop :=
  ∀ n, (P6259393600709372216.a n : ℤ) = A052405 (n + 1)

end A052405

/-! ## A052405.P14065610672576105711

`eq[A316863(2*A106747(n)), A316863(n)]`
-/

namespace A052405.P14065610672576105711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (2 * A106747 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052405.P14065610672576105711

namespace A052405

/-- `eq[A316863(2*A106747(n)), A316863(n)]` -/
def P14065610672576105711.Spec : Prop :=
  ∀ n, (P14065610672576105711.a n : ℤ) = A052405 (n + 1)

end A052405

/-! ## A052405.P17858135930065405964

`lt[0, ∏{digits}[n, (3-#)²]]`
-/

namespace A052405.P17858135930065405964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (3 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052405.P17858135930065405964

namespace A052405

/-- `lt[0, ∏{digits}[n, (3-#)²]]` -/
def P17858135930065405964.Spec : Prop :=
  ∀ n, (P17858135930065405964.a n : ℤ) = A052405 (n + 1)

end A052405

/-! ## A052405.P1414941101181753072

`record[A004178(n)]`
-/

namespace A052405.P1414941101181753072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052405.P1414941101181753072

namespace A052405

/-- `record[A004178(n)]` -/
def P1414941101181753072.Spec : Prop :=
  ∀ n, P1414941101181753072.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P11175406430165904828

`record[A222234(n)]`
-/

namespace A052405.P11175406430165904828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052405.P11175406430165904828

namespace A052405

/-- `record[A222234(n)]` -/
def P11175406430165904828.Spec : Prop :=
  ∀ n, P11175406430165904828.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P9470299030474919298

`A035044(record[A035044(n)])`
-/

namespace A052405.P9470299030474919298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052405.P9470299030474919298

namespace A052405

/-- `A035044(record[A035044(n)])` -/
def P9470299030474919298.Spec : Prop :=
  ∀ n, P9470299030474919298.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P11885773756785057681

`record[A222240(A222235(n))]`
-/

namespace A052405.P11885773756785057681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A222235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052405.P11885773756785057681

namespace A052405

/-- `record[A222240(A222235(n))]` -/
def P11885773756785057681.Spec : Prop :=
  ∀ n, P11885773756785057681.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P6298199754009281001

`A035044(A052404(n+1))`
-/

namespace A052405.P6298199754009281001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A052404 (n + 1)).toNat

end

end A052405.P6298199754009281001

namespace A052405

/-- `A035044(A052404(n+1))` -/
def P6298199754009281001.Spec : Prop :=
  ∀ n, P6298199754009281001.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P3848389609812275519

`A222234(A052406(n+1))`
-/

namespace A052405.P3848389609812275519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A052406 (n + 1)).toNat

end

end A052405.P3848389609812275519

namespace A052405

/-- `A222234(A052406(n+1))` -/
def P3848389609812275519.Spec : Prop :=
  ∀ n, P3848389609812275519.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P10676632085387425099

`A004178(lt[n, A004178(n)+1])`
-/

namespace A052405.P10676632085387425099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052405.P10676632085387425099

namespace A052405

/-- `A004178(lt[n, A004178(n)+1])` -/
def P10676632085387425099.Spec : Prop :=
  ∀ n, P10676632085387425099.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P16739439869909303394

`A222234(lt[n, A004179(n)+1])`
-/

namespace A052405.P16739439869909303394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052405.P16739439869909303394

namespace A052405

/-- `A222234(lt[n, A004179(n)+1])` -/
def P16739439869909303394.Spec : Prop :=
  ∀ n, P16739439869909303394.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P2082012991420074050

`A004178(lt[n-1, A004178(n)])`
-/

namespace A052405.P2082012991420074050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052405.P2082012991420074050

namespace A052405

/-- `A004178(lt[n-1, A004178(n)])` -/
def P2082012991420074050.Spec : Prop :=
  ∀ n, P2082012991420074050.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P3262746006010485295

`A222234(lt[n-1, A004179(n)])`
-/

namespace A052405.P3262746006010485295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052405.P3262746006010485295

namespace A052405

/-- `A222234(lt[n-1, A004179(n)])` -/
def P3262746006010485295.Spec : Prop :=
  ∀ n, P3262746006010485295.a n = A052405 (n + 1)

end A052405

/-! ## A052405.P3648804407330014465

`eq[A102669(n), A102669(A107130(n))]`
-/

namespace A052405.P3648804407330014465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052405.P3648804407330014465

namespace A052405

/-- `eq[A102669(n), A102669(A107130(n))]` -/
def P3648804407330014465.Spec : Prop :=
  ∀ n, (P3648804407330014465.a n : ℤ) = A052405 (n + 1)

end A052405

/-!
# A052406: Numbers without 4 as a digit.

The programs for A052406, the canonical program `A052406.P11983566337862836048` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052406 has offset 1).

The definition of A052406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052406.P8048645023013352852

`comp[A011534(n+1)]`
-/

namespace A052406.P8048645023013352852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052406.P8048645023013352852

namespace A052406

/-- `comp[A011534(n+1)]` -/
def P8048645023013352852.Spec : Prop :=
  ∀ n, (P8048645023013352852.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P11983566337862836048

`eq[A064532(n), A064692(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052406

/-- `eq[A064532(n), A064692(n)]` -/
def P11983566337862836048.Spec : Prop :=
  ∀ n, (P11983566337862836048.a n : ℤ) = A052406 (n + 1)

theorem P11983566337862836048.correct : P11983566337862836048.Spec := by
  intro n
  simp only [A052406, Nat.add_sub_cancel]

end A052406

/-! ## A052406.P6776653564778688425

`record[A004723(n)]`
-/

namespace A052406.P6776653564778688425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052406.P6776653564778688425

namespace A052406

/-- `record[A004723(n)]` -/
def P6776653564778688425.Spec : Prop :=
  ∀ n, P6776653564778688425.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P12612021080043909867

`record[A004179(n)]`
-/

namespace A052406.P12612021080043909867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052406.P12612021080043909867

namespace A052406

/-- `record[A004179(n)]` -/
def P12612021080043909867.Spec : Prop :=
  ∀ n, P12612021080043909867.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P4721332775516818168

`A004179(eq[n, A004179(n)])`
-/

namespace A052406.P4721332775516818168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052406.P4721332775516818168

namespace A052406

/-- `A004179(eq[n, A004179(n)])` -/
def P4721332775516818168.Spec : Prop :=
  ∀ n, P4721332775516818168.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P13416219127860227256

`eq[A027386(n), A027387(n)]`
-/

namespace A052406.P13416219127860227256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P13416219127860227256

namespace A052406

/-- `eq[A027386(n), A027387(n)]` -/
def P13416219127860227256.Spec : Prop :=
  ∀ n, (P13416219127860227256.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P14174578319838626078

`lt[A002264(n), A004179(n)+1]`
-/

namespace A052406.P14174578319838626078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052406.P14174578319838626078

namespace A052406

/-- `lt[A002264(n), A004179(n)+1]` -/
def P14174578319838626078.Spec : Prop :=
  ∀ n, (P14174578319838626078.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P452789844955503716

`A004179(lt[n, A004179(n)+1])`
-/

namespace A052406.P452789844955503716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052406.P452789844955503716

namespace A052406

/-- `A004179(lt[n, A004179(n)+1])` -/
def P452789844955503716.Spec : Prop :=
  ∀ n, P452789844955503716.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P665955299980854648

`A004179(lt[n-A004179(n), 1])`
-/

namespace A052406.P665955299980854648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004179 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052406.P665955299980854648

namespace A052406

/-- `A004179(lt[n-A004179(n), 1])` -/
def P665955299980854648.Spec : Prop :=
  ∀ n, P665955299980854648.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P8267888061905641416

`eq[A004177(A107128(n)), A107128(n)]`
-/

namespace A052406.P8267888061905641416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (A107128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P8267888061905641416

namespace A052406

/-- `eq[A004177(A107128(n)), A107128(n)]` -/
def P8267888061905641416.Spec : Prop :=
  ∀ n, (P8267888061905641416.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P3818352609614683450

`lt[0, ∏{digits}[n, (4-#)²]]`
-/

namespace A052406.P3818352609614683450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (4 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052406.P3818352609614683450

namespace A052406

/-- `lt[0, ∏{digits}[n, (4-#)²]]` -/
def P3818352609614683450.Spec : Prop :=
  ∀ n, (P3818352609614683450.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P2854270366183689895

`record[A222240(n)]`
-/

namespace A052406.P2854270366183689895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052406.P2854270366183689895

namespace A052406

/-- `record[A222240(n)]` -/
def P2854270366183689895.Spec : Prop :=
  ∀ n, P2854270366183689895.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P9191038167255430058

`lt[n*A316865(n), 1]`
-/

namespace A052406.P9191038167255430058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316865 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052406.P9191038167255430058

namespace A052406

/-- `lt[n*A316865(n), 1]` -/
def P9191038167255430058.Spec : Prop :=
  ∀ n, (P9191038167255430058.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P11453174393609816357

`A222234(record[A222234(n)])`
-/

namespace A052406.P11453174393609816357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052406.P11453174393609816357

namespace A052406

/-- `A222234(record[A222234(n)])` -/
def P11453174393609816357.Spec : Prop :=
  ∀ n, P11453174393609816357.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P15495992295687090425

`record[A222245(A222241(n))]`
-/

namespace A052406.P15495992295687090425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A222241 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052406.P15495992295687090425

namespace A052406

/-- `record[A222245(A222241(n))]` -/
def P15495992295687090425.Spec : Prop :=
  ∀ n, P15495992295687090425.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P5380194199763357561

`A222234(A052405(n+1))`
-/

namespace A052406.P5380194199763357561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A052405 (n + 1)).toNat

end

end A052406.P5380194199763357561

namespace A052406

/-- `A222234(A052405(n+1))` -/
def P5380194199763357561.Spec : Prop :=
  ∀ n, P5380194199763357561.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P1786689636939126135

`A222240(A052413(n+1))`
-/

namespace A052406.P1786689636939126135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A052413 (n + 1)).toNat

end

end A052406.P1786689636939126135

namespace A052406

/-- `A222240(A052413(n+1))` -/
def P1786689636939126135.Spec : Prop :=
  ∀ n, P1786689636939126135.a n = A052406 (n + 1)

end A052406

/-! ## A052406.P10686345579088160550

`eq[A027388(n), A027389(n)]`
-/

namespace A052406.P10686345579088160550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P10686345579088160550

namespace A052406

/-- `eq[A027388(n), A027389(n)]` -/
def P10686345579088160550.Spec : Prop :=
  ∀ n, (P10686345579088160550.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P5713366180298463905

`lt[A316865(n), 1/A061901(n)]`
-/

namespace A052406.P5713366180298463905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A061901 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A052406.P5713366180298463905

namespace A052406

/-- `lt[A316865(n), 1/A061901(n)]` -/
def P5713366180298463905.Spec : Prop :=
  ∀ n, (P5713366180298463905.a n : ℤ) = A052406 (n + 1)

end A052406

/-! ## A052406.P2343185576353963343

`eq[A001613(n), A222242(A001613(n))]`
-/

namespace A052406.P2343185576353963343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052406.P2343185576353963343

namespace A052406

/-- `eq[A001613(n), A222242(A001613(n))]` -/
def P2343185576353963343.Spec : Prop :=
  ∀ n, (P2343185576353963343.a n : ℤ) = A052406 (n + 1)

end A052406

/-!
# A052407: Number of nonhyperbolic prime knots with n crossings (A051764+A051765).

The programs for A052407, there is no canonical definition to state claims against.
-/

/-! ## A052407.P13935294517112093603

`A051765(n+1)+A051764(n+1)`
-/

namespace A052407.P13935294517112093603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051765 (n + 1) + A051764 (n + 1)

end

end A052407.P13935294517112093603

/-! ## A052407.P361599698786669425

`A002863(n+1)-A052408(n+1)`
-/

namespace A052407.P361599698786669425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052408 (n + 1)

end

end A052407.P361599698786669425

/-! ## A052407.P16856255935843215138

`Δ[A116584(abs(1-n)+1)]-A052408(n+1)`
-/

namespace A052407.P16856255935843215138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052408 (n + 1)

end

end A052407.P16856255935843215138

/-!
# A052408: Number of hyperbolic knots with n crossings (A002863 - A051764 - A051765).

The programs for A052408, there is no canonical definition to state claims against.
-/

/-! ## A052408.P9111170822627644208

`A002863(n+1)-A052407(n+1)`
-/

namespace A052408.P9111170822627644208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052407 (n + 1)

end

end A052408.P9111170822627644208

/-! ## A052408.P15671587230556498552

`A002863(n+1)-(A051765(n+1)+A051764(n+1))`
-/

namespace A052408.P15671587230556498552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A051765 (n + 1) + A051764 (n + 1))

end

end A052408.P15671587230556498552

/-! ## A052408.P13715503629445025431

`A002864(n+1)+A051763(n+1)-A052407(n+1)`
-/

namespace A052408.P13715503629445025431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A052407 (n + 1))

end

end A052408.P13715503629445025431

/-! ## A052408.P15998457521459101296

`A051763(n+1)+A002864(n+1)-(A051765(n+1)+A051764(n+1))`
-/

namespace A052408.P15998457521459101296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A051765 (n + 1) + A051764 (n + 1))

end

end A052408.P15998457521459101296

/-! ## A052408.P16699009739783397659

`Δ[A116584(abs(1-n)+1)]-A052407(n+1)`
-/

namespace A052408.P16699009739783397659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052407 (n + 1)

end

end A052408.P16699009739783397659

/-!
# A052409: a(n) = largest integer power m for which a representation of the form n = k^m exists (for some k).

The programs for A052409, the canonical program `A052409.P7338948793466901153` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052409 has offset 1).

The definition of A052409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052409.P6239454430129886752

`gcd(A067029(n+1), a(A028234(n+1)-1))` with `a(0)=0, a(1)=1`
-/

namespace A052409.P6239454430129886752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (A067029 (n + 1)) (a (A028234 (n + 1) - 1).toNat : ℤ)

end

end A052409.P6239454430129886752

namespace A052409

/-- `gcd(A067029(n+1), a(A028234(n+1)-1))` -/
def P6239454430129886752.Spec : Prop :=
  ∀ n, (P6239454430129886752.a n : ℤ) = A052409 (n + 1)

end A052409

/-! ## A052409.P975386671342351140

`abs(A158052(n+1))`
-/

namespace A052409.P975386671342351140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158052 (n + 1)|

end

end A052409.P975386671342351140

namespace A052409

/-- `abs(A158052(n+1))` -/
def P975386671342351140.Spec : Prop :=
  ∀ n, P975386671342351140.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P8945365838828746864

`A253641(n+1)%(n+1)`
-/

namespace A052409.P8945365838828746864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253641 (n + 1)) (n + 1 : ℤ)

end

end A052409.P8945365838828746864

namespace A052409

/-- `A253641(n+1)%(n+1)` -/
def P8945365838828746864.Spec : Prop :=
  ∀ n, P8945365838828746864.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P12464622164174796602

`A289508(A181819(n+1))`
-/

namespace A052409.P12464622164174796602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A181819 (n + 1)).toNat

end

end A052409.P12464622164174796602

namespace A052409

/-- `A289508(A181819(n+1))` -/
def P12464622164174796602.Spec : Prop :=
  ∀ n, P12464622164174796602.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P12809550525531282492

`A289508(A329607(n+1))`
-/

namespace A052409.P12809550525531282492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A329607 (n + 1)).toNat

end

end A052409.P12809550525531282492

namespace A052409

/-- `A289508(A329607(n+1))` -/
def P12809550525531282492.Spec : Prop :=
  ∀ n, P12809550525531282492.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P10699606525539104063

`A037213(A158052(n+1)²)`
-/

namespace A052409.P10699606525539104063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A158052 (n + 1) ^ 2).toNat

end

end A052409.P10699606525539104063

namespace A052409

/-- `A037213(A158052(n+1)²)` -/
def P10699606525539104063.Spec : Prop :=
  ∀ n, P10699606525539104063.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P6169791289094470398

`A253641(n+1)-A000007(n)`
-/

namespace A052409.P6169791289094470398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1) - A000007 n

end

end A052409.P6169791289094470398

namespace A052409

/-- `A253641(n+1)-A000007(n)` -/
def P6169791289094470398.Spec : Prop :=
  ∀ n, P6169791289094470398.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P8793350453461341398

`A057427(n)*A253641(n+1)`
-/

namespace A052409.P8793350453461341398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A253641 (n + 1)

end

end A052409.P8793350453461341398

namespace A052409

/-- `A057427(n)*A253641(n+1)` -/
def P8793350453461341398.Spec : Prop :=
  ∀ n, P8793350453461341398.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P18211806380466093455

`gcd(A002483(n), A158052(n+1))`
-/

namespace A052409.P18211806380466093455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002483 n) (A158052 (n + 1))

end

end A052409.P18211806380466093455

namespace A052409

/-- `gcd(A002483(n), A158052(n+1))` -/
def P18211806380466093455.Spec : Prop :=
  ∀ n, (P18211806380466093455.a n : ℤ) = A052409 (n + 1)

end A052409

/-! ## A052409.P16880118357696942301

`A019426(2*n)*A253641(n+1)`
-/

namespace A052409.P16880118357696942301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A253641 (n + 1)

end

end A052409.P16880118357696942301

namespace A052409

/-- `A019426(2*n)*A253641(n+1)` -/
def P16880118357696942301.Spec : Prop :=
  ∀ n, P16880118357696942301.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P8877419039865553346

`A019428(2*n)*A253641(n+1)`
-/

namespace A052409.P8877419039865553346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) * A253641 (n + 1)

end

end A052409.P8877419039865553346

namespace A052409

/-- `A019428(2*n)*A253641(n+1)` -/
def P8877419039865553346.Spec : Prop :=
  ∀ n, P8877419039865553346.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P7338948793466901153

`gcd(A051903(n+1), A051904(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A052409

/-- `gcd(A051903(n+1), A051904(n+1))` -/
def P7338948793466901153.Spec : Prop :=
  ∀ n, (P7338948793466901153.a n : ℤ) = A052409 (n + 1)

theorem P7338948793466901153.correct : P7338948793466901153.Spec := by
  intro n
  simp only [A052409, Nat.add_sub_cancel]

end A052409

/-! ## A052409.P10383890008835658327

`gcd(A062977(n+1), A157754(n+1))`
-/

namespace A052409.P10383890008835658327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062977 (n + 1)) (A157754 (n + 1))

end

end A052409.P10383890008835658327

namespace A052409

/-- `gcd(A062977(n+1), A157754(n+1))` -/
def P10383890008835658327.Spec : Prop :=
  ∀ n, (P10383890008835658327.a n : ℤ) = A052409 (n + 1)

end A052409

/-! ## A052409.P16493141875629293198

`∑{e}[A006530(n+1), A253641(#+n)]`
-/

namespace A052409.P16493141875629293198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253641 (Nat.factorization (f1 n).natAbs p + n)

end

end A052409.P16493141875629293198

namespace A052409

/-- `∑{e}[A006530(n+1), A253641(#+n)]` -/
def P16493141875629293198.Spec : Prop :=
  ∀ n, P16493141875629293198.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P4862640621951741976

`∑{e}[A020639(n+1), A253641(#+n)]`
-/

namespace A052409.P4862640621951741976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A253641 (Nat.factorization (f1 n).natAbs p + n)

end

end A052409.P4862640621951741976

namespace A052409

/-- `∑{e}[A020639(n+1), A253641(#+n)]` -/
def P4862640621951741976.Spec : Prop :=
  ∀ n, P4862640621951741976.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P5890603073365456370

`A132349(n+1)+1-A075802(n+1)`
-/

namespace A052409.P5890603073365456370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132349 (n + 1) + (1 - A075802 (n + 1))

end

end A052409.P5890603073365456370

namespace A052409

/-- `A132349(n+1)+1-A075802(n+1)` -/
def P5890603073365456370.Spec : Prop :=
  ∀ n, P5890603073365456370.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P12425639916874220097

`A107286(A107286(n))*A253641(n+1)`
-/

namespace A052409.P12425639916874220097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 n).toNat * A253641 (n + 1)

end

end A052409.P12425639916874220097

namespace A052409

/-- `A107286(A107286(n))*A253641(n+1)` -/
def P12425639916874220097.Spec : Prop :=
  ∀ n, P12425639916874220097.a n = A052409 (n + 1)

end A052409

/-! ## A052409.P1443654774278344716

`A253641(n+1)*A266724(A266724(n))`
-/

namespace A052409.P1443654774278344716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1) * A266724 (A266724 n).toNat

end

end A052409.P1443654774278344716

namespace A052409

/-- `A253641(n+1)*A266724(A266724(n))` -/
def P1443654774278344716.Spec : Prop :=
  ∀ n, P1443654774278344716.a n = A052409 (n + 1)

end A052409

/-!
# A052410: Write n = m^k with m, k integers, k >= 1, then a(n) is the smallest possible choice for m.

The programs for A052410, the canonical program `A052410.P3102814015669483073` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052410 has offset 1).

The definition of A052410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052410.P9803797026880227605

`root(n+1, A253641(n+1))`
-/

namespace A052410.P9803797026880227605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A253641 (n + 1) : ℝ))

end

end A052410.P9803797026880227605

namespace A052410

/-- `root(n+1, A253641(n+1))` -/
def P9803797026880227605.Spec : Prop :=
  ∀ n, P9803797026880227605.a n = (A052410 (n + 1) : ℝ)

end A052410

/-! ## A052410.P13408699053620539574

`gcd(n+1, A175067(n+1))`
-/

namespace A052410.P13408699053620539574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A175067 (n + 1))

end

end A052410.P13408699053620539574

namespace A052410

/-- `gcd(n+1, A175067(n+1))` -/
def P13408699053620539574.Spec : Prop :=
  ∀ n, (P13408699053620539574.a n : ℤ) = A052410 (n + 1)

end A052410

/-! ## A052410.P16384430747084298940

`gcd(A000027(n+1), A175070(n+1))`
-/

namespace A052410.P16384430747084298940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A175070 (n + 1))

end

end A052410.P16384430747084298940

namespace A052410

/-- `gcd(A000027(n+1), A175070(n+1))` -/
def P16384430747084298940.Spec : Prop :=
  ∀ n, (P16384430747084298940.a n : ℤ) = A052410 (n + 1)

end A052410

/-! ## A052410.P3102814015669483073

`root(n+1, A052409(n+1)%A014601(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A052410

/-- `root(n+1, A052409(n+1)%A014601(a(n-1)))` -/
def P3102814015669483073.Spec : Prop :=
  ∀ n, P3102814015669483073.a n = (A052410 (n + 1) : ℝ)

end A052410

/-! ## A052410.P7844331954468763797

`gcd(A175070(n+1)+1+n, (n+1)/A327502(n+1))`
-/

namespace A052410.P7844331954468763797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175070 (n + 1) + 1 + (n : ℤ)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327502 (n + 1) : ℚ)))

end

end A052410.P7844331954468763797

namespace A052410

/-- `gcd(A175070(n+1)+1+n, (n+1)/A327502(n+1))` -/
def P7844331954468763797.Spec : Prop :=
  ∀ n, (P7844331954468763797.a n : ℤ) = A052410 (n + 1)

end A052410

/-! ## A052410.P16866134598858636003

`A025478(A340698(n+1))`
-/

namespace A052410.P16866134598858636003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A340698 (n + 1)).toNat

end

end A052410.P16866134598858636003

namespace A052410

/-- `A025478(A340698(n+1))` -/
def P16866134598858636003.Spec : Prop :=
  ∀ n, P16866134598858636003.a n = A052410 (n + 1)

end A052410

/-! ## A052410.P10879035632493514368

`A025478(A340699(n+1))`
-/

namespace A052410.P10879035632493514368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A340699 (n + 1)).toNat

end

end A052410.P10879035632493514368

namespace A052410

/-- `A025478(A340699(n+1))` -/
def P10879035632493514368.Spec : Prop :=
  ∀ n, P10879035632493514368.a n = A052410 (n + 1)

end A052410

/-! ## A052410.P239177503496049440

`A304491(A304481(n+1))`
-/

namespace A052410.P239177503496049440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (A304481 (n + 1)).toNat

end

end A052410.P239177503496049440

namespace A052410

/-- `A304491(A304481(n+1))` -/
def P239177503496049440.Spec : Prop :=
  ∀ n, P239177503496049440.a n = A052410 (n + 1)

end A052410

/-! ## A052410.P18337775154153675371

`A329814((n+1)²)`
-/

namespace A052410.P18337775154153675371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 ((n + 1) ^ 2)

end

end A052410.P18337775154153675371

namespace A052410

/-- `A329814((n+1)²)` -/
def P18337775154153675371.Spec : Prop :=
  ∀ n, P18337775154153675371.a n = A052410 (n + 1)

end A052410

/-! ## A052410.P2972067329566569242

`(n+1)²/A073843((n+1)²)`
-/

namespace A052410.P2972067329566569242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A073843 ((n + 1) ^ 2) : ℚ)

end

end A052410.P2972067329566569242

namespace A052410

/-- `(n+1)²/A073843((n+1)²)` -/
def P2972067329566569242.Spec : Prop :=
  ∀ n, P2972067329566569242.a n = (A052410 (n + 1) : ℚ)

end A052410

/-! ## A052410.P18065641912664532876

`A025478(A069623((n+1)²))`
-/

namespace A052410.P18065641912664532876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A069623 ((n + 1) ^ 2)).toNat

end

end A052410.P18065641912664532876

namespace A052410

/-- `A025478(A069623((n+1)²))` -/
def P18065641912664532876.Spec : Prop :=
  ∀ n, P18065641912664532876.a n = A052410 (n + 1)

end A052410

/-!
# A052411: Number of n-crossing hyperbolic knots having symmetry group Z1.

The programs for A052411, there is no canonical definition to state claims against.
-/

/-! ## A052411.P615262830833995780

`A326774(A137748(n))+A137748(n)`
-/

namespace A052411.P615262830833995780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A137748 n).toNat + A137748 n

end

end A052411.P615262830833995780

/-! ## A052411.P9729362753739629290

`A326544(lt[A222290(3*n+2), A218511(n+3)])`
-/

namespace A052411.P9729362753739629290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218511 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052411.P9729362753739629290

/-! ## A052411.P750461833370710301

`A326544(lt[A222290(3*n+2), A100883(n+4)])`
-/

namespace A052411.P750461833370710301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052411.P750461833370710301

/-! ## A052411.P2301971668119917618

`A326544(lt[A222290(3*n+2), A132328(3*n+4)])`
-/

namespace A052411.P2301971668119917618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222290 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132328 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052411.P2301971668119917618

/-!
# A052412: Number of n-crossing hyperbolic knots having symmetry group Z2.

The programs for A052412, there is no canonical definition to state claims against.
-/

/-! ## A052412.P3021042596621721779

`floor(A350827(n+1)/p?[p?[3*n+1]+4])`
-/

namespace A052412.P3021042596621721779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350827 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ)⌋

end

end A052412.P3021042596621721779

/-! ## A052412.P451293240550241900

`∑{d}[A319759(A259201(n)), #]`
-/

namespace A052412.P451293240550241900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (A259201 (n + 20)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A052412.P451293240550241900

/-! ## A052412.P4083799650278198948

`A066328(∑{d}[A078214(n+1), #])`
-/

namespace A052412.P4083799650278198948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A052412.P4083799650278198948

/-!
# A052413: Numbers without 5 as a digit.

The programs for A052413, the canonical program `A052413.P9361150373408811121` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052413 has offset 1).

The definition of A052413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052413.P9361150373408811121

`comp[A011535(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052413

/-- `comp[A011535(n+1)]` -/
def P9361150373408811121.Spec : Prop :=
  ∀ n, (P9361150373408811121.a n : ℤ) = A052413 (n + 1)

theorem P9361150373408811121.correct : P9361150373408811121.Spec := by
  intro n
  simp only [A052413, Nat.add_sub_cancel]

end A052413

/-! ## A052413.P15604620746603234414

`record[A004724(n)]`
-/

namespace A052413.P15604620746603234414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052413.P15604620746603234414

namespace A052413

/-- `record[A004724(n)]` -/
def P15604620746603234414.Spec : Prop :=
  ∀ n, P15604620746603234414.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P3024473921105939040

`eq[gcd(5, A051801(n))+n, n+1]`
-/

namespace A052413.P3024473921105939040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A051801 n) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052413.P3024473921105939040

namespace A052413

/-- `eq[gcd(5, A051801(n))+n, n+1]` -/
def P3024473921105939040.Spec : Prop :=
  ∀ n, (P3024473921105939040.a n : ℤ) = A052413 (n + 1)

end A052413

/-! ## A052413.P9853772228802113977

`lt[A010139(A051801(n)), 4]`
-/

namespace A052413.P9853772228802113977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 (A051801 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052413.P9853772228802113977

namespace A052413

/-- `lt[A010139(A051801(n)), 4]` -/
def P9853772228802113977.Spec : Prop :=
  ∀ n, (P9853772228802113977.a n : ℤ) = A052413 (n + 1)

end A052413

/-! ## A052413.P12386840035408997550

`record[A004180(n)]`
-/

namespace A052413.P12386840035408997550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052413.P12386840035408997550

namespace A052413

/-- `record[A004180(n)]` -/
def P12386840035408997550.Spec : Prop :=
  ∀ n, P12386840035408997550.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P17948975820936885096

`record[A222245(n)]`
-/

namespace A052413.P17948975820936885096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052413.P17948975820936885096

namespace A052413

/-- `record[A222245(n)]` -/
def P17948975820936885096.Spec : Prop :=
  ∀ n, P17948975820936885096.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P5914757334124332372

`lt[n*A316866(n), 1]`
-/

namespace A052413.P5914757334124332372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052413.P5914757334124332372

namespace A052413

/-- `lt[n*A316866(n), 1]` -/
def P5914757334124332372.Spec : Prop :=
  ∀ n, (P5914757334124332372.a n : ℤ) = A052413 (n + 1)

end A052413

/-! ## A052413.P2138468452690234304

`A222240(record[A222240(n)])`
-/

namespace A052413.P2138468452690234304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052413.P2138468452690234304

namespace A052413

/-- `A222240(record[A222240(n)])` -/
def P2138468452690234304.Spec : Prop :=
  ∀ n, P2138468452690234304.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P18357269203903866945

`record[A222249(A222246(n))]`
-/

namespace A052413.P18357269203903866945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052413.P18357269203903866945

namespace A052413

/-- `record[A222249(A222246(n))]` -/
def P18357269203903866945.Spec : Prop :=
  ∀ n, P18357269203903866945.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P1286160040822339367

`A222240(A052406(n+1))`
-/

namespace A052413.P1286160040822339367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A052406 (n + 1)).toNat

end

end A052413.P1286160040822339367

namespace A052413

/-- `A222240(A052406(n+1))` -/
def P1286160040822339367.Spec : Prop :=
  ∀ n, P1286160040822339367.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P4208917780037667300

`A222245(A052414(n+1))`
-/

namespace A052413.P4208917780037667300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A052414 (n + 1)).toNat

end

end A052413.P4208917780037667300

namespace A052413

/-- `A222245(A052414(n+1))` -/
def P4208917780037667300.Spec : Prop :=
  ∀ n, P4208917780037667300.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P8298648328180494252

`A004180(lt[n, A004180(n)+1])`
-/

namespace A052413.P8298648328180494252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052413.P8298648328180494252

namespace A052413

/-- `A004180(lt[n, A004180(n)+1])` -/
def P8298648328180494252.Spec : Prop :=
  ∀ n, P8298648328180494252.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P13432358939679862699

`A222240(lt[n, A004179(n)+1])`
-/

namespace A052413.P13432358939679862699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A052413.P13432358939679862699

namespace A052413

/-- `A222240(lt[n, A004179(n)+1])` -/
def P13432358939679862699.Spec : Prop :=
  ∀ n, P13432358939679862699.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P2439129458651552551

`A004180(lt[n-1, A004180(n)])`
-/

namespace A052413.P2439129458651552551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052413.P2439129458651552551

namespace A052413

/-- `A004180(lt[n-1, A004180(n)])` -/
def P2439129458651552551.Spec : Prop :=
  ∀ n, P2439129458651552551.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P14711659024311791781

`A222240(lt[n-1, A004179(n)])`
-/

namespace A052413.P14711659024311791781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052413.P14711659024311791781

namespace A052413

/-- `A222240(lt[n-1, A004179(n)])` -/
def P14711659024311791781.Spec : Prop :=
  ∀ n, P14711659024311791781.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P4168361748294408425

`record[A222235(A222236(A222235(n)))]`
-/

namespace A052413.P4168361748294408425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222236 (A222235 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052413.P4168361748294408425

namespace A052413

/-- `record[A222235(A222236(A222235(n)))]` -/
def P4168361748294408425.Spec : Prop :=
  ∀ n, P4168361748294408425.a n = A052413 (n + 1)

end A052413

/-! ## A052413.P427275790599272961

`eq[A107128(n), A222245(A107128(n))]`
-/

namespace A052413.P427275790599272961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A107128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052413.P427275790599272961

namespace A052413

/-- `eq[A107128(n), A222245(A107128(n))]` -/
def P427275790599272961.Spec : Prop :=
  ∀ n, (P427275790599272961.a n : ℤ) = A052413 (n + 1)

end A052413

/-! ## A052413.P6914973990608043924

`eq[A055640(n), A102669(2*n)]`
-/

namespace A052413.P6914973990608043924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052413.P6914973990608043924

namespace A052413

/-- `eq[A055640(n), A102669(2*n)]` -/
def P6914973990608043924.Spec : Prop :=
  ∀ n, (P6914973990608043924.a n : ℤ) = A052413 (n + 1)

end A052413

/-! ## A052413.P10250660913591908418

`eq[A092196(n), A119281(n)]`
-/

namespace A052413.P10250660913591908418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052413.P10250660913591908418

namespace A052413

/-- `eq[A092196(n), A119281(n)]` -/
def P10250660913591908418.Spec : Prop :=
  ∀ n, (P10250660913591908418.a n : ℤ) = A052413 (n + 1)

end A052413

/-!
# A052414: Numbers without 6 as a digit.

The programs for A052414, the canonical program `A052414.P5436341790358726284` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052414 has offset 1).

The definition of A052414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052414.P5436341790358726284

`comp[A011536(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052414

/-- `comp[A011536(n+1)]` -/
def P5436341790358726284.Spec : Prop :=
  ∀ n, (P5436341790358726284.a n : ℤ) = A052414 (n + 1)

theorem P5436341790358726284.correct : P5436341790358726284.Spec := by
  intro n
  simp only [A052414, Nat.add_sub_cancel]

end A052414

/-! ## A052414.P5543175521862652375

`record[A004725(n)]`
-/

namespace A052414.P5543175521862652375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052414.P5543175521862652375

namespace A052414

/-- `record[A004725(n)]` -/
def P5543175521862652375.Spec : Prop :=
  ∀ n, P5543175521862652375.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P5412807499355119591

`eq[A063720(n), A277116(n)]`
-/

namespace A052414.P5412807499355119591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052414.P5412807499355119591

namespace A052414

/-- `eq[A063720(n), A277116(n)]` -/
def P5412807499355119591.Spec : Prop :=
  ∀ n, (P5412807499355119591.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P11799347101868175018

`eq[0, A102677(n)-A102679(n)]`
-/

namespace A052414.P11799347101868175018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n - A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052414.P11799347101868175018

namespace A052414

/-- `eq[0, A102677(n)-A102679(n)]` -/
def P11799347101868175018.Spec : Prop :=
  ∀ n, (P11799347101868175018.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P14106299799637342374

`eq[A004086(n), A004181(A004086(n))]`
-/

namespace A052414.P14106299799637342374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052414.P14106299799637342374

namespace A052414

/-- `eq[A004086(n), A004181(A004086(n))]` -/
def P14106299799637342374.Spec : Prop :=
  ∀ n, (P14106299799637342374.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P10341729748279780079

`record[A004181(n)]`
-/

namespace A052414.P10341729748279780079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052414.P10341729748279780079

namespace A052414

/-- `record[A004181(n)]` -/
def P10341729748279780079.Spec : Prop :=
  ∀ n, P10341729748279780079.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P12826601722505520251

`record[A222249(n)]`
-/

namespace A052414.P12826601722505520251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052414.P12826601722505520251

namespace A052414

/-- `record[A222249(n)]` -/
def P12826601722505520251.Spec : Prop :=
  ∀ n, P12826601722505520251.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P12346832367089829842

`lt[n*A316867(n), 1]`
-/

namespace A052414.P12346832367089829842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316867 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052414.P12346832367089829842

namespace A052414

/-- `lt[n*A316867(n), 1]` -/
def P12346832367089829842.Spec : Prop :=
  ∀ n, (P12346832367089829842.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P3442596821882086169

`A222245(record[A222245(n)])`
-/

namespace A052414.P3442596821882086169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052414.P3442596821882086169

namespace A052414

/-- `A222245(record[A222245(n)])` -/
def P3442596821882086169.Spec : Prop :=
  ∀ n, P3442596821882086169.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P5898866288052350247

`A222245(A052413(n+1))`
-/

namespace A052414.P5898866288052350247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A052413 (n + 1)).toNat

end

end A052414.P5898866288052350247

namespace A052414

/-- `A222245(A052413(n+1))` -/
def P5898866288052350247.Spec : Prop :=
  ∀ n, P5898866288052350247.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P18166733914039159164

`A222249(A052419(n+1))`
-/

namespace A052414.P18166733914039159164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A052419 (n + 1)).toNat

end

end A052414.P18166733914039159164

namespace A052414

/-- `A222249(A052419(n+1))` -/
def P18166733914039159164.Spec : Prop :=
  ∀ n, P18166733914039159164.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P15847247286558022613

`A004181(eq[n, A004181(n)])`
-/

namespace A052414.P15847247286558022613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052414.P15847247286558022613

namespace A052414

/-- `A004181(eq[n, A004181(n)])` -/
def P15847247286558022613.Spec : Prop :=
  ∀ n, P15847247286558022613.a n = A052414 (n + 1)

end A052414

/-! ## A052414.P6565385245483674712

`eq[A117229(n), A276729(n)]`
-/

namespace A052414.P6565385245483674712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052414.P6565385245483674712

namespace A052414

/-- `eq[A117229(n), A276729(n)]` -/
def P6565385245483674712.Spec : Prop :=
  ∀ n, (P6565385245483674712.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P376450745618499033

`lt[n, A000203(A004181(n)+1)]`
-/

namespace A052414.P376450745618499033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004181 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052414.P376450745618499033

namespace A052414

/-- `lt[n, A000203(A004181(n)+1)]` -/
def P376450745618499033.Spec : Prop :=
  ∀ n, (P376450745618499033.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P3222682179283279123

`lt[n-A004181(n), A000005(n+1)]`
-/

namespace A052414.P3222682179283279123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052414.P3222682179283279123

namespace A052414

/-- `lt[n-A004181(n), A000005(n+1)]` -/
def P3222682179283279123.Spec : Prop :=
  ∀ n, (P3222682179283279123.a n : ℤ) = A052414 (n + 1)

end A052414

/-! ## A052414.P821637011110866661

`eq[A107130(n), A222245(A107130(n))]`
-/

namespace A052414.P821637011110866661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052414.P821637011110866661

namespace A052414

/-- `eq[A107130(n), A222245(A107130(n))]` -/
def P821637011110866661.Spec : Prop :=
  ∀ n, (P821637011110866661.a n : ℤ) = A052414 (n + 1)

end A052414

/-!
# A052415: Number of n-crossing hyperbolic knots having symmetry group D1.

The programs for A052415, there is no canonical definition to state claims against.
-/

/-! ## A052415.P15330319830678390249

`A241069(A236144(n))`
-/

namespace A052415.P15330319830678390249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (A236144 n).toNat

end

end A052415.P15330319830678390249

/-! ## A052415.P5124812289759132818

`A241069(A393996(n))`
-/

namespace A052415.P5124812289759132818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (A393996 n).toNat

end

end A052415.P5124812289759132818

/-! ## A052415.P10238816671353815022

`A241069(A048022(n+1))`
-/

namespace A052415.P10238816671353815022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (A048022 (n + 1)).toNat

end

end A052415.P10238816671353815022

/-! ## A052415.P3617942899663149299

`A097089(A193489(n+1))`
-/

namespace A052415.P3617942899663149299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097089 (A193489 (n + 1)).toNat

end

end A052415.P3617942899663149299

/-! ## A052415.P3031823399742239779

`A282192(A029588(n)+1)`
-/

namespace A052415.P3031823399742239779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (A029588 n + 1).toNat

end

end A052415.P3031823399742239779

/-!
# A052416: Number of n-crossing hyperbolic knots having symmetry group D2.

The programs for A052416, there is no canonical definition to state claims against.
-/

/-! ## A052416.P17872259657631643627

`A024317(A165452(n+1))`
-/

namespace A052416.P17872259657631643627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A165452 (n + 1)).toNat

end

end A052416.P17872259657631643627

/-! ## A052416.P8971252208254940955

`A334126(A099962(n))-1`
-/

namespace A052416.P8971252208254940955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334126 (A099962 n).toNat - 1

end

end A052416.P8971252208254940955

/-! ## A052416.P2683665446403664186

`A003056(A135588(n+2)%A090899(n+1))`
-/

namespace A052416.P2683665446403664186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A135588 (n + 2)) (A090899 (n + 1))).toNat

end

end A052416.P2683665446403664186

/-!
# A052419: Numbers without 7 as a digit.

The programs for A052419, the canonical program `A052419.P1356006972829932329` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052419 has offset 1).

The definition of A052419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052419.P9985373763774832891

`record[A004182(n)]`
-/

namespace A052419.P9985373763774832891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052419.P9985373763774832891

namespace A052419

/-- `record[A004182(n)]` -/
def P9985373763774832891.Spec : Prop :=
  ∀ n, P9985373763774832891.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P1356006972829932329

`comp[A011537(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052419

/-- `comp[A011537(n+1)]` -/
def P1356006972829932329.Spec : Prop :=
  ∀ n, (P1356006972829932329.a n : ℤ) = A052419 (n + 1)

theorem P1356006972829932329.correct : P1356006972829932329.Spec := by
  intro n
  simp only [A052419, Nat.add_sub_cancel]

end A052419

/-! ## A052419.P4677131512001311868

`record[A004726(n)]`
-/

namespace A052419.P4677131512001311868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052419.P4677131512001311868

namespace A052419

/-- `record[A004726(n)]` -/
def P4677131512001311868.Spec : Prop :=
  ∀ n, P4677131512001311868.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P16311007121901090180

`eq[gcd(7, A051801(n))+n, n+1]`
-/

namespace A052419.P16311007121901090180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A051801 n) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P16311007121901090180

namespace A052419

/-- `eq[gcd(7, A051801(n))+n, n+1]` -/
def P16311007121901090180.Spec : Prop :=
  ∀ n, (P16311007121901090180.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P6162401811625113930

`lt[A006530(A051801(n)), 6]`
-/

namespace A052419.P6162401811625113930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051801 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052419.P6162401811625113930

namespace A052419

/-- `lt[A006530(A051801(n)), 6]` -/
def P6162401811625113930.Spec : Prop :=
  ∀ n, (P6162401811625113930.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P13327511043800113090

`eq[A006942(n), A010371(n)]`
-/

namespace A052419.P13327511043800113090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P13327511043800113090

namespace A052419

/-- `eq[A006942(n), A010371(n)]` -/
def P13327511043800113090.Spec : Prop :=
  ∀ n, (P13327511043800113090.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P17287741397751201688

`eq[A027386(n), A027388(n)]`
-/

namespace A052419.P17287741397751201688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027386 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P17287741397751201688

namespace A052419

/-- `eq[A027386(n), A027388(n)]` -/
def P17287741397751201688.Spec : Prop :=
  ∀ n, (P17287741397751201688.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P17001057477812600559

`eq[A004181(A235049(n)), A235049(n)]`
-/

namespace A052419.P17001057477812600559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P17001057477812600559

namespace A052419

/-- `eq[A004181(A235049(n)), A235049(n)]` -/
def P17001057477812600559.Spec : Prop :=
  ∀ n, (P17001057477812600559.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P13965990466203970100

`record[A222252(n)]`
-/

namespace A052419.P13965990466203970100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052419.P13965990466203970100

namespace A052419

/-- `record[A222252(n)]` -/
def P13965990466203970100.Spec : Prop :=
  ∀ n, P13965990466203970100.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P14805335467159055527

`lt[n*A316868(n), 1]`
-/

namespace A052419.P14805335467159055527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316868 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052419.P14805335467159055527

namespace A052419

/-- `lt[n*A316868(n), 1]` -/
def P14805335467159055527.Spec : Prop :=
  ∀ n, (P14805335467159055527.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P14453573222731814852

`A222249(record[A222249(n)])`
-/

namespace A052419.P14453573222731814852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052419.P14453573222731814852

namespace A052419

/-- `A222249(record[A222249(n)])` -/
def P14453573222731814852.Spec : Prop :=
  ∀ n, P14453573222731814852.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P11185411873448291738

`record[A222254(A222253(n))]`
-/

namespace A052419.P11185411873448291738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052419.P11185411873448291738

namespace A052419

/-- `record[A222254(A222253(n))]` -/
def P11185411873448291738.Spec : Prop :=
  ∀ n, P11185411873448291738.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P7804536541166488842

`A222249(A052414(n+1))`
-/

namespace A052419.P7804536541166488842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A052414 (n + 1)).toNat

end

end A052419.P7804536541166488842

namespace A052419

/-- `A222249(A052414(n+1))` -/
def P7804536541166488842.Spec : Prop :=
  ∀ n, P7804536541166488842.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P11226726943968024605

`A222252(A052421(n+1))`
-/

namespace A052419.P11226726943968024605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A052421 (n + 1)).toNat

end

end A052419.P11226726943968024605

namespace A052419

/-- `A222252(A052421(n+1))` -/
def P11226726943968024605.Spec : Prop :=
  ∀ n, P11226726943968024605.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P9655110903495827743

`eq[A027387(n), A027389(n)]`
-/

namespace A052419.P9655110903495827743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P9655110903495827743

namespace A052419

/-- `eq[A027387(n), A027389(n)]` -/
def P9655110903495827743.Spec : Prop :=
  ∀ n, (P9655110903495827743.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P13235591611174426730

`A222252(eq[n, A004183(n)])`
-/

namespace A052419.P13235591611174426730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052419.P13235591611174426730

namespace A052419

/-- `A222252(eq[n, A004183(n)])` -/
def P13235591611174426730.Spec : Prop :=
  ∀ n, P13235591611174426730.a n = A052419 (n + 1)

end A052419

/-! ## A052419.P757784478395370068

`eq[A074458(n), A277116(n)]`
-/

namespace A052419.P757784478395370068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052419.P757784478395370068

namespace A052419

/-- `eq[A074458(n), A277116(n)]` -/
def P757784478395370068.Spec : Prop :=
  ∀ n, (P757784478395370068.a n : ℤ) = A052419 (n + 1)

end A052419

/-! ## A052419.P10659990192723186786

`record[A061601(n)+n-A035043(A061601(n))]`
-/

namespace A052419.P10659990192723186786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + ((n : ℤ) - A035043 (A061601 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052419.P10659990192723186786

namespace A052419

/-- `record[A061601(n)+n-A035043(A061601(n))]` -/
def P10659990192723186786.Spec : Prop :=
  ∀ n, P10659990192723186786.a n = A052419 (n + 1)

end A052419

/-!
# A052421: Numbers without 8 as a digit.

The programs for A052421, the canonical program `A052421.P4187799602558401077` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052421 has offset 1).

The definition of A052421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052421.P4187799602558401077

`comp[A011538(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A052421

/-- `comp[A011538(n+1)]` -/
def P4187799602558401077.Spec : Prop :=
  ∀ n, (P4187799602558401077.a n : ℤ) = A052421 (n + 1)

theorem P4187799602558401077.correct : P4187799602558401077.Spec := by
  intro n
  simp only [A052421, Nat.add_sub_cancel]

end A052421

/-! ## A052421.P5775756447905325080

`comp[record[A011538(A349315(n))]]`
-/

namespace A052421.P5775756447905325080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (A349315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052421.P5775756447905325080

namespace A052421

/-- `comp[record[A011538(A349315(n))]]` -/
def P5775756447905325080.Spec : Prop :=
  ∀ n, (P5775756447905325080.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P3207952191192942662

`record[A004727(n)]`
-/

namespace A052421.P3207952191192942662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052421.P3207952191192942662

namespace A052421

/-- `record[A004727(n)]` -/
def P3207952191192942662.Spec : Prop :=
  ∀ n, P3207952191192942662.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P7090845014453419594

`eq[A004086(n), A004183(A004086(n))]`
-/

namespace A052421.P7090845014453419594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052421.P7090845014453419594

namespace A052421

/-- `eq[A004086(n), A004183(A004086(n))]` -/
def P7090845014453419594.Spec : Prop :=
  ∀ n, (P7090845014453419594.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P17796527629936239077

`eq[A004176(n), A004183(A004176(n))]`
-/

namespace A052421.P17796527629936239077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052421.P17796527629936239077

namespace A052421

/-- `eq[A004176(n), A004183(A004176(n))]` -/
def P17796527629936239077.Spec : Prop :=
  ∀ n, (P17796527629936239077.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P9145467244039217324

`eq[A222253(A235049(n)), A235049(n)]`
-/

namespace A052421.P9145467244039217324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A235049 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052421.P9145467244039217324

namespace A052421

/-- `eq[A222253(A235049(n)), A235049(n)]` -/
def P9145467244039217324.Spec : Prop :=
  ∀ n, (P9145467244039217324.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P10606311548990566578

`eq[A277116(n)+A102679(n), A010371(n)]`
-/

namespace A052421.P10606311548990566578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052421.P10606311548990566578

namespace A052421

/-- `eq[A277116(n)+A102679(n), A010371(n)]` -/
def P10606311548990566578.Spec : Prop :=
  ∀ n, (P10606311548990566578.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P5731180426135855918

`record[A004183(n)]`
-/

namespace A052421.P5731180426135855918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052421.P5731180426135855918

namespace A052421

/-- `record[A004183(n)]` -/
def P5731180426135855918.Spec : Prop :=
  ∀ n, P5731180426135855918.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P8961127496768117972

`record[A222254(n)]`
-/

namespace A052421.P8961127496768117972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052421.P8961127496768117972

namespace A052421

/-- `record[A222254(n)]` -/
def P8961127496768117972.Spec : Prop :=
  ∀ n, P8961127496768117972.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P666780639243262548

`A222254(A007095(n))`
-/

namespace A052421.P666780639243262548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A007095 n).toNat

end

end A052421.P666780639243262548

namespace A052421

/-- `A222254(A007095(n))` -/
def P666780639243262548.Spec : Prop :=
  ∀ n, P666780639243262548.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P3140146211495130578

`A222252(record[A222252(n)])`
-/

namespace A052421.P3140146211495130578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052421.P3140146211495130578

namespace A052421

/-- `A222252(record[A222252(n)])` -/
def P3140146211495130578.Spec : Prop :=
  ∀ n, P3140146211495130578.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P6335103265792823152

`A222252(A052419(n+1))`
-/

namespace A052421.P6335103265792823152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A052419 (n + 1)).toNat

end

end A052421.P6335103265792823152

namespace A052421

/-- `A222252(A052419(n+1))` -/
def P6335103265792823152.Spec : Prop :=
  ∀ n, P6335103265792823152.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P5365542072576024825

`lt[A316864(A222238(n)), 1]`
-/

namespace A052421.P5365542072576024825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222238 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A052421.P5365542072576024825

namespace A052421

/-- `lt[A316864(A222238(n)), 1]` -/
def P5365542072576024825.Spec : Prop :=
  ∀ n, (P5365542072576024825.a n : ℤ) = A052421 (n + 1)

end A052421

/-! ## A052421.P10489413453041419226

`A222254(lt[A054055(n), 9])`
-/

namespace A052421.P10489413453041419226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A052421.P10489413453041419226

namespace A052421

/-- `A222254(lt[A054055(n), 9])` -/
def P10489413453041419226.Spec : Prop :=
  ∀ n, P10489413453041419226.a n = A052421 (n + 1)

end A052421

/-! ## A052421.P9444496852651646880

`A004183(eq[n, A004183(n)])`
-/

namespace A052421.P9444496852651646880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052421.P9444496852651646880

namespace A052421

/-- `A004183(eq[n, A004183(n)])` -/
def P9444496852651646880.Spec : Prop :=
  ∀ n, P9444496852651646880.a n = A052421 (n + 1)

end A052421

/-!
# A052423: Highest common factor of nonzero digits of n.

The programs for A052423, there is no canonical definition to state claims against.
-/

/-! ## A052423.P13622420866743259654

`(n+1)/A350494(n+1)`
-/

namespace A052423.P13622420866743259654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350494 (n + 1) : ℚ)

end

end A052423.P13622420866743259654

/-! ## A052423.P13789361246322877135

`A064894(A086066(n+1))`
-/

namespace A052423.P13789361246322877135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A086066 (n + 1)).toNat

end

end A052423.P13789361246322877135

/-! ## A052423.P3712203991088183585

`A289508(A113581(n+1))`
-/

namespace A052423.P3712203991088183585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A113581 (n + 1)).toNat

end

end A052423.P3712203991088183585

/-! ## A052423.P292683821611228937

`∑[Δ[A289508(A113581(n))]%10]`
-/

namespace A052423.P292683821611228937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A113581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052423.P292683821611228937

/-! ## A052423.P7620433678858666221

`A219158(A350494(n+1)+∑[n])`
-/

namespace A052423.P7620433678858666221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A350494 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A052423.P7620433678858666221

/-! ## A052423.P8697445759044322298

`gcd(n+1, A000030(A077342(n+1)))`
-/

namespace A052423.P8697445759044322298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000030 (A077342 (n + 1)).toNat)

end

end A052423.P8697445759044322298

/-! ## A052423.P16820429473494495001

`gcd(A000030(n+1), A051801(A216556(n)))`
-/

namespace A052423.P16820429473494495001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000030 (n + 1)) (A051801 (A216556 n).toNat)

end

end A052423.P16820429473494495001

/-! ## A052423.P1671458229726164314

`gcd(A115299(n+1), A156230(n+1))`
-/

namespace A052423.P1671458229726164314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115299 (n + 1)) (A156230 (n + 1))

end

end A052423.P1671458229726164314

/-! ## A052423.P2251660547480568471

`gcd(A256851(n+1), A365762(n+1))`
-/

namespace A052423.P2251660547480568471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256851 (n + 1)) (A365762 (n + 1))

end

end A052423.P2251660547480568471

/-! ## A052423.P10452410199669759097

`A053164(A055013(n+1))`
-/

namespace A052423.P10452410199669759097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A055013 (n + 1)).toNat

end

end A052423.P10452410199669759097

/-!
# A052424: Numbers k with no single-digit factors (apart from 1 and k).

The programs for A052424, the canonical program `A052424.P2266078276954226597` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052424 has offset 1).

The definition of A052424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052424.P15615853610069624675

`∪[A008364(n+1), A042988(n)]`
-/

namespace A052424.P15615853610069624675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P15615853610069624675

namespace A052424

/-- `∪[A008364(n+1), A042988(n)]` -/
def P15615853610069624675.Spec : Prop :=
  ∀ n, (P15615853610069624675.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P13186465530465248768

`∪[A008364(n+1), A042990(n)]`
-/

namespace A052424.P13186465530465248768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P13186465530465248768

namespace A052424

/-- `∪[A008364(n+1), A042990(n)]` -/
def P13186465530465248768.Spec : Prop :=
  ∀ n, (P13186465530465248768.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P16505449539229899794

`∪[A055398(n+1), A008349(n)]`
-/

namespace A052424.P16505449539229899794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P16505449539229899794

namespace A052424

/-- `∪[A055398(n+1), A008349(n)]` -/
def P16505449539229899794.Spec : Prop :=
  ∀ n, (P16505449539229899794.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P16271305658108491616

`∪[A055398(n+1), A008419(n)]`
-/

namespace A052424.P16271305658108491616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P16271305658108491616

namespace A052424

/-- `∪[A055398(n+1), A008419(n)]` -/
def P16271305658108491616.Spec : Prop :=
  ∀ n, (P16271305658108491616.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P1033480263118500950

`∪[A055398(n+1), A008514(n)]`
-/

namespace A052424.P1033480263118500950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P1033480263118500950

namespace A052424

/-- `∪[A055398(n+1), A008514(n)]` -/
def P1033480263118500950.Spec : Prop :=
  ∀ n, (P1033480263118500950.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P4033415142183728913

`∪[A055398(n+1), A017177(n)]`
-/

namespace A052424.P4033415142183728913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P4033415142183728913

namespace A052424

/-- `∪[A055398(n+1), A017177(n)]` -/
def P4033415142183728913.Spec : Prop :=
  ∀ n, (P4033415142183728913.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P5657439212882152834

`∪[A000040(n+1), A008364(n+1)]`
-/

namespace A052424.P5657439212882152834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P5657439212882152834

namespace A052424

/-- `∪[A000040(n+1), A008364(n+1)]` -/
def P5657439212882152834.Spec : Prop :=
  ∀ n, (P5657439212882152834.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P1811084908702456427

`∪[A008364(n+1), A030475(n+1)]`
-/

namespace A052424.P1811084908702456427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P1811084908702456427

namespace A052424

/-- `∪[A008364(n+1), A030475(n+1)]` -/
def P1811084908702456427.Spec : Prop :=
  ∀ n, (P1811084908702456427.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P13960729160833669610

`∪[A008364(n+1), A038614(n+1)]`
-/

namespace A052424.P13960729160833669610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P13960729160833669610

namespace A052424

/-- `∪[A008364(n+1), A038614(n+1)]` -/
def P13960729160833669610.Spec : Prop :=
  ∀ n, (P13960729160833669610.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P16218531683187545274

`∪[A008364(n+1), ∑[A054541(n+1)]]`
-/

namespace A052424.P16218531683187545274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P16218531683187545274

namespace A052424

/-- `∪[A008364(n+1), ∑[A054541(n+1)]]` -/
def P16218531683187545274.Spec : Prop :=
  ∀ n, (P16218531683187545274.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P10281663421367195901

`∪[A006093(n+1)+1, A008364(n+1)]`
-/

namespace A052424.P10281663421367195901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052424.P10281663421367195901

namespace A052424

/-- `∪[A006093(n+1)+1, A008364(n+1)]` -/
def P10281663421367195901.Spec : Prop :=
  ∀ n, (P10281663421367195901.a n : ℤ) = A052424 (n + 1)

end A052424

/-! ## A052424.P2266078276954226597

`A055398(A028310(n))-A000007(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052424

/-- `A055398(A028310(n))-A000007(n)` -/
def P2266078276954226597.Spec : Prop :=
  ∀ n, P2266078276954226597.a n = A052424 (n + 1)

theorem P2266078276954226597.correct : P2266078276954226597.Spec := by
  intro n
  simp only [A052424, Nat.add_sub_cancel]

end A052424

/-! ## A052424.P11705649424240049352

`A055398(A028310(n))/A054977(n)`
-/

namespace A052424.P11705649424240049352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055398 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A052424.P11705649424240049352

namespace A052424

/-- `A055398(A028310(n))/A054977(n)` -/
def P11705649424240049352.Spec : Prop :=
  ∀ n, P11705649424240049352.a n = (A052424 (n + 1) : ℚ)

end A052424

/-! ## A052424.P9212941733266890373

`A055398(A000007(n)+n)-A000007(n)`
-/

namespace A052424.P9212941733266890373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A052424.P9212941733266890373

namespace A052424

/-- `A055398(A000007(n)+n)-A000007(n)` -/
def P9212941733266890373.Spec : Prop :=
  ∀ n, P9212941733266890373.a n = A052424 (n + 1)

end A052424

/-! ## A052424.P4629934442187022172

`A055398(A028310(n))-A008683(A008574(n))`
-/

namespace A052424.P4629934442187022172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A008683 (A008574 n).toNat

end

end A052424.P4629934442187022172

namespace A052424

/-- `A055398(A028310(n))-A008683(A008574(n))` -/
def P4629934442187022172.Spec : Prop :=
  ∀ n, P4629934442187022172.a n = A052424 (n + 1)

end A052424

/-! ## A052424.P964382550825912472

`A055398(A028310(n))^A005811(A038573(n))`
-/

namespace A052424.P964382550825912472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055398 (A028310 n).toNat : ℚ) ^ (A005811 (A038573 n).toNat : ℤ)

end

end A052424.P964382550825912472

namespace A052424

/-- `A055398(A028310(n))^A005811(A038573(n))` -/
def P964382550825912472.Spec : Prop :=
  ∀ n, P964382550825912472.a n = (A052424 (n + 1) : ℚ)

end A052424

/-! ## A052424.P9482153951918871601

`A055398(A028310(n))-A266220(A052928(n+1))`
-/

namespace A052424.P9482153951918871601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A266220 (A052928 (n + 1)).toNat

end

end A052424.P9482153951918871601

namespace A052424

/-- `A055398(A028310(n))-A266220(A052928(n+1))` -/
def P9482153951918871601.Spec : Prop :=
  ∀ n, P9482153951918871601.a n = A052424 (n + 1)

end A052424

/-! ## A052424.P10768670437152132108

`A055398(A028310(n))-A266220(2*n)`
-/

namespace A052424.P10768670437152132108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A266220 (2 * n)

end

end A052424.P10768670437152132108

namespace A052424

/-- `A055398(A028310(n))-A266220(2*n)` -/
def P10768670437152132108.Spec : Prop :=
  ∀ n, P10768670437152132108.a n = A052424 (n + 1)

end A052424

/-! ## A052424.P9929899262845523372

`A055398(A028310(n))-A049084(2*(n+1))`
-/

namespace A052424.P9929899262845523372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A028310 n).toNat - A049084 (2 * (n + 1))

end

end A052424.P9929899262845523372

namespace A052424

/-- `A055398(A028310(n))-A049084(2*(n+1))` -/
def P9929899262845523372.Spec : Prop :=
  ∀ n, P9929899262845523372.a n = A052424 (n + 1)

end A052424

/-! ## A052424.P12161942419783717317

`A055398(A123108(2*n))-(1-A062157(n)²)`
-/

namespace A052424.P12161942419783717317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A123108 (2 * n)).toNat - (1 - A062157 n ^ 2)

end

end A052424.P12161942419783717317

namespace A052424

/-- `A055398(A123108(2*n))-(1-A062157(n)²)` -/
def P12161942419783717317.Spec : Prop :=
  ∀ n, P12161942419783717317.a n = A052424 (n + 1)

end A052424

/-!
# A052425: Numbers with no two-digit factors (apart from itself).

The programs for A052425, there is no canonical definition to state claims against.
-/

/-! ## A052425.P6723578671938519495

`lt[A298422(n+1), A020485(n)+n]`
-/

namespace A052425.P6723578671938519495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052425.P6723578671938519495

/-! ## A052425.P1463028368997352771

`lt[A109706(A054395(n+1)+1), A020639(n+1)^4]+1`
-/

namespace A052425.P1463028368997352771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109706 (A054395 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A052425.P1463028368997352771

/-! ## A052425.P9860112627108657028

`lt[A059995(n), A107286(n²)]`
-/

namespace A052425.P9860112627108657028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052425.P9860112627108657028

/-! ## A052425.P8510019450993571691

`eq[0, C(A059995(n+1), A107286(n²))]`
-/

namespace A052425.P8510019450993571691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059995 (n + 1)).toNat (A107286 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A052425.P8510019450993571691

/-! ## A052425.P163219836572031384

`eq[1, A213217(A280498(n+1))]+1`
-/

namespace A052425.P163219836572031384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A280498 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052425.P163219836572031384

/-!
# A052428: Strict Egyptian numbers (complement of A051882).

The programs for A052428, there is no canonical definition to state claims against.
-/

/-! ## A052428.P9024112570502793874

`lt[0, A051907(n+1)]+1`
-/

namespace A052428.P9024112570502793874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A052428.P9024112570502793874

/-!
# A052429: Least common multiple of nonzero digits of n.

The programs for A052429, there is no canonical definition to state claims against.
-/

/-! ## A052429.P11704179417094835047

`A062078(A004185(n+1))`
-/

namespace A052429.P11704179417094835047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (A004185 (n + 1)).toNat

end

end A052429.P11704179417094835047

/-! ## A052429.P10447222591579443719

`A062078(A004719(n+1))`
-/

namespace A052429.P10447222591579443719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (A004719 (n + 1)).toNat

end

end A052429.P10447222591579443719

/-! ## A052429.P11829707926998102896

`A062078(A180410(n+1))`
-/

namespace A052429.P11829707926998102896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (A180410 (n + 1)).toNat

end

end A052429.P11829707926998102896

/-! ## A052429.P11576861815544672250

`A078546(n+1)-A078548(n+1)`
-/

namespace A052429.P11576861815544672250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078546 (n + 1) - A078548 (n + 1)

end

end A052429.P11576861815544672250

/-! ## A052429.P6867358633842712843

`A078547(n+1)+1+n-A078548(n+1)`
-/

namespace A052429.P6867358633842712843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078547 (n + 1) + 1 + (n : ℤ) - A078548 (n + 1)

end

end A052429.P6867358633842712843

/-! ## A052429.P10786404338286766868

`A290103(A113581(n+1))`
-/

namespace A052429.P10786404338286766868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A113581 (n + 1)).toNat

end

end A052429.P10786404338286766868

/-! ## A052429.P1434688209311059956

`A118759(gcd(A078546(n+1), A078548(n+1)))`
-/

namespace A052429.P1434688209311059956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.gcd (A078546 (n + 1)) (A078548 (n + 1)))

end

end A052429.P1434688209311059956

/-! ## A052429.P3073128875676869248

`A062078(A343750(n+1))`
-/

namespace A052429.P3073128875676869248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (A343750 (n + 1)).toNat

end

end A052429.P3073128875676869248

/-!
# A052430: Numbers n such that sum of digits and product of digits are both prime.

The programs for A052430, there is no canonical definition to state claims against.
-/

/-! ## A052430.P9911544090739384125

`∩[A028834(n+1), A028842(n+1)]`
-/

namespace A052430.P9911544090739384125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052430.P9911544090739384125

/-! ## A052430.P4460408205428318452

`∩[A028842(n+1), A070026(n+1)]`
-/

namespace A052430.P4460408205428318452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052430.P4460408205428318452

/-! ## A052430.P3796830616570070223

`∩[A028835(n+1), A028842(n+1)]`
-/

namespace A052430.P3796830616570070223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052430.P3796830616570070223

/-!
# A052431: Number of perfect simple undirected graphs on n nodes.

The programs for A052431, there is no canonical definition to state claims against.
-/

/-! ## A052431.P1435357563023914113

`Δ[A006897(n)]-A187236(n+1)`
-/

namespace A052431.P1435357563023914113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A187236 (n + 1)

end

end A052431.P1435357563023914113

/-! ## A052431.P4771893565925168134

`A000088(n+1)-A187236(n+1)`
-/

namespace A052431.P4771893565925168134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A187236 (n + 1)

end

end A052431.P4771893565925168134

/-! ## A052431.P15186179071494388208

`A236525(n+1)+A033995(A005555(n))-A187236(n+1)`
-/

namespace A052431.P15186179071494388208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236525 (n + 1) + (A033995 (A005555 n).toNat - A187236 (n + 1))

end

end A052431.P15186179071494388208

/-! ## A052431.P2329907024541590621

`A236525(n+1)+A033995(A291769(n))-A187236(n+1)`
-/

namespace A052431.P2329907024541590621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236525 (n + 1) + (A033995 (A291769 n).toNat - A187236 (n + 1))

end

end A052431.P2329907024541590621

/-! ## A052431.P11761281230958039642

`A236525(n+1)+A033995(A331300(n))-A187236(n+1)`
-/

namespace A052431.P11761281230958039642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236525 (n + 1) + (A033995 (A331300 n).toNat - A187236 (n + 1))

end

end A052431.P11761281230958039642

/-!
# A052433: Number of perfect connected undirected simple graphs on n nodes.

The programs for A052433, there is no canonical definition to state claims against.
-/

/-! ## A052433.P4575988800744819874

`A287511(n+1)+A005142(n+1)`
-/

namespace A052433.P4575988800744819874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287511 (n + 1) + A005142 (n + 1)

end

end A052433.P4575988800744819874

/-! ## A052433.P8886722044272182327

`A001349(n+1)-A187237(n+1)`
-/

namespace A052433.P8886722044272182327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A187237 (n + 1)

end

end A052433.P8886722044272182327

/-! ## A052433.P3060844767714802665

`A052431(n+1)-A286949(n+1)`
-/

namespace A052433.P3060844767714802665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052431 (n + 1) - A286949 (n + 1)

end

end A052433.P3060844767714802665

/-! ## A052433.P15294390033421388258

`A201922(A000124(n))-A187237(n+1)`
-/

namespace A052433.P15294390033421388258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A187237 (n + 1)

end

end A052433.P15294390033421388258

/-! ## A052433.P221007729281676548

`A287512(n+1)+A033995(n+1)-A286949(n+1)`
-/

namespace A052433.P221007729281676548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287512 (n + 1) + A033995 (n + 1) - A286949 (n + 1)

end

end A052433.P221007729281676548

/-!
# A052434: Nearest integer to R(n) - pi(n), where R(x) is the Riemann prime counting function.

The programs for A052434, there is no canonical definition to state claims against.
-/

/-! ## A052434.P12234673253289251541

`A054525(A017077(n)*A082729(n+1))`
-/

namespace A052434.P12234673253289251541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A017077 n * A082729 (n + 1)).toNat

end

end A052434.P12234673253289251541

/-! ## A052434.P12209564395672639427

`A014048(∑[∑[A245608(n+1)]])`
-/

namespace A052434.P12209564395672639427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014048 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052434.P12209564395672639427

/-! ## A052434.P6641676800388461322

`(1-A001221(A063750(n+1)))^n`
-/

namespace A052434.P6641676800388461322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001221 (A063750 (n + 1)).toNat) ^ n

end

end A052434.P6641676800388461322

/-! ## A052434.P165266434328075261

`(1-A001221(A063750(n+1)))*A165326(n)`
-/

namespace A052434.P165266434328075261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001221 (A063750 (n + 1)).toNat) * A165326 n

end

end A052434.P165266434328075261

/-!
# A052435: a(n) = round(li(n) - pi(n)), where li is the logarithmic integral and pi(x) is the number of primes <= x.

The programs for A052435, there is no canonical definition to state claims against.
-/

/-! ## A052435.P14232299960841157471

`A047784(n+2)-A000720(n+2)`
-/

namespace A052435.P14232299960841157471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) - A000720 (n + 2)

end

end A052435.P14232299960841157471

/-! ## A052435.P12187121111700458172

`A047784(n+2)-∑[char[A040976(n+1)]]`
-/

namespace A052435.P12187121111700458172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052435.P12187121111700458172

/-! ## A052435.P8834133319890328708

`A047784(n+2)%A000720(A020725(n+1))`
-/

namespace A052435.P8834133319890328708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047784 (n + 2)) (A000720 (A020725 (n + 1)).toNat)

end

end A052435.P8834133319890328708

/-! ## A052435.P108243962435043654

`A047784(A000027(n+2))%A000720(n+2)`
-/

namespace A052435.P108243962435043654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047784 (A000027 (n + 2)).toNat) (A000720 (n + 2))

end

end A052435.P108243962435043654

/-! ## A052435.P6093831474692370256

`A047784(n+2)+A053622(n+2)-A050499(n+2)`
-/

namespace A052435.P6093831474692370256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) + (A053622 (n + 2) - A050499 (n + 2))

end

end A052435.P6093831474692370256

/-! ## A052435.P17662104742351822589

`A047784(n+2)+A282870(n+2)-A047783(n+2)`
-/

namespace A052435.P17662104742351822589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (n + 2) + (A282870 (n + 2) - A047783 (n + 2))

end

end A052435.P17662104742351822589

/-!
# A052437: Number of simple unlabeled n-node graphs with 1 center node.

The programs for A052437, there is no canonical definition to state claims against.
-/

/-! ## A052437.P9387193259671173511

`A294525(∑[n]+1)`
-/

namespace A052437.P9387193259671173511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052437.P9387193259671173511

/-! ## A052437.P5108720608566139878

`A294525(A000124(n))+char[12]`
-/

namespace A052437.P5108720608566139878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294525 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A052437.P5108720608566139878

/-! ## A052437.P16982724737565688794

`A326541(n)+A294525(A000124(n))`
-/

namespace A052437.P16982724737565688794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A294525 (A000124 n).toNat

end

end A052437.P16982724737565688794

/-! ## A052437.P4205439268146724695

`A152851(n)*A294525(A000124(n))`
-/

namespace A052437.P4205439268146724695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A294525 (A000124 n).toNat

end

end A052437.P4205439268146724695

/-! ## A052437.P5023865541761508916

`A294525(A000124(n))/A175782(n)`
-/

namespace A052437.P5023865541761508916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294525 (A000124 n).toNat : ℚ) / (A175782 n : ℚ)

end

end A052437.P5023865541761508916

/-!
# A052439: Number of simple unlabeled n-node graphs with 3 center nodes.

The programs for A052439, there is no canonical definition to state claims against.
-/

/-! ## A052439.P14050691316391709978

`A186505(A000217(n)^A030341(n))`
-/

namespace A052439.P14050691316391709978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186505 (SequenceMachineLib.roundAway ((A000217 n : ℚ) ^ (A030341 n : ℤ))).toNat

end

end A052439.P14050691316391709978

/-! ## A052439.P17125579021209106639

`A299814(A278788(n))%A281896(n)`
-/

namespace A052439.P17125579021209106639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299814 (A278788 n).toNat) (A281896 n)

end

end A052439.P17125579021209106639

/-! ## A052439.P8185699699064512339

`A022333(A002577(n))*A132740(n+1)`
-/

namespace A052439.P8185699699064512339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (A002577 n).toNat * A132740 (n + 1)

end

end A052439.P8185699699064512339

/-!
# A052440: Number of simple unlabeled n-node graphs with 4 center nodes.

The programs for A052440, there is no canonical definition to state claims against.
-/

/-! ## A052440.P9271466963304006803

`∑{p}[A057383(A117115(n)), #]`
-/

namespace A052440.P9271466963304006803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057383 (A117115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A052440.P9271466963304006803

/-! ## A052440.P15866632589752800947

`A063711(A261983(xor(2*n, (3*n)%4))+2)`
-/

namespace A052440.P15866632589752800947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063711 (A261983 (Nat.xor (2 * n) (3 * n % 4)) + 2).toNat

end

end A052440.P15866632589752800947

/-! ## A052440.P14436442118349596864

`A002262(((n+1)*(n²+2)*(n^3+3)/6)%A005809(n))`
-/

namespace A052440.P14436442118349596864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n ^ 2 + 2 : ℚ) * ((n ^ 3 + 3 : ℚ) / 6)))) (A005809 n)).toNat

end

end A052440.P14436442118349596864

/-!
# A052441: Number of simple unlabeled n-node graphs with 5 center nodes.

The programs for A052441, there is no canonical definition to state claims against.
-/

/-! ## A052441.P18181327943713012044

`A002262(27*24*C(n, 4))`
-/

namespace A052441.P18181327943713012044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (27 * (24 * Nat.choose n 4))

end

end A052441.P18181327943713012044

/-! ## A052441.P14300797491708702265

`3*A350151(∑[(1-n)²])`
-/

namespace A052441.P14300797491708702265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A350151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052441.P14300797491708702265

/-! ## A052441.P1908240641246838029

`p?[6*n^3-7]%A147004(n+1)²`
-/

namespace A052441.P1908240641246838029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 3 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A147004 (n + 1) ^ 2)

end

end A052441.P1908240641246838029

/-!
# A052442: Number of simple unlabeled n-node graphs of connectivity 1.

The programs for A052442, there is no canonical definition to state claims against.
-/

/-! ## A052442.P8206826179944625731

`A259862(A133263(n))%(10^n)`
-/

namespace A052442.P8206826179944625731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259862 (A133263 n).toNat) (10 ^ n : ℤ)

end

end A052442.P8206826179944625731

/-! ## A052442.P2683041348417036651

`A259862(∑[char[1]+n]+1)%A341962(n)`
-/

namespace A052442.P2683041348417036651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A341962 n)

end

end A052442.P2683041348417036651

/-! ## A052442.P1314069850692512447

`A259862(A133263(n))-A000007(n)`
-/

namespace A052442.P1314069850692512447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259862 (A133263 n).toNat - A000007 n

end

end A052442.P1314069850692512447

/-! ## A052442.P8253604975427522298

`A259862(A133263(n))-A008683((n+1)²)`
-/

namespace A052442.P8253604975427522298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259862 (A133263 n).toNat - A008683 ((n + 1) ^ 2)

end

end A052442.P8253604975427522298

/-! ## A052442.P8636389055728127560

`char[A000005(n+1)]*A259862(A133263(n))`
-/

namespace A052442.P8636389055728127560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A259862 (A133263 n).toNat

end

end A052442.P8636389055728127560

/-!
# A052443: Number of simple unlabeled n-node graphs of connectivity 2.

The programs for A052443, there is no canonical definition to state claims against.
-/

/-! ## A052443.P3328239188262953623

`∑[A030603(∏[A177510(n)])]`
-/

namespace A052443.P3328239188262953623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177510 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052443.P3328239188262953623

/-! ## A052443.P958654069536701280

`∑[A373067(A211651(n)+1)]`
-/

namespace A052443.P958654069536701280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373067 (A211651 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052443.P958654069536701280

/-! ## A052443.P15511311678405205449

`floor(A310631(∑[A089845(n)])/9)`
-/

namespace A052443.P15511311678405205449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A310631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 9⌋

end

end A052443.P15511311678405205449

/-!
# A052444: Number of simple unlabeled n-node graphs of connectivity 3.

The programs for A052444, there is no canonical definition to state claims against.
-/

/-! ## A052444.P8214077237282747328

`A259862(A145018(n+1))%A007318(A282485(n+2))`
-/

namespace A052444.P8214077237282747328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259862 (A145018 (n + 1)).toNat) (A007318 (A282485 (n + 2)).toNat)

end

end A052444.P8214077237282747328

/-! ## A052444.P17974298655050527681

`floor(A181148(n+2)/3)`
-/

namespace A052444.P17974298655050527681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181148 (n + 2) : ℚ) / 3⌋

end

end A052444.P17974298655050527681

/-!
# A052445: Number of simple unlabeled n-node graphs of connectivity 4.

The programs for A052445, there is no canonical definition to state claims against.
-/

/-! ## A052445.P12239072275326258341

`A086216(n+1)-A086217(n+1)`
-/

namespace A052445.P12239072275326258341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086216 (n + 1) - A086217 (n + 1)

end

end A052445.P12239072275326258341

/-! ## A052445.P10036211129349088858

`A086216(n+1)-(A324240(n+1)+A324234(n+1))`
-/

namespace A052445.P10036211129349088858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086216 (n + 1) - (A324240 (n + 1) + A324234 (n + 1))

end

end A052445.P10036211129349088858

/-! ## A052445.P8773125849645158783

`A327365(∑[A217538(3*n+4)])-A086217(n+1)`
-/

namespace A052445.P8773125849645158783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A086217 (n + 1)

end

end A052445.P8773125849645158783

/-! ## A052445.P3330938081020932319

`A327805(∑[A217538(3*n+4)])-A086217(n+1)`
-/

namespace A052445.P3330938081020932319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A086217 (n + 1)

end

end A052445.P3330938081020932319

/-! ## A052445.P11436388979359355006

`A086216(n+1)-A327805(A176995(n+1)+A000217(n))`
-/

namespace A052445.P11436388979359355006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086216 (n + 1) - A327805 (A176995 (n + 1) + A000217 n).toNat

end

end A052445.P11436388979359355006

/-!
# A052446: Number of unlabeled simple connected bridged graphs on n nodes.

The programs for A052446, there is no canonical definition to state claims against.
-/

/-! ## A052446.P15412827667553848552

`A001349(n+1)-A007146(n+1)`
-/

namespace A052446.P15412827667553848552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A007146 (n + 1)

end

end A052446.P15412827667553848552

/-! ## A052446.P17305093076613343370

`A201922(A000124(n))-A007146(n+1)`
-/

namespace A052446.P17305093076613343370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A007146 (n + 1)

end

end A052446.P17305093076613343370

/-! ## A052446.P328476025479357245

`A000088(n+1)-(A007146(n+1)+A000719(n+1))`
-/

namespace A052446.P328476025479357245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A007146 (n + 1) + A000719 (n + 1))

end

end A052446.P328476025479357245

/-! ## A052446.P2476148840890925095

`A048192(n+1)+A241843(n+1)-A007146(n+1)`
-/

namespace A052446.P2476148840890925095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A007146 (n + 1))

end

end A052446.P2476148840890925095

/-! ## A052446.P7126688590114247132

`A263296(∑[char[1]+n]+1)-C(2, n+2)`
-/

namespace A052446.P7126688590114247132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263296 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A052446.P7126688590114247132

/-!
# A052447: Number of simple unlabeled n-node graphs of edge-connectivity 2.

The programs for A052447, there is no canonical definition to state claims against.
-/

/-! ## A052447.P5620881220530778265

`A007146(A233583(n+2))-A324226(n+1)`
-/

namespace A052447.P5620881220530778265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (A233583 (n + 2)).toNat - A324226 (n + 1)

end

end A052447.P5620881220530778265

/-! ## A052447.P8144975466899019851

`A007146(n+1)%A263914(n+1)-A324226(n+1)`
-/

namespace A052447.P8144975466899019851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007146 (n + 1)) (A263914 (n + 1)) - A324226 (n + 1)

end

end A052447.P8144975466899019851

/-! ## A052447.P2301176961249807456

`and(-A318099(n+4), A324670(n+1))`
-/

namespace A052447.P2301176961249807456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A318099 (n + 4)) (A324670 (n + 1))

end

end A052447.P2301176961249807456

/-!
# A052448: Number of simple unlabeled n-node graphs of edge-connectivity 3.

The programs for A052448, there is no canonical definition to state claims against.
-/

/-! ## A052448.P13832754190495855319

`A324226(n+1)-A324227(n+1)`
-/

namespace A052448.P13832754190495855319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (n + 1) - A324227 (n + 1)

end

end A052448.P13832754190495855319

/-! ## A052448.P632472248993990323

`A324226(n+1)-(A324228(n+1)+A241703(n+1))`
-/

namespace A052448.P632472248993990323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (n + 1) - (A324228 (n + 1) + A241703 (n + 1))

end

end A052448.P632472248993990323

/-! ## A052448.P7208782262250413496

`A007146(A233583(n+2))-A052447(n+1)-A324227(n+1)`
-/

namespace A052448.P7208782262250413496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007146 (A233583 (n + 2)).toNat - A052447 (n + 1) - A324227 (n + 1)

end

end A052448.P7208782262250413496

/-! ## A052448.P14882568454408825883

`(A007146(n+1)-A052447(n+1))%A263914(n+1)-A324227(n+1)`
-/

namespace A052448.P14882568454408825883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007146 (n + 1) - A052447 (n + 1)) (A263914 (n + 1)) - A324227 (n + 1)

end

end A052448.P14882568454408825883

/-!
# A052449: a(n) = 1 + Product_{k=1..n} Fibonacci(k).

The programs for A052449, there is no canonical definition to state claims against.
-/

/-! ## A052449.P8805815715979719528

`A003266(n+1)+1`
-/

namespace A052449.P8805815715979719528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1) + 1

end

end A052449.P8805815715979719528

/-! ## A052449.P14292450096981156126

`∏[round(ϕ*a(n-1))]+1` with `a(0)=1, a(1)=1`
-/

namespace A052449.P14292450096981156126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052449.P14292450096981156126

/-! ## A052449.P2048764413559104213

`∏[a(n-1)+a(n-2)]+1` with `a(0)=1, a(1)=1`
-/

namespace A052449.P2048764413559104213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052449.P2048764413559104213

/-! ## A052449.P5290269202872721236

`A103815(n+1)+2`
-/

namespace A052449.P5290269202872721236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103815 (n + 1) + 2

end

end A052449.P5290269202872721236

/-! ## A052449.P16448358335885844553

`∏[∑[A212804(n)]]+1`
-/

namespace A052449.P16448358335885844553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052449.P16448358335885844553

/-!
# A052450: Number of n-node simple graphs having clique number 2.

The programs for A052450, there is no canonical definition to state claims against.
-/

/-! ## A052450.P9908033955035162407

`∑[A372169(n+1)]`
-/

namespace A052450.P9908033955035162407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052450.P9908033955035162407

/-! ## A052450.P2456052325336918252

`A006785(n+1)-1`
-/

namespace A052450.P2456052325336918252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - 1

end

end A052450.P2456052325336918252

/-! ## A052450.P6954358850188667404

`record[Δ[A006785(ceil(C(or(1, n), n)/2))]]`
-/

namespace A052450.P6954358850188667404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052450.P6954358850188667404

/-! ## A052450.P15327712517847971827

`record[Δ[A006785(A152271(n))]]`
-/

namespace A052450.P15327712517847971827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052450.P15327712517847971827

/-! ## A052450.P9705870395225600216

`record[Δ[A006785(A158416(n))]]`
-/

namespace A052450.P9705870395225600216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052450.P9705870395225600216

/-!
# A052451: Number of n-node simple graphs having clique number 3.

The programs for A052451, there is no canonical definition to state claims against.
-/

/-! ## A052451.P2343114087374880294

`A304124(n+1)-A006785(n+1)`
-/

namespace A052451.P2343114087374880294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304124 (n + 1) - A006785 (n + 1)

end

end A052451.P2343114087374880294

/-! ## A052451.P9102847832287399953

`A304124(n+1)-(A052450(n+1)+1)`
-/

namespace A052451.P9102847832287399953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304124 (n + 1) - (A052450 (n + 1) + 1)

end

end A052451.P9102847832287399953

/-! ## A052451.P5601163870748692142

`A304125(n+1)-(A052452(n+1)+A006785(n+1))`
-/

namespace A052451.P5601163870748692142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - (A052452 (n + 1) + A006785 (n + 1))

end

end A052451.P5601163870748692142

/-! ## A052451.P10856759371531201158

`A304125(n+1)-A052452(n+1)-A006785(A005555(n))`
-/

namespace A052451.P10856759371531201158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - A052452 (n + 1) - A006785 (A005555 n).toNat

end

end A052451.P10856759371531201158

/-! ## A052451.P8060027622106648367

`A304125(n+1)-A052452(n+1)-A006785(A291769(n))`
-/

namespace A052451.P8060027622106648367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - A052452 (n + 1) - A006785 (A291769 n).toNat

end

end A052451.P8060027622106648367

/-!
# A052452: Number of n-node simple graphs having clique number 4.

The programs for A052452, there is no canonical definition to state claims against.
-/

/-! ## A052452.P17762445686731784949

`A304125(n+1)-A304124(n+1)`
-/

namespace A052452.P17762445686731784949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - A304124 (n + 1)

end

end A052452.P17762445686731784949

/-! ## A052452.P8976376244670016654

`A304125(n+1)-(A052451(n+1)+A006785(n+1))`
-/

namespace A052452.P8976376244670016654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - (A052451 (n + 1) + A006785 (n + 1))

end

end A052452.P8976376244670016654

/-! ## A052452.P789969845762999206

`A304125(n+1)-(A052451(n+1)+A052450(A005555(n))+1)`
-/

namespace A052452.P789969845762999206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - (A052451 (n + 1) + (A052450 (A005555 n).toNat + 1))

end

end A052452.P789969845762999206

/-! ## A052452.P357922570069527808

`A304125(n+1)-(A052451(n+1)+A052450(A291769(n))+1)`
-/

namespace A052452.P357922570069527808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) - (A052451 (n + 1) + (A052450 (A291769 n).toNat + 1))

end

end A052452.P357922570069527808

/-!
# A052454: Positive integer values of k such that 10*k^2 - 9 is a square.

The programs for A052454, the canonical program `A052454.P5482924665099147542` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052454 has offset 1).

The definition of A052454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052454.P5482924665099147542

`38*a(n-3)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=25, a(4)=111, a(5)=493`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052454

/-- `38*a(n-3)-a(n-6)` -/
def P5482924665099147542.Spec : Prop :=
  ∀ n, P5482924665099147542.a n = A052454 (n + 1)

theorem P5482924665099147542.correct : P5482924665099147542.Spec := by
  intro n
  simp only [A052454, Nat.add_sub_cancel]

end A052454

/-! ## A052454.P6401708666592760015

`2*A341893(n+1)+1`
-/

namespace A052454.P6401708666592760015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341893 (n + 1) + 1

end

end A052454.P6401708666592760015

namespace A052454

/-- `2*A341893(n+1)+1` -/
def P6401708666592760015.Spec : Prop :=
  ∀ n, P6401708666592760015.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P14592578853510962958

`2*A180003(n+1)-1`
-/

namespace A052454.P14592578853510962958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180003 (n + 1) - 1

end

end A052454.P14592578853510962958

namespace A052454

/-- `2*A180003(n+1)-1` -/
def P14592578853510962958.Spec : Prop :=
  ∀ n, P14592578853510962958.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P8855709741109580143

`A341893(n+1)+A180003(n+1)`
-/

namespace A052454.P8855709741109580143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341893 (n + 1) + A180003 (n + 1)

end

end A052454.P8855709741109580143

namespace A052454

/-- `A341893(n+1)+A180003(n+1)` -/
def P8855709741109580143.Spec : Prop :=
  ∀ n, P8855709741109580143.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P15226940078620742782

`A209615(A125254(n+1))+2*A180003(n+1)`
-/

namespace A052454.P15226940078620742782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A125254 (n + 1)).toNat + 2 * A180003 (n + 1)

end

end A052454.P15226940078620742782

namespace A052454

/-- `A209615(A125254(n+1))+2*A180003(n+1)` -/
def P15226940078620742782.Spec : Prop :=
  ∀ n, P15226940078620742782.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P13796160973356009998

`A260685(A260684(n+2))+2*A180003(n+1)`
-/

namespace A052454.P13796160973356009998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A260684 (n + 2)).toNat + 2 * A180003 (n + 1)

end

end A052454.P13796160973356009998

namespace A052454

/-- `A260685(A260684(n+2))+2*A180003(n+1)` -/
def P13796160973356009998.Spec : Prop :=
  ∀ n, P13796160973356009998.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P9742005163286957915

`ceil(A198943(n+1)/sqrt(10))`
-/

namespace A052454.P9742005163286957915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198943 (n + 1) : ℝ) / Real.sqrt (10 : ℝ)⌉

end

end A052454.P9742005163286957915

namespace A052454

/-- `ceil(A198943(n+1)/sqrt(10))` -/
def P9742005163286957915.Spec : Prop :=
  ∀ n, P9742005163286957915.a n = A052454 (n + 1)

end A052454

/-! ## A052454.P5917513037750963611

`A341893(n+1)+A341893(n+1)-A260196(A260213(n+1))`
-/

namespace A052454.P5917513037750963611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341893 (n + 1) + (A341893 (n + 1) - A260196 (A260213 (n + 1)).toNat)

end

end A052454.P5917513037750963611

namespace A052454

/-- `A341893(n+1)+A341893(n+1)-A260196(A260213(n+1))` -/
def P5917513037750963611.Spec : Prop :=
  ∀ n, P5917513037750963611.a n = A052454 (n + 1)

end A052454

/-!
# A052455: Fixed points for operation of repeatedly replacing a number with the sum of the fourth power of its digits.

The programs for A052455, there is no canonical definition to state claims against.
-/

/-! ## A052455.P18255648336183888315

`A252648(n+19)`
-/

namespace A052455.P18255648336183888315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 19)

end

end A052455.P18255648336183888315

/-!
# A052456: Number of magic series of order n.

The programs for A052456, there is no canonical definition to state claims against.
-/

/-! ## A052456.P12298360076009535167

`A100568(n)/n!`
-/

namespace A052456.P12298360076009535167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100568 n : ℚ) / (Nat.factorial n : ℚ)

end

end A052456.P12298360076009535167

/-! ## A052456.P9198198813158778930

`A100568(n)/A000142(n)`
-/

namespace A052456.P9198198813158778930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100568 n : ℚ) / (A000142 n : ℚ)

end

end A052456.P9198198813158778930

/-! ## A052456.P10413478768883413924

`A100568(n)/∏[A028310(n)]`
-/

namespace A052456.P10413478768883413924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100568 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A052456.P10413478768883413924

/-! ## A052456.P17115894757561288222

`A204459(∑[4*n])`
-/

namespace A052456.P17115894757561288222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052456.P17115894757561288222

/-! ## A052456.P7289565676861913104

`lcm(A204459(A046092(n)), A303598(n))`
-/

namespace A052456.P7289565676861913104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204459 (A046092 n).toNat) (A303598 n)

end

end A052456.P7289565676861913104

/-!
# A052458: Number of trimagic series for squares of order n.

The programs for A052458, there is no canonical definition to state claims against.
-/

/-! ## A052458.P11314523301843331223

`A332006(round(sqrt(A055856(n))))`
-/

namespace A052458.P11314523301843331223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (SequenceMachineLib.roundAway (Real.sqrt (A055856 n : ℝ))).toNat

end

end A052458.P11314523301843331223

/-! ## A052458.P5268054162364611306

`A332006(∑[A179239(3*n)])`
-/

namespace A052458.P5268054162364611306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052458.P5268054162364611306

/-! ## A052458.P18122780437425619486

`A158777(Δ[A000196(3^n)])`
-/

namespace A052458.P18122780437425619486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158777 (f1 (n + 1) - f1 n).toNat

end

end A052458.P18122780437425619486

/-! ## A052458.P15409782872019872602

`∏{p}[A039900(A203460(n+5)), #]-1`
-/

namespace A052458.P15409782872019872602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 (A203460 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A052458.P15409782872019872602

/-!
# A052459: a(n) = n*(2*n^2 + 1)*(n^2 + 1)/6.

The programs for A052459, the canonical program `A052459.P12041630175548827281` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052459 has offset 1).

The definition of A052459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052459.P12041630175548827281

`(n+1)*(2*(n+1)²+1)*((n+1)²+1)/6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052459

/-- `(n+1)*(2*(n+1)²+1)*((n+1)²+1)/6` -/
def P12041630175548827281.Spec : Prop :=
  ∀ n, P12041630175548827281.a n = (A052459 (n + 1) : ℚ)

end A052459

/-! ## A052459.P16004513223495978213

`A077538(n)+∑[n²]`
-/

namespace A052459.P16004513223495978213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077538 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052459.P16004513223495978213

namespace A052459

/-- `A077538(n)+∑[n²]` -/
def P16004513223495978213.Spec : Prop :=
  ∀ n, P16004513223495978213.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P7235926591741148445

`A220892(n)+∑[∑[n]]`
-/

namespace A052459.P7235926591741148445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220892 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A052459.P7235926591741148445

namespace A052459

/-- `A220892(n)+∑[∑[n]]` -/
def P7235926591741148445.Spec : Prop :=
  ∀ n, P7235926591741148445.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P15867949651676079687

`(n+1)²*A167875(n)-A000292(n)`
-/

namespace A052459.P15867949651676079687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A167875 n - A000292 n

end

end A052459.P15867949651676079687

namespace A052459

/-- `(n+1)²*A167875(n)-A000292(n)` -/
def P15867949651676079687.Spec : Prop :=
  ∀ n, P15867949651676079687.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P3442622040440302988

`A212560(n+1)+(n+1)²*A000330(n)`
-/

namespace A052459.P3442622040440302988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 (n + 1) + ((n + 1) ^ 2 : ℤ) * A000330 n

end

end A052459.P3442622040440302988

namespace A052459

/-- `A212560(n+1)+(n+1)²*A000330(n)` -/
def P3442622040440302988.Spec : Prop :=
  ∀ n, P3442622040440302988.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P14232990608798177575

`A143945(n+1)+A004068(n+1)`
-/

namespace A052459.P14232990608798177575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143945 (n + 1) + A004068 (n + 1)

end

end A052459.P14232990608798177575

namespace A052459

/-- `A143945(n+1)+A004068(n+1)` -/
def P14232990608798177575.Spec : Prop :=
  ∀ n, P14232990608798177575.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P6530422539723653601

`A005900(n+1)+n*A071238(n+1)`
-/

namespace A052459.P6530422539723653601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 1) + (n : ℤ) * A071238 (n + 1)

end

end A052459.P6530422539723653601

namespace A052459

/-- `A005900(n+1)+n*A071238(n+1)` -/
def P6530422539723653601.Spec : Prop :=
  ∀ n, P6530422539723653601.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P7506722180217946753

`A071270(n+1)+n*A071245(n+1)`
-/

namespace A052459.P7506722180217946753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 (n + 1) + (n : ℤ) * A071245 (n + 1)

end

end A052459.P7506722180217946753

namespace A052459

/-- `A071270(n+1)+n*A071245(n+1)` -/
def P7506722180217946753.Spec : Prop :=
  ∀ n, P7506722180217946753.a n = A052459 (n + 1)

end A052459

/-! ## A052459.P9603714630150012407

`(n+1)²*A006527(n+1)-A000292(n)`
-/

namespace A052459.P9603714630150012407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A006527 (n + 1) - A000292 n

end

end A052459.P9603714630150012407

namespace A052459

/-- `(n+1)²*A006527(n+1)-A000292(n)` -/
def P9603714630150012407.Spec : Prop :=
  ∀ n, P9603714630150012407.a n = A052459 (n + 1)

end A052459

/-!
# A052460: 3-magic series constant.

The programs for A052460, the canonical program `A052460.P1110331596981256233` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052460 has offset 1).

The definition of A052460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052460.P1110331596981256233

`(n+1)^3/4*((n+1)²+1)²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052460

/-- `(n+1)^3/4*((n+1)²+1)²` -/
def P1110331596981256233.Spec : Prop :=
  ∀ n, P1110331596981256233.a n = (A052460 (n + 1) : ℚ)

end A052460

/-! ## A052460.P1286079078289769527

`A190636(n+1)-A292045(n+1)`
-/

namespace A052460.P1286079078289769527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190636 (n + 1) - A292045 (n + 1)

end

end A052460.P1286079078289769527

namespace A052460

/-- `A190636(n+1)-A292045(n+1)` -/
def P1286079078289769527.Spec : Prop :=
  ∀ n, P1286079078289769527.a n = A052460 (n + 1)

end A052460

/-! ## A052460.P8604722344846816203

`record[A178067(n+1)²*A004736(n+1)]`
-/

namespace A052460.P8604722344846816203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178067 (n + 1) ^ 2 * A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052460.P8604722344846816203

namespace A052460

/-- `record[A178067(n+1)²*A004736(n+1)]` -/
def P8604722344846816203.Spec : Prop :=
  ∀ n, P8604722344846816203.a n = A052460 (n + 1)

end A052460

/-! ## A052460.P16429815164503049697

`record[A006003(A000188(n+1))²*A000188(n+1)]`
-/

namespace A052460.P16429815164503049697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (A000188 (n + 1)).toNat ^ 2 * A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052460.P16429815164503049697

namespace A052460

/-- `record[A006003(A000188(n+1))²*A000188(n+1)]` -/
def P16429815164503049697.Spec : Prop :=
  ∀ n, P16429815164503049697.a n = A052460 (n + 1)

end A052460

/-!
# A052461: 4-magic series constant.

The programs for A052461, the canonical program `A052461.P924914704463294918` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052461 has offset 1).

The definition of A052461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052461.P924914704463294918

`(6*(n+1)^9+15*(n+1)^7+10*(n+1)^5-(n+1))/30`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052461

/-- `(6*(n+1)^9+15*(n+1)^7+10*(n+1)^5-(n+1))/30` -/
def P924914704463294918.Spec : Prop :=
  ∀ n, P924914704463294918.a n = (A052461 (n + 1) : ℚ)

end A052461

/-!
# A052462: a(n) is the minimal positive integral solution k to 24*k == 1 (mod 5^n).

The programs for A052462, the canonical program `A052462.P14302169590737367755` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052462 has offset 1).

The definition of A052462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052462.P14302169590737367755

`a(n-1)+25*a(n-2)-25*a(n-3)` with `a(0)=4, a(1)=24, a(2)=99`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052462

/-- `a(n-1)+25*a(n-2)-25*a(n-3)` -/
def P14302169590737367755.Spec : Prop :=
  ∀ n, P14302169590737367755.a n = A052462 (n + 1)

theorem P14302169590737367755.correct : P14302169590737367755.Spec := by
  intro n
  simp only [A052462, Nat.add_sub_cancel]

end A052462

/-! ## A052462.P5761776511884066723

`(1+(21+2*(-1)^(n+1))*5^(n+1))/24`
-/

namespace A052462.P5761776511884066723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (21 + 2 * (-1) ^ (n + 1)) * (5 ^ (n + 1) : ℤ) : ℚ) / 24

end

end A052462.P5761776511884066723

namespace A052462

/-- `(1+(21+2*(-1)^(n+1))*5^(n+1))/24` -/
def P5761776511884066723.Spec : Prop :=
  ∀ n, P5761776511884066723.a n = (A052462 (n + 1) : ℚ)

theorem P5761776511884066723.correct : P5761776511884066723.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A052462, Nat.add_sub_cancel, A052462.P5761776511884066723.a, A052462.P14302169590737367755.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A052462, Nat.add_sub_cancel, A052462.P5761776511884066723.a, A052462.P14302169590737367755.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052462

/-! ## A052462.P8335733042628129988

`25*a(n-2)-1` with `a(0)=4, a(1)=24`
-/

namespace A052462.P8335733042628129988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 24] fun n a =>
  25 * a (n - 2) - 1

end

end A052462.P8335733042628129988

namespace A052462

/-- `25*a(n-2)-1` -/
def P8335733042628129988.Spec : Prop :=
  ∀ n, P8335733042628129988.a n = A052462 (n + 1)

end A052462

/-! ## A052462.P11418624571423494073

`lcm(25, a(n-2))-1` with `a(0)=4, a(1)=24`
-/

namespace A052462.P11418624571423494073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 24] fun n a =>
  (Int.lcm 25 (a (n - 2)) : ℤ) - 1

end

end A052462.P11418624571423494073

namespace A052462

/-- `lcm(25, a(n-2))-1` -/
def P11418624571423494073.Spec : Prop :=
  ∀ n, P11418624571423494073.a n = A052462 (n + 1)

end A052462

/-! ## A052462.P10018980102683925856

`∑[(n%2+3)*5^n]+1`
-/

namespace A052462.P10018980102683925856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 3) * 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052462.P10018980102683925856

namespace A052462

/-- `∑[(n%2+3)*5^n]+1` -/
def P10018980102683925856.Spec : Prop :=
  ∀ n, (P10018980102683925856.a n : ℤ) = A052462 (n + 1)

end A052462

/-! ## A052462.P7202646759398040161

`∑[5^n*A010702(n)]+1`
-/

namespace A052462.P7202646759398040161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A010702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052462.P7202646759398040161

namespace A052462

/-- `∑[5^n*A010702(n)]+1` -/
def P7202646759398040161.Spec : Prop :=
  ∀ n, P7202646759398040161.a n = A052462 (n + 1)

end A052462

/-! ## A052462.P10734601962181944879

`∑[lcm(A000034(n)+2, 5^n)]+1`
-/

namespace A052462.P10734601962181944879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n + 2) (5 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052462.P10734601962181944879

namespace A052462

/-- `∑[lcm(A000034(n)+2, 5^n)]+1` -/
def P10734601962181944879.Spec : Prop :=
  ∀ n, (P10734601962181944879.a n : ℤ) = A052462 (n + 1)

end A052462

/-!
# A052463: a(n) is the smallest nonnegative solution k to 24*k == 1 (mod 7^(2*n-2)).

The programs for A052463, the canonical program `A052463.P17519955214510621138` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052463 has offset 1).

The definition of A052463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052463.P17519955214510621138

`49*a(n-1)-2` with `a(0)=0, a(1)=47`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052463

/-- `49*a(n-1)-2` -/
def P17519955214510621138.Spec : Prop :=
  ∀ n, P17519955214510621138.a n = A052463 (n + 1)

theorem P17519955214510621138.correct : P17519955214510621138.Spec := by
  intro n
  simp only [A052463, Nat.add_sub_cancel]

end A052463

/-! ## A052463.P1997798087904511738

`A057427(n)*A327770(n)`
-/

namespace A052463.P1997798087904511738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327770 n

end

end A052463.P1997798087904511738

namespace A052463

/-- `A057427(n)*A327770(n)` -/
def P1997798087904511738.Spec : Prop :=
  ∀ n, P1997798087904511738.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P75383785096239726

`A327770(n)-A000079(n)%2`
-/

namespace A052463.P75383785096239726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327770 n - Int.tmod (A000079 n) 2

end

end A052463.P75383785096239726

namespace A052463

/-- `A327770(n)-A000079(n)%2` -/
def P75383785096239726.Spec : Prop :=
  ∀ n, P75383785096239726.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P10282932740985849130

`A267084((n+1)²)*A327770(n)`
-/

namespace A052463.P10282932740985849130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 ((n + 1) ^ 2) * A327770 n

end

end A052463.P10282932740985849130

namespace A052463

/-- `A267084((n+1)²)*A327770(n)` -/
def P10282932740985849130.Spec : Prop :=
  ∀ n, P10282932740985849130.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P7845857241203264490

`char[A038722(n+1)]*A327770(n)`
-/

namespace A052463.P7845857241203264490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A327770 n

end

end A052463.P7845857241203264490

namespace A052463

/-- `char[A038722(n+1)]*A327770(n)` -/
def P7845857241203264490.Spec : Prop :=
  ∀ n, P7845857241203264490.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P17574960677151475599

`char[A145051(n+1)]*A327770(n)`
-/

namespace A052463.P17574960677151475599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A327770 n

end

end A052463.P17574960677151475599

namespace A052463

/-- `char[A145051(n+1)]*A327770(n)` -/
def P17574960677151475599.Spec : Prop :=
  ∀ n, P17574960677151475599.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P5857004781906961357

`A000040(n+1)%2*A327770(n)`
-/

namespace A052463.P5857004781906961357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A327770 n

end

end A052463.P5857004781906961357

namespace A052463

/-- `A000040(n+1)%2*A327770(n)` -/
def P5857004781906961357.Spec : Prop :=
  ∀ n, P5857004781906961357.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P11442520810916710670

`A327770(n)-A010893(A000120(n))`
-/

namespace A052463.P11442520810916710670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327770 n - A010893 ((A000120 n).toNat + 13)

end

end A052463.P11442520810916710670

namespace A052463

/-- `A327770(n)-A010893(A000120(n))` -/
def P11442520810916710670.Spec : Prop :=
  ∀ n, P11442520810916710670.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P1336942560836643466

`A000035(A030101(n))*A327770(n)`
-/

namespace A052463.P1336942560836643466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030101 n).toNat * A327770 n

end

end A052463.P1336942560836643466

namespace A052463

/-- `A000035(A030101(n))*A327770(n)` -/
def P1336942560836643466.Spec : Prop :=
  ∀ n, P1336942560836643466.a n = A052463 (n + 1)

end A052463

/-! ## A052463.P12950031849340893454

`A057945(A253145(n))*A327770(n)`
-/

namespace A052463.P12950031849340893454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A253145 n).toNat * A327770 n

end

end A052463.P12950031849340893454

namespace A052463

/-- `A057945(A253145(n))*A327770(n)` -/
def P12950031849340893454.Spec : Prop :=
  ∀ n, P12950031849340893454.a n = A052463 (n + 1)

end A052463

/-!
# A052464: Fixed points for operation of repeatedly replacing a number with the sum of the fifth power of its digits.

The programs for A052464, there is no canonical definition to state claims against.
-/

/-! ## A052464.P6179375974759943828

`A252648(n+24)`
-/

namespace A052464.P6179375974759943828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 24)

end

end A052464.P6179375974759943828

/-! ## A052464.P8889356546798036706

`record[A171878(A294234(n))*A252648(n)]`
-/

namespace A052464.P8889356546798036706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171878 (A294234 n).toNat * A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052464.P8889356546798036706

/-!
# A052465: a(n) is the smallest positive integral solution k to 24*k == 1 (mod 11^n).

The programs for A052465, the canonical program `A052465.P13657482480626563580` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052465 has offset 1).

The definition of A052465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052465.P13657482480626563580

`a(n-1)+121*a(n-2)-121*a(n-3)` with `a(0)=6, a(1)=116, a(2)=721`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052465

/-- `a(n-1)+121*a(n-2)-121*a(n-3)` -/
def P13657482480626563580.Spec : Prop :=
  ∀ n, P13657482480626563580.a n = A052465 (n + 1)

theorem P13657482480626563580.correct : P13657482480626563580.Spec := by
  intro n
  simp only [A052465, Nat.add_sub_cancel]

end A052465

/-! ## A052465.P12727577864541548835

`∑[Δ[11^n]/(char[2*n]+1)]+1`
-/

namespace A052465.P12727577864541548835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / (((if ∃ j, f3 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052465.P12727577864541548835

namespace A052465

/-- `∑[Δ[11^n]/(char[2*n]+1)]+1` -/
def P12727577864541548835.Spec : Prop :=
  ∀ n, P12727577864541548835.a n = (A052465 (n + 1) : ℚ)

end A052465

/-!
# A052466: a(n) is the smallest positive solution k to 24*k == 1 (mod 13^n).

The programs for A052466, there is no canonical definition to state claims against.
-/

/-! ## A052466.P14938871539657976274

`(∑[13*a(n-1)]+13*a(n-1))%A001022(n+1)` with `a(0)=6`
-/

namespace A052466.P14938871539657976274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 13 * a (n - 1)) (A001022 (n + 1))

end

end A052466.P14938871539657976274

/-!
# A052467: Binomial transform of {b(n)}, where b(n)=1 for prime n and b(n)=0 otherwise.

The programs for A052467, there is no canonical definition to state claims against.
-/

/-! ## A052467.P10641110527782431620

`A121497(n+1)-A121497(n)`
-/

namespace A052467.P10641110527782431620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121497 (n + 1) - A121497 n

end

end A052467.P10641110527782431620

/-! ## A052467.P11712252207731684049

`Δ[A121497(n)]`
-/

namespace A052467.P11712252207731684049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052467.P11712252207731684049

/-! ## A052467.P14758229183915882224

`record[A121497(A008615(n))]-A121497(n)`
-/

namespace A052467.P14758229183915882224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121497 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A121497 n

end

end A052467.P14758229183915882224

/-! ## A052467.P8189119335799469854

`A000225(n)-Δ[A143962(n)]`
-/

namespace A052467.P8189119335799469854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (f1 (n + 1) - f1 n)

end

end A052467.P8189119335799469854

/-! ## A052467.P15981653287782884942

`Δ[A000295(n)-A143962(n)]`
-/

namespace A052467.P15981653287782884942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A143962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052467.P15981653287782884942

/-!
# A052468: Numerators in the Taylor series for arccosh(x) - log(2*x).

The programs for A052468, the canonical program `A052468.P15776435723576855453` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052468 has offset 1).

The definition of A052468 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A052468.P15776435723576855453

`A162441(n+2)/(2*(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A052468

/-- `A162441(n+2)/(2*(n+1)+1)` -/
def P15776435723576855453.Spec : Prop :=
  ∀ n, P15776435723576855453.a n = (A052468 (n + 1) : ℚ)

end A052468

/-! ## A052468.P13067205461349035354

`A001790(n+1)/gcd(n+1, A001790(n+1))`
-/

namespace A052468.P13067205461349035354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A001790 (n + 1)) : ℚ)

end

end A052468.P13067205461349035354

namespace A052468

/-- `A001790(n+1)/gcd(n+1, A001790(n+1))` -/
def P13067205461349035354.Spec : Prop :=
  ∀ n, P13067205461349035354.a n = (A052468 (n + 1) : ℚ)

end A052468

/-! ## A052468.P8547864862305828776

`A004730(2*n+1)/gcd(A004730(2*n+1), 2*(n+1))`
-/

namespace A052468.P8547864862305828776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 (2 * n + 1) : ℚ) / (Int.gcd (A004730 (2 * n + 1)) (2 * (n + 1) : ℤ) : ℚ)

end

end A052468.P8547864862305828776

namespace A052468

/-- `A004730(2*n+1)/gcd(A004730(2*n+1), 2*(n+1))` -/
def P8547864862305828776.Spec : Prop :=
  ∀ n, P8547864862305828776.a n = (A052468 (n + 1) : ℚ)

end A052468

/-! ## A052468.P15932969234249939547

`lcm(n+1, A001790(n+1))/(n+1)`
-/

namespace A052468.P15932969234249939547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A001790 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A052468.P15932969234249939547

namespace A052468

/-- `lcm(n+1, A001790(n+1))/(n+1)` -/
def P15932969234249939547.Spec : Prop :=
  ∀ n, P15932969234249939547.a n = (A052468 (n + 1) : ℚ)

end A052468

/-! ## A052468.P1993934921968244211

`gcd(A001803(n), A201058(n+1))`
-/

namespace A052468.P1993934921968244211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001803 n) (A201058 (n + 1))

end

end A052468.P1993934921968244211

namespace A052468

/-- `gcd(A001803(n), A201058(n+1))` -/
def P1993934921968244211.Spec : Prop :=
  ∀ n, (P1993934921968244211.a n : ℤ) = A052468 (n + 1)

end A052468

/-! ## A052468.P8150146817846967074

`A001803(n)/gcd((n+1)², A001790(n))`
-/

namespace A052468.P8150146817846967074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A001790 n) : ℚ)

end

end A052468.P8150146817846967074

namespace A052468

/-- `A001803(n)/gcd((n+1)², A001790(n))` -/
def P8150146817846967074.Spec : Prop :=
  ∀ n, P8150146817846967074.a n = (A052468 (n + 1) : ℚ)

end A052468

/-! ## A052468.P3403107743945021539

`gcd(A001700(n), A162441(n+2))`
-/

namespace A052468.P3403107743945021539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001700 n) (A162441 (n + 2))

end

end A052468.P3403107743945021539

namespace A052468

/-- `gcd(A001700(n), A162441(n+2))` -/
def P3403107743945021539.Spec : Prop :=
  ∀ n, (P3403107743945021539.a n : ℤ) = A052468 (n + 1)

end A052468

/-! ## A052468.P3371039608395601160

`A162441(n+2)%A322756(n+1)`
-/

namespace A052468.P3371039608395601160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162441 (n + 2)) (A322756 (n + 1))

end

end A052468.P3371039608395601160

namespace A052468

/-- `A162441(n+2)%A322756(n+1)` -/
def P3371039608395601160.Spec : Prop :=
  ∀ n, P3371039608395601160.a n = A052468 (n + 1)

end A052468

/-!
# A052469: Denominators in the Taylor series for arccosh(x) - log(2*x).

The programs for A052469, there is no canonical definition to state claims against.
-/

/-! ## A052469.P552969296092492819

`2*A162442(n+2)`
-/

namespace A052469.P552969296092492819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162442 (n + 2)

end

end A052469.P552969296092492819

/-! ## A052469.P16014252811542395687

`A162442(A020725(n+1))+A162442(n+2)`
-/

namespace A052469.P16014252811542395687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162442 (A020725 (n + 1)).toNat + A162442 (n + 2)

end

end A052469.P16014252811542395687

/-! ## A052469.P13887059561900880840

`A162442(A000027(n+2))+A162442(n+2)`
-/

namespace A052469.P13887059561900880840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162442 (A000027 (n + 2)).toNat + A162442 (n + 2)

end

end A052469.P13887059561900880840

/-! ## A052469.P15971684317683430155

`∑{d}[A000040(n+1), A162442(n+2)+A107078(#)]`
-/

namespace A052469.P15971684317683430155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A162442 (n + 2) + A107078 d)

end

end A052469.P15971684317683430155

/-! ## A052469.P13380165173080622862

`A162442(n+2)+A162442(n+2)%A024492(n+1)`
-/

namespace A052469.P13380165173080622862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162442 (n + 2) + Int.tmod (A162442 (n + 2)) (A024492 (n + 1))

end

end A052469.P13380165173080622862

/-!
# A052471: Number of noncaterpillar trees on n nodes (A000055-A005418).

The programs for A052471, there is no canonical definition to state claims against.
-/

/-! ## A052471.P6581435199596020689

`A000055(n+1)-A303868(A000124(n))`
-/

namespace A052471.P6581435199596020689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A303868 (A000124 n).toNat

end

end A052471.P6581435199596020689

/-! ## A052471.P4343952139836806990

`A054846(A001419(n+1))`
-/

namespace A052471.P4343952139836806990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A001419 (n + 1)).toNat

end

end A052471.P4343952139836806990

/-! ## A052471.P17175363806350980737

`Δ[Δ[A100196(A055022(n))]]`
-/

namespace A052471.P17175363806350980737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A055022 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052471.P17175363806350980737

/-! ## A052471.P17807543937935023534

`∑[floor(A194509(A307575(n))/27)]`
-/

namespace A052471.P17807543937935023534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194509 (A307575 n).toNat : ℚ) / 27⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052471.P17807543937935023534

/-! ## A052471.P12153425240440097506

`A244644(floor(A292213(n)/A006881(n+1)))`
-/

namespace A052471.P12153425240440097506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 ⌊(A292213 n : ℚ) / (A006881 (n + 1) : ℚ)⌋.toNat

end

end A052471.P12153425240440097506

/-!
# A052472: Number of independent components for a Weyl tensor in n dimensions.

The programs for A052472, the canonical program `A052472.P2285096730797922983` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052472 has offset 3).

The definition of A052472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052472.P2285096730797922983

`n*C(n+5, 3)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052472

/-- `n*C(n+5, 3)/2` -/
def P2285096730797922983.Spec : Prop :=
  ∀ n, P2285096730797922983.a n = (A052472 (n + 3) : ℚ)

end A052472

/-! ## A052472.P7243995496943932060

`(n+3)*(n+4)*(n+5)*n/12`
-/

namespace A052472.P7243995496943932060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (n + 4) * (n + 5) * n : ℚ) / 12

end

end A052472.P7243995496943932060

namespace A052472

/-- `(n+3)*(n+4)*(n+5)*n/12` -/
def P7243995496943932060.Spec : Prop :=
  ∀ n, P7243995496943932060.a n = (A052472 (n + 3) : ℚ)

end A052472

/-! ## A052472.P4487173395910871903

`∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]-(n+3)`
-/

namespace A052472.P4487173395910871903
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A052472.P4487173395910871903

namespace A052472

/-- `∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]-(n+3)` -/
def P4487173395910871903.Spec : Prop :=
  ∀ n, P4487173395910871903.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P14967268707447898129

`∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]-3-n`
-/

namespace A052472.P14967268707447898129
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 - (n : ℤ)

end

end A052472.P14967268707447898129

namespace A052472

/-- `∑[∑[∑[ogf((3-x)/(1-2x+x^2))]]]-3-n` -/
def P14967268707447898129.Spec : Prop :=
  ∀ n, P14967268707447898129.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P7743217795742062628

`a(n-1)+∑[(n+2)²]-(n+2)` with `a(0)=0`
-/

namespace A052472.P7743217795742062628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 2 : ℤ))

end

end A052472.P7743217795742062628

namespace A052472

/-- `a(n-1)+∑[(n+2)²]-(n+2)` -/
def P7743217795742062628.Spec : Prop :=
  ∀ n, P7743217795742062628.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P17247063783763274928

`∑[∑[(n+3)*C(n+1, n)]]-(n+3)`
-/

namespace A052472.P17247063783763274928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose (n + 1) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 3 : ℤ)

end

end A052472.P17247063783763274928

namespace A052472

/-- `∑[∑[(n+3)*C(n+1, n)]]-(n+3)` -/
def P17247063783763274928.Spec : Prop :=
  ∀ n, P17247063783763274928.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P128506927702345884

`∑[a(n-1)+(n+1)*(n+3)]-2` with `a(0)=2`
-/

namespace A052472.P128506927702345884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (n + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A052472.P128506927702345884

namespace A052472

/-- `∑[a(n-1)+(n+1)*(n+3)]-2` -/
def P128506927702345884.Spec : Prop :=
  ∀ n, P128506927702345884.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P1715427299550396656

`∑[∑[lcm(n+1, n+2)+n+1]]-(n+3)`
-/

namespace A052472.P1715427299550396656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 3 : ℤ)

end

end A052472.P1715427299550396656

namespace A052472

/-- `∑[∑[lcm(n+1, n+2)+n+1]]-(n+3)` -/
def P1715427299550396656.Spec : Prop :=
  ∀ n, P1715427299550396656.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P16086825714645827735

`A005701(n)-(n+3)`
-/

namespace A052472.P16086825714645827735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - (n + 3 : ℤ)

end

end A052472.P16086825714645827735

namespace A052472

/-- `A005701(n)-(n+3)` -/
def P16086825714645827735.Spec : Prop :=
  ∀ n, P16086825714645827735.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P3990233581010178618

`A387204(n)+A327032(n)`
-/

namespace A052472.P3990233581010178618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387204 n + A327032 n

end

end A052472.P3990233581010178618

namespace A052472

/-- `A387204(n)+A327032(n)` -/
def P3990233581010178618.Spec : Prop :=
  ∀ n, P3990233581010178618.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P8326568440725334912

`A166814(n+1)+A028552(n)`
-/

namespace A052472.P8326568440725334912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166814 (n + 1) + A028552 n

end

end A052472.P8326568440725334912

namespace A052472

/-- `A166814(n+1)+A028552(n)` -/
def P8326568440725334912.Spec : Prop :=
  ∀ n, P8326568440725334912.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P15077334807680450966

`A166796(n+1)+A055999(n)`
-/

namespace A052472.P15077334807680450966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166796 (n + 1) + A055999 n

end

end A052472.P15077334807680450966

namespace A052472

/-- `A166796(n+1)+A055999(n)` -/
def P15077334807680450966.Spec : Prop :=
  ∀ n, P15077334807680450966.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P14205219741144411943

`A362153(n+1)+A046691(n)`
-/

namespace A052472.P14205219741144411943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362153 (n + 1) + A046691 n

end

end A052472.P14205219741144411943

namespace A052472

/-- `A362153(n+1)+A046691(n)` -/
def P14205219741144411943.Spec : Prop :=
  ∀ n, P14205219741144411943.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P12741759534224009485

`A033275(n+4)+A005586(n)`
-/

namespace A052472.P12741759534224009485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033275 (n + 4) + A005586 n

end

end A052472.P12741759534224009485

namespace A052472

/-- `A033275(n+4)+A005586(n)` -/
def P12741759534224009485.Spec : Prop :=
  ∀ n, P12741759534224009485.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P8858620095543679914

`A028552(n)+∑[A101986(n)+A028552(n)]`
-/

namespace A052472.P8858620095543679914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101986 n + A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052472.P8858620095543679914

namespace A052472

/-- `A028552(n)+∑[A101986(n)+A028552(n)]` -/
def P8858620095543679914.Spec : Prop :=
  ∀ n, P8858620095543679914.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P2040772582592871168

`Δ[A130857(n+1)]-(n+3)`
-/

namespace A052472.P2040772582592871168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A052472.P2040772582592871168

namespace A052472

/-- `Δ[A130857(n+1)]-(n+3)` -/
def P2040772582592871168.Spec : Prop :=
  ∀ n, P2040772582592871168.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P12971859251016237297

`A063258(n)+A063258(n)-A166830(n+2)`
-/

namespace A052472.P12971859251016237297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + (A063258 n - A166830 (n + 2))

end

end A052472.P12971859251016237297

namespace A052472

/-- `A063258(n)+A063258(n)-A166830(n+2)` -/
def P12971859251016237297.Spec : Prop :=
  ∀ n, P12971859251016237297.a n = A052472 (n + 3)

end A052472

/-! ## A052472.P6386470637107794800

`A050297(n+3)-(n+3)`
-/

namespace A052472.P6386470637107794800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050297 (n + 3) - (n + 3 : ℤ)

end

end A052472.P6386470637107794800

namespace A052472

/-- `A050297(n+3)-(n+3)` -/
def P6386470637107794800.Spec : Prop :=
  ∀ n, P6386470637107794800.a n = A052472 (n + 3)

end A052472

/-!
# A052473: a(n) = binomial(2*n-5,n-2) + 2.

The programs for A052473, there is no canonical definition to state claims against.
-/

/-! ## A052473.P17490784178995371675

`A305161(A059993(n))+A036453(n+1)`
-/

namespace A052473.P17490784178995371675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A036453 (n + 1)

end

end A052473.P17490784178995371675

/-! ## A052473.P1783298037565414467

`A305161(A059993(n))+A040001(2*n)`
-/

namespace A052473.P1783298037565414467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A040001 (2 * n)

end

end A052473.P1783298037565414467

/-! ## A052473.P9929228378569975845

`A305161(A059993(n))+2/A000041(floor(2/(n+1)))`
-/

namespace A052473.P9929228378569975845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305161 (A059993 n).toNat : ℚ) + 2 / (A000041 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A052473.P9929228378569975845

/-! ## A052473.P14044712344746278947

`A305161(A059993(n))+A020639(A004277(n))`
-/

namespace A052473.P14044712344746278947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A020639 (A004277 n).toNat

end

end A052473.P14044712344746278947

/-! ## A052473.P8375633351123140032

`A305161(A059993(n))+A046644(A006530(n+1))`
-/

namespace A052473.P8375633351123140032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A046644 (A006530 (n + 1)).toNat

end

end A052473.P8375633351123140032

/-! ## A052473.P9802974122581579066

`A305161(A059993(A151933(n)+n))+2`
-/

namespace A052473.P9802974122581579066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 (A151933 n + (n : ℤ)).toNat).toNat + 2

end

end A052473.P9802974122581579066

/-! ## A052473.P12963881934858072867

`A305161(A059993(n))+A000032(A151933(n))`
-/

namespace A052473.P12963881934858072867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A000032 (A151933 n).toNat

end

end A052473.P12963881934858072867

/-! ## A052473.P5333069853608400077

`A305161(A059993(n))+A000005(A095928(n+1))`
-/

namespace A052473.P5333069853608400077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (A059993 n).toNat + A000005 (A095928 (n + 1)).toNat

end

end A052473.P5333069853608400077

/-!
# A052474: Construct difference array so that (1) first row begins with 1, (2) every row is monotonic increasing, (3) no number appears more than once, (4) smallest number not yet used begins a new row. Sequence gives main diagonal.

The programs for A052474, there is no canonical definition to state claims against.
-/

/-! ## A052474.P2671351211366331721

`A056230(∑[n]+1)`
-/

namespace A052474.P2671351211366331721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A052474.P2671351211366331721

/-! ## A052474.P2756724658997801154

`A056230(A000124(n))%A000051(n)`
-/

namespace A052474.P2756724658997801154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056230 (A000124 n).toNat) (A000051 n)

end

end A052474.P2756724658997801154

/-! ## A052474.P18392099921352030791

`A087960(n)²*A056230(A000124(n))`
-/

namespace A052474.P18392099921352030791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A056230 (A000124 n).toNat

end

end A052474.P18392099921352030791

/-! ## A052474.P13002693498531835357

`A056230(A000124(n))^and(1, A000040(n+1))`
-/

namespace A052474.P13002693498531835357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (A000124 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A052474.P13002693498531835357

/-! ## A052474.P14634410253853609867

`record[A056230(n+1)/A056242(n+1)]`
-/

namespace A052474.P14634410253853609867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (n + 1) : ℚ) / (A056242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052474.P14634410253853609867

/-! ## A052474.P4542284433587249645

`A133544(∑[n+1])`
-/

namespace A052474.P4542284433587249645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052474.P4542284433587249645

/-! ## A052474.P7048038397304536506

`record[A056230(n+1)/A059274(n)]`
-/

namespace A052474.P7048038397304536506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (n + 1) : ℚ) / (A059274 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052474.P7048038397304536506

/-! ## A052474.P4732659219135453998

`record[A056230(n+1)/A008517(n+1)]`
-/

namespace A052474.P4732659219135453998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056230 (n + 1) : ℚ) / (A008517 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052474.P4732659219135453998

/-!
# A052475: Discriminants of real quadratic number fields K with class number 2 such that the Hilbert class field of K is K(sqrt(5)).

The programs for A052475, there is no canonical definition to state claims against.
-/

/-! ## A052475.P3592037770107330619

`∩[5*n, A094619(n+1)]`
-/

namespace A052475.P3592037770107330619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P3592037770107330619

/-! ## A052475.P2325343215702945153

`∩[A094619(n+1), A008587(n)]`
-/

namespace A052475.P2325343215702945153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P2325343215702945153

/-! ## A052475.P8644141342932640281

`∩[A094619(n+1), A008706(n)]`
-/

namespace A052475.P8644141342932640281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P8644141342932640281

/-! ## A052475.P6454832325007314113

`∩[A094619(n+1), A135042(n)]`
-/

namespace A052475.P6454832325007314113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P6454832325007314113

/-! ## A052475.P14023058951660923608

`∩[A094619(n+1), A168101(n)]`
-/

namespace A052475.P14023058951660923608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P14023058951660923608

/-! ## A052475.P10761384221132519783

`∩[A094619(n+1), A167179(n+1)]`
-/

namespace A052475.P10761384221132519783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P10761384221132519783

/-! ## A052475.P17244257459572747364

`∩[A094619(n+1), A335365(n+1)]`
-/

namespace A052475.P17244257459572747364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P17244257459572747364

/-! ## A052475.P3874661327494786454

`∩[A094619(n+1), A357778(n+1)]`
-/

namespace A052475.P3874661327494786454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P3874661327494786454

/-! ## A052475.P17935413521251253811

`∩[A094619(n+1), A182340(n+1)]`
-/

namespace A052475.P17935413521251253811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052475.P17935413521251253811

/-! ## A052475.P2485763158846818508

`filter[A094619(n+1), A079998(#)]`
-/

namespace A052475.P2485763158846818508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A052475.P2485763158846818508

/-!
# A052476: Discriminants of real quadratic number fields K with class number 2 such that the Hilbert class field of K is K(sqrt(2)).

The programs for A052476, there is no canonical definition to state claims against.
-/

/-! ## A052476.P15530484753933044827

`∩[A063164(n+1), A094619(n+1)]`
-/

namespace A052476.P15530484753933044827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052476.P15530484753933044827

/-! ## A052476.P410965026440311135

`∩[A094619(n+1), A106841(n+1)]`
-/

namespace A052476.P410965026440311135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052476.P410965026440311135

/-! ## A052476.P15433184811698100500

`∩[A094619(n+1), A305075(n+1)]`
-/

namespace A052476.P15433184811698100500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052476.P15433184811698100500

/-! ## A052476.P8387855950053952107

`∩[A094619(n+1), A317331(n+1)]`
-/

namespace A052476.P8387855950053952107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052476.P8387855950053952107

/-!
# A052477: Discriminants of real quadratic number fields K with class number 2 such that the Hilbert class field of K is K(sqrt(3)).

The programs for A052477, there is no canonical definition to state claims against.
-/

/-! ## A052477.P4956834491256525017

`∩[A033950(n+1), A391531(n+1)]`
-/

namespace A052477.P4956834491256525017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P4956834491256525017

/-! ## A052477.P6153638745135209039

`∩[A057265(n+1), A391531(n+1)]`
-/

namespace A052477.P6153638745135209039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P6153638745135209039

/-! ## A052477.P5461912362944954982

`∩[A063080(n+1), A391531(n+1)]`
-/

namespace A052477.P5461912362944954982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P5461912362944954982

/-! ## A052477.P4290359245623849397

`∩[A073762(n+1), A391531(n+1)]`
-/

namespace A052477.P4290359245623849397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P4290359245623849397

/-! ## A052477.P2312091144041797473

`∩[A101103(n+1), A391531(n+1)]`
-/

namespace A052477.P2312091144041797473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P2312091144041797473

/-! ## A052477.P13721253507799669189

`∩[A174457(n+1), A391531(n+1)]`
-/

namespace A052477.P13721253507799669189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P13721253507799669189

/-! ## A052477.P4394038410896408663

`∩[A245047(n+1), A391531(n+1)]`
-/

namespace A052477.P4394038410896408663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P4394038410896408663

/-! ## A052477.P6123671060058599758

`∩[A328120(n+1), A391531(n+1)]`
-/

namespace A052477.P6123671060058599758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P6123671060058599758

/-! ## A052477.P12199675528913335087

`∩[A340305(n+1), A391531(n+1)]`
-/

namespace A052477.P12199675528913335087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P12199675528913335087

/-! ## A052477.P7989821269535536857

`∩[A387055(n+1), A391531(n+1)]`
-/

namespace A052477.P7989821269535536857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P7989821269535536857

/-! ## A052477.P9522175014180697736

`∩[A073762(n+1), A094619(n+1)]`
-/

namespace A052477.P9522175014180697736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P9522175014180697736

/-! ## A052477.P4010384640850319004

`∩[A094619(n+1), A101103(n+1)]`
-/

namespace A052477.P4010384640850319004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P4010384640850319004

/-! ## A052477.P10537871460983756862

`∩[A094619(n+1), A174457(n+1)]`
-/

namespace A052477.P10537871460983756862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P10537871460983756862

/-! ## A052477.P4706944472833644085

`∩[A094619(n+1), A328120(n+1)]`
-/

namespace A052477.P4706944472833644085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P4706944472833644085

/-! ## A052477.P3876438521265572576

`∩[A094619(n+1), A340305(n+1)]`
-/

namespace A052477.P3876438521265572576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P3876438521265572576

/-! ## A052477.P978979544837679562

`filter[A094619(n+1), A373260(#)]`
-/

namespace A052477.P978979544837679562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A052477.P978979544837679562

/-! ## A052477.P5671729664042212350

`filter[A391531(n+1), A373260(#)]`
-/

namespace A052477.P5671729664042212350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373260 (f1 j).toNat = 1) n)

end

end A052477.P5671729664042212350

/-! ## A052477.P6334818128813078504

`filter[A391531(n+1), A336040(#)]`
-/

namespace A052477.P6334818128813078504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A052477.P6334818128813078504

/-! ## A052477.P5035602773258358819

`∩[A094619(n+1), A373261(n+1)]`
-/

namespace A052477.P5035602773258358819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P5035602773258358819

/-! ## A052477.P6010414694328119844

`∩[A373261(n+1), A391531(n+1)]`
-/

namespace A052477.P6010414694328119844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052477.P6010414694328119844

/-!
# A052478: Discriminants of real quadratic number fields K with class number 2 such that the Hilbert class field of K is K(sqrt(13)).

The programs for A052478, there is no canonical definition to state claims against.
-/

/-! ## A052478.P7416787592870810083

`∩[A094619(n+1), A008595(n)]`
-/

namespace A052478.P7416787592870810083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052478.P7416787592870810083

/-!
# A052479: Discriminants of real quadratic number fields K with class number 2 such that the Hilbert class field of K is K(sqrt(17)).

The programs for A052479, there is no canonical definition to state claims against.
-/

/-! ## A052479.P10571892564651156644

`∩[A094619(n+1), A008599(n)]`
-/

namespace A052479.P10571892564651156644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052479.P10571892564651156644

/-!
# A052481: a(n) = 2^n*(binomial(n,2) + 1).

The programs for A052481, the canonical program `A052481.P12009171480250880183` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052481 has offset 0).

The definition of A052481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(C(n, 2)+1)` (program `A052481.P12009171480250880183`, by `A052481.P12009171480250880183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052481.P12009171480250880183

`2^n*(C(n, 2)+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052481

/-- `2^n*(C(n, 2)+1)` -/
def P12009171480250880183.Spec : Prop :=
  ∀ n, (P12009171480250880183.a n : ℤ) = A052481 n

theorem P12009171480250880183.correct : P12009171480250880183.Spec := by
  intro n
  simp only [A052481]

end A052481

/-! ## A052481.P5328607628358546212

`2^(n-1)*(n²-n+2)`
-/

namespace A052481.P5328607628358546212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ) + 2 : ℚ)

end

end A052481.P5328607628358546212

namespace A052481

/-- `2^(n-1)*(n²-n+2)` -/
def P5328607628358546212.Spec : Prop :=
  ∀ n, P5328607628358546212.a n = (A052481 n : ℚ)

end A052481

/-! ## A052481.P14388441540923734158

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A052481.P14388441540923734158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A052481.P14388441540923734158

namespace A052481

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P14388441540923734158.Spec : Prop :=
  ∀ n, P14388441540923734158.a n = A052481 n

end A052481

/-! ## A052481.P11798458154853214264

`∑[ogf(x/(1-6x+12x^2-8x^3))]+1`
-/

namespace A052481.P11798458154853214264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 12, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052481.P11798458154853214264

namespace A052481

/-- `∑[ogf(x/(1-6x+12x^2-8x^3))]+1` -/
def P11798458154853214264.Spec : Prop :=
  ∀ n, P11798458154853214264.a n = A052481 n

end A052481

/-! ## A052481.P16270369680515764026

`a(n-1)+2^(n-1)*∑[n]` with `a(0)=1`
-/

namespace A052481.P16270369680515764026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A052481.P16270369680515764026

namespace A052481

/-- `a(n-1)+2^(n-1)*∑[n]` -/
def P16270369680515764026.Spec : Prop :=
  ∀ n, P16270369680515764026.a n = (A052481 n : ℚ)

end A052481

/-! ## A052481.P7684359571154836717

`∑[A001788(n)]+1`
-/

namespace A052481.P7684359571154836717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052481.P7684359571154836717

namespace A052481

/-- `∑[A001788(n)]+1` -/
def P7684359571154836717.Spec : Prop :=
  ∀ n, P7684359571154836717.a n = A052481 n

end A052481

/-! ## A052481.P17314039396075135637

`∑[A048506(n)]-n`
-/

namespace A052481.P17314039396075135637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A052481.P17314039396075135637

namespace A052481

/-- `∑[A048506(n)]-n` -/
def P17314039396075135637.Spec : Prop :=
  ∀ n, P17314039396075135637.a n = A052481 n

end A052481

/-! ## A052481.P728581108341185624

`A100381(n)+2^n`
-/

namespace A052481.P728581108341185624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 n + (2 ^ n : ℤ)

end

end A052481.P728581108341185624

namespace A052481

/-- `A100381(n)+2^n` -/
def P728581108341185624.Spec : Prop :=
  ∀ n, P728581108341185624.a n = A052481 n

end A052481

/-! ## A052481.P686116612365336462

`∑[∑[n]*A011782(n)]+1`
-/

namespace A052481.P686116612365336462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052481.P686116612365336462

namespace A052481

/-- `∑[∑[n]*A011782(n)]+1` -/
def P686116612365336462.Spec : Prop :=
  ∀ n, P686116612365336462.a n = A052481 n

end A052481

/-! ## A052481.P17742476279621686218

`∑[∑[n]*A131577(n)]+1`
-/

namespace A052481.P17742476279621686218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052481.P17742476279621686218

namespace A052481

/-- `∑[∑[n]*A131577(n)]+1` -/
def P17742476279621686218.Spec : Prop :=
  ∀ n, P17742476279621686218.a n = A052481 n

end A052481

/-! ## A052481.P5420858130868763214

`A178987(n+1)+2^(n+1)`
-/

namespace A052481.P5420858130868763214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A052481.P5420858130868763214

namespace A052481

/-- `A178987(n+1)+2^(n+1)` -/
def P5420858130868763214.Spec : Prop :=
  ∀ n, P5420858130868763214.a n = A052481 n

end A052481

/-! ## A052481.P455948691656863439

`A048504(n)+A000295(n)`
-/

namespace A052481.P455948691656863439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048504 n + A000295 n

end

end A052481.P455948691656863439

namespace A052481

/-- `A048504(n)+A000295(n)` -/
def P455948691656863439.Spec : Prop :=
  ∀ n, P455948691656863439.a n = A052481 n

end A052481

/-! ## A052481.P13066472373586106768

`A053730(n)+A001815(n)`
-/

namespace A052481.P13066472373586106768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053730 n + A001815 n

end

end A052481.P13066472373586106768

namespace A052481

/-- `A053730(n)+A001815(n)` -/
def P13066472373586106768.Spec : Prop :=
  ∀ n, P13066472373586106768.a n = A052481 n

end A052481

/-! ## A052481.P10648614836208339001

`A127276(n)+A084857(n)`
-/

namespace A052481.P10648614836208339001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n + A084857 n

end

end A052481.P10648614836208339001

namespace A052481

/-- `A127276(n)+A084857(n)` -/
def P10648614836208339001.Spec : Prop :=
  ∀ n, P10648614836208339001.a n = A052481 n

end A052481

/-! ## A052481.P14038202596631959178

`A048482(n)-A000337(n)`
-/

namespace A052481.P14038202596631959178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048482 n - A000337 n

end

end A052481.P14038202596631959178

namespace A052481

/-- `A048482(n)-A000337(n)` -/
def P14038202596631959178.Spec : Prop :=
  ∀ n, P14038202596631959178.a n = A052481 n

end A052481

/-! ## A052481.P13918461506035457073

`A340257(n)-A036289(n)`
-/

namespace A052481.P13918461506035457073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n - A036289 n

end

end A052481.P13918461506035457073

namespace A052481

/-- `A340257(n)-A036289(n)` -/
def P13918461506035457073.Spec : Prop :=
  ∀ n, P13918461506035457073.a n = A052481 n

end A052481

/-! ## A052481.P8930413952301360962

`A000051(n)+A100381(n)-1`
-/

namespace A052481.P8930413952301360962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A100381 n - 1)

end

end A052481.P8930413952301360962

namespace A052481

/-- `A000051(n)+A100381(n)-1` -/
def P8930413952301360962.Spec : Prop :=
  ∀ n, P8930413952301360962.a n = A052481 n

end A052481

/-! ## A052481.P8599524700769607613

`A356888(n+1)-A001787(n)`
-/

namespace A052481.P8599524700769607613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356888 (n + 1) - A001787 n

end

end A052481.P8599524700769607613

namespace A052481

/-- `A356888(n+1)-A001787(n)` -/
def P8599524700769607613.Spec : Prop :=
  ∀ n, P8599524700769607613.a n = A052481 n

end A052481

/-! ## A052481.P17574701123219474777

`A000079(n)+2*A001815(n)`
-/

namespace A052481.P17574701123219474777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 * A001815 n

end

end A052481.P17574701123219474777

namespace A052481

/-- `A000079(n)+2*A001815(n)` -/
def P17574701123219474777.Spec : Prop :=
  ∀ n, P17574701123219474777.a n = A052481 n

end A052481

/-! ## A052481.P16341106766848260818

`2*A053730(n)-A000079(n)`
-/

namespace A052481.P16341106766848260818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053730 n - A000079 n

end

end A052481.P16341106766848260818

namespace A052481

/-- `2*A053730(n)-A000079(n)` -/
def P16341106766848260818.Spec : Prop :=
  ∀ n, P16341106766848260818.a n = A052481 n

end A052481

/-!
# A052482: a(n) = 2^(n-2)*binomial(n+1,2).

The programs for A052482, the canonical program `A052482.P18303138726562643083` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052482 has offset 2).

The definition of A052482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n+3, 2)` (program `A052482.P18303138726562643083`, by `A052482.P18303138726562643083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052482.P18303138726562643083

`2^n*C(n+3, 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052482

/-- `2^n*C(n+3, 2)` -/
def P18303138726562643083.Spec : Prop :=
  ∀ n, (P18303138726562643083.a n : ℤ) = A052482 (n + 2)

theorem P18303138726562643083.correct : P18303138726562643083.Spec := by
  intro n
  simp only [A052482, Nat.add_sub_cancel]

end A052482

/-! ## A052482.P18210319918889768197

`2^(n-1)*(n+2)*(1+n+2)`
-/

namespace A052482.P18210319918889768197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 2 : ℚ) * (1 + (n + 2) : ℚ)

end

end A052482.P18210319918889768197

namespace A052482

/-- `2^(n-1)*(n+2)*(1+n+2)` -/
def P18210319918889768197.Spec : Prop :=
  ∀ n, P18210319918889768197.a n = (A052482 (n + 2) : ℚ)

end A052482

/-! ## A052482.P880048930974192364

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=12, a(2)=40`
-/

namespace A052482.P880048930974192364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 40] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A052482.P880048930974192364

namespace A052482

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P880048930974192364.Spec : Prop :=
  ∀ n, P880048930974192364.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P12175242262261139021

`C(n+3, 2)/2^-n`
-/

namespace A052482.P12175242262261139021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A052482.P12175242262261139021

namespace A052482

/-- `C(n+3, 2)/2^-n` -/
def P12175242262261139021.Spec : Prop :=
  ∀ n, P12175242262261139021.a n = (A052482 (n + 2) : ℚ)

end A052482

/-! ## A052482.P17186032945070758612

`a(n-1)+(4/(n+1)+1)*a(n-1)` with `a(0)=3`
-/

namespace A052482.P17186032945070758612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (4 / (n + 1 : ℚ) + 1) * a (n - 1)

end

end A052482.P17186032945070758612

namespace A052482

/-- `a(n-1)+(4/(n+1)+1)*a(n-1)` -/
def P17186032945070758612.Spec : Prop :=
  ∀ n, P17186032945070758612.a n = (A052482 (n + 2) : ℚ)

end A052482

/-! ## A052482.P13830494008279760237

`A080929(n+1)`
-/

namespace A052482.P13830494008279760237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 (n + 1)

end

end A052482.P13830494008279760237

namespace A052482

/-- `A080929(n+1)` -/
def P13830494008279760237.Spec : Prop :=
  ∀ n, P13830494008279760237.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P16335668981309517073

`record[A080929(abs(1-n))]`
-/

namespace A052482.P16335668981309517073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080929 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052482.P16335668981309517073

namespace A052482

/-- `record[A080929(abs(1-n))]` -/
def P16335668981309517073.Spec : Prop :=
  ∀ n, P16335668981309517073.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P6809314335734069385

`A100312(n)+2^(n+1)`
-/

namespace A052482.P6809314335734069385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 n + (2 ^ (n + 1) : ℤ)

end

end A052482.P6809314335734069385

namespace A052482

/-- `A100312(n)+2^(n+1)` -/
def P6809314335734069385.Spec : Prop :=
  ∀ n, P6809314335734069385.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P18049630647938816198

`A007466(n+2)-2^n`
-/

namespace A052482.P18049630647938816198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 2) - (2 ^ n : ℤ)

end

end A052482.P18049630647938816198

namespace A052482

/-- `A007466(n+2)-2^n` -/
def P18049630647938816198.Spec : Prop :=
  ∀ n, P18049630647938816198.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P1118069476440164648

`A084266(n+1)+A001788(n)`
-/

namespace A052482.P1118069476440164648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084266 (n + 1) + A001788 n

end

end A052482.P1118069476440164648

namespace A052482

/-- `A084266(n+1)+A001788(n)` -/
def P1118069476440164648.Spec : Prop :=
  ∀ n, P1118069476440164648.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P5618036047805889539

`A176027(n)+A072863(n+1)`
-/

namespace A052482.P5618036047805889539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A072863 (n + 1)

end

end A052482.P5618036047805889539

namespace A052482

/-- `A176027(n)+A072863(n+1)` -/
def P5618036047805889539.Spec : Prop :=
  ∀ n, P5618036047805889539.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P9736689988215305536

`A340257(n)+A036289(n+1)`
-/

namespace A052482.P9736689988215305536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340257 n + A036289 (n + 1)

end

end A052482.P9736689988215305536

namespace A052482

/-- `A340257(n)+A036289(n+1)` -/
def P9736689988215305536.Spec : Prop :=
  ∀ n, P9736689988215305536.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P1845865873752913398

`A104270(n+2)+A036289(n)`
-/

namespace A052482.P1845865873752913398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 2) + A036289 n

end

end A052482.P1845865873752913398

namespace A052482

/-- `A104270(n+2)+A036289(n)` -/
def P1845865873752913398.Spec : Prop :=
  ∀ n, P1845865873752913398.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P11841360390051373287

`A084850(n)+A066373(n+2)`
-/

namespace A052482.P11841360390051373287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n + A066373 (n + 2)

end

end A052482.P11841360390051373287

namespace A052482

/-- `A084850(n)+A066373(n+2)` -/
def P11841360390051373287.Spec : Prop :=
  ∀ n, P11841360390051373287.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P1393979061857880248

`A084851(n+1)-A127276(n)`
-/

namespace A052482.P1393979061857880248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (n + 1) - A127276 n

end

end A052482.P1393979061857880248

namespace A052482

/-- `A084851(n+1)-A127276(n)` -/
def P1393979061857880248.Spec : Prop :=
  ∀ n, P1393979061857880248.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P14506256488628653656

`A176027(n+1)-A036289(n)`
-/

namespace A052482.P14506256488628653656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 (n + 1) - A036289 n

end

end A052482.P14506256488628653656

namespace A052482

/-- `A176027(n+1)-A036289(n)` -/
def P14506256488628653656.Spec : Prop :=
  ∀ n, P14506256488628653656.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P6407084786253368812

`A049611(n+2)-A127276(n)`
-/

namespace A052482.P6407084786253368812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 2) - A127276 n

end

end A052482.P6407084786253368812

namespace A052482

/-- `A049611(n+2)-A127276(n)` -/
def P6407084786253368812.Spec : Prop :=
  ∀ n, P6407084786253368812.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P18129358749824586732

`A000079(n)+∑[2*A084851(n)]`
-/

namespace A052482.P18129358749824586732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052482.P18129358749824586732

namespace A052482

/-- `A000079(n)+∑[2*A084851(n)]` -/
def P18129358749824586732.Spec : Prop :=
  ∀ n, P18129358749824586732.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P12088145383169234605

`A087431(n+1)+A001787(n+1)`
-/

namespace A052482.P12088145383169234605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087431 (n + 1) + A001787 (n + 1)

end

end A052482.P12088145383169234605

namespace A052482

/-- `A087431(n+1)+A001787(n+1)` -/
def P12088145383169234605.Spec : Prop :=
  ∀ n, P12088145383169234605.a n = A052482 (n + 2)

end A052482

/-! ## A052482.P8381253276834447589

`A217528(n+1)+A036799(n+1)`
-/

namespace A052482.P8381253276834447589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217528 (n + 1) + A036799 (n + 1)

end

end A052482.P8381253276834447589

namespace A052482

/-- `A217528(n+1)+A036799(n+1)` -/
def P8381253276834447589.Spec : Prop :=
  ∀ n, P8381253276834447589.a n = A052482 (n + 2)

end A052482

/-!
# A052484: Let P = all numbers that can be obtained by permuting the digits of n and possibly adding or omitting zeros; a(n) = |n-q| where q in P is the closest number to n different from n (a(n)=0 if no such q exists).

The programs for A052484, there is no canonical definition to state claims against.
-/

/-! ## A052484.P1512585624077953872

`9*A052500(n)`
-/

namespace A052484.P1512585624077953872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A052500 n

end

end A052484.P1512585624077953872

/-! ## A052484.P5269941353559139720

`A008591(A052500(n))`
-/

namespace A052484.P5269941353559139720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A052500 n).toNat

end

end A052484.P5269941353559139720

/-! ## A052484.P10958953661190851846

`∑{digits}[n, #*A132133(A300138(n+1))]`
-/

namespace A052484.P10958953661190851846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A132133 (A300138 (n + 1)).toNat).sum

end

end A052484.P10958953661190851846

/-! ## A052484.P17653549077128665464

`A010888(n)*A132133(A300138(n+1))`
-/

namespace A052484.P17653549077128665464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n * A132133 (A300138 (n + 1)).toNat

end

end A052484.P17653549077128665464

/-! ## A052484.P778574912445349098

`A000005(A036896(3*n+1))*A007953(n)`
-/

namespace A052484.P778574912445349098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036896 (3 * n + 1)).toNat * A007953 n

end

end A052484.P778574912445349098

/-!
# A052485: Weak numbers (i.e., not powerful (1)): there is a prime p where p|n is true but p^2|n is not true.

The programs for A052485, the canonical program `A052485.P6798499314965408935` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052485 has offset 1).

The definition of A052485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052485.P6798499314965408935

`comp[n*∏{p}[n, #]]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052485

/-- `comp[n*∏{p}[n, #]]` -/
def P6798499314965408935.Spec : Prop :=
  ∀ n, (P6798499314965408935.a n : ℤ) = A052485 (n + 1)

theorem P6798499314965408935.correct : P6798499314965408935.Spec := by
  intro n
  simp only [A052485, Nat.add_sub_cancel]

end A052485

/-! ## A052485.P17931772464199841882

`record[A304776(n+2)]`
-/

namespace A052485.P17931772464199841882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052485.P17931772464199841882

namespace A052485

/-- `record[A304776(n+2)]` -/
def P17931772464199841882.Spec : Prop :=
  ∀ n, P17931772464199841882.a n = A052485 (n + 1)

end A052485

/-! ## A052485.P9857216470772893999

`eq[0, A300717(n+1)]+1`
-/

namespace A052485.P9857216470772893999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052485.P9857216470772893999

namespace A052485

/-- `eq[0, A300717(n+1)]+1` -/
def P9857216470772893999.Spec : Prop :=
  ∀ n, (P9857216470772893999.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P52690005403131004

`eq[1, A051904(n+1)]+1`
-/

namespace A052485.P52690005403131004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052485.P52690005403131004

namespace A052485

/-- `eq[1, A051904(n+1)]+1` -/
def P52690005403131004.Spec : Prop :=
  ∀ n, (P52690005403131004.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P8063843457452797652

`lt[1, A055231(n+1)]+1`
-/

namespace A052485.P8063843457452797652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A052485.P8063843457452797652

namespace A052485

/-- `lt[1, A055231(n+1)]+1` -/
def P8063843457452797652.Spec : Prop :=
  ∀ n, (P8063843457452797652.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P10623725520943416412

`eq[1, A354090(n+2)]+2`
-/

namespace A052485.P10623725520943416412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A052485.P10623725520943416412

namespace A052485

/-- `eq[1, A354090(n+2)]+2` -/
def P10623725520943416412.Spec : Prop :=
  ∀ n, (P10623725520943416412.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P10358064679973940631

`lt[A051904(n+2), 2]+2`
-/

namespace A052485.P10358064679973940631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A052485.P10358064679973940631

namespace A052485

/-- `lt[A051904(n+2), 2]+2` -/
def P10358064679973940631.Spec : Prop :=
  ∀ n, (P10358064679973940631.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P17087578204587690957

`lt[A001221(A057521(n+1)), A001221(n+1)]+1`
-/

namespace A052485.P17087578204587690957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A057521 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A052485.P17087578204587690957

namespace A052485

/-- `lt[A001221(A057521(n+1)), A001221(n+1)]+1` -/
def P17087578204587690957.Spec : Prop :=
  ∀ n, (P17087578204587690957.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P13625360006734579268

`eq[0, ∏{e}[n, log(#)]]`
-/

namespace A052485.P13625360006734579268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Real.log (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A052485.P13625360006734579268

namespace A052485

/-- `eq[0, ∏{e}[n, log(#)]]` -/
def P13625360006734579268.Spec : Prop :=
  ∀ n, (P13625360006734579268.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P13083926263356444812

`lt[∏{e}[n, log2(#)], 1]`
-/

namespace A052485.P13083926263356444812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A052485.P13083926263356444812

namespace A052485

/-- `lt[∏{e}[n, log2(#)], 1]` -/
def P13083926263356444812.Spec : Prop :=
  ∀ n, (P13083926263356444812.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P13195974653916574316

`eq[0, -∏{e}[n, 1-#]]`
-/

namespace A052485.P13195974653916574316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ p ∈ Nat.primeFactors (f3 n), (1 - (Nat.factorization (f3 n) p : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052485.P13195974653916574316

namespace A052485

/-- `eq[0, -∏{e}[n, 1-#]]` -/
def P13195974653916574316.Spec : Prop :=
  ∀ n, (P13195974653916574316.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P7844222760391088772

`eq[0, ∏{e}[n, 1-#]²]`
-/

namespace A052485.P7844222760391088772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (1 - (Nat.factorization (f3 n) p : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052485.P7844222760391088772

namespace A052485

/-- `eq[0, ∏{e}[n, 1-#]²]` -/
def P7844222760391088772.Spec : Prop :=
  ∀ n, (P7844222760391088772.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P2225641265432044314

`lt[∏{e}[n, 1-#]², 1]`
-/

namespace A052485.P2225641265432044314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (1 - (Nat.factorization (f2 n) p : ℤ))) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A052485.P2225641265432044314

namespace A052485

/-- `lt[∏{e}[n, 1-#]², 1]` -/
def P2225641265432044314.Spec : Prop :=
  ∀ n, (P2225641265432044314.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P10237810943669050234

`lt[gcd(n, A003415(n)²), n]`
-/

namespace A052485.P10237810943669050234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003415 n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052485.P10237810943669050234

namespace A052485

/-- `lt[gcd(n, A003415(n)²), n]` -/
def P10237810943669050234.Spec : Prop :=
  ∀ n, (P10237810943669050234.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P13128736049892207269

`lt[1, A092261(n+1)]+1`
-/

namespace A052485.P13128736049892207269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A052485.P13128736049892207269

namespace A052485

/-- `lt[1, A092261(n+1)]+1` -/
def P13128736049892207269.Spec : Prop :=
  ∀ n, (P13128736049892207269.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P10703508045468496430

`lt[A095683(n+1), 1]+1`
-/

namespace A052485.P10703508045468496430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A052485.P10703508045468496430

namespace A052485

/-- `lt[A095683(n+1), 1]+1` -/
def P10703508045468496430.Spec : Prop :=
  ∀ n, (P10703508045468496430.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P14302775080366763625

`lt[A112526(n+1), 1]+1`
-/

namespace A052485.P14302775080366763625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A052485.P14302775080366763625

namespace A052485

/-- `lt[A112526(n+1), 1]+1` -/
def P14302775080366763625.Spec : Prop :=
  ∀ n, (P14302775080366763625.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P15100243613478116094

`lt[1, A134193(n+1)]+1`
-/

namespace A052485.P15100243613478116094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A052485.P15100243613478116094

namespace A052485

/-- `lt[1, A134193(n+1)]+1` -/
def P15100243613478116094.Spec : Prop :=
  ∀ n, (P15100243613478116094.a n : ℤ) = A052485 (n + 1)

end A052485

/-! ## A052485.P18292863527112507791

`comp[C(A057521(n+1), n)]`
-/

namespace A052485.P18292863527112507791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057521 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A052485.P18292863527112507791

namespace A052485

/-- `comp[C(A057521(n+1), n)]` -/
def P18292863527112507791.Spec : Prop :=
  ∀ n, (P18292863527112507791.a n : ℤ) = A052485 (n + 1)

end A052485

/-!
# A052486: Achilles numbers - powerful but imperfect: if n = Product(p_i^e_i) then all e_i > 1 (i.e., powerful), but the highest common factor of the e_i is 1, i.e., not a perfect power.

The programs for A052486, there is no canonical definition to state claims against.
-/

/-! ## A052486.P4839216722275244238

`sqrt(A390435(n+1))`
-/

namespace A052486.P4839216722275244238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A390435 (n + 1) : ℝ)

end

end A052486.P4839216722275244238

/-! ## A052486.P14705216207722461140

`∪[A378859(n+1), A379164(n+1)]`
-/

namespace A052486.P14705216207722461140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P14705216207722461140

/-! ## A052486.P16654243463980198907

`∪[A377854(n+1), A386434(n+1)]`
-/

namespace A052486.P16654243463980198907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P16654243463980198907

/-! ## A052486.P4175658947103765681

`∪[A378859(n+1), A386434(n+1)]`
-/

namespace A052486.P4175658947103765681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P4175658947103765681

/-! ## A052486.P5058395328807984021

`∩[A001694(n+1), A389753(n+1)]`
-/

namespace A052486.P5058395328807984021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P5058395328807984021

/-! ## A052486.P5417419241522848723

`∩[A102834(n+1), A389753(n+1)]`
-/

namespace A052486.P5417419241522848723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P5417419241522848723

/-! ## A052486.P4428902084051656998

`∩[A216426(n+1), A389753(n+1)]`
-/

namespace A052486.P4428902084051656998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P4428902084051656998

/-! ## A052486.P12293176016325903235

`∩[A216427(n+1), A389753(n+1)]`
-/

namespace A052486.P12293176016325903235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P12293176016325903235

/-! ## A052486.P2865682950503368444

`∩[A286708(n+1), A389753(n+1)]`
-/

namespace A052486.P2865682950503368444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P2865682950503368444

/-! ## A052486.P1448641236572353009

`∩[A320966(n+1), A389753(n+1)]`
-/

namespace A052486.P1448641236572353009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P1448641236572353009

/-! ## A052486.P15049607572754869704

`∩[A359280(n+1), A389753(n+1)]`
-/

namespace A052486.P15049607572754869704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P15049607572754869704

/-! ## A052486.P11029625582496355248

`∩[A372404(n+1), A389753(n+1)]`
-/

namespace A052486.P11029625582496355248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P11029625582496355248

/-! ## A052486.P2001190817880005331

`∩[A389753(n+1), A389959(n+1)]`
-/

namespace A052486.P2001190817880005331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P2001190817880005331

/-! ## A052486.P2885766941426234130

`∩[A380168(n+1), A389959(n+1)]`
-/

namespace A052486.P2885766941426234130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P2885766941426234130

/-! ## A052486.P7580648897268722289

`record[A052410(A216426(n+1))]`
-/

namespace A052486.P7580648897268722289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A216426 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052486.P7580648897268722289

/-! ## A052486.P9459997254003287735

`record[A052410(A216427(n+2))]`
-/

namespace A052486.P9459997254003287735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A216427 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052486.P9459997254003287735

/-! ## A052486.P13783235113907277396

`∩[A295661(n+1), A389959(n+1)]`
-/

namespace A052486.P13783235113907277396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P13783235113907277396

/-! ## A052486.P11622759520044108119

`filter[A389959(n+1), A049240(#)]`
-/

namespace A052486.P11622759520044108119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A052486.P11622759520044108119

/-! ## A052486.P4916333868784131519

`filter[A389959(n+1), A343219(#)]`
-/

namespace A052486.P4916333868784131519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A052486.P4916333868784131519

/-! ## A052486.P13059279570103292524

`∩[A001694(n+1), A391415(n+1)]`
-/

namespace A052486.P13059279570103292524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052486.P13059279570103292524

/-!
# A052488: a(n) = floor(n*H(n)) where H(n) is the n-th harmonic number, Sum_{k=1..n} 1/k (A001008/A002805).

The programs for A052488, the canonical program `A052488.P11841203822231542227` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052488 has offset 1).

The definition of A052488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052488.P11841203822231542227

`floor((n+1)*∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052488

/-- `floor((n+1)*∑[1/(n+1)])` -/
def P11841203822231542227.Spec : Prop :=
  ∀ n, P11841203822231542227.a n = A052488 (n + 1)

theorem P11841203822231542227.correct : P11841203822231542227.Spec := by
  intro n
  simp only [A052488, Nat.add_sub_cancel]

end A052488

/-! ## A052488.P6243173090068946369

`floor(∑[a(n-1)+1/n])+n+1` with `a(0)=0`
-/

namespace A052488.P6243173090068946369
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 1 / (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (n + 1 : ℤ)

end

end A052488.P6243173090068946369

namespace A052488

/-- `floor(∑[a(n-1)+1/n])+n+1` -/
def P6243173090068946369.Spec : Prop :=
  ∀ n, P6243173090068946369.a n = A052488 (n + 1)

end A052488

/-! ## A052488.P6970755224108626392

`A102722(n+1)+A006218(n+1)`
-/

namespace A052488.P6970755224108626392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102722 (n + 1) + A006218 (n + 1)

end

end A052488.P6970755224108626392

namespace A052488

/-- `A102722(n+1)+A006218(n+1)` -/
def P6970755224108626392.Spec : Prop :=
  ∀ n, P6970755224108626392.a n = A052488 (n + 1)

end A052488

/-! ## A052488.P688622724057443740

`A102722(n+1)+∑[A000005(n+1)]`
-/

namespace A052488.P688622724057443740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102722 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052488.P688622724057443740

namespace A052488

/-- `A102722(n+1)+∑[A000005(n+1)]` -/
def P688622724057443740.Spec : Prop :=
  ∀ n, P688622724057443740.a n = A052488 (n + 1)

end A052488

/-! ## A052488.P4832713895156236971

`∑[Δ[A022819(n)]+1]`
-/

namespace A052488.P4832713895156236971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022819 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052488.P4832713895156236971

namespace A052488

/-- `∑[Δ[A022819(n)]+1]` -/
def P4832713895156236971.Spec : Prop :=
  ∀ n, P4832713895156236971.a n = A052488 (n + 1)

end A052488

/-! ## A052488.P4696265154400989855

`A022819(n+1)+1+n`
-/

namespace A052488.P4696265154400989855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022819 (n + 1) + 1 + (n : ℤ)

end

end A052488.P4696265154400989855

namespace A052488

/-- `A022819(n+1)+1+n` -/
def P4696265154400989855.Spec : Prop :=
  ∀ n, P4696265154400989855.a n = A052488 (n + 1)

end A052488

/-!
# A052489: Largest number that is n times sum of its decimal digits.

The programs for A052489, there is no canonical definition to state claims against.
-/

/-! ## A052489.P3089730471963163931

`n*A277223((n-1)%(n+1)+1)`
-/

namespace A052489.P3089730471963163931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A052489.P3089730471963163931

/-! ## A052489.P6629406236119988901

`n*A277223(A028310(n))`
-/

namespace A052489.P6629406236119988901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (A028310 n).toNat

end

end A052489.P6629406236119988901

/-! ## A052489.P3365921301855936601

`n*A277223(A065033(2*n))`
-/

namespace A052489.P3365921301855936601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (A065033 (2 * n)).toNat

end

end A052489.P3365921301855936601

/-! ## A052489.P255582978149195188

`n*A277223(A123108(2*n))`
-/

namespace A052489.P255582978149195188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (A123108 (2 * n)).toNat

end

end A052489.P255582978149195188

/-! ## A052489.P8711512936152371019

`n*A277223(A233583(n+1))`
-/

namespace A052489.P8711512936152371019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (A233583 (n + 1)).toNat

end

end A052489.P8711512936152371019

/-! ## A052489.P1818092830587228724

`n*A277223(A007318(A000124(n)))`
-/

namespace A052489.P1818092830587228724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277223 (A007318 (A000124 n).toNat).toNat

end

end A052489.P1818092830587228724

/-!
# A052490: Numbers k such that there is exactly one number which is k times the sum of its digits.

The programs for A052490, there is no canonical definition to state claims against.
-/

/-! ## A052490.P8809541765227093924

`eq[1, A037478(n+1)]+1`
-/

namespace A052490.P8809541765227093924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052490.P8809541765227093924

/-! ## A052490.P14848040384617932781

`eq[1, A037478(A028310(n))]`
-/

namespace A052490.P14848040384617932781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052490.P14848040384617932781

/-! ## A052490.P2528067514477039718

`eq[1, A037478(abs(A274922(n)))]`
-/

namespace A052490.P2528067514477039718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 |A274922 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052490.P2528067514477039718

/-! ## A052490.P8095815451321067604

`eq[1, A037478(A004277(n)-n)]`
-/

namespace A052490.P8095815451321067604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052490.P8095815451321067604

/-! ## A052490.P3331138331094466880

`eq[1, A037478(A004277(5*n))]`
-/

namespace A052490.P3331138331094466880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037478 (A004277 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052490.P3331138331094466880

/-!
# A052492: Initial pile sizes that guarantee a win for player 2 in a variant of Fibonacci Nim where the players may not take one stone.

The programs for A052492, there is no canonical definition to state claims against.
-/

/-! ## A052492.P10135017350419998346

`lt[A261546(A261507(n+2)), A261522(n+1)]`
-/

namespace A052492.P10135017350419998346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261546 (A261507 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052492.P10135017350419998346

/-! ## A052492.P13764355316948757586

`lt[A261546(A261507(n+2)), A261538(n+1)]`
-/

namespace A052492.P13764355316948757586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261546 (A261507 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052492.P13764355316948757586

/-! ## A052492.P2557917951093984640

`lt[A261546(A261507(n+2)), A261542(n+1)]`
-/

namespace A052492.P2557917951093984640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261546 (A261507 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261542 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A052492.P2557917951093984640

/-! ## A052492.P9596651346442547689

`A330709(A097578(n)+10)`
-/

namespace A052492.P9596651346442547689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A097578 n + 10).toNat

end

end A052492.P9596651346442547689

/-!
# A052493: Primes whose digits can be rearranged to give the initial terms of the decimal expansion of Pi.

The programs for A052493, there is no canonical definition to state claims against.
-/

/-! ## A052493.P4403997700024182038

`A006530(A128811(n+2)+2*(∑[n]+1))`
-/

namespace A052493.P4403997700024182038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A128811 (n + 2) + ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ)).toNat

end

end A052493.P4403997700024182038

/-!
# A052494: Number of different primes that can be formed by permuting digits of n-th prime.

The programs for A052494, there is no canonical definition to state claims against.
-/

/-! ## A052494.P9953698560743280861

`A046810(p?[xor(1, n)])`
-/

namespace A052494.P9953698560743280861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A052494.P9953698560743280861

/-! ## A052494.P8934146777622517756

`A046810(Δ[A007504(n)])`
-/

namespace A052494.P8934146777622517756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (n + 1) - f1 n).toNat

end

end A052494.P8934146777622517756

/-! ## A052494.P16255400406144024283

`A046810(record[A051698(n)])`
-/

namespace A052494.P16255400406144024283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052494.P16255400406144024283

/-! ## A052494.P17618494618768418971

`A046810(A000040(n+1))`
-/

namespace A052494.P17618494618768418971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A000040 (n + 1)).toNat

end

end A052494.P17618494618768418971

/-! ## A052494.P14679719788868754851

`A046810(A004087(n+1))`
-/

namespace A052494.P14679719788868754851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A004087 (n + 1)).toNat

end

end A052494.P14679719788868754851

/-! ## A052494.P8853778234596551667

`A046810(A028906(n+1))`
-/

namespace A052494.P8853778234596551667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A028906 (n + 1)).toNat

end

end A052494.P8853778234596551667

/-! ## A052494.P542798722802745246

`A046810(A063884(n+1))`
-/

namespace A052494.P542798722802745246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A063884 (n + 1)).toNat

end

end A052494.P542798722802745246

/-! ## A052494.P12270061852256915582

`A046810(A063904(n+1))`
-/

namespace A052494.P12270061852256915582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A063904 (n + 1)).toNat

end

end A052494.P12270061852256915582

/-! ## A052494.P2576205187850513135

`A046810(A008578(n+2))`
-/

namespace A052494.P2576205187850513135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A008578 (n + 2)).toNat

end

end A052494.P2576205187850513135

/-! ## A052494.P10356487358512993323

`A046810(A182986(n+2))`
-/

namespace A052494.P10356487358512993323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A182986 (n + 2)).toNat

end

end A052494.P10356487358512993323

/-! ## A052494.P5465937484649550576

`A046810(record[A006530(n+2)])`
-/

namespace A052494.P5465937484649550576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052494.P5465937484649550576

/-! ## A052494.P12232233157396343617

`A046810(record[A014963(n+2)])`
-/

namespace A052494.P12232233157396343617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052494.P12232233157396343617

/-! ## A052494.P18216254733033741063

`A046810(record[A020639(n+2)])`
-/

namespace A052494.P18216254733033741063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052494.P18216254733033741063

/-! ## A052494.P5864925116143299945

`A046810(A100484(n+1)/2)`
-/

namespace A052494.P5864925116143299945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A052494.P5864925116143299945

/-! ## A052494.P3449562522807446679

`A046810(A007504(n+1)-A007504(n))`
-/

namespace A052494.P3449562522807446679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A007504 (n + 1) - A007504 n).toNat

end

end A052494.P3449562522807446679

/-! ## A052494.P8513844328529146434

`A046810(A116570(2*n)/A116570(2*n+1))`
-/

namespace A052494.P8513844328529146434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (SequenceMachineLib.roundAway ((A116570 (2 * n) : ℚ) / (A116570 (2 * n + 1) : ℚ))).toNat

end

end A052494.P8513844328529146434

/-! ## A052494.P12269000414905795894

`A046810(A101989(n+1))`
-/

namespace A052494.P12269000414905795894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A101989 (n + 1)).toNat

end

end A052494.P12269000414905795894

/-! ## A052494.P7194057933471656517

`A046810(A083190(n+2))`
-/

namespace A052494.P7194057933471656517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A083190 (n + 2)).toNat

end

end A052494.P7194057933471656517

/-!
# A052495: Take n-th prime p, let P = all primes having same digits; a(n) = q-p where q is smallest prime in P >p if q exists; otherwise a(n) = p-r where r is largest prime in P

The programs for A052495, there is no canonical definition to state claims against.
-/

/-! ## A052495.P5281056001448933514

`A052902(n+1)*A279693(A031452(n+1))`
-/

namespace A052495.P5281056001448933514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052902 (n + 1) * A279693 (A031452 (n + 1)).toNat

end

end A052495.P5281056001448933514

/-! ## A052495.P6358299736711504001

`A052902(n+1)*A279693(A086304(n+1))`
-/

namespace A052495.P6358299736711504001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052902 (n + 1) * A279693 (A086304 (n + 1)).toNat

end

end A052495.P6358299736711504001

/-! ## A052495.P14435492339935172629

`A052902(n+1)*A279693(A181512(n+1))`
-/

namespace A052495.P14435492339935172629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052902 (n + 1) * A279693 (A181512 (n + 1)).toNat

end

end A052495.P14435492339935172629

/-! ## A052495.P3446512264068954496

`A052902(n+1)%A010941(n)`
-/

namespace A052495.P3446512264068954496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052902 (n + 1)) (A010941 n)

end

end A052495.P3446512264068954496

/-!
# A052496: Number of nonsingular n X n matrices over GF(8).

The programs for A052496, there is no canonical definition to state claims against.
-/

/-! ## A052496.P6519783951489027925

`A109966(n)*A027876(n)`
-/

namespace A052496.P6519783951489027925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109966 n * A027876 n

end

end A052496.P6519783951489027925

/-!
# A052497: Number of nonsingular n X n matrices over GF(9).

The programs for A052497, there is no canonical definition to state claims against.
-/

/-! ## A052497.P13214512774666495913

`A053764(n)*A027877(n)`
-/

namespace A052497.P13214512774666495913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053764 n * A027877 n

end

end A052497.P13214512774666495913

/-! ## A052497.P14966798366127321055

`9^(n-1)*a(n-1)*A024101(n)` with `a(0)=1`
-/

namespace A052497.P14966798366127321055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) * (A024101 n : ℚ)

end

end A052497.P14966798366127321055

/-!
# A052498: 

The programs for A052498, there is no canonical definition to state claims against.
-/

/-! ## A052498.P8946817232528569783

`A110195(n)*A027879(n)`
-/

namespace A052498.P8946817232528569783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110195 n * A027879 n

end

end A052498.P8946817232528569783

/-!
# A052499: If n is in the sequence then so are 2n and 4n-1.

The programs for A052499, the canonical program `A052499.P2273861346135896458` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052499 has offset 0).

The definition of A052499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052499.P2273861346135896458

`1+A003754(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A052499

/-- `1+A003754(n+1)` -/
def P2273861346135896458.Spec : Prop :=
  ∀ n, P2273861346135896458.a n = A052499 n

theorem P2273861346135896458.correct : P2273861346135896458.Spec := by
  intro n
  simp only [A052499]

end A052499

/-! ## A052499.P10186232688581441051

`∑[A107359(abs(1-n))]`
-/

namespace A052499.P10186232688581441051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107359 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052499.P10186232688581441051

namespace A052499

/-- `∑[A107359(abs(1-n))]` -/
def P10186232688581441051.Spec : Prop :=
  ∀ n, P10186232688581441051.a n = A052499 n

end A052499

/-! ## A052499.P6864605741418895482

`ceil(A247648(n+1)/2)`
-/

namespace A052499.P6864605741418895482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247648 (n + 1) : ℚ) / 2⌉

end

end A052499.P6864605741418895482

namespace A052499

/-- `ceil(A247648(n+1)/2)` -/
def P6864605741418895482.Spec : Prop :=
  ∀ n, P6864605741418895482.a n = A052499 n

end A052499

/-! ## A052499.P7283339283940520664

`(A380358(n+1)+1)/4`
-/

namespace A052499.P7283339283940520664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380358 (n + 1) + 1 : ℚ) / 4

end

end A052499.P7283339283940520664

namespace A052499

/-- `(A380358(n+1)+1)/4` -/
def P7283339283940520664.Spec : Prop :=
  ∀ n, P7283339283940520664.a n = (A052499 n : ℚ)

end A052499

/-! ## A052499.P3448203249345773890

`∪[A023746(n+1), A153033(n+1)]+1`
-/

namespace A052499.P3448203249345773890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A052499.P3448203249345773890

namespace A052499

/-- `∪[A023746(n+1), A153033(n+1)]+1` -/
def P3448203249345773890.Spec : Prop :=
  ∀ n, (P3448203249345773890.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P11521295552585948374

`(A365808(n+2)+1)/3`
-/

namespace A052499.P11521295552585948374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365808 (n + 2) + 1 : ℚ) / 3

end

end A052499.P11521295552585948374

namespace A052499

/-- `(A365808(n+2)+1)/3` -/
def P11521295552585948374.Spec : Prop :=
  ∀ n, P11521295552585948374.a n = (A052499 n : ℚ)

end A052499

/-! ## A052499.P7654420303737018382

`A365808(n+2)-A247648(n+1)`
-/

namespace A052499.P7654420303737018382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2) - A247648 (n + 1)

end

end A052499.P7654420303737018382

namespace A052499

/-- `A365808(n+2)-A247648(n+1)` -/
def P7654420303737018382.Spec : Prop :=
  ∀ n, P7654420303737018382.a n = A052499 n

end A052499

/-! ## A052499.P4249330262177819212

`A380358(n+1)-A365808(n+2)`
-/

namespace A052499.P4249330262177819212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380358 (n + 1) - A365808 (n + 2)

end

end A052499.P4249330262177819212

namespace A052499

/-- `A380358(n+1)-A365808(n+2)` -/
def P4249330262177819212.Spec : Prop :=
  ∀ n, P4249330262177819212.a n = A052499 n

end A052499

/-! ## A052499.P2031710783598325372

`lt[and(n, or(n, 2*n)+2), 2]+1`
-/

namespace A052499.P2031710783598325372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (2 * n) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A052499.P2031710783598325372

namespace A052499

/-- `lt[and(n, or(n, 2*n)+2), 2]+1` -/
def P2031710783598325372.Spec : Prop :=
  ∀ n, (P2031710783598325372.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P4376130688199130972

`eq[and(n, 2*n+1), and(n, 3*n+2)]+1`
-/

namespace A052499.P4376130688199130972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052499.P4376130688199130972

namespace A052499

/-- `eq[and(n, 2*n+1), and(n, 3*n+2)]+1` -/
def P4376130688199130972.Spec : Prop :=
  ∀ n, (P4376130688199130972.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P5317257991567516799

`lt[A334076(n), 2]+1`
-/

namespace A052499.P5317257991567516799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A052499.P5317257991567516799

namespace A052499

/-- `lt[A334076(n), 2]+1` -/
def P5317257991567516799.Spec : Prop :=
  ∀ n, (P5317257991567516799.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P13654657351065075898

`eq[1, A332998(3*n)]`
-/

namespace A052499.P13654657351065075898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052499.P13654657351065075898

namespace A052499

/-- `eq[1, A332998(3*n)]` -/
def P13654657351065075898.Spec : Prop :=
  ∀ n, (P13654657351065075898.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P13943225278201357192

`record[A180200(n)+1]`
-/

namespace A052499.P13943225278201357192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052499.P13943225278201357192

namespace A052499

/-- `record[A180200(n)+1]` -/
def P13943225278201357192.Spec : Prop :=
  ∀ n, P13943225278201357192.a n = A052499 n

end A052499

/-! ## A052499.P4738117000709288977

`A180200(A336231(n+1))+1`
-/

namespace A052499.P4738117000709288977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A336231 (n + 1)).toNat + 1

end

end A052499.P4738117000709288977

namespace A052499

/-- `A180200(A336231(n+1))+1` -/
def P4738117000709288977.Spec : Prop :=
  ∀ n, P4738117000709288977.a n = A052499 n

end A052499

/-! ## A052499.P17471604337207474224

`A360434(A003714(n))+1`
-/

namespace A052499.P17471604337207474224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 (A003714 n).toNat + 1

end

end A052499.P17471604337207474224

namespace A052499

/-- `A360434(A003714(n))+1` -/
def P17471604337207474224.Spec : Prop :=
  ∀ n, P17471604337207474224.a n = A052499 n

end A052499

/-! ## A052499.P9784935265460469879

`A360434(record[A360434(n)])+1`
-/

namespace A052499.P9784935265460469879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A052499.P9784935265460469879

namespace A052499

/-- `A360434(record[A360434(n)])+1` -/
def P9784935265460469879.Spec : Prop :=
  ∀ n, P9784935265460469879.a n = A052499 n

end A052499

/-! ## A052499.P2889989206420312037

`eq[A284579(n), A284580(n)]+1`
-/

namespace A052499.P2889989206420312037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A052499.P2889989206420312037

namespace A052499

/-- `eq[A284579(n), A284580(n)]+1` -/
def P2889989206420312037.Spec : Prop :=
  ∀ n, (P2889989206420312037.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P826350831042841894

`record[A090078(n)+1]`
-/

namespace A052499.P826350831042841894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052499.P826350831042841894

namespace A052499

/-- `record[A090078(n)+1]` -/
def P826350831042841894.Spec : Prop :=
  ∀ n, P826350831042841894.a n = A052499 n

end A052499

/-! ## A052499.P2636152905895657579

`eq[1, A107345(n)]+1`
-/

namespace A052499.P2636152905895657579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052499.P2636152905895657579

namespace A052499

/-- `eq[1, A107345(n)]+1` -/
def P2636152905895657579.Spec : Prop :=
  ∀ n, (P2636152905895657579.a n : ℤ) = A052499 n

end A052499

/-! ## A052499.P6837561391085915

`eq[1, A227350(n)]+1`
-/

namespace A052499.P6837561391085915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A052499.P6837561391085915

namespace A052499

/-- `eq[1, A227350(n)]+1` -/
def P6837561391085915.Spec : Prop :=
  ∀ n, (P6837561391085915.a n : ℤ) = A052499 n

end A052499

