import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
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
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C040
import Seq.B001.C009
import Seq.Opaque.C001
import Seq.Opaque.C004

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017000: a(n) = (7*n + 1)^8.

The programs for A017000, the canonical program `A017000.P10057837248859388107` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017000 has offset 0).

The definition of A017000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^8` (program `A017000.P10057837248859388107`, by `A017000.P10057837248859388107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017000.P10057837248859388107

`(7*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017000

/-- `(7*n+1)^8` -/
def P10057837248859388107.Spec : Prop :=
  ∀ n, (P10057837248859388107.a n : ℤ) = A017000 n

theorem P10057837248859388107.correct : P10057837248859388107.Spec := by
  intro n
  simp only [A017000]

end A017000

/-! ## A017000.P15822800953529832221

`(lcm(4, 2*n+1)-(n+3))²²²`
-/

namespace A017000.P15822800953529832221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 4 (2 * n + 1) : ℤ) - (n + 3 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017000.P15822800953529832221

namespace A017000

/-- `(lcm(4, 2*n+1)-(n+3))²²²` -/
def P15822800953529832221.Spec : Prop :=
  ∀ n, P15822800953529832221.a n = A017000 n

end A017000

/-! ## A017000.P6088886804712025566

`A016996(n)²`
-/

namespace A017000.P6088886804712025566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n ^ 2

end

end A017000.P6088886804712025566

namespace A017000

/-- `A016996(n)²` -/
def P6088886804712025566.Spec : Prop :=
  ∀ n, P6088886804712025566.a n = A017000 n

theorem P6088886804712025566.correct : P6088886804712025566.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P6088886804712025566.a, A017000.P10057837248859388107.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P15319736623272027779

`A016994(n)²²`
-/

namespace A017000.P15319736623272027779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016994 n ^ 2) ^ 2

end

end A017000.P15319736623272027779

namespace A017000

/-- `A016994(n)²²` -/
def P15319736623272027779.Spec : Prop :=
  ∀ n, P15319736623272027779.a n = A017000 n

theorem P15319736623272027779.correct : P15319736623272027779.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P15319736623272027779.a, A017000.P10057837248859388107.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P2523679065136804147

`(A016993(n)^4)²`
-/

namespace A017000.P2523679065136804147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n ^ 4) ^ 2

end

end A017000.P2523679065136804147

namespace A017000

/-- `(A016993(n)^4)²` -/
def P2523679065136804147.Spec : Prop :=
  ∀ n, P2523679065136804147.a n = A017000 n

theorem P2523679065136804147.correct : P2523679065136804147.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P2523679065136804147.a, A017000.P10057837248859388107.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P17467013196913863275

`Δ[A001106(n)]²²²`
-/

namespace A017000.P17467013196913863275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017000.P17467013196913863275

namespace A017000

/-- `Δ[A001106(n)]²²²` -/
def P17467013196913863275.Spec : Prop :=
  ∀ n, P17467013196913863275.a n = A017000 n

end A017000

/-! ## A017000.P5790559589183622252

`Δ[A389608(n)]²²²`
-/

namespace A017000.P5790559589183622252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017000.P5790559589183622252

namespace A017000

/-- `Δ[A389608(n)]²²²` -/
def P5790559589183622252.Spec : Prop :=
  ∀ n, P5790559589183622252.a n = A017000 n

end A017000

/-! ## A017000.P13735984337514862079

`(A008589(n)+1)²²²`
-/

namespace A017000.P13735984337514862079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008589 n + 1) ^ 2) ^ 2) ^ 2

end

end A017000.P13735984337514862079

namespace A017000

/-- `(A008589(n)+1)²²²` -/
def P13735984337514862079.Spec : Prop :=
  ∀ n, P13735984337514862079.a n = A017000 n

theorem P13735984337514862079.correct : P13735984337514862079.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P13735984337514862079.a, A017000.P10057837248859388107.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P16802008537265601123

`(1-A017005(n))²²²`
-/

namespace A017000.P16802008537265601123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017005 n) ^ 2) ^ 2) ^ 2

end

end A017000.P16802008537265601123

namespace A017000

/-- `(1-A017005(n))²²²` -/
def P16802008537265601123.Spec : Prop :=
  ∀ n, P16802008537265601123.a n = A017000 n

theorem P16802008537265601123.correct : P16802008537265601123.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P16802008537265601123.a, A017000.P10057837248859388107.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P14327582017389795310

`(2-A017017(n))²²²`
-/

namespace A017000.P14327582017389795310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017017 n) ^ 2) ^ 2) ^ 2

end

end A017000.P14327582017389795310

namespace A017000

/-- `(2-A017017(n))²²²` -/
def P14327582017389795310.Spec : Prop :=
  ∀ n, P14327582017389795310.a n = A017000 n

theorem P14327582017389795310.correct : P14327582017389795310.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P14327582017389795310.a, A017000.P10057837248859388107.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P4790745551031416328

`(A016921(n)+n)²²²`
-/

namespace A017000.P4790745551031416328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016921 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017000.P4790745551031416328

namespace A017000

/-- `(A016921(n)+n)²²²` -/
def P4790745551031416328.Spec : Prop :=
  ∀ n, P4790745551031416328.a n = A017000 n

theorem P4790745551031416328.correct : P4790745551031416328.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P4790745551031416328.a, A017000.P10057837248859388107.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P6178078632634908065

`(n-A017077(n))²²²`
-/

namespace A017000.P6178078632634908065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017077 n) ^ 2) ^ 2) ^ 2

end

end A017000.P6178078632634908065

namespace A017000

/-- `(n-A017077(n))²²²` -/
def P6178078632634908065.Spec : Prop :=
  ∀ n, P6178078632634908065.a n = A017000 n

theorem P6178078632634908065.correct : P6178078632634908065.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P6178078632634908065.a, A017000.P10057837248859388107.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P18407860260226471191

`A016993(n)*A016999(n)`
-/

namespace A017000.P18407860260226471191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A016999 n

end

end A017000.P18407860260226471191

namespace A017000

/-- `A016993(n)*A016999(n)` -/
def P18407860260226471191.Spec : Prop :=
  ∀ n, P18407860260226471191.a n = A017000 n

theorem P18407860260226471191.correct : P18407860260226471191.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P18407860260226471191.a, A017000.P10057837248859388107.a, A016993, A016993.P16783903167149097063.a, A016999, A016999.P15216311095890764319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P15431644898837501103

`A016994(n)*A016998(n)`
-/

namespace A017000.P15431644898837501103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n * A016998 n

end

end A017000.P15431644898837501103

namespace A017000

/-- `A016994(n)*A016998(n)` -/
def P15431644898837501103.Spec : Prop :=
  ∀ n, P15431644898837501103.a n = A017000 n

theorem P15431644898837501103.correct : P15431644898837501103.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P15431644898837501103.a, A017000.P10057837248859388107.a, A016994, A016994.P4148273372767867206.a, A016998, A016998.P13866036391130937511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P13899657958221026822

`A016995(n)*A016997(n)`
-/

namespace A017000.P13899657958221026822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n * A016997 n

end

end A017000.P13899657958221026822

namespace A017000

/-- `A016995(n)*A016997(n)` -/
def P13899657958221026822.Spec : Prop :=
  ∀ n, P13899657958221026822.a n = A017000 n

theorem P13899657958221026822.correct : P13899657958221026822.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P13899657958221026822.a, A017000.P10057837248859388107.a, A016995, A016995.P16509442101657447251.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P11236616775771959497

`(A033576(n)+A016850(n))²²`
-/

namespace A017000.P11236616775771959497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A033576 n + A016850 n) ^ 2) ^ 2

end

end A017000.P11236616775771959497

namespace A017000

/-- `(A033576(n)+A016850(n))²²` -/
def P11236616775771959497.Spec : Prop :=
  ∀ n, P11236616775771959497.a n = A017000 n

theorem P11236616775771959497.correct : P11236616775771959497.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P11236616775771959497.a, A017000.P10057837248859388107.a, A016850, A016850.P11162086959237364138.a, A033576, A033576.P4702801893956750476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P5983626844158212748

`(A131877(n)+A016982(n))²²`
-/

namespace A017000.P5983626844158212748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A131877 n + A016982 n) ^ 2) ^ 2

end

end A017000.P5983626844158212748

namespace A017000

/-- `(A131877(n)+A016982(n))²²` -/
def P5983626844158212748.Spec : Prop :=
  ∀ n, P5983626844158212748.a n = A017000 n

theorem P5983626844158212748.correct : P5983626844158212748.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P5983626844158212748.a, A017000.P10057837248859388107.a, A016982, A016982.P14306478648458584256.a, A131877, A131877.P1991480590599804805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P14235080086538635523

`(A162942(n)+A081591(n))²²`
-/

namespace A017000.P14235080086538635523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A162942 n + A081591 n) ^ 2) ^ 2

end

end A017000.P14235080086538635523

namespace A017000

/-- `(A162942(n)+A081591(n))²²` -/
def P14235080086538635523.Spec : Prop :=
  ∀ n, P14235080086538635523.a n = A017000 n

end A017000

/-! ## A017000.P8695285711243714208

`(A158638(n)+A098848(n))²²`
-/

namespace A017000.P8695285711243714208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A158638 n + A098848 n) ^ 2) ^ 2

end

end A017000.P8695285711243714208

namespace A017000

/-- `(A158638(n)+A098848(n))²²` -/
def P8695285711243714208.Spec : Prop :=
  ∀ n, P8695285711243714208.a n = A017000 n

theorem P8695285711243714208.correct : P8695285711243714208.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P8695285711243714208.a, A017000.P10057837248859388107.a, A098848, A098848.P13089362090935355705.a, A158638, A158638.P7332495969947453421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-! ## A017000.P17918615873237909462

`(A158632(n)+A140679(n))²²`
-/

namespace A017000.P17918615873237909462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A158632 n + A140679 n) ^ 2) ^ 2

end

end A017000.P17918615873237909462

namespace A017000

/-- `(A158632(n)+A140679(n))²²` -/
def P17918615873237909462.Spec : Prop :=
  ∀ n, P17918615873237909462.a n = A017000 n

theorem P17918615873237909462.correct : P17918615873237909462.Spec := by
  intro n
  simp only [A017000, Nat.add_sub_cancel, A017000.P17918615873237909462.a, A017000.P10057837248859388107.a, A140679, A140679.P16758500501928630565.a, A158632, A158632.P11291645308737386721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017000

/-!
# A017001: a(n) = (7*n + 1)^9.

The programs for A017001, the canonical program `A017001.P9871215419627396317` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017001 has offset 0).

The definition of A017001 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^9` (program `A017001.P9871215419627396317`, by `A017001.P9871215419627396317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017001.P9871215419627396317

`(7*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017001

/-- `(7*n+1)^9` -/
def P9871215419627396317.Spec : Prop :=
  ∀ n, (P9871215419627396317.a n : ℤ) = A017001 n

theorem P9871215419627396317.correct : P9871215419627396317.Spec := by
  intro n
  simp only [A017001]

end A017001

/-! ## A017001.P828728162838692333

`sqrt(A016998(n)^3)`
-/

namespace A017001.P828728162838692333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016998 n ^ 3 : ℝ)

end

end A017001.P828728162838692333

namespace A017001

/-- `sqrt(A016998(n)^3)` -/
def P828728162838692333.Spec : Prop :=
  ∀ n, P828728162838692333.a n = (A017001 n : ℝ)

end A017001

/-! ## A017001.P7837426588465566312

`A016993(n)*A017000(n)`
-/

namespace A017001.P7837426588465566312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A017000 n

end

end A017001.P7837426588465566312

namespace A017001

/-- `A016993(n)*A017000(n)` -/
def P7837426588465566312.Spec : Prop :=
  ∀ n, P7837426588465566312.a n = A017001 n

theorem P7837426588465566312.correct : P7837426588465566312.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P7837426588465566312.a, A017001.P9871215419627396317.a, A016993, A016993.P16783903167149097063.a, A017000, A017000.P10057837248859388107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P9802484818455565992

`A016994(n)*A016999(n)`
-/

namespace A017001.P9802484818455565992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n * A016999 n

end

end A017001.P9802484818455565992

namespace A017001

/-- `A016994(n)*A016999(n)` -/
def P9802484818455565992.Spec : Prop :=
  ∀ n, P9802484818455565992.a n = A017001 n

theorem P9802484818455565992.correct : P9802484818455565992.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P9802484818455565992.a, A017001.P9871215419627396317.a, A016994, A016994.P4148273372767867206.a, A016999, A016999.P15216311095890764319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P446561786927823446

`A016995(n)*A016998(n)`
-/

namespace A017001.P446561786927823446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n * A016998 n

end

end A017001.P446561786927823446

namespace A017001

/-- `A016995(n)*A016998(n)` -/
def P446561786927823446.Spec : Prop :=
  ∀ n, P446561786927823446.a n = A017001 n

theorem P446561786927823446.correct : P446561786927823446.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P446561786927823446.a, A017001.P9871215419627396317.a, A016995, A016995.P16509442101657447251.a, A016998, A016998.P13866036391130937511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P11800710408750134856

`A016996(n)*A016997(n)`
-/

namespace A017001.P11800710408750134856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n * A016997 n

end

end A017001.P11800710408750134856

namespace A017001

/-- `A016996(n)*A016997(n)` -/
def P11800710408750134856.Spec : Prop :=
  ∀ n, P11800710408750134856.a n = A017001 n

theorem P11800710408750134856.correct : P11800710408750134856.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P11800710408750134856.a, A017001.P9871215419627396317.a, A016996, A016996.P10830569323110337120.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P6963837534227293735

`A016993(n)²*A016999(n)`
-/

namespace A017001.P6963837534227293735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n ^ 2 * A016999 n

end

end A017001.P6963837534227293735

namespace A017001

/-- `A016993(n)²*A016999(n)` -/
def P6963837534227293735.Spec : Prop :=
  ∀ n, P6963837534227293735.a n = A017001 n

theorem P6963837534227293735.correct : P6963837534227293735.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P6963837534227293735.a, A017001.P9871215419627396317.a, A016993, A016993.P16783903167149097063.a, A016999, A016999.P15216311095890764319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P11667709070990676761

`A016994(n)²*A016997(n)`
-/

namespace A017001.P11667709070990676761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n ^ 2 * A016997 n

end

end A017001.P11667709070990676761

namespace A017001

/-- `A016994(n)²*A016997(n)` -/
def P11667709070990676761.Spec : Prop :=
  ∀ n, P11667709070990676761.a n = A017001 n

theorem P11667709070990676761.correct : P11667709070990676761.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P11667709070990676761.a, A017001.P9871215419627396317.a, A016994, A016994.P4148273372767867206.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P15810619121384210711

`A016996(n)²*A016993(n)`
-/

namespace A017001.P15810619121384210711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n ^ 2 * A016993 n

end

end A017001.P15810619121384210711

namespace A017001

/-- `A016996(n)²*A016993(n)` -/
def P15810619121384210711.Spec : Prop :=
  ∀ n, P15810619121384210711.a n = A017001 n

theorem P15810619121384210711.correct : P15810619121384210711.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P15810619121384210711.a, A017001.P9871215419627396317.a, A016993, A016993.P16783903167149097063.a, A016996, A016996.P10830569323110337120.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P17535165632713777080

`A016997(n)²/A016993(n)`
-/

namespace A017001.P17535165632713777080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016997 n ^ 2 : ℚ) / (A016993 n : ℚ)

end

end A017001.P17535165632713777080

namespace A017001

/-- `A016997(n)²/A016993(n)` -/
def P17535165632713777080.Spec : Prop :=
  ∀ n, P17535165632713777080.a n = (A017001 n : ℚ)

end A017001

/-! ## A017001.P1150626865734903597

`A016994(n)²²*A016993(n)`
-/

namespace A017001.P1150626865734903597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016994 n ^ 2) ^ 2 * A016993 n

end

end A017001.P1150626865734903597

namespace A017001

/-- `A016994(n)²²*A016993(n)` -/
def P1150626865734903597.Spec : Prop :=
  ∀ n, P1150626865734903597.a n = A017001 n

theorem P1150626865734903597.correct : P1150626865734903597.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P1150626865734903597.a, A017001.P9871215419627396317.a, A016993, A016993.P16783903167149097063.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P4606933590304115895

`A016996(n)²*sqrt(A016994(n))`
-/

namespace A017001.P4606933590304115895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016996 n ^ 2 : ℝ) * Real.sqrt (A016994 n : ℝ)

end

end A017001.P4606933590304115895

namespace A017001

/-- `A016996(n)²*sqrt(A016994(n))` -/
def P4606933590304115895.Spec : Prop :=
  ∀ n, P4606933590304115895.a n = (A017001 n : ℝ)

end A017001

/-! ## A017001.P12619336353901259709

`A016999(n)/A016997(n)*A016999(n)`
-/

namespace A017001.P12619336353901259709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016999 n : ℚ) / (A016997 n : ℚ) * (A016999 n : ℚ)

end

end A017001.P12619336353901259709

namespace A017001

/-- `A016999(n)/A016997(n)*A016999(n)` -/
def P12619336353901259709.Spec : Prop :=
  ∀ n, P12619336353901259709.a n = (A017001 n : ℚ)

end A017001

/-! ## A017001.P3679823099280639231

`A016993(n)*A016998(n)*A016993(n)²`
-/

namespace A017001.P3679823099280639231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A016998 n * A016993 n ^ 2

end

end A017001.P3679823099280639231

namespace A017001

/-- `A016993(n)*A016998(n)*A016993(n)²` -/
def P3679823099280639231.Spec : Prop :=
  ∀ n, P3679823099280639231.a n = A017001 n

theorem P3679823099280639231.correct : P3679823099280639231.Spec := by
  intro n
  simp only [A017001, Nat.add_sub_cancel, A017001.P3679823099280639231.a, A017001.P9871215419627396317.a, A016993, A016993.P16783903167149097063.a, A016998, A016998.P13866036391130937511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017001

/-! ## A017001.P3228708229589566452

`A016995(n)*A016996(n)*sqrt(A016996(n))`
-/

namespace A017001.P3228708229589566452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016995 n * A016996 n : ℝ) * Real.sqrt (A016996 n : ℝ)

end

end A017001.P3228708229589566452

namespace A017001

/-- `A016995(n)*A016996(n)*sqrt(A016996(n))` -/
def P3228708229589566452.Spec : Prop :=
  ∀ n, P3228708229589566452.a n = (A017001 n : ℝ)

end A017001

/-! ## A017001.P8615913580289310331

`A001017(7*n+1)`
-/

namespace A017001.P8615913580289310331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (7 * n + 1)

end

end A017001.P8615913580289310331

namespace A017001

/-- `A001017(7*n+1)` -/
def P8615913580289310331.Spec : Prop :=
  ∀ n, P8615913580289310331.a n = A017001 n

end A017001

/-! ## A017001.P1764396763723634915

`A006501(A008603(n))²*A006501(A008603(n))`
-/

namespace A017001.P1764396763723634915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 (A008603 n).toNat ^ 2 * A006501 (A008603 n).toNat

end

end A017001.P1764396763723634915

namespace A017001

/-- `A006501(A008603(n))²*A006501(A008603(n))` -/
def P1764396763723634915.Spec : Prop :=
  ∀ n, P1764396763723634915.a n = A017001 n

end A017001

/-!
# A017002: a(n) = (7*n + 1)^10.

The programs for A017002, the canonical program `A017002.P2564335046645775104` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017002 has offset 0).

The definition of A017002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+1)^10` (program `A017002.P2564335046645775104`, by `A017002.P2564335046645775104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017002.P2564335046645775104

`(7*n+1)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017002

/-- `(7*n+1)^10` -/
def P2564335046645775104.Spec : Prop :=
  ∀ n, (P2564335046645775104.a n : ℤ) = A017002 n

theorem P2564335046645775104.correct : P2564335046645775104.Spec := by
  intro n
  simp only [A017002]

end A017002

/-! ## A017002.P7348608832958580632

`A016997(n)²`
-/

namespace A017002.P7348608832958580632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016997 n ^ 2

end

end A017002.P7348608832958580632

namespace A017002

/-- `A016997(n)²` -/
def P7348608832958580632.Spec : Prop :=
  ∀ n, P7348608832958580632.a n = A017002 n

theorem P7348608832958580632.correct : P7348608832958580632.Spec := by
  intro n
  simp only [A017002, Nat.add_sub_cancel, A017002.P7348608832958580632.a, A017002.P2564335046645775104.a, A016997, A016997.P3873312097552342682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017002

/-! ## A017002.P15424662876106020683

`sqrt(A016996(n)^5)`
-/

namespace A017002.P15424662876106020683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016996 n ^ 5 : ℝ)

end

end A017002.P15424662876106020683

namespace A017002

/-- `sqrt(A016996(n)^5)` -/
def P15424662876106020683.Spec : Prop :=
  ∀ n, P15424662876106020683.a n = (A017002 n : ℝ)

end A017002

/-! ## A017002.P15463838120215453015

`A016995(n)*A016999(n)`
-/

namespace A017002.P15463838120215453015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016995 n * A016999 n

end

end A017002.P15463838120215453015

namespace A017002

/-- `A016995(n)*A016999(n)` -/
def P15463838120215453015.Spec : Prop :=
  ∀ n, P15463838120215453015.a n = A017002 n

theorem P15463838120215453015.correct : P15463838120215453015.Spec := by
  intro n
  simp only [A017002, Nat.add_sub_cancel, A017002.P15463838120215453015.a, A017002.P2564335046645775104.a, A016995, A016995.P16509442101657447251.a, A016999, A016999.P15216311095890764319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017002

/-! ## A017002.P17828151783306915745

`A016996(n)*A016998(n)`
-/

namespace A017002.P17828151783306915745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016996 n * A016998 n

end

end A017002.P17828151783306915745

namespace A017002

/-- `A016996(n)*A016998(n)` -/
def P17828151783306915745.Spec : Prop :=
  ∀ n, P17828151783306915745.a n = A017002 n

theorem P17828151783306915745.correct : P17828151783306915745.Spec := by
  intro n
  simp only [A017002, Nat.add_sub_cancel, A017002.P17828151783306915745.a, A017002.P2564335046645775104.a, A016996, A016996.P10830569323110337120.a, A016998, A016998.P13866036391130937511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017002

/-! ## A017002.P7915986612850243539

`sqrt(sqrt(A017000(n)))*A017000(n)`
-/

namespace A017002.P7915986612850243539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017000 n : ℝ)) * (A017000 n : ℝ)

end

end A017002.P7915986612850243539

namespace A017002

/-- `sqrt(sqrt(A017000(n)))*A017000(n)` -/
def P7915986612850243539.Spec : Prop :=
  ∀ n, P7915986612850243539.a n = (A017002 n : ℝ)

end A017002

/-! ## A017002.P3808107995937871217

`A016996(n)/(1/A016995(n))²`
-/

namespace A017002.P3808107995937871217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016996 n : ℚ) / (1 / (A016995 n : ℚ)) ^ 2

end

end A017002.P3808107995937871217

namespace A017002

/-- `A016996(n)/(1/A016995(n))²` -/
def P3808107995937871217.Spec : Prop :=
  ∀ n, P3808107995937871217.a n = (A017002 n : ℚ)

end A017002

/-! ## A017002.P17707451365937600252

`A008454(A016993(n))`
-/

namespace A017002.P17707451365937600252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016993 n).toNat

end

end A017002.P17707451365937600252

namespace A017002

/-- `A008454(A016993(n))` -/
def P17707451365937600252.Spec : Prop :=
  ∀ n, P17707451365937600252.a n = A017002 n

end A017002

/-! ## A017002.P6076615349365283344

`A008454(A008589(n)+1)`
-/

namespace A017002.P6076615349365283344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008589 n + 1).toNat

end

end A017002.P6076615349365283344

namespace A017002

/-- `A008454(A008589(n)+1)` -/
def P6076615349365283344.Spec : Prop :=
  ∀ n, P6076615349365283344.a n = A017002 n

end A017002

/-! ## A017002.P16833873056485287344

`A008454(A008588(n)+1+n)`
-/

namespace A017002.P16833873056485287344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008588 n + 1 + (n : ℤ)).toNat

end

end A017002.P16833873056485287344

namespace A017002

/-- `A008454(A008588(n)+1+n)` -/
def P16833873056485287344.Spec : Prop :=
  ∀ n, P16833873056485287344.a n = A017002 n

end A017002

/-! ## A017002.P12988881980705456162

`A008454(A016777(2*n)+n)`
-/

namespace A017002.P12988881980705456162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n) + (n : ℤ)).toNat

end

end A017002.P12988881980705456162

namespace A017002

/-- `A008454(A016777(2*n)+n)` -/
def P12988881980705456162.Spec : Prop :=
  ∀ n, P12988881980705456162.a n = A017002 n

end A017002

/-! ## A017002.P12548211621706386524

`A008454(A016861(n)+2*n)`
-/

namespace A017002.P12548211621706386524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 n + (2 * n : ℤ)).toNat

end

end A017002.P12548211621706386524

namespace A017002

/-- `A008454(A016861(n)+2*n)` -/
def P12548211621706386524.Spec : Prop :=
  ∀ n, P12548211621706386524.a n = A017002 n

end A017002

/-! ## A017002.P18413365465982573374

`A008454(A016813(2*n)-n)`
-/

namespace A017002.P18413365465982573374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n) - (n : ℤ)).toNat

end

end A017002.P18413365465982573374

namespace A017002

/-- `A008454(A016813(2*n)-n)` -/
def P18413365465982573374.Spec : Prop :=
  ∀ n, P18413365465982573374.a n = A017002 n

end A017002

/-! ## A017002.P18084881275040831579

`A008454(A016861(n)+n+n)`
-/

namespace A017002.P18084881275040831579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 n + (n : ℤ) + (n : ℤ)).toNat

end

end A017002.P18084881275040831579

namespace A017002

/-- `A008454(A016861(n)+n+n)` -/
def P18084881275040831579.Spec : Prop :=
  ∀ n, P18084881275040831579.a n = A017002 n

end A017002

/-! ## A017002.P560308137205909053

`A008454(A007310(2*n+1)+n)`
-/

namespace A017002.P560308137205909053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A007310 (2 * n + 1) + (n : ℤ)).toNat

end

end A017002.P560308137205909053

namespace A017002

/-- `A008454(A007310(2*n+1)+n)` -/
def P560308137205909053.Spec : Prop :=
  ∀ n, P560308137205909053.a n = A017002 n

end A017002

/-! ## A017002.P9445781071465403632

`A008454(A008585(2*n)+n+1)`
-/

namespace A017002.P9445781071465403632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n) + (n + 1 : ℤ)).toNat

end

end A017002.P9445781071465403632

namespace A017002

/-- `A008454(A008585(2*n)+n+1)` -/
def P9445781071465403632.Spec : Prop :=
  ∀ n, P9445781071465403632.a n = A017002 n

end A017002

/-! ## A017002.P5176716703807203488

`A008454(A008587(n)+2*n+1)`
-/

namespace A017002.P5176716703807203488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 n + (2 * n + 1 : ℤ)).toNat

end

end A017002.P5176716703807203488

namespace A017002

/-- `A008454(A008587(n)+2*n+1)` -/
def P5176716703807203488.Spec : Prop :=
  ∀ n, P5176716703807203488.a n = A017002 n

end A017002

/-!
# A017003: 

The programs for A017003, there is no canonical definition to state claims against.
-/

/-! ## A017003.P16323201184450545233

`(7*n+1)^11`
-/

namespace A017003.P16323201184450545233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 1) ^ 11

end

end A017003.P16323201184450545233

/-! ## A017003.P8194190066720438523

`A008455(A016993(n))`
-/

namespace A017003.P8194190066720438523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n).toNat

end

end A017003.P8194190066720438523

/-! ## A017003.P10800301481456059813

`A008455(A016921(n)+n)`
-/

namespace A017003.P10800301481456059813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016921 n + (n : ℤ)).toNat

end

end A017003.P10800301481456059813

/-! ## A017003.P12280680854528060770

`A008455(A008588(n)+1+n)`
-/

namespace A017003.P12280680854528060770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 n + 1 + (n : ℤ)).toNat

end

end A017003.P12280680854528060770

/-! ## A017003.P4782884831556908785

`A008455(A016813(2*n)-n)`
-/

namespace A017003.P4782884831556908785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n) - (n : ℤ)).toNat

end

end A017003.P4782884831556908785

/-! ## A017003.P13875130972726482350

`A008455(A008585(2*n)+n+1)`
-/

namespace A017003.P13875130972726482350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n) + (n + 1 : ℤ)).toNat

end

end A017003.P13875130972726482350

/-!
# A017004: 

The programs for A017004, there is no canonical definition to state claims against.
-/

/-! ## A017004.P1884780035946133482

`(7*n+1)^12`
-/

namespace A017004.P1884780035946133482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 1) ^ 12

end

end A017004.P1884780035946133482

/-! ## A017004.P17522912603542162219

`A016998(n)²`
-/

namespace A017004.P17522912603542162219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016998 n ^ 2

end

end A017004.P17522912603542162219

/-! ## A017004.P8348275523598792299

`(A016993(n)^6)²`
-/

namespace A017004.P8348275523598792299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n ^ 6) ^ 2

end

end A017004.P8348275523598792299

/-! ## A017004.P9382896478963300624

`sqrt(A017000(n))*A017000(n)`
-/

namespace A017004.P9382896478963300624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017000 n : ℝ) * (A017000 n : ℝ)

end

end A017004.P9382896478963300624

/-! ## A017004.P12742690719225425119

`sqrt(A017000(n)^3)`
-/

namespace A017004.P12742690719225425119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017000 n ^ 3 : ℝ)

end

end A017004.P12742690719225425119

/-! ## A017004.P201185503787087487

`A000578(7*n+1)²²`
-/

namespace A017004.P201185503787087487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (7 * n + 1) ^ 2) ^ 2

end

end A017004.P201185503787087487

/-! ## A017004.P10262164866663426476

`A008456(2*3*n+n+1)`
-/

namespace A017004.P10262164866663426476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * (3 * n) + (n + 1))

end

end A017004.P10262164866663426476

/-!
# A017005: a(n) = 7n + 2.

The programs for A017005, the canonical program `A017005.P14585839201288811509` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017005 has offset 0).

The definition of A017005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+2` (program `A017005.P14585839201288811509`, by `A017005.P14585839201288811509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017005.P14585839201288811509

`7*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017005

/-- `7*n+2` -/
def P14585839201288811509.Spec : Prop :=
  ∀ n, (P14585839201288811509.a n : ℤ) = A017005 n

theorem P14585839201288811509.correct : P14585839201288811509.Spec := by
  intro n
  simp only [A017005]

end A017005

/-!
# A017006: a(n) = (7*n+2)^2.

The programs for A017006, the canonical program `A017006.P12235891629108797892` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017006 has offset 0).

The definition of A017006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)²` (program `A017006.P12235891629108797892`, by `A017006.P12235891629108797892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017006.P12235891629108797892

`(7*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017006

/-- `(7*n+2)²` -/
def P12235891629108797892.Spec : Prop :=
  ∀ n, (P12235891629108797892.a n : ℤ) = A017006 n

theorem P12235891629108797892.correct : P12235891629108797892.Spec := by
  intro n
  simp only [A017006]

end A017006

/-! ## A017006.P18112916212116901430

`record[gcd(n+2, n%7)²]`
-/

namespace A017006.P18112916212116901430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (n % 7) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017006.P18112916212116901430

namespace A017006

/-- `record[gcd(n+2, n%7)²]` -/
def P18112916212116901430.Spec : Prop :=
  ∀ n, (P18112916212116901430.a n : ℤ) = A017006 n

end A017006

/-! ## A017006.P9334405032625968889

`record[(gcd(7, 1-n)+n+1)²]`
-/

namespace A017006.P9334405032625968889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (1 - (n : ℤ)) + (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017006.P9334405032625968889

namespace A017006

/-- `record[(gcd(7, 1-n)+n+1)²]` -/
def P9334405032625968889.Spec : Prop :=
  ∀ n, (P9334405032625968889.a n : ℤ) = A017006 n

end A017006

/-! ## A017006.P1490778260191064038

`sqrt(A017008(n))`
-/

namespace A017006.P1490778260191064038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017008 n : ℝ)

end

end A017006.P1490778260191064038

namespace A017006

/-- `sqrt(A017008(n))` -/
def P1490778260191064038.Spec : Prop :=
  ∀ n, P1490778260191064038.a n = (A017006 n : ℝ)

end A017006

/-! ## A017006.P14030296823719879409

`A017005(n)^2`
-/

namespace A017006.P14030296823719879409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2

end

end A017006.P14030296823719879409

namespace A017006

/-- `A017005(n)^2` -/
def P14030296823719879409.Spec : Prop :=
  ∀ n, P14030296823719879409.a n = A017006 n

theorem P14030296823719879409.correct : P14030296823719879409.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P14030296823719879409.a, A017006.P12235891629108797892.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P2869430258971284220

`sqrt(sqrt(A017012(n)))`
-/

namespace A017006.P2869430258971284220
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017012 n : ℝ))

end

end A017006.P2869430258971284220

namespace A017006

/-- `sqrt(sqrt(A017012(n)))` -/
def P2869430258971284220.Spec : Prop :=
  ∀ n, P2869430258971284220.a n = (A017006 n : ℝ)

end A017006

/-! ## A017006.P12407021579441962104

`A017010(n)^(1/3)`
-/

namespace A017006.P12407021579441962104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017010 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017006.P12407021579441962104

namespace A017006

/-- `A017010(n)^(1/3)` -/
def P12407021579441962104.Spec : Prop :=
  ∀ n, P12407021579441962104.a n = (A017006 n : ℝ)

end A017006

/-! ## A017006.P513632073321382041

`A017007(n)^(2/3)`
-/

namespace A017006.P513632073321382041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017007 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017006.P513632073321382041

namespace A017006

/-- `A017007(n)^(2/3)` -/
def P513632073321382041.Spec : Prop :=
  ∀ n, P513632073321382041.a n = (A017006 n : ℝ)

end A017006

/-! ## A017006.P10011339219169061965

`2*A007533(n)-n²`
-/

namespace A017006.P10011339219169061965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007533 n - (n ^ 2 : ℤ)

end

end A017006.P10011339219169061965

namespace A017006

/-- `2*A007533(n)-n²` -/
def P10011339219169061965.Spec : Prop :=
  ∀ n, P10011339219169061965.a n = A017006 n

theorem P10011339219169061965.correct : P10011339219169061965.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P10011339219169061965.a, A017006.P12235891629108797892.a, A007533, A007533.P18197123027460240439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P11790285076070538903

`A017007(n)/A017005(n)`
-/

namespace A017006.P11790285076070538903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017007 n : ℚ) / (A017005 n : ℚ)

end

end A017006.P11790285076070538903

namespace A017006

/-- `A017007(n)/A017005(n)` -/
def P11790285076070538903.Spec : Prop :=
  ∀ n, P11790285076070538903.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P984769070000212841

`A017009(n)/A017007(n)`
-/

namespace A017006.P984769070000212841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n : ℚ) / (A017007 n : ℚ)

end

end A017006.P984769070000212841

namespace A017006

/-- `A017009(n)/A017007(n)` -/
def P984769070000212841.Spec : Prop :=
  ∀ n, P984769070000212841.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P6978618816322262335

`A017010(n)/A017008(n)`
-/

namespace A017006.P6978618816322262335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017010 n : ℚ) / (A017008 n : ℚ)

end

end A017006.P6978618816322262335

namespace A017006

/-- `A017010(n)/A017008(n)` -/
def P6978618816322262335.Spec : Prop :=
  ∀ n, P6978618816322262335.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P1831029977497551107

`A017011(n)/A017009(n)`
-/

namespace A017006.P1831029977497551107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017009 n : ℚ)

end

end A017006.P1831029977497551107

namespace A017006

/-- `A017011(n)/A017009(n)` -/
def P1831029977497551107.Spec : Prop :=
  ∀ n, P1831029977497551107.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P10614829203259713599

`A157368(n+1)+A017089(n)`
-/

namespace A017006.P10614829203259713599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157368 (n + 1) + A017089 n

end

end A017006.P10614829203259713599

namespace A017006

/-- `A157368(n+1)+A017089(n)` -/
def P10614829203259713599.Spec : Prop :=
  ∀ n, P10614829203259713599.a n = A017006 n

theorem P10614829203259713599.correct : P10614829203259713599.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P10614829203259713599.a, A017006.P12235891629108797892.a, A017089, A017089.P13709942329986306669.a, A157368, A157368.P424591313248378198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P11396948345089617483

`A017008(n)²/A017007(n)²`
-/

namespace A017006.P11396948345089617483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n ^ 2 : ℚ) / (A017007 n ^ 2 : ℚ)

end

end A017006.P11396948345089617483

namespace A017006

/-- `A017008(n)²/A017007(n)²` -/
def P11396948345089617483.Spec : Prop :=
  ∀ n, P11396948345089617483.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P5252481279205316351

`A017005(n)²²²/A017010(n)`
-/

namespace A017006.P5252481279205316351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017005 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017010 n : ℚ)

end

end A017006.P5252481279205316351

namespace A017006

/-- `A017005(n)²²²/A017010(n)` -/
def P5252481279205316351.Spec : Prop :=
  ∀ n, P5252481279205316351.a n = (A017006 n : ℚ)

end A017006

/-! ## A017006.P14012236412455106124

`A017029(n)+A008589(n)*A017017(n)`
-/

namespace A017006.P14012236412455106124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + A008589 n * A017017 n

end

end A017006.P14012236412455106124

namespace A017006

/-- `A017029(n)+A008589(n)*A017017(n)` -/
def P14012236412455106124.Spec : Prop :=
  ∀ n, P14012236412455106124.a n = A017006 n

theorem P14012236412455106124.correct : P14012236412455106124.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P14012236412455106124.a, A017006.P12235891629108797892.a, A008589, A008589.P8963889148823201939.a, A017017, A017017.P16632027915442464889.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P16622951062412128961

`A016993(n)*A017029(n)-A008589(n)`
-/

namespace A017006.P16622951062412128961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n * A017029 n - A008589 n

end

end A017006.P16622951062412128961

namespace A017006

/-- `A016993(n)*A017029(n)-A008589(n)` -/
def P16622951062412128961.Spec : Prop :=
  ∀ n, P16622951062412128961.a n = A017006 n

theorem P16622951062412128961.correct : P16622951062412128961.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P16622951062412128961.a, A017006.P12235891629108797892.a, A008589, A008589.P8963889148823201939.a, A016993, A016993.P16783903167149097063.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P8092324220065759630

`A139268(n+1)²/(n+1)²`
-/

namespace A017006.P8092324220065759630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139268 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017006.P8092324220065759630

namespace A017006

/-- `A139268(n+1)²/(n+1)²` -/
def P8092324220065759630.Spec : Prop :=
  ∀ n, P8092324220065759630.a n = (A017006 n : ℚ)

theorem P8092324220065759630.correct : P8092324220065759630.Spec := by
  intro n
  simp only [A017006, Nat.add_sub_cancel, A017006.P8092324220065759630.a, A017006.P12235891629108797892.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017006

/-! ## A017006.P15075144575787475710

`A152759(n+1)/A033428(n+1)*A152760(n+1)`
-/

namespace A017006.P15075144575787475710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152759 (n + 1) : ℚ) / (A033428 (n + 1) : ℚ) * (A152760 (n + 1) : ℚ)

end

end A017006.P15075144575787475710

namespace A017006

/-- `A152759(n+1)/A033428(n+1)*A152760(n+1)` -/
def P15075144575787475710.Spec : Prop :=
  ∀ n, P15075144575787475710.a n = (A017006 n : ℚ)

end A017006

/-!
# A017007: a(n) = (7*n + 2)^3.

The programs for A017007, the canonical program `A017007.P13790534247703720753` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017007 has offset 0).

The definition of A017007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^3` (program `A017007.P13790534247703720753`, by `A017007.P13790534247703720753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017007.P13790534247703720753

`(7*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017007

/-- `(7*n+2)^3` -/
def P13790534247703720753.Spec : Prop :=
  ∀ n, (P13790534247703720753.a n : ℤ) = A017007 n

theorem P13790534247703720753.correct : P13790534247703720753.Spec := by
  intro n
  simp only [A017007]

end A017007

/-! ## A017007.P16687925689276370599

`sqrt(A017010(n))`
-/

namespace A017007.P16687925689276370599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017010 n : ℝ)

end

end A017007.P16687925689276370599

namespace A017007

/-- `sqrt(A017010(n))` -/
def P16687925689276370599.Spec : Prop :=
  ∀ n, P16687925689276370599.a n = (A017007 n : ℝ)

end A017007

/-! ## A017007.P11486004547717738602

`sqrt(A017006(n)^3)`
-/

namespace A017007.P11486004547717738602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017006 n ^ 3 : ℝ)

end

end A017007.P11486004547717738602

namespace A017007

/-- `sqrt(A017006(n)^3)` -/
def P11486004547717738602.Spec : Prop :=
  ∀ n, P11486004547717738602.a n = (A017007 n : ℝ)

end A017007

/-! ## A017007.P2229726551218860541

`A017005(n)*A017006(n)`
-/

namespace A017007.P2229726551218860541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017006 n

end

end A017007.P2229726551218860541

namespace A017007

/-- `A017005(n)*A017006(n)` -/
def P2229726551218860541.Spec : Prop :=
  ∀ n, P2229726551218860541.a n = A017007 n

theorem P2229726551218860541.correct : P2229726551218860541.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P2229726551218860541.a, A017007.P13790534247703720753.a, A017005, A017005.P14585839201288811509.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P828239229957211100

`A017008(n)/A017005(n)`
-/

namespace A017007.P828239229957211100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n : ℚ) / (A017005 n : ℚ)

end

end A017007.P828239229957211100

namespace A017007

/-- `A017008(n)/A017005(n)` -/
def P828239229957211100.Spec : Prop :=
  ∀ n, P828239229957211100.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P14323103043046177949

`A017009(n)/A017006(n)`
-/

namespace A017007.P14323103043046177949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n : ℚ) / (A017006 n : ℚ)

end

end A017007.P14323103043046177949

namespace A017007

/-- `A017009(n)/A017006(n)` -/
def P14323103043046177949.Spec : Prop :=
  ∀ n, P14323103043046177949.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P13329428895902522390

`A017011(n)/A017008(n)`
-/

namespace A017007.P13329428895902522390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017008 n : ℚ)

end

end A017007.P13329428895902522390

namespace A017007

/-- `A017011(n)/A017008(n)` -/
def P13329428895902522390.Spec : Prop :=
  ∀ n, P13329428895902522390.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P11030119999142550205

`A017008(n)²/A017009(n)`
-/

namespace A017007.P11030119999142550205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n ^ 2 : ℚ) / (A017009 n : ℚ)

end

end A017007.P11030119999142550205

namespace A017007

/-- `A017008(n)²/A017009(n)` -/
def P11030119999142550205.Spec : Prop :=
  ∀ n, P11030119999142550205.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P1118356263551948817

`A017009(n)/A017005(n)²`
-/

namespace A017007.P1118356263551948817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n : ℚ) / (A017005 n ^ 2 : ℚ)

end

end A017007.P1118356263551948817

namespace A017007

/-- `A017009(n)/A017005(n)²` -/
def P1118356263551948817.Spec : Prop :=
  ∀ n, P1118356263551948817.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P16692630147092344935

`A017009(n)²/A017011(n)`
-/

namespace A017007.P16692630147092344935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n ^ 2 : ℚ) / (A017011 n : ℚ)

end

end A017007.P16692630147092344935

namespace A017007

/-- `A017009(n)²/A017011(n)` -/
def P16692630147092344935.Spec : Prop :=
  ∀ n, P16692630147092344935.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P5641197032483111123

`A017011(n)/A017006(n)²`
-/

namespace A017007.P5641197032483111123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017006 n ^ 2 : ℚ)

end

end A017007.P5641197032483111123

namespace A017007

/-- `A017011(n)/A017006(n)²` -/
def P5641197032483111123.Spec : Prop :=
  ∀ n, P5641197032483111123.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P6265851453157264053

`(A017029(n)-2)*A017006(n)`
-/

namespace A017007.P6265851453157264053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n - 2) * A017006 n

end

end A017007.P6265851453157264053

namespace A017007

/-- `(A017029(n)-2)*A017006(n)` -/
def P6265851453157264053.Spec : Prop :=
  ∀ n, P6265851453157264053.a n = A017007 n

theorem P6265851453157264053.correct : P6265851453157264053.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P6265851453157264053.a, A017007.P13790534247703720753.a, A017006, A017006.P12235891629108797892.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P13011734324743403575

`(A017089(n)-n)*A017006(n)`
-/

namespace A017007.P13011734324743403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n - (n : ℤ)) * A017006 n

end

end A017007.P13011734324743403575

namespace A017007

/-- `(A017089(n)-n)*A017006(n)` -/
def P13011734324743403575.Spec : Prop :=
  ∀ n, P13011734324743403575.a n = A017007 n

theorem P13011734324743403575.correct : P13011734324743403575.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P13011734324743403575.a, A017007.P13790534247703720753.a, A017006, A017006.P12235891629108797892.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P1754398703213001556

`A017011(n)/A017005(n)²²`
-/

namespace A017007.P1754398703213001556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / ((A017005 n ^ 2) ^ 2 : ℚ)

end

end A017007.P1754398703213001556

namespace A017007

/-- `A017011(n)/A017005(n)²²` -/
def P1754398703213001556.Spec : Prop :=
  ∀ n, P1754398703213001556.a n = (A017007 n : ℚ)

end A017007

/-! ## A017007.P14688921340241523379

`(A016993(n)+1)*A017005(n)²`
-/

namespace A017007.P14688921340241523379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n + 1) * A017005 n ^ 2

end

end A017007.P14688921340241523379

namespace A017007

/-- `(A016993(n)+1)*A017005(n)²` -/
def P14688921340241523379.Spec : Prop :=
  ∀ n, P14688921340241523379.a n = A017007 n

theorem P14688921340241523379.correct : P14688921340241523379.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P14688921340241523379.a, A017007.P13790534247703720753.a, A016993, A016993.P16783903167149097063.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P12776780785977979456

`(A008589(n)+2)*A017005(n)²`
-/

namespace A017007.P12776780785977979456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008589 n + 2) * A017005 n ^ 2

end

end A017007.P12776780785977979456

namespace A017007

/-- `(A008589(n)+2)*A017005(n)²` -/
def P12776780785977979456.Spec : Prop :=
  ∀ n, P12776780785977979456.a n = A017007 n

theorem P12776780785977979456.correct : P12776780785977979456.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P12776780785977979456.a, A017007.P13790534247703720753.a, A008589, A008589.P8963889148823201939.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P5229608904010863615

`(1-A017017(n))²*A017005(n)`
-/

namespace A017007.P5229608904010863615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017017 n) ^ 2 * A017005 n

end

end A017007.P5229608904010863615

namespace A017007

/-- `(1-A017017(n))²*A017005(n)` -/
def P5229608904010863615.Spec : Prop :=
  ∀ n, P5229608904010863615.a n = A017007 n

theorem P5229608904010863615.correct : P5229608904010863615.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P5229608904010863615.a, A017007.P13790534247703720753.a, A017005, A017005.P14585839201288811509.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P15777171576193558635

`(2-A017029(n))²*A017005(n)`
-/

namespace A017007.P15777171576193558635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A017029 n) ^ 2 * A017005 n

end

end A017007.P15777171576193558635

namespace A017007

/-- `(2-A017029(n))²*A017005(n)` -/
def P15777171576193558635.Spec : Prop :=
  ∀ n, P15777171576193558635.a n = A017007 n

theorem P15777171576193558635.correct : P15777171576193558635.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P15777171576193558635.a, A017007.P13790534247703720753.a, A017005, A017005.P14585839201288811509.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-! ## A017007.P427326127070563119

`(A016945(n)+n-1)*(A016945(n)+n-1)²`
-/

namespace A017007.P427326127070563119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n + ((n : ℤ) - 1)) * (A016945 n + ((n : ℤ) - 1)) ^ 2

end

end A017007.P427326127070563119

namespace A017007

/-- `(A016945(n)+n-1)*(A016945(n)+n-1)²` -/
def P427326127070563119.Spec : Prop :=
  ∀ n, P427326127070563119.a n = A017007 n

theorem P427326127070563119.correct : P427326127070563119.Spec := by
  intro n
  simp only [A017007, Nat.add_sub_cancel, A017007.P427326127070563119.a, A017007.P13790534247703720753.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017007

/-!
# A017008: a(n) = (7*n + 2)^4.

The programs for A017008, the canonical program `A017008.P1904829175892992134` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017008 has offset 0).

The definition of A017008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^4` (program `A017008.P1904829175892992134`, by `A017008.P1904829175892992134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017008.P1904829175892992134

`(7*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017008

/-- `(7*n+2)^4` -/
def P1904829175892992134.Spec : Prop :=
  ∀ n, (P1904829175892992134.a n : ℤ) = A017008 n

theorem P1904829175892992134.correct : P1904829175892992134.Spec := by
  intro n
  simp only [A017008]

end A017008

/-! ## A017008.P6337998446202386793

`(record[lcm(4, n+1)]-(n+2))²²`
-/

namespace A017008.P6337998446202386793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017008.P6337998446202386793

namespace A017008

/-- `(record[lcm(4, n+1)]-(n+2))²²` -/
def P6337998446202386793.Spec : Prop :=
  ∀ n, P6337998446202386793.a n = A017008 n

end A017008

/-! ## A017008.P6463766304197091037

`(lcm(3*n, 2*n)+n+2)²²`
-/

namespace A017008.P6463766304197091037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (3 * n) (2 * n) + (n + 2)) ^ 2) ^ 2

end

end A017008.P6463766304197091037

namespace A017008

/-- `(lcm(3*n, 2*n)+n+2)²²` -/
def P6463766304197091037.Spec : Prop :=
  ∀ n, (P6463766304197091037.a n : ℤ) = A017008 n

end A017008

/-! ## A017008.P15142953498083952494

`Δ[(2*n)²-C(n+2, 2)]²²`
-/

namespace A017008.P15142953498083952494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017008.P15142953498083952494

namespace A017008

/-- `Δ[(2*n)²-C(n+2, 2)]²²` -/
def P15142953498083952494.Spec : Prop :=
  ∀ n, P15142953498083952494.a n = A017008 n

theorem P15142953498083952494.correct : P15142953498083952494.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P15142953498083952494.f1, A017008.P15142953498083952494.a, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P2994122391486525912

`(Δ[and(2*n+1, 2*n)²]-(n+2))²²`
-/

namespace A017008.P2994122391486525912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017008.P2994122391486525912

namespace A017008

/-- `(Δ[and(2*n+1, 2*n)²]-(n+2))²²` -/
def P2994122391486525912.Spec : Prop :=
  ∀ n, P2994122391486525912.a n = A017008 n

end A017008

/-! ## A017008.P17697811423143097488

`A017006(n)²`
-/

namespace A017008.P17697811423143097488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n ^ 2

end

end A017008.P17697811423143097488

namespace A017008

/-- `A017006(n)²` -/
def P17697811423143097488.Spec : Prop :=
  ∀ n, P17697811423143097488.a n = A017008 n

theorem P17697811423143097488.correct : P17697811423143097488.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P17697811423143097488.a, A017008.P1904829175892992134.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P5456004057068933767

`sqrt(A017012(n))`
-/

namespace A017008.P5456004057068933767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017012 n : ℝ)

end

end A017008.P5456004057068933767

namespace A017008

/-- `sqrt(A017012(n))` -/
def P5456004057068933767.Spec : Prop :=
  ∀ n, P5456004057068933767.a n = (A017008 n : ℝ)

end A017008

/-! ## A017008.P8179964468793868377

`A017005(n)²²`
-/

namespace A017008.P8179964468793868377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n ^ 2) ^ 2

end

end A017008.P8179964468793868377

namespace A017008

/-- `A017005(n)²²` -/
def P8179964468793868377.Spec : Prop :=
  ∀ n, P8179964468793868377.a n = A017008 n

theorem P8179964468793868377.correct : P8179964468793868377.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P8179964468793868377.a, A017008.P1904829175892992134.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P3596749120148899274

`(A016993(n)+1)²²`
-/

namespace A017008.P3596749120148899274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016993 n + 1) ^ 2) ^ 2

end

end A017008.P3596749120148899274

namespace A017008

/-- `(A016993(n)+1)²²` -/
def P3596749120148899274.Spec : Prop :=
  ∀ n, P3596749120148899274.a n = A017008 n

theorem P3596749120148899274.correct : P3596749120148899274.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P3596749120148899274.a, A017008.P1904829175892992134.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P4909055180324324697

`(A008589(n)+2)²²`
-/

namespace A017008.P4909055180324324697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008589 n + 2) ^ 2) ^ 2

end

end A017008.P4909055180324324697

namespace A017008

/-- `(A008589(n)+2)²²` -/
def P4909055180324324697.Spec : Prop :=
  ∀ n, P4909055180324324697.a n = A017008 n

theorem P4909055180324324697.correct : P4909055180324324697.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P4909055180324324697.a, A017008.P1904829175892992134.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P581156037815150905

`(1-A017017(n))²²`
-/

namespace A017008.P581156037815150905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017017 n) ^ 2) ^ 2

end

end A017008.P581156037815150905

namespace A017008

/-- `(1-A017017(n))²²` -/
def P581156037815150905.Spec : Prop :=
  ∀ n, P581156037815150905.a n = A017008 n

theorem P581156037815150905.correct : P581156037815150905.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P581156037815150905.a, A017008.P1904829175892992134.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P13680154918433771778

`(2-A017029(n))²²`
-/

namespace A017008.P13680154918433771778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017029 n) ^ 2) ^ 2

end

end A017008.P13680154918433771778

namespace A017008

/-- `(2-A017029(n))²²` -/
def P13680154918433771778.Spec : Prop :=
  ∀ n, P13680154918433771778.a n = A017008 n

theorem P13680154918433771778.correct : P13680154918433771778.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P13680154918433771778.a, A017008.P1904829175892992134.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P6185960114970991355

`(3-A017041(n))²²`
-/

namespace A017008.P6185960114970991355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017041 n) ^ 2) ^ 2

end

end A017008.P6185960114970991355

namespace A017008

/-- `(3-A017041(n))²²` -/
def P6185960114970991355.Spec : Prop :=
  ∀ n, P6185960114970991355.a n = A017008 n

theorem P6185960114970991355.correct : P6185960114970991355.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P6185960114970991355.a, A017008.P1904829175892992134.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P17492170953836013196

`(A016933(n)+n)²²`
-/

namespace A017008.P17492170953836013196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016933 n + (n : ℤ)) ^ 2) ^ 2

end

end A017008.P17492170953836013196

namespace A017008

/-- `(A016933(n)+n)²²` -/
def P17492170953836013196.Spec : Prop :=
  ∀ n, P17492170953836013196.a n = A017008 n

theorem P17492170953836013196.correct : P17492170953836013196.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P17492170953836013196.a, A017008.P1904829175892992134.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P7482721920676654596

`(n-A017089(n))²²`
-/

namespace A017008.P7482721920676654596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017089 n) ^ 2) ^ 2

end

end A017008.P7482721920676654596

namespace A017008

/-- `(n-A017089(n))²²` -/
def P7482721920676654596.Spec : Prop :=
  ∀ n, P7482721920676654596.a n = A017008 n

theorem P7482721920676654596.correct : P7482721920676654596.Spec := by
  intro n
  simp only [A017008, Nat.add_sub_cancel, A017008.P7482721920676654596.a, A017008.P1904829175892992134.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017008

/-! ## A017008.P12412086258863089605

`(sqrt(A016994(n))+1)²²`
-/

namespace A017008.P12412086258863089605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016994 n : ℝ) + 1) ^ 2) ^ 2

end

end A017008.P12412086258863089605

namespace A017008

/-- `(sqrt(A016994(n))+1)²²` -/
def P12412086258863089605.Spec : Prop :=
  ∀ n, P12412086258863089605.a n = (A017008 n : ℝ)

end A017008

/-! ## A017008.P5006416330652756940

`(sqrt(A016982(n))+2)²²`
-/

namespace A017008.P5006416330652756940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016982 n : ℝ) + 2) ^ 2) ^ 2

end

end A017008.P5006416330652756940

namespace A017008

/-- `(sqrt(A016982(n))+2)²²` -/
def P5006416330652756940.Spec : Prop :=
  ∀ n, P5006416330652756940.a n = (A017008 n : ℝ)

end A017008

/-! ## A017008.P14244665756884273786

`(1-sqrt(A017018(n)))²²`
-/

namespace A017008.P14244665756884273786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017018 n : ℝ)) ^ 2) ^ 2

end

end A017008.P14244665756884273786

namespace A017008

/-- `(1-sqrt(A017018(n)))²²` -/
def P14244665756884273786.Spec : Prop :=
  ∀ n, P14244665756884273786.a n = (A017008 n : ℝ)

end A017008

/-! ## A017008.P493218755427103958

`(2-sqrt(A017030(n)))²²`
-/

namespace A017008.P493218755427103958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017030 n : ℝ)) ^ 2) ^ 2

end

end A017008.P493218755427103958

namespace A017008

/-- `(2-sqrt(A017030(n)))²²` -/
def P493218755427103958.Spec : Prop :=
  ∀ n, P493218755427103958.a n = (A017008 n : ℝ)

end A017008

/-! ## A017008.P9039179905391284628

`(Δ[A001106(n)]+1)²²`
-/

namespace A017008.P9039179905391284628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 1) ^ 2) ^ 2

end

end A017008.P9039179905391284628

namespace A017008

/-- `(Δ[A001106(n)]+1)²²` -/
def P9039179905391284628.Spec : Prop :=
  ∀ n, P9039179905391284628.a n = A017008 n

end A017008

/-!
# A017009: a(n) = (7*n + 2)^5.

The programs for A017009, the canonical program `A017009.P10252695915433009038` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017009 has offset 0).

The definition of A017009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^5` (program `A017009.P10252695915433009038`, by `A017009.P10252695915433009038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017009.P10252695915433009038

`(7*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017009

/-- `(7*n+2)^5` -/
def P10252695915433009038.Spec : Prop :=
  ∀ n, (P10252695915433009038.a n : ℤ) = A017009 n

theorem P10252695915433009038.correct : P10252695915433009038.Spec := by
  intro n
  simp only [A017009]

end A017009

/-! ## A017009.P16708357602844663788

`sqrt(A017014(n))`
-/

namespace A017009.P16708357602844663788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017014 n : ℝ)

end

end A017009.P16708357602844663788

namespace A017009

/-- `sqrt(A017014(n))` -/
def P16708357602844663788.Spec : Prop :=
  ∀ n, P16708357602844663788.a n = (A017009 n : ℝ)

end A017009

/-! ## A017009.P15785539320553769431

`sqrt(A017006(n)^5)`
-/

namespace A017009.P15785539320553769431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017006 n ^ 5 : ℝ)

end

end A017009.P15785539320553769431

namespace A017009

/-- `sqrt(A017006(n)^5)` -/
def P15785539320553769431.Spec : Prop :=
  ∀ n, P15785539320553769431.a n = (A017009 n : ℝ)

end A017009

/-! ## A017009.P6304632726684813975

`(7*n+2)*A017008(n)`
-/

namespace A017009.P6304632726684813975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℤ) * A017008 n

end

end A017009.P6304632726684813975

namespace A017009

/-- `(7*n+2)*A017008(n)` -/
def P6304632726684813975.Spec : Prop :=
  ∀ n, P6304632726684813975.a n = A017009 n

theorem P6304632726684813975.correct : P6304632726684813975.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P6304632726684813975.a, A017009.P10252695915433009038.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P5564242659141264209

`A017010(n)/(7*n+2)`
-/

namespace A017009.P5564242659141264209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017010 n : ℚ) / (7 * n + 2 : ℚ)

end

end A017009.P5564242659141264209

namespace A017009

/-- `A017010(n)/(7*n+2)` -/
def P5564242659141264209.Spec : Prop :=
  ∀ n, P5564242659141264209.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P16860690807826812436

`-(-(A016993(n)+1))^5`
-/

namespace A017009.P16860690807826812436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(A016993 n + 1)) ^ 5)

end

end A017009.P16860690807826812436

namespace A017009

/-- `-(-(A016993(n)+1))^5` -/
def P16860690807826812436.Spec : Prop :=
  ∀ n, P16860690807826812436.a n = A017009 n

theorem P16860690807826812436.correct : P16860690807826812436.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P16860690807826812436.a, A017009.P10252695915433009038.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P14299778548515788232

`A017006(n)*A017007(n)`
-/

namespace A017009.P14299778548515788232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n * A017007 n

end

end A017009.P14299778548515788232

namespace A017009

/-- `A017006(n)*A017007(n)` -/
def P14299778548515788232.Spec : Prop :=
  ∀ n, P14299778548515788232.a n = A017009 n

theorem P14299778548515788232.correct : P14299778548515788232.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P14299778548515788232.a, A017009.P10252695915433009038.a, A017006, A017006.P12235891629108797892.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P11696389097197675869

`A017011(n)/A017006(n)`
-/

namespace A017009.P11696389097197675869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017006 n : ℚ)

end

end A017009.P11696389097197675869

namespace A017009

/-- `A017011(n)/A017006(n)` -/
def P11696389097197675869.Spec : Prop :=
  ∀ n, P11696389097197675869.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P14338903857736843423

`A017005(n)²*A017007(n)`
-/

namespace A017009.P14338903857736843423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2 * A017007 n

end

end A017009.P14338903857736843423

namespace A017009

/-- `A017005(n)²*A017007(n)` -/
def P14338903857736843423.Spec : Prop :=
  ∀ n, P14338903857736843423.a n = A017009 n

theorem P14338903857736843423.correct : P14338903857736843423.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P14338903857736843423.a, A017009.P10252695915433009038.a, A017005, A017005.P14585839201288811509.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P11329639206622218502

`A017006(n)²*A017005(n)`
-/

namespace A017009.P11329639206622218502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n ^ 2 * A017005 n

end

end A017009.P11329639206622218502

namespace A017009

/-- `A017006(n)²*A017005(n)` -/
def P11329639206622218502.Spec : Prop :=
  ∀ n, P11329639206622218502.a n = A017009 n

theorem P11329639206622218502.correct : P11329639206622218502.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P11329639206622218502.a, A017009.P10252695915433009038.a, A017005, A017005.P14585839201288811509.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P10992494330389884047

`A017008(n)²/A017007(n)`
-/

namespace A017009.P10992494330389884047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n ^ 2 : ℚ) / (A017007 n : ℚ)

end

end A017009.P10992494330389884047

namespace A017009

/-- `A017008(n)²/A017007(n)` -/
def P10992494330389884047.Spec : Prop :=
  ∀ n, P10992494330389884047.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P9464529797816886705

`A017011(n)/A017005(n)²`
-/

namespace A017009.P9464529797816886705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017005 n ^ 2 : ℚ)

end

end A017009.P9464529797816886705

namespace A017009

/-- `A017011(n)/A017005(n)²` -/
def P9464529797816886705.Spec : Prop :=
  ∀ n, P9464529797816886705.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P16516713261185980490

`1/A017005(n)*A017010(n)`
-/

namespace A017009.P16516713261185980490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A017005 n : ℚ) * (A017010 n : ℚ)

end

end A017009.P16516713261185980490

namespace A017009

/-- `1/A017005(n)*A017010(n)` -/
def P16516713261185980490.Spec : Prop :=
  ∀ n, P16516713261185980490.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P16369553496395943649

`(A017029(n)-2)*A017006(n)²`
-/

namespace A017009.P16369553496395943649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n - 2) * A017006 n ^ 2

end

end A017009.P16369553496395943649

namespace A017009

/-- `(A017029(n)-2)*A017006(n)²` -/
def P16369553496395943649.Spec : Prop :=
  ∀ n, P16369553496395943649.a n = A017009 n

theorem P16369553496395943649.correct : P16369553496395943649.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P16369553496395943649.a, A017009.P10252695915433009038.a, A017006, A017006.P12235891629108797892.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P5391129815363645608

`(A017089(n)-n)*A017006(n)²`
-/

namespace A017009.P5391129815363645608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n - (n : ℤ)) * A017006 n ^ 2

end

end A017009.P5391129815363645608

namespace A017009

/-- `(A017089(n)-n)*A017006(n)²` -/
def P5391129815363645608.Spec : Prop :=
  ∀ n, P5391129815363645608.a n = A017009 n

theorem P5391129815363645608.correct : P5391129815363645608.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P5391129815363645608.a, A017009.P10252695915433009038.a, A017006, A017006.P12235891629108797892.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P13553838553812106377

`(A016945(n)+n-1)*(A016945(n)+n-1)²²`
-/

namespace A017009.P13553838553812106377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n + ((n : ℤ) - 1)) * ((A016945 n + ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017009.P13553838553812106377

namespace A017009

/-- `(A016945(n)+n-1)*(A016945(n)+n-1)²²` -/
def P13553838553812106377.Spec : Prop :=
  ∀ n, P13553838553812106377.a n = A017009 n

theorem P13553838553812106377.correct : P13553838553812106377.Spec := by
  intro n
  simp only [A017009, Nat.add_sub_cancel, A017009.P13553838553812106377.a, A017009.P10252695915433009038.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017009

/-! ## A017009.P11728159211402016045

`A017008(n)/A017011(n)*A017008(n)²`
-/

namespace A017009.P11728159211402016045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n : ℚ) / (A017011 n : ℚ) * (A017008 n ^ 2 : ℚ)

end

end A017009.P11728159211402016045

namespace A017009

/-- `A017008(n)/A017011(n)*A017008(n)²` -/
def P11728159211402016045.Spec : Prop :=
  ∀ n, P11728159211402016045.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P5925808425028002900

`A017012(n)/(A017005(n)²*A017005(n))`
-/

namespace A017009.P5925808425028002900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017012 n : ℚ) / (A017005 n ^ 2 * A017005 n : ℚ)

end

end A017009.P5925808425028002900

namespace A017009

/-- `A017012(n)/(A017005(n)²*A017005(n))` -/
def P5925808425028002900.Spec : Prop :=
  ∀ n, P5925808425028002900.a n = (A017009 n : ℚ)

end A017009

/-! ## A017009.P6649376554627217353

`A047276(2*n+1)²²*A047276(2*n+1)`
-/

namespace A017009.P6649376554627217353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047276 (2 * n + 1) ^ 2) ^ 2 * A047276 (2 * n + 1)

end

end A017009.P6649376554627217353

namespace A017009

/-- `A047276(2*n+1)²²*A047276(2*n+1)` -/
def P6649376554627217353.Spec : Prop :=
  ∀ n, P6649376554627217353.a n = A017009 n

end A017009

/-! ## A017009.P10662079518062956790

`A047348(2*n+1)²²*A047348(2*n+1)`
-/

namespace A017009.P10662079518062956790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047348 (2 * n + 1) ^ 2) ^ 2 * A047348 (2 * n + 1)

end

end A017009.P10662079518062956790

namespace A017009

/-- `A047348(2*n+1)²²*A047348(2*n+1)` -/
def P10662079518062956790.Spec : Prop :=
  ∀ n, P10662079518062956790.a n = A017009 n

end A017009

/-!
# A017010: a(n) = (7*n+2)^6.

The programs for A017010, the canonical program `A017010.P11727660023539664207` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017010 has offset 0).

The definition of A017010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^6` (program `A017010.P11727660023539664207`, by `A017010.P11727660023539664207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017010.P11727660023539664207

`(7*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017010

/-- `(7*n+2)^6` -/
def P11727660023539664207.Spec : Prop :=
  ∀ n, (P11727660023539664207.a n : ℤ) = A017010 n

theorem P11727660023539664207.correct : P11727660023539664207.Spec := by
  intro n
  simp only [A017010]

end A017010

/-! ## A017010.P8104819706240948128

`A001014(A017005(n))`
-/

namespace A017010.P8104819706240948128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A017005 n).toNat

end

end A017010.P8104819706240948128

namespace A017010

/-- `A001014(A017005(n))` -/
def P8104819706240948128.Spec : Prop :=
  ∀ n, P8104819706240948128.a n = A017010 n

end A017010

/-! ## A017010.P4009875761519231986

`A017007(n)²`
-/

namespace A017010.P4009875761519231986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n ^ 2

end

end A017010.P4009875761519231986

namespace A017010

/-- `A017007(n)²` -/
def P4009875761519231986.Spec : Prop :=
  ∀ n, P4009875761519231986.a n = A017010 n

theorem P4009875761519231986.correct : P4009875761519231986.Spec := by
  intro n
  simp only [A017010, Nat.add_sub_cancel, A017010.P4009875761519231986.a, A017010.P11727660023539664207.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017010

/-! ## A017010.P8340152513776022837

`sqrt(A017008(n)^3)`
-/

namespace A017010.P8340152513776022837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017008 n ^ 3 : ℝ)

end

end A017010.P8340152513776022837

namespace A017010

/-- `sqrt(A017008(n)^3)` -/
def P8340152513776022837.Spec : Prop :=
  ∀ n, P8340152513776022837.a n = (A017010 n : ℝ)

end A017010

/-! ## A017010.P11884974018769240688

`(7*n+2)*A017009(n)`
-/

namespace A017010.P11884974018769240688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 2 : ℤ) * A017009 n

end

end A017010.P11884974018769240688

namespace A017010

/-- `(7*n+2)*A017009(n)` -/
def P11884974018769240688.Spec : Prop :=
  ∀ n, P11884974018769240688.a n = A017010 n

theorem P11884974018769240688.correct : P11884974018769240688.Spec := by
  intro n
  simp only [A017010, Nat.add_sub_cancel, A017010.P11884974018769240688.a, A017010.P11727660023539664207.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017010

/-! ## A017010.P15515207573163097103

`A017006(n)*A017008(n)`
-/

namespace A017010.P15515207573163097103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n * A017008 n

end

end A017010.P15515207573163097103

namespace A017010

/-- `A017006(n)*A017008(n)` -/
def P15515207573163097103.Spec : Prop :=
  ∀ n, P15515207573163097103.a n = A017010 n

theorem P15515207573163097103.correct : P15515207573163097103.Spec := by
  intro n
  simp only [A017010, Nat.add_sub_cancel, A017010.P15515207573163097103.a, A017010.P11727660023539664207.a, A017006, A017006.P12235891629108797892.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017010

/-! ## A017010.P16846765847128098504

`A017011(n)/A017005(n)`
-/

namespace A017010.P16846765847128098504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017005 n : ℚ)

end

end A017010.P16846765847128098504

namespace A017010

/-- `A017011(n)/A017005(n)` -/
def P16846765847128098504.Spec : Prop :=
  ∀ n, P16846765847128098504.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P16316229653384769083

`(A017005(n)*A017006(n))²`
-/

namespace A017010.P16316229653384769083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n * A017006 n) ^ 2

end

end A017010.P16316229653384769083

namespace A017010

/-- `(A017005(n)*A017006(n))²` -/
def P16316229653384769083.Spec : Prop :=
  ∀ n, P16316229653384769083.a n = A017010 n

theorem P16316229653384769083.correct : P16316229653384769083.Spec := by
  intro n
  simp only [A017010, Nat.add_sub_cancel, A017010.P16316229653384769083.a, A017010.P11727660023539664207.a, A017005, A017005.P14585839201288811509.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017010

/-! ## A017010.P10236751619433433906

`A017005(n)²*A017008(n)`
-/

namespace A017010.P10236751619433433906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2 * A017008 n

end

end A017010.P10236751619433433906

namespace A017010

/-- `A017005(n)²*A017008(n)` -/
def P10236751619433433906.Spec : Prop :=
  ∀ n, P10236751619433433906.a n = A017010 n

theorem P10236751619433433906.correct : P10236751619433433906.Spec := by
  intro n
  simp only [A017010, Nat.add_sub_cancel, A017010.P10236751619433433906.a, A017010.P11727660023539664207.a, A017005, A017005.P14585839201288811509.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017010

/-! ## A017010.P5326611854086448930

`(A017009(n)/A017006(n))²`
-/

namespace A017010.P5326611854086448930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017009 n : ℚ) / (A017006 n : ℚ)) ^ 2

end

end A017010.P5326611854086448930

namespace A017010

/-- `(A017009(n)/A017006(n))²` -/
def P5326611854086448930.Spec : Prop :=
  ∀ n, P5326611854086448930.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P12068419072539268452

`A017009(n)²/A017008(n)`
-/

namespace A017010.P12068419072539268452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n ^ 2 : ℚ) / (A017008 n : ℚ)

end

end A017010.P12068419072539268452

namespace A017010

/-- `A017009(n)²/A017008(n)` -/
def P12068419072539268452.Spec : Prop :=
  ∀ n, P12068419072539268452.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P5311512353630376965

`(A017011(n)/A017008(n))²`
-/

namespace A017010.P5311512353630376965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017011 n : ℚ) / (A017008 n : ℚ)) ^ 2

end

end A017010.P5311512353630376965

namespace A017010

/-- `(A017011(n)/A017008(n))²` -/
def P5311512353630376965.Spec : Prop :=
  ∀ n, P5311512353630376965.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P92831120975679206

`A017012(n)/A017005(n)²`
-/

namespace A017010.P92831120975679206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017012 n : ℚ) / (A017005 n ^ 2 : ℚ)

end

end A017010.P92831120975679206

namespace A017010

/-- `A017012(n)/A017005(n)²` -/
def P92831120975679206.Spec : Prop :=
  ∀ n, P92831120975679206.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P11795362354800196240

`(A017011(n)/A017006(n)²)²`
-/

namespace A017010.P11795362354800196240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017011 n : ℚ) / (A017006 n ^ 2 : ℚ)) ^ 2

end

end A017010.P11795362354800196240

namespace A017010

/-- `(A017011(n)/A017006(n)²)²` -/
def P11795362354800196240.Spec : Prop :=
  ∀ n, P11795362354800196240.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P12437033569455490534

`(A017009(n)/A017011(n)*A017009(n))²`
-/

namespace A017010.P12437033569455490534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017009 n : ℚ) / (A017011 n : ℚ) * (A017009 n : ℚ)) ^ 2

end

end A017010.P12437033569455490534

namespace A017010

/-- `(A017009(n)/A017011(n)*A017009(n))²` -/
def P12437033569455490534.Spec : Prop :=
  ∀ n, P12437033569455490534.a n = (A017010 n : ℚ)

end A017010

/-! ## A017010.P9891997234170574979

`(Δ[A218471(n)]^3)²`
-/

namespace A017010.P9891997234170574979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017010.P9891997234170574979

namespace A017010

/-- `(Δ[A218471(n)]^3)²` -/
def P9891997234170574979.Spec : Prop :=
  ∀ n, P9891997234170574979.a n = A017010 n

end A017010

/-! ## A017010.P17732549483973020255

`(Δ[A140065(n+1)]^3)²`
-/

namespace A017010.P17732549483973020255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017010.P17732549483973020255

namespace A017010

/-- `(Δ[A140065(n+1)]^3)²` -/
def P17732549483973020255.Spec : Prop :=
  ∀ n, P17732549483973020255.a n = A017010 n

end A017010

/-! ## A017010.P7390027259111954153

`(A047276(2*n+1)²*A047276(2*n+1))²`
-/

namespace A017010.P7390027259111954153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047276 (2 * n + 1) ^ 2 * A047276 (2 * n + 1)) ^ 2

end

end A017010.P7390027259111954153

namespace A017010

/-- `(A047276(2*n+1)²*A047276(2*n+1))²` -/
def P7390027259111954153.Spec : Prop :=
  ∀ n, P7390027259111954153.a n = A017010 n

end A017010

/-! ## A017010.P4612137826552029969

`(A047348(2*n+1)²*A047348(2*n+1))²`
-/

namespace A017010.P4612137826552029969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047348 (2 * n + 1) ^ 2 * A047348 (2 * n + 1)) ^ 2

end

end A017010.P4612137826552029969

namespace A017010

/-- `(A047348(2*n+1)²*A047348(2*n+1))²` -/
def P4612137826552029969.Spec : Prop :=
  ∀ n, P4612137826552029969.a n = A017010 n

end A017010

/-!
# A017011: a(n) = (7*n + 2)^7.

The programs for A017011, the canonical program `A017011.P331536479410596699` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017011 has offset 0).

The definition of A017011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^7` (program `A017011.P331536479410596699`, by `A017011.P331536479410596699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017011.P331536479410596699

`(7*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017011

/-- `(7*n+2)^7` -/
def P331536479410596699.Spec : Prop :=
  ∀ n, (P331536479410596699.a n : ℤ) = A017011 n

theorem P331536479410596699.correct : P331536479410596699.Spec := by
  intro n
  simp only [A017011]

end A017011

/-! ## A017011.P13483927967637851932

`record[(n+2)^gcd(7, n)]`
-/

namespace A017011.P13483927967637851932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017011.P13483927967637851932

namespace A017011

/-- `record[(n+2)^gcd(7, n)]` -/
def P13483927967637851932.Spec : Prop :=
  ∀ n, (P13483927967637851932.a n : ℤ) = A017011 n

end A017011

/-! ## A017011.P8116403130770004881

`A017010(n)*(7*n+2)`
-/

namespace A017011.P8116403130770004881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017010 n * (7 * n + 2 : ℤ)

end

end A017011.P8116403130770004881

namespace A017011

/-- `A017010(n)*(7*n+2)` -/
def P8116403130770004881.Spec : Prop :=
  ∀ n, P8116403130770004881.a n = A017011 n

theorem P8116403130770004881.correct : P8116403130770004881.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P8116403130770004881.a, A017011.P331536479410596699.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P15029406108032587027

`(7*n+2)²*A017009(n)`
-/

namespace A017011.P15029406108032587027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 2) ^ 2 : ℤ) * A017009 n

end

end A017011.P15029406108032587027

namespace A017011

/-- `(7*n+2)²*A017009(n)` -/
def P15029406108032587027.Spec : Prop :=
  ∀ n, P15029406108032587027.a n = A017011 n

theorem P15029406108032587027.correct : P15029406108032587027.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P15029406108032587027.a, A017011.P331536479410596699.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P15571541543763537639

`A017005(n)*A017010(n)`
-/

namespace A017011.P15571541543763537639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017010 n

end

end A017011.P15571541543763537639

namespace A017011

/-- `A017005(n)*A017010(n)` -/
def P15571541543763537639.Spec : Prop :=
  ∀ n, P15571541543763537639.a n = A017011 n

theorem P15571541543763537639.correct : P15571541543763537639.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P15571541543763537639.a, A017011.P331536479410596699.a, A017005, A017005.P14585839201288811509.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P626702890856464837

`A017007(n)*A017008(n)`
-/

namespace A017011.P626702890856464837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n * A017008 n

end

end A017011.P626702890856464837

namespace A017011

/-- `A017007(n)*A017008(n)` -/
def P626702890856464837.Spec : Prop :=
  ∀ n, P626702890856464837.a n = A017011 n

theorem P626702890856464837.correct : P626702890856464837.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P626702890856464837.a, A017011.P331536479410596699.a, A017007, A017007.P13790534247703720753.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P3146835164170616189

`A017012(n)/A017005(n)`
-/

namespace A017011.P3146835164170616189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017012 n : ℚ) / (A017005 n : ℚ)

end

end A017011.P3146835164170616189

namespace A017011

/-- `A017012(n)/A017005(n)` -/
def P3146835164170616189.Spec : Prop :=
  ∀ n, P3146835164170616189.a n = (A017011 n : ℚ)

end A017011

/-! ## A017011.P7091001858576886644

`A017006(n)²*A017007(n)`
-/

namespace A017011.P7091001858576886644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n ^ 2 * A017007 n

end

end A017011.P7091001858576886644

namespace A017011

/-- `A017006(n)²*A017007(n)` -/
def P7091001858576886644.Spec : Prop :=
  ∀ n, P7091001858576886644.a n = A017011 n

theorem P7091001858576886644.correct : P7091001858576886644.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P7091001858576886644.a, A017011.P331536479410596699.a, A017006, A017006.P12235891629108797892.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P17594713074245910183

`A017007(n)²*A017005(n)`
-/

namespace A017011.P17594713074245910183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n ^ 2 * A017005 n

end

end A017011.P17594713074245910183

namespace A017011

/-- `A017007(n)²*A017005(n)` -/
def P17594713074245910183.Spec : Prop :=
  ∀ n, P17594713074245910183.a n = A017011 n

theorem P17594713074245910183.correct : P17594713074245910183.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P17594713074245910183.a, A017011.P331536479410596699.a, A017005, A017005.P14585839201288811509.a, A017007, A017007.P13790534247703720753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P12647609602083420101

`A017008(n)²/A017005(n)`
-/

namespace A017011.P12647609602083420101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n ^ 2 : ℚ) / (A017005 n : ℚ)

end

end A017011.P12647609602083420101

namespace A017011

/-- `A017008(n)²/A017005(n)` -/
def P12647609602083420101.Spec : Prop :=
  ∀ n, P12647609602083420101.a n = (A017011 n : ℚ)

end A017011

/-! ## A017011.P7269318887857069961

`A017009(n)²/A017007(n)`
-/

namespace A017011.P7269318887857069961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n ^ 2 : ℚ) / (A017007 n : ℚ)

end

end A017011.P7269318887857069961

namespace A017011

/-- `A017009(n)²/A017007(n)` -/
def P7269318887857069961.Spec : Prop :=
  ∀ n, P7269318887857069961.a n = (A017011 n : ℚ)

end A017011

/-! ## A017011.P7116600885009775231

`(A017017(n)-1)*A017010(n)`
-/

namespace A017011.P7116600885009775231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n - 1) * A017010 n

end

end A017011.P7116600885009775231

namespace A017011

/-- `(A017017(n)-1)*A017010(n)` -/
def P7116600885009775231.Spec : Prop :=
  ∀ n, P7116600885009775231.a n = A017011 n

theorem P7116600885009775231.correct : P7116600885009775231.Spec := by
  intro n
  simp only [A017011, Nat.add_sub_cancel, A017011.P7116600885009775231.a, A017011.P331536479410596699.a, A017010, A017010.P11727660023539664207.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017011

/-! ## A017011.P4017369721339936303

`A017006(n)²²/A017005(n)`
-/

namespace A017011.P4017369721339936303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017006 n ^ 2) ^ 2 : ℚ) / (A017005 n : ℚ)

end

end A017011.P4017369721339936303

namespace A017011

/-- `A017006(n)²²/A017005(n)` -/
def P4017369721339936303.Spec : Prop :=
  ∀ n, P4017369721339936303.a n = (A017011 n : ℚ)

end A017011

/-! ## A017011.P14341151136353352137

`A017008(n)/A017009(n)*A017008(n)²`
-/

namespace A017011.P14341151136353352137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017008 n : ℚ) / (A017009 n : ℚ) * (A017008 n ^ 2 : ℚ)

end

end A017011.P14341151136353352137

namespace A017011

/-- `A017008(n)/A017009(n)*A017008(n)²` -/
def P14341151136353352137.Spec : Prop :=
  ∀ n, P14341151136353352137.a n = (A017011 n : ℚ)

end A017011

/-! ## A017011.P3543297526066185535

`A001015(7*n+2)`
-/

namespace A017011.P3543297526066185535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (7 * n + 2)

end

end A017011.P3543297526066185535

namespace A017011

/-- `A001015(7*n+2)` -/
def P3543297526066185535.Spec : Prop :=
  ∀ n, P3543297526066185535.a n = A017011 n

end A017011

/-! ## A017011.P619088409735084758

`1-A024005(A016993(n)+1)`
-/

namespace A017011.P619088409735084758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A024005 (A016993 n + 1).toNat

end

end A017011.P619088409735084758

namespace A017011

/-- `1-A024005(A016993(n)+1)` -/
def P619088409735084758.Spec : Prop :=
  ∀ n, P619088409735084758.a n = A017011 n

end A017011

/-!
# A017012: a(n) = (7*n + 2)^8.

The programs for A017012, the canonical program `A017012.P16913134688872907831` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017012 has offset 0).

The definition of A017012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^8` (program `A017012.P16913134688872907831`, by `A017012.P16913134688872907831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017012.P16913134688872907831

`(7*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017012

/-- `(7*n+2)^8` -/
def P16913134688872907831.Spec : Prop :=
  ∀ n, (P16913134688872907831.a n : ℤ) = A017012 n

theorem P16913134688872907831.correct : P16913134688872907831.Spec := by
  intro n
  simp only [A017012]

end A017012

/-! ## A017012.P17927523358357965110

`(lcm(4, 2*n+1)-(n+2))²²²`
-/

namespace A017012.P17927523358357965110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 4 (2 * n + 1) : ℤ) - (n + 2 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017012.P17927523358357965110

namespace A017012

/-- `(lcm(4, 2*n+1)-(n+2))²²²` -/
def P17927523358357965110.Spec : Prop :=
  ∀ n, P17927523358357965110.a n = A017012 n

end A017012

/-! ## A017012.P7474979434597910874

`A017008(n)²`
-/

namespace A017012.P7474979434597910874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017008 n ^ 2

end

end A017012.P7474979434597910874

namespace A017012

/-- `A017008(n)²` -/
def P7474979434597910874.Spec : Prop :=
  ∀ n, P7474979434597910874.a n = A017012 n

theorem P7474979434597910874.correct : P7474979434597910874.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P7474979434597910874.a, A017012.P16913134688872907831.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P17318417283540105985

`A017006(n)²²`
-/

namespace A017012.P17318417283540105985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017006 n ^ 2) ^ 2

end

end A017012.P17318417283540105985

namespace A017012

/-- `A017006(n)²²` -/
def P17318417283540105985.Spec : Prop :=
  ∀ n, P17318417283540105985.a n = A017012 n

theorem P17318417283540105985.correct : P17318417283540105985.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P17318417283540105985.a, A017012.P16913134688872907831.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P11702851155255400324

`(A017005(n)^4)²`
-/

namespace A017012.P11702851155255400324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n ^ 4) ^ 2

end

end A017012.P11702851155255400324

namespace A017012

/-- `(A017005(n)^4)²` -/
def P11702851155255400324.Spec : Prop :=
  ∀ n, P11702851155255400324.a n = A017012 n

theorem P11702851155255400324.correct : P11702851155255400324.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P11702851155255400324.a, A017012.P16913134688872907831.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P2177636926941983084

`(A016993(n)+1)²²²`
-/

namespace A017012.P2177636926941983084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016993 n + 1) ^ 2) ^ 2) ^ 2

end

end A017012.P2177636926941983084

namespace A017012

/-- `(A016993(n)+1)²²²` -/
def P2177636926941983084.Spec : Prop :=
  ∀ n, P2177636926941983084.a n = A017012 n

theorem P2177636926941983084.correct : P2177636926941983084.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P2177636926941983084.a, A017012.P16913134688872907831.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P15296426452699775595

`(A008589(n)+2)²²²`
-/

namespace A017012.P15296426452699775595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008589 n + 2) ^ 2) ^ 2) ^ 2

end

end A017012.P15296426452699775595

namespace A017012

/-- `(A008589(n)+2)²²²` -/
def P15296426452699775595.Spec : Prop :=
  ∀ n, P15296426452699775595.a n = A017012 n

theorem P15296426452699775595.correct : P15296426452699775595.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P15296426452699775595.a, A017012.P16913134688872907831.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P11958470005226204753

`(1-A017017(n))²²²`
-/

namespace A017012.P11958470005226204753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017017 n) ^ 2) ^ 2) ^ 2

end

end A017012.P11958470005226204753

namespace A017012

/-- `(1-A017017(n))²²²` -/
def P11958470005226204753.Spec : Prop :=
  ∀ n, P11958470005226204753.a n = A017012 n

theorem P11958470005226204753.correct : P11958470005226204753.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P11958470005226204753.a, A017012.P16913134688872907831.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P7290018325408416574

`(2-A017029(n))²²²`
-/

namespace A017012.P7290018325408416574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017029 n) ^ 2) ^ 2) ^ 2

end

end A017012.P7290018325408416574

namespace A017012

/-- `(2-A017029(n))²²²` -/
def P7290018325408416574.Spec : Prop :=
  ∀ n, P7290018325408416574.a n = A017012 n

theorem P7290018325408416574.correct : P7290018325408416574.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P7290018325408416574.a, A017012.P16913134688872907831.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P5083746991252450229

`(A016933(n)+n)²²²`
-/

namespace A017012.P5083746991252450229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016933 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017012.P5083746991252450229

namespace A017012

/-- `(A016933(n)+n)²²²` -/
def P5083746991252450229.Spec : Prop :=
  ∀ n, P5083746991252450229.a n = A017012 n

theorem P5083746991252450229.correct : P5083746991252450229.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P5083746991252450229.a, A017012.P16913134688872907831.a, A016933, A016933.P15647137774340761443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P2618407738525515837

`(n-A017089(n))²²²`
-/

namespace A017012.P2618407738525515837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017089 n) ^ 2) ^ 2) ^ 2

end

end A017012.P2618407738525515837

namespace A017012

/-- `(n-A017089(n))²²²` -/
def P2618407738525515837.Spec : Prop :=
  ∀ n, P2618407738525515837.a n = A017012 n

theorem P2618407738525515837.correct : P2618407738525515837.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P2618407738525515837.a, A017012.P16913134688872907831.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P11409766891538762999

`(A016957(n)+n-2)²²²`
-/

namespace A017012.P11409766891538762999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016957 n + ((n : ℤ) - 2)) ^ 2) ^ 2) ^ 2

end

end A017012.P11409766891538762999

namespace A017012

/-- `(A016957(n)+n-2)²²²` -/
def P11409766891538762999.Spec : Prop :=
  ∀ n, P11409766891538762999.a n = A017012 n

theorem P11409766891538762999.correct : P11409766891538762999.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P11409766891538762999.a, A017012.P16913134688872907831.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P16733706552135060037

`(A016873(n)+2*n)²²²`
-/

namespace A017012.P16733706552135060037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016873 n + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017012.P16733706552135060037

namespace A017012

/-- `(A016873(n)+2*n)²²²` -/
def P16733706552135060037.Spec : Prop :=
  ∀ n, P16733706552135060037.a n = A017012 n

theorem P16733706552135060037.correct : P16733706552135060037.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P16733706552135060037.a, A017012.P16913134688872907831.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P9587205510315154281

`(A016969(n)+n-3)²²²`
-/

namespace A017012.P9587205510315154281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016969 n + ((n : ℤ) - 3)) ^ 2) ^ 2) ^ 2

end

end A017012.P9587205510315154281

namespace A017012

/-- `(A016969(n)+n-3)²²²` -/
def P9587205510315154281.Spec : Prop :=
  ∀ n, P9587205510315154281.a n = A017012 n

theorem P9587205510315154281.correct : P9587205510315154281.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P9587205510315154281.a, A017012.P16913134688872907831.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P17147955105996514715

`A017005(n)*A017011(n)`
-/

namespace A017012.P17147955105996514715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017011 n

end

end A017012.P17147955105996514715

namespace A017012

/-- `A017005(n)*A017011(n)` -/
def P17147955105996514715.Spec : Prop :=
  ∀ n, P17147955105996514715.a n = A017012 n

theorem P17147955105996514715.correct : P17147955105996514715.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P17147955105996514715.a, A017012.P16913134688872907831.a, A017005, A017005.P14585839201288811509.a, A017011, A017011.P331536479410596699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P17535920092122127666

`A017006(n)*A017010(n)`
-/

namespace A017012.P17535920092122127666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n * A017010 n

end

end A017012.P17535920092122127666

namespace A017012

/-- `A017006(n)*A017010(n)` -/
def P17535920092122127666.Spec : Prop :=
  ∀ n, P17535920092122127666.a n = A017012 n

theorem P17535920092122127666.correct : P17535920092122127666.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P17535920092122127666.a, A017012.P16913134688872907831.a, A017006, A017006.P12235891629108797892.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P18005159616896616541

`A017007(n)*A017009(n)`
-/

namespace A017012.P18005159616896616541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n * A017009 n

end

end A017012.P18005159616896616541

namespace A017012

/-- `A017007(n)*A017009(n)` -/
def P18005159616896616541.Spec : Prop :=
  ∀ n, P18005159616896616541.a n = A017012 n

theorem P18005159616896616541.correct : P18005159616896616541.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P18005159616896616541.a, A017012.P16913134688872907831.a, A017007, A017007.P13790534247703720753.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P17774999231041666085

`(A016789(n)+A008586(n))²²²`
-/

namespace A017012.P17774999231041666085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016789 n + A008586 n) ^ 2) ^ 2) ^ 2

end

end A017012.P17774999231041666085

namespace A017012

/-- `(A016789(n)+A008586(n))²²²` -/
def P17774999231041666085.Spec : Prop :=
  ∀ n, P17774999231041666085.a n = A017012 n

theorem P17774999231041666085.correct : P17774999231041666085.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P17774999231041666085.a, A017012.P16913134688872907831.a, A008586, A008586.P15642444062404201100.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P15395983435403721283

`(A016825(n)+A008585(n))²²²`
-/

namespace A017012.P15395983435403721283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016825 n + A008585 n) ^ 2) ^ 2) ^ 2

end

end A017012.P15395983435403721283

namespace A017012

/-- `(A016825(n)+A008585(n))²²²` -/
def P15395983435403721283.Spec : Prop :=
  ∀ n, P15395983435403721283.a n = A017012 n

theorem P15395983435403721283.correct : P15395983435403721283.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P15395983435403721283.a, A017012.P16913134688872907831.a, A008585, A008585.P13732812384316341435.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-! ## A017012.P16083077014823661728

`(A016813(n)+A016777(n))²²²`
-/

namespace A017012.P16083077014823661728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016813 n + A016777 n) ^ 2) ^ 2) ^ 2

end

end A017012.P16083077014823661728

namespace A017012

/-- `(A016813(n)+A016777(n))²²²` -/
def P16083077014823661728.Spec : Prop :=
  ∀ n, P16083077014823661728.a n = A017012 n

theorem P16083077014823661728.correct : P16083077014823661728.Spec := by
  intro n
  simp only [A017012, Nat.add_sub_cancel, A017012.P16083077014823661728.a, A017012.P16913134688872907831.a, A016777, A016777.P9931792138852554157.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017012

/-!
# A017013: a(n) = (7*n + 2)^9.

The programs for A017013, the canonical program `A017013.P2962914733928129714` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017013 has offset 0).

The definition of A017013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^9` (program `A017013.P2962914733928129714`, by `A017013.P2962914733928129714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017013.P2962914733928129714

`(7*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017013

/-- `(7*n+2)^9` -/
def P2962914733928129714.Spec : Prop :=
  ∀ n, (P2962914733928129714.a n : ℤ) = A017013 n

theorem P2962914733928129714.correct : P2962914733928129714.Spec := by
  intro n
  simp only [A017013]

end A017013

/-! ## A017013.P4677794953689534433

`sqrt(A017010(n)^3)`
-/

namespace A017013.P4677794953689534433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017010 n ^ 3 : ℝ)

end

end A017013.P4677794953689534433

namespace A017013

/-- `sqrt(A017010(n)^3)` -/
def P4677794953689534433.Spec : Prop :=
  ∀ n, P4677794953689534433.a n = (A017013 n : ℝ)

end A017013

/-! ## A017013.P10731338965829754832

`A017005(n)*A017012(n)`
-/

namespace A017013.P10731338965829754832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017012 n

end

end A017013.P10731338965829754832

namespace A017013

/-- `A017005(n)*A017012(n)` -/
def P10731338965829754832.Spec : Prop :=
  ∀ n, P10731338965829754832.a n = A017013 n

theorem P10731338965829754832.correct : P10731338965829754832.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P10731338965829754832.a, A017013.P2962914733928129714.a, A017005, A017005.P14585839201288811509.a, A017012, A017012.P16913134688872907831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P13960784613940199909

`A017006(n)*A017011(n)`
-/

namespace A017013.P13960784613940199909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n * A017011 n

end

end A017013.P13960784613940199909

namespace A017013

/-- `A017006(n)*A017011(n)` -/
def P13960784613940199909.Spec : Prop :=
  ∀ n, P13960784613940199909.a n = A017013 n

theorem P13960784613940199909.correct : P13960784613940199909.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P13960784613940199909.a, A017013.P2962914733928129714.a, A017006, A017006.P12235891629108797892.a, A017011, A017011.P331536479410596699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P11755133315144676720

`A017007(n)*A017010(n)`
-/

namespace A017013.P11755133315144676720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n * A017010 n

end

end A017013.P11755133315144676720

namespace A017013

/-- `A017007(n)*A017010(n)` -/
def P11755133315144676720.Spec : Prop :=
  ∀ n, P11755133315144676720.a n = A017013 n

theorem P11755133315144676720.correct : P11755133315144676720.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P11755133315144676720.a, A017013.P2962914733928129714.a, A017007, A017007.P13790534247703720753.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P11980789352165126945

`A017008(n)*A017009(n)`
-/

namespace A017013.P11980789352165126945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017008 n * A017009 n

end

end A017013.P11980789352165126945

namespace A017013

/-- `A017008(n)*A017009(n)` -/
def P11980789352165126945.Spec : Prop :=
  ∀ n, P11980789352165126945.a n = A017013 n

theorem P11980789352165126945.correct : P11980789352165126945.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P11980789352165126945.a, A017013.P2962914733928129714.a, A017008, A017008.P1904829175892992134.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P4508432230113182427

`A017005(n)²*A017011(n)`
-/

namespace A017013.P4508432230113182427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2 * A017011 n

end

end A017013.P4508432230113182427

namespace A017013

/-- `A017005(n)²*A017011(n)` -/
def P4508432230113182427.Spec : Prop :=
  ∀ n, P4508432230113182427.a n = A017013 n

theorem P4508432230113182427.correct : P4508432230113182427.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P4508432230113182427.a, A017013.P2962914733928129714.a, A017005, A017005.P14585839201288811509.a, A017011, A017011.P331536479410596699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P4729406095289606502

`A017006(n)²*A017009(n)`
-/

namespace A017013.P4729406095289606502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n ^ 2 * A017009 n

end

end A017013.P4729406095289606502

namespace A017013

/-- `A017006(n)²*A017009(n)` -/
def P4729406095289606502.Spec : Prop :=
  ∀ n, P4729406095289606502.a n = A017013 n

theorem P4729406095289606502.correct : P4729406095289606502.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P4729406095289606502.a, A017013.P2962914733928129714.a, A017006, A017006.P12235891629108797892.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P9831428172890337018

`A017008(n)²*A017005(n)`
-/

namespace A017013.P9831428172890337018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017008 n ^ 2 * A017005 n

end

end A017013.P9831428172890337018

namespace A017013

/-- `A017008(n)²*A017005(n)` -/
def P9831428172890337018.Spec : Prop :=
  ∀ n, P9831428172890337018.a n = A017013 n

theorem P9831428172890337018.correct : P9831428172890337018.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P9831428172890337018.a, A017013.P2962914733928129714.a, A017005, A017005.P14585839201288811509.a, A017008, A017008.P1904829175892992134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P16288009149172121861

`A017009(n)²/A017005(n)`
-/

namespace A017013.P16288009149172121861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017009 n ^ 2 : ℚ) / (A017005 n : ℚ)

end

end A017013.P16288009149172121861

namespace A017013

/-- `A017009(n)²/A017005(n)` -/
def P16288009149172121861.Spec : Prop :=
  ∀ n, P16288009149172121861.a n = (A017013 n : ℚ)

end A017013

/-! ## A017013.P11427531132895065064

`A017006(n)²²*A017005(n)`
-/

namespace A017013.P11427531132895065064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017006 n ^ 2) ^ 2 * A017005 n

end

end A017013.P11427531132895065064

namespace A017013

/-- `A017006(n)²²*A017005(n)` -/
def P11427531132895065064.Spec : Prop :=
  ∀ n, P11427531132895065064.a n = A017013 n

theorem P11427531132895065064.correct : P11427531132895065064.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P11427531132895065064.a, A017013.P2962914733928129714.a, A017005, A017005.P14585839201288811509.a, A017006, A017006.P12235891629108797892.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P16533652479447576891

`A017011(n)/A017009(n)*A017011(n)`
-/

namespace A017013.P16533652479447576891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017011 n : ℚ) / (A017009 n : ℚ) * (A017011 n : ℚ)

end

end A017013.P16533652479447576891

namespace A017013

/-- `A017011(n)/A017009(n)*A017011(n)` -/
def P16533652479447576891.Spec : Prop :=
  ∀ n, P16533652479447576891.a n = (A017013 n : ℚ)

end A017013

/-! ## A017013.P5956040481145148655

`A017005(n)*A017010(n)*A017005(n)²`
-/

namespace A017013.P5956040481145148655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n * A017010 n * A017005 n ^ 2

end

end A017013.P5956040481145148655

namespace A017013

/-- `A017005(n)*A017010(n)*A017005(n)²` -/
def P5956040481145148655.Spec : Prop :=
  ∀ n, P5956040481145148655.a n = A017013 n

theorem P5956040481145148655.correct : P5956040481145148655.Spec := by
  intro n
  simp only [A017013, Nat.add_sub_cancel, A017013.P5956040481145148655.a, A017013.P2962914733928129714.a, A017005, A017005.P14585839201288811509.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017013

/-! ## A017013.P9349355908394246638

`A001017(7*n+2)`
-/

namespace A017013.P9349355908394246638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (7 * n + 2)

end

end A017013.P9349355908394246638

namespace A017013

/-- `A001017(7*n+2)` -/
def P9349355908394246638.Spec : Prop :=
  ∀ n, P9349355908394246638.a n = A017013 n

end A017013

/-! ## A017013.P12650753958602668995

`A000578(A017005(n))*A017010(n)`
-/

namespace A017013.P12650753958602668995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017005 n).toNat * A017010 n

end

end A017013.P12650753958602668995

namespace A017013

/-- `A000578(A017005(n))*A017010(n)` -/
def P12650753958602668995.Spec : Prop :=
  ∀ n, P12650753958602668995.a n = A017013 n

end A017013

/-! ## A017013.P11322399869127228458

`A251187(A215146(n))`
-/

namespace A017013.P11322399869127228458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251187 (A215146 n).toNat

end

end A017013.P11322399869127228458

namespace A017013

/-- `A251187(A215146(n))` -/
def P11322399869127228458.Spec : Prop :=
  ∀ n, P11322399869127228458.a n = A017013 n

end A017013

/-!
# A017014: a(n) = (7*n + 2)^10.

The programs for A017014, the canonical program `A017014.P11807685030553882892` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017014 has offset 0).

The definition of A017014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+2)^10` (program `A017014.P11807685030553882892`, by `A017014.P11807685030553882892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017014.P11807685030553882892

`(7*n+2)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017014

/-- `(7*n+2)^10` -/
def P11807685030553882892.Spec : Prop :=
  ∀ n, (P11807685030553882892.a n : ℤ) = A017014 n

theorem P11807685030553882892.correct : P11807685030553882892.Spec := by
  intro n
  simp only [A017014]

end A017014

/-! ## A017014.P5665447775979539911

`A017009(n)²`
-/

namespace A017014.P5665447775979539911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017009 n ^ 2

end

end A017014.P5665447775979539911

namespace A017014

/-- `A017009(n)²` -/
def P5665447775979539911.Spec : Prop :=
  ∀ n, P5665447775979539911.a n = A017014 n

theorem P5665447775979539911.correct : P5665447775979539911.Spec := by
  intro n
  simp only [A017014, Nat.add_sub_cancel, A017014.P5665447775979539911.a, A017014.P11807685030553882892.a, A017009, A017009.P10252695915433009038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017014

/-! ## A017014.P14615870391089177871

`sqrt(A017008(n)^5)`
-/

namespace A017014.P14615870391089177871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017008 n ^ 5 : ℝ)

end

end A017014.P14615870391089177871

namespace A017014

/-- `sqrt(A017008(n)^5)` -/
def P14615870391089177871.Spec : Prop :=
  ∀ n, P14615870391089177871.a n = (A017014 n : ℝ)

end A017014

/-! ## A017014.P2457731335430673453

`A017007(n)*A017011(n)`
-/

namespace A017014.P2457731335430673453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n * A017011 n

end

end A017014.P2457731335430673453

namespace A017014

/-- `A017007(n)*A017011(n)` -/
def P2457731335430673453.Spec : Prop :=
  ∀ n, P2457731335430673453.a n = A017014 n

theorem P2457731335430673453.correct : P2457731335430673453.Spec := by
  intro n
  simp only [A017014, Nat.add_sub_cancel, A017014.P2457731335430673453.a, A017014.P11807685030553882892.a, A017007, A017007.P13790534247703720753.a, A017011, A017011.P331536479410596699.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017014

/-! ## A017014.P6721072335253710999

`A017008(n)*A017010(n)`
-/

namespace A017014.P6721072335253710999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017008 n * A017010 n

end

end A017014.P6721072335253710999

namespace A017014

/-- `A017008(n)*A017010(n)` -/
def P6721072335253710999.Spec : Prop :=
  ∀ n, P6721072335253710999.a n = A017014 n

theorem P6721072335253710999.correct : P6721072335253710999.Spec := by
  intro n
  simp only [A017014, Nat.add_sub_cancel, A017014.P6721072335253710999.a, A017014.P11807685030553882892.a, A017008, A017008.P1904829175892992134.a, A017010, A017010.P11727660023539664207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017014

/-! ## A017014.P7581685292169860078

`(A017010(n)/A017005(n))²`
-/

namespace A017014.P7581685292169860078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017010 n : ℚ) / (A017005 n : ℚ)) ^ 2

end

end A017014.P7581685292169860078

namespace A017014

/-- `(A017010(n)/A017005(n))²` -/
def P7581685292169860078.Spec : Prop :=
  ∀ n, P7581685292169860078.a n = (A017014 n : ℚ)

end A017014

/-! ## A017014.P7990596206789428874

`sqrt(sqrt(A017012(n)))*A017012(n)`
-/

namespace A017014.P7990596206789428874
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017012 n : ℝ)) * (A017012 n : ℝ)

end

end A017014.P7990596206789428874

namespace A017014

/-- `sqrt(sqrt(A017012(n)))*A017012(n)` -/
def P7990596206789428874.Spec : Prop :=
  ∀ n, P7990596206789428874.a n = (A017014 n : ℝ)

end A017014

/-! ## A017014.P16693695140891492765

`A008454(A017005(n))`
-/

namespace A017014.P16693695140891492765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017005 n).toNat

end

end A017014.P16693695140891492765

namespace A017014

/-- `A008454(A017005(n))` -/
def P16693695140891492765.Spec : Prop :=
  ∀ n, P16693695140891492765.a n = A017014 n

end A017014

/-! ## A017014.P1949010564723297438

`A008454(A008589(n)+2)`
-/

namespace A017014.P1949010564723297438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008589 n + 2).toNat

end

end A017014.P1949010564723297438

namespace A017014

/-- `A008454(A008589(n)+2)` -/
def P1949010564723297438.Spec : Prop :=
  ∀ n, P1949010564723297438.a n = A017014 n

end A017014

/-! ## A017014.P5027975393656618607

`A008454(A008588(n)+2+n)`
-/

namespace A017014.P5027975393656618607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008588 n + 2 + (n : ℤ)).toNat

end

end A017014.P5027975393656618607

namespace A017014

/-- `A008454(A008588(n)+2+n)` -/
def P5027975393656618607.Spec : Prop :=
  ∀ n, P5027975393656618607.a n = A017014 n

end A017014

/-! ## A017014.P4518276885313378542

`A008454(2*A016777(n)+n)`
-/

namespace A017014.P4518276885313378542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016777 n + (n : ℤ)).toNat

end

end A017014.P4518276885313378542

namespace A017014

/-- `A008454(2*A016777(n)+n)` -/
def P4518276885313378542.Spec : Prop :=
  ∀ n, P4518276885313378542.a n = A017014 n

end A017014

/-! ## A017014.P6465312746074926715

`A008454(2*A016813(n)-n)`
-/

namespace A017014.P6465312746074926715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016813 n - (n : ℤ)).toNat

end

end A017014.P6465312746074926715

namespace A017014

/-- `A008454(2*A016813(n)-n)` -/
def P6465312746074926715.Spec : Prop :=
  ∀ n, P6465312746074926715.a n = A017014 n

end A017014

/-! ## A017014.P3832489355726089499

`A008454(A016861(n)+2*n+1)`
-/

namespace A017014.P3832489355726089499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 n + (2 * n + 1 : ℤ)).toNat

end

end A017014.P3832489355726089499

namespace A017014

/-- `A008454(A016861(n)+2*n+1)` -/
def P3832489355726089499.Spec : Prop :=
  ∀ n, P3832489355726089499.a n = A017014 n

end A017014

/-! ## A017014.P17732659907799347138

`A008454(A008585(2*n)+n+2)`
-/

namespace A017014.P17732659907799347138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017014.P17732659907799347138

namespace A017014

/-- `A008454(A008585(2*n)+n+2)` -/
def P17732659907799347138.Spec : Prop :=
  ∀ n, P17732659907799347138.a n = A017014 n

end A017014

/-! ## A017014.P17498258681630427131

`A008454(A007310(2*n+1)+n+1)`
-/

namespace A017014.P17498258681630427131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A007310 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017014.P17498258681630427131

namespace A017014

/-- `A008454(A007310(2*n+1)+n+1)` -/
def P17498258681630427131.Spec : Prop :=
  ∀ n, P17498258681630427131.a n = A017014 n

end A017014

/-! ## A017014.P7784690791227467612

`A008454(A008586(2*n+1)-(n+2))`
-/

namespace A017014.P7784690791227467612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017014.P7784690791227467612

namespace A017014

/-- `A008454(A008586(2*n+1)-(n+2))` -/
def P7784690791227467612.Spec : Prop :=
  ∀ n, P7784690791227467612.a n = A017014 n

end A017014

/-! ## A017014.P14088102793032893747

`A008454(A016777(n)+A016777(n)+n)`
-/

namespace A017014.P14088102793032893747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 n + (A016777 n + (n : ℤ))).toNat

end

end A017014.P14088102793032893747

namespace A017014

/-- `A008454(A016777(n)+A016777(n)+n)` -/
def P14088102793032893747.Spec : Prop :=
  ∀ n, P14088102793032893747.a n = A017014 n

end A017014

/-! ## A017014.P17627645764151273837

`A008454(A016813(n)+A016813(n)-n)`
-/

namespace A017014.P17627645764151273837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 n + (A016813 n - (n : ℤ))).toNat

end

end A017014.P17627645764151273837

namespace A017014

/-- `A008454(A016813(n)+A016813(n)-n)` -/
def P17627645764151273837.Spec : Prop :=
  ∀ n, P17627645764151273837.a n = A017014 n

end A017014

/-! ## A017014.P10749174041677106859

`A008454(A016813(n)-(n-A016813(n)))`
-/

namespace A017014.P10749174041677106859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 n - ((n : ℤ) - A016813 n)).toNat

end

end A017014.P10749174041677106859

namespace A017014

/-- `A008454(A016813(n)-(n-A016813(n)))` -/
def P10749174041677106859.Spec : Prop :=
  ∀ n, P10749174041677106859.a n = A017014 n

end A017014

/-!
# A017015: 

The programs for A017015, there is no canonical definition to state claims against.
-/

/-! ## A017015.P10651832659563860142

`(7*n+2)^11`
-/

namespace A017015.P10651832659563860142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 2) ^ 11

end

end A017015.P10651832659563860142

/-! ## A017015.P3180603853969959295

`A017010(n)²/A017005(n)`
-/

namespace A017015.P3180603853969959295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017010 n ^ 2 : ℚ) / (A017005 n : ℚ)

end

end A017015.P3180603853969959295

/-! ## A017015.P15765386452609667043

`A008455(A016993(n)+1)`
-/

namespace A017015.P15765386452609667043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + 1).toNat

end

end A017015.P15765386452609667043

/-! ## A017015.P17886616974606149381

`A008455(A008588(n)+2+n)`
-/

namespace A017015.P17886616974606149381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 n + 2 + (n : ℤ)).toNat

end

end A017015.P17886616974606149381

/-! ## A017015.P16403554658786785038

`A008455(2*A016813(n)-n)`
-/

namespace A017015.P16403554658786785038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * A016813 n - (n : ℤ)).toNat

end

end A017015.P16403554658786785038

/-! ## A017015.P6734044284428766382

`A008455(A008585(2*n)+n+2)`
-/

namespace A017015.P6734044284428766382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017015.P6734044284428766382

/-! ## A017015.P11908503453673375001

`A008455(A016813(n)+A016813(n)-n)`
-/

namespace A017015.P11908503453673375001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n + (A016813 n - (n : ℤ))).toNat

end

end A017015.P11908503453673375001

/-! ## A017015.P17454382380279219904

`A008455(A016813(n)-(n-A016813(n)))`
-/

namespace A017015.P17454382380279219904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n - ((n : ℤ) - A016813 n)).toNat

end

end A017015.P17454382380279219904

/-!
# A017016: 

The programs for A017016, there is no canonical definition to state claims against.
-/

/-! ## A017016.P10566888825410482382

`(7*n+2)^12`
-/

namespace A017016.P10566888825410482382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 2) ^ 12

end

end A017016.P10566888825410482382

/-! ## A017016.P17711430294621468279

`A017010(n)²`
-/

namespace A017016.P17711430294621468279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017010 n ^ 2

end

end A017016.P17711430294621468279

/-! ## A017016.P12656723510643906014

`sqrt(A017012(n))*A017012(n)`
-/

namespace A017016.P12656723510643906014
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017012 n : ℝ) * (A017012 n : ℝ)

end

end A017016.P12656723510643906014

/-! ## A017016.P13869613617794619007

`sqrt(A017012(n)^3)`
-/

namespace A017016.P13869613617794619007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017012 n ^ 3 : ℝ)

end

end A017016.P13869613617794619007

/-! ## A017016.P154363494914492307

`A000578(7*n+2)²²`
-/

namespace A017016.P154363494914492307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (7 * n + 2) ^ 2) ^ 2

end

end A017016.P154363494914492307

/-! ## A017016.P8607543280807788228

`A008456(A008588(n)+2+n)`
-/

namespace A017016.P8607543280807788228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008588 n + 2 + (n : ℤ)).toNat

end

end A017016.P8607543280807788228

/-! ## A017016.P11177641681522486374

`A008456(2*A016777(n)+n)`
-/

namespace A017016.P11177641681522486374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * A016777 n + (n : ℤ)).toNat

end

end A017016.P11177641681522486374

/-! ## A017016.P13866233228445487893

`A008456(A004767(2*n)-(n+1))`
-/

namespace A017016.P13866233228445487893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 (2 * n) - (n + 1 : ℤ)).toNat

end

end A017016.P13866233228445487893

/-! ## A017016.P17745310722641590920

`A008456(A016777(n)+A016777(n)+n)`
-/

namespace A017016.P17745310722641590920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 n + (A016777 n + (n : ℤ))).toNat

end

end A017016.P17745310722641590920

/-!
# A017017: a(n) = 7*n + 3.

The programs for A017017, the canonical program `A017017.P16632027915442464889` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017017 has offset 0).

The definition of A017017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+3` (program `A017017.P16632027915442464889`, by `A017017.P16632027915442464889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017017.P16632027915442464889

`7*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017017

/-- `7*n+3` -/
def P16632027915442464889.Spec : Prop :=
  ∀ n, (P16632027915442464889.a n : ℤ) = A017017 n

theorem P16632027915442464889.correct : P16632027915442464889.Spec := by
  intro n
  simp only [A017017]

end A017017

/-!
# A017018: a(n) = (7*n + 3)^2.

The programs for A017018, the canonical program `A017018.P18030190463073795086` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017018 has offset 0).

The definition of A017018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)²` (program `A017018.P18030190463073795086`, by `A017018.P18030190463073795086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017018.P18030190463073795086

`(7*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017018

/-- `(7*n+3)²` -/
def P18030190463073795086.Spec : Prop :=
  ∀ n, (P18030190463073795086.a n : ℤ) = A017018 n

theorem P18030190463073795086.correct : P18030190463073795086.Spec := by
  intro n
  simp only [A017018]

end A017018

/-! ## A017018.P15303928235222141540

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=100, a(2)=289`
-/

namespace A017018.P15303928235222141540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 100, 289] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017018.P15303928235222141540

namespace A017018

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15303928235222141540.Spec : Prop :=
  ∀ n, P15303928235222141540.a n = A017018 n

theorem P15303928235222141540.correct : P15303928235222141540.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017018, Nat.add_sub_cancel, A017018.P15303928235222141540.a, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017018, Nat.add_sub_cancel, A017018.P15303928235222141540.a, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017018

/-! ## A017018.P13416138079917658995

`record[gcd(n+3, n%7)²]`
-/

namespace A017018.P13416138079917658995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (n % 7) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017018.P13416138079917658995

namespace A017018

/-- `record[gcd(n+3, n%7)²]` -/
def P13416138079917658995.Spec : Prop :=
  ∀ n, (P13416138079917658995.a n : ℤ) = A017018 n

end A017018

/-! ## A017018.P2276618217127049793

`record[(gcd(7, 1-n)+n+2)²]`
-/

namespace A017018.P2276618217127049793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (1 - (n : ℤ)) + (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017018.P2276618217127049793

namespace A017018

/-- `record[(gcd(7, 1-n)+n+2)²]` -/
def P2276618217127049793.Spec : Prop :=
  ∀ n, (P2276618217127049793.a n : ℤ) = A017018 n

end A017018

/-! ## A017018.P9910510866477131368

`sqrt(A017020(n))`
-/

namespace A017018.P9910510866477131368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017020 n : ℝ)

end

end A017018.P9910510866477131368

namespace A017018

/-- `sqrt(A017020(n))` -/
def P9910510866477131368.Spec : Prop :=
  ∀ n, P9910510866477131368.a n = (A017018 n : ℝ)

end A017018

/-! ## A017018.P3889848439285783620

`A017017(n)^2`
-/

namespace A017018.P3889848439285783620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n ^ 2

end

end A017018.P3889848439285783620

namespace A017018

/-- `A017017(n)^2` -/
def P3889848439285783620.Spec : Prop :=
  ∀ n, P3889848439285783620.a n = A017018 n

theorem P3889848439285783620.correct : P3889848439285783620.Spec := by
  intro n
  simp only [A017018, Nat.add_sub_cancel, A017018.P3889848439285783620.a, A017018.P18030190463073795086.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017018

/-! ## A017018.P15305627849973050970

`sqrt(sqrt(A017024(n)))`
-/

namespace A017018.P15305627849973050970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017024 n : ℝ))

end

end A017018.P15305627849973050970

namespace A017018

/-- `sqrt(sqrt(A017024(n)))` -/
def P15305627849973050970.Spec : Prop :=
  ∀ n, P15305627849973050970.a n = (A017018 n : ℝ)

end A017018

/-! ## A017018.P15622647078808595852

`A017022(n)^(1/3)`
-/

namespace A017018.P15622647078808595852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017022 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017018.P15622647078808595852

namespace A017018

/-- `A017022(n)^(1/3)` -/
def P15622647078808595852.Spec : Prop :=
  ∀ n, P15622647078808595852.a n = (A017018 n : ℝ)

end A017018

/-! ## A017018.P11922016429502550008

`A017019(n)^(2/3)`
-/

namespace A017018.P11922016429502550008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017019 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017018.P11922016429502550008

namespace A017018

/-- `A017019(n)^(2/3)` -/
def P11922016429502550008.Spec : Prop :=
  ∀ n, P11922016429502550008.a n = (A017018 n : ℝ)

end A017018

/-! ## A017018.P12163388720721806653

`A139608(n)+A016994(n)`
-/

namespace A017018.P12163388720721806653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A016994 n

end

end A017018.P12163388720721806653

namespace A017018

/-- `A139608(n)+A016994(n)` -/
def P12163388720721806653.Spec : Prop :=
  ∀ n, P12163388720721806653.a n = A017018 n

theorem P12163388720721806653.correct : P12163388720721806653.Spec := by
  intro n
  simp only [A017018, Nat.add_sub_cancel, A017018.P12163388720721806653.a, A017018.P18030190463073795086.a, A016994, A016994.P4148273372767867206.a, A139608, A139608.P8254575958050881308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017018

/-! ## A017018.P1737645736882288492

`A017030(n)-A147587(n)`
-/

namespace A017018.P1737645736882288492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n - A147587 n

end

end A017018.P1737645736882288492

namespace A017018

/-- `A017030(n)-A147587(n)` -/
def P1737645736882288492.Spec : Prop :=
  ∀ n, P1737645736882288492.a n = A017018 n

theorem P1737645736882288492.correct : P1737645736882288492.Spec := by
  intro n
  simp only [A017018, Nat.add_sub_cancel, A017018.P1737645736882288492.a, A017018.P18030190463073795086.a, A017030, A017030.P16321582997434012825.a, A147587, A147587.P11285010749600289520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017018

/-! ## A017018.P12472951728662672888

`A177060(n)-A016993(n)`
-/

namespace A017018.P12472951728662672888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177060 n - A016993 n

end

end A017018.P12472951728662672888

namespace A017018

/-- `A177060(n)-A016993(n)` -/
def P12472951728662672888.Spec : Prop :=
  ∀ n, P12472951728662672888.a n = A017018 n

theorem P12472951728662672888.correct : P12472951728662672888.Spec := by
  intro n
  simp only [A017018, Nat.add_sub_cancel, A017018.P12472951728662672888.a, A017018.P18030190463073795086.a, A016993, A016993.P16783903167149097063.a, A177060, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017018

/-! ## A017018.P10307763550828293316

`A177071(n)-A017017(n)`
-/

namespace A017018.P10307763550828293316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177071 n - A017017 n

end

end A017018.P10307763550828293316

namespace A017018

/-- `A177071(n)-A017017(n)` -/
def P10307763550828293316.Spec : Prop :=
  ∀ n, P10307763550828293316.a n = A017018 n

theorem P10307763550828293316.correct : P10307763550828293316.Spec := by
  intro n
  simp only [A017018, Nat.add_sub_cancel, A017018.P10307763550828293316.a, A017018.P18030190463073795086.a, A017017, A017017.P16632027915442464889.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017018

/-! ## A017018.P10338830240991536976

`A017019(n)/A017017(n)`
-/

namespace A017018.P10338830240991536976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017019 n : ℚ) / (A017017 n : ℚ)

end

end A017018.P10338830240991536976

namespace A017018

/-- `A017019(n)/A017017(n)` -/
def P10338830240991536976.Spec : Prop :=
  ∀ n, P10338830240991536976.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P17661952500849257550

`A017021(n)/A017019(n)`
-/

namespace A017018.P17661952500849257550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n : ℚ) / (A017019 n : ℚ)

end

end A017018.P17661952500849257550

namespace A017018

/-- `A017021(n)/A017019(n)` -/
def P17661952500849257550.Spec : Prop :=
  ∀ n, P17661952500849257550.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P10406142692843775658

`A017022(n)/A017020(n)`
-/

namespace A017018.P10406142692843775658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017022 n : ℚ) / (A017020 n : ℚ)

end

end A017018.P10406142692843775658

namespace A017018

/-- `A017022(n)/A017020(n)` -/
def P10406142692843775658.Spec : Prop :=
  ∀ n, P10406142692843775658.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P3444830202231063384

`A017023(n)/A017021(n)`
-/

namespace A017018.P3444830202231063384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017021 n : ℚ)

end

end A017018.P3444830202231063384

namespace A017018

/-- `A017023(n)/A017021(n)` -/
def P3444830202231063384.Spec : Prop :=
  ∀ n, P3444830202231063384.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P4418500308733280781

`A017024(n)/A017022(n)`
-/

namespace A017018.P4418500308733280781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017022 n : ℚ)

end

end A017018.P4418500308733280781

namespace A017018

/-- `A017024(n)/A017022(n)` -/
def P4418500308733280781.Spec : Prop :=
  ∀ n, P4418500308733280781.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P9777610459548830740

`A017025(n)/A017023(n)`
-/

namespace A017018.P9777610459548830740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017023 n : ℚ)

end

end A017018.P9777610459548830740

namespace A017018

/-- `A017025(n)/A017023(n)` -/
def P9777610459548830740.Spec : Prop :=
  ∀ n, P9777610459548830740.a n = (A017018 n : ℚ)

end A017018

/-! ## A017018.P929182092243451774

`A017020(n)%A177071(n)`
-/

namespace A017018.P929182092243451774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017020 n) (A177071 n)

end

end A017018.P929182092243451774

namespace A017018

/-- `A017020(n)%A177071(n)` -/
def P929182092243451774.Spec : Prop :=
  ∀ n, P929182092243451774.a n = A017018 n

end A017018

/-!
# A017019: a(n) = (7*n + 3)^3.

The programs for A017019, the canonical program `A017019.P10754008774859579240` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017019 has offset 0).

The definition of A017019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^3` (program `A017019.P10754008774859579240`, by `A017019.P10754008774859579240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017019.P10754008774859579240

`(7*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017019

/-- `(7*n+3)^3` -/
def P10754008774859579240.Spec : Prop :=
  ∀ n, (P10754008774859579240.a n : ℤ) = A017019 n

theorem P10754008774859579240.correct : P10754008774859579240.Spec := by
  intro n
  simp only [A017019]

end A017019

/-! ## A017019.P16721216832084395688

`sqrt(A017022(n))`
-/

namespace A017019.P16721216832084395688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017022 n : ℝ)

end

end A017019.P16721216832084395688

namespace A017019

/-- `sqrt(A017022(n))` -/
def P16721216832084395688.Spec : Prop :=
  ∀ n, P16721216832084395688.a n = (A017019 n : ℝ)

end A017019

/-! ## A017019.P4581737338082271019

`sqrt(A017018(n)^3)`
-/

namespace A017019.P4581737338082271019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017018 n ^ 3 : ℝ)

end

end A017019.P4581737338082271019

namespace A017019

/-- `sqrt(A017018(n)^3)` -/
def P4581737338082271019.Spec : Prop :=
  ∀ n, P4581737338082271019.a n = (A017019 n : ℝ)

end A017019

/-! ## A017019.P18379738164749524712

`-(2-A017041(n))^3`
-/

namespace A017019.P18379738164749524712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 - A017041 n) ^ 3)

end

end A017019.P18379738164749524712

namespace A017019

/-- `-(2-A017041(n))^3` -/
def P18379738164749524712.Spec : Prop :=
  ∀ n, P18379738164749524712.a n = A017019 n

theorem P18379738164749524712.correct : P18379738164749524712.Spec := by
  intro n
  simp only [A017019, Nat.add_sub_cancel, A017019.P18379738164749524712.a, A017019.P10754008774859579240.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017019

/-! ## A017019.P2484210470816835124

`A017017(n)*A017018(n)`
-/

namespace A017019.P2484210470816835124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A017018 n

end

end A017019.P2484210470816835124

namespace A017019

/-- `A017017(n)*A017018(n)` -/
def P2484210470816835124.Spec : Prop :=
  ∀ n, P2484210470816835124.a n = A017019 n

theorem P2484210470816835124.correct : P2484210470816835124.Spec := by
  intro n
  simp only [A017019, Nat.add_sub_cancel, A017019.P2484210470816835124.a, A017019.P10754008774859579240.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017019

/-! ## A017019.P2748255676772593498

`A017020(n)/A017017(n)`
-/

namespace A017019.P2748255676772593498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017020 n : ℚ) / (A017017 n : ℚ)

end

end A017019.P2748255676772593498

namespace A017019

/-- `A017020(n)/A017017(n)` -/
def P2748255676772593498.Spec : Prop :=
  ∀ n, P2748255676772593498.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P15020318809476818285

`A017021(n)/A017018(n)`
-/

namespace A017019.P15020318809476818285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n : ℚ) / (A017018 n : ℚ)

end

end A017019.P15020318809476818285

namespace A017019

/-- `A017021(n)/A017018(n)` -/
def P15020318809476818285.Spec : Prop :=
  ∀ n, P15020318809476818285.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P4230346564405805041

`A017023(n)/A017020(n)`
-/

namespace A017019.P4230346564405805041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017020 n : ℚ)

end

end A017019.P4230346564405805041

namespace A017019

/-- `A017023(n)/A017020(n)` -/
def P4230346564405805041.Spec : Prop :=
  ∀ n, P4230346564405805041.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P157778823402487572

`A017024(n)/A017021(n)`
-/

namespace A017019.P157778823402487572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017021 n : ℚ)

end

end A017019.P157778823402487572

namespace A017019

/-- `A017024(n)/A017021(n)` -/
def P157778823402487572.Spec : Prop :=
  ∀ n, P157778823402487572.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P11883665031615582100

`A017025(n)/A017022(n)`
-/

namespace A017019.P11883665031615582100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017022 n : ℚ)

end

end A017019.P11883665031615582100

namespace A017019

/-- `A017025(n)/A017022(n)` -/
def P11883665031615582100.Spec : Prop :=
  ∀ n, P11883665031615582100.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P13602166749601648705

`sqrt(A017018(n)*A017020(n))`
-/

namespace A017019.P13602166749601648705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017018 n * A017020 n : ℝ)

end

end A017019.P13602166749601648705

namespace A017019

/-- `sqrt(A017018(n)*A017020(n))` -/
def P13602166749601648705.Spec : Prop :=
  ∀ n, P13602166749601648705.a n = (A017019 n : ℝ)

end A017019

/-! ## A017019.P4766951587993378346

`A017020(n)²/A017021(n)`
-/

namespace A017019.P4766951587993378346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017020 n ^ 2 : ℚ) / (A017021 n : ℚ)

end

end A017019.P4766951587993378346

namespace A017019

/-- `A017020(n)²/A017021(n)` -/
def P4766951587993378346.Spec : Prop :=
  ∀ n, P4766951587993378346.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P4409935134961523998

`A017021(n)/A017017(n)²`
-/

namespace A017019.P4409935134961523998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n : ℚ) / (A017017 n ^ 2 : ℚ)

end

end A017019.P4409935134961523998

namespace A017019

/-- `A017021(n)/A017017(n)²` -/
def P4409935134961523998.Spec : Prop :=
  ∀ n, P4409935134961523998.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P3727015651567443451

`A017021(n)²/A017023(n)`
-/

namespace A017019.P3727015651567443451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n ^ 2 : ℚ) / (A017023 n : ℚ)

end

end A017019.P3727015651567443451

namespace A017019

/-- `A017021(n)²/A017023(n)` -/
def P3727015651567443451.Spec : Prop :=
  ∀ n, P3727015651567443451.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P16476883679697088461

`A017023(n)/A017018(n)²`
-/

namespace A017019.P16476883679697088461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017018 n ^ 2 : ℚ)

end

end A017019.P16476883679697088461

namespace A017019

/-- `A017023(n)/A017018(n)²` -/
def P16476883679697088461.Spec : Prop :=
  ∀ n, P16476883679697088461.a n = (A017019 n : ℚ)

end A017019

/-! ## A017019.P9851177903545948236

`(A017005(n)+1)*A017018(n)`
-/

namespace A017019.P9851177903545948236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n + 1) * A017018 n

end

end A017019.P9851177903545948236

namespace A017019

/-- `(A017005(n)+1)*A017018(n)` -/
def P9851177903545948236.Spec : Prop :=
  ∀ n, P9851177903545948236.a n = A017019 n

theorem P9851177903545948236.correct : P9851177903545948236.Spec := by
  intro n
  simp only [A017019, Nat.add_sub_cancel, A017019.P9851177903545948236.a, A017019.P10754008774859579240.a, A017005, A017005.P14585839201288811509.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017019

/-! ## A017019.P11089390011138080784

`(A016993(n)+2)*A017018(n)`
-/

namespace A017019.P11089390011138080784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n + 2) * A017018 n

end

end A017019.P11089390011138080784

namespace A017019

/-- `(A016993(n)+2)*A017018(n)` -/
def P11089390011138080784.Spec : Prop :=
  ∀ n, P11089390011138080784.a n = A017019 n

theorem P11089390011138080784.correct : P11089390011138080784.Spec := by
  intro n
  simp only [A017019, Nat.add_sub_cancel, A017019.P11089390011138080784.a, A017019.P10754008774859579240.a, A016993, A016993.P16783903167149097063.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017019

/-! ## A017019.P1331664696822978628

`(A017029(n)-1)*A017018(n)`
-/

namespace A017019.P1331664696822978628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n - 1) * A017018 n

end

end A017019.P1331664696822978628

namespace A017019

/-- `(A017029(n)-1)*A017018(n)` -/
def P1331664696822978628.Spec : Prop :=
  ∀ n, P1331664696822978628.a n = A017019 n

theorem P1331664696822978628.correct : P1331664696822978628.Spec := by
  intro n
  simp only [A017019, Nat.add_sub_cancel, A017019.P1331664696822978628.a, A017019.P10754008774859579240.a, A017018, A017018.P18030190463073795086.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017019

/-! ## A017019.P2613924608228823380

`A017020(n)/(A017029(n)-1)`
-/

namespace A017019.P2613924608228823380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017020 n : ℚ) / (A017029 n - 1 : ℚ)

end

end A017019.P2613924608228823380

namespace A017019

/-- `A017020(n)/(A017029(n)-1)` -/
def P2613924608228823380.Spec : Prop :=
  ∀ n, P2613924608228823380.a n = (A017019 n : ℚ)

end A017019

/-!
# A017020: a(n) = (7*n + 3)^4.

The programs for A017020, the canonical program `A017020.P7525023689054972644` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017020 has offset 0).

The definition of A017020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^4` (program `A017020.P7525023689054972644`, by `A017020.P7525023689054972644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017020.P7525023689054972644

`(7*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017020

/-- `(7*n+3)^4` -/
def P7525023689054972644.Spec : Prop :=
  ∀ n, (P7525023689054972644.a n : ℤ) = A017020 n

theorem P7525023689054972644.correct : P7525023689054972644.Spec := by
  intro n
  simp only [A017020]

end A017020

/-! ## A017020.P12831842459252527194

`(record[lcm(4, n+1)]-(n+1))²²`
-/

namespace A017020.P12831842459252527194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017020.P12831842459252527194

namespace A017020

/-- `(record[lcm(4, n+1)]-(n+1))²²` -/
def P12831842459252527194.Spec : Prop :=
  ∀ n, P12831842459252527194.a n = A017020 n

end A017020

/-! ## A017020.P9908928113294033674

`(lcm(3*n, 2*n)+n+3)²²`
-/

namespace A017020.P9908928113294033674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (3 * n) (2 * n) + (n + 3)) ^ 2) ^ 2

end

end A017020.P9908928113294033674

namespace A017020

/-- `(lcm(3*n, 2*n)+n+3)²²` -/
def P9908928113294033674.Spec : Prop :=
  ∀ n, (P9908928113294033674.a n : ℤ) = A017020 n

end A017020

/-! ## A017020.P13933675104950929397

`Δ[(2*n)²-C(n+1, 2)]²²`
-/

namespace A017020.P13933675104950929397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017020.P13933675104950929397

namespace A017020

/-- `Δ[(2*n)²-C(n+1, 2)]²²` -/
def P13933675104950929397.Spec : Prop :=
  ∀ n, P13933675104950929397.a n = A017020 n

theorem P13933675104950929397.correct : P13933675104950929397.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P13933675104950929397.f1, A017020.P13933675104950929397.a, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P8716509758843154758

`(Δ[and(2*n+1, 2*n)²]-(n+1))²²`
-/

namespace A017020.P8716509758843154758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017020.P8716509758843154758

namespace A017020

/-- `(Δ[and(2*n+1, 2*n)²]-(n+1))²²` -/
def P8716509758843154758.Spec : Prop :=
  ∀ n, P8716509758843154758.a n = A017020 n

end A017020

/-! ## A017020.P4355294756020467003

`A017018(n)²`
-/

namespace A017020.P4355294756020467003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n ^ 2

end

end A017020.P4355294756020467003

namespace A017020

/-- `A017018(n)²` -/
def P4355294756020467003.Spec : Prop :=
  ∀ n, P4355294756020467003.a n = A017020 n

theorem P4355294756020467003.correct : P4355294756020467003.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P4355294756020467003.a, A017020.P7525023689054972644.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P12182746675069258430

`sqrt(A017024(n))`
-/

namespace A017020.P12182746675069258430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017024 n : ℝ)

end

end A017020.P12182746675069258430

namespace A017020

/-- `sqrt(A017024(n))` -/
def P12182746675069258430.Spec : Prop :=
  ∀ n, P12182746675069258430.a n = (A017020 n : ℝ)

end A017020

/-! ## A017020.P8789671695601110992

`A017017(n)²²`
-/

namespace A017020.P8789671695601110992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n ^ 2) ^ 2

end

end A017020.P8789671695601110992

namespace A017020

/-- `A017017(n)²²` -/
def P8789671695601110992.Spec : Prop :=
  ∀ n, P8789671695601110992.a n = A017020 n

theorem P8789671695601110992.correct : P8789671695601110992.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P8789671695601110992.a, A017020.P7525023689054972644.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P6201672478065276562

`(A017005(n)+1)²²`
-/

namespace A017020.P6201672478065276562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017005 n + 1) ^ 2) ^ 2

end

end A017020.P6201672478065276562

namespace A017020

/-- `(A017005(n)+1)²²` -/
def P6201672478065276562.Spec : Prop :=
  ∀ n, P6201672478065276562.a n = A017020 n

theorem P6201672478065276562.correct : P6201672478065276562.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P6201672478065276562.a, A017020.P7525023689054972644.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P1494122122045845913

`(A016993(n)+2)²²`
-/

namespace A017020.P1494122122045845913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016993 n + 2) ^ 2) ^ 2

end

end A017020.P1494122122045845913

namespace A017020

/-- `(A016993(n)+2)²²` -/
def P1494122122045845913.Spec : Prop :=
  ∀ n, P1494122122045845913.a n = A017020 n

theorem P1494122122045845913.correct : P1494122122045845913.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P1494122122045845913.a, A017020.P7525023689054972644.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P9487169260546499934

`(1-A017029(n))²²`
-/

namespace A017020.P9487169260546499934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017029 n) ^ 2) ^ 2

end

end A017020.P9487169260546499934

namespace A017020

/-- `(1-A017029(n))²²` -/
def P9487169260546499934.Spec : Prop :=
  ∀ n, P9487169260546499934.a n = A017020 n

theorem P9487169260546499934.correct : P9487169260546499934.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P9487169260546499934.a, A017020.P7525023689054972644.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P3917308377243111609

`(A008589(n)+3)²²`
-/

namespace A017020.P3917308377243111609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008589 n + 3) ^ 2) ^ 2

end

end A017020.P3917308377243111609

namespace A017020

/-- `(A008589(n)+3)²²` -/
def P3917308377243111609.Spec : Prop :=
  ∀ n, P3917308377243111609.a n = A017020 n

theorem P3917308377243111609.correct : P3917308377243111609.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P3917308377243111609.a, A017020.P7525023689054972644.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P6876364817397857487

`(2-A017041(n))²²`
-/

namespace A017020.P6876364817397857487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017041 n) ^ 2) ^ 2

end

end A017020.P6876364817397857487

namespace A017020

/-- `(2-A017041(n))²²` -/
def P6876364817397857487.Spec : Prop :=
  ∀ n, P6876364817397857487.a n = A017020 n

theorem P6876364817397857487.correct : P6876364817397857487.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P6876364817397857487.a, A017020.P7525023689054972644.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P3124421869742179486

`(3-A017053(n))²²`
-/

namespace A017020.P3124421869742179486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017053 n) ^ 2) ^ 2

end

end A017020.P3124421869742179486

namespace A017020

/-- `(3-A017053(n))²²` -/
def P3124421869742179486.Spec : Prop :=
  ∀ n, P3124421869742179486.a n = A017020 n

theorem P3124421869742179486.correct : P3124421869742179486.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P3124421869742179486.a, A017020.P7525023689054972644.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P4270012917477858381

`(A016945(n)+n)²²`
-/

namespace A017020.P4270012917477858381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + (n : ℤ)) ^ 2) ^ 2

end

end A017020.P4270012917477858381

namespace A017020

/-- `(A016945(n)+n)²²` -/
def P4270012917477858381.Spec : Prop :=
  ∀ n, P4270012917477858381.a n = A017020 n

theorem P4270012917477858381.correct : P4270012917477858381.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P4270012917477858381.a, A017020.P7525023689054972644.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P5714723731375443929

`(n-A017101(n))²²`
-/

namespace A017020.P5714723731375443929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017101 n) ^ 2) ^ 2

end

end A017020.P5714723731375443929

namespace A017020

/-- `(n-A017101(n))²²` -/
def P5714723731375443929.Spec : Prop :=
  ∀ n, P5714723731375443929.a n = A017020 n

theorem P5714723731375443929.correct : P5714723731375443929.Spec := by
  intro n
  simp only [A017020, Nat.add_sub_cancel, A017020.P5714723731375443929.a, A017020.P7525023689054972644.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017020

/-! ## A017020.P14277221231055491642

`(sqrt(A017006(n))+1)²²`
-/

namespace A017020.P14277221231055491642
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017006 n : ℝ) + 1) ^ 2) ^ 2

end

end A017020.P14277221231055491642

namespace A017020

/-- `(sqrt(A017006(n))+1)²²` -/
def P14277221231055491642.Spec : Prop :=
  ∀ n, P14277221231055491642.a n = (A017020 n : ℝ)

end A017020

/-! ## A017020.P1957059069220976254

`(sqrt(A016994(n))+2)²²`
-/

namespace A017020.P1957059069220976254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016994 n : ℝ) + 2) ^ 2) ^ 2

end

end A017020.P1957059069220976254

namespace A017020

/-- `(sqrt(A016994(n))+2)²²` -/
def P1957059069220976254.Spec : Prop :=
  ∀ n, P1957059069220976254.a n = (A017020 n : ℝ)

end A017020

/-! ## A017020.P3425002431289758624

`(1-sqrt(A017030(n)))²²`
-/

namespace A017020.P3425002431289758624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017030 n : ℝ)) ^ 2) ^ 2

end

end A017020.P3425002431289758624

namespace A017020

/-- `(1-sqrt(A017030(n)))²²` -/
def P3425002431289758624.Spec : Prop :=
  ∀ n, P3425002431289758624.a n = (A017020 n : ℝ)

end A017020

/-! ## A017020.P8947101228782431094

`(2-sqrt(A017042(n)))²²`
-/

namespace A017020.P8947101228782431094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017042 n : ℝ)) ^ 2) ^ 2

end

end A017020.P8947101228782431094

namespace A017020

/-- `(2-sqrt(A017042(n)))²²` -/
def P8947101228782431094.Spec : Prop :=
  ∀ n, P8947101228782431094.a n = (A017020 n : ℝ)

end A017020

/-!
# A017021: a(n) = (7*n + 3)^5.

The programs for A017021, the canonical program `A017021.P16800180943408417700` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017021 has offset 0).

The definition of A017021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^5` (program `A017021.P16800180943408417700`, by `A017021.P16800180943408417700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017021.P16800180943408417700

`(7*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017021

/-- `(7*n+3)^5` -/
def P16800180943408417700.Spec : Prop :=
  ∀ n, (P16800180943408417700.a n : ℤ) = A017021 n

theorem P16800180943408417700.correct : P16800180943408417700.Spec := by
  intro n
  simp only [A017021]

end A017021

/-! ## A017021.P3285137034081933910

`sqrt(A017026(n))`
-/

namespace A017021.P3285137034081933910
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017026 n : ℝ)

end

end A017021.P3285137034081933910

namespace A017021

/-- `sqrt(A017026(n))` -/
def P3285137034081933910.Spec : Prop :=
  ∀ n, P3285137034081933910.a n = (A017021 n : ℝ)

end A017021

/-! ## A017021.P2510593289667330754

`sqrt(A017018(n)^5)`
-/

namespace A017021.P2510593289667330754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017018 n ^ 5 : ℝ)

end

end A017021.P2510593289667330754

namespace A017021

/-- `sqrt(A017018(n)^5)` -/
def P2510593289667330754.Spec : Prop :=
  ∀ n, P2510593289667330754.a n = (A017021 n : ℝ)

end A017021

/-! ## A017021.P3533661980405418538

`(7*n+3)*A017020(n)`
-/

namespace A017021.P3533661980405418538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) * A017020 n

end

end A017021.P3533661980405418538

namespace A017021

/-- `(7*n+3)*A017020(n)` -/
def P3533661980405418538.Spec : Prop :=
  ∀ n, P3533661980405418538.a n = A017021 n

theorem P3533661980405418538.correct : P3533661980405418538.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P3533661980405418538.a, A017021.P16800180943408417700.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P5713200965156477364

`abs((A016957(n)+n-1)^5)`
-/

namespace A017021.P5713200965156477364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016957 n + ((n : ℤ) - 1)) ^ 5|

end

end A017021.P5713200965156477364

namespace A017021

/-- `abs((A016957(n)+n-1)^5)` -/
def P5713200965156477364.Spec : Prop :=
  ∀ n, P5713200965156477364.a n = A017021 n

end A017021

/-! ## A017021.P15500232842829046006

`A017018(n)*A017019(n)`
-/

namespace A017021.P15500232842829046006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n * A017019 n

end

end A017021.P15500232842829046006

namespace A017021

/-- `A017018(n)*A017019(n)` -/
def P15500232842829046006.Spec : Prop :=
  ∀ n, P15500232842829046006.a n = A017021 n

theorem P15500232842829046006.correct : P15500232842829046006.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P15500232842829046006.a, A017021.P16800180943408417700.a, A017018, A017018.P18030190463073795086.a, A017019, A017019.P10754008774859579240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P6674338762166234828

`A017022(n)/A017017(n)`
-/

namespace A017021.P6674338762166234828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017022 n : ℚ) / (A017017 n : ℚ)

end

end A017021.P6674338762166234828

namespace A017021

/-- `A017022(n)/A017017(n)` -/
def P6674338762166234828.Spec : Prop :=
  ∀ n, P6674338762166234828.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P4690719110854891605

`A017023(n)/A017018(n)`
-/

namespace A017021.P4690719110854891605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017018 n : ℚ)

end

end A017021.P4690719110854891605

namespace A017021

/-- `A017023(n)/A017018(n)` -/
def P4690719110854891605.Spec : Prop :=
  ∀ n, P4690719110854891605.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P9961318188440475565

`A017024(n)/A017019(n)`
-/

namespace A017021.P9961318188440475565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017019 n : ℚ)

end

end A017021.P9961318188440475565

namespace A017021

/-- `A017024(n)/A017019(n)` -/
def P9961318188440475565.Spec : Prop :=
  ∀ n, P9961318188440475565.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P2154226472284463904

`A017025(n)/A017020(n)`
-/

namespace A017021.P2154226472284463904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017020 n : ℚ)

end

end A017021.P2154226472284463904

namespace A017021

/-- `A017025(n)/A017020(n)` -/
def P2154226472284463904.Spec : Prop :=
  ∀ n, P2154226472284463904.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P18308394010177708057

`A017017(n)²*A017019(n)`
-/

namespace A017021.P18308394010177708057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n ^ 2 * A017019 n

end

end A017021.P18308394010177708057

namespace A017021

/-- `A017017(n)²*A017019(n)` -/
def P18308394010177708057.Spec : Prop :=
  ∀ n, P18308394010177708057.a n = A017021 n

theorem P18308394010177708057.correct : P18308394010177708057.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P18308394010177708057.a, A017021.P16800180943408417700.a, A017017, A017017.P16632027915442464889.a, A017019, A017019.P10754008774859579240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P16142311556866638230

`A017018(n)²*A017017(n)`
-/

namespace A017021.P16142311556866638230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n ^ 2 * A017017 n

end

end A017021.P16142311556866638230

namespace A017021

/-- `A017018(n)²*A017017(n)` -/
def P16142311556866638230.Spec : Prop :=
  ∀ n, P16142311556866638230.a n = A017021 n

theorem P16142311556866638230.correct : P16142311556866638230.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P16142311556866638230.a, A017021.P16800180943408417700.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P15076038078812021516

`A017020(n)²/A017019(n)`
-/

namespace A017021.P15076038078812021516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017020 n ^ 2 : ℚ) / (A017019 n : ℚ)

end

end A017021.P15076038078812021516

namespace A017021

/-- `A017020(n)²/A017019(n)` -/
def P15076038078812021516.Spec : Prop :=
  ∀ n, P15076038078812021516.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P6122342884067239950

`A017023(n)/A017017(n)²`
-/

namespace A017021.P6122342884067239950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017017 n ^ 2 : ℚ)

end

end A017021.P6122342884067239950

namespace A017021

/-- `A017023(n)/A017017(n)²` -/
def P6122342884067239950.Spec : Prop :=
  ∀ n, P6122342884067239950.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P15717367876471209155

`A017025(n)/A017018(n)²`
-/

namespace A017021.P15717367876471209155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017018 n ^ 2 : ℚ)

end

end A017021.P15717367876471209155

namespace A017021

/-- `A017025(n)/A017018(n)²` -/
def P15717367876471209155.Spec : Prop :=
  ∀ n, P15717367876471209155.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P18430457986721902381

`A017025(n)/A017017(n)²²`
-/

namespace A017021.P18430457986721902381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / ((A017017 n ^ 2) ^ 2 : ℚ)

end

end A017021.P18430457986721902381

namespace A017021

/-- `A017025(n)/A017017(n)²²` -/
def P18430457986721902381.Spec : Prop :=
  ∀ n, P18430457986721902381.a n = (A017021 n : ℚ)

end A017021

/-! ## A017021.P3611001964521336859

`(A017005(n)+1)*A017018(n)²`
-/

namespace A017021.P3611001964521336859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n + 1) * A017018 n ^ 2

end

end A017021.P3611001964521336859

namespace A017021

/-- `(A017005(n)+1)*A017018(n)²` -/
def P3611001964521336859.Spec : Prop :=
  ∀ n, P3611001964521336859.a n = A017021 n

theorem P3611001964521336859.correct : P3611001964521336859.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P3611001964521336859.a, A017021.P16800180943408417700.a, A017005, A017005.P14585839201288811509.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P9814833106149648113

`(A016993(n)+2)*A017018(n)²`
-/

namespace A017021.P9814833106149648113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016993 n + 2) * A017018 n ^ 2

end

end A017021.P9814833106149648113

namespace A017021

/-- `(A016993(n)+2)*A017018(n)²` -/
def P9814833106149648113.Spec : Prop :=
  ∀ n, P9814833106149648113.a n = A017021 n

theorem P9814833106149648113.correct : P9814833106149648113.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P9814833106149648113.a, A017021.P16800180943408417700.a, A016993, A016993.P16783903167149097063.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P8132621830739456978

`(A017029(n)-1)*A017018(n)²`
-/

namespace A017021.P8132621830739456978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n - 1) * A017018 n ^ 2

end

end A017021.P8132621830739456978

namespace A017021

/-- `(A017029(n)-1)*A017018(n)²` -/
def P8132621830739456978.Spec : Prop :=
  ∀ n, P8132621830739456978.a n = A017021 n

theorem P8132621830739456978.correct : P8132621830739456978.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P8132621830739456978.a, A017021.P16800180943408417700.a, A017018, A017018.P18030190463073795086.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-! ## A017021.P14177026003598774720

`(A017041(n)-2)*A017018(n)²`
-/

namespace A017021.P14177026003598774720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n - 2) * A017018 n ^ 2

end

end A017021.P14177026003598774720

namespace A017021

/-- `(A017041(n)-2)*A017018(n)²` -/
def P14177026003598774720.Spec : Prop :=
  ∀ n, P14177026003598774720.a n = A017021 n

theorem P14177026003598774720.correct : P14177026003598774720.Spec := by
  intro n
  simp only [A017021, Nat.add_sub_cancel, A017021.P14177026003598774720.a, A017021.P16800180943408417700.a, A017018, A017018.P18030190463073795086.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017021

/-!
# A017022: a(n) = (7*n + 3)^6.

The programs for A017022, the canonical program `A017022.P2489529084199933273` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017022 has offset 0).

The definition of A017022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^6` (program `A017022.P2489529084199933273`, by `A017022.P2489529084199933273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017022.P2489529084199933273

`(7*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017022

/-- `(7*n+3)^6` -/
def P2489529084199933273.Spec : Prop :=
  ∀ n, (P2489529084199933273.a n : ℤ) = A017022 n

theorem P2489529084199933273.correct : P2489529084199933273.Spec := by
  intro n
  simp only [A017022]

end A017022

/-! ## A017022.P17801475640974780350

`A017019(n)²`
-/

namespace A017022.P17801475640974780350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n ^ 2

end

end A017022.P17801475640974780350

namespace A017022

/-- `A017019(n)²` -/
def P17801475640974780350.Spec : Prop :=
  ∀ n, P17801475640974780350.a n = A017022 n

theorem P17801475640974780350.correct : P17801475640974780350.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P17801475640974780350.a, A017022.P2489529084199933273.a, A017019, A017019.P10754008774859579240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P17642082360477650448

`(A017017(n)^3)²`
-/

namespace A017022.P17642082360477650448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n ^ 3) ^ 2

end

end A017022.P17642082360477650448

namespace A017022

/-- `(A017017(n)^3)²` -/
def P17642082360477650448.Spec : Prop :=
  ∀ n, P17642082360477650448.a n = A017022 n

theorem P17642082360477650448.correct : P17642082360477650448.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P17642082360477650448.a, A017022.P2489529084199933273.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P17246567235435801314

`sqrt(A017020(n)^3)`
-/

namespace A017022.P17246567235435801314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017020 n ^ 3 : ℝ)

end

end A017022.P17246567235435801314

namespace A017022

/-- `sqrt(A017020(n)^3)` -/
def P17246567235435801314.Spec : Prop :=
  ∀ n, P17246567235435801314.a n = (A017022 n : ℝ)

end A017022

/-! ## A017022.P7141081072100623561

`((A016945(n)+n)^3)²`
-/

namespace A017022.P7141081072100623561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + (n : ℤ)) ^ 3) ^ 2

end

end A017022.P7141081072100623561

namespace A017022

/-- `((A016945(n)+n)^3)²` -/
def P7141081072100623561.Spec : Prop :=
  ∀ n, P7141081072100623561.a n = A017022 n

theorem P7141081072100623561.correct : P7141081072100623561.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P7141081072100623561.a, A017022.P2489529084199933273.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P4614670842293003344

`(7*n+3)*A017021(n)`
-/

namespace A017022.P4614670842293003344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) * A017021 n

end

end A017022.P4614670842293003344

namespace A017022

/-- `(7*n+3)*A017021(n)` -/
def P4614670842293003344.Spec : Prop :=
  ∀ n, P4614670842293003344.a n = A017022 n

theorem P4614670842293003344.correct : P4614670842293003344.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P4614670842293003344.a, A017022.P2489529084199933273.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P12355316771335763732

`A017018(n)*A017020(n)`
-/

namespace A017022.P12355316771335763732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n * A017020 n

end

end A017022.P12355316771335763732

namespace A017022

/-- `A017018(n)*A017020(n)` -/
def P12355316771335763732.Spec : Prop :=
  ∀ n, P12355316771335763732.a n = A017022 n

theorem P12355316771335763732.correct : P12355316771335763732.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P12355316771335763732.a, A017022.P2489529084199933273.a, A017018, A017018.P18030190463073795086.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P5874974525127654854

`A017023(n)/A017017(n)`
-/

namespace A017022.P5874974525127654854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017023 n : ℚ) / (A017017 n : ℚ)

end

end A017022.P5874974525127654854

namespace A017022

/-- `A017023(n)/A017017(n)` -/
def P5874974525127654854.Spec : Prop :=
  ∀ n, P5874974525127654854.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P15515782328029226163

`A017024(n)/A017018(n)`
-/

namespace A017022.P15515782328029226163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017018 n : ℚ)

end

end A017022.P15515782328029226163

namespace A017022

/-- `A017024(n)/A017018(n)` -/
def P15515782328029226163.Spec : Prop :=
  ∀ n, P15515782328029226163.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P2884739034261286173

`(A017017(n)*A017018(n))²`
-/

namespace A017022.P2884739034261286173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n * A017018 n) ^ 2

end

end A017022.P2884739034261286173

namespace A017022

/-- `(A017017(n)*A017018(n))²` -/
def P2884739034261286173.Spec : Prop :=
  ∀ n, P2884739034261286173.a n = A017022 n

theorem P2884739034261286173.correct : P2884739034261286173.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P2884739034261286173.a, A017022.P2489529084199933273.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P120688462222879619

`A017017(n)²*A017020(n)`
-/

namespace A017022.P120688462222879619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n ^ 2 * A017020 n

end

end A017022.P120688462222879619

namespace A017022

/-- `A017017(n)²*A017020(n)` -/
def P120688462222879619.Spec : Prop :=
  ∀ n, P120688462222879619.a n = A017022 n

theorem P120688462222879619.correct : P120688462222879619.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P120688462222879619.a, A017022.P2489529084199933273.a, A017017, A017017.P16632027915442464889.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P2442210578780456780

`(A017021(n)/A017018(n))²`
-/

namespace A017022.P2442210578780456780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017021 n : ℚ) / (A017018 n : ℚ)) ^ 2

end

end A017022.P2442210578780456780

namespace A017022

/-- `(A017021(n)/A017018(n))²` -/
def P2442210578780456780.Spec : Prop :=
  ∀ n, P2442210578780456780.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P177525836781835913

`A017021(n)²/A017020(n)`
-/

namespace A017022.P177525836781835913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n ^ 2 : ℚ) / (A017020 n : ℚ)

end

end A017022.P177525836781835913

namespace A017022

/-- `A017021(n)²/A017020(n)` -/
def P177525836781835913.Spec : Prop :=
  ∀ n, P177525836781835913.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P10132504134625494995

`(A017023(n)/A017020(n))²`
-/

namespace A017022.P10132504134625494995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017023 n : ℚ) / (A017020 n : ℚ)) ^ 2

end

end A017022.P10132504134625494995

namespace A017022

/-- `(A017023(n)/A017020(n))²` -/
def P10132504134625494995.Spec : Prop :=
  ∀ n, P10132504134625494995.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P8780742803982132696

`A017024(n)/A017017(n)²`
-/

namespace A017022.P8780742803982132696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017017 n ^ 2 : ℚ)

end

end A017022.P8780742803982132696

namespace A017022

/-- `A017024(n)/A017017(n)²` -/
def P8780742803982132696.Spec : Prop :=
  ∀ n, P8780742803982132696.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P14464314423013780785

`(A017024(n)/A017021(n))²`
-/

namespace A017022.P14464314423013780785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017024 n : ℚ) / (A017021 n : ℚ)) ^ 2

end

end A017022.P14464314423013780785

namespace A017022

/-- `(A017024(n)/A017021(n))²` -/
def P14464314423013780785.Spec : Prop :=
  ∀ n, P14464314423013780785.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P8643214235809704140

`(A017023(n)/A017018(n)²)²`
-/

namespace A017022.P8643214235809704140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017023 n : ℚ) / (A017018 n ^ 2 : ℚ)) ^ 2

end

end A017022.P8643214235809704140

namespace A017022

/-- `(A017023(n)/A017018(n)²)²` -/
def P8643214235809704140.Spec : Prop :=
  ∀ n, P8643214235809704140.a n = (A017022 n : ℚ)

end A017022

/-! ## A017022.P1262138418363070801

`A017021(n)*A017029(n)-A017021(n)`
-/

namespace A017022.P1262138418363070801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017021 n * A017029 n - A017021 n

end

end A017022.P1262138418363070801

namespace A017022

/-- `A017021(n)*A017029(n)-A017021(n)` -/
def P1262138418363070801.Spec : Prop :=
  ∀ n, P1262138418363070801.a n = A017022 n

theorem P1262138418363070801.correct : P1262138418363070801.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P1262138418363070801.a, A017022.P2489529084199933273.a, A017021, A017021.P16800180943408417700.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-! ## A017022.P10957526191074408657

`A017020(n)*A177071(n)-A017021(n)`
-/

namespace A017022.P10957526191074408657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n * A177071 n - A017021 n

end

end A017022.P10957526191074408657

namespace A017022

/-- `A017020(n)*A177071(n)-A017021(n)` -/
def P10957526191074408657.Spec : Prop :=
  ∀ n, P10957526191074408657.a n = A017022 n

theorem P10957526191074408657.correct : P10957526191074408657.Spec := by
  intro n
  simp only [A017022, Nat.add_sub_cancel, A017022.P10957526191074408657.a, A017022.P2489529084199933273.a, A017020, A017020.P7525023689054972644.a, A017021, A017021.P16800180943408417700.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017022

/-!
# A017023: a(n) = (7*n + 3)^7.

The programs for A017023, the canonical program `A017023.P18133174295992016438` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017023 has offset 0).

The definition of A017023 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^7` (program `A017023.P18133174295992016438`, by `A017023.P18133174295992016438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017023.P18133174295992016438

`(7*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017023

/-- `(7*n+3)^7` -/
def P18133174295992016438.Spec : Prop :=
  ∀ n, (P18133174295992016438.a n : ℤ) = A017023 n

theorem P18133174295992016438.correct : P18133174295992016438.Spec := by
  intro n
  simp only [A017023]

end A017023

/-! ## A017023.P53011375644399869

`record[(n+3)^gcd(7, n)]`
-/

namespace A017023.P53011375644399869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017023.P53011375644399869

namespace A017023

/-- `record[(n+3)^gcd(7, n)]` -/
def P53011375644399869.Spec : Prop :=
  ∀ n, (P53011375644399869.a n : ℤ) = A017023 n

end A017023

/-! ## A017023.P13816484282712922682

`(7*n+3)*A017022(n)`
-/

namespace A017023.P13816484282712922682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) * A017022 n

end

end A017023.P13816484282712922682

namespace A017023

/-- `(7*n+3)*A017022(n)` -/
def P13816484282712922682.Spec : Prop :=
  ∀ n, P13816484282712922682.a n = A017023 n

theorem P13816484282712922682.correct : P13816484282712922682.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P13816484282712922682.a, A017023.P18133174295992016438.a, A017022, A017022.P2489529084199933273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P6113224924776826382

`(7*n+3)²*A017021(n)`
-/

namespace A017023.P6113224924776826382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 3) ^ 2 : ℤ) * A017021 n

end

end A017023.P6113224924776826382

namespace A017023

/-- `(7*n+3)²*A017021(n)` -/
def P6113224924776826382.Spec : Prop :=
  ∀ n, P6113224924776826382.a n = A017023 n

theorem P6113224924776826382.correct : P6113224924776826382.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P6113224924776826382.a, A017023.P18133174295992016438.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P10033223091309095513

`A017019(n)*A017020(n)`
-/

namespace A017023.P10033223091309095513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n * A017020 n

end

end A017023.P10033223091309095513

namespace A017023

/-- `A017019(n)*A017020(n)` -/
def P10033223091309095513.Spec : Prop :=
  ∀ n, P10033223091309095513.a n = A017023 n

theorem P10033223091309095513.correct : P10033223091309095513.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P10033223091309095513.a, A017023.P18133174295992016438.a, A017019, A017019.P10754008774859579240.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P10253526431826449957

`A017024(n)/A017017(n)`
-/

namespace A017023.P10253526431826449957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017024 n : ℚ) / (A017017 n : ℚ)

end

end A017023.P10253526431826449957

namespace A017023

/-- `A017024(n)/A017017(n)` -/
def P10253526431826449957.Spec : Prop :=
  ∀ n, P10253526431826449957.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P17275299109630428848

`A017025(n)/A017018(n)`
-/

namespace A017023.P17275299109630428848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017018 n : ℚ)

end

end A017023.P17275299109630428848

namespace A017023

/-- `A017025(n)/A017018(n)` -/
def P17275299109630428848.Spec : Prop :=
  ∀ n, P17275299109630428848.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P7665799971847580048

`A017018(n)²*A017019(n)`
-/

namespace A017023.P7665799971847580048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n ^ 2 * A017019 n

end

end A017023.P7665799971847580048

namespace A017023

/-- `A017018(n)²*A017019(n)` -/
def P7665799971847580048.Spec : Prop :=
  ∀ n, P7665799971847580048.a n = A017023 n

theorem P7665799971847580048.correct : P7665799971847580048.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P7665799971847580048.a, A017023.P18133174295992016438.a, A017018, A017018.P18030190463073795086.a, A017019, A017019.P10754008774859579240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P8539071175844264417

`A017019(n)²*A017017(n)`
-/

namespace A017023.P8539071175844264417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n ^ 2 * A017017 n

end

end A017023.P8539071175844264417

namespace A017023

/-- `A017019(n)²*A017017(n)` -/
def P8539071175844264417.Spec : Prop :=
  ∀ n, P8539071175844264417.a n = A017023 n

theorem P8539071175844264417.correct : P8539071175844264417.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P8539071175844264417.a, A017023.P18133174295992016438.a, A017017, A017017.P16632027915442464889.a, A017019, A017019.P10754008774859579240.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P312936168000957148

`A017020(n)²/A017017(n)`
-/

namespace A017023.P312936168000957148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017020 n ^ 2 : ℚ) / (A017017 n : ℚ)

end

end A017023.P312936168000957148

namespace A017023

/-- `A017020(n)²/A017017(n)` -/
def P312936168000957148.Spec : Prop :=
  ∀ n, P312936168000957148.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P624677211569745750

`A017021(n)²/A017019(n)`
-/

namespace A017023.P624677211569745750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n ^ 2 : ℚ) / (A017019 n : ℚ)

end

end A017023.P624677211569745750

namespace A017023

/-- `A017021(n)²/A017019(n)` -/
def P624677211569745750.Spec : Prop :=
  ∀ n, P624677211569745750.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P10181572785043425660

`A017025(n)/A017017(n)²`
-/

namespace A017023.P10181572785043425660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017017 n ^ 2 : ℚ)

end

end A017023.P10181572785043425660

namespace A017023

/-- `A017025(n)/A017017(n)²` -/
def P10181572785043425660.Spec : Prop :=
  ∀ n, P10181572785043425660.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P15088791867080546872

`A017018(n)²²/A017017(n)`
-/

namespace A017023.P15088791867080546872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017018 n ^ 2) ^ 2 : ℚ) / (A017017 n : ℚ)

end

end A017023.P15088791867080546872

namespace A017023

/-- `A017018(n)²²/A017017(n)` -/
def P15088791867080546872.Spec : Prop :=
  ∀ n, P15088791867080546872.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P3198288103104187912

`A017020(n)²/sqrt(A017018(n))`
-/

namespace A017023.P3198288103104187912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017020 n ^ 2 : ℝ) / Real.sqrt (A017018 n : ℝ)

end

end A017023.P3198288103104187912

namespace A017023

/-- `A017020(n)²/sqrt(A017018(n))` -/
def P3198288103104187912.Spec : Prop :=
  ∀ n, P3198288103104187912.a n = (A017023 n : ℝ)

end A017023

/-! ## A017023.P9644705015518131781

`A017021(n)*A177071(n)-A017022(n)`
-/

namespace A017023.P9644705015518131781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017021 n * A177071 n - A017022 n

end

end A017023.P9644705015518131781

namespace A017023

/-- `A017021(n)*A177071(n)-A017022(n)` -/
def P9644705015518131781.Spec : Prop :=
  ∀ n, P9644705015518131781.a n = A017023 n

theorem P9644705015518131781.correct : P9644705015518131781.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P9644705015518131781.a, A017023.P18133174295992016438.a, A017021, A017021.P16800180943408417700.a, A017022, A017022.P2489529084199933273.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P8058973247050669818

`A017022(n)*A177071(n)-A017024(n)`
-/

namespace A017023.P8058973247050669818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017022 n * A177071 n - A017024 n

end

end A017023.P8058973247050669818

namespace A017023

/-- `A017022(n)*A177071(n)-A017024(n)` -/
def P8058973247050669818.Spec : Prop :=
  ∀ n, P8058973247050669818.a n = A017023 n

theorem P8058973247050669818.correct : P8058973247050669818.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P8058973247050669818.a, A017023.P18133174295992016438.a, A017022, A017022.P2489529084199933273.a, A017024, A017024.P2212575647737769412.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P3501788585837064579

`(A017025(n)+A017024(n))/A177071(n)`
-/

namespace A017023.P3501788585837064579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n + A017024 n : ℚ) / (A177071 n : ℚ)

end

end A017023.P3501788585837064579

namespace A017023

/-- `(A017025(n)+A017024(n))/A177071(n)` -/
def P3501788585837064579.Spec : Prop :=
  ∀ n, P3501788585837064579.a n = (A017023 n : ℚ)

theorem P3501788585837064579.correct : P3501788585837064579.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P3501788585837064579.a, A017023.P18133174295992016438.a, A017024, A017024.P2212575647737769412.a, A017025, A017025.P6558059996332535772.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P12353823430632446822

`A017017(n)*A017018(n)*A017020(n)`
-/

namespace A017023.P12353823430632446822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A017018 n * A017020 n

end

end A017023.P12353823430632446822

namespace A017023

/-- `A017017(n)*A017018(n)*A017020(n)` -/
def P12353823430632446822.Spec : Prop :=
  ∀ n, P12353823430632446822.a n = A017023 n

theorem P12353823430632446822.correct : P12353823430632446822.Spec := by
  intro n
  simp only [A017023, Nat.add_sub_cancel, A017023.P12353823430632446822.a, A017023.P18133174295992016438.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017023

/-! ## A017023.P14888794066233151901

`A017025(n)/(A177071(n)-A017017(n))`
-/

namespace A017023.P14888794066233151901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A177071 n - A017017 n : ℚ)

end

end A017023.P14888794066233151901

namespace A017023

/-- `A017025(n)/(A177071(n)-A017017(n))` -/
def P14888794066233151901.Spec : Prop :=
  ∀ n, P14888794066233151901.a n = (A017023 n : ℚ)

end A017023

/-! ## A017023.P17613098149898153640

`A017018(n)/A017019(n)*A017024(n)`
-/

namespace A017023.P17613098149898153640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017018 n : ℚ) / (A017019 n : ℚ) * (A017024 n : ℚ)

end

end A017023.P17613098149898153640

namespace A017023

/-- `A017018(n)/A017019(n)*A017024(n)` -/
def P17613098149898153640.Spec : Prop :=
  ∀ n, P17613098149898153640.a n = (A017023 n : ℚ)

end A017023

/-!
# A017024: a(n) = (7*n + 3)^8.

The programs for A017024, the canonical program `A017024.P2212575647737769412` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017024 has offset 0).

The definition of A017024 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^8` (program `A017024.P2212575647737769412`, by `A017024.P2212575647737769412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017024.P2212575647737769412

`(7*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017024

/-- `(7*n+3)^8` -/
def P2212575647737769412.Spec : Prop :=
  ∀ n, (P2212575647737769412.a n : ℤ) = A017024 n

theorem P2212575647737769412.correct : P2212575647737769412.Spec := by
  intro n
  simp only [A017024]

end A017024

/-! ## A017024.P15637406555761651215

`(lcm(4, 2*n+1)-(n+1))²²²`
-/

namespace A017024.P15637406555761651215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 4 (2 * n + 1) : ℤ) - (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017024.P15637406555761651215

namespace A017024

/-- `(lcm(4, 2*n+1)-(n+1))²²²` -/
def P15637406555761651215.Spec : Prop :=
  ∀ n, P15637406555761651215.a n = A017024 n

end A017024

/-! ## A017024.P9946608302511760950

`A017020(n)²`
-/

namespace A017024.P9946608302511760950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n ^ 2

end

end A017024.P9946608302511760950

namespace A017024

/-- `A017020(n)²` -/
def P9946608302511760950.Spec : Prop :=
  ∀ n, P9946608302511760950.a n = A017024 n

theorem P9946608302511760950.correct : P9946608302511760950.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P9946608302511760950.a, A017024.P2212575647737769412.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P6431255432276085624

`A017018(n)²²`
-/

namespace A017024.P6431255432276085624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017018 n ^ 2) ^ 2

end

end A017024.P6431255432276085624

namespace A017024

/-- `A017018(n)²²` -/
def P6431255432276085624.Spec : Prop :=
  ∀ n, P6431255432276085624.a n = A017024 n

theorem P6431255432276085624.correct : P6431255432276085624.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P6431255432276085624.a, A017024.P2212575647737769412.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P7102540217702371480

`(A017017(n)^4)²`
-/

namespace A017024.P7102540217702371480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n ^ 4) ^ 2

end

end A017024.P7102540217702371480

namespace A017024

/-- `(A017017(n)^4)²` -/
def P7102540217702371480.Spec : Prop :=
  ∀ n, P7102540217702371480.a n = A017024 n

theorem P7102540217702371480.correct : P7102540217702371480.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P7102540217702371480.a, A017024.P2212575647737769412.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P15102845794214616535

`(A017005(n)+1)²²²`
-/

namespace A017024.P15102845794214616535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017005 n + 1) ^ 2) ^ 2) ^ 2

end

end A017024.P15102845794214616535

namespace A017024

/-- `(A017005(n)+1)²²²` -/
def P15102845794214616535.Spec : Prop :=
  ∀ n, P15102845794214616535.a n = A017024 n

theorem P15102845794214616535.correct : P15102845794214616535.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P15102845794214616535.a, A017024.P2212575647737769412.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P17130531893306501927

`(A016993(n)+2)²²²`
-/

namespace A017024.P17130531893306501927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016993 n + 2) ^ 2) ^ 2) ^ 2

end

end A017024.P17130531893306501927

namespace A017024

/-- `(A016993(n)+2)²²²` -/
def P17130531893306501927.Spec : Prop :=
  ∀ n, P17130531893306501927.a n = A017024 n

theorem P17130531893306501927.correct : P17130531893306501927.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P17130531893306501927.a, A017024.P2212575647737769412.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P4183374832733962795

`(1-A017029(n))²²²`
-/

namespace A017024.P4183374832733962795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017029 n) ^ 2) ^ 2) ^ 2

end

end A017024.P4183374832733962795

namespace A017024

/-- `(1-A017029(n))²²²` -/
def P4183374832733962795.Spec : Prop :=
  ∀ n, P4183374832733962795.a n = A017024 n

theorem P4183374832733962795.correct : P4183374832733962795.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P4183374832733962795.a, A017024.P2212575647737769412.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P16884961296898473922

`(2-A017041(n))²²²`
-/

namespace A017024.P16884961296898473922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017041 n) ^ 2) ^ 2) ^ 2

end

end A017024.P16884961296898473922

namespace A017024

/-- `(2-A017041(n))²²²` -/
def P16884961296898473922.Spec : Prop :=
  ∀ n, P16884961296898473922.a n = A017024 n

theorem P16884961296898473922.correct : P16884961296898473922.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P16884961296898473922.a, A017024.P2212575647737769412.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P14281988126946085631

`(A016945(n)+n)²²²`
-/

namespace A017024.P14281988126946085631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017024.P14281988126946085631

namespace A017024

/-- `(A016945(n)+n)²²²` -/
def P14281988126946085631.Spec : Prop :=
  ∀ n, P14281988126946085631.a n = A017024 n

theorem P14281988126946085631.correct : P14281988126946085631.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P14281988126946085631.a, A017024.P2212575647737769412.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P16625575074335140879

`(n-A017101(n))²²²`
-/

namespace A017024.P16625575074335140879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017101 n) ^ 2) ^ 2) ^ 2

end

end A017024.P16625575074335140879

namespace A017024

/-- `(n-A017101(n))²²²` -/
def P16625575074335140879.Spec : Prop :=
  ∀ n, P16625575074335140879.a n = A017024 n

theorem P16625575074335140879.correct : P16625575074335140879.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P16625575074335140879.a, A017024.P2212575647737769412.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P4790803853851610701

`(A016921(n)+n+2)²²²`
-/

namespace A017024.P4790803853851610701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016921 n + (n + 2 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017024.P4790803853851610701

namespace A017024

/-- `(A016921(n)+n+2)²²²` -/
def P4790803853851610701.Spec : Prop :=
  ∀ n, P4790803853851610701.a n = A017024 n

theorem P4790803853851610701.correct : P4790803853851610701.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P4790803853851610701.a, A017024.P2212575647737769412.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P14753094019747270284

`A017017(n)*A017023(n)`
-/

namespace A017024.P14753094019747270284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A017023 n

end

end A017024.P14753094019747270284

namespace A017024

/-- `A017017(n)*A017023(n)` -/
def P14753094019747270284.Spec : Prop :=
  ∀ n, P14753094019747270284.a n = A017024 n

theorem P14753094019747270284.correct : P14753094019747270284.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P14753094019747270284.a, A017024.P2212575647737769412.a, A017017, A017017.P16632027915442464889.a, A017023, A017023.P18133174295992016438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P4077126147267240634

`A017018(n)*A017022(n)`
-/

namespace A017024.P4077126147267240634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n * A017022 n

end

end A017024.P4077126147267240634

namespace A017024

/-- `A017018(n)*A017022(n)` -/
def P4077126147267240634.Spec : Prop :=
  ∀ n, P4077126147267240634.a n = A017024 n

theorem P4077126147267240634.correct : P4077126147267240634.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P4077126147267240634.a, A017024.P2212575647737769412.a, A017018, A017018.P18030190463073795086.a, A017022, A017022.P2489529084199933273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P9124159862698374069

`A017019(n)*A017021(n)`
-/

namespace A017024.P9124159862698374069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n * A017021 n

end

end A017024.P9124159862698374069

namespace A017024

/-- `A017019(n)*A017021(n)` -/
def P9124159862698374069.Spec : Prop :=
  ∀ n, P9124159862698374069.a n = A017024 n

theorem P9124159862698374069.correct : P9124159862698374069.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P9124159862698374069.a, A017024.P2212575647737769412.a, A017019, A017019.P10754008774859579240.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P14676364903859929099

`A017025(n)/A017017(n)`
-/

namespace A017024.P14676364903859929099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017025 n : ℚ) / (A017017 n : ℚ)

end

end A017024.P14676364903859929099

namespace A017024

/-- `A017025(n)/A017017(n)` -/
def P14676364903859929099.Spec : Prop :=
  ∀ n, P14676364903859929099.a n = (A017024 n : ℚ)

end A017024

/-! ## A017024.P11227323832142501907

`(A017023(n)/A017019(n))²`
-/

namespace A017024.P11227323832142501907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017023 n : ℚ) / (A017019 n : ℚ)) ^ 2

end

end A017024.P11227323832142501907

namespace A017024

/-- `(A017023(n)/A017019(n))²` -/
def P11227323832142501907.Spec : Prop :=
  ∀ n, P11227323832142501907.a n = (A017024 n : ℚ)

end A017024

/-! ## A017024.P973166228642976915

`(A139608(n)+A016994(n))²²`
-/

namespace A017024.P973166228642976915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A139608 n + A016994 n) ^ 2) ^ 2

end

end A017024.P973166228642976915

namespace A017024

/-- `(A139608(n)+A016994(n))²²` -/
def P973166228642976915.Spec : Prop :=
  ∀ n, P973166228642976915.a n = A017024 n

theorem P973166228642976915.correct : P973166228642976915.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P973166228642976915.a, A017024.P2212575647737769412.a, A016994, A016994.P4148273372767867206.a, A139608, A139608.P8254575958050881308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P6371766620663665591

`(A017030(n)-A147587(n))²²`
-/

namespace A017024.P6371766620663665591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017030 n - A147587 n) ^ 2) ^ 2

end

end A017024.P6371766620663665591

namespace A017024

/-- `(A017030(n)-A147587(n))²²` -/
def P6371766620663665591.Spec : Prop :=
  ∀ n, P6371766620663665591.a n = A017024 n

theorem P6371766620663665591.correct : P6371766620663665591.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P6371766620663665591.a, A017024.P2212575647737769412.a, A017030, A017030.P16321582997434012825.a, A147587, A147587.P11285010749600289520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-! ## A017024.P11793449804964475566

`(A016993(n)-A177060(n))²²`
-/

namespace A017024.P11793449804964475566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016993 n - A177060 n) ^ 2) ^ 2

end

end A017024.P11793449804964475566

namespace A017024

/-- `(A016993(n)-A177060(n))²²` -/
def P11793449804964475566.Spec : Prop :=
  ∀ n, P11793449804964475566.a n = A017024 n

theorem P11793449804964475566.correct : P11793449804964475566.Spec := by
  intro n
  simp only [A017024, Nat.add_sub_cancel, A017024.P11793449804964475566.a, A017024.P2212575647737769412.a, A016993, A016993.P16783903167149097063.a, A177060, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017024

/-!
# A017025: a(n) = (7*n + 3)^9.

The programs for A017025, the canonical program `A017025.P6558059996332535772` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017025 has offset 0).

The definition of A017025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^9` (program `A017025.P6558059996332535772`, by `A017025.P6558059996332535772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017025.P6558059996332535772

`(7*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017025

/-- `(7*n+3)^9` -/
def P6558059996332535772.Spec : Prop :=
  ∀ n, (P6558059996332535772.a n : ℤ) = A017025 n

theorem P6558059996332535772.correct : P6558059996332535772.Spec := by
  intro n
  simp only [A017025]

end A017025

/-! ## A017025.P11361323996462988010

`sqrt(A017022(n)^3)`
-/

namespace A017025.P11361323996462988010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017022 n ^ 3 : ℝ)

end

end A017025.P11361323996462988010

namespace A017025

/-- `sqrt(A017022(n)^3)` -/
def P11361323996462988010.Spec : Prop :=
  ∀ n, P11361323996462988010.a n = (A017025 n : ℝ)

end A017025

/-! ## A017025.P16870484054015547745

`(7*n+3)*A017024(n)`
-/

namespace A017025.P16870484054015547745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 3 : ℤ) * A017024 n

end

end A017025.P16870484054015547745

namespace A017025

/-- `(7*n+3)*A017024(n)` -/
def P16870484054015547745.Spec : Prop :=
  ∀ n, P16870484054015547745.a n = A017025 n

theorem P16870484054015547745.correct : P16870484054015547745.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P16870484054015547745.a, A017025.P6558059996332535772.a, A017024, A017024.P2212575647737769412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P2029011037042413766

`A017018(n)*A017023(n)`
-/

namespace A017025.P2029011037042413766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n * A017023 n

end

end A017025.P2029011037042413766

namespace A017025

/-- `A017018(n)*A017023(n)` -/
def P2029011037042413766.Spec : Prop :=
  ∀ n, P2029011037042413766.a n = A017025 n

theorem P2029011037042413766.correct : P2029011037042413766.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P2029011037042413766.a, A017025.P6558059996332535772.a, A017018, A017018.P18030190463073795086.a, A017023, A017023.P18133174295992016438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P241612093275239768

`A017019(n)*A017022(n)`
-/

namespace A017025.P241612093275239768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n * A017022 n

end

end A017025.P241612093275239768

namespace A017025

/-- `A017019(n)*A017022(n)` -/
def P241612093275239768.Spec : Prop :=
  ∀ n, P241612093275239768.a n = A017025 n

theorem P241612093275239768.correct : P241612093275239768.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P241612093275239768.a, A017025.P6558059996332535772.a, A017019, A017019.P10754008774859579240.a, A017022, A017022.P2489529084199933273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P5314059101121872167

`A017020(n)*A017021(n)`
-/

namespace A017025.P5314059101121872167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n * A017021 n

end

end A017025.P5314059101121872167

namespace A017025

/-- `A017020(n)*A017021(n)` -/
def P5314059101121872167.Spec : Prop :=
  ∀ n, P5314059101121872167.a n = A017025 n

theorem P5314059101121872167.correct : P5314059101121872167.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P5314059101121872167.a, A017025.P6558059996332535772.a, A017020, A017020.P7525023689054972644.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P9304611261386762956

`A017017(n)²*A017023(n)`
-/

namespace A017025.P9304611261386762956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n ^ 2 * A017023 n

end

end A017025.P9304611261386762956

namespace A017025

/-- `A017017(n)²*A017023(n)` -/
def P9304611261386762956.Spec : Prop :=
  ∀ n, P9304611261386762956.a n = A017025 n

theorem P9304611261386762956.correct : P9304611261386762956.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P9304611261386762956.a, A017025.P6558059996332535772.a, A017017, A017017.P16632027915442464889.a, A017023, A017023.P18133174295992016438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P37805519589142929

`A017018(n)²*A017021(n)`
-/

namespace A017025.P37805519589142929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n ^ 2 * A017021 n

end

end A017025.P37805519589142929

namespace A017025

/-- `A017018(n)²*A017021(n)` -/
def P37805519589142929.Spec : Prop :=
  ∀ n, P37805519589142929.a n = A017025 n

theorem P37805519589142929.correct : P37805519589142929.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P37805519589142929.a, A017025.P6558059996332535772.a, A017018, A017018.P18030190463073795086.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P14951810346595283823

`A017020(n)²*A017017(n)`
-/

namespace A017025.P14951810346595283823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n ^ 2 * A017017 n

end

end A017025.P14951810346595283823

namespace A017025

/-- `A017020(n)²*A017017(n)` -/
def P14951810346595283823.Spec : Prop :=
  ∀ n, P14951810346595283823.a n = A017025 n

theorem P14951810346595283823.correct : P14951810346595283823.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P14951810346595283823.a, A017025.P6558059996332535772.a, A017017, A017017.P16632027915442464889.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P2410228369361224331

`A017021(n)²/A017017(n)`
-/

namespace A017025.P2410228369361224331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n ^ 2 : ℚ) / (A017017 n : ℚ)

end

end A017025.P2410228369361224331

namespace A017025

/-- `A017021(n)²/A017017(n)` -/
def P2410228369361224331.Spec : Prop :=
  ∀ n, P2410228369361224331.a n = (A017025 n : ℚ)

end A017025

/-! ## A017025.P1323301394012150960

`A017018(n)²²*A017017(n)`
-/

namespace A017025.P1323301394012150960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017018 n ^ 2) ^ 2 * A017017 n

end

end A017025.P1323301394012150960

namespace A017025

/-- `A017018(n)²²*A017017(n)` -/
def P1323301394012150960.Spec : Prop :=
  ∀ n, P1323301394012150960.a n = A017025 n

theorem P1323301394012150960.correct : P1323301394012150960.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P1323301394012150960.a, A017025.P6558059996332535772.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P3414798062850367898

`A017020(n)²*sqrt(A017018(n))`
-/

namespace A017025.P3414798062850367898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017020 n ^ 2 : ℝ) * Real.sqrt (A017018 n : ℝ)

end

end A017025.P3414798062850367898

namespace A017025

/-- `A017020(n)²*sqrt(A017018(n))` -/
def P3414798062850367898.Spec : Prop :=
  ∀ n, P3414798062850367898.a n = (A017025 n : ℝ)

end A017025

/-! ## A017025.P4040478348811707476

`A017023(n)*A177071(n)-A017024(n)`
-/

namespace A017025.P4040478348811707476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017023 n * A177071 n - A017024 n

end

end A017025.P4040478348811707476

namespace A017025

/-- `A017023(n)*A177071(n)-A017024(n)` -/
def P4040478348811707476.Spec : Prop :=
  ∀ n, P4040478348811707476.a n = A017025 n

theorem P4040478348811707476.correct : P4040478348811707476.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P4040478348811707476.a, A017025.P6558059996332535772.a, A017023, A017023.P18133174295992016438.a, A017024, A017024.P2212575647737769412.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P974090721918747631

`(A177071(n)-A017017(n))*A017023(n)`
-/

namespace A017025.P974090721918747631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177071 n - A017017 n) * A017023 n

end

end A017025.P974090721918747631

namespace A017025

/-- `(A177071(n)-A017017(n))*A017023(n)` -/
def P974090721918747631.Spec : Prop :=
  ∀ n, P974090721918747631.a n = A017025 n

theorem P974090721918747631.correct : P974090721918747631.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P974090721918747631.a, A017025.P6558059996332535772.a, A017017, A017017.P16632027915442464889.a, A017023, A017023.P18133174295992016438.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P13104741169000524205

`A017017(n)*A017019(n)*A017021(n)`
-/

namespace A017025.P13104741169000524205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A017019 n * A017021 n

end

end A017025.P13104741169000524205

namespace A017025

/-- `A017017(n)*A017019(n)*A017021(n)` -/
def P13104741169000524205.Spec : Prop :=
  ∀ n, P13104741169000524205.a n = A017025 n

theorem P13104741169000524205.correct : P13104741169000524205.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P13104741169000524205.a, A017025.P6558059996332535772.a, A017017, A017017.P16632027915442464889.a, A017019, A017019.P10754008774859579240.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P12309044379460272386

`A017018(n)*A017019(n)*A017020(n)`
-/

namespace A017025.P12309044379460272386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017018 n * A017019 n * A017020 n

end

end A017025.P12309044379460272386

namespace A017025

/-- `A017018(n)*A017019(n)*A017020(n)` -/
def P12309044379460272386.Spec : Prop :=
  ∀ n, P12309044379460272386.a n = A017025 n

theorem P12309044379460272386.correct : P12309044379460272386.Spec := by
  intro n
  simp only [A017025, Nat.add_sub_cancel, A017025.P12309044379460272386.a, A017025.P6558059996332535772.a, A017018, A017018.P18030190463073795086.a, A017019, A017019.P10754008774859579240.a, A017020, A017020.P7525023689054972644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017025

/-! ## A017025.P14918025357049474116

`A017018(n)*A017024(n)/A017017(n)`
-/

namespace A017025.P14918025357049474116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017018 n * A017024 n : ℚ) / (A017017 n : ℚ)

end

end A017025.P14918025357049474116

namespace A017025

/-- `A017018(n)*A017024(n)/A017017(n)` -/
def P14918025357049474116.Spec : Prop :=
  ∀ n, P14918025357049474116.a n = (A017025 n : ℚ)

end A017025

/-! ## A017025.P102491897130704409

`A017019(n)*A017023(n)/A017017(n)`
-/

namespace A017025.P102491897130704409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017019 n * A017023 n : ℚ) / (A017017 n : ℚ)

end

end A017025.P102491897130704409

namespace A017025

/-- `A017019(n)*A017023(n)/A017017(n)` -/
def P102491897130704409.Spec : Prop :=
  ∀ n, P102491897130704409.a n = (A017025 n : ℚ)

end A017025

/-! ## A017025.P3673201564777606894

`A017021(n)/A017019(n)*A017023(n)`
-/

namespace A017025.P3673201564777606894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017021 n : ℚ) / (A017019 n : ℚ) * (A017023 n : ℚ)

end

end A017025.P3673201564777606894

namespace A017025

/-- `A017021(n)/A017019(n)*A017023(n)` -/
def P3673201564777606894.Spec : Prop :=
  ∀ n, P3673201564777606894.a n = (A017025 n : ℚ)

end A017025

/-!
# A017026: a(n) = (7*n + 3)^10.

The programs for A017026, the canonical program `A017026.P11394133493075578880` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017026 has offset 0).

The definition of A017026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+3)^10` (program `A017026.P11394133493075578880`, by `A017026.P11394133493075578880.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017026.P11394133493075578880

`(7*n+3)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017026

/-- `(7*n+3)^10` -/
def P11394133493075578880.Spec : Prop :=
  ∀ n, (P11394133493075578880.a n : ℤ) = A017026 n

theorem P11394133493075578880.correct : P11394133493075578880.Spec := by
  intro n
  simp only [A017026]

end A017026

/-! ## A017026.P3721759422643661551

`A017021(n)²`
-/

namespace A017026.P3721759422643661551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017021 n ^ 2

end

end A017026.P3721759422643661551

namespace A017026

/-- `A017021(n)²` -/
def P3721759422643661551.Spec : Prop :=
  ∀ n, P3721759422643661551.a n = A017026 n

theorem P3721759422643661551.correct : P3721759422643661551.Spec := by
  intro n
  simp only [A017026, Nat.add_sub_cancel, A017026.P3721759422643661551.a, A017026.P11394133493075578880.a, A017021, A017021.P16800180943408417700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017026

/-! ## A017026.P10126903794737221834

`sqrt(A017020(n)^5)`
-/

namespace A017026.P10126903794737221834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017020 n ^ 5 : ℝ)

end

end A017026.P10126903794737221834

namespace A017026

/-- `sqrt(A017020(n)^5)` -/
def P10126903794737221834.Spec : Prop :=
  ∀ n, P10126903794737221834.a n = (A017026 n : ℝ)

end A017026

/-! ## A017026.P2051911325623812868

`A017017(n)*A017025(n)`
-/

namespace A017026.P2051911325623812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n * A017025 n

end

end A017026.P2051911325623812868

namespace A017026

/-- `A017017(n)*A017025(n)` -/
def P2051911325623812868.Spec : Prop :=
  ∀ n, P2051911325623812868.a n = A017026 n

theorem P2051911325623812868.correct : P2051911325623812868.Spec := by
  intro n
  simp only [A017026, Nat.add_sub_cancel, A017026.P2051911325623812868.a, A017026.P11394133493075578880.a, A017017, A017017.P16632027915442464889.a, A017025, A017025.P6558059996332535772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017026

/-! ## A017026.P2663097823819658999

`A017019(n)*A017023(n)`
-/

namespace A017026.P2663097823819658999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017019 n * A017023 n

end

end A017026.P2663097823819658999

namespace A017026

/-- `A017019(n)*A017023(n)` -/
def P2663097823819658999.Spec : Prop :=
  ∀ n, P2663097823819658999.a n = A017026 n

theorem P2663097823819658999.correct : P2663097823819658999.Spec := by
  intro n
  simp only [A017026, Nat.add_sub_cancel, A017026.P2663097823819658999.a, A017026.P11394133493075578880.a, A017019, A017019.P10754008774859579240.a, A017023, A017023.P18133174295992016438.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017026

/-! ## A017026.P8775696698616943157

`A017020(n)*A017022(n)`
-/

namespace A017026.P8775696698616943157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017020 n * A017022 n

end

end A017026.P8775696698616943157

namespace A017026

/-- `A017020(n)*A017022(n)` -/
def P8775696698616943157.Spec : Prop :=
  ∀ n, P8775696698616943157.a n = A017026 n

theorem P8775696698616943157.correct : P8775696698616943157.Spec := by
  intro n
  simp only [A017026, Nat.add_sub_cancel, A017026.P8775696698616943157.a, A017026.P11394133493075578880.a, A017020, A017020.P7525023689054972644.a, A017022, A017022.P2489529084199933273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017026

/-! ## A017026.P15621444358435677897

`(A017018(n)²*A017017(n))²`
-/

namespace A017026.P15621444358435677897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017018 n ^ 2 * A017017 n) ^ 2

end

end A017026.P15621444358435677897

namespace A017026

/-- `(A017018(n)²*A017017(n))²` -/
def P15621444358435677897.Spec : Prop :=
  ∀ n, P15621444358435677897.a n = A017026 n

theorem P15621444358435677897.correct : P15621444358435677897.Spec := by
  intro n
  simp only [A017026, Nat.add_sub_cancel, A017026.P15621444358435677897.a, A017026.P11394133493075578880.a, A017017, A017017.P16632027915442464889.a, A017018, A017018.P18030190463073795086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017026

/-! ## A017026.P4749771471437474457

`sqrt(sqrt(A017024(n)))*A017024(n)`
-/

namespace A017026.P4749771471437474457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017024 n : ℝ)) * (A017024 n : ℝ)

end

end A017026.P4749771471437474457

namespace A017026

/-- `sqrt(sqrt(A017024(n)))*A017024(n)` -/
def P4749771471437474457.Spec : Prop :=
  ∀ n, P4749771471437474457.a n = (A017026 n : ℝ)

end A017026

/-! ## A017026.P7136558625510850011

`A008454(A017017(n))`
-/

namespace A017026.P7136558625510850011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017017 n).toNat

end

end A017026.P7136558625510850011

namespace A017026

/-- `A008454(A017017(n))` -/
def P7136558625510850011.Spec : Prop :=
  ∀ n, P7136558625510850011.a n = A017026 n

end A017026

/-! ## A017026.P3647573732524828956

`A008454(A016969(n)-2+n)`
-/

namespace A017026.P3647573732524828956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n - 2 + (n : ℤ)).toNat

end

end A017026.P3647573732524828956

namespace A017026

/-- `A008454(A016969(n)-2+n)` -/
def P3647573732524828956.Spec : Prop :=
  ∀ n, P3647573732524828956.a n = A017026 n

end A017026

/-! ## A017026.P15332109511056104686

`A008454(n-(2-A016969(n)))`
-/

namespace A017026.P15332109511056104686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 ((n : ℤ) - (2 - A016969 n)).toNat

end

end A017026.P15332109511056104686

namespace A017026

/-- `A008454(n-(2-A016969(n)))` -/
def P15332109511056104686.Spec : Prop :=
  ∀ n, P15332109511056104686.a n = A017026 n

end A017026

/-! ## A017026.P7756295615707783939

`A008454(A008585(2*n+1)+n)`
-/

namespace A017026.P7756295615707783939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n + 1) + (n : ℤ)).toNat

end

end A017026.P7756295615707783939

namespace A017026

/-- `A008454(A008585(2*n+1)+n)` -/
def P7756295615707783939.Spec : Prop :=
  ∀ n, P7756295615707783939.a n = A017026 n

end A017026

/-! ## A017026.P10439915464426016722

`A008454(A016777(2*n)+n+2)`
-/

namespace A017026.P10439915464426016722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n) + (n + 2 : ℤ)).toNat

end

end A017026.P10439915464426016722

namespace A017026

/-- `A008454(A016777(2*n)+n+2)` -/
def P10439915464426016722.Spec : Prop :=
  ∀ n, P10439915464426016722.a n = A017026 n

end A017026

/-! ## A017026.P9827571951978652712

`A008454(A007310(2*n+1)+n+2)`
-/

namespace A017026.P9827571951978652712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A007310 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017026.P9827571951978652712

namespace A017026

/-- `A008454(A007310(2*n+1)+n+2)` -/
def P9827571951978652712.Spec : Prop :=
  ∀ n, P9827571951978652712.a n = A017026 n

end A017026

/-! ## A017026.P4649978435638365154

`A008454(A008586(2*n+1)-(n+1))`
-/

namespace A017026.P4649978435638365154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A017026.P4649978435638365154

namespace A017026

/-- `A008454(A008586(2*n+1)-(n+1))` -/
def P4649978435638365154.Spec : Prop :=
  ∀ n, P4649978435638365154.a n = A017026 n

end A017026

/-! ## A017026.P11667826359449358264

`A008454(A016813(2*n+1)-(n+2))`
-/

namespace A017026.P11667826359449358264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017026.P11667826359449358264

namespace A017026

/-- `A008454(A016813(2*n+1)-(n+2))` -/
def P11667826359449358264.Spec : Prop :=
  ∀ n, P11667826359449358264.a n = A017026 n

end A017026

/-!
# A017027: 

The programs for A017027, there is no canonical definition to state claims against.
-/

/-! ## A017027.P8932475344409252777

`(7*n+3)^11`
-/

namespace A017027.P8932475344409252777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 3) ^ 11

end

end A017027.P8932475344409252777

/-! ## A017027.P11014598952470168583

`sqrt(A017018(n)^11)`
-/

namespace A017027.P11014598952470168583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017018 n ^ 11 : ℝ)

end

end A017027.P11014598952470168583

/-! ## A017027.P17917735978205092562

`A008455(A016993(n)+2)`
-/

namespace A017027.P17917735978205092562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + 2).toNat

end

end A017027.P17917735978205092562

/-! ## A017027.P12815760791225386601

`A008455(A016969(n)-2+n)`
-/

namespace A017027.P12815760791225386601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n - 2 + (n : ℤ)).toNat

end

end A017027.P12815760791225386601

/-! ## A017027.P9226888976937722128

`A008455(n-(2-A016969(n)))`
-/

namespace A017027.P9226888976937722128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 ((n : ℤ) - (2 - A016969 n)).toNat

end

end A017027.P9226888976937722128

/-! ## A017027.P10852262267527035531

`A008455(A008585(2*n+1)+n)`
-/

namespace A017027.P10852262267527035531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + (n : ℤ)).toNat

end

end A017027.P10852262267527035531

/-! ## A017027.P9762594110927502359

`A008455(A016813(2*n+1)-(n+2))`
-/

namespace A017027.P9762594110927502359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017027.P9762594110927502359

/-!
# A017028: 

The programs for A017028, there is no canonical definition to state claims against.
-/

/-! ## A017028.P4167946875187745514

`(7*n+3)^12`
-/

namespace A017028.P4167946875187745514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 3) ^ 12

end

end A017028.P4167946875187745514

/-! ## A017028.P13192404735624569140

`A017022(n)²`
-/

namespace A017028.P13192404735624569140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017022 n ^ 2

end

end A017028.P13192404735624569140

/-! ## A017028.P11124236294486395643

`sqrt(A017024(n))*A017024(n)`
-/

namespace A017028.P11124236294486395643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017024 n : ℝ) * (A017024 n : ℝ)

end

end A017028.P11124236294486395643

/-! ## A017028.P11533491886927668868

`(A017017(n)*A017018(n))²²`
-/

namespace A017028.P11533491886927668868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017017 n * A017018 n) ^ 2) ^ 2

end

end A017028.P11533491886927668868

/-! ## A017028.P14341618258166460618

`sqrt(A017024(n)^3)`
-/

namespace A017028.P14341618258166460618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017024 n ^ 3 : ℝ)

end

end A017028.P14341618258166460618

/-! ## A017028.P4310927469864160137

`A008456(3*(n+1+n)+n)`
-/

namespace A017028.P4310927469864160137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (3 * (n + 1 + n) + n)

end

end A017028.P4310927469864160137

/-! ## A017028.P2164283139037011381

`A000578(A017005(n)+1)²²`
-/

namespace A017028.P2164283139037011381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017005 n + 1).toNat ^ 2) ^ 2

end

end A017028.P2164283139037011381

/-!
# A017029: a(n) = 7*n + 4.

The programs for A017029, the canonical program `A017029.P18040034652068019793` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017029 has offset 0).

The definition of A017029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+4` (program `A017029.P18040034652068019793`, by `A017029.P18040034652068019793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017029.P18040034652068019793

`7*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017029

/-- `7*n+4` -/
def P18040034652068019793.Spec : Prop :=
  ∀ n, (P18040034652068019793.a n : ℤ) = A017029 n

theorem P18040034652068019793.correct : P18040034652068019793.Spec := by
  intro n
  simp only [A017029]

end A017029

/-!
# A017030: a(n) = (7*n + 4)^2.

The programs for A017030, the canonical program `A017030.P16321582997434012825` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017030 has offset 0).

The definition of A017030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)²` (program `A017030.P16321582997434012825`, by `A017030.P16321582997434012825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017030.P16321582997434012825

`(7*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017030

/-- `(7*n+4)²` -/
def P16321582997434012825.Spec : Prop :=
  ∀ n, (P16321582997434012825.a n : ℤ) = A017030 n

theorem P16321582997434012825.correct : P16321582997434012825.Spec := by
  intro n
  simp only [A017030]

end A017030

/-! ## A017030.P9410271821919083153

`record[(gcd(7, n)+n-3)²]`
-/

namespace A017030.P9410271821919083153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 7 n : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017030.P9410271821919083153

namespace A017030

/-- `record[(gcd(7, n)+n-3)²]` -/
def P9410271821919083153.Spec : Prop :=
  ∀ n, P9410271821919083153.a n = A017030 n

end A017030

/-! ## A017030.P7049437097862686607

`sqrt(A017032(n))`
-/

namespace A017030.P7049437097862686607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017032 n : ℝ)

end

end A017030.P7049437097862686607

namespace A017030

/-- `sqrt(A017032(n))` -/
def P7049437097862686607.Spec : Prop :=
  ∀ n, P7049437097862686607.a n = (A017030 n : ℝ)

end A017030

/-! ## A017030.P2698027256390734406

`A017029(n)^2`
-/

namespace A017030.P2698027256390734406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n ^ 2

end

end A017030.P2698027256390734406

namespace A017030

/-- `A017029(n)^2` -/
def P2698027256390734406.Spec : Prop :=
  ∀ n, P2698027256390734406.a n = A017030 n

theorem P2698027256390734406.correct : P2698027256390734406.Spec := by
  intro n
  simp only [A017030, Nat.add_sub_cancel, A017030.P2698027256390734406.a, A017030.P16321582997434012825.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017030

/-! ## A017030.P6427999624859754575

`sqrt(sqrt(A017036(n)))`
-/

namespace A017030.P6427999624859754575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017036 n : ℝ))

end

end A017030.P6427999624859754575

namespace A017030

/-- `sqrt(sqrt(A017036(n)))` -/
def P6427999624859754575.Spec : Prop :=
  ∀ n, P6427999624859754575.a n = (A017030 n : ℝ)

end A017030

/-! ## A017030.P9269131663032239527

`A017034(n)^(1/3)`
-/

namespace A017030.P9269131663032239527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017034 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017030.P9269131663032239527

namespace A017030

/-- `A017034(n)^(1/3)` -/
def P9269131663032239527.Spec : Prop :=
  ∀ n, P9269131663032239527.a n = (A017030 n : ℝ)

end A017030

/-! ## A017030.P16032726717646566090

`A017031(n)^(2/3)`
-/

namespace A017030.P16032726717646566090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017031 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017030.P16032726717646566090

namespace A017030

/-- `A017031(n)^(2/3)` -/
def P16032726717646566090.Spec : Prop :=
  ∀ n, P16032726717646566090.a n = (A017030 n : ℝ)

end A017030

/-! ## A017030.P10766369937881570516

`abs(3-(A016945(n)+1+n)²)+3`
-/

namespace A017030.P10766369937881570516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A016945 n + 1 + (n : ℤ)) ^ 2| + 3

end

end A017030.P10766369937881570516

namespace A017030

/-- `abs(3-(A016945(n)+1+n)²)+3` -/
def P10766369937881570516.Spec : Prop :=
  ∀ n, P10766369937881570516.a n = A017030 n

end A017030

/-! ## A017030.P16583621756351325327

`A147587(n)+A017018(n)`
-/

namespace A017030.P16583621756351325327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n + A017018 n

end

end A017030.P16583621756351325327

namespace A017030

/-- `A147587(n)+A017018(n)` -/
def P16583621756351325327.Spec : Prop :=
  ∀ n, P16583621756351325327.a n = A017030 n

theorem P16583621756351325327.correct : P16583621756351325327.Spec := by
  intro n
  simp only [A017030, Nat.add_sub_cancel, A017030.P16583621756351325327.a, A017030.P16321582997434012825.a, A017018, A017018.P18030190463073795086.a, A147587, A147587.P11285010749600289520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017030

/-! ## A017030.P11820010827274938982

`A177071(n)+A017029(n)`
-/

namespace A017030.P11820010827274938982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177071 n + A017029 n

end

end A017030.P11820010827274938982

namespace A017030

/-- `A177071(n)+A017029(n)` -/
def P11820010827274938982.Spec : Prop :=
  ∀ n, P11820010827274938982.a n = A017030 n

theorem P11820010827274938982.correct : P11820010827274938982.Spec := by
  intro n
  simp only [A017030, Nat.add_sub_cancel, A017030.P11820010827274938982.a, A017030.P16321582997434012825.a, A017029, A017029.P18040034652068019793.a, A177071, A177071.P183334433867899260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017030

/-! ## A017030.P9233999179322987713

`A177060(n)+A017053(n)`
-/

namespace A017030.P9233999179322987713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177060 n + A017053 n

end

end A017030.P9233999179322987713

namespace A017030

/-- `A177060(n)+A017053(n)` -/
def P9233999179322987713.Spec : Prop :=
  ∀ n, P9233999179322987713.a n = A017030 n

theorem P9233999179322987713.correct : P9233999179322987713.Spec := by
  intro n
  simp only [A017030, Nat.add_sub_cancel, A017030.P9233999179322987713.a, A017030.P16321582997434012825.a, A017053, A017053.P7458143650627556555.a, A177060, A177060.P646170667136550175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017030

/-! ## A017030.P10009780169297376175

`A017031(n)/A017029(n)`
-/

namespace A017030.P10009780169297376175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017031 n : ℚ) / (A017029 n : ℚ)

end

end A017030.P10009780169297376175

namespace A017030

/-- `A017031(n)/A017029(n)` -/
def P10009780169297376175.Spec : Prop :=
  ∀ n, P10009780169297376175.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P1696991012615470683

`A017033(n)/A017031(n)`
-/

namespace A017030.P1696991012615470683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n : ℚ) / (A017031 n : ℚ)

end

end A017030.P1696991012615470683

namespace A017030

/-- `A017033(n)/A017031(n)` -/
def P1696991012615470683.Spec : Prop :=
  ∀ n, P1696991012615470683.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P15412845418183754391

`A017034(n)/A017032(n)`
-/

namespace A017030.P15412845418183754391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017034 n : ℚ) / (A017032 n : ℚ)

end

end A017030.P15412845418183754391

namespace A017030

/-- `A017034(n)/A017032(n)` -/
def P15412845418183754391.Spec : Prop :=
  ∀ n, P15412845418183754391.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P10740155776254478802

`A017035(n)/A017033(n)`
-/

namespace A017030.P10740155776254478802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017033 n : ℚ)

end

end A017030.P10740155776254478802

namespace A017030

/-- `A017035(n)/A017033(n)` -/
def P10740155776254478802.Spec : Prop :=
  ∀ n, P10740155776254478802.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P16628658885157597781

`A017033(n)²/A017036(n)`
-/

namespace A017030.P16628658885157597781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017036 n : ℚ)

end

end A017030.P16628658885157597781

namespace A017030

/-- `A017033(n)²/A017036(n)` -/
def P16628658885157597781.Spec : Prop :=
  ∀ n, P16628658885157597781.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P13857001132439277065

`A017608(n)%A156719(n+1)`
-/

namespace A017030.P13857001132439277065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017608 n) (A156719 (n + 1))

end

end A017030.P13857001132439277065

namespace A017030

/-- `A017608(n)%A156719(n+1)` -/
def P13857001132439277065.Spec : Prop :=
  ∀ n, P13857001132439277065.a n = A017030 n

end A017030

/-! ## A017030.P5724342693297260768

`A017032(n)²/A017031(n)²`
-/

namespace A017030.P5724342693297260768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n ^ 2 : ℚ) / (A017031 n ^ 2 : ℚ)

end

end A017030.P5724342693297260768

namespace A017030

/-- `A017032(n)²/A017031(n)²` -/
def P5724342693297260768.Spec : Prop :=
  ∀ n, P5724342693297260768.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P8490487300919555056

`A017033(n)²/A017032(n)²`
-/

namespace A017030.P8490487300919555056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017032 n ^ 2 : ℚ)

end

end A017030.P8490487300919555056

namespace A017030

/-- `A017033(n)²/A017032(n)²` -/
def P8490487300919555056.Spec : Prop :=
  ∀ n, P8490487300919555056.a n = (A017030 n : ℚ)

end A017030

/-! ## A017030.P13861577735268746228

`A017029(n)²²²/A017034(n)`
-/

namespace A017030.P13861577735268746228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017029 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017034 n : ℚ)

end

end A017030.P13861577735268746228

namespace A017030

/-- `A017029(n)²²²/A017034(n)` -/
def P13861577735268746228.Spec : Prop :=
  ∀ n, P13861577735268746228.a n = (A017030 n : ℚ)

end A017030

/-!
# A017031: a(n) = (7*n + 4)^3.

The programs for A017031, the canonical program `A017031.P2549624568681958807` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017031 has offset 0).

The definition of A017031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^3` (program `A017031.P2549624568681958807`, by `A017031.P2549624568681958807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017031.P2549624568681958807

`(7*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017031

/-- `(7*n+4)^3` -/
def P2549624568681958807.Spec : Prop :=
  ∀ n, (P2549624568681958807.a n : ℤ) = A017031 n

theorem P2549624568681958807.correct : P2549624568681958807.Spec := by
  intro n
  simp only [A017031]

end A017031

/-! ## A017031.P12377071321846207901

`sqrt(A017034(n))`
-/

namespace A017031.P12377071321846207901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017034 n : ℝ)

end

end A017031.P12377071321846207901

namespace A017031

/-- `sqrt(A017034(n))` -/
def P12377071321846207901.Spec : Prop :=
  ∀ n, P12377071321846207901.a n = (A017031 n : ℝ)

end A017031

/-! ## A017031.P10180754381726984252

`sqrt(A017030(n)^3)`
-/

namespace A017031.P10180754381726984252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017030 n ^ 3 : ℝ)

end

end A017031.P10180754381726984252

namespace A017031

/-- `sqrt(A017030(n)^3)` -/
def P10180754381726984252.Spec : Prop :=
  ∀ n, P10180754381726984252.a n = (A017031 n : ℝ)

end A017031

/-! ## A017031.P2523984541383128749

`-(1-A017041(n))^3`
-/

namespace A017031.P2523984541383128749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((1 - A017041 n) ^ 3)

end

end A017031.P2523984541383128749

namespace A017031

/-- `-(1-A017041(n))^3` -/
def P2523984541383128749.Spec : Prop :=
  ∀ n, P2523984541383128749.a n = A017031 n

theorem P2523984541383128749.correct : P2523984541383128749.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P2523984541383128749.a, A017031.P2549624568681958807.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P8832729632521750044

`A017032(n)/(7*n+4)`
-/

namespace A017031.P8832729632521750044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n : ℚ) / (7 * n + 4 : ℚ)

end

end A017031.P8832729632521750044

namespace A017031

/-- `A017032(n)/(7*n+4)` -/
def P8832729632521750044.Spec : Prop :=
  ∀ n, P8832729632521750044.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P13269143203478225102

`A017029(n)*A017030(n)`
-/

namespace A017031.P13269143203478225102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017030 n

end

end A017031.P13269143203478225102

namespace A017031

/-- `A017029(n)*A017030(n)` -/
def P13269143203478225102.Spec : Prop :=
  ∀ n, P13269143203478225102.a n = A017031 n

theorem P13269143203478225102.correct : P13269143203478225102.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P13269143203478225102.a, A017031.P2549624568681958807.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P1776197361992988586

`A017033(n)/A017030(n)`
-/

namespace A017031.P1776197361992988586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n : ℚ) / (A017030 n : ℚ)

end

end A017031.P1776197361992988586

namespace A017031

/-- `A017033(n)/A017030(n)` -/
def P1776197361992988586.Spec : Prop :=
  ∀ n, P1776197361992988586.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P6957285104334729887

`A017035(n)/A017032(n)`
-/

namespace A017031.P6957285104334729887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017032 n : ℚ)

end

end A017031.P6957285104334729887

namespace A017031

/-- `A017035(n)/A017032(n)` -/
def P6957285104334729887.Spec : Prop :=
  ∀ n, P6957285104334729887.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P14877794790831925506

`A017036(n)/A017033(n)`
-/

namespace A017031.P14877794790831925506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017036 n : ℚ) / (A017033 n : ℚ)

end

end A017031.P14877794790831925506

namespace A017031

/-- `A017036(n)/A017033(n)` -/
def P14877794790831925506.Spec : Prop :=
  ∀ n, P14877794790831925506.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P1126206591349094767

`A017038(n)/A017035(n)`
-/

namespace A017031.P1126206591349094767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017038 n : ℚ) / (A017035 n : ℚ)

end

end A017031.P1126206591349094767

namespace A017031

/-- `A017038(n)/A017035(n)` -/
def P1126206591349094767.Spec : Prop :=
  ∀ n, P1126206591349094767.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P1605951633161463699

`A017032(n)²/A017033(n)`
-/

namespace A017031.P1605951633161463699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n ^ 2 : ℚ) / (A017033 n : ℚ)

end

end A017031.P1605951633161463699

namespace A017031

/-- `A017032(n)²/A017033(n)` -/
def P1605951633161463699.Spec : Prop :=
  ∀ n, P1605951633161463699.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P10014046529698818997

`A017033(n)/A017029(n)²`
-/

namespace A017031.P10014046529698818997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n : ℚ) / (A017029 n ^ 2 : ℚ)

end

end A017031.P10014046529698818997

namespace A017031

/-- `A017033(n)/A017029(n)²` -/
def P10014046529698818997.Spec : Prop :=
  ∀ n, P10014046529698818997.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P8365864454434430827

`A017033(n)²/A017035(n)`
-/

namespace A017031.P8365864454434430827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017035 n : ℚ)

end

end A017031.P8365864454434430827

namespace A017031

/-- `A017033(n)²/A017035(n)` -/
def P8365864454434430827.Spec : Prop :=
  ∀ n, P8365864454434430827.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P15169351545631443068

`A017035(n)/A017030(n)²`
-/

namespace A017031.P15169351545631443068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017030 n ^ 2 : ℚ)

end

end A017031.P15169351545631443068

namespace A017031

/-- `A017035(n)/A017030(n)²` -/
def P15169351545631443068.Spec : Prop :=
  ∀ n, P15169351545631443068.a n = (A017031 n : ℚ)

end A017031

/-! ## A017031.P15629477622312486395

`(A017017(n)+1)*A017030(n)`
-/

namespace A017031.P15629477622312486395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n + 1) * A017030 n

end

end A017031.P15629477622312486395

namespace A017031

/-- `(A017017(n)+1)*A017030(n)` -/
def P15629477622312486395.Spec : Prop :=
  ∀ n, P15629477622312486395.a n = A017031 n

theorem P15629477622312486395.correct : P15629477622312486395.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P15629477622312486395.a, A017031.P2549624568681958807.a, A017017, A017017.P16632027915442464889.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P17923293821904366075

`(A017005(n)+2)*A017030(n)`
-/

namespace A017031.P17923293821904366075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n + 2) * A017030 n

end

end A017031.P17923293821904366075

namespace A017031

/-- `(A017005(n)+2)*A017030(n)` -/
def P17923293821904366075.Spec : Prop :=
  ∀ n, P17923293821904366075.a n = A017031 n

theorem P17923293821904366075.correct : P17923293821904366075.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P17923293821904366075.a, A017031.P2549624568681958807.a, A017005, A017005.P14585839201288811509.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P7057540568183700995

`(A017041(n)-1)*A017030(n)`
-/

namespace A017031.P7057540568183700995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n - 1) * A017030 n

end

end A017031.P7057540568183700995

namespace A017031

/-- `(A017041(n)-1)*A017030(n)` -/
def P7057540568183700995.Spec : Prop :=
  ∀ n, P7057540568183700995.a n = A017031 n

theorem P7057540568183700995.correct : P7057540568183700995.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P7057540568183700995.a, A017031.P2549624568681958807.a, A017030, A017030.P16321582997434012825.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P15639180865001053844

`(A017053(n)-2)*A017030(n)`
-/

namespace A017031.P15639180865001053844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 2) * A017030 n

end

end A017031.P15639180865001053844

namespace A017031

/-- `(A017053(n)-2)*A017030(n)` -/
def P15639180865001053844.Spec : Prop :=
  ∀ n, P15639180865001053844.a n = A017031 n

theorem P15639180865001053844.correct : P15639180865001053844.Spec := by
  intro n
  simp only [A017031, Nat.add_sub_cancel, A017031.P15639180865001053844.a, A017031.P2549624568681958807.a, A017030, A017030.P16321582997434012825.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017031

/-! ## A017031.P12328917068800857886

`A017035(n)/A017029(n)²²`
-/

namespace A017031.P12328917068800857886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / ((A017029 n ^ 2) ^ 2 : ℚ)

end

end A017031.P12328917068800857886

namespace A017031

/-- `A017035(n)/A017029(n)²²` -/
def P12328917068800857886.Spec : Prop :=
  ∀ n, P12328917068800857886.a n = (A017031 n : ℚ)

end A017031

/-!
# A017032: a(n) = (7*n + 4)^4.

The programs for A017032, the canonical program `A017032.P14551790922819818360` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017032 has offset 0).

The definition of A017032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^4` (program `A017032.P14551790922819818360`, by `A017032.P14551790922819818360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017032.P14551790922819818360

`(7*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017032

/-- `(7*n+4)^4` -/
def P14551790922819818360.Spec : Prop :=
  ∀ n, (P14551790922819818360.a n : ℤ) = A017032 n

theorem P14551790922819818360.correct : P14551790922819818360.Spec := by
  intro n
  simp only [A017032]

end A017032

/-! ## A017032.P10560020483866047454

`A000583(A017029(n))`
-/

namespace A017032.P10560020483866047454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A017029 n).toNat

end

end A017032.P10560020483866047454

namespace A017032

/-- `A000583(A017029(n))` -/
def P10560020483866047454.Spec : Prop :=
  ∀ n, P10560020483866047454.a n = A017032 n

end A017032

/-! ## A017032.P4353368486729892534

`(record[lcm(4, n+1)]-n)²²`
-/

namespace A017032.P4353368486729892534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017032.P4353368486729892534

namespace A017032

/-- `(record[lcm(4, n+1)]-n)²²` -/
def P4353368486729892534.Spec : Prop :=
  ∀ n, P4353368486729892534.a n = A017032 n

end A017032

/-! ## A017032.P949888792392899390

`(Δ[lcm(2, (2*n)²)]-n)²²`
-/

namespace A017032.P949888792392899390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017032.P949888792392899390

namespace A017032

/-- `(Δ[lcm(2, (2*n)²)]-n)²²` -/
def P949888792392899390.Spec : Prop :=
  ∀ n, P949888792392899390.a n = A017032 n

end A017032

/-! ## A017032.P16472851071964628490

`Δ[(2*n)²-C(n, 2)]²²`
-/

namespace A017032.P16472851071964628490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017032.P16472851071964628490

namespace A017032

/-- `Δ[(2*n)²-C(n, 2)]²²` -/
def P16472851071964628490.Spec : Prop :=
  ∀ n, P16472851071964628490.a n = A017032 n

theorem P16472851071964628490.correct : P16472851071964628490.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P16472851071964628490.f1, A017032.P16472851071964628490.a, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P16462809859453107719

`(record[xor(3, n)]+3*n+1)²²`
-/

namespace A017032.P16462809859453107719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 * n + 1)) ^ 2) ^ 2

end

end A017032.P16462809859453107719

namespace A017032

/-- `(record[xor(3, n)]+3*n+1)²²` -/
def P16462809859453107719.Spec : Prop :=
  ∀ n, (P16462809859453107719.a n : ℤ) = A017032 n

end A017032

/-! ## A017032.P392159864123066861

`(Δ[(2*n)²]-gcd(n, 2*n))²²`
-/

namespace A017032.P392159864123066861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.gcd n (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017032.P392159864123066861

namespace A017032

/-- `(Δ[(2*n)²]-gcd(n, 2*n))²²` -/
def P392159864123066861.Spec : Prop :=
  ∀ n, P392159864123066861.a n = A017032 n

theorem P392159864123066861.correct : P392159864123066861.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P392159864123066861.f1, A017032.P392159864123066861.a, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017032

/-! ## A017032.P13566163496863313809

`(C(2*n, 2)-∑[4*(n+1)])²²`
-/

namespace A017032.P13566163496863313809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2) ^ 2

end

end A017032.P13566163496863313809

namespace A017032

/-- `(C(2*n, 2)-∑[4*(n+1)])²²` -/
def P13566163496863313809.Spec : Prop :=
  ∀ n, P13566163496863313809.a n = A017032 n

end A017032

/-! ## A017032.P3142427683788051262

`(Δ[and(2*n+1, 2*n)²]-n)²²`
-/

namespace A017032.P3142427683788051262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2) ^ 2

end

end A017032.P3142427683788051262

namespace A017032

/-- `(Δ[and(2*n+1, 2*n)²]-n)²²` -/
def P3142427683788051262.Spec : Prop :=
  ∀ n, P3142427683788051262.a n = A017032 n

end A017032

/-! ## A017032.P1438811792661951011

`A017030(n)²`
-/

namespace A017032.P1438811792661951011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n ^ 2

end

end A017032.P1438811792661951011

namespace A017032

/-- `A017030(n)²` -/
def P1438811792661951011.Spec : Prop :=
  ∀ n, P1438811792661951011.a n = A017032 n

theorem P1438811792661951011.correct : P1438811792661951011.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P1438811792661951011.a, A017032.P14551790922819818360.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P6036856408949477713

`sqrt(A017036(n))`
-/

namespace A017032.P6036856408949477713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017036 n : ℝ)

end

end A017032.P6036856408949477713

namespace A017032

/-- `sqrt(A017036(n))` -/
def P6036856408949477713.Spec : Prop :=
  ∀ n, P6036856408949477713.a n = (A017032 n : ℝ)

end A017032

/-! ## A017032.P10163570735171245572

`(A017017(n)+1)²²`
-/

namespace A017032.P10163570735171245572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017017 n + 1) ^ 2) ^ 2

end

end A017032.P10163570735171245572

namespace A017032

/-- `(A017017(n)+1)²²` -/
def P10163570735171245572.Spec : Prop :=
  ∀ n, P10163570735171245572.a n = A017032 n

theorem P10163570735171245572.correct : P10163570735171245572.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P10163570735171245572.a, A017032.P14551790922819818360.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P13514915553548351033

`(A017005(n)+2)²²`
-/

namespace A017032.P13514915553548351033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017005 n + 2) ^ 2) ^ 2

end

end A017032.P13514915553548351033

namespace A017032

/-- `(A017005(n)+2)²²` -/
def P13514915553548351033.Spec : Prop :=
  ∀ n, P13514915553548351033.a n = A017032 n

theorem P13514915553548351033.correct : P13514915553548351033.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P13514915553548351033.a, A017032.P14551790922819818360.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P13939239957658591234

`(1-A017041(n))²²`
-/

namespace A017032.P13939239957658591234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017041 n) ^ 2) ^ 2

end

end A017032.P13939239957658591234

namespace A017032

/-- `(1-A017041(n))²²` -/
def P13939239957658591234.Spec : Prop :=
  ∀ n, P13939239957658591234.a n = A017032 n

theorem P13939239957658591234.correct : P13939239957658591234.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P13939239957658591234.a, A017032.P14551790922819818360.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P5217517571261542607

`(A016993(n)+3)²²`
-/

namespace A017032.P5217517571261542607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016993 n + 3) ^ 2) ^ 2

end

end A017032.P5217517571261542607

namespace A017032

/-- `(A016993(n)+3)²²` -/
def P5217517571261542607.Spec : Prop :=
  ∀ n, P5217517571261542607.a n = A017032 n

theorem P5217517571261542607.correct : P5217517571261542607.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P5217517571261542607.a, A017032.P14551790922819818360.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P1436445495702113896

`(2-A017053(n))²²`
-/

namespace A017032.P1436445495702113896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017053 n) ^ 2) ^ 2

end

end A017032.P1436445495702113896

namespace A017032

/-- `(2-A017053(n))²²` -/
def P1436445495702113896.Spec : Prop :=
  ∀ n, P1436445495702113896.a n = A017032 n

theorem P1436445495702113896.correct : P1436445495702113896.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P1436445495702113896.a, A017032.P14551790922819818360.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P7647208857973668548

`(A016957(n)+n)²²`
-/

namespace A017032.P7647208857973668548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016957 n + (n : ℤ)) ^ 2) ^ 2

end

end A017032.P7647208857973668548

namespace A017032

/-- `(A016957(n)+n)²²` -/
def P7647208857973668548.Spec : Prop :=
  ∀ n, P7647208857973668548.a n = A017032 n

theorem P7647208857973668548.correct : P7647208857973668548.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P7647208857973668548.a, A017032.P14551790922819818360.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P1538500728311523396

`(n-A017113(n))²²`
-/

namespace A017032.P1538500728311523396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017113 n) ^ 2) ^ 2

end

end A017032.P1538500728311523396

namespace A017032

/-- `(n-A017113(n))²²` -/
def P1538500728311523396.Spec : Prop :=
  ∀ n, P1538500728311523396.a n = A017032 n

theorem P1538500728311523396.correct : P1538500728311523396.Spec := by
  intro n
  simp only [A017032, Nat.add_sub_cancel, A017032.P1538500728311523396.a, A017032.P14551790922819818360.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017032

/-! ## A017032.P6195149396576538079

`(sqrt(A017018(n))+1)²²`
-/

namespace A017032.P6195149396576538079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017018 n : ℝ) + 1) ^ 2) ^ 2

end

end A017032.P6195149396576538079

namespace A017032

/-- `(sqrt(A017018(n))+1)²²` -/
def P6195149396576538079.Spec : Prop :=
  ∀ n, P6195149396576538079.a n = (A017032 n : ℝ)

end A017032

/-! ## A017032.P6724025919740307114

`(sqrt(A017006(n))+2)²²`
-/

namespace A017032.P6724025919740307114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017006 n : ℝ) + 2) ^ 2) ^ 2

end

end A017032.P6724025919740307114

namespace A017032

/-- `(sqrt(A017006(n))+2)²²` -/
def P6724025919740307114.Spec : Prop :=
  ∀ n, P6724025919740307114.a n = (A017032 n : ℝ)

end A017032

/-!
# A017033: a(n) = (7*n + 4)^5.

The programs for A017033, the canonical program `A017033.P7603149233824245264` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017033 has offset 0).

The definition of A017033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^5` (program `A017033.P7603149233824245264`, by `A017033.P7603149233824245264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017033.P7603149233824245264

`(7*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017033

/-- `(7*n+4)^5` -/
def P7603149233824245264.Spec : Prop :=
  ∀ n, (P7603149233824245264.a n : ℤ) = A017033 n

theorem P7603149233824245264.correct : P7603149233824245264.Spec := by
  intro n
  simp only [A017033]

end A017033

/-! ## A017033.P8389671834143623765

`sqrt(A017038(n))`
-/

namespace A017033.P8389671834143623765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017038 n : ℝ)

end

end A017033.P8389671834143623765

namespace A017033

/-- `sqrt(A017038(n))` -/
def P8389671834143623765.Spec : Prop :=
  ∀ n, P8389671834143623765.a n = (A017033 n : ℝ)

end A017033

/-! ## A017033.P17033333375996737906

`sqrt(A017030(n)^5)`
-/

namespace A017033.P17033333375996737906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017030 n ^ 5 : ℝ)

end

end A017033.P17033333375996737906

namespace A017033

/-- `sqrt(A017030(n)^5)` -/
def P17033333375996737906.Spec : Prop :=
  ∀ n, P17033333375996737906.a n = (A017033 n : ℝ)

end A017033

/-! ## A017033.P4407760960382259639

`(7*n+4)*A017032(n)`
-/

namespace A017033.P4407760960382259639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 4 : ℤ) * A017032 n

end

end A017033.P4407760960382259639

namespace A017033

/-- `(7*n+4)*A017032(n)` -/
def P4407760960382259639.Spec : Prop :=
  ∀ n, P4407760960382259639.a n = A017033 n

theorem P4407760960382259639.correct : P4407760960382259639.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P4407760960382259639.a, A017033.P7603149233824245264.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P13015525482461465213

`abs((1-(A016969(n)+n))^5)`
-/

namespace A017033.P13015525482461465213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (A016969 n + (n : ℤ))) ^ 5|

end

end A017033.P13015525482461465213

namespace A017033

/-- `abs((1-(A016969(n)+n))^5)` -/
def P13015525482461465213.Spec : Prop :=
  ∀ n, P13015525482461465213.a n = A017033 n

end A017033

/-! ## A017033.P8386658685998270020

`A017030(n)*A017031(n)`
-/

namespace A017033.P8386658685998270020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n * A017031 n

end

end A017033.P8386658685998270020

namespace A017033

/-- `A017030(n)*A017031(n)` -/
def P8386658685998270020.Spec : Prop :=
  ∀ n, P8386658685998270020.a n = A017033 n

theorem P8386658685998270020.correct : P8386658685998270020.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P8386658685998270020.a, A017033.P7603149233824245264.a, A017030, A017030.P16321582997434012825.a, A017031, A017031.P2549624568681958807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P4003880149831366705

`A017034(n)/A017029(n)`
-/

namespace A017033.P4003880149831366705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017034 n : ℚ) / (A017029 n : ℚ)

end

end A017033.P4003880149831366705

namespace A017033

/-- `A017034(n)/A017029(n)` -/
def P4003880149831366705.Spec : Prop :=
  ∀ n, P4003880149831366705.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P15466877962656448967

`A017035(n)/A017030(n)`
-/

namespace A017033.P15466877962656448967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017030 n : ℚ)

end

end A017033.P15466877962656448967

namespace A017033

/-- `A017035(n)/A017030(n)` -/
def P15466877962656448967.Spec : Prop :=
  ∀ n, P15466877962656448967.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P5711358847487573451

`A017029(n)²*A017031(n)`
-/

namespace A017033.P5711358847487573451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n ^ 2 * A017031 n

end

end A017033.P5711358847487573451

namespace A017033

/-- `A017029(n)²*A017031(n)` -/
def P5711358847487573451.Spec : Prop :=
  ∀ n, P5711358847487573451.a n = A017033 n

theorem P5711358847487573451.correct : P5711358847487573451.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P5711358847487573451.a, A017033.P7603149233824245264.a, A017029, A017029.P18040034652068019793.a, A017031, A017031.P2549624568681958807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P11398910587348263308

`A017030(n)²*A017029(n)`
-/

namespace A017033.P11398910587348263308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n ^ 2 * A017029 n

end

end A017033.P11398910587348263308

namespace A017033

/-- `A017030(n)²*A017029(n)` -/
def P11398910587348263308.Spec : Prop :=
  ∀ n, P11398910587348263308.a n = A017033 n

theorem P11398910587348263308.correct : P11398910587348263308.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P11398910587348263308.a, A017033.P7603149233824245264.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P15111228683172168985

`A017032(n)²/A017031(n)`
-/

namespace A017033.P15111228683172168985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n ^ 2 : ℚ) / (A017031 n : ℚ)

end

end A017033.P15111228683172168985

namespace A017033

/-- `A017032(n)²/A017031(n)` -/
def P15111228683172168985.Spec : Prop :=
  ∀ n, P15111228683172168985.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P820493272359545983

`A017035(n)/A017029(n)²`
-/

namespace A017033.P820493272359545983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017029 n ^ 2 : ℚ)

end

end A017033.P820493272359545983

namespace A017033

/-- `A017035(n)/A017029(n)²` -/
def P820493272359545983.Spec : Prop :=
  ∀ n, P820493272359545983.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P2124253338596128151

`A017034(n)/(A017041(n)-1)`
-/

namespace A017033.P2124253338596128151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017034 n : ℚ) / (A017041 n - 1 : ℚ)

end

end A017033.P2124253338596128151

namespace A017033

/-- `A017034(n)/(A017041(n)-1)` -/
def P2124253338596128151.Spec : Prop :=
  ∀ n, P2124253338596128151.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P3687428609836922647

`(A017017(n)+1)*A017030(n)²`
-/

namespace A017033.P3687428609836922647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017017 n + 1) * A017030 n ^ 2

end

end A017033.P3687428609836922647

namespace A017033

/-- `(A017017(n)+1)*A017030(n)²` -/
def P3687428609836922647.Spec : Prop :=
  ∀ n, P3687428609836922647.a n = A017033 n

theorem P3687428609836922647.correct : P3687428609836922647.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P3687428609836922647.a, A017033.P7603149233824245264.a, A017017, A017017.P16632027915442464889.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P7987221264013083285

`(A017005(n)+2)*A017030(n)²`
-/

namespace A017033.P7987221264013083285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017005 n + 2) * A017030 n ^ 2

end

end A017033.P7987221264013083285

namespace A017033

/-- `(A017005(n)+2)*A017030(n)²` -/
def P7987221264013083285.Spec : Prop :=
  ∀ n, P7987221264013083285.a n = A017033 n

theorem P7987221264013083285.correct : P7987221264013083285.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P7987221264013083285.a, A017033.P7603149233824245264.a, A017005, A017005.P14585839201288811509.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P12823688560538323432

`(A017041(n)-1)*A017030(n)²`
-/

namespace A017033.P12823688560538323432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n - 1) * A017030 n ^ 2

end

end A017033.P12823688560538323432

namespace A017033

/-- `(A017041(n)-1)*A017030(n)²` -/
def P12823688560538323432.Spec : Prop :=
  ∀ n, P12823688560538323432.a n = A017033 n

theorem P12823688560538323432.correct : P12823688560538323432.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P12823688560538323432.a, A017033.P7603149233824245264.a, A017030, A017030.P16321582997434012825.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P4957746956310644060

`(A017053(n)-2)*A017030(n)²`
-/

namespace A017033.P4957746956310644060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 2) * A017030 n ^ 2

end

end A017033.P4957746956310644060

namespace A017033

/-- `(A017053(n)-2)*A017030(n)²` -/
def P4957746956310644060.Spec : Prop :=
  ∀ n, P4957746956310644060.a n = A017033 n

theorem P4957746956310644060.correct : P4957746956310644060.Spec := by
  intro n
  simp only [A017033, Nat.add_sub_cancel, A017033.P4957746956310644060.a, A017033.P7603149233824245264.a, A017030, A017030.P16321582997434012825.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017033

/-! ## A017033.P11170639650561314799

`A017032(n)/A017035(n)*A017032(n)²`
-/

namespace A017033.P11170639650561314799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n : ℚ) / (A017035 n : ℚ) * (A017032 n ^ 2 : ℚ)

end

end A017033.P11170639650561314799

namespace A017033

/-- `A017032(n)/A017035(n)*A017032(n)²` -/
def P11170639650561314799.Spec : Prop :=
  ∀ n, P11170639650561314799.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P151651304380317620

`A017036(n)/(A017029(n)²*A017029(n))`
-/

namespace A017033.P151651304380317620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017036 n : ℚ) / (A017029 n ^ 2 * A017029 n : ℚ)

end

end A017033.P151651304380317620

namespace A017033

/-- `A017036(n)/(A017029(n)²*A017029(n))` -/
def P151651304380317620.Spec : Prop :=
  ∀ n, P151651304380317620.a n = (A017033 n : ℚ)

end A017033

/-! ## A017033.P9449177338684193176

`A017030(n)²*A047374(2*n+1)`
-/

namespace A017033.P9449177338684193176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n ^ 2 * A047374 (2 * n + 1)

end

end A017033.P9449177338684193176

namespace A017033

/-- `A017030(n)²*A047374(2*n+1)` -/
def P9449177338684193176.Spec : Prop :=
  ∀ n, P9449177338684193176.a n = A017033 n

end A017033

/-!
# A017034: a(n) = (7*n + 4)^6.

The programs for A017034, the canonical program `A017034.P477179931804987805` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017034 has offset 0).

The definition of A017034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^6` (program `A017034.P477179931804987805`, by `A017034.P477179931804987805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017034.P477179931804987805

`(7*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017034

/-- `(7*n+4)^6` -/
def P477179931804987805.Spec : Prop :=
  ∀ n, (P477179931804987805.a n : ℤ) = A017034 n

theorem P477179931804987805.correct : P477179931804987805.Spec := by
  intro n
  simp only [A017034]

end A017034

/-! ## A017034.P15732939157932269870

`A017031(n)²`
-/

namespace A017034.P15732939157932269870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n ^ 2

end

end A017034.P15732939157932269870

namespace A017034

/-- `A017031(n)²` -/
def P15732939157932269870.Spec : Prop :=
  ∀ n, P15732939157932269870.a n = A017034 n

theorem P15732939157932269870.correct : P15732939157932269870.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P15732939157932269870.a, A017034.P477179931804987805.a, A017031, A017031.P2549624568681958807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P14083207738183259786

`sqrt(A017032(n)^3)`
-/

namespace A017034.P14083207738183259786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017032 n ^ 3 : ℝ)

end

end A017034.P14083207738183259786

namespace A017034

/-- `sqrt(A017032(n)^3)` -/
def P14083207738183259786.Spec : Prop :=
  ∀ n, P14083207738183259786.a n = (A017034 n : ℝ)

end A017034

/-! ## A017034.P17383323353301068638

`(7*n+4)*A017033(n)`
-/

namespace A017034.P17383323353301068638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 4 : ℤ) * A017033 n

end

end A017034.P17383323353301068638

namespace A017034

/-- `(7*n+4)*A017033(n)` -/
def P17383323353301068638.Spec : Prop :=
  ∀ n, P17383323353301068638.a n = A017034 n

theorem P17383323353301068638.correct : P17383323353301068638.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P17383323353301068638.a, A017034.P477179931804987805.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P8808111291082894197

`((A016945(n)+n+1)^3)²`
-/

namespace A017034.P8808111291082894197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + (n : ℤ) + 1) ^ 3) ^ 2

end

end A017034.P8808111291082894197

namespace A017034

/-- `((A016945(n)+n+1)^3)²` -/
def P8808111291082894197.Spec : Prop :=
  ∀ n, P8808111291082894197.a n = A017034 n

theorem P8808111291082894197.correct : P8808111291082894197.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P8808111291082894197.a, A017034.P477179931804987805.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P4498710716040774323

`A017030(n)*A017032(n)`
-/

namespace A017034.P4498710716040774323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n * A017032 n

end

end A017034.P4498710716040774323

namespace A017034

/-- `A017030(n)*A017032(n)` -/
def P4498710716040774323.Spec : Prop :=
  ∀ n, P4498710716040774323.a n = A017034 n

theorem P4498710716040774323.correct : P4498710716040774323.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P4498710716040774323.a, A017034.P477179931804987805.a, A017030, A017030.P16321582997434012825.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P4219464942943323599

`A017035(n)/A017029(n)`
-/

namespace A017034.P4219464942943323599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017029 n : ℚ)

end

end A017034.P4219464942943323599

namespace A017034

/-- `A017035(n)/A017029(n)` -/
def P4219464942943323599.Spec : Prop :=
  ∀ n, P4219464942943323599.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P1124881285269562144

`(A017029(n)*A017030(n))²`
-/

namespace A017034.P1124881285269562144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n * A017030 n) ^ 2

end

end A017034.P1124881285269562144

namespace A017034

/-- `(A017029(n)*A017030(n))²` -/
def P1124881285269562144.Spec : Prop :=
  ∀ n, P1124881285269562144.a n = A017034 n

theorem P1124881285269562144.correct : P1124881285269562144.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P1124881285269562144.a, A017034.P477179931804987805.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P1629795015124761999

`A017029(n)²*A017032(n)`
-/

namespace A017034.P1629795015124761999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n ^ 2 * A017032 n

end

end A017034.P1629795015124761999

namespace A017034

/-- `A017029(n)²*A017032(n)` -/
def P1629795015124761999.Spec : Prop :=
  ∀ n, P1629795015124761999.a n = A017034 n

theorem P1629795015124761999.correct : P1629795015124761999.Spec := by
  intro n
  simp only [A017034, Nat.add_sub_cancel, A017034.P1629795015124761999.a, A017034.P477179931804987805.a, A017029, A017029.P18040034652068019793.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017034

/-! ## A017034.P3349500544498752238

`(A017033(n)/A017030(n))²`
-/

namespace A017034.P3349500544498752238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017033 n : ℚ) / (A017030 n : ℚ)) ^ 2

end

end A017034.P3349500544498752238

namespace A017034

/-- `(A017033(n)/A017030(n))²` -/
def P3349500544498752238.Spec : Prop :=
  ∀ n, P3349500544498752238.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P15861198484237886102

`A017033(n)²/A017032(n)`
-/

namespace A017034.P15861198484237886102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017032 n : ℚ)

end

end A017034.P15861198484237886102

namespace A017034

/-- `A017033(n)²/A017032(n)` -/
def P15861198484237886102.Spec : Prop :=
  ∀ n, P15861198484237886102.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P14474053618107948323

`(A017035(n)/A017032(n))²`
-/

namespace A017034.P14474053618107948323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017035 n : ℚ) / (A017032 n : ℚ)) ^ 2

end

end A017034.P14474053618107948323

namespace A017034

/-- `(A017035(n)/A017032(n))²` -/
def P14474053618107948323.Spec : Prop :=
  ∀ n, P14474053618107948323.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P6587321094080816588

`A017036(n)/A017029(n)²`
-/

namespace A017034.P6587321094080816588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017036 n : ℚ) / (A017029 n ^ 2 : ℚ)

end

end A017034.P6587321094080816588

namespace A017034

/-- `A017036(n)/A017029(n)²` -/
def P6587321094080816588.Spec : Prop :=
  ∀ n, P6587321094080816588.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P10890698488468905280

`(A017036(n)/A017033(n))²`
-/

namespace A017034.P10890698488468905280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017036 n : ℚ) / (A017033 n : ℚ)) ^ 2

end

end A017034.P10890698488468905280

namespace A017034

/-- `(A017036(n)/A017033(n))²` -/
def P10890698488468905280.Spec : Prop :=
  ∀ n, P10890698488468905280.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P12725705735460897405

`(A017038(n)/A017035(n))²`
-/

namespace A017034.P12725705735460897405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017038 n : ℚ) / (A017035 n : ℚ)) ^ 2

end

end A017034.P12725705735460897405

namespace A017034

/-- `(A017038(n)/A017035(n))²` -/
def P12725705735460897405.Spec : Prop :=
  ∀ n, P12725705735460897405.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P9104603645739361929

`(A017035(n)/A017030(n)²)²`
-/

namespace A017034.P9104603645739361929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017035 n : ℚ) / (A017030 n ^ 2 : ℚ)) ^ 2

end

end A017034.P9104603645739361929

namespace A017034

/-- `(A017035(n)/A017030(n)²)²` -/
def P9104603645739361929.Spec : Prop :=
  ∀ n, P9104603645739361929.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P2357836981155756622

`(A017033(n)/A017035(n)*A017033(n))²`
-/

namespace A017034.P2357836981155756622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017033 n : ℚ) / (A017035 n : ℚ) * (A017033 n : ℚ)) ^ 2

end

end A017034.P2357836981155756622

namespace A017034

/-- `(A017033(n)/A017035(n)*A017033(n))²` -/
def P2357836981155756622.Spec : Prop :=
  ∀ n, P2357836981155756622.a n = (A017034 n : ℚ)

end A017034

/-! ## A017034.P5758714937170097480

`(Δ[A006124(n)]^3)²`
-/

namespace A017034.P5758714937170097480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017034.P5758714937170097480

namespace A017034

/-- `(Δ[A006124(n)]^3)²` -/
def P5758714937170097480.Spec : Prop :=
  ∀ n, P5758714937170097480.a n = A017034 n

end A017034

/-! ## A017034.P18325315259929096845

`(Δ[A022265(n)]^3)²`
-/

namespace A017034.P18325315259929096845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017034.P18325315259929096845

namespace A017034

/-- `(Δ[A022265(n)]^3)²` -/
def P18325315259929096845.Spec : Prop :=
  ∀ n, P18325315259929096845.a n = A017034 n

end A017034

/-!
# A017035: a(n) = (7*n + 4)^7.

The programs for A017035, the canonical program `A017035.P8180149356462783239` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017035 has offset 0).

The definition of A017035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^7` (program `A017035.P8180149356462783239`, by `A017035.P8180149356462783239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017035.P8180149356462783239

`(7*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017035

/-- `(7*n+4)^7` -/
def P8180149356462783239.Spec : Prop :=
  ∀ n, (P8180149356462783239.a n : ℤ) = A017035 n

theorem P8180149356462783239.correct : P8180149356462783239.Spec := by
  intro n
  simp only [A017035]

end A017035

/-! ## A017035.P1173807328294062503

`(7*n+4)²*A017033(n)`
-/

namespace A017035.P1173807328294062503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 4) ^ 2 : ℤ) * A017033 n

end

end A017035.P1173807328294062503

namespace A017035

/-- `(7*n+4)²*A017033(n)` -/
def P1173807328294062503.Spec : Prop :=
  ∀ n, P1173807328294062503.a n = A017035 n

theorem P1173807328294062503.correct : P1173807328294062503.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P1173807328294062503.a, A017035.P8180149356462783239.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P14153759968039959396

`A017029(n)*A017034(n)`
-/

namespace A017035.P14153759968039959396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017034 n

end

end A017035.P14153759968039959396

namespace A017035

/-- `A017029(n)*A017034(n)` -/
def P14153759968039959396.Spec : Prop :=
  ∀ n, P14153759968039959396.a n = A017035 n

theorem P14153759968039959396.correct : P14153759968039959396.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P14153759968039959396.a, A017035.P8180149356462783239.a, A017029, A017029.P18040034652068019793.a, A017034, A017034.P477179931804987805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P253299476719671127

`A017031(n)*A017032(n)`
-/

namespace A017035.P253299476719671127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n * A017032 n

end

end A017035.P253299476719671127

namespace A017035

/-- `A017031(n)*A017032(n)` -/
def P253299476719671127.Spec : Prop :=
  ∀ n, P253299476719671127.a n = A017035 n

theorem P253299476719671127.correct : P253299476719671127.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P253299476719671127.a, A017035.P8180149356462783239.a, A017031, A017031.P2549624568681958807.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P12812587080379998150

`A017036(n)/A017029(n)`
-/

namespace A017035.P12812587080379998150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017036 n : ℚ) / (A017029 n : ℚ)

end

end A017035.P12812587080379998150

namespace A017035

/-- `A017036(n)/A017029(n)` -/
def P12812587080379998150.Spec : Prop :=
  ∀ n, P12812587080379998150.a n = (A017035 n : ℚ)

end A017035

/-! ## A017035.P12340469096605080194

`A017030(n)²*A017031(n)`
-/

namespace A017035.P12340469096605080194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n ^ 2 * A017031 n

end

end A017035.P12340469096605080194

namespace A017035

/-- `A017030(n)²*A017031(n)` -/
def P12340469096605080194.Spec : Prop :=
  ∀ n, P12340469096605080194.a n = A017035 n

theorem P12340469096605080194.correct : P12340469096605080194.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P12340469096605080194.a, A017035.P8180149356462783239.a, A017030, A017030.P16321582997434012825.a, A017031, A017031.P2549624568681958807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P3487393396247951438

`A017031(n)²*A017029(n)`
-/

namespace A017035.P3487393396247951438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n ^ 2 * A017029 n

end

end A017035.P3487393396247951438

namespace A017035

/-- `A017031(n)²*A017029(n)` -/
def P3487393396247951438.Spec : Prop :=
  ∀ n, P3487393396247951438.a n = A017035 n

theorem P3487393396247951438.correct : P3487393396247951438.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P3487393396247951438.a, A017035.P8180149356462783239.a, A017029, A017029.P18040034652068019793.a, A017031, A017031.P2549624568681958807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P16451308163398136101

`A017032(n)²/A017029(n)`
-/

namespace A017035.P16451308163398136101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n ^ 2 : ℚ) / (A017029 n : ℚ)

end

end A017035.P16451308163398136101

namespace A017035

/-- `A017032(n)²/A017029(n)` -/
def P16451308163398136101.Spec : Prop :=
  ∀ n, P16451308163398136101.a n = (A017035 n : ℚ)

end A017035

/-! ## A017035.P13750836831469537314

`A017033(n)²/A017031(n)`
-/

namespace A017035.P13750836831469537314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017031 n : ℚ)

end

end A017035.P13750836831469537314

namespace A017035

/-- `A017033(n)²/A017031(n)` -/
def P13750836831469537314.Spec : Prop :=
  ∀ n, P13750836831469537314.a n = (A017035 n : ℚ)

end A017035

/-! ## A017035.P18251375035922667986

`(A017041(n)-1)*A017034(n)`
-/

namespace A017035.P18251375035922667986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n - 1) * A017034 n

end

end A017035.P18251375035922667986

namespace A017035

/-- `(A017041(n)-1)*A017034(n)` -/
def P18251375035922667986.Spec : Prop :=
  ∀ n, P18251375035922667986.a n = A017035 n

theorem P18251375035922667986.correct : P18251375035922667986.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P18251375035922667986.a, A017035.P8180149356462783239.a, A017034, A017034.P477179931804987805.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P17141986703802672288

`A017030(n)²²/A017029(n)`
-/

namespace A017035.P17141986703802672288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017030 n ^ 2) ^ 2 : ℚ) / (A017029 n : ℚ)

end

end A017035.P17141986703802672288

namespace A017035

/-- `A017030(n)²²/A017029(n)` -/
def P17141986703802672288.Spec : Prop :=
  ∀ n, P17141986703802672288.a n = (A017035 n : ℚ)

end A017035

/-! ## A017035.P8668804142920274148

`A017029(n)*A017030(n)*A017032(n)`
-/

namespace A017035.P8668804142920274148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017030 n * A017032 n

end

end A017035.P8668804142920274148

namespace A017035

/-- `A017029(n)*A017030(n)*A017032(n)` -/
def P8668804142920274148.Spec : Prop :=
  ∀ n, P8668804142920274148.a n = A017035 n

theorem P8668804142920274148.correct : P8668804142920274148.Spec := by
  intro n
  simp only [A017035, Nat.add_sub_cancel, A017035.P8668804142920274148.a, A017035.P8180149356462783239.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017035

/-! ## A017035.P17086824187648311376

`A017032(n)/A017033(n)*A017032(n)²`
-/

namespace A017035.P17086824187648311376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017032 n : ℚ) / (A017033 n : ℚ) * (A017032 n ^ 2 : ℚ)

end

end A017035.P17086824187648311376

namespace A017035

/-- `A017032(n)/A017033(n)*A017032(n)²` -/
def P17086824187648311376.Spec : Prop :=
  ∀ n, P17086824187648311376.a n = (A017035 n : ℚ)

end A017035

/-! ## A017035.P16572558001076225564

`A001015(7*n+4)`
-/

namespace A017035.P16572558001076225564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (7 * n + 4)

end

end A017035.P16572558001076225564

namespace A017035

/-- `A001015(7*n+4)` -/
def P16572558001076225564.Spec : Prop :=
  ∀ n, P16572558001076225564.a n = A017035 n

end A017035

/-! ## A017035.P1423114906341999546

`(A017053(n)-2)*A070931(A017053(n))`
-/

namespace A017035.P1423114906341999546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 2) * A070931 (A017053 n).toNat

end

end A017035.P1423114906341999546

namespace A017035

/-- `(A017053(n)-2)*A070931(A017053(n))` -/
def P1423114906341999546.Spec : Prop :=
  ∀ n, P1423114906341999546.a n = A017035 n

end A017035

/-!
# A017036: a(n) = (7*n+4)^8.

The programs for A017036, the canonical program `A017036.P7722145173670923959` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017036 has offset 0).

The definition of A017036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^8` (program `A017036.P7722145173670923959`, by `A017036.P7722145173670923959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017036.P7722145173670923959

`(7*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017036

/-- `(7*n+4)^8` -/
def P7722145173670923959.Spec : Prop :=
  ∀ n, (P7722145173670923959.a n : ℤ) = A017036 n

theorem P7722145173670923959.correct : P7722145173670923959.Spec := by
  intro n
  simp only [A017036]

end A017036

/-! ## A017036.P17711673112483729177

`(lcm(4, 2*n+1)-n)²²²`
-/

namespace A017036.P17711673112483729177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 4 (2 * n + 1) : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017036.P17711673112483729177

namespace A017036

/-- `(lcm(4, 2*n+1)-n)²²²` -/
def P17711673112483729177.Spec : Prop :=
  ∀ n, P17711673112483729177.a n = A017036 n

end A017036

/-! ## A017036.P8247120487926135430

`A017032(n)²`
-/

namespace A017036.P8247120487926135430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n ^ 2

end

end A017036.P8247120487926135430

namespace A017036

/-- `A017032(n)²` -/
def P8247120487926135430.Spec : Prop :=
  ∀ n, P8247120487926135430.a n = A017036 n

theorem P8247120487926135430.correct : P8247120487926135430.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P8247120487926135430.a, A017036.P7722145173670923959.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P3050666122345746230

`A017030(n)²²`
-/

namespace A017036.P3050666122345746230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017030 n ^ 2) ^ 2

end

end A017036.P3050666122345746230

namespace A017036

/-- `A017030(n)²²` -/
def P3050666122345746230.Spec : Prop :=
  ∀ n, P3050666122345746230.a n = A017036 n

theorem P3050666122345746230.correct : P3050666122345746230.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P3050666122345746230.a, A017036.P7722145173670923959.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P6348961786779877448

`A017029(n)²²²`
-/

namespace A017036.P6348961786779877448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017029 n ^ 2) ^ 2) ^ 2

end

end A017036.P6348961786779877448

namespace A017036

/-- `A017029(n)²²²` -/
def P6348961786779877448.Spec : Prop :=
  ∀ n, P6348961786779877448.a n = A017036 n

theorem P6348961786779877448.correct : P6348961786779877448.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P6348961786779877448.a, A017036.P7722145173670923959.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P18150176821764521518

`(A017017(n)+1)²²²`
-/

namespace A017036.P18150176821764521518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017017 n + 1) ^ 2) ^ 2) ^ 2

end

end A017036.P18150176821764521518

namespace A017036

/-- `(A017017(n)+1)²²²` -/
def P18150176821764521518.Spec : Prop :=
  ∀ n, P18150176821764521518.a n = A017036 n

theorem P18150176821764521518.correct : P18150176821764521518.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P18150176821764521518.a, A017036.P7722145173670923959.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P5879518548335803358

`(A017005(n)+2)²²²`
-/

namespace A017036.P5879518548335803358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017005 n + 2) ^ 2) ^ 2) ^ 2

end

end A017036.P5879518548335803358

namespace A017036

/-- `(A017005(n)+2)²²²` -/
def P5879518548335803358.Spec : Prop :=
  ∀ n, P5879518548335803358.a n = A017036 n

theorem P5879518548335803358.correct : P5879518548335803358.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P5879518548335803358.a, A017036.P7722145173670923959.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P1925128218204805509

`(1-A017041(n))²²²`
-/

namespace A017036.P1925128218204805509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017041 n) ^ 2) ^ 2) ^ 2

end

end A017036.P1925128218204805509

namespace A017036

/-- `(1-A017041(n))²²²` -/
def P1925128218204805509.Spec : Prop :=
  ∀ n, P1925128218204805509.a n = A017036 n

theorem P1925128218204805509.correct : P1925128218204805509.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P1925128218204805509.a, A017036.P7722145173670923959.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P16595353981992358188

`(2-A017053(n))²²²`
-/

namespace A017036.P16595353981992358188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017053 n) ^ 2) ^ 2) ^ 2

end

end A017036.P16595353981992358188

namespace A017036

/-- `(2-A017053(n))²²²` -/
def P16595353981992358188.Spec : Prop :=
  ∀ n, P16595353981992358188.a n = A017036 n

theorem P16595353981992358188.correct : P16595353981992358188.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P16595353981992358188.a, A017036.P7722145173670923959.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P3289103058232466835

`(A016957(n)+n)²²²`
-/

namespace A017036.P3289103058232466835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016957 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017036.P3289103058232466835

namespace A017036

/-- `(A016957(n)+n)²²²` -/
def P3289103058232466835.Spec : Prop :=
  ∀ n, P3289103058232466835.a n = A017036 n

theorem P3289103058232466835.correct : P3289103058232466835.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P3289103058232466835.a, A017036.P7722145173670923959.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P13195460564004982444

`(n-A017113(n))²²²`
-/

namespace A017036.P13195460564004982444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017113 n) ^ 2) ^ 2) ^ 2

end

end A017036.P13195460564004982444

namespace A017036

/-- `(n-A017113(n))²²²` -/
def P13195460564004982444.Spec : Prop :=
  ∀ n, P13195460564004982444.a n = A017036 n

theorem P13195460564004982444.correct : P13195460564004982444.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P13195460564004982444.a, A017036.P7722145173670923959.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P4921119293053376822

`(A016945(n)+n+1)²²²`
-/

namespace A017036.P4921119293053376822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016945 n + (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017036.P4921119293053376822

namespace A017036

/-- `(A016945(n)+n+1)²²²` -/
def P4921119293053376822.Spec : Prop :=
  ∀ n, P4921119293053376822.a n = A017036 n

theorem P4921119293053376822.correct : P4921119293053376822.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P4921119293053376822.a, A017036.P7722145173670923959.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P15461328647901942537

`(1-(A016969(n)+n))²²²`
-/

namespace A017036.P15461328647901942537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (A016969 n + (n : ℤ))) ^ 2) ^ 2) ^ 2

end

end A017036.P15461328647901942537

namespace A017036

/-- `(1-(A016969(n)+n))²²²` -/
def P15461328647901942537.Spec : Prop :=
  ∀ n, P15461328647901942537.a n = A017036 n

theorem P15461328647901942537.correct : P15461328647901942537.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P15461328647901942537.a, A017036.P7722145173670923959.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P5356982112871417209

`A017029(n)*A017035(n)`
-/

namespace A017036.P5356982112871417209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017035 n

end

end A017036.P5356982112871417209

namespace A017036

/-- `A017029(n)*A017035(n)` -/
def P5356982112871417209.Spec : Prop :=
  ∀ n, P5356982112871417209.a n = A017036 n

theorem P5356982112871417209.correct : P5356982112871417209.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P5356982112871417209.a, A017036.P7722145173670923959.a, A017029, A017029.P18040034652068019793.a, A017035, A017035.P8180149356462783239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P1651727493534937180

`A017030(n)*A017034(n)`
-/

namespace A017036.P1651727493534937180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n * A017034 n

end

end A017036.P1651727493534937180

namespace A017036

/-- `A017030(n)*A017034(n)` -/
def P1651727493534937180.Spec : Prop :=
  ∀ n, P1651727493534937180.a n = A017036 n

theorem P1651727493534937180.correct : P1651727493534937180.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P1651727493534937180.a, A017036.P7722145173670923959.a, A017030, A017030.P16321582997434012825.a, A017034, A017034.P477179931804987805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P3494416326751879442

`A017031(n)*A017033(n)`
-/

namespace A017036.P3494416326751879442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n * A017033 n

end

end A017036.P3494416326751879442

namespace A017036

/-- `A017031(n)*A017033(n)` -/
def P3494416326751879442.Spec : Prop :=
  ∀ n, P3494416326751879442.a n = A017036 n

theorem P3494416326751879442.correct : P3494416326751879442.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P3494416326751879442.a, A017036.P7722145173670923959.a, A017031, A017031.P2549624568681958807.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P13129072832267348770

`(A147587(n)+A017018(n))²²`
-/

namespace A017036.P13129072832267348770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A147587 n + A017018 n) ^ 2) ^ 2

end

end A017036.P13129072832267348770

namespace A017036

/-- `(A147587(n)+A017018(n))²²` -/
def P13129072832267348770.Spec : Prop :=
  ∀ n, P13129072832267348770.a n = A017036 n

theorem P13129072832267348770.correct : P13129072832267348770.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P13129072832267348770.a, A017036.P7722145173670923959.a, A017018, A017018.P18030190463073795086.a, A147587, A147587.P11285010749600289520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P2125788884407638721

`(A016825(n)+A016789(n))²²²`
-/

namespace A017036.P2125788884407638721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016825 n + A016789 n) ^ 2) ^ 2) ^ 2

end

end A017036.P2125788884407638721

namespace A017036

/-- `(A016825(n)+A016789(n))²²²` -/
def P2125788884407638721.Spec : Prop :=
  ∀ n, P2125788884407638721.a n = A017036 n

theorem P2125788884407638721.correct : P2125788884407638721.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P2125788884407638721.a, A017036.P7722145173670923959.a, A016789, A016789.P8277564872725303677.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P15345987317018796313

`(A016789(n)-A017341(n))²²²`
-/

namespace A017036.P15345987317018796313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016789 n - A017341 n) ^ 2) ^ 2) ^ 2

end

end A017036.P15345987317018796313

namespace A017036

/-- `(A016789(n)-A017341(n))²²²` -/
def P15345987317018796313.Spec : Prop :=
  ∀ n, P15345987317018796313.a n = A017036 n

theorem P15345987317018796313.correct : P15345987317018796313.Spec := by
  intro n
  simp only [A017036, Nat.add_sub_cancel, A017036.P15345987317018796313.a, A017036.P7722145173670923959.a, A016789, A016789.P8277564872725303677.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017036

/-! ## A017036.P15393666955123088529

`Δ[A006124(n)]²²²`
-/

namespace A017036.P15393666955123088529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017036.P15393666955123088529

namespace A017036

/-- `Δ[A006124(n)]²²²` -/
def P15393666955123088529.Spec : Prop :=
  ∀ n, P15393666955123088529.a n = A017036 n

end A017036

/-!
# A017037: a(n) = (7*n + 4)^9.

The programs for A017037, the canonical program `A017037.P12740922842556359384` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017037 has offset 0).

The definition of A017037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^9` (program `A017037.P12740922842556359384`, by `A017037.P12740922842556359384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017037.P12740922842556359384

`(7*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017037

/-- `(7*n+4)^9` -/
def P12740922842556359384.Spec : Prop :=
  ∀ n, (P12740922842556359384.a n : ℤ) = A017037 n

theorem P12740922842556359384.correct : P12740922842556359384.Spec := by
  intro n
  simp only [A017037]

end A017037

/-! ## A017037.P13911291728493382970

`sqrt(A017034(n)^3)`
-/

namespace A017037.P13911291728493382970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017034 n ^ 3 : ℝ)

end

end A017037.P13911291728493382970

namespace A017037

/-- `sqrt(A017034(n)^3)` -/
def P13911291728493382970.Spec : Prop :=
  ∀ n, P13911291728493382970.a n = (A017037 n : ℝ)

end A017037

/-! ## A017037.P2650910378649658329

`A017029(n)*A017036(n)`
-/

namespace A017037.P2650910378649658329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017036 n

end

end A017037.P2650910378649658329

namespace A017037

/-- `A017029(n)*A017036(n)` -/
def P2650910378649658329.Spec : Prop :=
  ∀ n, P2650910378649658329.a n = A017037 n

theorem P2650910378649658329.correct : P2650910378649658329.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P2650910378649658329.a, A017037.P12740922842556359384.a, A017029, A017029.P18040034652068019793.a, A017036, A017036.P7722145173670923959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P2682568485811236206

`A017030(n)*A017035(n)`
-/

namespace A017037.P2682568485811236206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n * A017035 n

end

end A017037.P2682568485811236206

namespace A017037

/-- `A017030(n)*A017035(n)` -/
def P2682568485811236206.Spec : Prop :=
  ∀ n, P2682568485811236206.a n = A017037 n

theorem P2682568485811236206.correct : P2682568485811236206.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P2682568485811236206.a, A017037.P12740922842556359384.a, A017030, A017030.P16321582997434012825.a, A017035, A017035.P8180149356462783239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P12762207391857460814

`A017031(n)*A017034(n)`
-/

namespace A017037.P12762207391857460814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n * A017034 n

end

end A017037.P12762207391857460814

namespace A017037

/-- `A017031(n)*A017034(n)` -/
def P12762207391857460814.Spec : Prop :=
  ∀ n, P12762207391857460814.a n = A017037 n

theorem P12762207391857460814.correct : P12762207391857460814.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P12762207391857460814.a, A017037.P12740922842556359384.a, A017031, A017031.P2549624568681958807.a, A017034, A017034.P477179931804987805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P6799402673871600494

`A017032(n)*A017033(n)`
-/

namespace A017037.P6799402673871600494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n * A017033 n

end

end A017037.P6799402673871600494

namespace A017037

/-- `A017032(n)*A017033(n)` -/
def P6799402673871600494.Spec : Prop :=
  ∀ n, P6799402673871600494.a n = A017037 n

theorem P6799402673871600494.correct : P6799402673871600494.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P6799402673871600494.a, A017037.P12740922842556359384.a, A017032, A017032.P14551790922819818360.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P9929592531120049257

`A017029(n)²*A017035(n)`
-/

namespace A017037.P9929592531120049257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n ^ 2 * A017035 n

end

end A017037.P9929592531120049257

namespace A017037

/-- `A017029(n)²*A017035(n)` -/
def P9929592531120049257.Spec : Prop :=
  ∀ n, P9929592531120049257.a n = A017037 n

theorem P9929592531120049257.correct : P9929592531120049257.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P9929592531120049257.a, A017037.P12740922842556359384.a, A017029, A017029.P18040034652068019793.a, A017035, A017035.P8180149356462783239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P2854018476868326576

`A017030(n)²*A017033(n)`
-/

namespace A017037.P2854018476868326576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017030 n ^ 2 * A017033 n

end

end A017037.P2854018476868326576

namespace A017037

/-- `A017030(n)²*A017033(n)` -/
def P2854018476868326576.Spec : Prop :=
  ∀ n, P2854018476868326576.a n = A017037 n

theorem P2854018476868326576.correct : P2854018476868326576.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P2854018476868326576.a, A017037.P12740922842556359384.a, A017030, A017030.P16321582997434012825.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P18191533470337711042

`A017032(n)²*A017029(n)`
-/

namespace A017037.P18191533470337711042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n ^ 2 * A017029 n

end

end A017037.P18191533470337711042

namespace A017037

/-- `A017032(n)²*A017029(n)` -/
def P18191533470337711042.Spec : Prop :=
  ∀ n, P18191533470337711042.a n = A017037 n

theorem P18191533470337711042.correct : P18191533470337711042.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P18191533470337711042.a, A017037.P12740922842556359384.a, A017029, A017029.P18040034652068019793.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P3821358574587440137

`A017033(n)²/A017029(n)`
-/

namespace A017037.P3821358574587440137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017033 n ^ 2 : ℚ) / (A017029 n : ℚ)

end

end A017037.P3821358574587440137

namespace A017037

/-- `A017033(n)²/A017029(n)` -/
def P3821358574587440137.Spec : Prop :=
  ∀ n, P3821358574587440137.a n = (A017037 n : ℚ)

end A017037

/-! ## A017037.P7004554851801379014

`A017030(n)²²*A017029(n)`
-/

namespace A017037.P7004554851801379014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017030 n ^ 2) ^ 2 * A017029 n

end

end A017037.P7004554851801379014

namespace A017037

/-- `A017030(n)²²*A017029(n)` -/
def P7004554851801379014.Spec : Prop :=
  ∀ n, P7004554851801379014.a n = A017037 n

theorem P7004554851801379014.correct : P7004554851801379014.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P7004554851801379014.a, A017037.P12740922842556359384.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P18064782283467553214

`A017035(n)/A017033(n)*A017035(n)`
-/

namespace A017037.P18064782283467553214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017035 n : ℚ) / (A017033 n : ℚ) * (A017035 n : ℚ)

end

end A017037.P18064782283467553214

namespace A017037

/-- `A017035(n)/A017033(n)*A017035(n)` -/
def P18064782283467553214.Spec : Prop :=
  ∀ n, P18064782283467553214.a n = (A017037 n : ℚ)

end A017037

/-! ## A017037.P1169025283775403029

`A017029(n)*A017034(n)*A017029(n)²`
-/

namespace A017037.P1169025283775403029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n * A017034 n * A017029 n ^ 2

end

end A017037.P1169025283775403029

namespace A017037

/-- `A017029(n)*A017034(n)*A017029(n)²` -/
def P1169025283775403029.Spec : Prop :=
  ∀ n, P1169025283775403029.a n = A017037 n

theorem P1169025283775403029.correct : P1169025283775403029.Spec := by
  intro n
  simp only [A017037, Nat.add_sub_cancel, A017037.P1169025283775403029.a, A017037.P12740922842556359384.a, A017029, A017029.P18040034652068019793.a, A017034, A017034.P477179931804987805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017037

/-! ## A017037.P15900795723020421870

`A001017(7*n+4)`
-/

namespace A017037.P15900795723020421870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (7 * n + 4)

end

end A017037.P15900795723020421870

namespace A017037

/-- `A001017(7*n+4)` -/
def P15900795723020421870.Spec : Prop :=
  ∀ n, P15900795723020421870.a n = A017037 n

end A017037

/-! ## A017037.P8350714598042073115

`A251187(A139607(n))`
-/

namespace A017037.P8350714598042073115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251187 (A139607 n).toNat

end

end A017037.P8350714598042073115

namespace A017037

/-- `A251187(A139607(n))` -/
def P8350714598042073115.Spec : Prop :=
  ∀ n, P8350714598042073115.a n = A017037 n

end A017037

/-!
# A017038: a(n) = (7*n + 4)^10.

The programs for A017038, the canonical program `A017038.P8939061489378660932` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017038 has offset 0).

The definition of A017038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+4)^10` (program `A017038.P8939061489378660932`, by `A017038.P8939061489378660932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017038.P8939061489378660932

`(7*n+4)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017038

/-- `(7*n+4)^10` -/
def P8939061489378660932.Spec : Prop :=
  ∀ n, (P8939061489378660932.a n : ℤ) = A017038 n

theorem P8939061489378660932.correct : P8939061489378660932.Spec := by
  intro n
  simp only [A017038]

end A017038

/-! ## A017038.P11353772355373717125

`A017033(n)²`
-/

namespace A017038.P11353772355373717125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017033 n ^ 2

end

end A017038.P11353772355373717125

namespace A017038

/-- `A017033(n)²` -/
def P11353772355373717125.Spec : Prop :=
  ∀ n, P11353772355373717125.a n = A017038 n

theorem P11353772355373717125.correct : P11353772355373717125.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P11353772355373717125.a, A017038.P8939061489378660932.a, A017033, A017033.P7603149233824245264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P5301683842665566221

`(A017029(n)^5)²`
-/

namespace A017038.P5301683842665566221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n ^ 5) ^ 2

end

end A017038.P5301683842665566221

namespace A017038

/-- `(A017029(n)^5)²` -/
def P5301683842665566221.Spec : Prop :=
  ∀ n, P5301683842665566221.a n = A017038 n

theorem P5301683842665566221.correct : P5301683842665566221.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P5301683842665566221.a, A017038.P8939061489378660932.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P3391044988136565647

`sqrt(A017032(n)^5)`
-/

namespace A017038.P3391044988136565647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017032 n ^ 5 : ℝ)

end

end A017038.P3391044988136565647

namespace A017038

/-- `sqrt(A017032(n)^5)` -/
def P3391044988136565647.Spec : Prop :=
  ∀ n, P3391044988136565647.a n = (A017038 n : ℝ)

end A017038

/-! ## A017038.P2441806953996888025

`A017031(n)*A017035(n)`
-/

namespace A017038.P2441806953996888025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017031 n * A017035 n

end

end A017038.P2441806953996888025

namespace A017038

/-- `A017031(n)*A017035(n)` -/
def P2441806953996888025.Spec : Prop :=
  ∀ n, P2441806953996888025.a n = A017038 n

theorem P2441806953996888025.correct : P2441806953996888025.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P2441806953996888025.a, A017038.P8939061489378660932.a, A017031, A017031.P2549624568681958807.a, A017035, A017035.P8180149356462783239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P13898738922218779302

`A017032(n)*A017034(n)`
-/

namespace A017038.P13898738922218779302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017032 n * A017034 n

end

end A017038.P13898738922218779302

namespace A017038

/-- `A017032(n)*A017034(n)` -/
def P13898738922218779302.Spec : Prop :=
  ∀ n, P13898738922218779302.a n = A017038 n

theorem P13898738922218779302.correct : P13898738922218779302.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P13898738922218779302.a, A017038.P8939061489378660932.a, A017032, A017032.P14551790922819818360.a, A017034, A017034.P477179931804987805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P4790512638954392448

`(A017029(n)*A017032(n))²`
-/

namespace A017038.P4790512638954392448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n * A017032 n) ^ 2

end

end A017038.P4790512638954392448

namespace A017038

/-- `(A017029(n)*A017032(n))²` -/
def P4790512638954392448.Spec : Prop :=
  ∀ n, P4790512638954392448.a n = A017038 n

theorem P4790512638954392448.correct : P4790512638954392448.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P4790512638954392448.a, A017038.P8939061489378660932.a, A017029, A017029.P18040034652068019793.a, A017032, A017032.P14551790922819818360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P3532396363371557793

`(A017030(n)²*A017029(n))²`
-/

namespace A017038.P3532396363371557793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017030 n ^ 2 * A017029 n) ^ 2

end

end A017038.P3532396363371557793

namespace A017038

/-- `(A017030(n)²*A017029(n))²` -/
def P3532396363371557793.Spec : Prop :=
  ∀ n, P3532396363371557793.a n = A017038 n

theorem P3532396363371557793.correct : P3532396363371557793.Spec := by
  intro n
  simp only [A017038, Nat.add_sub_cancel, A017038.P3532396363371557793.a, A017038.P8939061489378660932.a, A017029, A017029.P18040034652068019793.a, A017030, A017030.P16321582997434012825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017038

/-! ## A017038.P3552211096338488011

`sqrt(sqrt(A017036(n)))*A017036(n)`
-/

namespace A017038.P3552211096338488011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017036 n : ℝ)) * (A017036 n : ℝ)

end

end A017038.P3552211096338488011

namespace A017038

/-- `sqrt(sqrt(A017036(n)))*A017036(n)` -/
def P3552211096338488011.Spec : Prop :=
  ∀ n, P3552211096338488011.a n = (A017038 n : ℝ)

end A017038

/-! ## A017038.P16795380268989921797

`A008454(A017029(n))`
-/

namespace A017038.P16795380268989921797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017029 n).toNat

end

end A017038.P16795380268989921797

namespace A017038

/-- `A008454(A017029(n))` -/
def P16795380268989921797.Spec : Prop :=
  ∀ n, P16795380268989921797.a n = A017038 n

end A017038

/-! ## A017038.P4658326551460416317

`A008454(A016969(n)-1+n)`
-/

namespace A017038.P4658326551460416317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n - 1 + (n : ℤ)).toNat

end

end A017038.P4658326551460416317

namespace A017038

/-- `A008454(A016969(n)-1+n)` -/
def P4658326551460416317.Spec : Prop :=
  ∀ n, P4658326551460416317.a n = A017038 n

end A017038

/-! ## A017038.P2690533971139893632

`A008454(n-(1-A016969(n)))`
-/

namespace A017038.P2690533971139893632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 ((n : ℤ) - (1 - A016969 n)).toNat

end

end A017038.P2690533971139893632

namespace A017038

/-- `A008454(n-(1-A016969(n)))` -/
def P2690533971139893632.Spec : Prop :=
  ∀ n, P2690533971139893632.a n = A017038 n

end A017038

/-! ## A017038.P15641064075192342931

`A008454(A017617(n)/2+n)`
-/

namespace A017038.P15641064075192342931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A017038.P15641064075192342931

namespace A017038

/-- `A008454(A017617(n)/2+n)` -/
def P15641064075192342931.Spec : Prop :=
  ∀ n, P15641064075192342931.a n = A017038 n

end A017038

/-! ## A017038.P15987985109688649356

`A008454(A016777(2*n+1)+n)`
-/

namespace A017038.P15987985109688649356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + 1) + (n : ℤ)).toNat

end

end A017038.P15987985109688649356

namespace A017038

/-- `A008454(A016777(2*n+1)+n)` -/
def P15987985109688649356.Spec : Prop :=
  ∀ n, P15987985109688649356.a n = A017038 n

end A017038

/-! ## A017038.P17870841353371225353

`A008454(A008586(2*n+1)-n)`
-/

namespace A017038.P17870841353371225353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n + 1) - (n : ℤ)).toNat

end

end A017038.P17870841353371225353

namespace A017038

/-- `A008454(A008586(2*n+1)-n)` -/
def P17870841353371225353.Spec : Prop :=
  ∀ n, P17870841353371225353.a n = A017038 n

end A017038

/-! ## A017038.P15507231839495665561

`A008454(A008585(2*n+1)+n+1)`
-/

namespace A017038.P15507231839495665561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017038.P15507231839495665561

namespace A017038

/-- `A008454(A008585(2*n+1)+n+1)` -/
def P15507231839495665561.Spec : Prop :=
  ∀ n, P15507231839495665561.a n = A017038 n

end A017038

/-! ## A017038.P14736673393696037810

`A008454(A016813(2*n+1)-(n+1))`
-/

namespace A017038.P14736673393696037810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A017038.P14736673393696037810

namespace A017038

/-- `A008454(A016813(2*n+1)-(n+1))` -/
def P14736673393696037810.Spec : Prop :=
  ∀ n, P14736673393696037810.a n = A017038 n

end A017038

/-!
# A017039: 

The programs for A017039, there is no canonical definition to state claims against.
-/

/-! ## A017039.P3366414254690888381

`(7*n+4)^11`
-/

namespace A017039.P3366414254690888381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 4) ^ 11

end

end A017039.P3366414254690888381

/-! ## A017039.P17972802376852463745

`(A017029(n)*A017032(n))²*A017029(n)`
-/

namespace A017039.P17972802376852463745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n * A017032 n) ^ 2 * A017029 n

end

end A017039.P17972802376852463745

/-! ## A017039.P1337471016204346108

`sqrt(A017030(n)^11)`
-/

namespace A017039.P1337471016204346108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017030 n ^ 11 : ℝ)

end

end A017039.P1337471016204346108

/-! ## A017039.P6651617447343290056

`A008455(A016993(n)+3)`
-/

namespace A017039.P6651617447343290056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + 3).toNat

end

end A017039.P6651617447343290056

/-! ## A017039.P9786847032103407010

`A008455(A017113(n)-n)`
-/

namespace A017039.P9786847032103407010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017113 n - (n : ℤ)).toNat

end

end A017039.P9786847032103407010

/-! ## A017039.P13462445474992000180

`A008455(A016969(n)-1+n)`
-/

namespace A017039.P13462445474992000180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n - 1 + (n : ℤ)).toNat

end

end A017039.P13462445474992000180

/-! ## A017039.P16603424220995911965

`A008455(n-(1-A016969(n)))`
-/

namespace A017039.P16603424220995911965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 ((n : ℤ) - (1 - A016969 n)).toNat

end

end A017039.P16603424220995911965

/-! ## A017039.P8456274791721189127

`A008455(A017617(n)/2+n)`
-/

namespace A017039.P8456274791721189127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway ((A017617 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A017039.P8456274791721189127

/-! ## A017039.P4677106791249186654

`A008455(A008585(2*n+1)+n+1)`
-/

namespace A017039.P4677106791249186654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017039.P4677106791249186654

/-! ## A017039.P3180303080573357053

`A008455(A016813(2*n+1)-(n+1))`
-/

namespace A017039.P3180303080573357053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A017039.P3180303080573357053

/-!
# A017040: 

The programs for A017040, there is no canonical definition to state claims against.
-/

/-! ## A017040.P7044242320861836506

`(7*n+4)^12`
-/

namespace A017040.P7044242320861836506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 4) ^ 12

end

end A017040.P7044242320861836506

/-! ## A017040.P2376047892748896758

`A017034(n)²`
-/

namespace A017040.P2376047892748896758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017034 n ^ 2

end

end A017040.P2376047892748896758

/-! ## A017040.P9218585544158942086

`(A017029(n)^6)²`
-/

namespace A017040.P9218585544158942086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n ^ 6) ^ 2

end

end A017040.P9218585544158942086

/-! ## A017040.P16951802678941047986

`sqrt(A017036(n))*A017036(n)`
-/

namespace A017040.P16951802678941047986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017036 n : ℝ) * (A017036 n : ℝ)

end

end A017040.P16951802678941047986

/-! ## A017040.P540314595615909936

`(A017029(n)*A017030(n))²²`
-/

namespace A017040.P540314595615909936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017029 n * A017030 n) ^ 2) ^ 2

end

end A017040.P540314595615909936

/-! ## A017040.P12458647643865077304

`(A017032(n)/A017029(n))²²`
-/

namespace A017040.P12458647643865077304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017032 n : ℚ) / (A017029 n : ℚ)) ^ 2) ^ 2

end

end A017040.P12458647643865077304

/-! ## A017040.P8522846209561538952

`sqrt(A017036(n)^3)`
-/

namespace A017040.P8522846209561538952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017036 n ^ 3 : ℝ)

end

end A017040.P8522846209561538952

/-! ## A017040.P12377806685305185025

`A000578(A017005(n)+2)²²`
-/

namespace A017040.P12377806685305185025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017005 n + 2).toNat ^ 2) ^ 2

end

end A017040.P12377806685305185025

/-! ## A017040.P433549872959043292

`A008456(3*(n+1+n)+n+1)`
-/

namespace A017040.P433549872959043292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (3 * (n + 1 + n) + (n + 1))

end

end A017040.P433549872959043292

/-!
# A017041: a(n) = 7*n + 5.

The programs for A017041, the canonical program `A017041.P2403978402019689245` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017041 has offset 0).

The definition of A017041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+5` (program `A017041.P2403978402019689245`, by `A017041.P2403978402019689245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017041.P2403978402019689245

`7*n+5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017041

/-- `7*n+5` -/
def P2403978402019689245.Spec : Prop :=
  ∀ n, (P2403978402019689245.a n : ℤ) = A017041 n

theorem P2403978402019689245.correct : P2403978402019689245.Spec := by
  intro n
  simp only [A017041]

end A017041

/-!
# A017042: a(n) = (7*n + 5)^2.

The programs for A017042, the canonical program `A017042.P15171060736435295157` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017042 has offset 0).

The definition of A017042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)²` (program `A017042.P15171060736435295157`, by `A017042.P15171060736435295157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017042.P15171060736435295157

`(7*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017042

/-- `(7*n+5)²` -/
def P15171060736435295157.Spec : Prop :=
  ∀ n, (P15171060736435295157.a n : ℤ) = A017042 n

theorem P15171060736435295157.correct : P15171060736435295157.Spec := by
  intro n
  simp only [A017042]

end A017042

/-! ## A017042.P4277577268590701179

`record[(gcd(7, n)+n-2)²]`
-/

namespace A017042.P4277577268590701179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 7 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017042.P4277577268590701179

namespace A017042

/-- `record[(gcd(7, n)+n-2)²]` -/
def P4277577268590701179.Spec : Prop :=
  ∀ n, P4277577268590701179.a n = A017042 n

end A017042

/-! ## A017042.P9215592239089786697

`sqrt(A017044(n))`
-/

namespace A017042.P9215592239089786697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017044 n : ℝ)

end

end A017042.P9215592239089786697

namespace A017042

/-- `sqrt(A017044(n))` -/
def P9215592239089786697.Spec : Prop :=
  ∀ n, P9215592239089786697.a n = (A017042 n : ℝ)

end A017042

/-! ## A017042.P9169980981698139905

`A017041(n)^2`
-/

namespace A017042.P9169980981698139905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n ^ 2

end

end A017042.P9169980981698139905

namespace A017042

/-- `A017041(n)^2` -/
def P9169980981698139905.Spec : Prop :=
  ∀ n, P9169980981698139905.a n = A017042 n

theorem P9169980981698139905.correct : P9169980981698139905.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P9169980981698139905.a, A017042.P15171060736435295157.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P12236740970183961968

`sqrt(sqrt(A017048(n)))`
-/

namespace A017042.P12236740970183961968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017048 n : ℝ))

end

end A017042.P12236740970183961968

namespace A017042

/-- `sqrt(sqrt(A017048(n)))` -/
def P12236740970183961968.Spec : Prop :=
  ∀ n, P12236740970183961968.a n = (A017042 n : ℝ)

end A017042

/-! ## A017042.P17489049259436567217

`A017046(n)^(1/3)`
-/

namespace A017042.P17489049259436567217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017046 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017042.P17489049259436567217

namespace A017042

/-- `A017046(n)^(1/3)` -/
def P17489049259436567217.Spec : Prop :=
  ∀ n, P17489049259436567217.a n = (A017042 n : ℝ)

end A017042

/-! ## A017042.P1117250463910317700

`A017043(n)^(2/3)`
-/

namespace A017042.P1117250463910317700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017043 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017042.P1117250463910317700

namespace A017042

/-- `A017043(n)^(2/3)` -/
def P1117250463910317700.Spec : Prop :=
  ∀ n, P1117250463910317700.a n = (A017042 n : ℝ)

end A017042

/-! ## A017042.P447737094165673953

`A017043(n)/A017041(n)`
-/

namespace A017042.P447737094165673953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017043 n : ℚ) / (A017041 n : ℚ)

end

end A017042.P447737094165673953

namespace A017042

/-- `A017043(n)/A017041(n)` -/
def P447737094165673953.Spec : Prop :=
  ∀ n, P447737094165673953.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P10476793375709390136

`A017045(n)/A017043(n)`
-/

namespace A017042.P10476793375709390136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n : ℚ) / (A017043 n : ℚ)

end

end A017042.P10476793375709390136

namespace A017042

/-- `A017045(n)/A017043(n)` -/
def P10476793375709390136.Spec : Prop :=
  ∀ n, P10476793375709390136.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P16458871050977495469

`A017046(n)/A017044(n)`
-/

namespace A017042.P16458871050977495469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017046 n : ℚ) / (A017044 n : ℚ)

end

end A017042.P16458871050977495469

namespace A017042

/-- `A017046(n)/A017044(n)` -/
def P16458871050977495469.Spec : Prop :=
  ∀ n, P16458871050977495469.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P7120836975361933803

`A017047(n)/A017045(n)`
-/

namespace A017042.P7120836975361933803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017045 n : ℚ)

end

end A017042.P7120836975361933803

namespace A017042

/-- `A017047(n)/A017045(n)` -/
def P7120836975361933803.Spec : Prop :=
  ∀ n, P7120836975361933803.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P17486370632485319531

`A157373(n+1)-A017137(n)`
-/

namespace A017042.P17486370632485319531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157373 (n + 1) - A017137 n

end

end A017042.P17486370632485319531

namespace A017042

/-- `A157373(n+1)-A017137(n)` -/
def P17486370632485319531.Spec : Prop :=
  ∀ n, P17486370632485319531.a n = A017042 n

theorem P17486370632485319531.correct : P17486370632485319531.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P17486370632485319531.a, A017042.P15171060736435295157.a, A017137, A017137.P18352355205687682311.a, A157373, A157373.P8759725065568610804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P14789265479355013344

`A017044(n)²/A017043(n)²`
-/

namespace A017042.P14789265479355013344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n ^ 2 : ℚ) / (A017043 n ^ 2 : ℚ)

end

end A017042.P14789265479355013344

namespace A017042

/-- `A017044(n)²/A017043(n)²` -/
def P14789265479355013344.Spec : Prop :=
  ∀ n, P14789265479355013344.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P9609003805945525231

`A017041(n)²²²/A017046(n)`
-/

namespace A017042.P9609003805945525231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017041 n ^ 2) ^ 2) ^ 2 : ℚ) / (A017046 n : ℚ)

end

end A017042.P9609003805945525231

namespace A017042

/-- `A017041(n)²²²/A017046(n)` -/
def P9609003805945525231.Spec : Prop :=
  ∀ n, P9609003805945525231.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P5114951829211204612

`A017045(n)/A017048(n)*A017045(n)`
-/

namespace A017042.P5114951829211204612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n : ℚ) / (A017048 n : ℚ) * (A017045 n : ℚ)

end

end A017042.P5114951829211204612

namespace A017042

/-- `A017045(n)/A017048(n)*A017045(n)` -/
def P5114951829211204612.Spec : Prop :=
  ∀ n, P5114951829211204612.a n = (A017042 n : ℚ)

end A017042

/-! ## A017042.P5863666719386028436

`A156676(n+1)-A004767(n)*A017137(n)`
-/

namespace A017042.P5863666719386028436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156676 (n + 1) - A004767 n * A017137 n

end

end A017042.P5863666719386028436

namespace A017042

/-- `A156676(n+1)-A004767(n)*A017137(n)` -/
def P5863666719386028436.Spec : Prop :=
  ∀ n, P5863666719386028436.a n = A017042 n

theorem P5863666719386028436.correct : P5863666719386028436.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P5863666719386028436.a, A017042.P15171060736435295157.a, A004767, A004767.P13352534504447192883.a, A017137, A017137.P18352355205687682311.a, A156676, A156676.P2913965523641244757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P16972085097428645428

`A135703(n+1)²/(n+1)²`
-/

namespace A017042.P16972085097428645428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135703 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017042.P16972085097428645428

namespace A017042

/-- `A135703(n+1)²/(n+1)²` -/
def P16972085097428645428.Spec : Prop :=
  ∀ n, P16972085097428645428.a n = (A017042 n : ℚ)

theorem P16972085097428645428.correct : P16972085097428645428.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P16972085097428645428.a, A017042.P15171060736435295157.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P13679170397418693384

`A008589(n+1)*A017029(n)-A017017(n)`
-/

namespace A017042.P13679170397418693384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) * A017029 n - A017017 n

end

end A017042.P13679170397418693384

namespace A017042

/-- `A008589(n+1)*A017029(n)-A017017(n)` -/
def P13679170397418693384.Spec : Prop :=
  ∀ n, P13679170397418693384.a n = A017042 n

theorem P13679170397418693384.correct : P13679170397418693384.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P13679170397418693384.a, A017042.P15171060736435295157.a, A008589, A008589.P8963889148823201939.a, A017017, A017017.P16632027915442464889.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P15094313062128238807

`A017029(n+1)+A008589(n+1)*A017005(n)`
-/

namespace A017042.P15094313062128238807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (n + 1) + A008589 (n + 1) * A017005 n

end

end A017042.P15094313062128238807

namespace A017042

/-- `A017029(n+1)+A008589(n+1)*A017005(n)` -/
def P15094313062128238807.Spec : Prop :=
  ∀ n, P15094313062128238807.a n = A017042 n

theorem P15094313062128238807.correct : P15094313062128238807.Spec := by
  intro n
  simp only [A017042, Nat.add_sub_cancel, A017042.P15094313062128238807.a, A017042.P15171060736435295157.a, A008589, A008589.P8963889148823201939.a, A017005, A017005.P14585839201288811509.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017042

/-! ## A017042.P7344618948770731996

`A017041(n)*A116728(n+3)`
-/

namespace A017042.P7344618948770731996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A116728 (n + 3)

end

end A017042.P7344618948770731996

namespace A017042

/-- `A017041(n)*A116728(n+3)` -/
def P7344618948770731996.Spec : Prop :=
  ∀ n, P7344618948770731996.a n = A017042 n

end A017042

/-!
# A017043: a(n) = (7*n + 5)^3.

The programs for A017043, the canonical program `A017043.P8390845589909305054` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017043 has offset 0).

The definition of A017043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^3` (program `A017043.P8390845589909305054`, by `A017043.P8390845589909305054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017043.P8390845589909305054

`(7*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017043

/-- `(7*n+5)^3` -/
def P8390845589909305054.Spec : Prop :=
  ∀ n, (P8390845589909305054.a n : ℤ) = A017043 n

theorem P8390845589909305054.correct : P8390845589909305054.Spec := by
  intro n
  simp only [A017043]

end A017043

/-! ## A017043.P4207430174874549563

`sqrt(A017046(n))`
-/

namespace A017043.P4207430174874549563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017046 n : ℝ)

end

end A017043.P4207430174874549563

namespace A017043

/-- `sqrt(A017046(n))` -/
def P4207430174874549563.Spec : Prop :=
  ∀ n, P4207430174874549563.a n = (A017043 n : ℝ)

end A017043

/-! ## A017043.P16813226430665237400

`sqrt(A017042(n)^3)`
-/

namespace A017043.P16813226430665237400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017042 n ^ 3 : ℝ)

end

end A017043.P16813226430665237400

namespace A017043

/-- `sqrt(A017042(n)^3)` -/
def P16813226430665237400.Spec : Prop :=
  ∀ n, P16813226430665237400.a n = (A017043 n : ℝ)

end A017043

/-! ## A017043.P2290936471911126105

`((A016969(n)+n)^(3/2))²`
-/

namespace A017043.P2290936471911126105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A016969 n + (n : ℤ) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) ^ 2

end

end A017043.P2290936471911126105

namespace A017043

/-- `((A016969(n)+n)^(3/2))²` -/
def P2290936471911126105.Spec : Prop :=
  ∀ n, P2290936471911126105.a n = (A017043 n : ℝ)

end A017043

/-! ## A017043.P4427054023810785531

`A017041(n)*A017042(n)`
-/

namespace A017043.P4427054023810785531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A017042 n

end

end A017043.P4427054023810785531

namespace A017043

/-- `A017041(n)*A017042(n)` -/
def P4427054023810785531.Spec : Prop :=
  ∀ n, P4427054023810785531.a n = A017043 n

theorem P4427054023810785531.correct : P4427054023810785531.Spec := by
  intro n
  simp only [A017043, Nat.add_sub_cancel, A017043.P4427054023810785531.a, A017043.P8390845589909305054.a, A017041, A017041.P2403978402019689245.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017043

/-! ## A017043.P7328199711511921823

`A017044(n)/A017041(n)`
-/

namespace A017043.P7328199711511921823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n : ℚ) / (A017041 n : ℚ)

end

end A017043.P7328199711511921823

namespace A017043

/-- `A017044(n)/A017041(n)` -/
def P7328199711511921823.Spec : Prop :=
  ∀ n, P7328199711511921823.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P18295033708790578540

`A017045(n)/A017042(n)`
-/

namespace A017043.P18295033708790578540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n : ℚ) / (A017042 n : ℚ)

end

end A017043.P18295033708790578540

namespace A017043

/-- `A017045(n)/A017042(n)` -/
def P18295033708790578540.Spec : Prop :=
  ∀ n, P18295033708790578540.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P5150754122711247654

`A017047(n)/A017044(n)`
-/

namespace A017043.P5150754122711247654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017044 n : ℚ)

end

end A017043.P5150754122711247654

namespace A017043

/-- `A017047(n)/A017044(n)` -/
def P5150754122711247654.Spec : Prop :=
  ∀ n, P5150754122711247654.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P17019278291017596466

`A017048(n)/A017045(n)`
-/

namespace A017043.P17019278291017596466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / (A017045 n : ℚ)

end

end A017043.P17019278291017596466

namespace A017043

/-- `A017048(n)/A017045(n)` -/
def P17019278291017596466.Spec : Prop :=
  ∀ n, P17019278291017596466.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P16824540022975094225

`A017049(n)/A017046(n)`
-/

namespace A017043.P16824540022975094225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017049 n : ℚ) / (A017046 n : ℚ)

end

end A017043.P16824540022975094225

namespace A017043

/-- `A017049(n)/A017046(n)` -/
def P16824540022975094225.Spec : Prop :=
  ∀ n, P16824540022975094225.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P7418134408633737394

`A017050(n)/A017047(n)`
-/

namespace A017043.P7418134408633737394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017050 n : ℚ) / (A017047 n : ℚ)

end

end A017043.P7418134408633737394

namespace A017043

/-- `A017050(n)/A017047(n)` -/
def P7418134408633737394.Spec : Prop :=
  ∀ n, P7418134408633737394.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P10712632330645594452

`A017044(n)²/A017045(n)`
-/

namespace A017043.P10712632330645594452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n ^ 2 : ℚ) / (A017045 n : ℚ)

end

end A017043.P10712632330645594452

namespace A017043

/-- `A017044(n)²/A017045(n)` -/
def P10712632330645594452.Spec : Prop :=
  ∀ n, P10712632330645594452.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P9412625577083579884

`A017045(n)/A017041(n)²`
-/

namespace A017043.P9412625577083579884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n : ℚ) / (A017041 n ^ 2 : ℚ)

end

end A017043.P9412625577083579884

namespace A017043

/-- `A017045(n)/A017041(n)²` -/
def P9412625577083579884.Spec : Prop :=
  ∀ n, P9412625577083579884.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P4844923889676454506

`A017045(n)²/A017047(n)`
-/

namespace A017043.P4844923889676454506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n ^ 2 : ℚ) / (A017047 n : ℚ)

end

end A017043.P4844923889676454506

namespace A017043

/-- `A017045(n)²/A017047(n)` -/
def P4844923889676454506.Spec : Prop :=
  ∀ n, P4844923889676454506.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P12413394692434661334

`A017047(n)/A017042(n)²`
-/

namespace A017043.P12413394692434661334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017042 n ^ 2 : ℚ)

end

end A017043.P12413394692434661334

namespace A017043

/-- `A017047(n)/A017042(n)²` -/
def P12413394692434661334.Spec : Prop :=
  ∀ n, P12413394692434661334.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P6736351715261751965

`(A016969(n)+n)*A017042(n)`
-/

namespace A017043.P6736351715261751965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + (n : ℤ)) * A017042 n

end

end A017043.P6736351715261751965

namespace A017043

/-- `(A016969(n)+n)*A017042(n)` -/
def P6736351715261751965.Spec : Prop :=
  ∀ n, P6736351715261751965.a n = A017043 n

theorem P6736351715261751965.correct : P6736351715261751965.Spec := by
  intro n
  simp only [A017043, Nat.add_sub_cancel, A017043.P6736351715261751965.a, A017043.P8390845589909305054.a, A016969, A016969.P9377817521032485226.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017043

/-! ## A017043.P12709245124106103494

`A017047(n)/A017041(n)²²`
-/

namespace A017043.P12709245124106103494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / ((A017041 n ^ 2) ^ 2 : ℚ)

end

end A017043.P12709245124106103494

namespace A017043

/-- `A017047(n)/A017041(n)²²` -/
def P12709245124106103494.Spec : Prop :=
  ∀ n, P12709245124106103494.a n = (A017043 n : ℚ)

end A017043

/-! ## A017043.P14933498990618753447

`(A004770(n+1)-n)*A017042(n)`
-/

namespace A017043.P14933498990618753447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) - (n : ℤ)) * A017042 n

end

end A017043.P14933498990618753447

namespace A017043

/-- `(A004770(n+1)-n)*A017042(n)` -/
def P14933498990618753447.Spec : Prop :=
  ∀ n, P14933498990618753447.a n = A017043 n

theorem P14933498990618753447.correct : P14933498990618753447.Spec := by
  intro n
  simp only [A017043, Nat.add_sub_cancel, A017043.P14933498990618753447.a, A017043.P8390845589909305054.a, A004770, A004770.P3348596714663788795.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017043

/-! ## A017043.P14786981477940331518

`Δ[A186029(n)]²*Δ[A186029(n)]`
-/

namespace A017043.P14786981477940331518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017043.P14786981477940331518

namespace A017043

/-- `Δ[A186029(n)]²*Δ[A186029(n)]` -/
def P14786981477940331518.Spec : Prop :=
  ∀ n, P14786981477940331518.a n = A017043 n

end A017043

/-!
# A017044: a(n) = (7*n + 5)^4.

The programs for A017044, the canonical program `A017044.P1188887687924600876` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017044 has offset 0).

The definition of A017044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^4` (program `A017044.P1188887687924600876`, by `A017044.P1188887687924600876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017044.P1188887687924600876

`(7*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017044

/-- `(7*n+5)^4` -/
def P1188887687924600876.Spec : Prop :=
  ∀ n, (P1188887687924600876.a n : ℤ) = A017044 n

theorem P1188887687924600876.correct : P1188887687924600876.Spec := by
  intro n
  simp only [A017044]

end A017044

/-! ## A017044.P5857850391144927384

`(record[lcm(4, n+1)]-(n-1))²²`
-/

namespace A017044.P5857850391144927384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017044.P5857850391144927384

namespace A017044

/-- `(record[lcm(4, n+1)]-(n-1))²²` -/
def P5857850391144927384.Spec : Prop :=
  ∀ n, P5857850391144927384.a n = A017044 n

end A017044

/-! ## A017044.P1499372263486043387

`(Δ[lcm(2, (2*n)²)]-(n-1))²²`
-/

namespace A017044.P1499372263486043387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017044.P1499372263486043387

namespace A017044

/-- `(Δ[lcm(2, (2*n)²)]-(n-1))²²` -/
def P1499372263486043387.Spec : Prop :=
  ∀ n, P1499372263486043387.a n = A017044 n

end A017044

/-! ## A017044.P9934060277579256825

`((1-n)²-lcm(n+2, n+3))²²`
-/

namespace A017044.P9934060277579256825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2 - (Nat.lcm (n + 2) (n + 3) : ℤ)) ^ 2) ^ 2

end

end A017044.P9934060277579256825

namespace A017044

/-- `((1-n)²-lcm(n+2, n+3))²²` -/
def P9934060277579256825.Spec : Prop :=
  ∀ n, P9934060277579256825.a n = A017044 n

end A017044

/-! ## A017044.P15253343916370960833

`Δ[(2*n+1)²-C(n+3, 2)]²²`
-/

namespace A017044.P15253343916370960833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 3) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017044.P15253343916370960833

namespace A017044

/-- `Δ[(2*n+1)²-C(n+3, 2)]²²` -/
def P15253343916370960833.Spec : Prop :=
  ∀ n, P15253343916370960833.a n = A017044 n

theorem P15253343916370960833.correct : P15253343916370960833.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P15253343916370960833.f1, A017044.P15253343916370960833.a, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P6865462929631245700

`(Δ[and(2*n+1, 2*n)²]-(n-1))²²`
-/

namespace A017044.P6865462929631245700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2

end

end A017044.P6865462929631245700

namespace A017044

/-- `(Δ[and(2*n+1, 2*n)²]-(n-1))²²` -/
def P6865462929631245700.Spec : Prop :=
  ∀ n, P6865462929631245700.a n = A017044 n

end A017044

/-! ## A017044.P8668879242178639183

`A017042(n)²`
-/

namespace A017044.P8668879242178639183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n ^ 2

end

end A017044.P8668879242178639183

namespace A017044

/-- `A017042(n)²` -/
def P8668879242178639183.Spec : Prop :=
  ∀ n, P8668879242178639183.a n = A017044 n

theorem P8668879242178639183.correct : P8668879242178639183.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P8668879242178639183.a, A017044.P1188887687924600876.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P10334076099022365876

`sqrt(A017048(n))`
-/

namespace A017044.P10334076099022365876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017048 n : ℝ)

end

end A017044.P10334076099022365876

namespace A017044

/-- `sqrt(A017048(n))` -/
def P10334076099022365876.Spec : Prop :=
  ∀ n, P10334076099022365876.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P3064005037667374181

`A017041(n)²²`
-/

namespace A017044.P3064005037667374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n ^ 2) ^ 2

end

end A017044.P3064005037667374181

namespace A017044

/-- `A017041(n)²²` -/
def P3064005037667374181.Spec : Prop :=
  ∀ n, P3064005037667374181.a n = A017044 n

theorem P3064005037667374181.correct : P3064005037667374181.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P3064005037667374181.a, A017044.P1188887687924600876.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P5314276999390306137

`(A017029(n)+1)²²`
-/

namespace A017044.P5314276999390306137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017029 n + 1) ^ 2) ^ 2

end

end A017044.P5314276999390306137

namespace A017044

/-- `(A017029(n)+1)²²` -/
def P5314276999390306137.Spec : Prop :=
  ∀ n, P5314276999390306137.a n = A017044 n

theorem P5314276999390306137.correct : P5314276999390306137.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P5314276999390306137.a, A017044.P1188887687924600876.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P16196079260368866350

`(A017017(n)+2)²²`
-/

namespace A017044.P16196079260368866350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017017 n + 2) ^ 2) ^ 2

end

end A017044.P16196079260368866350

namespace A017044

/-- `(A017017(n)+2)²²` -/
def P16196079260368866350.Spec : Prop :=
  ∀ n, P16196079260368866350.a n = A017044 n

theorem P16196079260368866350.correct : P16196079260368866350.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P16196079260368866350.a, A017044.P1188887687924600876.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P1137251168967723203

`(1-A017053(n))²²`
-/

namespace A017044.P1137251168967723203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017053 n) ^ 2) ^ 2

end

end A017044.P1137251168967723203

namespace A017044

/-- `(1-A017053(n))²²` -/
def P1137251168967723203.Spec : Prop :=
  ∀ n, P1137251168967723203.a n = A017044 n

theorem P1137251168967723203.correct : P1137251168967723203.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P1137251168967723203.a, A017044.P1188887687924600876.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P1723228556024647851

`(A017005(n)+3)²²`
-/

namespace A017044.P1723228556024647851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017005 n + 3) ^ 2) ^ 2

end

end A017044.P1723228556024647851

namespace A017044

/-- `(A017005(n)+3)²²` -/
def P1723228556024647851.Spec : Prop :=
  ∀ n, P1723228556024647851.a n = A017044 n

theorem P1723228556024647851.correct : P1723228556024647851.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P1723228556024647851.a, A017044.P1188887687924600876.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P16149330761608271118

`(A016969(n)+n)²²`
-/

namespace A017044.P16149330761608271118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 n + (n : ℤ)) ^ 2) ^ 2

end

end A017044.P16149330761608271118

namespace A017044

/-- `(A016969(n)+n)²²` -/
def P16149330761608271118.Spec : Prop :=
  ∀ n, P16149330761608271118.a n = A017044 n

theorem P16149330761608271118.correct : P16149330761608271118.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P16149330761608271118.a, A017044.P1188887687924600876.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-! ## A017044.P5065300805213815526

`(sqrt(A017030(n))+1)²²`
-/

namespace A017044.P5065300805213815526
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017030 n : ℝ) + 1) ^ 2) ^ 2

end

end A017044.P5065300805213815526

namespace A017044

/-- `(sqrt(A017030(n))+1)²²` -/
def P5065300805213815526.Spec : Prop :=
  ∀ n, P5065300805213815526.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P8895102925030977341

`(sqrt(A017018(n))+2)²²`
-/

namespace A017044.P8895102925030977341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017018 n : ℝ) + 2) ^ 2) ^ 2

end

end A017044.P8895102925030977341

namespace A017044

/-- `(sqrt(A017018(n))+2)²²` -/
def P8895102925030977341.Spec : Prop :=
  ∀ n, P8895102925030977341.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P18360000243266564965

`(1-sqrt(A017054(n)))²²`
-/

namespace A017044.P18360000243266564965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017054 n : ℝ)) ^ 2) ^ 2

end

end A017044.P18360000243266564965

namespace A017044

/-- `(1-sqrt(A017054(n)))²²` -/
def P18360000243266564965.Spec : Prop :=
  ∀ n, P18360000243266564965.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P15573259998808854816

`(sqrt(A016970(n))+n)²²`
-/

namespace A017044.P15573259998808854816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A016970 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017044.P15573259998808854816

namespace A017044

/-- `(sqrt(A016970(n))+n)²²` -/
def P15573259998808854816.Spec : Prop :=
  ∀ n, P15573259998808854816.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P6957132318025553044

`(n-sqrt(A017126(n)))²²`
-/

namespace A017044.P6957132318025553044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017126 n : ℝ)) ^ 2) ^ 2

end

end A017044.P6957132318025553044

namespace A017044

/-- `(n-sqrt(A017126(n)))²²` -/
def P6957132318025553044.Spec : Prop :=
  ∀ n, P6957132318025553044.a n = (A017044 n : ℝ)

end A017044

/-! ## A017044.P12228563496054973190

`(n-Δ[A007742(n)])²²`
-/

namespace A017044.P12228563496054973190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017044.P12228563496054973190

namespace A017044

/-- `(n-Δ[A007742(n)])²²` -/
def P12228563496054973190.Spec : Prop :=
  ∀ n, P12228563496054973190.a n = A017044 n

theorem P12228563496054973190.correct : P12228563496054973190.Spec := by
  intro n
  simp only [A017044, Nat.add_sub_cancel, A017044.P12228563496054973190.f1, A017044.P12228563496054973190.a, A017044.P1188887687924600876.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017044

/-!
# A017045: a(n) = (7*n + 5)^5.

The programs for A017045, the canonical program `A017045.P12492567027182291425` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017045 has offset 0).

The definition of A017045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^5` (program `A017045.P12492567027182291425`, by `A017045.P12492567027182291425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017045.P12492567027182291425

`(7*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017045

/-- `(7*n+5)^5` -/
def P12492567027182291425.Spec : Prop :=
  ∀ n, (P12492567027182291425.a n : ℤ) = A017045 n

theorem P12492567027182291425.correct : P12492567027182291425.Spec := by
  intro n
  simp only [A017045]

end A017045

/-! ## A017045.P12653773528977178233

`sqrt(A017050(n))`
-/

namespace A017045.P12653773528977178233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017050 n : ℝ)

end

end A017045.P12653773528977178233

namespace A017045

/-- `sqrt(A017050(n))` -/
def P12653773528977178233.Spec : Prop :=
  ∀ n, P12653773528977178233.a n = (A017045 n : ℝ)

end A017045

/-! ## A017045.P11573545884270497369

`sqrt(A017042(n)^5)`
-/

namespace A017045.P11573545884270497369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017042 n ^ 5 : ℝ)

end

end A017045.P11573545884270497369

namespace A017045

/-- `sqrt(A017042(n)^5)` -/
def P11573545884270497369.Spec : Prop :=
  ∀ n, P11573545884270497369.a n = (A017045 n : ℝ)

end A017045

/-! ## A017045.P10170778278147925947

`(7*n+5)*A017044(n)`
-/

namespace A017045.P10170778278147925947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 5 : ℤ) * A017044 n

end

end A017045.P10170778278147925947

namespace A017045

/-- `(7*n+5)*A017044(n)` -/
def P10170778278147925947.Spec : Prop :=
  ∀ n, P10170778278147925947.a n = A017045 n

theorem P10170778278147925947.correct : P10170778278147925947.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P10170778278147925947.a, A017045.P12492567027182291425.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P3834512755887393805

`abs((A004770(n+1)-n)^5)`
-/

namespace A017045.P3834512755887393805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004770 (n + 1) - (n : ℤ)) ^ 5|

end

end A017045.P3834512755887393805

namespace A017045

/-- `abs((A004770(n+1)-n)^5)` -/
def P3834512755887393805.Spec : Prop :=
  ∀ n, P3834512755887393805.a n = A017045 n

end A017045

/-! ## A017045.P18235017634267666551

`abs((A016969(n)+n)^5-1)+1`
-/

namespace A017045.P18235017634267666551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016969 n + (n : ℤ)) ^ 5 - 1| + 1

end

end A017045.P18235017634267666551

namespace A017045

/-- `abs((A016969(n)+n)^5-1)+1` -/
def P18235017634267666551.Spec : Prop :=
  ∀ n, P18235017634267666551.a n = A017045 n

end A017045

/-! ## A017045.P13900488676236115938

`A017042(n)*A017043(n)`
-/

namespace A017045.P13900488676236115938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n * A017043 n

end

end A017045.P13900488676236115938

namespace A017045

/-- `A017042(n)*A017043(n)` -/
def P13900488676236115938.Spec : Prop :=
  ∀ n, P13900488676236115938.a n = A017045 n

theorem P13900488676236115938.correct : P13900488676236115938.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P13900488676236115938.a, A017045.P12492567027182291425.a, A017042, A017042.P15171060736435295157.a, A017043, A017043.P8390845589909305054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P1901285938168016057

`A017046(n)/A017041(n)`
-/

namespace A017045.P1901285938168016057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017046 n : ℚ) / (A017041 n : ℚ)

end

end A017045.P1901285938168016057

namespace A017045

/-- `A017046(n)/A017041(n)` -/
def P1901285938168016057.Spec : Prop :=
  ∀ n, P1901285938168016057.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P12510636912575591409

`A017047(n)/A017042(n)`
-/

namespace A017045.P12510636912575591409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017042 n : ℚ)

end

end A017045.P12510636912575591409

namespace A017045

/-- `A017047(n)/A017042(n)` -/
def P12510636912575591409.Spec : Prop :=
  ∀ n, P12510636912575591409.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P11135433982081020669

`A017041(n)²*A017043(n)`
-/

namespace A017045.P11135433982081020669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n ^ 2 * A017043 n

end

end A017045.P11135433982081020669

namespace A017045

/-- `A017041(n)²*A017043(n)` -/
def P11135433982081020669.Spec : Prop :=
  ∀ n, P11135433982081020669.a n = A017045 n

theorem P11135433982081020669.correct : P11135433982081020669.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P11135433982081020669.a, A017045.P12492567027182291425.a, A017041, A017041.P2403978402019689245.a, A017043, A017043.P8390845589909305054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P14217443536095277352

`A017042(n)²*A017041(n)`
-/

namespace A017045.P14217443536095277352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n ^ 2 * A017041 n

end

end A017045.P14217443536095277352

namespace A017045

/-- `A017042(n)²*A017041(n)` -/
def P14217443536095277352.Spec : Prop :=
  ∀ n, P14217443536095277352.a n = A017045 n

theorem P14217443536095277352.correct : P14217443536095277352.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P14217443536095277352.a, A017045.P12492567027182291425.a, A017041, A017041.P2403978402019689245.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P2128227702350486616

`A017044(n)²/A017043(n)`
-/

namespace A017045.P2128227702350486616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n ^ 2 : ℚ) / (A017043 n : ℚ)

end

end A017045.P2128227702350486616

namespace A017045

/-- `A017044(n)²/A017043(n)` -/
def P2128227702350486616.Spec : Prop :=
  ∀ n, P2128227702350486616.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P5372843808640808461

`A017047(n)/A017041(n)²`
-/

namespace A017045.P5372843808640808461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017041 n ^ 2 : ℚ)

end

end A017045.P5372843808640808461

namespace A017045

/-- `A017047(n)/A017041(n)²` -/
def P5372843808640808461.Spec : Prop :=
  ∀ n, P5372843808640808461.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P2087126451320456317

`A017046(n)/(A017029(n)+1)`
-/

namespace A017045.P2087126451320456317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017046 n : ℚ) / (A017029 n + 1 : ℚ)

end

end A017045.P2087126451320456317

namespace A017045

/-- `A017046(n)/(A017029(n)+1)` -/
def P2087126451320456317.Spec : Prop :=
  ∀ n, P2087126451320456317.a n = (A017045 n : ℚ)

theorem P2087126451320456317.correct : P2087126451320456317.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P2087126451320456317.a, A017045.P12492567027182291425.a, A017029, A017029.P18040034652068019793.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P4847864132025735782

`A017046(n)/(A017053(n)-1)`
-/

namespace A017045.P4847864132025735782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017046 n : ℚ) / (A017053 n - 1 : ℚ)

end

end A017045.P4847864132025735782

namespace A017045

/-- `A017046(n)/(A017053(n)-1)` -/
def P4847864132025735782.Spec : Prop :=
  ∀ n, P4847864132025735782.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P17183903593422982496

`A017047(n)/(A017029(n)+1)²`
-/

namespace A017045.P17183903593422982496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / ((A017029 n + 1) ^ 2 : ℚ)

end

end A017045.P17183903593422982496

namespace A017045

/-- `A017047(n)/(A017029(n)+1)²` -/
def P17183903593422982496.Spec : Prop :=
  ∀ n, P17183903593422982496.a n = (A017045 n : ℚ)

theorem P17183903593422982496.correct : P17183903593422982496.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P17183903593422982496.a, A017045.P12492567027182291425.a, A017029, A017029.P18040034652068019793.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P10600476265527861187

`A017047(n)/(1-A017053(n))²`
-/

namespace A017045.P10600476265527861187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / ((1 - A017053 n) ^ 2 : ℚ)

end

end A017045.P10600476265527861187

namespace A017045

/-- `A017047(n)/(1-A017053(n))²` -/
def P10600476265527861187.Spec : Prop :=
  ∀ n, P10600476265527861187.a n = (A017045 n : ℚ)

end A017045

/-! ## A017045.P14284744406626972816

`(A016969(n)+n)*A017042(n)²`
-/

namespace A017045.P14284744406626972816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + (n : ℤ)) * A017042 n ^ 2

end

end A017045.P14284744406626972816

namespace A017045

/-- `(A016969(n)+n)*A017042(n)²` -/
def P14284744406626972816.Spec : Prop :=
  ∀ n, P14284744406626972816.a n = A017045 n

theorem P14284744406626972816.correct : P14284744406626972816.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P14284744406626972816.a, A017045.P12492567027182291425.a, A016969, A016969.P9377817521032485226.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P17684924265924472356

`(A004770(n+1)-n)*A017042(n)²`
-/

namespace A017045.P17684924265924472356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004770 (n + 1) - (n : ℤ)) * A017042 n ^ 2

end

end A017045.P17684924265924472356

namespace A017045

/-- `(A004770(n+1)-n)*A017042(n)²` -/
def P17684924265924472356.Spec : Prop :=
  ∀ n, P17684924265924472356.a n = A017045 n

theorem P17684924265924472356.correct : P17684924265924472356.Spec := by
  intro n
  simp only [A017045, Nat.add_sub_cancel, A017045.P17684924265924472356.a, A017045.P12492567027182291425.a, A004770, A004770.P3348596714663788795.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017045

/-! ## A017045.P9276785029426865809

`A017044(n)/A017047(n)*A017044(n)²`
-/

namespace A017045.P9276785029426865809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n : ℚ) / (A017047 n : ℚ) * (A017044 n ^ 2 : ℚ)

end

end A017045.P9276785029426865809

namespace A017045

/-- `A017044(n)/A017047(n)*A017044(n)²` -/
def P9276785029426865809.Spec : Prop :=
  ∀ n, P9276785029426865809.a n = (A017045 n : ℚ)

end A017045

/-!
# A017046: a(n) = (7*n + 5)^6.

The programs for A017046, the canonical program `A017046.P14251239060413658742` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017046 has offset 0).

The definition of A017046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^6` (program `A017046.P14251239060413658742`, by `A017046.P14251239060413658742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017046.P14251239060413658742

`(7*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017046

/-- `(7*n+5)^6` -/
def P14251239060413658742.Spec : Prop :=
  ∀ n, (P14251239060413658742.a n : ℤ) = A017046 n

theorem P14251239060413658742.correct : P14251239060413658742.Spec := by
  intro n
  simp only [A017046]

end A017046

/-! ## A017046.P18080834351369228228

`A017043(n)²`
-/

namespace A017046.P18080834351369228228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n ^ 2

end

end A017046.P18080834351369228228

namespace A017046

/-- `A017043(n)²` -/
def P18080834351369228228.Spec : Prop :=
  ∀ n, P18080834351369228228.a n = A017046 n

theorem P18080834351369228228.correct : P18080834351369228228.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P18080834351369228228.a, A017046.P14251239060413658742.a, A017043, A017043.P8390845589909305054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P4263962151209456872

`sqrt(A017044(n)^3)`
-/

namespace A017046.P4263962151209456872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017044 n ^ 3 : ℝ)

end

end A017046.P4263962151209456872

namespace A017046

/-- `sqrt(A017044(n)^3)` -/
def P4263962151209456872.Spec : Prop :=
  ∀ n, P4263962151209456872.a n = (A017046 n : ℝ)

end A017046

/-! ## A017046.P9838882735487305415

`(Δ[A389615(n)]^3)²`
-/

namespace A017046.P9838882735487305415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017046.P9838882735487305415

namespace A017046

/-- `(Δ[A389615(n)]^3)²` -/
def P9838882735487305415.Spec : Prop :=
  ∀ n, P9838882735487305415.a n = A017046 n

end A017046

/-! ## A017046.P7399361499971116559

`(7*n+5)*A017045(n)`
-/

namespace A017046.P7399361499971116559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 5 : ℤ) * A017045 n

end

end A017046.P7399361499971116559

namespace A017046

/-- `(7*n+5)*A017045(n)` -/
def P7399361499971116559.Spec : Prop :=
  ∀ n, P7399361499971116559.a n = A017046 n

theorem P7399361499971116559.correct : P7399361499971116559.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P7399361499971116559.a, A017046.P14251239060413658742.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P4448623050600800133

`A017042(n)*A017044(n)`
-/

namespace A017046.P4448623050600800133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n * A017044 n

end

end A017046.P4448623050600800133

namespace A017046

/-- `A017042(n)*A017044(n)` -/
def P4448623050600800133.Spec : Prop :=
  ∀ n, P4448623050600800133.a n = A017046 n

theorem P4448623050600800133.correct : P4448623050600800133.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P4448623050600800133.a, A017046.P14251239060413658742.a, A017042, A017042.P15171060736435295157.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P2451586846263679038

`A017047(n)/A017041(n)`
-/

namespace A017046.P2451586846263679038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017041 n : ℚ)

end

end A017046.P2451586846263679038

namespace A017046

/-- `A017047(n)/A017041(n)` -/
def P2451586846263679038.Spec : Prop :=
  ∀ n, P2451586846263679038.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P4635614379879889757

`(A017041(n)*A017042(n))²`
-/

namespace A017046.P4635614379879889757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n * A017042 n) ^ 2

end

end A017046.P4635614379879889757

namespace A017046

/-- `(A017041(n)*A017042(n))²` -/
def P4635614379879889757.Spec : Prop :=
  ∀ n, P4635614379879889757.a n = A017046 n

theorem P4635614379879889757.correct : P4635614379879889757.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P4635614379879889757.a, A017046.P14251239060413658742.a, A017041, A017041.P2403978402019689245.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P10002406797790017744

`A017041(n)²*A017044(n)`
-/

namespace A017046.P10002406797790017744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n ^ 2 * A017044 n

end

end A017046.P10002406797790017744

namespace A017046

/-- `A017041(n)²*A017044(n)` -/
def P10002406797790017744.Spec : Prop :=
  ∀ n, P10002406797790017744.a n = A017046 n

theorem P10002406797790017744.correct : P10002406797790017744.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P10002406797790017744.a, A017046.P14251239060413658742.a, A017041, A017041.P2403978402019689245.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P18233321975863584914

`(A017045(n)/A017042(n))²`
-/

namespace A017046.P18233321975863584914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017045 n : ℚ) / (A017042 n : ℚ)) ^ 2

end

end A017046.P18233321975863584914

namespace A017046

/-- `(A017045(n)/A017042(n))²` -/
def P18233321975863584914.Spec : Prop :=
  ∀ n, P18233321975863584914.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P6470418505605733055

`A017045(n)²/A017044(n)`
-/

namespace A017046.P6470418505605733055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n ^ 2 : ℚ) / (A017044 n : ℚ)

end

end A017046.P6470418505605733055

namespace A017046

/-- `A017045(n)²/A017044(n)` -/
def P6470418505605733055.Spec : Prop :=
  ∀ n, P6470418505605733055.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P5864055119753857125

`(A017047(n)/A017044(n))²`
-/

namespace A017046.P5864055119753857125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017047 n : ℚ) / (A017044 n : ℚ)) ^ 2

end

end A017046.P5864055119753857125

namespace A017046

/-- `(A017047(n)/A017044(n))²` -/
def P5864055119753857125.Spec : Prop :=
  ∀ n, P5864055119753857125.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P17683330277901946407

`A017048(n)/A017041(n)²`
-/

namespace A017046.P17683330277901946407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / (A017041 n ^ 2 : ℚ)

end

end A017046.P17683330277901946407

namespace A017046

/-- `A017048(n)/A017041(n)²` -/
def P17683330277901946407.Spec : Prop :=
  ∀ n, P17683330277901946407.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P15870983406290810670

`(A017048(n)/A017045(n))²`
-/

namespace A017046.P15870983406290810670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017048 n : ℚ) / (A017045 n : ℚ)) ^ 2

end

end A017046.P15870983406290810670

namespace A017046

/-- `(A017048(n)/A017045(n))²` -/
def P15870983406290810670.Spec : Prop :=
  ∀ n, P15870983406290810670.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P15889000383181561378

`(A017050(n)/A017047(n))²`
-/

namespace A017046.P15889000383181561378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017050 n : ℚ) / (A017047 n : ℚ)) ^ 2

end

end A017046.P15889000383181561378

namespace A017046

/-- `(A017050(n)/A017047(n))²` -/
def P15889000383181561378.Spec : Prop :=
  ∀ n, P15889000383181561378.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P11981646688405112077

`A017047(n)/(A017029(n)+1)`
-/

namespace A017046.P11981646688405112077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017029 n + 1 : ℚ)

end

end A017046.P11981646688405112077

namespace A017046

/-- `A017047(n)/(A017029(n)+1)` -/
def P11981646688405112077.Spec : Prop :=
  ∀ n, P11981646688405112077.a n = (A017046 n : ℚ)

theorem P11981646688405112077.correct : P11981646688405112077.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P11981646688405112077.a, A017046.P14251239060413658742.a, A017029, A017029.P18040034652068019793.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-! ## A017046.P6943450893302111847

`A017047(n)/(A017053(n)-1)`
-/

namespace A017046.P6943450893302111847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017053 n - 1 : ℚ)

end

end A017046.P6943450893302111847

namespace A017046

/-- `A017047(n)/(A017053(n)-1)` -/
def P6943450893302111847.Spec : Prop :=
  ∀ n, P6943450893302111847.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P10145980686374896475

`(A017047(n)/A017042(n)²)²`
-/

namespace A017046.P10145980686374896475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017047 n : ℚ) / (A017042 n ^ 2 : ℚ)) ^ 2

end

end A017046.P10145980686374896475

namespace A017046

/-- `(A017047(n)/A017042(n)²)²` -/
def P10145980686374896475.Spec : Prop :=
  ∀ n, P10145980686374896475.a n = (A017046 n : ℚ)

end A017046

/-! ## A017046.P13010528073735901069

`A017048(n)/(A017029(n)+1)²`
-/

namespace A017046.P13010528073735901069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / ((A017029 n + 1) ^ 2 : ℚ)

end

end A017046.P13010528073735901069

namespace A017046

/-- `A017048(n)/(A017029(n)+1)²` -/
def P13010528073735901069.Spec : Prop :=
  ∀ n, P13010528073735901069.a n = (A017046 n : ℚ)

theorem P13010528073735901069.correct : P13010528073735901069.Spec := by
  intro n
  simp only [A017046, Nat.add_sub_cancel, A017046.P13010528073735901069.a, A017046.P14251239060413658742.a, A017029, A017029.P18040034652068019793.a, A017048, A017048.P570209072553434115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017046

/-!
# A017047: a(n) = (7*n + 5)^7.

The programs for A017047, the canonical program `A017047.P16218933013314644064` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017047 has offset 0).

The definition of A017047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^7` (program `A017047.P16218933013314644064`, by `A017047.P16218933013314644064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017047.P16218933013314644064

`(7*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017047

/-- `(7*n+5)^7` -/
def P16218933013314644064.Spec : Prop :=
  ∀ n, (P16218933013314644064.a n : ℤ) = A017047 n

theorem P16218933013314644064.correct : P16218933013314644064.Spec := by
  intro n
  simp only [A017047]

end A017047

/-! ## A017047.P1117867836905354134

`record[(n+5)^gcd(7, n)]`
-/

namespace A017047.P1117867836905354134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) ^ Nat.gcd 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017047.P1117867836905354134

namespace A017047

/-- `record[(n+5)^gcd(7, n)]` -/
def P1117867836905354134.Spec : Prop :=
  ∀ n, (P1117867836905354134.a n : ℤ) = A017047 n

end A017047

/-! ## A017047.P1170322944185647694

`(7*n+5)²*A017045(n)`
-/

namespace A017047.P1170322944185647694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 5) ^ 2 : ℤ) * A017045 n

end

end A017047.P1170322944185647694

namespace A017047

/-- `(7*n+5)²*A017045(n)` -/
def P1170322944185647694.Spec : Prop :=
  ∀ n, P1170322944185647694.a n = A017047 n

theorem P1170322944185647694.correct : P1170322944185647694.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P1170322944185647694.a, A017047.P16218933013314644064.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P18281489873563909946

`A017041(n)*A017046(n)`
-/

namespace A017047.P18281489873563909946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A017046 n

end

end A017047.P18281489873563909946

namespace A017047

/-- `A017041(n)*A017046(n)` -/
def P18281489873563909946.Spec : Prop :=
  ∀ n, P18281489873563909946.a n = A017047 n

theorem P18281489873563909946.correct : P18281489873563909946.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P18281489873563909946.a, A017047.P16218933013314644064.a, A017041, A017041.P2403978402019689245.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P6179190320687574487

`A017043(n)*A017044(n)`
-/

namespace A017047.P6179190320687574487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n * A017044 n

end

end A017047.P6179190320687574487

namespace A017047

/-- `A017043(n)*A017044(n)` -/
def P6179190320687574487.Spec : Prop :=
  ∀ n, P6179190320687574487.a n = A017047 n

theorem P6179190320687574487.correct : P6179190320687574487.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P6179190320687574487.a, A017047.P16218933013314644064.a, A017043, A017043.P8390845589909305054.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P18273110097261044034

`A017048(n)/A017041(n)`
-/

namespace A017047.P18273110097261044034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / (A017041 n : ℚ)

end

end A017047.P18273110097261044034

namespace A017047

/-- `A017048(n)/A017041(n)` -/
def P18273110097261044034.Spec : Prop :=
  ∀ n, P18273110097261044034.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P13985869769803090821

`A017042(n)²*A017043(n)`
-/

namespace A017047.P13985869769803090821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n ^ 2 * A017043 n

end

end A017047.P13985869769803090821

namespace A017047

/-- `A017042(n)²*A017043(n)` -/
def P13985869769803090821.Spec : Prop :=
  ∀ n, P13985869769803090821.a n = A017047 n

theorem P13985869769803090821.correct : P13985869769803090821.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P13985869769803090821.a, A017047.P16218933013314644064.a, A017042, A017042.P15171060736435295157.a, A017043, A017043.P8390845589909305054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P4106411015972717936

`A017043(n)²*A017041(n)`
-/

namespace A017047.P4106411015972717936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n ^ 2 * A017041 n

end

end A017047.P4106411015972717936

namespace A017047

/-- `A017043(n)²*A017041(n)` -/
def P4106411015972717936.Spec : Prop :=
  ∀ n, P4106411015972717936.a n = A017047 n

theorem P4106411015972717936.correct : P4106411015972717936.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P4106411015972717936.a, A017047.P16218933013314644064.a, A017041, A017041.P2403978402019689245.a, A017043, A017043.P8390845589909305054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P1706651207931380878

`A017044(n)²/A017041(n)`
-/

namespace A017047.P1706651207931380878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n ^ 2 : ℚ) / (A017041 n : ℚ)

end

end A017047.P1706651207931380878

namespace A017047

/-- `A017044(n)²/A017041(n)` -/
def P1706651207931380878.Spec : Prop :=
  ∀ n, P1706651207931380878.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P4812559033585224376

`A017045(n)²/A017043(n)`
-/

namespace A017047.P4812559033585224376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n ^ 2 : ℚ) / (A017043 n : ℚ)

end

end A017047.P4812559033585224376

namespace A017047

/-- `A017045(n)²/A017043(n)` -/
def P4812559033585224376.Spec : Prop :=
  ∀ n, P4812559033585224376.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P6454591758744726537

`(A017029(n)+1)*A017046(n)`
-/

namespace A017047.P6454591758744726537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 1) * A017046 n

end

end A017047.P6454591758744726537

namespace A017047

/-- `(A017029(n)+1)*A017046(n)` -/
def P6454591758744726537.Spec : Prop :=
  ∀ n, P6454591758744726537.a n = A017047 n

theorem P6454591758744726537.correct : P6454591758744726537.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P6454591758744726537.a, A017047.P16218933013314644064.a, A017029, A017029.P18040034652068019793.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P13114372375353475321

`A017048(n)/(A017029(n)+1)`
-/

namespace A017047.P13114372375353475321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / (A017029 n + 1 : ℚ)

end

end A017047.P13114372375353475321

namespace A017047

/-- `A017048(n)/(A017029(n)+1)` -/
def P13114372375353475321.Spec : Prop :=
  ∀ n, P13114372375353475321.a n = (A017047 n : ℚ)

theorem P13114372375353475321.correct : P13114372375353475321.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P13114372375353475321.a, A017047.P16218933013314644064.a, A017029, A017029.P18040034652068019793.a, A017048, A017048.P570209072553434115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P16253188812038006528

`(A017053(n)-1)*A017046(n)`
-/

namespace A017047.P16253188812038006528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 1) * A017046 n

end

end A017047.P16253188812038006528

namespace A017047

/-- `(A017053(n)-1)*A017046(n)` -/
def P16253188812038006528.Spec : Prop :=
  ∀ n, P16253188812038006528.a n = A017047 n

theorem P16253188812038006528.correct : P16253188812038006528.Spec := by
  intro n
  simp only [A017047, Nat.add_sub_cancel, A017047.P16253188812038006528.a, A017047.P16218933013314644064.a, A017046, A017046.P14251239060413658742.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017047

/-! ## A017047.P2459743517925479809

`A017048(n)/(A017053(n)-1)`
-/

namespace A017047.P2459743517925479809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017048 n : ℚ) / (A017053 n - 1 : ℚ)

end

end A017047.P2459743517925479809

namespace A017047

/-- `A017048(n)/(A017053(n)-1)` -/
def P2459743517925479809.Spec : Prop :=
  ∀ n, P2459743517925479809.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P16989705042917282508

`A017042(n)²²/A017041(n)`
-/

namespace A017047.P16989705042917282508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017042 n ^ 2) ^ 2 : ℚ) / (A017041 n : ℚ)

end

end A017047.P16989705042917282508

namespace A017047

/-- `A017042(n)²²/A017041(n)` -/
def P16989705042917282508.Spec : Prop :=
  ∀ n, P16989705042917282508.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P5350950820803731501

`A017044(n)/A017045(n)*A017044(n)²`
-/

namespace A017047.P5350950820803731501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017044 n : ℚ) / (A017045 n : ℚ) * (A017044 n ^ 2 : ℚ)

end

end A017047.P5350950820803731501

namespace A017047

/-- `A017044(n)/A017045(n)*A017044(n)²` -/
def P5350950820803731501.Spec : Prop :=
  ∀ n, P5350950820803731501.a n = (A017047 n : ℚ)

end A017047

/-! ## A017047.P5156107300769868708

`A001015(7*n+5)`
-/

namespace A017047.P5156107300769868708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (7 * n + 5)

end

end A017047.P5156107300769868708

namespace A017047

/-- `A001015(7*n+5)` -/
def P5156107300769868708.Spec : Prop :=
  ∀ n, P5156107300769868708.a n = A017047 n

end A017047

/-!
# A017048: a(n) = (7*n + 5)^8.

The programs for A017048, the canonical program `A017048.P570209072553434115` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017048 has offset 0).

The definition of A017048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^8` (program `A017048.P570209072553434115`, by `A017048.P570209072553434115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017048.P570209072553434115

`(7*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017048

/-- `(7*n+5)^8` -/
def P570209072553434115.Spec : Prop :=
  ∀ n, (P570209072553434115.a n : ℤ) = A017048 n

theorem P570209072553434115.correct : P570209072553434115.Spec := by
  intro n
  simp only [A017048]

end A017048

/-! ## A017048.P5395091959908412938

`(lcm(4, 2*n+1)-(n-1))²²²`
-/

namespace A017048.P5395091959908412938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((Nat.lcm 4 (2 * n + 1) : ℤ) - ((n : ℤ) - 1)) ^ 2) ^ 2) ^ 2

end

end A017048.P5395091959908412938

namespace A017048

/-- `(lcm(4, 2*n+1)-(n-1))²²²` -/
def P5395091959908412938.Spec : Prop :=
  ∀ n, P5395091959908412938.a n = A017048 n

end A017048

/-! ## A017048.P11414865233292116883

`((1-n)²-lcm(n+2, n+3))²²²`
-/

namespace A017048.P11414865233292116883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((1 - (n : ℤ)) ^ 2 - (Nat.lcm (n + 2) (n + 3) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017048.P11414865233292116883

namespace A017048

/-- `((1-n)²-lcm(n+2, n+3))²²²` -/
def P11414865233292116883.Spec : Prop :=
  ∀ n, P11414865233292116883.a n = A017048 n

end A017048

/-! ## A017048.P1176707941758851787

`A017044(n)²`
-/

namespace A017048.P1176707941758851787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017044 n ^ 2

end

end A017048.P1176707941758851787

namespace A017048

/-- `A017044(n)²` -/
def P1176707941758851787.Spec : Prop :=
  ∀ n, P1176707941758851787.a n = A017048 n

theorem P1176707941758851787.correct : P1176707941758851787.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P1176707941758851787.a, A017048.P570209072553434115.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P10667162170796428885

`A017042(n)²²`
-/

namespace A017048.P10667162170796428885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017042 n ^ 2) ^ 2

end

end A017048.P10667162170796428885

namespace A017048

/-- `A017042(n)²²` -/
def P10667162170796428885.Spec : Prop :=
  ∀ n, P10667162170796428885.a n = A017048 n

theorem P10667162170796428885.correct : P10667162170796428885.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P10667162170796428885.a, A017048.P570209072553434115.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P2541687995323375380

`A017041(n)²²²`
-/

namespace A017048.P2541687995323375380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017041 n ^ 2) ^ 2) ^ 2

end

end A017048.P2541687995323375380

namespace A017048

/-- `A017041(n)²²²` -/
def P2541687995323375380.Spec : Prop :=
  ∀ n, P2541687995323375380.a n = A017048 n

theorem P2541687995323375380.correct : P2541687995323375380.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P2541687995323375380.a, A017048.P570209072553434115.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P3862042491840421382

`Δ[A389615(n)]²²²`
-/

namespace A017048.P3862042491840421382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017048.P3862042491840421382

namespace A017048

/-- `Δ[A389615(n)]²²²` -/
def P3862042491840421382.Spec : Prop :=
  ∀ n, P3862042491840421382.a n = A017048 n

end A017048

/-! ## A017048.P1939623381986800684

`(A017029(n)+1)²²²`
-/

namespace A017048.P1939623381986800684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017029 n + 1) ^ 2) ^ 2) ^ 2

end

end A017048.P1939623381986800684

namespace A017048

/-- `(A017029(n)+1)²²²` -/
def P1939623381986800684.Spec : Prop :=
  ∀ n, P1939623381986800684.a n = A017048 n

theorem P1939623381986800684.correct : P1939623381986800684.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P1939623381986800684.a, A017048.P570209072553434115.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P2150456056588995730

`(A017017(n)+2)²²²`
-/

namespace A017048.P2150456056588995730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017017 n + 2) ^ 2) ^ 2) ^ 2

end

end A017048.P2150456056588995730

namespace A017048

/-- `(A017017(n)+2)²²²` -/
def P2150456056588995730.Spec : Prop :=
  ∀ n, P2150456056588995730.a n = A017048 n

theorem P2150456056588995730.correct : P2150456056588995730.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P2150456056588995730.a, A017048.P570209072553434115.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P16419207299555980536

`(1-A017053(n))²²²`
-/

namespace A017048.P16419207299555980536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017053 n) ^ 2) ^ 2) ^ 2

end

end A017048.P16419207299555980536

namespace A017048

/-- `(1-A017053(n))²²²` -/
def P16419207299555980536.Spec : Prop :=
  ∀ n, P16419207299555980536.a n = A017048 n

theorem P16419207299555980536.correct : P16419207299555980536.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P16419207299555980536.a, A017048.P570209072553434115.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P9670017998766780895

`(A016969(n)+n)²²²`
-/

namespace A017048.P9670017998766780895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016969 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017048.P9670017998766780895

namespace A017048

/-- `(A016969(n)+n)²²²` -/
def P9670017998766780895.Spec : Prop :=
  ∀ n, P9670017998766780895.a n = A017048 n

theorem P9670017998766780895.correct : P9670017998766780895.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P9670017998766780895.a, A017048.P570209072553434115.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P14583547984416538280

`(A004770(n+1)-n)²²²`
-/

namespace A017048.P14583547984416538280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017048.P14583547984416538280

namespace A017048

/-- `(A004770(n+1)-n)²²²` -/
def P14583547984416538280.Spec : Prop :=
  ∀ n, P14583547984416538280.a n = A017048 n

theorem P14583547984416538280.correct : P14583547984416538280.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P14583547984416538280.a, A017048.P570209072553434115.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P13555064787870369760

`A017041(n)*A017047(n)`
-/

namespace A017048.P13555064787870369760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A017047 n

end

end A017048.P13555064787870369760

namespace A017048

/-- `A017041(n)*A017047(n)` -/
def P13555064787870369760.Spec : Prop :=
  ∀ n, P13555064787870369760.a n = A017048 n

theorem P13555064787870369760.correct : P13555064787870369760.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P13555064787870369760.a, A017048.P570209072553434115.a, A017041, A017041.P2403978402019689245.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P13440381381698572610

`A017042(n)*A017046(n)`
-/

namespace A017048.P13440381381698572610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n * A017046 n

end

end A017048.P13440381381698572610

namespace A017048

/-- `A017042(n)*A017046(n)` -/
def P13440381381698572610.Spec : Prop :=
  ∀ n, P13440381381698572610.a n = A017048 n

theorem P13440381381698572610.correct : P13440381381698572610.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P13440381381698572610.a, A017048.P570209072553434115.a, A017042, A017042.P15171060736435295157.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P4005829460513352848

`A017043(n)*A017045(n)`
-/

namespace A017048.P4005829460513352848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n * A017045 n

end

end A017048.P4005829460513352848

namespace A017048

/-- `A017043(n)*A017045(n)` -/
def P4005829460513352848.Spec : Prop :=
  ∀ n, P4005829460513352848.a n = A017048 n

theorem P4005829460513352848.correct : P4005829460513352848.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P4005829460513352848.a, A017048.P570209072553434115.a, A017043, A017043.P8390845589909305054.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P6168943673935101402

`(A017029(n)+1)*A017047(n)`
-/

namespace A017048.P6168943673935101402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 1) * A017047 n

end

end A017048.P6168943673935101402

namespace A017048

/-- `(A017029(n)+1)*A017047(n)` -/
def P6168943673935101402.Spec : Prop :=
  ∀ n, P6168943673935101402.a n = A017048 n

theorem P6168943673935101402.correct : P6168943673935101402.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P6168943673935101402.a, A017048.P570209072553434115.a, A017029, A017029.P18040034652068019793.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P2545442199573523825

`(A017053(n)-1)*A017047(n)`
-/

namespace A017048.P2545442199573523825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 1) * A017047 n

end

end A017048.P2545442199573523825

namespace A017048

/-- `(A017053(n)-1)*A017047(n)` -/
def P2545442199573523825.Spec : Prop :=
  ∀ n, P2545442199573523825.a n = A017048 n

theorem P2545442199573523825.correct : P2545442199573523825.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P2545442199573523825.a, A017048.P570209072553434115.a, A017047, A017047.P16218933013314644064.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P3198562215934225184

`(A017047(n)/A017045(n))²²`
-/

namespace A017048.P3198562215934225184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017047 n : ℚ) / (A017045 n : ℚ)) ^ 2) ^ 2

end

end A017048.P3198562215934225184

namespace A017048

/-- `(A017047(n)/A017045(n))²²` -/
def P3198562215934225184.Spec : Prop :=
  ∀ n, P3198562215934225184.a n = (A017048 n : ℚ)

end A017048

/-! ## A017048.P2985866393969166641

`(A016789(n)+A004767(n))²²²`
-/

namespace A017048.P2985866393969166641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016789 n + A004767 n) ^ 2) ^ 2) ^ 2

end

end A017048.P2985866393969166641

namespace A017048

/-- `(A016789(n)+A004767(n))²²²` -/
def P2985866393969166641.Spec : Prop :=
  ∀ n, P2985866393969166641.a n = A017048 n

theorem P2985866393969166641.correct : P2985866393969166641.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P2985866393969166641.a, A017048.P570209072553434115.a, A004767, A004767.P13352534504447192883.a, A016789, A016789.P8277564872725303677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-! ## A017048.P1199411283021904285

`(A016897(n)+A005408(n))²²²`
-/

namespace A017048.P1199411283021904285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016897 n + A005408 n) ^ 2) ^ 2) ^ 2

end

end A017048.P1199411283021904285

namespace A017048

/-- `(A016897(n)+A005408(n))²²²` -/
def P1199411283021904285.Spec : Prop :=
  ∀ n, P1199411283021904285.a n = A017048 n

theorem P1199411283021904285.correct : P1199411283021904285.Spec := by
  intro n
  simp only [A017048, Nat.add_sub_cancel, A017048.P1199411283021904285.a, A017048.P570209072553434115.a, A005408, A005408.P17437947328870227736.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017048

/-!
# A017049: a(n) = (7*n + 5)^9.

The programs for A017049, the canonical program `A017049.P9399267486437988581` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017049 has offset 0).

The definition of A017049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^9` (program `A017049.P9399267486437988581`, by `A017049.P9399267486437988581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017049.P9399267486437988581

`(7*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017049

/-- `(7*n+5)^9` -/
def P9399267486437988581.Spec : Prop :=
  ∀ n, (P9399267486437988581.a n : ℤ) = A017049 n

theorem P9399267486437988581.correct : P9399267486437988581.Spec := by
  intro n
  simp only [A017049]

end A017049

/-! ## A017049.P1796429293394768563

`sqrt(A017046(n)^3)`
-/

namespace A017049.P1796429293394768563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017046 n ^ 3 : ℝ)

end

end A017049.P1796429293394768563

namespace A017049

/-- `sqrt(A017046(n)^3)` -/
def P1796429293394768563.Spec : Prop :=
  ∀ n, P1796429293394768563.a n = (A017049 n : ℝ)

end A017049

/-! ## A017049.P17397919771442740633

`A017041(n)*A017048(n)`
-/

namespace A017049.P17397919771442740633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A017048 n

end

end A017049.P17397919771442740633

namespace A017049

/-- `A017041(n)*A017048(n)` -/
def P17397919771442740633.Spec : Prop :=
  ∀ n, P17397919771442740633.a n = A017049 n

theorem P17397919771442740633.correct : P17397919771442740633.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P17397919771442740633.a, A017049.P9399267486437988581.a, A017041, A017041.P2403978402019689245.a, A017048, A017048.P570209072553434115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P11984565764205996153

`A017042(n)*A017047(n)`
-/

namespace A017049.P11984565764205996153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n * A017047 n

end

end A017049.P11984565764205996153

namespace A017049

/-- `A017042(n)*A017047(n)` -/
def P11984565764205996153.Spec : Prop :=
  ∀ n, P11984565764205996153.a n = A017049 n

theorem P11984565764205996153.correct : P11984565764205996153.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P11984565764205996153.a, A017049.P9399267486437988581.a, A017042, A017042.P15171060736435295157.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P2262891936215945674

`A017043(n)*A017046(n)`
-/

namespace A017049.P2262891936215945674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n * A017046 n

end

end A017049.P2262891936215945674

namespace A017049

/-- `A017043(n)*A017046(n)` -/
def P2262891936215945674.Spec : Prop :=
  ∀ n, P2262891936215945674.a n = A017049 n

theorem P2262891936215945674.correct : P2262891936215945674.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P2262891936215945674.a, A017049.P9399267486437988581.a, A017043, A017043.P8390845589909305054.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P10506793854917702778

`A017044(n)*A017045(n)`
-/

namespace A017049.P10506793854917702778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017044 n * A017045 n

end

end A017049.P10506793854917702778

namespace A017049

/-- `A017044(n)*A017045(n)` -/
def P10506793854917702778.Spec : Prop :=
  ∀ n, P10506793854917702778.a n = A017049 n

theorem P10506793854917702778.correct : P10506793854917702778.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P10506793854917702778.a, A017049.P9399267486437988581.a, A017044, A017044.P1188887687924600876.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P11095578368505692729

`A017041(n)²*A017047(n)`
-/

namespace A017049.P11095578368505692729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n ^ 2 * A017047 n

end

end A017049.P11095578368505692729

namespace A017049

/-- `A017041(n)²*A017047(n)` -/
def P11095578368505692729.Spec : Prop :=
  ∀ n, P11095578368505692729.a n = A017049 n

theorem P11095578368505692729.correct : P11095578368505692729.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P11095578368505692729.a, A017049.P9399267486437988581.a, A017041, A017041.P2403978402019689245.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P4976235440375644104

`A017042(n)²*A017045(n)`
-/

namespace A017049.P4976235440375644104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017042 n ^ 2 * A017045 n

end

end A017049.P4976235440375644104

namespace A017049

/-- `A017042(n)²*A017045(n)` -/
def P4976235440375644104.Spec : Prop :=
  ∀ n, P4976235440375644104.a n = A017049 n

theorem P4976235440375644104.correct : P4976235440375644104.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P4976235440375644104.a, A017049.P9399267486437988581.a, A017042, A017042.P15171060736435295157.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P1362690561512996000

`A017044(n)²*A017041(n)`
-/

namespace A017049.P1362690561512996000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017044 n ^ 2 * A017041 n

end

end A017049.P1362690561512996000

namespace A017049

/-- `A017044(n)²*A017041(n)` -/
def P1362690561512996000.Spec : Prop :=
  ∀ n, P1362690561512996000.a n = A017049 n

theorem P1362690561512996000.correct : P1362690561512996000.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P1362690561512996000.a, A017049.P9399267486437988581.a, A017041, A017041.P2403978402019689245.a, A017044, A017044.P1188887687924600876.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P15896832774353524626

`A017045(n)²/A017041(n)`
-/

namespace A017049.P15896832774353524626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017045 n ^ 2 : ℚ) / (A017041 n : ℚ)

end

end A017049.P15896832774353524626

namespace A017049

/-- `A017045(n)²/A017041(n)` -/
def P15896832774353524626.Spec : Prop :=
  ∀ n, P15896832774353524626.a n = (A017049 n : ℚ)

end A017049

/-! ## A017049.P12813928726044713050

`(A017029(n)+1)*A017048(n)`
-/

namespace A017049.P12813928726044713050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 1) * A017048 n

end

end A017049.P12813928726044713050

namespace A017049

/-- `(A017029(n)+1)*A017048(n)` -/
def P12813928726044713050.Spec : Prop :=
  ∀ n, P12813928726044713050.a n = A017049 n

theorem P12813928726044713050.correct : P12813928726044713050.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P12813928726044713050.a, A017049.P9399267486437988581.a, A017029, A017029.P18040034652068019793.a, A017048, A017048.P570209072553434115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P3664552771594673704

`(A017053(n)-1)*A017048(n)`
-/

namespace A017049.P3664552771594673704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n - 1) * A017048 n

end

end A017049.P3664552771594673704

namespace A017049

/-- `(A017053(n)-1)*A017048(n)` -/
def P3664552771594673704.Spec : Prop :=
  ∀ n, P3664552771594673704.a n = A017049 n

theorem P3664552771594673704.correct : P3664552771594673704.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P3664552771594673704.a, A017049.P9399267486437988581.a, A017048, A017048.P570209072553434115.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P11083971922542739276

`A017042(n)²²*A017041(n)`
-/

namespace A017049.P11083971922542739276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017042 n ^ 2) ^ 2 * A017041 n

end

end A017049.P11083971922542739276

namespace A017049

/-- `A017042(n)²²*A017041(n)` -/
def P11083971922542739276.Spec : Prop :=
  ∀ n, P11083971922542739276.a n = A017049 n

theorem P11083971922542739276.correct : P11083971922542739276.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P11083971922542739276.a, A017049.P9399267486437988581.a, A017041, A017041.P2403978402019689245.a, A017042, A017042.P15171060736435295157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P3729386335702478346

`(A017029(n)+1)²*A017047(n)`
-/

namespace A017049.P3729386335702478346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 1) ^ 2 * A017047 n

end

end A017049.P3729386335702478346

namespace A017049

/-- `(A017029(n)+1)²*A017047(n)` -/
def P3729386335702478346.Spec : Prop :=
  ∀ n, P3729386335702478346.a n = A017049 n

theorem P3729386335702478346.correct : P3729386335702478346.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P3729386335702478346.a, A017049.P9399267486437988581.a, A017029, A017029.P18040034652068019793.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P4006424650608284604

`(1-A017053(n))²*A017047(n)`
-/

namespace A017049.P4006424650608284604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017053 n) ^ 2 * A017047 n

end

end A017049.P4006424650608284604

namespace A017049

/-- `(1-A017053(n))²*A017047(n)` -/
def P4006424650608284604.Spec : Prop :=
  ∀ n, P4006424650608284604.a n = A017049 n

theorem P4006424650608284604.correct : P4006424650608284604.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P4006424650608284604.a, A017049.P9399267486437988581.a, A017047, A017047.P16218933013314644064.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P16767061306155249099

`A017047(n)/A017045(n)*A017047(n)`
-/

namespace A017049.P16767061306155249099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017047 n : ℚ) / (A017045 n : ℚ) * (A017047 n : ℚ)

end

end A017049.P16767061306155249099

namespace A017049

/-- `A017047(n)/A017045(n)*A017047(n)` -/
def P16767061306155249099.Spec : Prop :=
  ∀ n, P16767061306155249099.a n = (A017049 n : ℚ)

end A017049

/-! ## A017049.P14853748753332533792

`A017041(n)*A017046(n)*A017041(n)²`
-/

namespace A017049.P14853748753332533792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n * A017046 n * A017041 n ^ 2

end

end A017049.P14853748753332533792

namespace A017049

/-- `A017041(n)*A017046(n)*A017041(n)²` -/
def P14853748753332533792.Spec : Prop :=
  ∀ n, P14853748753332533792.a n = A017049 n

theorem P14853748753332533792.correct : P14853748753332533792.Spec := by
  intro n
  simp only [A017049, Nat.add_sub_cancel, A017049.P14853748753332533792.a, A017049.P9399267486437988581.a, A017041, A017041.P2403978402019689245.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017049

/-! ## A017049.P16348364238516617679

`A001017(8*n+5-n)`
-/

namespace A017049.P16348364238516617679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (8 * n + 5 - n)

end

end A017049.P16348364238516617679

namespace A017049

/-- `A001017(8*n+5-n)` -/
def P16348364238516617679.Spec : Prop :=
  ∀ n, P16348364238516617679.a n = A017049 n

end A017049

/-!
# A017050: a(n) = (7*n + 5)^10.

The programs for A017050, the canonical program `A017050.P16582402057157898399` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017050 has offset 0).

The definition of A017050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+5)^10` (program `A017050.P16582402057157898399`, by `A017050.P16582402057157898399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017050.P16582402057157898399

`(7*n+5)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017050

/-- `(7*n+5)^10` -/
def P16582402057157898399.Spec : Prop :=
  ∀ n, (P16582402057157898399.a n : ℤ) = A017050 n

theorem P16582402057157898399.correct : P16582402057157898399.Spec := by
  intro n
  simp only [A017050]

end A017050

/-! ## A017050.P9784361204914735543

`A017045(n)²`
-/

namespace A017050.P9784361204914735543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017045 n ^ 2

end

end A017050.P9784361204914735543

namespace A017050

/-- `A017045(n)²` -/
def P9784361204914735543.Spec : Prop :=
  ∀ n, P9784361204914735543.a n = A017050 n

theorem P9784361204914735543.correct : P9784361204914735543.Spec := by
  intro n
  simp only [A017050, Nat.add_sub_cancel, A017050.P9784361204914735543.a, A017050.P16582402057157898399.a, A017045, A017045.P12492567027182291425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017050

/-! ## A017050.P14005922965359711711

`sqrt(A017044(n)^5)`
-/

namespace A017050.P14005922965359711711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017044 n ^ 5 : ℝ)

end

end A017050.P14005922965359711711

namespace A017050

/-- `sqrt(A017044(n)^5)` -/
def P14005922965359711711.Spec : Prop :=
  ∀ n, P14005922965359711711.a n = (A017050 n : ℝ)

end A017050

/-! ## A017050.P7120401810861184541

`A017043(n)*A017047(n)`
-/

namespace A017050.P7120401810861184541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017043 n * A017047 n

end

end A017050.P7120401810861184541

namespace A017050

/-- `A017043(n)*A017047(n)` -/
def P7120401810861184541.Spec : Prop :=
  ∀ n, P7120401810861184541.a n = A017050 n

theorem P7120401810861184541.correct : P7120401810861184541.Spec := by
  intro n
  simp only [A017050, Nat.add_sub_cancel, A017050.P7120401810861184541.a, A017050.P16582402057157898399.a, A017043, A017043.P8390845589909305054.a, A017047, A017047.P16218933013314644064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017050

/-! ## A017050.P13061441730614799607

`A017044(n)*A017046(n)`
-/

namespace A017050.P13061441730614799607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017044 n * A017046 n

end

end A017050.P13061441730614799607

namespace A017050

/-- `A017044(n)*A017046(n)` -/
def P13061441730614799607.Spec : Prop :=
  ∀ n, P13061441730614799607.a n = A017050 n

theorem P13061441730614799607.correct : P13061441730614799607.Spec := by
  intro n
  simp only [A017050, Nat.add_sub_cancel, A017050.P13061441730614799607.a, A017050.P16582402057157898399.a, A017044, A017044.P1188887687924600876.a, A017046, A017046.P14251239060413658742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017050

/-! ## A017050.P7488051835988498517

`sqrt(sqrt(A017048(n)))*A017048(n)`
-/

namespace A017050.P7488051835988498517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017048 n : ℝ)) * (A017048 n : ℝ)

end

end A017050.P7488051835988498517

namespace A017050

/-- `sqrt(sqrt(A017048(n)))*A017048(n)` -/
def P7488051835988498517.Spec : Prop :=
  ∀ n, P7488051835988498517.a n = (A017050 n : ℝ)

end A017050

/-! ## A017050.P17424545121540485508

`A008454(A017041(n))`
-/

namespace A017050.P17424545121540485508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017041 n).toNat

end

end A017050.P17424545121540485508

namespace A017050

/-- `A008454(A017041(n))` -/
def P17424545121540485508.Spec : Prop :=
  ∀ n, P17424545121540485508.a n = A017050 n

end A017050

/-! ## A017050.P15192065787472289737

`A008454(A016969(n)+n)`
-/

namespace A017050.P15192065787472289737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n + (n : ℤ)).toNat

end

end A017050.P15192065787472289737

namespace A017050

/-- `A008454(A016969(n)+n)` -/
def P15192065787472289737.Spec : Prop :=
  ∀ n, P15192065787472289737.a n = A017050 n

end A017050

/-! ## A017050.P6593126486360497332

`A008454(A008587(n+1)+2*n)`
-/

namespace A017050.P6593126486360497332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (n + 1) + (2 * n : ℤ)).toNat

end

end A017050.P6593126486360497332

namespace A017050

/-- `A008454(A008587(n+1)+2*n)` -/
def P6593126486360497332.Spec : Prop :=
  ∀ n, P6593126486360497332.a n = A017050 n

end A017050

/-! ## A017050.P18205593765005111632

`A008454(A007310(2*n+2)+n)`
-/

namespace A017050.P18205593765005111632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A007310 (2 * n + 2) + (n : ℤ)).toNat

end

end A017050.P18205593765005111632

namespace A017050

/-- `A008454(A007310(2*n+2)+n)` -/
def P18205593765005111632.Spec : Prop :=
  ∀ n, P18205593765005111632.a n = A017050 n

end A017050

/-! ## A017050.P6779481375194038136

`A008454(A016813(2*n+1)-n)`
-/

namespace A017050.P6779481375194038136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n + 1) - (n : ℤ)).toNat

end

end A017050.P6779481375194038136

namespace A017050

/-- `A008454(A016813(2*n+1)-n)` -/
def P6779481375194038136.Spec : Prop :=
  ∀ n, P6779481375194038136.a n = A017050 n

end A017050

/-! ## A017050.P18344588919678749670

`A008454(A016777(2*n+1)+n+1)`
-/

namespace A017050.P18344588919678749670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017050.P18344588919678749670

namespace A017050

/-- `A008454(A016777(2*n+1)+n+1)` -/
def P18344588919678749670.Spec : Prop :=
  ∀ n, P18344588919678749670.a n = A017050 n

end A017050

/-! ## A017050.P17811871355057387406

`A008454(A008585(2*n+1)+n+2)`
-/

namespace A017050.P17811871355057387406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008585 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017050.P17811871355057387406

namespace A017050

/-- `A008454(A008585(2*n+1)+n+2)` -/
def P17811871355057387406.Spec : Prop :=
  ∀ n, P17811871355057387406.a n = A017050 n

end A017050

/-!
# A017051: 

The programs for A017051, there is no canonical definition to state claims against.
-/

/-! ## A017051.P89220755062270088

`(7*n+5)^11`
-/

namespace A017051.P89220755062270088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 5) ^ 11

end

end A017051.P89220755062270088

/-! ## A017051.P6432233106571494709

`sqrt(A017042(n)^11)`
-/

namespace A017051.P6432233106571494709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017042 n ^ 11 : ℝ)

end

end A017051.P6432233106571494709

/-! ## A017051.P3244830920299511025

`A008455(A016993(n)+4)`
-/

namespace A017051.P3244830920299511025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + 4).toNat

end

end A017051.P3244830920299511025

/-! ## A017051.P16835548734722432460

`A008455(A016969(n)+n)`
-/

namespace A017051.P16835548734722432460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n + (n : ℤ)).toNat

end

end A017051.P16835548734722432460

/-! ## A017051.P15699600387887063027

`A008455(sqrt(sqrt(A017044(n))))`
-/

namespace A017051.P15699600387887063027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A017044 n : ℝ)))).toNat

end

end A017051.P15699600387887063027

/-! ## A017051.P13686650478725323146

`A008455(A016813(2*n+1)-n)`
-/

namespace A017051.P13686650478725323146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) - (n : ℤ)).toNat

end

end A017051.P13686650478725323146

/-! ## A017051.P2668223959769757612

`A008455(A008585(2*n+1)+n+2)`
-/

namespace A017051.P2668223959769757612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017051.P2668223959769757612

/-!
# A017052: 

The programs for A017052, there is no canonical definition to state claims against.
-/

/-! ## A017052.P6011845324725301027

`(7*n+5)^12`
-/

namespace A017052.P6011845324725301027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 5) ^ 12

end

end A017052.P6011845324725301027

/-! ## A017052.P6814578934164057838

`A017046(n)²`
-/

namespace A017052.P6814578934164057838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017046 n ^ 2

end

end A017052.P6814578934164057838

/-! ## A017052.P6112195987067559345

`(A017041(n)^6)²`
-/

namespace A017052.P6112195987067559345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n ^ 6) ^ 2

end

end A017052.P6112195987067559345

/-! ## A017052.P9684499805935645480

`sqrt(A017048(n))*A017048(n)`
-/

namespace A017052.P9684499805935645480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017048 n : ℝ) * (A017048 n : ℝ)

end

end A017052.P9684499805935645480

/-! ## A017052.P15800324969896374469

`sqrt(A017048(n)^3)`
-/

namespace A017052.P15800324969896374469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017048 n ^ 3 : ℝ)

end

end A017052.P15800324969896374469

/-! ## A017052.P4892033363411083959

`A000578(7*n+5)²²`
-/

namespace A017052.P4892033363411083959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (7 * n + 5) ^ 2) ^ 2

end

end A017052.P4892033363411083959

/-! ## A017052.P17136154502086420930

`A008456(A016969(n)+n)`
-/

namespace A017052.P17136154502086420930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n + (n : ℤ)).toNat

end

end A017052.P17136154502086420930

/-! ## A017052.P2992930651277439371

`A008456(A016777(2*n+1)+n+1)`
-/

namespace A017052.P2992930651277439371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A017052.P2992930651277439371

/-! ## A017052.P12622419302323360424

`A008456(A004767(2*n+1)-(n+2))`
-/

namespace A017052.P12622419302323360424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A017052.P12622419302323360424

/-!
# A017053: a(n) = 7*n + 6.

The programs for A017053, the canonical program `A017053.P7458143650627556555` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017053 has offset 0).

The definition of A017053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n+6` (program `A017053.P7458143650627556555`, by `A017053.P7458143650627556555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017053.P7458143650627556555

`7*n+6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017053

/-- `7*n+6` -/
def P7458143650627556555.Spec : Prop :=
  ∀ n, (P7458143650627556555.a n : ℤ) = A017053 n

theorem P7458143650627556555.correct : P7458143650627556555.Spec := by
  intro n
  simp only [A017053]

end A017053

/-!
# A017054: a(n) = (7*n + 6)^2.

The programs for A017054, the canonical program `A017054.P13303956205180699826` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017054 has offset 0).

The definition of A017054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)²` (program `A017054.P13303956205180699826`, by `A017054.P13303956205180699826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017054.P13303956205180699826

`(7*n+6)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017054

/-- `(7*n+6)²` -/
def P13303956205180699826.Spec : Prop :=
  ∀ n, (P13303956205180699826.a n : ℤ) = A017054 n

theorem P13303956205180699826.correct : P13303956205180699826.Spec := by
  intro n
  simp only [A017054]

end A017054

/-! ## A017054.P7371249712462947761

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=36, a(1)=169, a(2)=400`
-/

namespace A017054.P7371249712462947761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36, 169, 400] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017054.P7371249712462947761

namespace A017054

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7371249712462947761.Spec : Prop :=
  ∀ n, P7371249712462947761.a n = A017054 n

theorem P7371249712462947761.correct : P7371249712462947761.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017054, Nat.add_sub_cancel, A017054.P7371249712462947761.a, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017054, Nat.add_sub_cancel, A017054.P7371249712462947761.a, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017054

/-! ## A017054.P11724799161393990372

`record[(gcd(7, n)+n-1)²]`
-/

namespace A017054.P11724799161393990372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 7 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017054.P11724799161393990372

namespace A017054

/-- `record[(gcd(7, n)+n-1)²]` -/
def P11724799161393990372.Spec : Prop :=
  ∀ n, P11724799161393990372.a n = A017054 n

end A017054

/-! ## A017054.P5818178520721516426

`floor((∑[a(n-1)+2]-n²)²)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A017054.P5818178520721516426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2

end

end A017054.P5818178520721516426

namespace A017054

/-- `floor((∑[a(n-1)+2]-n²)²)` -/
def P5818178520721516426.Spec : Prop :=
  ∀ n, P5818178520721516426.a n = A017054 n

end A017054

/-! ## A017054.P15689803721973545171

`sqrt(A017056(n))`
-/

namespace A017054.P15689803721973545171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017056 n : ℝ)

end

end A017054.P15689803721973545171

namespace A017054

/-- `sqrt(A017056(n))` -/
def P15689803721973545171.Spec : Prop :=
  ∀ n, P15689803721973545171.a n = (A017054 n : ℝ)

end A017054

/-! ## A017054.P16504977327775616770

`A017053(n)^2`
-/

namespace A017054.P16504977327775616770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n ^ 2

end

end A017054.P16504977327775616770

namespace A017054

/-- `A017053(n)^2` -/
def P16504977327775616770.Spec : Prop :=
  ∀ n, P16504977327775616770.a n = A017054 n

theorem P16504977327775616770.correct : P16504977327775616770.Spec := by
  intro n
  simp only [A017054, Nat.add_sub_cancel, A017054.P16504977327775616770.a, A017054.P13303956205180699826.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017054

/-! ## A017054.P10387371968135314492

`sqrt(sqrt(A017060(n)))`
-/

namespace A017054.P10387371968135314492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017060 n : ℝ))

end

end A017054.P10387371968135314492

namespace A017054

/-- `sqrt(sqrt(A017060(n)))` -/
def P10387371968135314492.Spec : Prop :=
  ∀ n, P10387371968135314492.a n = (A017054 n : ℝ)

end A017054

/-! ## A017054.P5918542401028953842

`A017058(n)^(1/3)`
-/

namespace A017054.P5918542401028953842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017058 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017054.P5918542401028953842

namespace A017054

/-- `A017058(n)^(1/3)` -/
def P5918542401028953842.Spec : Prop :=
  ∀ n, P5918542401028953842.a n = (A017054 n : ℝ)

end A017054

/-! ## A017054.P11370426877556570141

`A017055(n)^(2/3)`
-/

namespace A017054.P11370426877556570141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017055 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017054.P11370426877556570141

namespace A017054

/-- `A017055(n)^(2/3)` -/
def P11370426877556570141.Spec : Prop :=
  ∀ n, P11370426877556570141.a n = (A017054 n : ℝ)

end A017054

/-! ## A017054.P9853267069906121899

`(7*n+6)^A020639(4*(n+1))`
-/

namespace A017054.P9853267069906121899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A017054.P9853267069906121899

namespace A017054

/-- `(7*n+6)^A020639(4*(n+1))` -/
def P9853267069906121899.Spec : Prop :=
  ∀ n, P9853267069906121899.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P15834101339997651101

`A017055(n)/A017053(n)`
-/

namespace A017054.P15834101339997651101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n : ℚ) / (A017053 n : ℚ)

end

end A017054.P15834101339997651101

namespace A017054

/-- `A017055(n)/A017053(n)` -/
def P15834101339997651101.Spec : Prop :=
  ∀ n, P15834101339997651101.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P12761762344699157033

`A017057(n)/A017055(n)`
-/

namespace A017054.P12761762344699157033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n : ℚ) / (A017055 n : ℚ)

end

end A017054.P12761762344699157033

namespace A017054

/-- `A017057(n)/A017055(n)` -/
def P12761762344699157033.Spec : Prop :=
  ∀ n, P12761762344699157033.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P11010339942638640881

`A017058(n)/A017056(n)`
-/

namespace A017054.P11010339942638640881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017058 n : ℚ) / (A017056 n : ℚ)

end

end A017054.P11010339942638640881

namespace A017054

/-- `A017058(n)/A017056(n)` -/
def P11010339942638640881.Spec : Prop :=
  ∀ n, P11010339942638640881.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P10655577718944593390

`A017059(n)/A017057(n)`
-/

namespace A017054.P10655577718944593390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017057 n : ℚ)

end

end A017054.P10655577718944593390

namespace A017054

/-- `A017059(n)/A017057(n)` -/
def P10655577718944593390.Spec : Prop :=
  ∀ n, P10655577718944593390.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P14620222632961708462

`A017055(n)²/A017056(n)`
-/

namespace A017054.P14620222632961708462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n ^ 2 : ℚ) / (A017056 n : ℚ)

end

end A017054.P14620222632961708462

namespace A017054

/-- `A017055(n)²/A017056(n)` -/
def P14620222632961708462.Spec : Prop :=
  ∀ n, P14620222632961708462.a n = (A017054 n : ℚ)

end A017054

/-! ## A017054.P15986967703478628444

`A157373(n+1)+A016969(n)`
-/

namespace A017054.P15986967703478628444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157373 (n + 1) + A016969 n

end

end A017054.P15986967703478628444

namespace A017054

/-- `A157373(n+1)+A016969(n)` -/
def P15986967703478628444.Spec : Prop :=
  ∀ n, P15986967703478628444.a n = A017054 n

theorem P15986967703478628444.correct : P15986967703478628444.Spec := by
  intro n
  simp only [A017054, Nat.add_sub_cancel, A017054.P15986967703478628444.a, A017054.P13303956205180699826.a, A016969, A016969.P9377817521032485226.a, A157373, A157373.P8759725065568610804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017054

/-! ## A017054.P9396875726952590926

`A157362(n+1)-A017653(n)`
-/

namespace A017054.P9396875726952590926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157362 (n + 1) - A017653 n

end

end A017054.P9396875726952590926

namespace A017054

/-- `A157362(n+1)-A017653(n)` -/
def P9396875726952590926.Spec : Prop :=
  ∀ n, P9396875726952590926.a n = A017054 n

theorem P9396875726952590926.correct : P9396875726952590926.Spec := by
  intro n
  simp only [A017054, Nat.add_sub_cancel, A017054.P9396875726952590926.a, A017054.P13303956205180699826.a, A017653, A017653.P10378373051193972998.a, A157362, A157362.P11972487102006687154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017054

/-! ## A017054.P1134594442459905224

`A157365(n+1)-A125169(n)`
-/

namespace A017054.P1134594442459905224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157365 (n + 1) - A125169 n

end

end A017054.P1134594442459905224

namespace A017054

/-- `A157365(n+1)-A125169(n)` -/
def P1134594442459905224.Spec : Prop :=
  ∀ n, P1134594442459905224.a n = A017054 n

theorem P1134594442459905224.correct : P1134594442459905224.Spec := by
  intro n
  simp only [A017054, Nat.add_sub_cancel, A017054.P1134594442459905224.a, A017054.P13303956205180699826.a, A125169, A125169.P15085034264192254056.a, A157365, A157365.P11866209212843534164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017054

/-! ## A017054.P2823658956729156936

`A173141(n+1)-A257645(n)`
-/

namespace A017054.P2823658956729156936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173141 (n + 1) - A257645 n

end

end A017054.P2823658956729156936

namespace A017054

/-- `A173141(n+1)-A257645(n)` -/
def P2823658956729156936.Spec : Prop :=
  ∀ n, P2823658956729156936.a n = A017054 n

theorem P2823658956729156936.correct : P2823658956729156936.Spec := by
  intro n
  simp only [A017054, Nat.add_sub_cancel, A017054.P2823658956729156936.a, A017054.P13303956205180699826.a, A173141, A173141.P7971151032588999872.a, A257645, A257645.P14432218990266036054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017054

/-! ## A017054.P9587614518554620063

`A017053(n)*A017058(n)/A017057(n)`
-/

namespace A017054.P9587614518554620063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017053 n * A017058 n : ℚ) / (A017057 n : ℚ)

end

end A017054.P9587614518554620063

namespace A017054

/-- `A017053(n)*A017058(n)/A017057(n)` -/
def P9587614518554620063.Spec : Prop :=
  ∀ n, P9587614518554620063.a n = (A017054 n : ℚ)

end A017054

/-!
# A017055: a(n) = (7*n + 6)^3.

The programs for A017055, the canonical program `A017055.P17802920683657544810` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017055 has offset 0).

The definition of A017055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^3` (program `A017055.P17802920683657544810`, by `A017055.P17802920683657544810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017055.P17802920683657544810

`(7*n+6)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017055

/-- `(7*n+6)^3` -/
def P17802920683657544810.Spec : Prop :=
  ∀ n, (P17802920683657544810.a n : ℤ) = A017055 n

theorem P17802920683657544810.correct : P17802920683657544810.Spec := by
  intro n
  simp only [A017055]

end A017055

/-! ## A017055.P12978089462209214798

`sqrt(A017058(n))`
-/

namespace A017055.P12978089462209214798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017058 n : ℝ)

end

end A017055.P12978089462209214798

namespace A017055

/-- `sqrt(A017058(n))` -/
def P12978089462209214798.Spec : Prop :=
  ∀ n, P12978089462209214798.a n = (A017055 n : ℝ)

end A017055

/-! ## A017055.P4883610680856604291

`sqrt(A017054(n)^3)`
-/

namespace A017055.P4883610680856604291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017054 n ^ 3 : ℝ)

end

end A017055.P4883610680856604291

namespace A017055

/-- `sqrt(A017054(n)^3)` -/
def P4883610680856604291.Spec : Prop :=
  ∀ n, P4883610680856604291.a n = (A017055 n : ℝ)

end A017055

/-! ## A017055.P11852299422656526612

`floor((A016969(n)+n+1)²^(3/2))`
-/

namespace A017055.P11852299422656526612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A016969 n + (n : ℤ) + 1) ^ 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A017055.P11852299422656526612

namespace A017055

/-- `floor((A016969(n)+n+1)²^(3/2))` -/
def P11852299422656526612.Spec : Prop :=
  ∀ n, P11852299422656526612.a n = A017055 n

end A017055

/-! ## A017055.P7075113473974848998

`A017053(n)*A017054(n)`
-/

namespace A017055.P7075113473974848998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017054 n

end

end A017055.P7075113473974848998

namespace A017055

/-- `A017053(n)*A017054(n)` -/
def P7075113473974848998.Spec : Prop :=
  ∀ n, P7075113473974848998.a n = A017055 n

theorem P7075113473974848998.correct : P7075113473974848998.Spec := by
  intro n
  simp only [A017055, Nat.add_sub_cancel, A017055.P7075113473974848998.a, A017055.P17802920683657544810.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017055

/-! ## A017055.P591055427266754387

`A017056(n)/A017053(n)`
-/

namespace A017055.P591055427266754387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n : ℚ) / (A017053 n : ℚ)

end

end A017055.P591055427266754387

namespace A017055

/-- `A017056(n)/A017053(n)` -/
def P591055427266754387.Spec : Prop :=
  ∀ n, P591055427266754387.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P4235664514531105417

`A017057(n)/A017054(n)`
-/

namespace A017055.P4235664514531105417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n : ℚ) / (A017054 n : ℚ)

end

end A017055.P4235664514531105417

namespace A017055

/-- `A017057(n)/A017054(n)` -/
def P4235664514531105417.Spec : Prop :=
  ∀ n, P4235664514531105417.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P11503451396375247097

`A017059(n)/A017056(n)`
-/

namespace A017055.P11503451396375247097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017056 n : ℚ)

end

end A017055.P11503451396375247097

namespace A017055

/-- `A017059(n)/A017056(n)` -/
def P11503451396375247097.Spec : Prop :=
  ∀ n, P11503451396375247097.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P586330274568433499

`A017060(n)/A017057(n)`
-/

namespace A017055.P586330274568433499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / (A017057 n : ℚ)

end

end A017055.P586330274568433499

namespace A017055

/-- `A017060(n)/A017057(n)` -/
def P586330274568433499.Spec : Prop :=
  ∀ n, P586330274568433499.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P3211981122208111340

`A017056(n)²/A017057(n)`
-/

namespace A017055.P3211981122208111340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n ^ 2 : ℚ) / (A017057 n : ℚ)

end

end A017055.P3211981122208111340

namespace A017055

/-- `A017056(n)²/A017057(n)` -/
def P3211981122208111340.Spec : Prop :=
  ∀ n, P3211981122208111340.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P2949530368942736500

`A017057(n)/A017053(n)²`
-/

namespace A017055.P2949530368942736500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n : ℚ) / (A017053 n ^ 2 : ℚ)

end

end A017055.P2949530368942736500

namespace A017055

/-- `A017057(n)/A017053(n)²` -/
def P2949530368942736500.Spec : Prop :=
  ∀ n, P2949530368942736500.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P1563157628572739054

`A017057(n)²/A017059(n)`
-/

namespace A017055.P1563157628572739054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n ^ 2 : ℚ) / (A017059 n : ℚ)

end

end A017055.P1563157628572739054

namespace A017055

/-- `A017057(n)²/A017059(n)` -/
def P1563157628572739054.Spec : Prop :=
  ∀ n, P1563157628572739054.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P9403132845721987093

`A017059(n)/A017054(n)²`
-/

namespace A017055.P9403132845721987093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017054 n ^ 2 : ℚ)

end

end A017055.P9403132845721987093

namespace A017055

/-- `A017059(n)/A017054(n)²` -/
def P9403132845721987093.Spec : Prop :=
  ∀ n, P9403132845721987093.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P5969397523903543607

`(A017029(n)+2)*A017054(n)`
-/

namespace A017055.P5969397523903543607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 2) * A017054 n

end

end A017055.P5969397523903543607

namespace A017055

/-- `(A017029(n)+2)*A017054(n)` -/
def P5969397523903543607.Spec : Prop :=
  ∀ n, P5969397523903543607.a n = A017055 n

theorem P5969397523903543607.correct : P5969397523903543607.Spec := by
  intro n
  simp only [A017055, Nat.add_sub_cancel, A017055.P5969397523903543607.a, A017055.P17802920683657544810.a, A017029, A017029.P18040034652068019793.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017055

/-! ## A017055.P1517096729623697751

`A017059(n)/A017053(n)²²`
-/

namespace A017055.P1517096729623697751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / ((A017053 n ^ 2) ^ 2 : ℚ)

end

end A017055.P1517096729623697751

namespace A017055

/-- `A017059(n)/A017053(n)²²` -/
def P1517096729623697751.Spec : Prop :=
  ∀ n, P1517096729623697751.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P8674701345849572909

`(A016969(n)+n+1)*A017054(n)`
-/

namespace A017055.P8674701345849572909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + (n + 1 : ℤ)) * A017054 n

end

end A017055.P8674701345849572909

namespace A017055

/-- `(A016969(n)+n+1)*A017054(n)` -/
def P8674701345849572909.Spec : Prop :=
  ∀ n, P8674701345849572909.a n = A017055 n

theorem P8674701345849572909.correct : P8674701345849572909.Spec := by
  intro n
  simp only [A017055, Nat.add_sub_cancel, A017055.P8674701345849572909.a, A017055.P17802920683657544810.a, A016969, A016969.P9377817521032485226.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017055

/-! ## A017055.P3562193383078345111

`A001526(n)/A016993(n)*A017054(n)`
-/

namespace A017055.P3562193383078345111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001526 n : ℚ) / (A016993 n : ℚ) * (A017054 n : ℚ)

end

end A017055.P3562193383078345111

namespace A017055

/-- `A001526(n)/A016993(n)*A017054(n)` -/
def P3562193383078345111.Spec : Prop :=
  ∀ n, P3562193383078345111.a n = (A017055 n : ℚ)

end A017055

/-! ## A017055.P628323168061952821

`Δ[A179986(n)]²*Δ[A179986(n)]`
-/

namespace A017055.P628323168061952821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017055.P628323168061952821

namespace A017055

/-- `Δ[A179986(n)]²*Δ[A179986(n)]` -/
def P628323168061952821.Spec : Prop :=
  ∀ n, P628323168061952821.a n = A017055 n

end A017055

/-! ## A017055.P784750194435781895

`A008589(n+1)*A017054(n)-A017054(n)`
-/

namespace A017055.P784750194435781895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) * A017054 n - A017054 n

end

end A017055.P784750194435781895

namespace A017055

/-- `A008589(n+1)*A017054(n)-A017054(n)` -/
def P784750194435781895.Spec : Prop :=
  ∀ n, P784750194435781895.a n = A017055 n

theorem P784750194435781895.correct : P784750194435781895.Spec := by
  intro n
  simp only [A017055, Nat.add_sub_cancel, A017055.P784750194435781895.a, A017055.P17802920683657544810.a, A008589, A008589.P8963889148823201939.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017055

/-!
# A017056: a(n) = (7*n + 6)^4.

The programs for A017056, the canonical program `A017056.P5064168967088083575` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017056 has offset 0).

The definition of A017056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^4` (program `A017056.P5064168967088083575`, by `A017056.P5064168967088083575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017056.P5064168967088083575

`(7*n+6)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017056

/-- `(7*n+6)^4` -/
def P5064168967088083575.Spec : Prop :=
  ∀ n, (P5064168967088083575.a n : ℤ) = A017056 n

theorem P5064168967088083575.correct : P5064168967088083575.Spec := by
  intro n
  simp only [A017056]

end A017056

/-! ## A017056.P763978238215875079

`(n-2-lcm(4, 2*n+1))²²`
-/

namespace A017056.P763978238215875079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 - (Nat.lcm 4 (2 * n + 1) : ℤ)) ^ 2) ^ 2

end

end A017056.P763978238215875079

namespace A017056

/-- `(n-2-lcm(4, 2*n+1))²²` -/
def P763978238215875079.Spec : Prop :=
  ∀ n, P763978238215875079.a n = A017056 n

end A017056

/-! ## A017056.P18302032306402614663

`(7*(n+1)-gcd(n, n+1))²²`
-/

namespace A017056.P18302032306402614663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((7 * (n + 1) : ℤ) - (Nat.gcd n (n + 1) : ℤ)) ^ 2) ^ 2

end

end A017056.P18302032306402614663

namespace A017056

/-- `(7*(n+1)-gcd(n, n+1))²²` -/
def P18302032306402614663.Spec : Prop :=
  ∀ n, P18302032306402614663.a n = A017056 n

theorem P18302032306402614663.correct : P18302032306402614663.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P18302032306402614663.a, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017056

/-! ## A017056.P1286902869496110466

`Δ[(2*n+1)²-C(n+2, 2)]²²`
-/

namespace A017056.P1286902869496110466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017056.P1286902869496110466

namespace A017056

/-- `Δ[(2*n+1)²-C(n+2, 2)]²²` -/
def P1286902869496110466.Spec : Prop :=
  ∀ n, P1286902869496110466.a n = A017056 n

theorem P1286902869496110466.correct : P1286902869496110466.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P1286902869496110466.f1, A017056.P1286902869496110466.a, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P14121427355978094789

`A017054(n)²`
-/

namespace A017056.P14121427355978094789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n ^ 2

end

end A017056.P14121427355978094789

namespace A017056

/-- `A017054(n)²` -/
def P14121427355978094789.Spec : Prop :=
  ∀ n, P14121427355978094789.a n = A017056 n

theorem P14121427355978094789.correct : P14121427355978094789.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P14121427355978094789.a, A017056.P5064168967088083575.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P16521550160456429826

`sqrt(A017060(n))`
-/

namespace A017056.P16521550160456429826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017060 n : ℝ)

end

end A017056.P16521550160456429826

namespace A017056

/-- `sqrt(A017060(n))` -/
def P16521550160456429826.Spec : Prop :=
  ∀ n, P16521550160456429826.a n = (A017056 n : ℝ)

end A017056

/-! ## A017056.P13346026255128360296

`A017053(n)²²`
-/

namespace A017056.P13346026255128360296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n ^ 2) ^ 2

end

end A017056.P13346026255128360296

namespace A017056

/-- `A017053(n)²²` -/
def P13346026255128360296.Spec : Prop :=
  ∀ n, P13346026255128360296.a n = A017056 n

theorem P13346026255128360296.correct : P13346026255128360296.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P13346026255128360296.a, A017056.P5064168967088083575.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P3489635994761093581

`(A017041(n)+1)²²`
-/

namespace A017056.P3489635994761093581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017041 n + 1) ^ 2) ^ 2

end

end A017056.P3489635994761093581

namespace A017056

/-- `(A017041(n)+1)²²` -/
def P3489635994761093581.Spec : Prop :=
  ∀ n, P3489635994761093581.a n = A017056 n

theorem P3489635994761093581.correct : P3489635994761093581.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P3489635994761093581.a, A017056.P5064168967088083575.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P6352522055206493572

`(A017029(n)+2)²²`
-/

namespace A017056.P6352522055206493572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017029 n + 2) ^ 2) ^ 2

end

end A017056.P6352522055206493572

namespace A017056

/-- `(A017029(n)+2)²²` -/
def P6352522055206493572.Spec : Prop :=
  ∀ n, P6352522055206493572.a n = A017056 n

theorem P6352522055206493572.correct : P6352522055206493572.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P6352522055206493572.a, A017056.P5064168967088083575.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P3943739756012401341

`(A017017(n)+3)²²`
-/

namespace A017056.P3943739756012401341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017017 n + 3) ^ 2) ^ 2

end

end A017056.P3943739756012401341

namespace A017056

/-- `(A017017(n)+3)²²` -/
def P3943739756012401341.Spec : Prop :=
  ∀ n, P3943739756012401341.a n = A017056 n

theorem P3943739756012401341.correct : P3943739756012401341.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P3943739756012401341.a, A017056.P5064168967088083575.a, A017017, A017017.P16632027915442464889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P16816045866146406573

`(n-A017137(n))²²`
-/

namespace A017056.P16816045866146406573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017137 n) ^ 2) ^ 2

end

end A017056.P16816045866146406573

namespace A017056

/-- `(n-A017137(n))²²` -/
def P16816045866146406573.Spec : Prop :=
  ∀ n, P16816045866146406573.a n = A017056 n

theorem P16816045866146406573.correct : P16816045866146406573.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P16816045866146406573.a, A017056.P5064168967088083575.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P18425927400961239613

`(sqrt(A017042(n))+1)²²`
-/

namespace A017056.P18425927400961239613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017042 n : ℝ) + 1) ^ 2) ^ 2

end

end A017056.P18425927400961239613

namespace A017056

/-- `(sqrt(A017042(n))+1)²²` -/
def P18425927400961239613.Spec : Prop :=
  ∀ n, P18425927400961239613.a n = (A017056 n : ℝ)

end A017056

/-! ## A017056.P10937546287148861178

`(sqrt(A017030(n))+2)²²`
-/

namespace A017056.P10937546287148861178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017030 n : ℝ) + 2) ^ 2) ^ 2

end

end A017056.P10937546287148861178

namespace A017056

/-- `(sqrt(A017030(n))+2)²²` -/
def P10937546287148861178.Spec : Prop :=
  ∀ n, P10937546287148861178.a n = (A017056 n : ℝ)

end A017056

/-! ## A017056.P11936548799656246238

`(n²-A104675(n))²²`
-/

namespace A017056.P11936548799656246238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 : ℤ) - A104675 n) ^ 2) ^ 2

end

end A017056.P11936548799656246238

namespace A017056

/-- `(n²-A104675(n))²²` -/
def P11936548799656246238.Spec : Prop :=
  ∀ n, P11936548799656246238.a n = A017056 n

end A017056

/-! ## A017056.P4808524573459520985

`(n-sqrt(A017138(n)))²²`
-/

namespace A017056.P4808524573459520985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017138 n : ℝ)) ^ 2) ^ 2

end

end A017056.P4808524573459520985

namespace A017056

/-- `(n-sqrt(A017138(n)))²²` -/
def P4808524573459520985.Spec : Prop :=
  ∀ n, P4808524573459520985.a n = (A017056 n : ℝ)

end A017056

/-! ## A017056.P4551051820591109617

`(A016969(n)+1+n)²²`
-/

namespace A017056.P4551051820591109617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016969 n + 1 + (n : ℤ)) ^ 2) ^ 2

end

end A017056.P4551051820591109617

namespace A017056

/-- `(A016969(n)+1+n)²²` -/
def P4551051820591109617.Spec : Prop :=
  ∀ n, P4551051820591109617.a n = A017056 n

theorem P4551051820591109617.correct : P4551051820591109617.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P4551051820591109617.a, A017056.P5064168967088083575.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P297434423867523323

`(1-A004771(n)+n)²²`
-/

namespace A017056.P297434423867523323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A004771 n + (n : ℤ)) ^ 2) ^ 2

end

end A017056.P297434423867523323

namespace A017056

/-- `(1-A004771(n)+n)²²` -/
def P297434423867523323.Spec : Prop :=
  ∀ n, P297434423867523323.a n = A017056 n

theorem P297434423867523323.correct : P297434423867523323.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P297434423867523323.a, A017056.P5064168967088083575.a, A004771, A004771.P15562682025386998074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P15531779176658006569

`(A016957(n)+n+2)²²`
-/

namespace A017056.P15531779176658006569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016957 n + (n + 2 : ℤ)) ^ 2) ^ 2

end

end A017056.P15531779176658006569

namespace A017056

/-- `(A016957(n)+n+2)²²` -/
def P15531779176658006569.Spec : Prop :=
  ∀ n, P15531779176658006569.a n = A017056 n

theorem P15531779176658006569.correct : P15531779176658006569.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P15531779176658006569.a, A017056.P5064168967088083575.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P9953429408739575364

`(A016945(n)+3+n)²²`
-/

namespace A017056.P9953429408739575364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016945 n + 3 + (n : ℤ)) ^ 2) ^ 2

end

end A017056.P9953429408739575364

namespace A017056

/-- `(A016945(n)+3+n)²²` -/
def P9953429408739575364.Spec : Prop :=
  ∀ n, P9953429408739575364.a n = A017056 n

theorem P9953429408739575364.correct : P9953429408739575364.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P9953429408739575364.a, A017056.P5064168967088083575.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-! ## A017056.P1920856501477440496

`(A016825(2*n+1)-n)²²`
-/

namespace A017056.P1920856501477440496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 (2 * n + 1) - (n : ℤ)) ^ 2) ^ 2

end

end A017056.P1920856501477440496

namespace A017056

/-- `(A016825(2*n+1)-n)²²` -/
def P1920856501477440496.Spec : Prop :=
  ∀ n, P1920856501477440496.a n = A017056 n

theorem P1920856501477440496.correct : P1920856501477440496.Spec := by
  intro n
  simp only [A017056, Nat.add_sub_cancel, A017056.P1920856501477440496.a, A017056.P5064168967088083575.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017056

/-!
# A017057: a(n) = (7*n + 6)^5.

The programs for A017057, the canonical program `A017057.P14449086448532405384` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017057 has offset 0).

The definition of A017057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^5` (program `A017057.P14449086448532405384`, by `A017057.P14449086448532405384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017057.P14449086448532405384

`(7*n+6)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017057

/-- `(7*n+6)^5` -/
def P14449086448532405384.Spec : Prop :=
  ∀ n, (P14449086448532405384.a n : ℤ) = A017057 n

theorem P14449086448532405384.correct : P14449086448532405384.Spec := by
  intro n
  simp only [A017057]

end A017057

/-! ## A017057.P2354823056144477692

`sqrt(A017062(n))`
-/

namespace A017057.P2354823056144477692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017062 n : ℝ)

end

end A017057.P2354823056144477692

namespace A017057

/-- `sqrt(A017062(n))` -/
def P2354823056144477692.Spec : Prop :=
  ∀ n, P2354823056144477692.a n = (A017057 n : ℝ)

end A017057

/-! ## A017057.P16313630957592383453

`sqrt(A017054(n)^5)`
-/

namespace A017057.P16313630957592383453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017054 n ^ 5 : ℝ)

end

end A017057.P16313630957592383453

namespace A017057

/-- `sqrt(A017054(n)^5)` -/
def P16313630957592383453.Spec : Prop :=
  ∀ n, P16313630957592383453.a n = (A017057 n : ℝ)

end A017057

/-! ## A017057.P11031435925945959621

`(7*n+6)*A017056(n)`
-/

namespace A017057.P11031435925945959621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℤ) * A017056 n

end

end A017057.P11031435925945959621

namespace A017057

/-- `(7*n+6)*A017056(n)` -/
def P11031435925945959621.Spec : Prop :=
  ∀ n, P11031435925945959621.a n = A017057 n

theorem P11031435925945959621.correct : P11031435925945959621.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P11031435925945959621.a, A017057.P14449086448532405384.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P333548470821351376

`abs((A016969(n)+1+n)^5-1)+1`
-/

namespace A017057.P333548470821351376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016969 n + 1 + (n : ℤ)) ^ 5 - 1| + 1

end

end A017057.P333548470821351376

namespace A017057

/-- `abs((A016969(n)+1+n)^5-1)+1` -/
def P333548470821351376.Spec : Prop :=
  ∀ n, P333548470821351376.a n = A017057 n

end A017057

/-! ## A017057.P11040130855263253985

`A017054(n)*A017055(n)`
-/

namespace A017057.P11040130855263253985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017055 n

end

end A017057.P11040130855263253985

namespace A017057

/-- `A017054(n)*A017055(n)` -/
def P11040130855263253985.Spec : Prop :=
  ∀ n, P11040130855263253985.a n = A017057 n

theorem P11040130855263253985.correct : P11040130855263253985.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P11040130855263253985.a, A017057.P14449086448532405384.a, A017054, A017054.P13303956205180699826.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P2245281285276126972

`A017058(n)/A017053(n)`
-/

namespace A017057.P2245281285276126972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017058 n : ℚ) / (A017053 n : ℚ)

end

end A017057.P2245281285276126972

namespace A017057

/-- `A017058(n)/A017053(n)` -/
def P2245281285276126972.Spec : Prop :=
  ∀ n, P2245281285276126972.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P17305854849154045212

`A017059(n)/A017054(n)`
-/

namespace A017057.P17305854849154045212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017054 n : ℚ)

end

end A017057.P17305854849154045212

namespace A017057

/-- `A017059(n)/A017054(n)` -/
def P17305854849154045212.Spec : Prop :=
  ∀ n, P17305854849154045212.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P4253063914343771849

`A017053(n)²*A017055(n)`
-/

namespace A017057.P4253063914343771849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n ^ 2 * A017055 n

end

end A017057.P4253063914343771849

namespace A017057

/-- `A017053(n)²*A017055(n)` -/
def P4253063914343771849.Spec : Prop :=
  ∀ n, P4253063914343771849.a n = A017057 n

theorem P4253063914343771849.correct : P4253063914343771849.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P4253063914343771849.a, A017057.P14449086448532405384.a, A017053, A017053.P7458143650627556555.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P10678006542169209724

`A017054(n)²*A017053(n)`
-/

namespace A017057.P10678006542169209724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n ^ 2 * A017053 n

end

end A017057.P10678006542169209724

namespace A017057

/-- `A017054(n)²*A017053(n)` -/
def P10678006542169209724.Spec : Prop :=
  ∀ n, P10678006542169209724.a n = A017057 n

theorem P10678006542169209724.correct : P10678006542169209724.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P10678006542169209724.a, A017057.P14449086448532405384.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P3184576933398954132

`A017056(n)²/A017055(n)`
-/

namespace A017057.P3184576933398954132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n ^ 2 : ℚ) / (A017055 n : ℚ)

end

end A017057.P3184576933398954132

namespace A017057

/-- `A017056(n)²/A017055(n)` -/
def P3184576933398954132.Spec : Prop :=
  ∀ n, P3184576933398954132.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P16290778649604228229

`A017059(n)/A017053(n)²`
-/

namespace A017057.P16290778649604228229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017053 n ^ 2 : ℚ)

end

end A017057.P16290778649604228229

namespace A017057

/-- `A017059(n)/A017053(n)²` -/
def P16290778649604228229.Spec : Prop :=
  ∀ n, P16290778649604228229.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P16859774556207348231

`(A017029(n)+2)*A017054(n)²`
-/

namespace A017057.P16859774556207348231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017029 n + 2) * A017054 n ^ 2

end

end A017057.P16859774556207348231

namespace A017057

/-- `(A017029(n)+2)*A017054(n)²` -/
def P16859774556207348231.Spec : Prop :=
  ∀ n, P16859774556207348231.a n = A017057 n

theorem P16859774556207348231.correct : P16859774556207348231.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P16859774556207348231.a, A017057.P14449086448532405384.a, A017029, A017029.P18040034652068019793.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P18002375462187766386

`(A016969(n)+n+1)*A017054(n)²`
-/

namespace A017057.P18002375462187766386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + (n + 1 : ℤ)) * A017054 n ^ 2

end

end A017057.P18002375462187766386

namespace A017057

/-- `(A016969(n)+n+1)*A017054(n)²` -/
def P18002375462187766386.Spec : Prop :=
  ∀ n, P18002375462187766386.a n = A017057 n

theorem P18002375462187766386.correct : P18002375462187766386.Spec := by
  intro n
  simp only [A017057, Nat.add_sub_cancel, A017057.P18002375462187766386.a, A017057.P14449086448532405384.a, A016969, A016969.P9377817521032485226.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017057

/-! ## A017057.P4906910944552647727

`A017056(n)/A017059(n)*A017056(n)²`
-/

namespace A017057.P4906910944552647727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n : ℚ) / (A017059 n : ℚ) * (A017056 n ^ 2 : ℚ)

end

end A017057.P4906910944552647727

namespace A017057

/-- `A017056(n)/A017059(n)*A017056(n)²` -/
def P4906910944552647727.Spec : Prop :=
  ∀ n, P4906910944552647727.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P13995315629365156667

`A017060(n)/(A017053(n)²*A017053(n))`
-/

namespace A017057.P13995315629365156667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / (A017053 n ^ 2 * A017053 n : ℚ)

end

end A017057.P13995315629365156667

namespace A017057

/-- `A017060(n)/(A017053(n)²*A017053(n))` -/
def P13995315629365156667.Spec : Prop :=
  ∀ n, P13995315629365156667.a n = (A017057 n : ℚ)

end A017057

/-! ## A017057.P15023345302599949180

`A047276(2*(n+1))²²*A047276(2*(n+1))`
-/

namespace A017057.P15023345302599949180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047276 (2 * (n + 1)) ^ 2) ^ 2 * A047276 (2 * (n + 1))

end

end A017057.P15023345302599949180

namespace A017057

/-- `A047276(2*(n+1))²²*A047276(2*(n+1))` -/
def P15023345302599949180.Spec : Prop :=
  ∀ n, P15023345302599949180.a n = A017057 n

end A017057

/-! ## A017057.P3607490133264605356

`A047280(2*(n+1))²²*A047280(2*(n+1))`
-/

namespace A017057.P3607490133264605356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047280 (2 * (n + 1)) ^ 2) ^ 2 * A047280 (2 * (n + 1))

end

end A017057.P3607490133264605356

namespace A017057

/-- `A047280(2*(n+1))²²*A047280(2*(n+1))` -/
def P3607490133264605356.Spec : Prop :=
  ∀ n, P3607490133264605356.a n = A017057 n

end A017057

/-! ## A017057.P11216467889205011193

`A047288(2*(n+1))²²*A047288(2*(n+1))`
-/

namespace A017057.P11216467889205011193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047288 (2 * (n + 1)) ^ 2) ^ 2 * A047288 (2 * (n + 1))

end

end A017057.P11216467889205011193

namespace A017057

/-- `A047288(2*(n+1))²²*A047288(2*(n+1))` -/
def P11216467889205011193.Spec : Prop :=
  ∀ n, P11216467889205011193.a n = A017057 n

end A017057

/-! ## A017057.P14151417242332262892

`A168332(2*n+1)²²*A168332(2*n+1)`
-/

namespace A017057.P14151417242332262892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168332 (2 * n + 1) ^ 2) ^ 2 * A168332 (2 * n + 1)

end

end A017057.P14151417242332262892

namespace A017057

/-- `A168332(2*n+1)²²*A168332(2*n+1)` -/
def P14151417242332262892.Spec : Prop :=
  ∀ n, P14151417242332262892.a n = A017057 n

end A017057

/-!
# A017058: a(n) = (7*n + 6)^6.

The programs for A017058, the canonical program `A017058.P9070005173827928936` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017058 has offset 0).

The definition of A017058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^6` (program `A017058.P9070005173827928936`, by `A017058.P9070005173827928936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017058.P9070005173827928936

`(7*n+6)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017058

/-- `(7*n+6)^6` -/
def P9070005173827928936.Spec : Prop :=
  ∀ n, (P9070005173827928936.a n : ℤ) = A017058 n

theorem P9070005173827928936.correct : P9070005173827928936.Spec := by
  intro n
  simp only [A017058]

end A017058

/-! ## A017058.P18333597066699663655

`A017055(n)²`
-/

namespace A017058.P18333597066699663655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n ^ 2

end

end A017058.P18333597066699663655

namespace A017058

/-- `A017055(n)²` -/
def P18333597066699663655.Spec : Prop :=
  ∀ n, P18333597066699663655.a n = A017058 n

theorem P18333597066699663655.correct : P18333597066699663655.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P18333597066699663655.a, A017058.P9070005173827928936.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P4288252704240641101

`sqrt(A017056(n)^3)`
-/

namespace A017058.P4288252704240641101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017056 n ^ 3 : ℝ)

end

end A017058.P4288252704240641101

namespace A017058

/-- `sqrt(A017056(n)^3)` -/
def P4288252704240641101.Spec : Prop :=
  ∀ n, P4288252704240641101.a n = (A017058 n : ℝ)

end A017058

/-! ## A017058.P741271332438347063

`(7*n+6)*A017057(n)`
-/

namespace A017058.P741271332438347063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℤ) * A017057 n

end

end A017058.P741271332438347063

namespace A017058

/-- `(7*n+6)*A017057(n)` -/
def P741271332438347063.Spec : Prop :=
  ∀ n, P741271332438347063.a n = A017058 n

theorem P741271332438347063.correct : P741271332438347063.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P741271332438347063.a, A017058.P9070005173827928936.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P7494862773513194429

`A017054(n)*A017056(n)`
-/

namespace A017058.P7494862773513194429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017056 n

end

end A017058.P7494862773513194429

namespace A017058

/-- `A017054(n)*A017056(n)` -/
def P7494862773513194429.Spec : Prop :=
  ∀ n, P7494862773513194429.a n = A017058 n

theorem P7494862773513194429.correct : P7494862773513194429.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P7494862773513194429.a, A017058.P9070005173827928936.a, A017054, A017054.P13303956205180699826.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P12681369187951441482

`A017059(n)/A017053(n)`
-/

namespace A017058.P12681369187951441482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017053 n : ℚ)

end

end A017058.P12681369187951441482

namespace A017058

/-- `A017059(n)/A017053(n)` -/
def P12681369187951441482.Spec : Prop :=
  ∀ n, P12681369187951441482.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P6231972668669643568

`(A017053(n)*A017054(n))²`
-/

namespace A017058.P6231972668669643568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n * A017054 n) ^ 2

end

end A017058.P6231972668669643568

namespace A017058

/-- `(A017053(n)*A017054(n))²` -/
def P6231972668669643568.Spec : Prop :=
  ∀ n, P6231972668669643568.a n = A017058 n

theorem P6231972668669643568.correct : P6231972668669643568.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P6231972668669643568.a, A017058.P9070005173827928936.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P5330521148362175061

`A017053(n)²*A017056(n)`
-/

namespace A017058.P5330521148362175061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n ^ 2 * A017056 n

end

end A017058.P5330521148362175061

namespace A017058

/-- `A017053(n)²*A017056(n)` -/
def P5330521148362175061.Spec : Prop :=
  ∀ n, P5330521148362175061.a n = A017058 n

theorem P5330521148362175061.correct : P5330521148362175061.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P5330521148362175061.a, A017058.P9070005173827928936.a, A017053, A017053.P7458143650627556555.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P170399878670934543

`(A017057(n)/A017054(n))²`
-/

namespace A017058.P170399878670934543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017057 n : ℚ) / (A017054 n : ℚ)) ^ 2

end

end A017058.P170399878670934543

namespace A017058

/-- `(A017057(n)/A017054(n))²` -/
def P170399878670934543.Spec : Prop :=
  ∀ n, P170399878670934543.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P7724699743219186285

`A017057(n)²/A017056(n)`
-/

namespace A017058.P7724699743219186285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n ^ 2 : ℚ) / (A017056 n : ℚ)

end

end A017058.P7724699743219186285

namespace A017058

/-- `A017057(n)²/A017056(n)` -/
def P7724699743219186285.Spec : Prop :=
  ∀ n, P7724699743219186285.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P10309636529960794799

`(A017059(n)/A017056(n))²`
-/

namespace A017058.P10309636529960794799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017059 n : ℚ) / (A017056 n : ℚ)) ^ 2

end

end A017058.P10309636529960794799

namespace A017058

/-- `(A017059(n)/A017056(n))²` -/
def P10309636529960794799.Spec : Prop :=
  ∀ n, P10309636529960794799.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P16773923127755811672

`A017060(n)/A017053(n)²`
-/

namespace A017058.P16773923127755811672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / (A017053 n ^ 2 : ℚ)

end

end A017058.P16773923127755811672

namespace A017058

/-- `A017060(n)/A017053(n)²` -/
def P16773923127755811672.Spec : Prop :=
  ∀ n, P16773923127755811672.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P6003713591889144164

`(A017060(n)/A017057(n))²`
-/

namespace A017058.P6003713591889144164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017060 n : ℚ) / (A017057 n : ℚ)) ^ 2

end

end A017058.P6003713591889144164

namespace A017058

/-- `(A017060(n)/A017057(n))²` -/
def P6003713591889144164.Spec : Prop :=
  ∀ n, P6003713591889144164.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P18078278858968969614

`(A017059(n)/A017054(n)²)²`
-/

namespace A017058.P18078278858968969614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017059 n : ℚ) / (A017054 n ^ 2 : ℚ)) ^ 2

end

end A017058.P18078278858968969614

namespace A017058

/-- `(A017059(n)/A017054(n)²)²` -/
def P18078278858968969614.Spec : Prop :=
  ∀ n, P18078278858968969614.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P15732012353046452991

`A017060(n)/(A017041(n)+1)²`
-/

namespace A017058.P15732012353046452991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / ((A017041 n + 1) ^ 2 : ℚ)

end

end A017058.P15732012353046452991

namespace A017058

/-- `A017060(n)/(A017041(n)+1)²` -/
def P15732012353046452991.Spec : Prop :=
  ∀ n, P15732012353046452991.a n = (A017058 n : ℚ)

theorem P15732012353046452991.correct : P15732012353046452991.Spec := by
  intro n
  simp only [A017058, Nat.add_sub_cancel, A017058.P15732012353046452991.a, A017058.P9070005173827928936.a, A017041, A017041.P2403978402019689245.a, A017060, A017060.P14870891231322719586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017058

/-! ## A017058.P13134827689000257837

`A001526(n)*A017057(n)/A016993(n)`
-/

namespace A017058.P13134827689000257837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001526 n * A017057 n : ℚ) / (A016993 n : ℚ)

end

end A017058.P13134827689000257837

namespace A017058

/-- `A001526(n)*A017057(n)/A016993(n)` -/
def P13134827689000257837.Spec : Prop :=
  ∀ n, P13134827689000257837.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P9158989609410352962

`A017054(n)*A017057(n)/A017053(n)`
-/

namespace A017058.P9158989609410352962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017054 n * A017057 n : ℚ) / (A017053 n : ℚ)

end

end A017058.P9158989609410352962

namespace A017058

/-- `A017054(n)*A017057(n)/A017053(n)` -/
def P9158989609410352962.Spec : Prop :=
  ∀ n, P9158989609410352962.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P4965480411833085693

`A017055(n)/A017053(n)*A017056(n)`
-/

namespace A017058.P4965480411833085693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n : ℚ) / (A017053 n : ℚ) * (A017056 n : ℚ)

end

end A017058.P4965480411833085693

namespace A017058

/-- `A017055(n)/A017053(n)*A017056(n)` -/
def P4965480411833085693.Spec : Prop :=
  ∀ n, P4965480411833085693.a n = (A017058 n : ℚ)

end A017058

/-! ## A017058.P11184517071067078649

`A017055(n)*A017057(n)/A017054(n)`
-/

namespace A017058.P11184517071067078649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n * A017057 n : ℚ) / (A017054 n : ℚ)

end

end A017058.P11184517071067078649

namespace A017058

/-- `A017055(n)*A017057(n)/A017054(n)` -/
def P11184517071067078649.Spec : Prop :=
  ∀ n, P11184517071067078649.a n = (A017058 n : ℚ)

end A017058

/-!
# A017059: a(n) = (7*n + 6)^7.

The programs for A017059, the canonical program `A017059.P13572036140504396838` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017059 has offset 0).

The definition of A017059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^7` (program `A017059.P13572036140504396838`, by `A017059.P13572036140504396838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017059.P13572036140504396838

`(7*n+6)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017059

/-- `(7*n+6)^7` -/
def P13572036140504396838.Spec : Prop :=
  ∀ n, (P13572036140504396838.a n : ℤ) = A017059 n

theorem P13572036140504396838.correct : P13572036140504396838.Spec := by
  intro n
  simp only [A017059]

end A017059

/-! ## A017059.P10161577115610431893

`(7*n+6)*A017058(n)`
-/

namespace A017059.P10161577115610431893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℤ) * A017058 n

end

end A017059.P10161577115610431893

namespace A017059

/-- `(7*n+6)*A017058(n)` -/
def P10161577115610431893.Spec : Prop :=
  ∀ n, P10161577115610431893.a n = A017059 n

theorem P10161577115610431893.correct : P10161577115610431893.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P10161577115610431893.a, A017059.P13572036140504396838.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P689589357760288427

`(7*n+6)²*A017057(n)`
-/

namespace A017059.P689589357760288427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 6) ^ 2 : ℤ) * A017057 n

end

end A017059.P689589357760288427

namespace A017059

/-- `(7*n+6)²*A017057(n)` -/
def P689589357760288427.Spec : Prop :=
  ∀ n, P689589357760288427.a n = A017059 n

theorem P689589357760288427.correct : P689589357760288427.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P689589357760288427.a, A017059.P13572036140504396838.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P5834516962647575673

`A017055(n)*A017056(n)`
-/

namespace A017059.P5834516962647575673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n * A017056 n

end

end A017059.P5834516962647575673

namespace A017059

/-- `A017055(n)*A017056(n)` -/
def P5834516962647575673.Spec : Prop :=
  ∀ n, P5834516962647575673.a n = A017059 n

theorem P5834516962647575673.correct : P5834516962647575673.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P5834516962647575673.a, A017059.P13572036140504396838.a, A017055, A017055.P17802920683657544810.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P13585492917201362300

`A017060(n)/A017053(n)`
-/

namespace A017059.P13585492917201362300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / (A017053 n : ℚ)

end

end A017059.P13585492917201362300

namespace A017059

/-- `A017060(n)/A017053(n)` -/
def P13585492917201362300.Spec : Prop :=
  ∀ n, P13585492917201362300.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P11070540758340969868

`A017054(n)²*A017055(n)`
-/

namespace A017059.P11070540758340969868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n ^ 2 * A017055 n

end

end A017059.P11070540758340969868

namespace A017059

/-- `A017054(n)²*A017055(n)` -/
def P11070540758340969868.Spec : Prop :=
  ∀ n, P11070540758340969868.a n = A017059 n

theorem P11070540758340969868.correct : P11070540758340969868.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P11070540758340969868.a, A017059.P13572036140504396838.a, A017054, A017054.P13303956205180699826.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P2967374973636325717

`A017055(n)²*A017053(n)`
-/

namespace A017059.P2967374973636325717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n ^ 2 * A017053 n

end

end A017059.P2967374973636325717

namespace A017059

/-- `A017055(n)²*A017053(n)` -/
def P2967374973636325717.Spec : Prop :=
  ∀ n, P2967374973636325717.a n = A017059 n

theorem P2967374973636325717.correct : P2967374973636325717.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P2967374973636325717.a, A017059.P13572036140504396838.a, A017053, A017053.P7458143650627556555.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P10858073316610933260

`A017056(n)²/A017053(n)`
-/

namespace A017059.P10858073316610933260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n ^ 2 : ℚ) / (A017053 n : ℚ)

end

end A017059.P10858073316610933260

namespace A017059

/-- `A017056(n)²/A017053(n)` -/
def P10858073316610933260.Spec : Prop :=
  ∀ n, P10858073316610933260.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P11338298750002259902

`A017057(n)²/A017055(n)`
-/

namespace A017059.P11338298750002259902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n ^ 2 : ℚ) / (A017055 n : ℚ)

end

end A017059.P11338298750002259902

namespace A017059

/-- `A017057(n)²/A017055(n)` -/
def P11338298750002259902.Spec : Prop :=
  ∀ n, P11338298750002259902.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P132662064834869820

`A017060(n)/(A017041(n)+1)`
-/

namespace A017059.P132662064834869820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017060 n : ℚ) / (A017041 n + 1 : ℚ)

end

end A017059.P132662064834869820

namespace A017059

/-- `A017060(n)/(A017041(n)+1)` -/
def P132662064834869820.Spec : Prop :=
  ∀ n, P132662064834869820.a n = (A017059 n : ℚ)

theorem P132662064834869820.correct : P132662064834869820.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P132662064834869820.a, A017059.P13572036140504396838.a, A017041, A017041.P2403978402019689245.a, A017060, A017060.P14870891231322719586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P3720931229069424759

`A017054(n)²²/A017053(n)`
-/

namespace A017059.P3720931229069424759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017054 n ^ 2) ^ 2 : ℚ) / (A017053 n : ℚ)

end

end A017059.P3720931229069424759

namespace A017059

/-- `A017054(n)²²/A017053(n)` -/
def P3720931229069424759.Spec : Prop :=
  ∀ n, P3720931229069424759.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P15271121020613804158

`A017053(n)*A017054(n)*A017056(n)`
-/

namespace A017059.P15271121020613804158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017054 n * A017056 n

end

end A017059.P15271121020613804158

namespace A017059

/-- `A017053(n)*A017054(n)*A017056(n)` -/
def P15271121020613804158.Spec : Prop :=
  ∀ n, P15271121020613804158.a n = A017059 n

theorem P15271121020613804158.correct : P15271121020613804158.Spec := by
  intro n
  simp only [A017059, Nat.add_sub_cancel, A017059.P15271121020613804158.a, A017059.P13572036140504396838.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017059

/-! ## A017059.P909262279932623733

`A017054(n)*A017058(n)/A017053(n)`
-/

namespace A017059.P909262279932623733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017054 n * A017058 n : ℚ) / (A017053 n : ℚ)

end

end A017059.P909262279932623733

namespace A017059

/-- `A017054(n)*A017058(n)/A017053(n)` -/
def P909262279932623733.Spec : Prop :=
  ∀ n, P909262279932623733.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P16986692057260885295

`A017055(n)*A017057(n)/A017053(n)`
-/

namespace A017059.P16986692057260885295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n * A017057 n : ℚ) / (A017053 n : ℚ)

end

end A017059.P16986692057260885295

namespace A017059

/-- `A017055(n)*A017057(n)/A017053(n)` -/
def P16986692057260885295.Spec : Prop :=
  ∀ n, P16986692057260885295.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P7927287647252217176

`A017056(n)*A017057(n)/A017054(n)`
-/

namespace A017059.P7927287647252217176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n * A017057 n : ℚ) / (A017054 n : ℚ)

end

end A017059.P7927287647252217176

namespace A017059

/-- `A017056(n)*A017057(n)/A017054(n)` -/
def P7927287647252217176.Spec : Prop :=
  ∀ n, P7927287647252217176.a n = (A017059 n : ℚ)

end A017059

/-! ## A017059.P3456841528856150312

`A001015(7*n+6)`
-/

namespace A017059.P3456841528856150312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (7 * n + 6)

end

end A017059.P3456841528856150312

namespace A017059

/-- `A001015(7*n+6)` -/
def P3456841528856150312.Spec : Prop :=
  ∀ n, P3456841528856150312.a n = A017059 n

end A017059

/-! ## A017059.P4577827838532191040

`A017053(n)*A070931(A017053(n)+2)`
-/

namespace A017059.P4577827838532191040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A070931 (A017053 n + 2).toNat

end

end A017059.P4577827838532191040

namespace A017059

/-- `A017053(n)*A070931(A017053(n)+2)` -/
def P4577827838532191040.Spec : Prop :=
  ∀ n, P4577827838532191040.a n = A017059 n

end A017059

/-!
# A017060: a(n) = (7*n + 6)^8.

The programs for A017060, the canonical program `A017060.P14870891231322719586` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017060 has offset 0).

The definition of A017060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^8` (program `A017060.P14870891231322719586`, by `A017060.P14870891231322719586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017060.P14870891231322719586

`(7*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017060

/-- `(7*n+6)^8` -/
def P14870891231322719586.Spec : Prop :=
  ∀ n, (P14870891231322719586.a n : ℤ) = A017060 n

theorem P14870891231322719586.correct : P14870891231322719586.Spec := by
  intro n
  simp only [A017060]

end A017060

/-! ## A017060.P11130483698113285447

`(Δ[lcm(2*n+1, 2*n)]-n)²²²`
-/

namespace A017060.P11130483698113285447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017060.P11130483698113285447

namespace A017060

/-- `(Δ[lcm(2*n+1, 2*n)]-n)²²²` -/
def P11130483698113285447.Spec : Prop :=
  ∀ n, P11130483698113285447.a n = A017060 n

end A017060

/-! ## A017060.P12261366152258442703

`A017056(n)²`
-/

namespace A017060.P12261366152258442703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017056 n ^ 2

end

end A017060.P12261366152258442703

namespace A017060

/-- `A017056(n)²` -/
def P12261366152258442703.Spec : Prop :=
  ∀ n, P12261366152258442703.a n = A017060 n

theorem P12261366152258442703.correct : P12261366152258442703.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P12261366152258442703.a, A017060.P14870891231322719586.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P2070613954901065905

`A017054(n)²²`
-/

namespace A017060.P2070613954901065905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017054 n ^ 2) ^ 2

end

end A017060.P2070613954901065905

namespace A017060

/-- `A017054(n)²²` -/
def P2070613954901065905.Spec : Prop :=
  ∀ n, P2070613954901065905.a n = A017060 n

theorem P2070613954901065905.correct : P2070613954901065905.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P2070613954901065905.a, A017060.P14870891231322719586.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P10563729892149604435

`(A017053(n)^4)²`
-/

namespace A017060.P10563729892149604435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n ^ 4) ^ 2

end

end A017060.P10563729892149604435

namespace A017060

/-- `(A017053(n)^4)²` -/
def P10563729892149604435.Spec : Prop :=
  ∀ n, P10563729892149604435.a n = A017060 n

theorem P10563729892149604435.correct : P10563729892149604435.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P10563729892149604435.a, A017060.P14870891231322719586.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P9290204596736927332

`(A017041(n)+1)²²²`
-/

namespace A017060.P9290204596736927332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017041 n + 1) ^ 2) ^ 2) ^ 2

end

end A017060.P9290204596736927332

namespace A017060

/-- `(A017041(n)+1)²²²` -/
def P9290204596736927332.Spec : Prop :=
  ∀ n, P9290204596736927332.a n = A017060 n

theorem P9290204596736927332.correct : P9290204596736927332.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P9290204596736927332.a, A017060.P14870891231322719586.a, A017041, A017041.P2403978402019689245.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P3750123376934143758

`(A017029(n)+2)²²²`
-/

namespace A017060.P3750123376934143758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017029 n + 2) ^ 2) ^ 2) ^ 2

end

end A017060.P3750123376934143758

namespace A017060

/-- `(A017029(n)+2)²²²` -/
def P3750123376934143758.Spec : Prop :=
  ∀ n, P3750123376934143758.a n = A017060 n

theorem P3750123376934143758.correct : P3750123376934143758.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P3750123376934143758.a, A017060.P14870891231322719586.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P17826438471599112478

`(n-A017137(n))²²²`
-/

namespace A017060.P17826438471599112478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017137 n) ^ 2) ^ 2) ^ 2

end

end A017060.P17826438471599112478

namespace A017060

/-- `(n-A017137(n))²²²` -/
def P17826438471599112478.Spec : Prop :=
  ∀ n, P17826438471599112478.a n = A017060 n

theorem P17826438471599112478.correct : P17826438471599112478.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P17826438471599112478.a, A017060.P14870891231322719586.a, A017137, A017137.P18352355205687682311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P11460545140984826706

`(n²-A104675(n))²²²`
-/

namespace A017060.P11460545140984826706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n ^ 2 : ℤ) - A104675 n) ^ 2) ^ 2) ^ 2

end

end A017060.P11460545140984826706

namespace A017060

/-- `(n²-A104675(n))²²²` -/
def P11460545140984826706.Spec : Prop :=
  ∀ n, P11460545140984826706.a n = A017060 n

end A017060

/-! ## A017060.P16916468153520514872

`(A016969(n)+n+1)²²²`
-/

namespace A017060.P16916468153520514872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016969 n + (n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017060.P16916468153520514872

namespace A017060

/-- `(A016969(n)+n+1)²²²` -/
def P16916468153520514872.Spec : Prop :=
  ∀ n, P16916468153520514872.a n = A017060 n

theorem P16916468153520514872.correct : P16916468153520514872.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P16916468153520514872.a, A017060.P14870891231322719586.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P12413994153737328805

`(A004770(n+1)+1-n)²²²`
-/

namespace A017060.P12413994153737328805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + (1 - (n : ℤ))) ^ 2) ^ 2) ^ 2

end

end A017060.P12413994153737328805

namespace A017060

/-- `(A004770(n+1)+1-n)²²²` -/
def P12413994153737328805.Spec : Prop :=
  ∀ n, P12413994153737328805.a n = A017060 n

theorem P12413994153737328805.correct : P12413994153737328805.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P12413994153737328805.a, A017060.P14870891231322719586.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P16487272283122276659

`A017053(n)*A017059(n)`
-/

namespace A017060.P16487272283122276659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017059 n

end

end A017060.P16487272283122276659

namespace A017060

/-- `A017053(n)*A017059(n)` -/
def P16487272283122276659.Spec : Prop :=
  ∀ n, P16487272283122276659.a n = A017060 n

theorem P16487272283122276659.correct : P16487272283122276659.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P16487272283122276659.a, A017060.P14870891231322719586.a, A017053, A017053.P7458143650627556555.a, A017059, A017059.P13572036140504396838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P14016961597220087822

`A017054(n)*A017058(n)`
-/

namespace A017060.P14016961597220087822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017058 n

end

end A017060.P14016961597220087822

namespace A017060

/-- `A017054(n)*A017058(n)` -/
def P14016961597220087822.Spec : Prop :=
  ∀ n, P14016961597220087822.a n = A017060 n

theorem P14016961597220087822.correct : P14016961597220087822.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P14016961597220087822.a, A017060.P14870891231322719586.a, A017054, A017054.P13303956205180699826.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P2848036732825173916

`A017055(n)*A017057(n)`
-/

namespace A017060.P2848036732825173916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n * A017057 n

end

end A017060.P2848036732825173916

namespace A017060

/-- `A017055(n)*A017057(n)` -/
def P2848036732825173916.Spec : Prop :=
  ∀ n, P2848036732825173916.a n = A017060 n

theorem P2848036732825173916.correct : P2848036732825173916.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P2848036732825173916.a, A017060.P14870891231322719586.a, A017055, A017055.P17802920683657544810.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P10906240572968321801

`A017053(n)²*A017058(n)`
-/

namespace A017060.P10906240572968321801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n ^ 2 * A017058 n

end

end A017060.P10906240572968321801

namespace A017060

/-- `A017053(n)²*A017058(n)` -/
def P10906240572968321801.Spec : Prop :=
  ∀ n, P10906240572968321801.a n = A017060 n

theorem P10906240572968321801.correct : P10906240572968321801.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P10906240572968321801.a, A017060.P14870891231322719586.a, A017053, A017053.P7458143650627556555.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P4103497632594248208

`(A020739(n)+A008587(n))²²²`
-/

namespace A017060.P4103497632594248208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A020739 n + A008587 n) ^ 2) ^ 2) ^ 2

end

end A017060.P4103497632594248208

namespace A017060

/-- `(A020739(n)+A008587(n))²²²` -/
def P4103497632594248208.Spec : Prop :=
  ∀ n, P4103497632594248208.a n = A017060 n

theorem P4103497632594248208.correct : P4103497632594248208.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P4103497632594248208.a, A017060.P14870891231322719586.a, A008587, A008587.P15238079008432610842.a, A020739, A020739.P2210282862978748125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P6271643881177928504

`(A168374(n+1)+A168332(n+1))²²²`
-/

namespace A017060.P6271643881177928504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A168374 (n + 1) + A168332 (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017060.P6271643881177928504

namespace A017060

/-- `(A168374(n+1)+A168332(n+1))²²²` -/
def P6271643881177928504.Spec : Prop :=
  ∀ n, P6271643881177928504.a n = A017060 n

end A017060

/-! ## A017060.P16666322884047902583

`A017053(n)*A017054(n)*A017057(n)`
-/

namespace A017060.P16666322884047902583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017054 n * A017057 n

end

end A017060.P16666322884047902583

namespace A017060

/-- `A017053(n)*A017054(n)*A017057(n)` -/
def P16666322884047902583.Spec : Prop :=
  ∀ n, P16666322884047902583.a n = A017060 n

theorem P16666322884047902583.correct : P16666322884047902583.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P16666322884047902583.a, A017060.P14870891231322719586.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P11335885512160521391

`A017054(n)*A017055(n)*A017055(n)`
-/

namespace A017060.P11335885512160521391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017055 n * A017055 n

end

end A017060.P11335885512160521391

namespace A017060

/-- `A017054(n)*A017055(n)*A017055(n)` -/
def P11335885512160521391.Spec : Prop :=
  ∀ n, P11335885512160521391.a n = A017060 n

theorem P11335885512160521391.correct : P11335885512160521391.Spec := by
  intro n
  simp only [A017060, Nat.add_sub_cancel, A017060.P11335885512160521391.a, A017060.P14870891231322719586.a, A017054, A017054.P13303956205180699826.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017060

/-! ## A017060.P7938819292454129095

`A017056(n)*A017057(n)/A017053(n)`
-/

namespace A017060.P7938819292454129095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n * A017057 n : ℚ) / (A017053 n : ℚ)

end

end A017060.P7938819292454129095

namespace A017060

/-- `A017056(n)*A017057(n)/A017053(n)` -/
def P7938819292454129095.Spec : Prop :=
  ∀ n, P7938819292454129095.a n = (A017060 n : ℚ)

end A017060

/-!
# A017061: a(n) = (7*n + 6)^9.

The programs for A017061, the canonical program `A017061.P3405352464685323171` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017061 has offset 0).

The definition of A017061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^9` (program `A017061.P3405352464685323171`, by `A017061.P3405352464685323171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017061.P3405352464685323171

`(7*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017061

/-- `(7*n+6)^9` -/
def P3405352464685323171.Spec : Prop :=
  ∀ n, (P3405352464685323171.a n : ℤ) = A017061 n

theorem P3405352464685323171.correct : P3405352464685323171.Spec := by
  intro n
  simp only [A017061]

end A017061

/-! ## A017061.P2671889577524152658

`sqrt(A017058(n)^3)`
-/

namespace A017061.P2671889577524152658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017058 n ^ 3 : ℝ)

end

end A017061.P2671889577524152658

namespace A017061

/-- `sqrt(A017058(n)^3)` -/
def P2671889577524152658.Spec : Prop :=
  ∀ n, P2671889577524152658.a n = (A017061 n : ℝ)

end A017061

/-! ## A017061.P10029227803491599441

`A017053(n)*A017060(n)`
-/

namespace A017061.P10029227803491599441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017060 n

end

end A017061.P10029227803491599441

namespace A017061

/-- `A017053(n)*A017060(n)` -/
def P10029227803491599441.Spec : Prop :=
  ∀ n, P10029227803491599441.a n = A017061 n

theorem P10029227803491599441.correct : P10029227803491599441.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P10029227803491599441.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017060, A017060.P14870891231322719586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P6922347765782793922

`A017054(n)*A017059(n)`
-/

namespace A017061.P6922347765782793922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017059 n

end

end A017061.P6922347765782793922

namespace A017061

/-- `A017054(n)*A017059(n)` -/
def P6922347765782793922.Spec : Prop :=
  ∀ n, P6922347765782793922.a n = A017061 n

theorem P6922347765782793922.correct : P6922347765782793922.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P6922347765782793922.a, A017061.P3405352464685323171.a, A017054, A017054.P13303956205180699826.a, A017059, A017059.P13572036140504396838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P10766952910200852353

`A017055(n)*A017058(n)`
-/

namespace A017061.P10766952910200852353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n * A017058 n

end

end A017061.P10766952910200852353

namespace A017061

/-- `A017055(n)*A017058(n)` -/
def P10766952910200852353.Spec : Prop :=
  ∀ n, P10766952910200852353.a n = A017061 n

theorem P10766952910200852353.correct : P10766952910200852353.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P10766952910200852353.a, A017061.P3405352464685323171.a, A017055, A017055.P17802920683657544810.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P14885786826783210697

`A017056(n)*A017057(n)`
-/

namespace A017061.P14885786826783210697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017056 n * A017057 n

end

end A017061.P14885786826783210697

namespace A017061

/-- `A017056(n)*A017057(n)` -/
def P14885786826783210697.Spec : Prop :=
  ∀ n, P14885786826783210697.a n = A017061 n

theorem P14885786826783210697.correct : P14885786826783210697.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P14885786826783210697.a, A017061.P3405352464685323171.a, A017056, A017056.P5064168967088083575.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P8649444194919024014

`A017053(n)²*A017059(n)`
-/

namespace A017061.P8649444194919024014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n ^ 2 * A017059 n

end

end A017061.P8649444194919024014

namespace A017061

/-- `A017053(n)²*A017059(n)` -/
def P8649444194919024014.Spec : Prop :=
  ∀ n, P8649444194919024014.a n = A017061 n

theorem P8649444194919024014.correct : P8649444194919024014.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P8649444194919024014.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017059, A017059.P13572036140504396838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P1587902612620452627

`A017054(n)²*A017057(n)`
-/

namespace A017061.P1587902612620452627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n ^ 2 * A017057 n

end

end A017061.P1587902612620452627

namespace A017061

/-- `A017054(n)²*A017057(n)` -/
def P1587902612620452627.Spec : Prop :=
  ∀ n, P1587902612620452627.a n = A017061 n

theorem P1587902612620452627.correct : P1587902612620452627.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P1587902612620452627.a, A017061.P3405352464685323171.a, A017054, A017054.P13303956205180699826.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P16165576132136804085

`A017056(n)²*A017053(n)`
-/

namespace A017061.P16165576132136804085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017056 n ^ 2 * A017053 n

end

end A017061.P16165576132136804085

namespace A017061

/-- `A017056(n)²*A017053(n)` -/
def P16165576132136804085.Spec : Prop :=
  ∀ n, P16165576132136804085.a n = A017061 n

theorem P16165576132136804085.correct : P16165576132136804085.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P16165576132136804085.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P9749662854403560508

`A017057(n)²/A017053(n)`
-/

namespace A017061.P9749662854403560508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017057 n ^ 2 : ℚ) / (A017053 n : ℚ)

end

end A017061.P9749662854403560508

namespace A017061

/-- `A017057(n)²/A017053(n)` -/
def P9749662854403560508.Spec : Prop :=
  ∀ n, P9749662854403560508.a n = (A017061 n : ℚ)

end A017061

/-! ## A017061.P11586128322642778344

`(A017041(n)+1)*A017060(n)`
-/

namespace A017061.P11586128322642778344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017041 n + 1) * A017060 n

end

end A017061.P11586128322642778344

namespace A017061

/-- `(A017041(n)+1)*A017060(n)` -/
def P11586128322642778344.Spec : Prop :=
  ∀ n, P11586128322642778344.a n = A017061 n

theorem P11586128322642778344.correct : P11586128322642778344.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P11586128322642778344.a, A017061.P3405352464685323171.a, A017041, A017041.P2403978402019689245.a, A017060, A017060.P14870891231322719586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P7276947551040844693

`A017054(n)²²*A017053(n)`
-/

namespace A017061.P7276947551040844693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017054 n ^ 2) ^ 2 * A017053 n

end

end A017061.P7276947551040844693

namespace A017061

/-- `A017054(n)²²*A017053(n)` -/
def P7276947551040844693.Spec : Prop :=
  ∀ n, P7276947551040844693.a n = A017061 n

theorem P7276947551040844693.correct : P7276947551040844693.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P7276947551040844693.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P11676657327184798614

`A017053(n)*A017054(n)*A017058(n)`
-/

namespace A017061.P11676657327184798614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017054 n * A017058 n

end

end A017061.P11676657327184798614

namespace A017061

/-- `A017053(n)*A017054(n)*A017058(n)` -/
def P11676657327184798614.Spec : Prop :=
  ∀ n, P11676657327184798614.a n = A017061 n

theorem P11676657327184798614.correct : P11676657327184798614.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P11676657327184798614.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P10105230438671125822

`A017053(n)*A017055(n)*A017057(n)`
-/

namespace A017061.P10105230438671125822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n * A017055 n * A017057 n

end

end A017061.P10105230438671125822

namespace A017061

/-- `A017053(n)*A017055(n)*A017057(n)` -/
def P10105230438671125822.Spec : Prop :=
  ∀ n, P10105230438671125822.a n = A017061 n

theorem P10105230438671125822.correct : P10105230438671125822.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P10105230438671125822.a, A017061.P3405352464685323171.a, A017053, A017053.P7458143650627556555.a, A017055, A017055.P17802920683657544810.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P15737427604155435535

`A017054(n)*A017055(n)*A017056(n)`
-/

namespace A017061.P15737427604155435535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n * A017055 n * A017056 n

end

end A017061.P15737427604155435535

namespace A017061

/-- `A017054(n)*A017055(n)*A017056(n)` -/
def P15737427604155435535.Spec : Prop :=
  ∀ n, P15737427604155435535.a n = A017061 n

theorem P15737427604155435535.correct : P15737427604155435535.Spec := by
  intro n
  simp only [A017061, Nat.add_sub_cancel, A017061.P15737427604155435535.a, A017061.P3405352464685323171.a, A017054, A017054.P13303956205180699826.a, A017055, A017055.P17802920683657544810.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017061

/-! ## A017061.P10802801035858015097

`A017056(n)*A017058(n)/A017053(n)`
-/

namespace A017061.P10802801035858015097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017056 n * A017058 n : ℚ) / (A017053 n : ℚ)

end

end A017061.P10802801035858015097

namespace A017061

/-- `A017056(n)*A017058(n)/A017053(n)` -/
def P10802801035858015097.Spec : Prop :=
  ∀ n, P10802801035858015097.a n = (A017061 n : ℚ)

end A017061

/-! ## A017061.P6585340067312104278

`A017059(n)/A017057(n)*A017059(n)`
-/

namespace A017061.P6585340067312104278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017059 n : ℚ) / (A017057 n : ℚ) * (A017059 n : ℚ)

end

end A017061.P6585340067312104278

namespace A017061

/-- `A017059(n)/A017057(n)*A017059(n)` -/
def P6585340067312104278.Spec : Prop :=
  ∀ n, P6585340067312104278.a n = (A017061 n : ℚ)

end A017061

/-! ## A017061.P16270034367330077635

`A017055(n)/(A017053(n)/A017056(n))²`
-/

namespace A017061.P16270034367330077635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017055 n : ℚ) / ((A017053 n : ℚ) / (A017056 n : ℚ)) ^ 2

end

end A017061.P16270034367330077635

namespace A017061

/-- `A017055(n)/(A017053(n)/A017056(n))²` -/
def P16270034367330077635.Spec : Prop :=
  ∀ n, P16270034367330077635.a n = (A017061 n : ℚ)

end A017061

/-! ## A017061.P14348518342118092695

`A001017(7*n+6)`
-/

namespace A017061.P14348518342118092695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (7 * n + 6)

end

end A017061.P14348518342118092695

namespace A017061

/-- `A001017(7*n+6)` -/
def P14348518342118092695.Spec : Prop :=
  ∀ n, P14348518342118092695.a n = A017061 n

end A017061

/-!
# A017062: a(n) = (7*n + 6)^10.

The programs for A017062, the canonical program `A017062.P18240418540219285408` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017062 has offset 0).

The definition of A017062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n+6)^10` (program `A017062.P18240418540219285408`, by `A017062.P18240418540219285408.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017062.P18240418540219285408

`(7*n+6)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017062

/-- `(7*n+6)^10` -/
def P18240418540219285408.Spec : Prop :=
  ∀ n, (P18240418540219285408.a n : ℤ) = A017062 n

theorem P18240418540219285408.correct : P18240418540219285408.Spec := by
  intro n
  simp only [A017062]

end A017062

/-! ## A017062.P3470886581310277328

`A017057(n)²`
-/

namespace A017062.P3470886581310277328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017057 n ^ 2

end

end A017062.P3470886581310277328

namespace A017062

/-- `A017057(n)²` -/
def P3470886581310277328.Spec : Prop :=
  ∀ n, P3470886581310277328.a n = A017062 n

theorem P3470886581310277328.correct : P3470886581310277328.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P3470886581310277328.a, A017062.P18240418540219285408.a, A017057, A017057.P14449086448532405384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P6268453840168269280

`(A017053(n)^5)²`
-/

namespace A017062.P6268453840168269280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n ^ 5) ^ 2

end

end A017062.P6268453840168269280

namespace A017062

/-- `(A017053(n)^5)²` -/
def P6268453840168269280.Spec : Prop :=
  ∀ n, P6268453840168269280.a n = A017062 n

theorem P6268453840168269280.correct : P6268453840168269280.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P6268453840168269280.a, A017062.P18240418540219285408.a, A017053, A017053.P7458143650627556555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P1111707251484584645

`sqrt(A017056(n)^5)`
-/

namespace A017062.P1111707251484584645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017056 n ^ 5 : ℝ)

end

end A017062.P1111707251484584645

namespace A017062

/-- `sqrt(A017056(n)^5)` -/
def P1111707251484584645.Spec : Prop :=
  ∀ n, P1111707251484584645.a n = (A017062 n : ℝ)

end A017062

/-! ## A017062.P9838479805675745364

`A017055(n)*A017059(n)`
-/

namespace A017062.P9838479805675745364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n * A017059 n

end

end A017062.P9838479805675745364

namespace A017062

/-- `A017055(n)*A017059(n)` -/
def P9838479805675745364.Spec : Prop :=
  ∀ n, P9838479805675745364.a n = A017062 n

theorem P9838479805675745364.correct : P9838479805675745364.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P9838479805675745364.a, A017062.P18240418540219285408.a, A017055, A017055.P17802920683657544810.a, A017059, A017059.P13572036140504396838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P996030190845037939

`A017056(n)*A017058(n)`
-/

namespace A017062.P996030190845037939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017056 n * A017058 n

end

end A017062.P996030190845037939

namespace A017062

/-- `A017056(n)*A017058(n)` -/
def P996030190845037939.Spec : Prop :=
  ∀ n, P996030190845037939.a n = A017062 n

theorem P996030190845037939.correct : P996030190845037939.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P996030190845037939.a, A017062.P18240418540219285408.a, A017056, A017056.P5064168967088083575.a, A017058, A017058.P9070005173827928936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P11232807912908513010

`(A017053(n)*A017056(n))²`
-/

namespace A017062.P11232807912908513010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n * A017056 n) ^ 2

end

end A017062.P11232807912908513010

namespace A017062

/-- `(A017053(n)*A017056(n))²` -/
def P11232807912908513010.Spec : Prop :=
  ∀ n, P11232807912908513010.a n = A017062 n

theorem P11232807912908513010.correct : P11232807912908513010.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P11232807912908513010.a, A017062.P18240418540219285408.a, A017053, A017053.P7458143650627556555.a, A017056, A017056.P5064168967088083575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P16661273521852479107

`(A017058(n)/A017053(n))²`
-/

namespace A017062.P16661273521852479107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017058 n : ℚ) / (A017053 n : ℚ)) ^ 2

end

end A017062.P16661273521852479107

namespace A017062

/-- `(A017058(n)/A017053(n))²` -/
def P16661273521852479107.Spec : Prop :=
  ∀ n, P16661273521852479107.a n = (A017062 n : ℚ)

end A017062

/-! ## A017062.P585115282361112657

`(A017053(n)²*A017055(n))²`
-/

namespace A017062.P585115282361112657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n ^ 2 * A017055 n) ^ 2

end

end A017062.P585115282361112657

namespace A017062

/-- `(A017053(n)²*A017055(n))²` -/
def P585115282361112657.Spec : Prop :=
  ∀ n, P585115282361112657.a n = A017062 n

theorem P585115282361112657.correct : P585115282361112657.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P585115282361112657.a, A017062.P18240418540219285408.a, A017053, A017053.P7458143650627556555.a, A017055, A017055.P17802920683657544810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P10900678881586463881

`(A017054(n)²*A017053(n))²`
-/

namespace A017062.P10900678881586463881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017054 n ^ 2 * A017053 n) ^ 2

end

end A017062.P10900678881586463881

namespace A017062

/-- `(A017054(n)²*A017053(n))²` -/
def P10900678881586463881.Spec : Prop :=
  ∀ n, P10900678881586463881.a n = A017062 n

theorem P10900678881586463881.correct : P10900678881586463881.Spec := by
  intro n
  simp only [A017062, Nat.add_sub_cancel, A017062.P10900678881586463881.a, A017062.P18240418540219285408.a, A017053, A017053.P7458143650627556555.a, A017054, A017054.P13303956205180699826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017062

/-! ## A017062.P8511307033884424886

`sqrt(sqrt(A017060(n)))*A017060(n)`
-/

namespace A017062.P8511307033884424886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017060 n : ℝ)) * (A017060 n : ℝ)

end

end A017062.P8511307033884424886

namespace A017062

/-- `sqrt(sqrt(A017060(n)))*A017060(n)` -/
def P8511307033884424886.Spec : Prop :=
  ∀ n, P8511307033884424886.a n = (A017062 n : ℝ)

end A017062

/-! ## A017062.P3685873492725025729

`A008454(A017053(n))`
-/

namespace A017062.P3685873492725025729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017053 n).toNat

end

end A017062.P3685873492725025729

namespace A017062

/-- `A008454(A017053(n))` -/
def P3685873492725025729.Spec : Prop :=
  ∀ n, P3685873492725025729.a n = A017062 n

end A017062

/-! ## A017062.P10776887225966827443

`A008454(A008588(n+1)+n)`
-/

namespace A017062.P10776887225966827443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008588 (n + 1) + (n : ℤ)).toNat

end

end A017062.P10776887225966827443

namespace A017062

/-- `A008454(A008588(n+1)+n)` -/
def P10776887225966827443.Spec : Prop :=
  ∀ n, P10776887225966827443.a n = A017062 n

end A017062

/-! ## A017062.P13191978432006818703

`A008454(A016969(n)+1+n)`
-/

namespace A017062.P13191978432006818703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016969 n + 1 + (n : ℤ)).toNat

end

end A017062.P13191978432006818703

namespace A017062

/-- `A008454(A016969(n)+1+n)` -/
def P13191978432006818703.Spec : Prop :=
  ∀ n, P13191978432006818703.a n = A017062 n

end A017062

/-! ## A017062.P16886518966901103871

`A008454(A016861(n+1)+2*n)`
-/

namespace A017062.P16886518966901103871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 (n + 1) + (2 * n : ℤ)).toNat

end

end A017062.P16886518966901103871

namespace A017062

/-- `A008454(A016861(n+1)+2*n)` -/
def P16886518966901103871.Spec : Prop :=
  ∀ n, P16886518966901103871.a n = A017062 n

end A017062

/-! ## A017062.P1086486907018195126

`A008454(A008587(n+1)+2*n+1)`
-/

namespace A017062.P1086486907018195126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A017062.P1086486907018195126

namespace A017062

/-- `A008454(A008587(n+1)+2*n+1)` -/
def P1086486907018195126.Spec : Prop :=
  ∀ n, P1086486907018195126.a n = A017062 n

end A017062

/-! ## A017062.P10329063534570310967

`A008454(A016777(2*n+1)+n+2)`
-/

namespace A017062.P10329063534570310967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016777 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017062.P10329063534570310967

namespace A017062

/-- `A008454(A016777(2*n+1)+n+2)` -/
def P10329063534570310967.Spec : Prop :=
  ∀ n, P10329063534570310967.a n = A017062 n

end A017062

/-!
# A017063: 

The programs for A017063, there is no canonical definition to state claims against.
-/

/-! ## A017063.P290385734563068589

`(7*n+6)^11`
-/

namespace A017063.P290385734563068589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 6) ^ 11

end

end A017063.P290385734563068589

/-! ## A017063.P18419786268296188629

`A017057(n)²*A017053(n)`
-/

namespace A017063.P18419786268296188629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017057 n ^ 2 * A017053 n

end

end A017063.P18419786268296188629

/-! ## A017063.P6528784611388351924

`A017058(n)²/A017053(n)`
-/

namespace A017063.P6528784611388351924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017058 n ^ 2 : ℚ) / (A017053 n : ℚ)

end

end A017063.P6528784611388351924

/-! ## A017063.P2932189408142874140

`A017055(n)²²/A017053(n)`
-/

namespace A017063.P2932189408142874140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017055 n ^ 2) ^ 2 : ℚ) / (A017053 n : ℚ)

end

end A017063.P2932189408142874140

/-! ## A017063.P5788032609297853550

`(A017053(n)*A017056(n))²*A017053(n)`
-/

namespace A017063.P5788032609297853550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n * A017056 n) ^ 2 * A017053 n

end

end A017063.P5788032609297853550

/-! ## A017063.P7930649037079089637

`A008455(A016993(n)+5)`
-/

namespace A017063.P7930649037079089637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + 5).toNat

end

end A017063.P7930649037079089637

/-! ## A017063.P12202643528742061820

`A008455(A008588(n+1)+n)`
-/

namespace A017063.P12202643528742061820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (n + 1) + (n : ℤ)).toNat

end

end A017063.P12202643528742061820

/-! ## A017063.P12675651092288318059

`A008455(A016969(n)+1+n)`
-/

namespace A017063.P12675651092288318059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 n + 1 + (n : ℤ)).toNat

end

end A017063.P12675651092288318059

/-!
# A017064: 

The programs for A017064, there is no canonical definition to state claims against.
-/

/-! ## A017064.P15949228150837759160

`(7*n+6)^12`
-/

namespace A017064.P15949228150837759160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 6) ^ 12

end

end A017064.P15949228150837759160

/-! ## A017064.P868424445901725178

`A017058(n)²`
-/

namespace A017064.P868424445901725178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017058 n ^ 2

end

end A017064.P868424445901725178

/-! ## A017064.P16330264478154061871

`(A017053(n)*A017057(n))²`
-/

namespace A017064.P16330264478154061871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017053 n * A017057 n) ^ 2

end

end A017064.P16330264478154061871

/-! ## A017064.P8113223480135692173

`sqrt(A017060(n))*A017060(n)`
-/

namespace A017064.P8113223480135692173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017060 n : ℝ) * (A017060 n : ℝ)

end

end A017064.P8113223480135692173

/-! ## A017064.P18272124425153624930

`(A017053(n)*A017054(n))²²`
-/

namespace A017064.P18272124425153624930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017053 n * A017054 n) ^ 2) ^ 2

end

end A017064.P18272124425153624930

/-! ## A017064.P8159536861912598503

`(A017056(n)/A017053(n))²²`
-/

namespace A017064.P8159536861912598503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017056 n : ℚ) / (A017053 n : ℚ)) ^ 2) ^ 2

end

end A017064.P8159536861912598503

/-! ## A017064.P5728692600204492733

`sqrt(A017060(n)^3)`
-/

namespace A017064.P5728692600204492733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017060 n ^ 3 : ℝ)

end

end A017064.P5728692600204492733

/-! ## A017064.P7738974747671445618

`A008456(A008588(n+1)+n)`
-/

namespace A017064.P7738974747671445618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008588 (n + 1) + (n : ℤ)).toNat

end

end A017064.P7738974747671445618

/-! ## A017064.P5000615098594305368

`A008456(A016969(n)+1+n)`
-/

namespace A017064.P5000615098594305368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016969 n + 1 + (n : ℤ)).toNat

end

end A017064.P5000615098594305368

/-! ## A017064.P1597603967227975240

`A008456(2*A004767(n)-n)`
-/

namespace A017064.P1597603967227975240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (2 * A004767 n - (n : ℤ)).toNat

end

end A017064.P1597603967227975240

/-! ## A017064.P15398821280357533161

`A000578(A017137(n)-n)²²`
-/

namespace A017064.P15398821280357533161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017137 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017064.P15398821280357533161

/-! ## A017064.P6780806278005609325

`A008456(A016777(2*n+1)+n+2)`
-/

namespace A017064.P6780806278005609325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A016777 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A017064.P6780806278005609325

/-! ## A017064.P4029790711449693280

`A008456(A004767(n)+A004767(n)-n)`
-/

namespace A017064.P4029790711449693280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n + (A004767 n - (n : ℤ))).toNat

end

end A017064.P4029790711449693280

/-! ## A017064.P17627580459054887545

`A008456(A004767(n)-(n-A004767(n)))`
-/

namespace A017064.P17627580459054887545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 n - ((n : ℤ) - A004767 n)).toNat

end

end A017064.P17627580459054887545

/-!
# A017065: Expansion of 1/((1-3x)(1-4x)(1-11x)).

The programs for A017065, the canonical program `A017065.P11537157185437942368` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017065 has offset 0).

The definition of A017065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017065.P11537157185437942368

`15*a(n-1)-44*a(n-2)+3^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017065

/-- `15*a(n-1)-44*a(n-2)+3^n` -/
def P11537157185437942368.Spec : Prop :=
  ∀ n, P11537157185437942368.a n = A017065 n

theorem P11537157185437942368.correct : P11537157185437942368.Spec := by
  intro n
  simp only [A017065]

end A017065

/-! ## A017065.P6303026637169753034

`9*3^n/8-16*4^n/7+121*11^n/56`
-/

namespace A017065.P6303026637169753034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 3 ^ n : ℚ) / 8 - (16 * 4 ^ n : ℚ) / 7 + (121 * 11 ^ n : ℚ) / 56

end

end A017065.P6303026637169753034

namespace A017065

/-- `9*3^n/8-16*4^n/7+121*11^n/56` -/
def P6303026637169753034.Spec : Prop :=
  ∀ n, P6303026637169753034.a n = (A017065 n : ℚ)

theorem P6303026637169753034.correct : P6303026637169753034.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A017065, Nat.add_sub_cancel, A017065.P6303026637169753034.a, A017065.P11537157185437942368.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A017065, Nat.add_sub_cancel, A017065.P6303026637169753034.a, A017065.P11537157185437942368.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017065

/-! ## A017065.P17926529751926075061

`Δ[A016226(n)-A016216(n)]`
-/

namespace A017065.P17926529751926075061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n - A016216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017065.P17926529751926075061

namespace A017065

/-- `Δ[A016226(n)-A016216(n)]` -/
def P17926529751926075061.Spec : Prop :=
  ∀ n, P17926529751926075061.a n = A017065 n

end A017065

/-! ## A017065.P16717782904680872075

`Δ[A016226(n)-∑[A016146(n)]]`
-/

namespace A017065.P16717782904680872075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016146 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017065.P16717782904680872075

namespace A017065

/-- `Δ[A016226(n)-∑[A016146(n)]]` -/
def P16717782904680872075.Spec : Prop :=
  ∀ n, P16717782904680872075.a n = A017065 n

end A017065

/-!
# A017066: a(n) = (8*n)^2.

The programs for A017066, the canonical program `A017066.P14577607273091826583` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017066 has offset 0).

The definition of A017066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)²` (program `A017066.P14577607273091826583`, by `A017066.P14577607273091826583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017066.P14577607273091826583

`(8*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017066

/-- `(8*n)²` -/
def P14577607273091826583.Spec : Prop :=
  ∀ n, (P14577607273091826583.a n : ℤ) = A017066 n

theorem P14577607273091826583.correct : P14577607273091826583.Spec := by
  intro n
  simp only [A017066]

end A017066

/-!
# A017067: a(n) = (8*n)^3.

The programs for A017067, the canonical program `A017067.P8952460558051999029` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017067 has offset 0).

The definition of A017067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^3` (program `A017067.P8952460558051999029`, by `A017067.P8952460558051999029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017067.P8952460558051999029

`(8*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017067

/-- `(8*n)^3` -/
def P8952460558051999029.Spec : Prop :=
  ∀ n, (P8952460558051999029.a n : ℤ) = A017067 n

theorem P8952460558051999029.correct : P8952460558051999029.Spec := by
  intro n
  simp only [A017067]

end A017067

/-!
# A017068: a(n) = (8*n)^4.

The programs for A017068, the canonical program `A017068.P16029332110397105323` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017068 has offset 0).

The definition of A017068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^4` (program `A017068.P16029332110397105323`, by `A017068.P16029332110397105323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017068.P16029332110397105323

`(8*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017068

/-- `(8*n)^4` -/
def P16029332110397105323.Spec : Prop :=
  ∀ n, (P16029332110397105323.a n : ℤ) = A017068 n

theorem P16029332110397105323.correct : P16029332110397105323.Spec := by
  intro n
  simp only [A017068]

end A017068

/-!
# A017069: a(n) = (8*n)^5.

The programs for A017069, the canonical program `A017069.P2798491560671481186` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017069 has offset 0).

The definition of A017069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^5` (program `A017069.P2798491560671481186`, by `A017069.P2798491560671481186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017069.P2798491560671481186

`(8*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017069

/-- `(8*n)^5` -/
def P2798491560671481186.Spec : Prop :=
  ∀ n, (P2798491560671481186.a n : ℤ) = A017069 n

theorem P2798491560671481186.correct : P2798491560671481186.Spec := by
  intro n
  simp only [A017069]

end A017069

/-!
# A017070: a(n) = (8*n)^6.

The programs for A017070, the canonical program `A017070.P12691752571172976625` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017070 has offset 0).

The definition of A017070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^6` (program `A017070.P12691752571172976625`, by `A017070.P12691752571172976625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017070.P12691752571172976625

`(8*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017070

/-- `(8*n)^6` -/
def P12691752571172976625.Spec : Prop :=
  ∀ n, (P12691752571172976625.a n : ℤ) = A017070 n

theorem P12691752571172976625.correct : P12691752571172976625.Spec := by
  intro n
  simp only [A017070]

end A017070

/-!
# A017071: a(n) = (8*n)^7.

The programs for A017071, the canonical program `A017071.P10592429551431083829` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017071 has offset 0).

The definition of A017071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^7` (program `A017071.P10592429551431083829`, by `A017071.P10592429551431083829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017071.P10592429551431083829

`(8*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017071

/-- `(8*n)^7` -/
def P10592429551431083829.Spec : Prop :=
  ∀ n, (P10592429551431083829.a n : ℤ) = A017071 n

theorem P10592429551431083829.correct : P10592429551431083829.Spec := by
  intro n
  simp only [A017071]

end A017071

/-!
# A017072: a(n) = (8*n)^8.

The programs for A017072, the canonical program `A017072.P14080451245527371194` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017072 has offset 0).

The definition of A017072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^8` (program `A017072.P14080451245527371194`, by `A017072.P14080451245527371194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017072.P14080451245527371194

`(8*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017072

/-- `(8*n)^8` -/
def P14080451245527371194.Spec : Prop :=
  ∀ n, (P14080451245527371194.a n : ℤ) = A017072 n

theorem P14080451245527371194.correct : P14080451245527371194.Spec := by
  intro n
  simp only [A017072]

end A017072

/-!
# A017073: a(n) = (8*n)^9.

The programs for A017073, the canonical program `A017073.P1657828997477331547` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017073 has offset 0).

The definition of A017073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^9` (program `A017073.P1657828997477331547`, by `A017073.P1657828997477331547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017073.P1657828997477331547

`(8*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017073

/-- `(8*n)^9` -/
def P1657828997477331547.Spec : Prop :=
  ∀ n, (P1657828997477331547.a n : ℤ) = A017073 n

theorem P1657828997477331547.correct : P1657828997477331547.Spec := by
  intro n
  simp only [A017073]

end A017073

/-!
# A017074: a(n) = (8*n)^10.

The programs for A017074, the canonical program `A017074.P9225692762195179856` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017074 has offset 0).

The definition of A017074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n)^10` (program `A017074.P9225692762195179856`, by `A017074.P9225692762195179856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017074.P9225692762195179856

`(8*n)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017074

/-- `(8*n)^10` -/
def P9225692762195179856.Spec : Prop :=
  ∀ n, (P9225692762195179856.a n : ℤ) = A017074 n

theorem P9225692762195179856.correct : P9225692762195179856.Spec := by
  intro n
  simp only [A017074]

end A017074

/-!
# A017075: 

The programs for A017075, there is no canonical definition to state claims against.
-/

/-! ## A017075.P8178296327380517015

`(8*n)^11`
-/

namespace A017075.P8178296327380517015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 11

end

end A017075.P8178296327380517015

/-!
# A017076: 

The programs for A017076, there is no canonical definition to state claims against.
-/

/-! ## A017076.P6098730240064294344

`(8*n)^12`
-/

namespace A017076.P6098730240064294344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 12

end

end A017076.P6098730240064294344

/-!
# A017077: a(n) = 8*n + 1.

The programs for A017077, the canonical program `A017077.P465032159772507632` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017077 has offset 0).

The definition of A017077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+1` (program `A017077.P465032159772507632`, by `A017077.P465032159772507632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017077.P465032159772507632

`8*n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017077

/-- `8*n+1` -/
def P465032159772507632.Spec : Prop :=
  ∀ n, (P465032159772507632.a n : ℤ) = A017077 n

theorem P465032159772507632.correct : P465032159772507632.Spec := by
  intro n
  simp only [A017077]

end A017077

/-!
# A017078: a(n) = (8*n + 1)^2.

The programs for A017078, the canonical program `A017078.P592742087923068107` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017078 has offset 0).

The definition of A017078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)²` (program `A017078.P592742087923068107`, by `A017078.P592742087923068107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017078.P592742087923068107

`(8*n+1)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017078

/-- `(8*n+1)²` -/
def P592742087923068107.Spec : Prop :=
  ∀ n, (P592742087923068107.a n : ℤ) = A017078 n

theorem P592742087923068107.correct : P592742087923068107.Spec := by
  intro n
  simp only [A017078]

end A017078

/-! ## A017078.P11246811947769920656

`xor(1, 8*n)^2`
-/

namespace A017078.P11246811947769920656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * n) ^ 2

end

end A017078.P11246811947769920656

namespace A017078

/-- `xor(1, 8*n)^2` -/
def P11246811947769920656.Spec : Prop :=
  ∀ n, (P11246811947769920656.a n : ℤ) = A017078 n

end A017078

/-! ## A017078.P8995828058560494075

`or(1, or(1, 8*n)²)`
-/

namespace A017078.P8995828058560494075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (8 * n) ^ 2)

end

end A017078.P8995828058560494075

namespace A017078

/-- `or(1, or(1, 8*n)²)` -/
def P8995828058560494075.Spec : Prop :=
  ∀ n, (P8995828058560494075.a n : ℤ) = A017078 n

end A017078

/-! ## A017078.P11264354969824009350

`record[(3-lcm(4, n+1))²]`
-/

namespace A017078.P11264354969824009350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.lcm 4 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P11264354969824009350

namespace A017078

/-- `record[(3-lcm(4, n+1))²]` -/
def P11264354969824009350.Spec : Prop :=
  ∀ n, P11264354969824009350.a n = A017078 n

end A017078

/-! ## A017078.P6953945724197317876

`record[(gcd(8, 1-n)+n)²]`
-/

namespace A017078.P6953945724197317876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (1 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P6953945724197317876

namespace A017078

/-- `record[(gcd(8, 1-n)+n)²]` -/
def P6953945724197317876.Spec : Prop :=
  ∀ n, (P6953945724197317876.a n : ℤ) = A017078 n

end A017078

/-! ## A017078.P2083890123787206882

`record[gcd(n+1, n%8)²]`
-/

namespace A017078.P2083890123787206882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 8) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P2083890123787206882

namespace A017078

/-- `record[gcd(n+1, n%8)²]` -/
def P2083890123787206882.Spec : Prop :=
  ∀ n, (P2083890123787206882.a n : ℤ) = A017078 n

end A017078

/-! ## A017078.P8497615507939839015

`record[(3-2*n)^and(3, n)]`
-/

namespace A017078.P8497615507939839015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (2 * n : ℤ)) ^ Nat.land 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P8497615507939839015

namespace A017078

/-- `record[(3-2*n)^and(3, n)]` -/
def P8497615507939839015.Spec : Prop :=
  ∀ n, P8497615507939839015.a n = A017078 n

end A017078

/-! ## A017078.P18314549396896821471

`record[(2*n+1)^(gcd(4, n)-2)]`
-/

namespace A017078.P18314549396896821471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ ((Nat.gcd 4 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P18314549396896821471

namespace A017078

/-- `record[(2*n+1)^(gcd(4, n)-2)]` -/
def P18314549396896821471.Spec : Prop :=
  ∀ n, P18314549396896821471.a n = (A017078 n : ℚ)

end A017078

/-! ## A017078.P12807051679247698453

`4*∑[a(n-1)+32]-3` with `a(0)=1, a(1)=20`
-/

namespace A017078.P12807051679247698453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 3

end

end A017078.P12807051679247698453

namespace A017078

/-- `4*∑[a(n-1)+32]-3` -/
def P12807051679247698453.Spec : Prop :=
  ∀ n, P12807051679247698453.a n = A017078 n

end A017078

/-! ## A017078.P14188391184620874974

`record[(-(2*n+1))^((n+2)%4)]`
-/

namespace A017078.P14188391184620874974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(2 * n + 1 : ℤ)) ^ ((n + 2) % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017078.P14188391184620874974

namespace A017078

/-- `record[(-(2*n+1))^((n+2)%4)]` -/
def P14188391184620874974.Spec : Prop :=
  ∀ n, P14188391184620874974.a n = A017078 n

end A017078

/-! ## A017078.P1859762303269641917

`8*C(2*n+2*n+1, 2)+1`
-/

namespace A017078.P1859762303269641917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (2 * n + (2 * n + 1)) 2 + 1

end

end A017078.P1859762303269641917

namespace A017078

/-- `8*C(2*n+2*n+1, 2)+1` -/
def P1859762303269641917.Spec : Prop :=
  ∀ n, (P1859762303269641917.a n : ℤ) = A017078 n

theorem P1859762303269641917.correct : P1859762303269641917.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P1859762303269641917.a, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017078

/-! ## A017078.P15742514204451250481

`sqrt(A017080(n))`
-/

namespace A017078.P15742514204451250481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017080 n : ℝ)

end

end A017078.P15742514204451250481

namespace A017078

/-- `sqrt(A017080(n))` -/
def P15742514204451250481.Spec : Prop :=
  ∀ n, P15742514204451250481.a n = (A017078 n : ℝ)

end A017078

/-! ## A017078.P8126894329412199422

`sqrt(sqrt(A017084(n)))`
-/

namespace A017078.P8126894329412199422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017084 n : ℝ))

end

end A017078.P8126894329412199422

namespace A017078

/-- `sqrt(sqrt(A017084(n)))` -/
def P8126894329412199422.Spec : Prop :=
  ∀ n, P8126894329412199422.a n = (A017078 n : ℝ)

end A017078

/-! ## A017078.P4442087565244441158

`4*A082041(n)-3`
-/

namespace A017078.P4442087565244441158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082041 n - 3

end

end A017078.P4442087565244441158

namespace A017078

/-- `4*A082041(n)-3` -/
def P4442087565244441158.Spec : Prop :=
  ∀ n, P4442087565244441158.a n = A017078 n

theorem P4442087565244441158.correct : P4442087565244441158.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P4442087565244441158.a, A017078.P592742087923068107.a, A082041, A082041.P4769740866210431926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017078

/-! ## A017078.P2950897820642597708

`A017082(n)^(1/3)`
-/

namespace A017078.P2950897820642597708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017082 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017078.P2950897820642597708

namespace A017078

/-- `A017082(n)^(1/3)` -/
def P2950897820642597708.Spec : Prop :=
  ∀ n, P2950897820642597708.a n = (A017078 n : ℝ)

end A017078

/-! ## A017078.P679992347148126579

`A017079(n)^(2/3)`
-/

namespace A017078.P679992347148126579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017079 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017078.P679992347148126579

namespace A017078

/-- `A017079(n)^(2/3)` -/
def P679992347148126579.Spec : Prop :=
  ∀ n, P679992347148126579.a n = (A017078 n : ℝ)

end A017078

/-! ## A017078.P25286583764024673

`A158686(n)+A008598(n)`
-/

namespace A017078.P25286583764024673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 n + A008598 n

end

end A017078.P25286583764024673

namespace A017078

/-- `A158686(n)+A008598(n)` -/
def P25286583764024673.Spec : Prop :=
  ∀ n, P25286583764024673.a n = A017078 n

theorem P25286583764024673.correct : P25286583764024673.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P25286583764024673.a, A017078.P592742087923068107.a, A008598, A008598.P6226039880973179911.a, A158686, A158686.P15625956396772246712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017078

/-! ## A017078.P9602754026216811984

`A158057(n)+A017066(n)`
-/

namespace A017078.P9602754026216811984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A017066 n

end

end A017078.P9602754026216811984

namespace A017078

/-- `A158057(n)+A017066(n)` -/
def P9602754026216811984.Spec : Prop :=
  ∀ n, P9602754026216811984.a n = A017078 n

theorem P9602754026216811984.correct : P9602754026216811984.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P9602754026216811984.a, A017078.P592742087923068107.a, A017066, A017066.P14577607273091826583.a, A158057, A158057.P1501325603255949209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017078

/-! ## A017078.P7231737565674760737

`A158070(n)+A131877(n)`
-/

namespace A017078.P7231737565674760737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158070 n + A131877 n

end

end A017078.P7231737565674760737

namespace A017078

/-- `A158070(n)+A131877(n)` -/
def P7231737565674760737.Spec : Prop :=
  ∀ n, P7231737565674760737.a n = A017078 n

theorem P7231737565674760737.correct : P7231737565674760737.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P7231737565674760737.a, A017078.P592742087923068107.a, A131877, A131877.P1991480590599804805.a, A158070, A158070.P11407784734891459078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017078

/-! ## A017078.P13733592057745544856

`A017077(n)*A017077(n)`
-/

namespace A017078.P13733592057745544856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n * A017077 n

end

end A017078.P13733592057745544856

namespace A017078

/-- `A017077(n)*A017077(n)` -/
def P13733592057745544856.Spec : Prop :=
  ∀ n, P13733592057745544856.a n = A017078 n

theorem P13733592057745544856.correct : P13733592057745544856.Spec := by
  intro n
  simp only [A017078, Nat.add_sub_cancel, A017078.P13733592057745544856.a, A017078.P592742087923068107.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017078

/-!
# A017079: a(n) = (8*n + 1)^3.

The programs for A017079, the canonical program `A017079.P3921882898894217556` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017079 has offset 0).

The definition of A017079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^3` (program `A017079.P3921882898894217556`, by `A017079.P3921882898894217556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017079.P3921882898894217556

`(8*n+1)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017079

/-- `(8*n+1)^3` -/
def P3921882898894217556.Spec : Prop :=
  ∀ n, (P3921882898894217556.a n : ℤ) = A017079 n

theorem P3921882898894217556.correct : P3921882898894217556.Spec := by
  intro n
  simp only [A017079]

end A017079

/-! ## A017079.P12555930924409119808

`record[(lcm(4, n+1)-3)^3]`
-/

namespace A017079.P12555930924409119808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017079.P12555930924409119808

namespace A017079

/-- `record[(lcm(4, n+1)-3)^3]` -/
def P12555930924409119808.Spec : Prop :=
  ∀ n, P12555930924409119808.a n = A017079 n

end A017079

/-! ## A017079.P16725729662588448159

`sqrt(A017082(n))`
-/

namespace A017079.P16725729662588448159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017082 n : ℝ)

end

end A017079.P16725729662588448159

namespace A017079

/-- `sqrt(A017082(n))` -/
def P16725729662588448159.Spec : Prop :=
  ∀ n, P16725729662588448159.a n = (A017079 n : ℝ)

end A017079

/-! ## A017079.P9362499911413009103

`sqrt(A017078(n)^3)`
-/

namespace A017079.P9362499911413009103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017078 n ^ 3 : ℝ)

end

end A017079.P9362499911413009103

namespace A017079

/-- `sqrt(A017078(n)^3)` -/
def P9362499911413009103.Spec : Prop :=
  ∀ n, P9362499911413009103.a n = (A017079 n : ℝ)

end A017079

/-! ## A017079.P10577700220508326066

`A017077(n)*A017078(n)`
-/

namespace A017079.P10577700220508326066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n * A017078 n

end

end A017079.P10577700220508326066

namespace A017079

/-- `A017077(n)*A017078(n)` -/
def P10577700220508326066.Spec : Prop :=
  ∀ n, P10577700220508326066.a n = A017079 n

theorem P10577700220508326066.correct : P10577700220508326066.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P10577700220508326066.a, A017079.P3921882898894217556.a, A017077, A017077.P465032159772507632.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P8867728083642027756

`A017080(n)/A017077(n)`
-/

namespace A017079.P8867728083642027756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017080 n : ℚ) / (A017077 n : ℚ)

end

end A017079.P8867728083642027756

namespace A017079

/-- `A017080(n)/A017077(n)` -/
def P8867728083642027756.Spec : Prop :=
  ∀ n, P8867728083642027756.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P523230991105384786

`A017081(n)/A017078(n)`
-/

namespace A017079.P523230991105384786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017081 n : ℚ) / (A017078 n : ℚ)

end

end A017079.P523230991105384786

namespace A017079

/-- `A017081(n)/A017078(n)` -/
def P523230991105384786.Spec : Prop :=
  ∀ n, P523230991105384786.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P6130943673908473709

`A017080(n)²/A017081(n)`
-/

namespace A017079.P6130943673908473709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017080 n ^ 2 : ℚ) / (A017081 n : ℚ)

end

end A017079.P6130943673908473709

namespace A017079

/-- `A017080(n)²/A017081(n)` -/
def P6130943673908473709.Spec : Prop :=
  ∀ n, P6130943673908473709.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P5427737500915246479

`A017081(n)/A017077(n)²`
-/

namespace A017079.P5427737500915246479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017081 n : ℚ) / (A017077 n ^ 2 : ℚ)

end

end A017079.P5427737500915246479

namespace A017079

/-- `A017081(n)/A017077(n)²` -/
def P5427737500915246479.Spec : Prop :=
  ∀ n, P5427737500915246479.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P14315209759811539162

`A017083(n)/A017078(n)²`
-/

namespace A017079.P14315209759811539162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017083 n : ℚ) / (A017078 n ^ 2 : ℚ)

end

end A017079.P14315209759811539162

namespace A017079

/-- `A017083(n)/A017078(n)²` -/
def P14315209759811539162.Spec : Prop :=
  ∀ n, P14315209759811539162.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P2443746891121496166

`A017083(n)/A017077(n)²²`
-/

namespace A017079.P2443746891121496166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017083 n : ℚ) / ((A017077 n ^ 2) ^ 2 : ℚ)

end

end A017079.P2443746891121496166

namespace A017079

/-- `A017083(n)/A017077(n)²²` -/
def P2443746891121496166.Spec : Prop :=
  ∀ n, P2443746891121496166.a n = (A017079 n : ℚ)

end A017079

/-! ## A017079.P5850525375731898536

`Δ[A001107(n)]²*Δ[A001107(n)]`
-/

namespace A017079.P5850525375731898536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017079.P5850525375731898536

namespace A017079

/-- `Δ[A001107(n)]²*Δ[A001107(n)]` -/
def P5850525375731898536.Spec : Prop :=
  ∀ n, P5850525375731898536.a n = A017079 n

theorem P5850525375731898536.correct : P5850525375731898536.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P5850525375731898536.f1, A017079.P5850525375731898536.f2, A017079.P5850525375731898536.a, A017079.P3921882898894217556.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P13256024403251687409

`Δ[A054552(n)]²*Δ[A054552(n)]`
-/

namespace A017079.P13256024403251687409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017079.P13256024403251687409

namespace A017079

/-- `Δ[A054552(n)]²*Δ[A054552(n)]` -/
def P13256024403251687409.Spec : Prop :=
  ∀ n, P13256024403251687409.a n = A017079 n

theorem P13256024403251687409.correct : P13256024403251687409.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P13256024403251687409.f1, A017079.P13256024403251687409.f2, A017079.P13256024403251687409.a, A017079.P3921882898894217556.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P15720497580307337519

`A017091(2*n)/8`
-/

namespace A017079.P15720497580307337519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017091 (2 * n) : ℚ) / 8

end

end A017079.P15720497580307337519

namespace A017079

/-- `A017091(2*n)/8` -/
def P15720497580307337519.Spec : Prop :=
  ∀ n, P15720497580307337519.a n = (A017079 n : ℚ)

theorem P15720497580307337519.correct : P15720497580307337519.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P15720497580307337519.a, A017079.P3921882898894217556.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P5187109898318679725

`(8*n+1)*A016814(2*n)`
-/

namespace A017079.P5187109898318679725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A016814 (2 * n)

end

end A017079.P5187109898318679725

namespace A017079

/-- `(8*n+1)*A016814(2*n)` -/
def P5187109898318679725.Spec : Prop :=
  ∀ n, P5187109898318679725.a n = A017079 n

theorem P5187109898318679725.correct : P5187109898318679725.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P5187109898318679725.a, A017079.P3921882898894217556.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P13175121279117859072

`A016815(2*n)`
-/

namespace A017079.P13175121279117859072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n)

end

end A017079.P13175121279117859072

namespace A017079

/-- `A016815(2*n)` -/
def P13175121279117859072.Spec : Prop :=
  ∀ n, P13175121279117859072.a n = A017079 n

theorem P13175121279117859072.correct : P13175121279117859072.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P13175121279117859072.a, A017079.P3921882898894217556.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P9720326287852338056

`sqrt(A016818(2*n))`
-/

namespace A017079.P9720326287852338056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016818 (2 * n) : ℝ)

end

end A017079.P9720326287852338056

namespace A017079

/-- `sqrt(A016818(2*n))` -/
def P9720326287852338056.Spec : Prop :=
  ∀ n, P9720326287852338056.a n = (A017079 n : ℝ)

end A017079

/-! ## A017079.P1194239134925522354

`A016816(2*n)/A016813(2*n)`
-/

namespace A017079.P1194239134925522354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 (2 * n) : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017079.P1194239134925522354

namespace A017079

/-- `A016816(2*n)/A016813(2*n)` -/
def P1194239134925522354.Spec : Prop :=
  ∀ n, P1194239134925522354.a n = (A017079 n : ℚ)

theorem P1194239134925522354.correct : P1194239134925522354.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P1194239134925522354.a, A017079.P3921882898894217556.a, A016813, A016813.P15626904835145642280.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-! ## A017079.P13755911327731504282

`A016817(2*n)/A016814(2*n)`
-/

namespace A017079.P13755911327731504282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016817 (2 * n) : ℚ) / (A016814 (2 * n) : ℚ)

end

end A017079.P13755911327731504282

namespace A017079

/-- `A016817(2*n)/A016814(2*n)` -/
def P13755911327731504282.Spec : Prop :=
  ∀ n, P13755911327731504282.a n = (A017079 n : ℚ)

theorem P13755911327731504282.correct : P13755911327731504282.Spec := by
  intro n
  simp only [A017079, Nat.add_sub_cancel, A017079.P13755911327731504282.a, A017079.P3921882898894217556.a, A016814, A016814.P5668709183610020667.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017079

/-!
# A017080: a(n) = (8*n + 1)^4.

The programs for A017080, the canonical program `A017080.P16231707503412404764` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017080 has offset 0).

The definition of A017080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^4` (program `A017080.P16231707503412404764`, by `A017080.P16231707503412404764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017080.P16231707503412404764

`(8*n+1)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017080

/-- `(8*n+1)^4` -/
def P16231707503412404764.Spec : Prop :=
  ∀ n, (P16231707503412404764.a n : ℤ) = A017080 n

theorem P16231707503412404764.correct : P16231707503412404764.Spec := by
  intro n
  simp only [A017080]

end A017080

/-! ## A017080.P4216722750113493665

`or(1, 8*n)²²`
-/

namespace A017080.P4216722750113493665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (8 * n) ^ 2) ^ 2

end

end A017080.P4216722750113493665

namespace A017080

/-- `or(1, 8*n)²²` -/
def P4216722750113493665.Spec : Prop :=
  ∀ n, (P4216722750113493665.a n : ℤ) = A017080 n

end A017080

/-! ## A017080.P5623565988967604565

`xor(1, 8*n)²²`
-/

namespace A017080.P5623565988967604565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (8 * n) ^ 2) ^ 2

end

end A017080.P5623565988967604565

namespace A017080

/-- `xor(1, 8*n)²²` -/
def P5623565988967604565.Spec : Prop :=
  ∀ n, (P5623565988967604565.a n : ℤ) = A017080 n

end A017080

/-! ## A017080.P1221507079243587076

`record[(3-lcm(4, n+1))^4]`
-/

namespace A017080.P1221507079243587076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.lcm 4 (n + 1) : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017080.P1221507079243587076

namespace A017080

/-- `record[(3-lcm(4, n+1))^4]` -/
def P1221507079243587076.Spec : Prop :=
  ∀ n, P1221507079243587076.a n = A017080 n

end A017080

/-! ## A017080.P14209276161026646505

`Δ[8*C(n, 2)+n]²²`
-/

namespace A017080.P14209276161026646505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017080.P14209276161026646505

namespace A017080

/-- `Δ[8*C(n, 2)+n]²²` -/
def P14209276161026646505.Spec : Prop :=
  ∀ n, P14209276161026646505.a n = A017080 n

theorem P14209276161026646505.correct : P14209276161026646505.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P14209276161026646505.f1, A017080.P14209276161026646505.a, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P12419136388673249493

`(2-(lcm(3, 3*n+1)-n))²²`
-/

namespace A017080.P12419136388673249493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - ((Nat.lcm 3 (3 * n + 1) : ℤ) - (n : ℤ))) ^ 2) ^ 2

end

end A017080.P12419136388673249493

namespace A017080

/-- `(2-(lcm(3, 3*n+1)-n))²²` -/
def P12419136388673249493.Spec : Prop :=
  ∀ n, P12419136388673249493.a n = A017080 n

end A017080

/-! ## A017080.P13062779676746131492

`Δ[abs(2*C(2*n, 2)-n)]²²`
-/

namespace A017080.P13062779676746131492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.choose (2 * n) 2 : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017080.P13062779676746131492

namespace A017080

/-- `Δ[abs(2*C(2*n, 2)-n)]²²` -/
def P13062779676746131492.Spec : Prop :=
  ∀ n, P13062779676746131492.a n = A017080 n

end A017080

/-! ## A017080.P17550653793759979139

`round(cosh(log(13*n+3*n+1)))²²`
-/

namespace A017080.P17550653793759979139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.cosh (Real.log (13 * n + (3 * n + 1) : ℝ))) ^ 2) ^ 2

end

end A017080.P17550653793759979139

namespace A017080

/-- `round(cosh(log(13*n+3*n+1)))²²` -/
def P17550653793759979139.Spec : Prop :=
  ∀ n, P17550653793759979139.a n = A017080 n

end A017080

/-! ## A017080.P13501049628052147429

`A017078(n)²`
-/

namespace A017080.P13501049628052147429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n ^ 2

end

end A017080.P13501049628052147429

namespace A017080

/-- `A017078(n)²` -/
def P13501049628052147429.Spec : Prop :=
  ∀ n, P13501049628052147429.a n = A017080 n

theorem P13501049628052147429.correct : P13501049628052147429.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P13501049628052147429.a, A017080.P16231707503412404764.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P617637300104201380

`sqrt(A017084(n))`
-/

namespace A017080.P617637300104201380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017084 n : ℝ)

end

end A017080.P617637300104201380

namespace A017080

/-- `sqrt(A017084(n))` -/
def P617637300104201380.Spec : Prop :=
  ∀ n, P617637300104201380.a n = (A017080 n : ℝ)

end A017080

/-! ## A017080.P139072196474820425

`A017077(n)²²`
-/

namespace A017080.P139072196474820425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017077 n ^ 2) ^ 2

end

end A017080.P139072196474820425

namespace A017080

/-- `A017077(n)²²` -/
def P139072196474820425.Spec : Prop :=
  ∀ n, P139072196474820425.a n = A017080 n

theorem P139072196474820425.correct : P139072196474820425.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P139072196474820425.a, A017080.P16231707503412404764.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P5509680068212440930

`(A008590(n)+1)²²`
-/

namespace A017080.P5509680068212440930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008590 n + 1) ^ 2) ^ 2

end

end A017080.P5509680068212440930

namespace A017080

/-- `(A008590(n)+1)²²` -/
def P5509680068212440930.Spec : Prop :=
  ∀ n, P5509680068212440930.a n = A017080 n

theorem P5509680068212440930.correct : P5509680068212440930.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P5509680068212440930.a, A017080.P16231707503412404764.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P14575314865991811318

`(1-A017089(n))²²`
-/

namespace A017080.P14575314865991811318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017089 n) ^ 2) ^ 2

end

end A017080.P14575314865991811318

namespace A017080

/-- `(1-A017089(n))²²` -/
def P14575314865991811318.Spec : Prop :=
  ∀ n, P14575314865991811318.a n = A017080 n

theorem P14575314865991811318.correct : P14575314865991811318.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P14575314865991811318.a, A017080.P16231707503412404764.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P1380252576584313556

`(2-A017101(n))²²`
-/

namespace A017080.P1380252576584313556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017101 n) ^ 2) ^ 2

end

end A017080.P1380252576584313556

namespace A017080

/-- `(2-A017101(n))²²` -/
def P1380252576584313556.Spec : Prop :=
  ∀ n, P1380252576584313556.a n = A017080 n

theorem P1380252576584313556.correct : P1380252576584313556.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P1380252576584313556.a, A017080.P16231707503412404764.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P1008454623636171264

`(3-A017113(n))²²`
-/

namespace A017080.P1008454623636171264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017113 n) ^ 2) ^ 2

end

end A017080.P1008454623636171264

namespace A017080

/-- `(3-A017113(n))²²` -/
def P1008454623636171264.Spec : Prop :=
  ∀ n, P1008454623636171264.a n = A017080 n

theorem P1008454623636171264.correct : P1008454623636171264.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P1008454623636171264.a, A017080.P16231707503412404764.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P7116071044322145270

`(A016993(n)+n)²²`
-/

namespace A017080.P7116071044322145270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016993 n + (n : ℤ)) ^ 2) ^ 2

end

end A017080.P7116071044322145270

namespace A017080

/-- `(A016993(n)+n)²²` -/
def P7116071044322145270.Spec : Prop :=
  ∀ n, P7116071044322145270.a n = A017080 n

theorem P7116071044322145270.correct : P7116071044322145270.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P7116071044322145270.a, A017080.P16231707503412404764.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P6225557039787003707

`(n-A017173(n))²²`
-/

namespace A017080.P6225557039787003707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017173 n) ^ 2) ^ 2

end

end A017080.P6225557039787003707

namespace A017080

/-- `(n-A017173(n))²²` -/
def P6225557039787003707.Spec : Prop :=
  ∀ n, P6225557039787003707.a n = A017080 n

theorem P6225557039787003707.correct : P6225557039787003707.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P6225557039787003707.a, A017080.P16231707503412404764.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-! ## A017080.P5015648660229869657

`(sqrt(A017066(n))+1)²²`
-/

namespace A017080.P5015648660229869657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017066 n : ℝ) + 1) ^ 2) ^ 2

end

end A017080.P5015648660229869657

namespace A017080

/-- `(sqrt(A017066(n))+1)²²` -/
def P5015648660229869657.Spec : Prop :=
  ∀ n, P5015648660229869657.a n = (A017080 n : ℝ)

end A017080

/-! ## A017080.P3600666202111606463

`(1-sqrt(A017090(n)))²²`
-/

namespace A017080.P3600666202111606463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017090 n : ℝ)) ^ 2) ^ 2

end

end A017080.P3600666202111606463

namespace A017080

/-- `(1-sqrt(A017090(n)))²²` -/
def P3600666202111606463.Spec : Prop :=
  ∀ n, P3600666202111606463.a n = (A017080 n : ℝ)

end A017080

/-! ## A017080.P11384910753970187187

`(1-Δ[A002939(n)])²²`
-/

namespace A017080.P11384910753970187187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (f1 (n + 1) - f1 n)) ^ 2) ^ 2

end

end A017080.P11384910753970187187

namespace A017080

/-- `(1-Δ[A002939(n)])²²` -/
def P11384910753970187187.Spec : Prop :=
  ∀ n, P11384910753970187187.a n = A017080 n

theorem P11384910753970187187.correct : P11384910753970187187.Spec := by
  intro n
  simp only [A017080, Nat.add_sub_cancel, A017080.P11384910753970187187.f1, A017080.P11384910753970187187.a, A017080.P16231707503412404764.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017080

/-!
# A017081: a(n) = (8*n + 1)^5.

The programs for A017081, the canonical program `A017081.P9994767328366861140` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017081 has offset 0).

The definition of A017081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^5` (program `A017081.P9994767328366861140`, by `A017081.P9994767328366861140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017081.P9994767328366861140

`(8*n+1)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017081

/-- `(8*n+1)^5` -/
def P9994767328366861140.Spec : Prop :=
  ∀ n, (P9994767328366861140.a n : ℤ) = A017081 n

theorem P9994767328366861140.correct : P9994767328366861140.Spec := by
  intro n
  simp only [A017081]

end A017081

/-! ## A017081.P10462494318970543573

`record[(lcm(4, n+1)-3)^5]`
-/

namespace A017081.P10462494318970543573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 3) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017081.P10462494318970543573

namespace A017081

/-- `record[(lcm(4, n+1)-3)^5]` -/
def P10462494318970543573.Spec : Prop :=
  ∀ n, P10462494318970543573.a n = A017081 n

end A017081

/-! ## A017081.P5459099824884490011

`sqrt(A017086(n))`
-/

namespace A017081.P5459099824884490011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017086 n : ℝ)

end

end A017081.P5459099824884490011

namespace A017081

/-- `sqrt(A017086(n))` -/
def P5459099824884490011.Spec : Prop :=
  ∀ n, P5459099824884490011.a n = (A017081 n : ℝ)

end A017081

/-! ## A017081.P15136144271459958413

`sqrt(A017078(n)^5)`
-/

namespace A017081.P15136144271459958413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017078 n ^ 5 : ℝ)

end

end A017081.P15136144271459958413

namespace A017081

/-- `sqrt(A017078(n)^5)` -/
def P15136144271459958413.Spec : Prop :=
  ∀ n, P15136144271459958413.a n = (A017081 n : ℝ)

end A017081

/-! ## A017081.P8604851516777109209

`(8*n+1)*A017080(n)`
-/

namespace A017081.P8604851516777109209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A017080 n

end

end A017081.P8604851516777109209

namespace A017081

/-- `(8*n+1)*A017080(n)` -/
def P8604851516777109209.Spec : Prop :=
  ∀ n, P8604851516777109209.a n = A017081 n

theorem P8604851516777109209.correct : P8604851516777109209.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P8604851516777109209.a, A017081.P9994767328366861140.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P1484834414309676812

`abs((5-2*A004767(n))^5)`
-/

namespace A017081.P1484834414309676812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 - 2 * A004767 n) ^ 5|

end

end A017081.P1484834414309676812

namespace A017081

/-- `abs((5-2*A004767(n))^5)` -/
def P1484834414309676812.Spec : Prop :=
  ∀ n, P1484834414309676812.a n = A017081 n

end A017081

/-! ## A017081.P7783961308652490756

`A017078(n)*A017079(n)`
-/

namespace A017081.P7783961308652490756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n * A017079 n

end

end A017081.P7783961308652490756

namespace A017081

/-- `A017078(n)*A017079(n)` -/
def P7783961308652490756.Spec : Prop :=
  ∀ n, P7783961308652490756.a n = A017081 n

theorem P7783961308652490756.correct : P7783961308652490756.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P7783961308652490756.a, A017081.P9994767328366861140.a, A017078, A017078.P592742087923068107.a, A017079, A017079.P3921882898894217556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P7506108537224866193

`A017082(n)/A017077(n)`
-/

namespace A017081.P7506108537224866193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017082 n : ℚ) / (A017077 n : ℚ)

end

end A017081.P7506108537224866193

namespace A017081

/-- `A017082(n)/A017077(n)` -/
def P7506108537224866193.Spec : Prop :=
  ∀ n, P7506108537224866193.a n = (A017081 n : ℚ)

end A017081

/-! ## A017081.P3549968842916783744

`A017083(n)/A017078(n)`
-/

namespace A017081.P3549968842916783744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017083 n : ℚ) / (A017078 n : ℚ)

end

end A017081.P3549968842916783744

namespace A017081

/-- `A017083(n)/A017078(n)` -/
def P3549968842916783744.Spec : Prop :=
  ∀ n, P3549968842916783744.a n = (A017081 n : ℚ)

end A017081

/-! ## A017081.P9759251539625649853

`A017077(n)²*A017079(n)`
-/

namespace A017081.P9759251539625649853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n ^ 2 * A017079 n

end

end A017081.P9759251539625649853

namespace A017081

/-- `A017077(n)²*A017079(n)` -/
def P9759251539625649853.Spec : Prop :=
  ∀ n, P9759251539625649853.a n = A017081 n

theorem P9759251539625649853.correct : P9759251539625649853.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P9759251539625649853.a, A017081.P9994767328366861140.a, A017077, A017077.P465032159772507632.a, A017079, A017079.P3921882898894217556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P16503935623767987673

`A017078(n)²*A017077(n)`
-/

namespace A017081.P16503935623767987673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n ^ 2 * A017077 n

end

end A017081.P16503935623767987673

namespace A017081

/-- `A017078(n)²*A017077(n)` -/
def P16503935623767987673.Spec : Prop :=
  ∀ n, P16503935623767987673.a n = A017081 n

theorem P16503935623767987673.correct : P16503935623767987673.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P16503935623767987673.a, A017081.P9994767328366861140.a, A017077, A017077.P465032159772507632.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P6279554365688930461

`A017080(n)²/A017079(n)`
-/

namespace A017081.P6279554365688930461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017080 n ^ 2 : ℚ) / (A017079 n : ℚ)

end

end A017081.P6279554365688930461

namespace A017081

/-- `A017080(n)²/A017079(n)` -/
def P6279554365688930461.Spec : Prop :=
  ∀ n, P6279554365688930461.a n = (A017081 n : ℚ)

end A017081

/-! ## A017081.P541632743149412845

`A017083(n)/A017077(n)²`
-/

namespace A017081.P541632743149412845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017083 n : ℚ) / (A017077 n ^ 2 : ℚ)

end

end A017081.P541632743149412845

namespace A017081

/-- `A017083(n)/A017077(n)²` -/
def P541632743149412845.Spec : Prop :=
  ∀ n, P541632743149412845.a n = (A017081 n : ℚ)

end A017081

/-! ## A017081.P9976059719565542088

`A017078(n)²*A199398(4*n+1)`
-/

namespace A017081.P9976059719565542088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n ^ 2 * A199398 (4 * n + 1)

end

end A017081.P9976059719565542088

namespace A017081

/-- `A017078(n)²*A199398(4*n+1)` -/
def P9976059719565542088.Spec : Prop :=
  ∀ n, P9976059719565542088.a n = A017081 n

end A017081

/-! ## A017081.P2609637659211781686

`A016817(2*n)`
-/

namespace A017081.P2609637659211781686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 (2 * n)

end

end A017081.P2609637659211781686

namespace A017081

/-- `A016817(2*n)` -/
def P2609637659211781686.Spec : Prop :=
  ∀ n, P2609637659211781686.a n = A017081 n

theorem P2609637659211781686.correct : P2609637659211781686.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P2609637659211781686.a, A017081.P9994767328366861140.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P11714077559571713718

`sqrt(A016822(2*n))`
-/

namespace A017081.P11714077559571713718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016822 (2 * n) : ℝ)

end

end A017081.P11714077559571713718

namespace A017081

/-- `sqrt(A016822(2*n))` -/
def P11714077559571713718.Spec : Prop :=
  ∀ n, P11714077559571713718.a n = (A017081 n : ℝ)

end A017081

/-! ## A017081.P1272927965242925582

`A016813(2*n)*A016816(2*n)`
-/

namespace A017081.P1272927965242925582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016816 (2 * n)

end

end A017081.P1272927965242925582

namespace A017081

/-- `A016813(2*n)*A016816(2*n)` -/
def P1272927965242925582.Spec : Prop :=
  ∀ n, P1272927965242925582.a n = A017081 n

theorem P1272927965242925582.correct : P1272927965242925582.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P1272927965242925582.a, A017081.P9994767328366861140.a, A016813, A016813.P15626904835145642280.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P4360258103837573500

`A016814(2*n)*A016815(2*n)`
-/

namespace A017081.P4360258103837573500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) * A016815 (2 * n)

end

end A017081.P4360258103837573500

namespace A017081

/-- `A016814(2*n)*A016815(2*n)` -/
def P4360258103837573500.Spec : Prop :=
  ∀ n, P4360258103837573500.a n = A017081 n

theorem P4360258103837573500.correct : P4360258103837573500.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P4360258103837573500.a, A017081.P9994767328366861140.a, A016814, A016814.P5668709183610020667.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P14737664481277036137

`A016818(2*n)/A016813(2*n)`
-/

namespace A017081.P14737664481277036137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016818 (2 * n) : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017081.P14737664481277036137

namespace A017081

/-- `A016818(2*n)/A016813(2*n)` -/
def P14737664481277036137.Spec : Prop :=
  ∀ n, P14737664481277036137.a n = (A017081 n : ℚ)

theorem P14737664481277036137.correct : P14737664481277036137.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P14737664481277036137.a, A017081.P9994767328366861140.a, A016813, A016813.P15626904835145642280.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-! ## A017081.P15558751154922298672

`A016819(2*n)/A016814(2*n)`
-/

namespace A017081.P15558751154922298672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016819 (2 * n) : ℚ) / (A016814 (2 * n) : ℚ)

end

end A017081.P15558751154922298672

namespace A017081

/-- `A016819(2*n)/A016814(2*n)` -/
def P15558751154922298672.Spec : Prop :=
  ∀ n, P15558751154922298672.a n = (A017081 n : ℚ)

theorem P15558751154922298672.correct : P15558751154922298672.Spec := by
  intro n
  simp only [A017081, Nat.add_sub_cancel, A017081.P15558751154922298672.a, A017081.P9994767328366861140.a, A016814, A016814.P5668709183610020667.a, A016819, A016819.P8718668467099107420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017081

/-!
# A017082: a(n) = (8*n + 1)^6.

The programs for A017082, the canonical program `A017082.P2752029902419272103` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017082 has offset 0).

The definition of A017082 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^6` (program `A017082.P2752029902419272103`, by `A017082.P2752029902419272103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017082.P2752029902419272103

`(8*n+1)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017082

/-- `(8*n+1)^6` -/
def P2752029902419272103.Spec : Prop :=
  ∀ n, (P2752029902419272103.a n : ℤ) = A017082 n

theorem P2752029902419272103.correct : P2752029902419272103.Spec := by
  intro n
  simp only [A017082]

end A017082

/-! ## A017082.P2600278547396368413

`(or(1, 4*2*n)^3)²`
-/

namespace A017082.P2600278547396368413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * (2 * n)) ^ 3) ^ 2

end

end A017082.P2600278547396368413

namespace A017082

/-- `(or(1, 4*2*n)^3)²` -/
def P2600278547396368413.Spec : Prop :=
  ∀ n, (P2600278547396368413.a n : ℤ) = A017082 n

end A017082

/-! ## A017082.P16514284070829647143

`(xor(1, 4*2*n)^3)²`
-/

namespace A017082.P16514284070829647143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * (2 * n)) ^ 3) ^ 2

end

end A017082.P16514284070829647143

namespace A017082

/-- `(xor(1, 4*2*n)^3)²` -/
def P16514284070829647143.Spec : Prop :=
  ∀ n, (P16514284070829647143.a n : ℤ) = A017082 n

end A017082

/-! ## A017082.P8285260114407239359

`A017079(n)²`
-/

namespace A017082.P8285260114407239359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n ^ 2

end

end A017082.P8285260114407239359

namespace A017082

/-- `A017079(n)²` -/
def P8285260114407239359.Spec : Prop :=
  ∀ n, P8285260114407239359.a n = A017082 n

theorem P8285260114407239359.correct : P8285260114407239359.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P8285260114407239359.a, A017082.P2752029902419272103.a, A017079, A017079.P3921882898894217556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P9820146620081348074

`(A017077(n)^3)²`
-/

namespace A017082.P9820146620081348074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017077 n ^ 3) ^ 2

end

end A017082.P9820146620081348074

namespace A017082

/-- `(A017077(n)^3)²` -/
def P9820146620081348074.Spec : Prop :=
  ∀ n, P9820146620081348074.a n = A017082 n

theorem P9820146620081348074.correct : P9820146620081348074.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P9820146620081348074.a, A017082.P2752029902419272103.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P4736275423941513770

`sqrt(A017080(n)^3)`
-/

namespace A017082.P4736275423941513770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017080 n ^ 3 : ℝ)

end

end A017082.P4736275423941513770

namespace A017082

/-- `sqrt(A017080(n)^3)` -/
def P4736275423941513770.Spec : Prop :=
  ∀ n, P4736275423941513770.a n = (A017082 n : ℝ)

end A017082

/-! ## A017082.P16660411648586086475

`(8*n+1)*A017081(n)`
-/

namespace A017082.P16660411648586086475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A017081 n

end

end A017082.P16660411648586086475

namespace A017082

/-- `(8*n+1)*A017081(n)` -/
def P16660411648586086475.Spec : Prop :=
  ∀ n, P16660411648586086475.a n = A017082 n

theorem P16660411648586086475.correct : P16660411648586086475.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P16660411648586086475.a, A017082.P2752029902419272103.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P12944160051667067520

`A017078(n)*A017080(n)`
-/

namespace A017082.P12944160051667067520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n * A017080 n

end

end A017082.P12944160051667067520

namespace A017082

/-- `A017078(n)*A017080(n)` -/
def P12944160051667067520.Spec : Prop :=
  ∀ n, P12944160051667067520.a n = A017082 n

theorem P12944160051667067520.correct : P12944160051667067520.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P12944160051667067520.a, A017082.P2752029902419272103.a, A017078, A017078.P592742087923068107.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P7626356026273517984

`A017083(n)/A017077(n)`
-/

namespace A017082.P7626356026273517984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017083 n : ℚ) / (A017077 n : ℚ)

end

end A017082.P7626356026273517984

namespace A017082

/-- `A017083(n)/A017077(n)` -/
def P7626356026273517984.Spec : Prop :=
  ∀ n, P7626356026273517984.a n = (A017082 n : ℚ)

end A017082

/-! ## A017082.P6664039549555123273

`(A017077(n)*A017078(n))²`
-/

namespace A017082.P6664039549555123273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017077 n * A017078 n) ^ 2

end

end A017082.P6664039549555123273

namespace A017082

/-- `(A017077(n)*A017078(n))²` -/
def P6664039549555123273.Spec : Prop :=
  ∀ n, P6664039549555123273.a n = A017082 n

theorem P6664039549555123273.correct : P6664039549555123273.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P6664039549555123273.a, A017082.P2752029902419272103.a, A017077, A017077.P465032159772507632.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P11648689120676433757

`A017077(n)²*A017080(n)`
-/

namespace A017082.P11648689120676433757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n ^ 2 * A017080 n

end

end A017082.P11648689120676433757

namespace A017082

/-- `A017077(n)²*A017080(n)` -/
def P11648689120676433757.Spec : Prop :=
  ∀ n, P11648689120676433757.a n = A017082 n

theorem P11648689120676433757.correct : P11648689120676433757.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P11648689120676433757.a, A017082.P2752029902419272103.a, A017077, A017077.P465032159772507632.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P4049428341768842366

`(A017081(n)/A017078(n))²`
-/

namespace A017082.P4049428341768842366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017081 n : ℚ) / (A017078 n : ℚ)) ^ 2

end

end A017082.P4049428341768842366

namespace A017082

/-- `(A017081(n)/A017078(n))²` -/
def P4049428341768842366.Spec : Prop :=
  ∀ n, P4049428341768842366.a n = (A017082 n : ℚ)

end A017082

/-! ## A017082.P8908633980361941393

`A017081(n)²/A017080(n)`
-/

namespace A017082.P8908633980361941393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017081 n ^ 2 : ℚ) / (A017080 n : ℚ)

end

end A017082.P8908633980361941393

namespace A017082

/-- `A017081(n)²/A017080(n)` -/
def P8908633980361941393.Spec : Prop :=
  ∀ n, P8908633980361941393.a n = (A017082 n : ℚ)

end A017082

/-! ## A017082.P16196951377701675952

`(A017083(n)/A017078(n)²)²`
-/

namespace A017082.P16196951377701675952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017083 n : ℚ) / (A017078 n ^ 2 : ℚ)) ^ 2

end

end A017082.P16196951377701675952

namespace A017082

/-- `(A017083(n)/A017078(n)²)²` -/
def P16196951377701675952.Spec : Prop :=
  ∀ n, P16196951377701675952.a n = (A017082 n : ℚ)

end A017082

/-! ## A017082.P4509232916338345055

`sqrt(sqrt(A017084(n))*A017084(n))`
-/

namespace A017082.P4509232916338345055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017084 n : ℝ) * (A017084 n : ℝ))

end

end A017082.P4509232916338345055

namespace A017082

/-- `sqrt(sqrt(A017084(n))*A017084(n))` -/
def P4509232916338345055.Spec : Prop :=
  ∀ n, P4509232916338345055.a n = (A017082 n : ℝ)

end A017082

/-! ## A017082.P16125699722297727418

`(Δ[A001107(n)]^3)²`
-/

namespace A017082.P16125699722297727418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017082.P16125699722297727418

namespace A017082

/-- `(Δ[A001107(n)]^3)²` -/
def P16125699722297727418.Spec : Prop :=
  ∀ n, P16125699722297727418.a n = A017082 n

theorem P16125699722297727418.correct : P16125699722297727418.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P16125699722297727418.f1, A017082.P16125699722297727418.a, A017082.P2752029902419272103.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P5765869556978429633

`(Δ[A054552(n)]^3)²`
-/

namespace A017082.P5765869556978429633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017082.P5765869556978429633

namespace A017082

/-- `(Δ[A054552(n)]^3)²` -/
def P5765869556978429633.Spec : Prop :=
  ∀ n, P5765869556978429633.a n = A017082 n

theorem P5765869556978429633.correct : P5765869556978429633.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P5765869556978429633.f1, A017082.P5765869556978429633.a, A017082.P2752029902419272103.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P3095314980663848788

`A016818(2*n)`
-/

namespace A017082.P3095314980663848788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016818 (2 * n)

end

end A017082.P3095314980663848788

namespace A017082

/-- `A016818(2*n)` -/
def P3095314980663848788.Spec : Prop :=
  ∀ n, P3095314980663848788.a n = A017082 n

theorem P3095314980663848788.correct : P3095314980663848788.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P3095314980663848788.a, A017082.P2752029902419272103.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-! ## A017082.P5381619561931235915

`A016815(2*n)²`
-/

namespace A017082.P5381619561931235915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n) ^ 2

end

end A017082.P5381619561931235915

namespace A017082

/-- `A016815(2*n)²` -/
def P5381619561931235915.Spec : Prop :=
  ∀ n, P5381619561931235915.a n = A017082 n

theorem P5381619561931235915.correct : P5381619561931235915.Spec := by
  intro n
  simp only [A017082, Nat.add_sub_cancel, A017082.P5381619561931235915.a, A017082.P2752029902419272103.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017082

/-!
# A017083: a(n) = (8*n + 1)^7.

The programs for A017083, the canonical program `A017083.P7471891977015000944` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017083 has offset 0).

The definition of A017083 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^7` (program `A017083.P7471891977015000944`, by `A017083.P7471891977015000944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017083.P7471891977015000944

`(8*n+1)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017083

/-- `(8*n+1)^7` -/
def P7471891977015000944.Spec : Prop :=
  ∀ n, (P7471891977015000944.a n : ℤ) = A017083 n

theorem P7471891977015000944.correct : P7471891977015000944.Spec := by
  intro n
  simp only [A017083]

end A017083

/-! ## A017083.P9697109872704582241

`A017077(n)*A017082(n)`
-/

namespace A017083.P9697109872704582241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n * A017082 n

end

end A017083.P9697109872704582241

namespace A017083

/-- `A017077(n)*A017082(n)` -/
def P9697109872704582241.Spec : Prop :=
  ∀ n, P9697109872704582241.a n = A017083 n

theorem P9697109872704582241.correct : P9697109872704582241.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P9697109872704582241.a, A017083.P7471891977015000944.a, A017077, A017077.P465032159772507632.a, A017082, A017082.P2752029902419272103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P1464143872878559791

`A017078(n)*A017081(n)`
-/

namespace A017083.P1464143872878559791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n * A017081 n

end

end A017083.P1464143872878559791

namespace A017083

/-- `A017078(n)*A017081(n)` -/
def P1464143872878559791.Spec : Prop :=
  ∀ n, P1464143872878559791.a n = A017083 n

theorem P1464143872878559791.correct : P1464143872878559791.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P1464143872878559791.a, A017083.P7471891977015000944.a, A017078, A017078.P592742087923068107.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P11008726864081015126

`A017079(n)*A017080(n)`
-/

namespace A017083.P11008726864081015126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n * A017080 n

end

end A017083.P11008726864081015126

namespace A017083

/-- `A017079(n)*A017080(n)` -/
def P11008726864081015126.Spec : Prop :=
  ∀ n, P11008726864081015126.a n = A017083 n

theorem P11008726864081015126.correct : P11008726864081015126.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P11008726864081015126.a, A017083.P7471891977015000944.a, A017079, A017079.P3921882898894217556.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P5736263546256210639

`A017077(n)²*A017081(n)`
-/

namespace A017083.P5736263546256210639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n ^ 2 * A017081 n

end

end A017083.P5736263546256210639

namespace A017083

/-- `A017077(n)²*A017081(n)` -/
def P5736263546256210639.Spec : Prop :=
  ∀ n, P5736263546256210639.a n = A017083 n

theorem P5736263546256210639.correct : P5736263546256210639.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P5736263546256210639.a, A017083.P7471891977015000944.a, A017077, A017077.P465032159772507632.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P743320458662885984

`A017078(n)²*A017079(n)`
-/

namespace A017083.P743320458662885984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n ^ 2 * A017079 n

end

end A017083.P743320458662885984

namespace A017083

/-- `A017078(n)²*A017079(n)` -/
def P743320458662885984.Spec : Prop :=
  ∀ n, P743320458662885984.a n = A017083 n

theorem P743320458662885984.correct : P743320458662885984.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P743320458662885984.a, A017083.P7471891977015000944.a, A017078, A017078.P592742087923068107.a, A017079, A017079.P3921882898894217556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P3993218590056871156

`A017079(n)²*A017077(n)`
-/

namespace A017083.P3993218590056871156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n ^ 2 * A017077 n

end

end A017083.P3993218590056871156

namespace A017083

/-- `A017079(n)²*A017077(n)` -/
def P3993218590056871156.Spec : Prop :=
  ∀ n, P3993218590056871156.a n = A017083 n

theorem P3993218590056871156.correct : P3993218590056871156.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P3993218590056871156.a, A017083.P7471891977015000944.a, A017077, A017077.P465032159772507632.a, A017079, A017079.P3921882898894217556.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P14688188446504761285

`A017080(n)²/A017077(n)`
-/

namespace A017083.P14688188446504761285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017080 n ^ 2 : ℚ) / (A017077 n : ℚ)

end

end A017083.P14688188446504761285

namespace A017083

/-- `A017080(n)²/A017077(n)` -/
def P14688188446504761285.Spec : Prop :=
  ∀ n, P14688188446504761285.a n = (A017083 n : ℚ)

end A017083

/-! ## A017083.P975956766210833711

`A017081(n)²/A017079(n)`
-/

namespace A017083.P975956766210833711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017081 n ^ 2 : ℚ) / (A017079 n : ℚ)

end

end A017083.P975956766210833711

namespace A017083

/-- `A017081(n)²/A017079(n)` -/
def P975956766210833711.Spec : Prop :=
  ∀ n, P975956766210833711.a n = (A017083 n : ℚ)

end A017083

/-! ## A017083.P4013026640347997069

`A017078(n)²²/A017077(n)`
-/

namespace A017083.P4013026640347997069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017078 n ^ 2) ^ 2 : ℚ) / (A017077 n : ℚ)

end

end A017083.P4013026640347997069

namespace A017083

/-- `A017078(n)²²/A017077(n)` -/
def P4013026640347997069.Spec : Prop :=
  ∀ n, P4013026640347997069.a n = (A017083 n : ℚ)

end A017083

/-! ## A017083.P423683314674460117

`A017080(n)/A017081(n)*A017080(n)²`
-/

namespace A017083.P423683314674460117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017080 n : ℚ) / (A017081 n : ℚ) * (A017080 n ^ 2 : ℚ)

end

end A017083.P423683314674460117

namespace A017083

/-- `A017080(n)/A017081(n)*A017080(n)²` -/
def P423683314674460117.Spec : Prop :=
  ∀ n, P423683314674460117.a n = (A017083 n : ℚ)

end A017083

/-! ## A017083.P15815082777406196149

`A016819(2*n)`
-/

namespace A017083.P15815082777406196149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016819 (2 * n)

end

end A017083.P15815082777406196149

namespace A017083

/-- `A016819(2*n)` -/
def P15815082777406196149.Spec : Prop :=
  ∀ n, P15815082777406196149.a n = A017083 n

theorem P15815082777406196149.correct : P15815082777406196149.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P15815082777406196149.a, A017083.P7471891977015000944.a, A016819, A016819.P8718668467099107420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P2553362639040838462

`A016813(2*n)*A016818(2*n)`
-/

namespace A017083.P2553362639040838462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016818 (2 * n)

end

end A017083.P2553362639040838462

namespace A017083

/-- `A016813(2*n)*A016818(2*n)` -/
def P2553362639040838462.Spec : Prop :=
  ∀ n, P2553362639040838462.a n = A017083 n

theorem P2553362639040838462.correct : P2553362639040838462.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P2553362639040838462.a, A017083.P7471891977015000944.a, A016813, A016813.P15626904835145642280.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P3268164412498471606

`A016814(2*n)*A016817(2*n)`
-/

namespace A017083.P3268164412498471606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) * A016817 (2 * n)

end

end A017083.P3268164412498471606

namespace A017083

/-- `A016814(2*n)*A016817(2*n)` -/
def P3268164412498471606.Spec : Prop :=
  ∀ n, P3268164412498471606.a n = A017083 n

theorem P3268164412498471606.correct : P3268164412498471606.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P3268164412498471606.a, A017083.P7471891977015000944.a, A016814, A016814.P5668709183610020667.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P7724254174700298008

`A016815(2*n)*A016816(2*n)`
-/

namespace A017083.P7724254174700298008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n) * A016816 (2 * n)

end

end A017083.P7724254174700298008

namespace A017083

/-- `A016815(2*n)*A016816(2*n)` -/
def P7724254174700298008.Spec : Prop :=
  ∀ n, P7724254174700298008.a n = A017083 n

theorem P7724254174700298008.correct : P7724254174700298008.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P7724254174700298008.a, A017083.P7471891977015000944.a, A016815, A016815.P10670090077902171970.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P10935241779927845828

`A016820(2*n)/A016813(2*n)`
-/

namespace A017083.P10935241779927845828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016820 (2 * n) : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017083.P10935241779927845828

namespace A017083

/-- `A016820(2*n)/A016813(2*n)` -/
def P10935241779927845828.Spec : Prop :=
  ∀ n, P10935241779927845828.a n = (A017083 n : ℚ)

theorem P10935241779927845828.correct : P10935241779927845828.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P10935241779927845828.a, A017083.P7471891977015000944.a, A016813, A016813.P15626904835145642280.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P12068058672723852741

`A016813(2*n)²*A016817(2*n)`
-/

namespace A017083.P12068058672723852741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) ^ 2 * A016817 (2 * n)

end

end A017083.P12068058672723852741

namespace A017083

/-- `A016813(2*n)²*A016817(2*n)` -/
def P12068058672723852741.Spec : Prop :=
  ∀ n, P12068058672723852741.a n = A017083 n

theorem P12068058672723852741.correct : P12068058672723852741.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P12068058672723852741.a, A017083.P7471891977015000944.a, A016813, A016813.P15626904835145642280.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P14480896922092259228

`A016814(2*n)²*A016815(2*n)`
-/

namespace A017083.P14480896922092259228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) ^ 2 * A016815 (2 * n)

end

end A017083.P14480896922092259228

namespace A017083

/-- `A016814(2*n)²*A016815(2*n)` -/
def P14480896922092259228.Spec : Prop :=
  ∀ n, P14480896922092259228.a n = A017083 n

theorem P14480896922092259228.correct : P14480896922092259228.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P14480896922092259228.a, A017083.P7471891977015000944.a, A016814, A016814.P5668709183610020667.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P104627290368173322

`A016815(2*n)²*A016813(2*n)`
-/

namespace A017083.P104627290368173322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n) ^ 2 * A016813 (2 * n)

end

end A017083.P104627290368173322

namespace A017083

/-- `A016815(2*n)²*A016813(2*n)` -/
def P104627290368173322.Spec : Prop :=
  ∀ n, P104627290368173322.a n = A017083 n

theorem P104627290368173322.correct : P104627290368173322.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P104627290368173322.a, A017083.P7471891977015000944.a, A016813, A016813.P15626904835145642280.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-! ## A017083.P16596846991922927306

`A016816(2*n)²/A016813(2*n)`
-/

namespace A017083.P16596846991922927306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016816 (2 * n) ^ 2 : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017083.P16596846991922927306

namespace A017083

/-- `A016816(2*n)²/A016813(2*n)` -/
def P16596846991922927306.Spec : Prop :=
  ∀ n, P16596846991922927306.a n = (A017083 n : ℚ)

theorem P16596846991922927306.correct : P16596846991922927306.Spec := by
  intro n
  simp only [A017083, Nat.add_sub_cancel, A017083.P16596846991922927306.a, A017083.P7471891977015000944.a, A016813, A016813.P15626904835145642280.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017083

/-!
# A017084: a(n) = (8*n + 1)^8.

The programs for A017084, the canonical program `A017084.P18308793812247994975` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017084 has offset 0).

The definition of A017084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^8` (program `A017084.P18308793812247994975`, by `A017084.P18308793812247994975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017084.P18308793812247994975

`(8*n+1)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017084

/-- `(8*n+1)^8` -/
def P18308793812247994975.Spec : Prop :=
  ∀ n, (P18308793812247994975.a n : ℤ) = A017084 n

theorem P18308793812247994975.correct : P18308793812247994975.Spec := by
  intro n
  simp only [A017084]

end A017084

/-! ## A017084.P3677319084215644569

`(or(1, 4*2*n)^4)²`
-/

namespace A017084.P3677319084215644569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 * (2 * n)) ^ 4) ^ 2

end

end A017084.P3677319084215644569

namespace A017084

/-- `(or(1, 4*2*n)^4)²` -/
def P3677319084215644569.Spec : Prop :=
  ∀ n, (P3677319084215644569.a n : ℤ) = A017084 n

end A017084

/-! ## A017084.P5062239259161110638

`(xor(1, 4*2*n)^4)²`
-/

namespace A017084.P5062239259161110638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (4 * (2 * n)) ^ 4) ^ 2

end

end A017084.P5062239259161110638

namespace A017084

/-- `(xor(1, 4*2*n)^4)²` -/
def P5062239259161110638.Spec : Prop :=
  ∀ n, (P5062239259161110638.a n : ℤ) = A017084 n

end A017084

/-! ## A017084.P11563182702613319751

`or(1, 4*2*n)²²²`
-/

namespace A017084.P11563182702613319751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017084.P11563182702613319751

namespace A017084

/-- `or(1, 4*2*n)²²²` -/
def P11563182702613319751.Spec : Prop :=
  ∀ n, (P11563182702613319751.a n : ℤ) = A017084 n

end A017084

/-! ## A017084.P14048280692464339592

`xor(1, 4*2*n)²²²`
-/

namespace A017084.P14048280692464339592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017084.P14048280692464339592

namespace A017084

/-- `xor(1, 4*2*n)²²²` -/
def P14048280692464339592.Spec : Prop :=
  ∀ n, (P14048280692464339592.a n : ℤ) = A017084 n

end A017084

/-! ## A017084.P9544114842727455662

`(3-lcm(4, 2*n+1))²²²`
-/

namespace A017084.P9544114842727455662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((3 - (Nat.lcm 4 (2 * n + 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017084.P9544114842727455662

namespace A017084

/-- `(3-lcm(4, 2*n+1))²²²` -/
def P9544114842727455662.Spec : Prop :=
  ∀ n, P9544114842727455662.a n = A017084 n

end A017084

/-! ## A017084.P6771660115830367535

`A017080(n)²`
-/

namespace A017084.P6771660115830367535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n ^ 2

end

end A017084.P6771660115830367535

namespace A017084

/-- `A017080(n)²` -/
def P6771660115830367535.Spec : Prop :=
  ∀ n, P6771660115830367535.a n = A017084 n

theorem P6771660115830367535.correct : P6771660115830367535.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P6771660115830367535.a, A017084.P18308793812247994975.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P3577311746084317130

`A017078(n)²²`
-/

namespace A017084.P3577311746084317130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017078 n ^ 2) ^ 2

end

end A017084.P3577311746084317130

namespace A017084

/-- `A017078(n)²²` -/
def P3577311746084317130.Spec : Prop :=
  ∀ n, P3577311746084317130.a n = A017084 n

theorem P3577311746084317130.correct : P3577311746084317130.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P3577311746084317130.a, A017084.P18308793812247994975.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P2677830271267084517

`(A017077(n)^4)²`
-/

namespace A017084.P2677830271267084517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017077 n ^ 4) ^ 2

end

end A017084.P2677830271267084517

namespace A017084

/-- `(A017077(n)^4)²` -/
def P2677830271267084517.Spec : Prop :=
  ∀ n, P2677830271267084517.a n = A017084 n

theorem P2677830271267084517.correct : P2677830271267084517.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P2677830271267084517.a, A017084.P18308793812247994975.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P15789761211175670928

`(A008590(n)+1)²²²`
-/

namespace A017084.P15789761211175670928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008590 n + 1) ^ 2) ^ 2) ^ 2

end

end A017084.P15789761211175670928

namespace A017084

/-- `(A008590(n)+1)²²²` -/
def P15789761211175670928.Spec : Prop :=
  ∀ n, P15789761211175670928.a n = A017084 n

theorem P15789761211175670928.correct : P15789761211175670928.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P15789761211175670928.a, A017084.P18308793812247994975.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P4033283620319220699

`(1-A017089(n))²²²`
-/

namespace A017084.P4033283620319220699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017089 n) ^ 2) ^ 2) ^ 2

end

end A017084.P4033283620319220699

namespace A017084

/-- `(1-A017089(n))²²²` -/
def P4033283620319220699.Spec : Prop :=
  ∀ n, P4033283620319220699.a n = A017084 n

theorem P4033283620319220699.correct : P4033283620319220699.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P4033283620319220699.a, A017084.P18308793812247994975.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P7946102366588328743

`(2-A017101(n))²²²`
-/

namespace A017084.P7946102366588328743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017101 n) ^ 2) ^ 2) ^ 2

end

end A017084.P7946102366588328743

namespace A017084

/-- `(2-A017101(n))²²²` -/
def P7946102366588328743.Spec : Prop :=
  ∀ n, P7946102366588328743.a n = A017084 n

theorem P7946102366588328743.correct : P7946102366588328743.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P7946102366588328743.a, A017084.P18308793812247994975.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P1892675062051301221

`(A016993(n)+n)²²²`
-/

namespace A017084.P1892675062051301221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016993 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017084.P1892675062051301221

namespace A017084

/-- `(A016993(n)+n)²²²` -/
def P1892675062051301221.Spec : Prop :=
  ∀ n, P1892675062051301221.a n = A017084 n

theorem P1892675062051301221.correct : P1892675062051301221.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P1892675062051301221.a, A017084.P18308793812247994975.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P1752015078563303909

`(n-A017173(n))²²²`
-/

namespace A017084.P1752015078563303909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017173 n) ^ 2) ^ 2) ^ 2

end

end A017084.P1752015078563303909

namespace A017084

/-- `(n-A017173(n))²²²` -/
def P1752015078563303909.Spec : Prop :=
  ∀ n, P1752015078563303909.a n = A017084 n

theorem P1752015078563303909.correct : P1752015078563303909.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P1752015078563303909.a, A017084.P18308793812247994975.a, A017173, A017173.P17951010485655810208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P18242178237400159059

`A017077(n)*A017083(n)`
-/

namespace A017084.P18242178237400159059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n * A017083 n

end

end A017084.P18242178237400159059

namespace A017084

/-- `A017077(n)*A017083(n)` -/
def P18242178237400159059.Spec : Prop :=
  ∀ n, P18242178237400159059.a n = A017084 n

theorem P18242178237400159059.correct : P18242178237400159059.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P18242178237400159059.a, A017084.P18308793812247994975.a, A017077, A017077.P465032159772507632.a, A017083, A017083.P7471891977015000944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P10419439183948223578

`A017078(n)*A017082(n)`
-/

namespace A017084.P10419439183948223578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n * A017082 n

end

end A017084.P10419439183948223578

namespace A017084

/-- `A017078(n)*A017082(n)` -/
def P10419439183948223578.Spec : Prop :=
  ∀ n, P10419439183948223578.a n = A017084 n

theorem P10419439183948223578.correct : P10419439183948223578.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P10419439183948223578.a, A017084.P18308793812247994975.a, A017078, A017078.P592742087923068107.a, A017082, A017082.P2752029902419272103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P6232801917164516690

`A017079(n)*A017081(n)`
-/

namespace A017084.P6232801917164516690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n * A017081 n

end

end A017084.P6232801917164516690

namespace A017084

/-- `A017079(n)*A017081(n)` -/
def P6232801917164516690.Spec : Prop :=
  ∀ n, P6232801917164516690.a n = A017084 n

theorem P6232801917164516690.correct : P6232801917164516690.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P6232801917164516690.a, A017084.P18308793812247994975.a, A017079, A017079.P3921882898894217556.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P4096619926764464101

`A017079(n)²*A017079(n)/A017077(n)`
-/

namespace A017084.P4096619926764464101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017079 n ^ 2 * A017079 n : ℚ) / (A017077 n : ℚ)

end

end A017084.P4096619926764464101

namespace A017084

/-- `A017079(n)²*A017079(n)/A017077(n)` -/
def P4096619926764464101.Spec : Prop :=
  ∀ n, P4096619926764464101.a n = (A017084 n : ℚ)

end A017084

/-! ## A017084.P8550284102240157688

`Δ[A001107(n)]²²²`
-/

namespace A017084.P8550284102240157688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017084.P8550284102240157688

namespace A017084

/-- `Δ[A001107(n)]²²²` -/
def P8550284102240157688.Spec : Prop :=
  ∀ n, P8550284102240157688.a n = A017084 n

theorem P8550284102240157688.correct : P8550284102240157688.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P8550284102240157688.f1, A017084.P8550284102240157688.a, A017084.P18308793812247994975.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-! ## A017084.P1349356871989586859

`Δ[A054552(n)]²²²`
-/

namespace A017084.P1349356871989586859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017084.P1349356871989586859

namespace A017084

/-- `Δ[A054552(n)]²²²` -/
def P1349356871989586859.Spec : Prop :=
  ∀ n, P1349356871989586859.a n = A017084 n

theorem P1349356871989586859.correct : P1349356871989586859.Spec := by
  intro n
  simp only [A017084, Nat.add_sub_cancel, A017084.P1349356871989586859.f1, A017084.P1349356871989586859.a, A017084.P18308793812247994975.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017084

/-!
# A017085: a(n) = (8*n + 1)^9.

The programs for A017085, the canonical program `A017085.P4715673097173161917` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017085 has offset 0).

The definition of A017085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^9` (program `A017085.P4715673097173161917`, by `A017085.P4715673097173161917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017085.P4715673097173161917

`(8*n+1)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017085

/-- `(8*n+1)^9` -/
def P4715673097173161917.Spec : Prop :=
  ∀ n, (P4715673097173161917.a n : ℤ) = A017085 n

theorem P4715673097173161917.correct : P4715673097173161917.Spec := by
  intro n
  simp only [A017085]

end A017085

/-! ## A017085.P3989443476663413395

`sqrt(A017082(n)^3)`
-/

namespace A017085.P3989443476663413395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017082 n ^ 3 : ℝ)

end

end A017085.P3989443476663413395

namespace A017085

/-- `sqrt(A017082(n)^3)` -/
def P3989443476663413395.Spec : Prop :=
  ∀ n, P3989443476663413395.a n = (A017085 n : ℝ)

end A017085

/-! ## A017085.P10308475560517183597

`A017078(n)*A017083(n)`
-/

namespace A017085.P10308475560517183597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n * A017083 n

end

end A017085.P10308475560517183597

namespace A017085

/-- `A017078(n)*A017083(n)` -/
def P10308475560517183597.Spec : Prop :=
  ∀ n, P10308475560517183597.a n = A017085 n

theorem P10308475560517183597.correct : P10308475560517183597.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P10308475560517183597.a, A017085.P4715673097173161917.a, A017078, A017078.P592742087923068107.a, A017083, A017083.P7471891977015000944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P5643241084986161923

`A017079(n)*A017082(n)`
-/

namespace A017085.P5643241084986161923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017079 n * A017082 n

end

end A017085.P5643241084986161923

namespace A017085

/-- `A017079(n)*A017082(n)` -/
def P5643241084986161923.Spec : Prop :=
  ∀ n, P5643241084986161923.a n = A017085 n

theorem P5643241084986161923.correct : P5643241084986161923.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P5643241084986161923.a, A017085.P4715673097173161917.a, A017079, A017079.P3921882898894217556.a, A017082, A017082.P2752029902419272103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P7443003752062911121

`A017080(n)*A017081(n)`
-/

namespace A017085.P7443003752062911121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n * A017081 n

end

end A017085.P7443003752062911121

namespace A017085

/-- `A017080(n)*A017081(n)` -/
def P7443003752062911121.Spec : Prop :=
  ∀ n, P7443003752062911121.a n = A017085 n

theorem P7443003752062911121.correct : P7443003752062911121.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P7443003752062911121.a, A017085.P4715673097173161917.a, A017080, A017080.P16231707503412404764.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P461818444744703792

`A017077(n)²*A017083(n)`
-/

namespace A017085.P461818444744703792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n ^ 2 * A017083 n

end

end A017085.P461818444744703792

namespace A017085

/-- `A017077(n)²*A017083(n)` -/
def P461818444744703792.Spec : Prop :=
  ∀ n, P461818444744703792.a n = A017085 n

theorem P461818444744703792.correct : P461818444744703792.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P461818444744703792.a, A017085.P4715673097173161917.a, A017077, A017077.P465032159772507632.a, A017083, A017083.P7471891977015000944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P2361945649574290436

`A017078(n)²*A017081(n)`
-/

namespace A017085.P2361945649574290436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n ^ 2 * A017081 n

end

end A017085.P2361945649574290436

namespace A017085

/-- `A017078(n)²*A017081(n)` -/
def P2361945649574290436.Spec : Prop :=
  ∀ n, P2361945649574290436.a n = A017085 n

theorem P2361945649574290436.correct : P2361945649574290436.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P2361945649574290436.a, A017085.P4715673097173161917.a, A017078, A017078.P592742087923068107.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P14167267989454760801

`A017080(n)²*A017077(n)`
-/

namespace A017085.P14167267989454760801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n ^ 2 * A017077 n

end

end A017085.P14167267989454760801

namespace A017085

/-- `A017080(n)²*A017077(n)` -/
def P14167267989454760801.Spec : Prop :=
  ∀ n, P14167267989454760801.a n = A017085 n

theorem P14167267989454760801.correct : P14167267989454760801.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P14167267989454760801.a, A017085.P4715673097173161917.a, A017077, A017077.P465032159772507632.a, A017080, A017080.P16231707503412404764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P7526731667929458654

`A017081(n)²/A017077(n)`
-/

namespace A017085.P7526731667929458654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017081 n ^ 2 : ℚ) / (A017077 n : ℚ)

end

end A017085.P7526731667929458654

namespace A017085

/-- `A017081(n)²/A017077(n)` -/
def P7526731667929458654.Spec : Prop :=
  ∀ n, P7526731667929458654.a n = (A017085 n : ℚ)

end A017085

/-! ## A017085.P7978070315681767798

`A017078(n)²²*A017077(n)`
-/

namespace A017085.P7978070315681767798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017078 n ^ 2) ^ 2 * A017077 n

end

end A017085.P7978070315681767798

namespace A017085

/-- `A017078(n)²²*A017077(n)` -/
def P7978070315681767798.Spec : Prop :=
  ∀ n, P7978070315681767798.a n = A017085 n

theorem P7978070315681767798.correct : P7978070315681767798.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P7978070315681767798.a, A017085.P4715673097173161917.a, A017077, A017077.P465032159772507632.a, A017078, A017078.P592742087923068107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P2612995569521329541

`A016821(2*n)`
-/

namespace A017085.P2612995569521329541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016821 (2 * n)

end

end A017085.P2612995569521329541

namespace A017085

/-- `A016821(2*n)` -/
def P2612995569521329541.Spec : Prop :=
  ∀ n, P2612995569521329541.a n = A017085 n

theorem P2612995569521329541.correct : P2612995569521329541.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P2612995569521329541.a, A017085.P4715673097173161917.a, A016821, A016821.P17020598727398080653.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P6299970243417776343

`record[A016813(n)^9*char[2*n]]`
-/

namespace A017085.P6299970243417776343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 9 * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017085.P6299970243417776343

namespace A017085

/-- `record[A016813(n)^9*char[2*n]]` -/
def P6299970243417776343.Spec : Prop :=
  ∀ n, P6299970243417776343.a n = A017085 n

end A017085

/-! ## A017085.P7387905092579879100

`A016813(2*n)*A016820(2*n)`
-/

namespace A017085.P7387905092579879100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016820 (2 * n)

end

end A017085.P7387905092579879100

namespace A017085

/-- `A016813(2*n)*A016820(2*n)` -/
def P7387905092579879100.Spec : Prop :=
  ∀ n, P7387905092579879100.a n = A017085 n

theorem P7387905092579879100.correct : P7387905092579879100.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P7387905092579879100.a, A017085.P4715673097173161917.a, A016813, A016813.P15626904835145642280.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P4383311823189031841

`A016814(2*n)*A016819(2*n)`
-/

namespace A017085.P4383311823189031841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) * A016819 (2 * n)

end

end A017085.P4383311823189031841

namespace A017085

/-- `A016814(2*n)*A016819(2*n)` -/
def P4383311823189031841.Spec : Prop :=
  ∀ n, P4383311823189031841.a n = A017085 n

theorem P4383311823189031841.correct : P4383311823189031841.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P4383311823189031841.a, A017085.P4715673097173161917.a, A016814, A016814.P5668709183610020667.a, A016819, A016819.P8718668467099107420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P14339284386294557288

`A016815(2*n)*A016818(2*n)`
-/

namespace A017085.P14339284386294557288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 (2 * n) * A016818 (2 * n)

end

end A017085.P14339284386294557288

namespace A017085

/-- `A016815(2*n)*A016818(2*n)` -/
def P14339284386294557288.Spec : Prop :=
  ∀ n, P14339284386294557288.a n = A017085 n

theorem P14339284386294557288.correct : P14339284386294557288.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P14339284386294557288.a, A017085.P4715673097173161917.a, A016815, A016815.P10670090077902171970.a, A016818, A016818.P990759581079900138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P16699508538996555331

`A016816(2*n)*A016817(2*n)`
-/

namespace A017085.P16699508538996555331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016816 (2 * n) * A016817 (2 * n)

end

end A017085.P16699508538996555331

namespace A017085

/-- `A016816(2*n)*A016817(2*n)` -/
def P16699508538996555331.Spec : Prop :=
  ∀ n, P16699508538996555331.a n = A017085 n

theorem P16699508538996555331.correct : P16699508538996555331.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P16699508538996555331.a, A017085.P4715673097173161917.a, A016816, A016816.P12433774529613122654.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P17472235058434308728

`A016822(2*n)/A016813(2*n)`
-/

namespace A017085.P17472235058434308728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016822 (2 * n) : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017085.P17472235058434308728

namespace A017085

/-- `A016822(2*n)/A016813(2*n)` -/
def P17472235058434308728.Spec : Prop :=
  ∀ n, P17472235058434308728.a n = (A017085 n : ℚ)

theorem P17472235058434308728.correct : P17472235058434308728.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P17472235058434308728.a, A017085.P4715673097173161917.a, A016813, A016813.P15626904835145642280.a, A016822, A016822.P5486575791904332238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P18350407456405774869

`A016813(2*n)²*A016819(2*n)`
-/

namespace A017085.P18350407456405774869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) ^ 2 * A016819 (2 * n)

end

end A017085.P18350407456405774869

namespace A017085

/-- `A016813(2*n)²*A016819(2*n)` -/
def P18350407456405774869.Spec : Prop :=
  ∀ n, P18350407456405774869.a n = A017085 n

theorem P18350407456405774869.correct : P18350407456405774869.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P18350407456405774869.a, A017085.P4715673097173161917.a, A016813, A016813.P15626904835145642280.a, A016819, A016819.P8718668467099107420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-! ## A017085.P640071583839234529

`A016814(2*n)²*A016817(2*n)`
-/

namespace A017085.P640071583839234529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) ^ 2 * A016817 (2 * n)

end

end A017085.P640071583839234529

namespace A017085

/-- `A016814(2*n)²*A016817(2*n)` -/
def P640071583839234529.Spec : Prop :=
  ∀ n, P640071583839234529.a n = A017085 n

theorem P640071583839234529.correct : P640071583839234529.Spec := by
  intro n
  simp only [A017085, Nat.add_sub_cancel, A017085.P640071583839234529.a, A017085.P4715673097173161917.a, A016814, A016814.P5668709183610020667.a, A016817, A016817.P16524033213654524335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017085

/-!
# A017086: a(n) = (8*n + 1)^10.

The programs for A017086, the canonical program `A017086.P14203406567372197350` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017086 has offset 0).

The definition of A017086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)^10` (program `A017086.P14203406567372197350`, by `A017086.P14203406567372197350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017086.P14203406567372197350

`(8*n+1)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017086

/-- `(8*n+1)^10` -/
def P14203406567372197350.Spec : Prop :=
  ∀ n, (P14203406567372197350.a n : ℤ) = A017086 n

theorem P14203406567372197350.correct : P14203406567372197350.Spec := by
  intro n
  simp only [A017086]

end A017086

/-! ## A017086.P11674887844174824197

`(or(1, 8*n)^5)²`
-/

namespace A017086.P11674887844174824197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (8 * n) ^ 5) ^ 2

end

end A017086.P11674887844174824197

namespace A017086

/-- `(or(1, 8*n)^5)²` -/
def P11674887844174824197.Spec : Prop :=
  ∀ n, (P11674887844174824197.a n : ℤ) = A017086 n

end A017086

/-! ## A017086.P17123568664033385781

`A017081(n)²`
-/

namespace A017086.P17123568664033385781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017081 n ^ 2

end

end A017086.P17123568664033385781

namespace A017086

/-- `A017081(n)²` -/
def P17123568664033385781.Spec : Prop :=
  ∀ n, P17123568664033385781.a n = A017086 n

theorem P17123568664033385781.correct : P17123568664033385781.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P17123568664033385781.a, A017086.P14203406567372197350.a, A017081, A017081.P9994767328366861140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P5304066883349795852

`(A017077(n)^5)²`
-/

namespace A017086.P5304066883349795852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017077 n ^ 5) ^ 2

end

end A017086.P5304066883349795852

namespace A017086

/-- `(A017077(n)^5)²` -/
def P5304066883349795852.Spec : Prop :=
  ∀ n, P5304066883349795852.a n = A017086 n

theorem P5304066883349795852.correct : P5304066883349795852.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P5304066883349795852.a, A017086.P14203406567372197350.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P5591177325686742870

`sqrt(A017080(n)^5)`
-/

namespace A017086.P5591177325686742870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017080 n ^ 5 : ℝ)

end

end A017086.P5591177325686742870

namespace A017086

/-- `sqrt(A017080(n)^5)` -/
def P5591177325686742870.Spec : Prop :=
  ∀ n, P5591177325686742870.a n = (A017086 n : ℝ)

end A017086

/-! ## A017086.P5994034031191683002

`A017080(n)*A017082(n)`
-/

namespace A017086.P5994034031191683002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017080 n * A017082 n

end

end A017086.P5994034031191683002

namespace A017086

/-- `A017080(n)*A017082(n)` -/
def P5994034031191683002.Spec : Prop :=
  ∀ n, P5994034031191683002.a n = A017086 n

theorem P5994034031191683002.correct : P5994034031191683002.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P5994034031191683002.a, A017086.P14203406567372197350.a, A017080, A017080.P16231707503412404764.a, A017082, A017082.P2752029902419272103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P7054155231561796061

`sqrt(sqrt(A017084(n)))*A017084(n)`
-/

namespace A017086.P7054155231561796061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017084 n : ℝ)) * (A017084 n : ℝ)

end

end A017086.P7054155231561796061

namespace A017086

/-- `sqrt(sqrt(A017084(n)))*A017084(n)` -/
def P7054155231561796061.Spec : Prop :=
  ∀ n, P7054155231561796061.a n = (A017086 n : ℝ)

end A017086

/-! ## A017086.P14225477542787685418

`A016822(2*n)`
-/

namespace A017086.P14225477542787685418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016822 (2 * n)

end

end A017086.P14225477542787685418

namespace A017086

/-- `A016822(2*n)` -/
def P14225477542787685418.Spec : Prop :=
  ∀ n, P14225477542787685418.a n = A017086 n

theorem P14225477542787685418.correct : P14225477542787685418.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P14225477542787685418.a, A017086.P14203406567372197350.a, A016822, A016822.P5486575791904332238.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P13214341123844292894

`A016814(2*n)*A016820(2*n)`
-/

namespace A017086.P13214341123844292894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 (2 * n) * A016820 (2 * n)

end

end A017086.P13214341123844292894

namespace A017086

/-- `A016814(2*n)*A016820(2*n)` -/
def P13214341123844292894.Spec : Prop :=
  ∀ n, P13214341123844292894.a n = A017086 n

theorem P13214341123844292894.correct : P13214341123844292894.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P13214341123844292894.a, A017086.P14203406567372197350.a, A016814, A016814.P5668709183610020667.a, A016820, A016820.P15491023708518114857.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P14587962632509491822

`A016823(2*n)/A016813(2*n)`
-/

namespace A017086.P14587962632509491822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016823 (2 * n) : ℚ) / (A016813 (2 * n) : ℚ)

end

end A017086.P14587962632509491822

namespace A017086

/-- `A016823(2*n)/A016813(2*n)` -/
def P14587962632509491822.Spec : Prop :=
  ∀ n, P14587962632509491822.a n = (A017086 n : ℚ)

theorem P14587962632509491822.correct : P14587962632509491822.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P14587962632509491822.a, A017086.P14203406567372197350.a, A016813, A016813.P15626904835145642280.a, A016823, A016823.P8133131490654501830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P484040927556521355

`A016762(4*n)`
-/

namespace A017086.P484040927556521355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016762 (4 * n)

end

end A017086.P484040927556521355

namespace A017086

/-- `A016762(4*n)` -/
def P484040927556521355.Spec : Prop :=
  ∀ n, P484040927556521355.a n = A017086 n

theorem P484040927556521355.correct : P484040927556521355.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P484040927556521355.a, A017086.P14203406567372197350.a, A016762, A016762.P4277765179051944872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P17255509543232386011

`A016757(4*n)²`
-/

namespace A017086.P17255509543232386011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 (4 * n) ^ 2

end

end A017086.P17255509543232386011

namespace A017086

/-- `A016757(4*n)²` -/
def P17255509543232386011.Spec : Prop :=
  ∀ n, P17255509543232386011.a n = A017086 n

theorem P17255509543232386011.correct : P17255509543232386011.Spec := by
  intro n
  simp only [A017086, Nat.add_sub_cancel, A017086.P17255509543232386011.a, A017086.P14203406567372197350.a, A016757, A016757.P14373037326364437430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017086

/-! ## A017086.P18357789845020961768

`A008454(A017077(n))`
-/

namespace A017086.P18357789845020961768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017077 n).toNat

end

end A017086.P18357789845020961768

namespace A017086

/-- `A008454(A017077(n))` -/
def P18357789845020961768.Spec : Prop :=
  ∀ n, P18357789845020961768.a n = A017086 n

end A017086

/-! ## A017086.P6229145540997608026

`A008454(A017089(n)-1)`
-/

namespace A017086.P6229145540997608026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017089 n - 1).toNat

end

end A017086.P6229145540997608026

namespace A017086

/-- `A008454(A017089(n)-1)` -/
def P6229145540997608026.Spec : Prop :=
  ∀ n, P6229145540997608026.a n = A017086 n

end A017086

/-! ## A017086.P2658382974920894617

`A008454(A016813(2*n))`
-/

namespace A017086.P2658382974920894617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 (2 * n)).toNat

end

end A017086.P2658382974920894617

namespace A017086

/-- `A008454(A016813(2*n))` -/
def P2658382974920894617.Spec : Prop :=
  ∀ n, P2658382974920894617.a n = A017086 n

end A017086

/-! ## A017086.P17802101118505805550

`A008454(A008586(2*n)+1)`
-/

namespace A017086.P17802101118505805550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008586 (2 * n) + 1).toNat

end

end A017086.P17802101118505805550

namespace A017086

/-- `A008454(A008586(2*n)+1)` -/
def P17802101118505805550.Spec : Prop :=
  ∀ n, P17802101118505805550.a n = A017086 n

end A017086

/-! ## A017086.P5000419644930464645

`A008454(A008591(n)+1-n)`
-/

namespace A017086.P5000419644930464645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008591 n + (1 - (n : ℤ))).toNat

end

end A017086.P5000419644930464645

namespace A017086

/-- `A008454(A008591(n)+1-n)` -/
def P5000419644930464645.Spec : Prop :=
  ∀ n, P5000419644930464645.a n = A017086 n

end A017086

/-! ## A017086.P3336223744709255938

`A008454(1-(n-A008591(n)))`
-/

namespace A017086.P3336223744709255938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (1 - ((n : ℤ) - A008591 n)).toNat

end

end A017086.P3336223744709255938

namespace A017086

/-- `A008454(1-(n-A008591(n)))` -/
def P3336223744709255938.Spec : Prop :=
  ∀ n, P3336223744709255938.a n = A017086 n

end A017086

/-! ## A017086.P12121006564410487917

`A008454(A017281(n)-2*n)`
-/

namespace A017086.P12121006564410487917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n - (2 * n : ℤ)).toNat

end

end A017086.P12121006564410487917

namespace A017086

/-- `A008454(A017281(n)-2*n)` -/
def P12121006564410487917.Spec : Prop :=
  ∀ n, P12121006564410487917.a n = A017086 n

end A017086

/-!
# A017087: 

The programs for A017087, there is no canonical definition to state claims against.
-/

/-! ## A017087.P10530568524841995045

`(8*n+1)^11`
-/

namespace A017087.P10530568524841995045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 1) ^ 11

end

end A017087.P10530568524841995045

/-! ## A017087.P8253215125099261659

`A016823(2*n)`
-/

namespace A017087.P8253215125099261659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016823 (2 * n)

end

end A017087.P8253215125099261659

/-! ## A017087.P1149037264672465742

`A016813(2*n)*A016822(2*n)`
-/

namespace A017087.P1149037264672465742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016822 (2 * n)

end

end A017087.P1149037264672465742

/-! ## A017087.P1317585528001634179

`A016813(2*n)*A016814(2*n)*A016820(2*n)`
-/

namespace A017087.P1317585528001634179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016814 (2 * n) * A016820 (2 * n)

end

end A017087.P1317585528001634179

/-! ## A017087.P13459062640161552851

`A016763(4*n)`
-/

namespace A017087.P13459062640161552851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (4 * n)

end

end A017087.P13459062640161552851

/-! ## A017087.P18270479561846745566

`A008455(A016813(2*n))`
-/

namespace A017087.P18270479561846745566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n)).toNat

end

end A017087.P18270479561846745566

/-! ## A017087.P11802604639458596688

`A008455(A016993(n)+n)`
-/

namespace A017087.P11802604639458596688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + (n : ℤ)).toNat

end

end A017087.P11802604639458596688

/-! ## A017087.P9511251854674877555

`A008455(A008591(n)+1-n)`
-/

namespace A017087.P9511251854674877555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 n + (1 - (n : ℤ))).toNat

end

end A017087.P9511251854674877555

/-! ## A017087.P7208567547684802960

`A008455(1-(n-A008591(n)))`
-/

namespace A017087.P7208567547684802960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (1 - ((n : ℤ) - A008591 n)).toNat

end

end A017087.P7208567547684802960

/-! ## A017087.P3732519262249049410

`A008455(A017281(n)-2*n)`
-/

namespace A017087.P3732519262249049410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n - (2 * n : ℤ)).toNat

end

end A017087.P3732519262249049410

/-! ## A017087.P3491589548203754883

`A008455(A017281(n)-n-n)`
-/

namespace A017087.P3491589548203754883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017087.P3491589548203754883

/-! ## A017087.P7087629679144756067

`A008455(A008588(n)+2*n+1)`
-/

namespace A017087.P7087629679144756067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 n + (2 * n + 1 : ℤ)).toNat

end

end A017087.P7087629679144756067

/-! ## A017087.P10803327927981080149

`A008455(A008585(2*n)+2*n+1)`
-/

namespace A017087.P10803327927981080149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A017087.P10803327927981080149

/-! ## A017087.P3978863381604106557

`A008455(A016813(n)-(1-A016813(n)))`
-/

namespace A017087.P3978863381604106557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n - (1 - A016813 n)).toNat

end

end A017087.P3978863381604106557

/-!
# A017088: 

The programs for A017088, there is no canonical definition to state claims against.
-/

/-! ## A017088.P4968326750848588587

`(8*n+1)^12`
-/

namespace A017088.P4968326750848588587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 1) ^ 12

end

end A017088.P4968326750848588587

/-! ## A017088.P94110951607683781

`A017082(n)²`
-/

namespace A017088.P94110951607683781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017082 n ^ 2

end

end A017088.P94110951607683781

/-! ## A017088.P4227812590102403087

`(A017077(n)^3)²²`
-/

namespace A017088.P4227812590102403087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017077 n ^ 3) ^ 2) ^ 2

end

end A017088.P4227812590102403087

/-! ## A017088.P18356114661002545788

`sqrt(A017084(n))*A017084(n)`
-/

namespace A017088.P18356114661002545788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017084 n : ℝ) * (A017084 n : ℝ)

end

end A017088.P18356114661002545788

/-! ## A017088.P4600672318442234214

`A016813(2*n)*A016823(2*n)`
-/

namespace A017088.P4600672318442234214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) * A016823 (2 * n)

end

end A017088.P4600672318442234214

/-! ## A017088.P4251783400748742988

`A016813(2*n)²*A016822(2*n)`
-/

namespace A017088.P4251783400748742988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) ^ 2 * A016822 (2 * n)

end

end A017088.P4251783400748742988

/-! ## A017088.P16066389777165226185

`A016813(2*n)²²*A016820(2*n)`
-/

namespace A017088.P16066389777165226185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016813 (2 * n) ^ 2) ^ 2 * A016820 (2 * n)

end

end A017088.P16066389777165226185

/-! ## A017088.P14429802461699190651

`A016764(4*n)`
-/

namespace A017088.P14429802461699190651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016764 (4 * n)

end

end A017088.P14429802461699190651

/-! ## A017088.P3536550938155286578

`A016758(4*n)²`
-/

namespace A017088.P3536550938155286578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 (4 * n) ^ 2

end

end A017088.P3536550938155286578

/-! ## A017088.P9624689331587550553

`A016755(2*2*n)²²`
-/

namespace A017088.P9624689331587550553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016755 (2 * (2 * n)) ^ 2) ^ 2

end

end A017088.P9624689331587550553

/-! ## A017088.P8545297664963050582

`sqrt(A017084(n)^3)`
-/

namespace A017088.P8545297664963050582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017084 n ^ 3 : ℝ)

end

end A017088.P8545297664963050582

/-! ## A017088.P3116597648790707295

`A008456(A008591(n)+1-n)`
-/

namespace A017088.P3116597648790707295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008591 n + (1 - (n : ℤ))).toNat

end

end A017088.P3116597648790707295

/-! ## A017088.P5737321897905196788

`A000578(A008590(n)+1)²²`
-/

namespace A017088.P5737321897905196788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A008590 n + 1).toNat ^ 2) ^ 2

end

end A017088.P5737321897905196788

/-! ## A017088.P15399805930451294655

`A000578(A017089(n)-1)²²`
-/

namespace A017088.P15399805930451294655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017089 n - 1).toNat ^ 2) ^ 2

end

end A017088.P15399805930451294655

/-! ## A017088.P6390147863396286338

`A000578(A016813(2*n))²²`
-/

namespace A017088.P6390147863396286338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016813 (2 * n)).toNat ^ 2) ^ 2

end

end A017088.P6390147863396286338

/-!
# A017089: a(n) = 8*n + 2.

The programs for A017089, the canonical program `A017089.P13709942329986306669` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017089 has offset 0).

The definition of A017089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+2` (program `A017089.P13709942329986306669`, by `A017089.P13709942329986306669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017089.P13709942329986306669

`8*n+2`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017089

/-- `8*n+2` -/
def P13709942329986306669.Spec : Prop :=
  ∀ n, (P13709942329986306669.a n : ℤ) = A017089 n

theorem P13709942329986306669.correct : P13709942329986306669.Spec := by
  intro n
  simp only [A017089]

end A017089

/-!
# A017090: a(n) = (8*n + 2)^2.

The programs for A017090, the canonical program `A017090.P12898225331554019596` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017090 has offset 0).

The definition of A017090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)²` (program `A017090.P12898225331554019596`, by `A017090.P12898225331554019596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017090.P12898225331554019596

`(8*n+2)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017090

/-- `(8*n+2)²` -/
def P12898225331554019596.Spec : Prop :=
  ∀ n, (P12898225331554019596.a n : ℤ) = A017090 n

theorem P12898225331554019596.correct : P12898225331554019596.Spec := by
  intro n
  simp only [A017090]

end A017090

/-! ## A017090.P9351009387630599265

`record[(2-lcm(4, n))²]`
-/

namespace A017090.P9351009387630599265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.lcm 4 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017090.P9351009387630599265

namespace A017090

/-- `record[(2-lcm(4, n))²]` -/
def P9351009387630599265.Spec : Prop :=
  ∀ n, P9351009387630599265.a n = A017090 n

end A017090

/-! ## A017090.P1934296698907561092

`4*or(1, 4*n)²`
-/

namespace A017090.P1934296698907561092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lor 1 (4 * n) ^ 2

end

end A017090.P1934296698907561092

namespace A017090

/-- `4*or(1, 4*n)²` -/
def P1934296698907561092.Spec : Prop :=
  ∀ n, (P1934296698907561092.a n : ℤ) = A017090 n

end A017090

/-! ## A017090.P13915918563953153241

`4*xor(1, 4*n)²`
-/

namespace A017090.P13915918563953153241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.xor 1 (4 * n) ^ 2

end

end A017090.P13915918563953153241

namespace A017090

/-- `4*xor(1, 4*n)²` -/
def P13915918563953153241.Spec : Prop :=
  ∀ n, (P13915918563953153241.a n : ℤ) = A017090 n

end A017090

/-! ## A017090.P6317689324530221558

`record[lcm(2, or(2, -n))²]`
-/

namespace A017090.P6317689324530221558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.lor 2 (-(n : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017090.P6317689324530221558

namespace A017090

/-- `record[lcm(2, or(2, -n))²]` -/
def P6317689324530221558.Spec : Prop :=
  ∀ n, (P6317689324530221558.a n : ℤ) = A017090 n

end A017090

/-! ## A017090.P12055332099468772915

`4*Δ[C(2*n, 2)]²`
-/

namespace A017090.P12055332099468772915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A017090.P12055332099468772915

namespace A017090

/-- `4*Δ[C(2*n, 2)]²` -/
def P12055332099468772915.Spec : Prop :=
  ∀ n, P12055332099468772915.a n = A017090 n

theorem P12055332099468772915.correct : P12055332099468772915.Spec := by
  intro n
  simp only [A017090, Nat.add_sub_cancel, A017090.P12055332099468772915.f1, A017090.P12055332099468772915.a, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017090

/-! ## A017090.P8703328221595472743

`record[(gcd(8, 2-n)+n)²]`
-/

namespace A017090.P8703328221595472743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 8 (2 - (n : ℤ)) + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017090.P8703328221595472743

namespace A017090

/-- `record[(gcd(8, 2-n)+n)²]` -/
def P8703328221595472743.Spec : Prop :=
  ∀ n, (P8703328221595472743.a n : ℤ) = A017090 n

end A017090

/-! ## A017090.P7715488903095341746

`record[gcd(n+2, n%8)²]`
-/

namespace A017090.P7715488903095341746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (n % 8) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017090.P7715488903095341746

namespace A017090

/-- `record[gcd(n+2, n%8)²]` -/
def P7715488903095341746.Spec : Prop :=
  ∀ n, (P7715488903095341746.a n : ℤ) = A017090 n

end A017090

/-! ## A017090.P4164627773052604461

`sqrt(A017092(n))`
-/

namespace A017090.P4164627773052604461
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017092 n : ℝ)

end

end A017090.P4164627773052604461

namespace A017090

/-- `sqrt(A017092(n))` -/
def P4164627773052604461.Spec : Prop :=
  ∀ n, P4164627773052604461.a n = (A017090 n : ℝ)

end A017090

/-! ## A017090.P5214170096039343551

`4*A016814(n)`
-/

namespace A017090.P5214170096039343551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016814 n

end

end A017090.P5214170096039343551

namespace A017090

/-- `4*A016814(n)` -/
def P5214170096039343551.Spec : Prop :=
  ∀ n, P5214170096039343551.a n = A017090 n

theorem P5214170096039343551.correct : P5214170096039343551.Spec := by
  intro n
  simp only [A017090, Nat.add_sub_cancel, A017090.P5214170096039343551.a, A017090.P12898225331554019596.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017090

/-! ## A017090.P10504444660343918251

`sqrt(sqrt(A017096(n)))`
-/

namespace A017090.P10504444660343918251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017096 n : ℝ))

end

end A017090.P10504444660343918251

namespace A017090

/-- `sqrt(sqrt(A017096(n)))` -/
def P10504444660343918251.Spec : Prop :=
  ∀ n, P10504444660343918251.a n = (A017090 n : ℝ)

end A017090

/-! ## A017090.P6781866291780027404

`4*A016813(n)²`
-/

namespace A017090.P6781866291780027404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016813 n ^ 2

end

end A017090.P6781866291780027404

namespace A017090

/-- `4*A016813(n)²` -/
def P6781866291780027404.Spec : Prop :=
  ∀ n, P6781866291780027404.a n = A017090 n

theorem P6781866291780027404.correct : P6781866291780027404.Spec := by
  intro n
  simp only [A017090, Nat.add_sub_cancel, A017090.P6781866291780027404.a, A017090.P12898225331554019596.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017090

/-! ## A017090.P14176960072765829406

`4*sqrt(A016816(n))`
-/

namespace A017090.P14176960072765829406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016816 n : ℝ)

end

end A017090.P14176960072765829406

namespace A017090

/-- `4*sqrt(A016816(n))` -/
def P14176960072765829406.Spec : Prop :=
  ∀ n, P14176960072765829406.a n = (A017090 n : ℝ)

end A017090

/-! ## A017090.P12533843029732564667

`A017094(n)^(1/3)`
-/

namespace A017090.P12533843029732564667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017094 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017090.P12533843029732564667

namespace A017090

/-- `A017094(n)^(1/3)` -/
def P12533843029732564667.Spec : Prop :=
  ∀ n, P12533843029732564667.a n = (A017090 n : ℝ)

end A017090

/-! ## A017090.P10332562793908925352

`A017091(n)^(2/3)`
-/

namespace A017090.P10332562793908925352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017091 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017090.P10332562793908925352

namespace A017090

/-- `A017091(n)^(2/3)` -/
def P10332562793908925352.Spec : Prop :=
  ∀ n, P10332562793908925352.a n = (A017090 n : ℝ)

end A017090

/-! ## A017090.P9624859054854709596

`A119413(n+1)²/4`
-/

namespace A017090.P9624859054854709596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119413 (n + 1) ^ 2 : ℚ) / 4

end

end A017090.P9624859054854709596

namespace A017090

/-- `A119413(n+1)²/4` -/
def P9624859054854709596.Spec : Prop :=
  ∀ n, P9624859054854709596.a n = (A017090 n : ℚ)

theorem P9624859054854709596.correct : P9624859054854709596.Spec := by
  intro n
  simp only [A017090, Nat.add_sub_cancel, A017090.P9624859054854709596.a, A017090.P12898225331554019596.a, A119413, A119413.P2366630370367449973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017090

/-! ## A017090.P414780190509540642

`A017089(n)*A017089(n)`
-/

namespace A017090.P414780190509540642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017089 n

end

end A017090.P414780190509540642

namespace A017090

/-- `A017089(n)*A017089(n)` -/
def P414780190509540642.Spec : Prop :=
  ∀ n, P414780190509540642.a n = A017090 n

theorem P414780190509540642.correct : P414780190509540642.Spec := by
  intro n
  simp only [A017090, Nat.add_sub_cancel, A017090.P414780190509540642.a, A017090.P12898225331554019596.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017090

/-! ## A017090.P6618004154747839228

`A017091(n)/A017089(n)`
-/

namespace A017090.P6618004154747839228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017091 n : ℚ) / (A017089 n : ℚ)

end

end A017090.P6618004154747839228

namespace A017090

/-- `A017091(n)/A017089(n)` -/
def P6618004154747839228.Spec : Prop :=
  ∀ n, P6618004154747839228.a n = (A017090 n : ℚ)

end A017090

/-! ## A017090.P6197728176954567094

`A017093(n)/A017091(n)`
-/

namespace A017090.P6197728176954567094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n : ℚ) / (A017091 n : ℚ)

end

end A017090.P6197728176954567094

namespace A017090

/-- `A017093(n)/A017091(n)` -/
def P6197728176954567094.Spec : Prop :=
  ∀ n, P6197728176954567094.a n = (A017090 n : ℚ)

end A017090

/-! ## A017090.P13302685467682608838

`A017094(n)/A017092(n)`
-/

namespace A017090.P13302685467682608838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017094 n : ℚ) / (A017092 n : ℚ)

end

end A017090.P13302685467682608838

namespace A017090

/-- `A017094(n)/A017092(n)` -/
def P13302685467682608838.Spec : Prop :=
  ∀ n, P13302685467682608838.a n = (A017090 n : ℚ)

end A017090

/-!
# A017091: a(n) = (8*n + 2)^3.

The programs for A017091, the canonical program `A017091.P5438283382663161292` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017091 has offset 0).

The definition of A017091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^3` (program `A017091.P5438283382663161292`, by `A017091.P5438283382663161292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017091.P5438283382663161292

`(8*n+2)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017091

/-- `(8*n+2)^3` -/
def P5438283382663161292.Spec : Prop :=
  ∀ n, (P5438283382663161292.a n : ℤ) = A017091 n

theorem P5438283382663161292.correct : P5438283382663161292.Spec := by
  intro n
  simp only [A017091]

end A017091

/-! ## A017091.P5768991569176900751

`record[(lcm(4, n+1)-2)^3]`
-/

namespace A017091.P5768991569176900751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017091.P5768991569176900751

namespace A017091

/-- `record[(lcm(4, n+1)-2)^3]` -/
def P5768991569176900751.Spec : Prop :=
  ∀ n, P5768991569176900751.a n = A017091 n

end A017091

/-! ## A017091.P1102594296452171414

`8*record[xor(3, or(2, n))^3]`
-/

namespace A017091.P1102594296452171414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017091.P1102594296452171414

namespace A017091

/-- `8*record[xor(3, or(2, n))^3]` -/
def P1102594296452171414.Spec : Prop :=
  ∀ n, (P1102594296452171414.a n : ℤ) = A017091 n

end A017091

/-! ## A017091.P14896634296425180399

`lcm(8, record[xor(3, or(2, n))^3])`
-/

namespace A017091.P14896634296425180399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A017091.P14896634296425180399

namespace A017091

/-- `lcm(8, record[xor(3, or(2, n))^3])` -/
def P14896634296425180399.Spec : Prop :=
  ∀ n, (P14896634296425180399.a n : ℤ) = A017091 n

end A017091

/-! ## A017091.P17111551672519278037

`sqrt(A017094(n))`
-/

namespace A017091.P17111551672519278037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017094 n : ℝ)

end

end A017091.P17111551672519278037

namespace A017091

/-- `sqrt(A017094(n))` -/
def P17111551672519278037.Spec : Prop :=
  ∀ n, P17111551672519278037.a n = (A017091 n : ℝ)

end A017091

/-! ## A017091.P15706904522656907741

`8*A016815(n)`
-/

namespace A017091.P15706904522656907741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016815 n

end

end A017091.P15706904522656907741

namespace A017091

/-- `8*A016815(n)` -/
def P15706904522656907741.Spec : Prop :=
  ∀ n, P15706904522656907741.a n = A017091 n

theorem P15706904522656907741.correct : P15706904522656907741.Spec := by
  intro n
  simp only [A017091, Nat.add_sub_cancel, A017091.P15706904522656907741.a, A017091.P5438283382663161292.a, A016815, A016815.P10670090077902171970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017091

/-! ## A017091.P12119082844155052340

`sqrt(A017090(n)^3)`
-/

namespace A017091.P12119082844155052340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017090 n ^ 3 : ℝ)

end

end A017091.P12119082844155052340

namespace A017091

/-- `sqrt(A017090(n)^3)` -/
def P12119082844155052340.Spec : Prop :=
  ∀ n, P12119082844155052340.a n = (A017091 n : ℝ)

end A017091

/-! ## A017091.P3318120623427374291

`A017089(n)*A017090(n)`
-/

namespace A017091.P3318120623427374291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017090 n

end

end A017091.P3318120623427374291

namespace A017091

/-- `A017089(n)*A017090(n)` -/
def P3318120623427374291.Spec : Prop :=
  ∀ n, P3318120623427374291.a n = A017091 n

theorem P3318120623427374291.correct : P3318120623427374291.Spec := by
  intro n
  simp only [A017091, Nat.add_sub_cancel, A017091.P3318120623427374291.a, A017091.P5438283382663161292.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017091

/-! ## A017091.P12377476988611742414

`A017092(n)/A017089(n)`
-/

namespace A017091.P12377476988611742414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n : ℚ) / (A017089 n : ℚ)

end

end A017091.P12377476988611742414

namespace A017091

/-- `A017092(n)/A017089(n)` -/
def P12377476988611742414.Spec : Prop :=
  ∀ n, P12377476988611742414.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P5779730930801925223

`A017093(n)/A017090(n)`
-/

namespace A017091.P5779730930801925223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n : ℚ) / (A017090 n : ℚ)

end

end A017091.P5779730930801925223

namespace A017091

/-- `A017093(n)/A017090(n)` -/
def P5779730930801925223.Spec : Prop :=
  ∀ n, P5779730930801925223.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P12015784085306933081

`A017095(n)/A017092(n)`
-/

namespace A017091.P12015784085306933081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017092 n : ℚ)

end

end A017091.P12015784085306933081

namespace A017091

/-- `A017095(n)/A017092(n)` -/
def P12015784085306933081.Spec : Prop :=
  ∀ n, P12015784085306933081.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P36875011348162884

`A017092(n)²/A017093(n)`
-/

namespace A017091.P36875011348162884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n ^ 2 : ℚ) / (A017093 n : ℚ)

end

end A017091.P36875011348162884

namespace A017091

/-- `A017092(n)²/A017093(n)` -/
def P36875011348162884.Spec : Prop :=
  ∀ n, P36875011348162884.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P8060485784049110648

`A017093(n)/A017089(n)²`
-/

namespace A017091.P8060485784049110648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n : ℚ) / (A017089 n ^ 2 : ℚ)

end

end A017091.P8060485784049110648

namespace A017091

/-- `A017093(n)/A017089(n)²` -/
def P8060485784049110648.Spec : Prop :=
  ∀ n, P8060485784049110648.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P3026185246713854034

`A017093(n)²/A017095(n)`
-/

namespace A017091.P3026185246713854034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n ^ 2 : ℚ) / (A017095 n : ℚ)

end

end A017091.P3026185246713854034

namespace A017091

/-- `A017093(n)²/A017095(n)` -/
def P3026185246713854034.Spec : Prop :=
  ∀ n, P3026185246713854034.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P12436659596203661134

`A017095(n)/A017090(n)²`
-/

namespace A017091.P12436659596203661134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017090 n ^ 2 : ℚ)

end

end A017091.P12436659596203661134

namespace A017091

/-- `A017095(n)/A017090(n)²` -/
def P12436659596203661134.Spec : Prop :=
  ∀ n, P12436659596203661134.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P3971912997674022451

`A016814(n)*A305075(n+1)`
-/

namespace A017091.P3971912997674022451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n * A305075 (n + 1)

end

end A017091.P3971912997674022451

namespace A017091

/-- `A016814(n)*A305075(n+1)` -/
def P3971912997674022451.Spec : Prop :=
  ∀ n, P3971912997674022451.a n = A017091 n

theorem P3971912997674022451.correct : P3971912997674022451.Spec := by
  intro n
  simp only [A017091, Nat.add_sub_cancel, A017091.P3971912997674022451.a, A017091.P5438283382663161292.a, A016814, A016814.P5668709183610020667.a, A305075, A305075.P8646303328831969502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017091

/-! ## A017091.P9153351846818789418

`lcm(A016815(n), A305075(n+1))`
-/

namespace A017091.P9153351846818789418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016815 n) (A305075 (n + 1))

end

end A017091.P9153351846818789418

namespace A017091

/-- `lcm(A016815(n), A305075(n+1))` -/
def P9153351846818789418.Spec : Prop :=
  ∀ n, (P9153351846818789418.a n : ℤ) = A017091 n

end A017091

/-! ## A017091.P13446257400882441618

`A017095(n)/A017089(n)²²`
-/

namespace A017091.P13446257400882441618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / ((A017089 n ^ 2) ^ 2 : ℚ)

end

end A017091.P13446257400882441618

namespace A017091

/-- `A017095(n)/A017089(n)²²` -/
def P13446257400882441618.Spec : Prop :=
  ∀ n, P13446257400882441618.a n = (A017091 n : ℚ)

end A017091

/-! ## A017091.P15849659726149052091

`Δ[A002939(n)]²*Δ[A002939(n)]`
-/

namespace A017091.P15849659726149052091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017091.P15849659726149052091

namespace A017091

/-- `Δ[A002939(n)]²*Δ[A002939(n)]` -/
def P15849659726149052091.Spec : Prop :=
  ∀ n, P15849659726149052091.a n = A017091 n

theorem P15849659726149052091.correct : P15849659726149052091.Spec := by
  intro n
  simp only [A017091, Nat.add_sub_cancel, A017091.P15849659726149052091.f1, A017091.P15849659726149052091.f2, A017091.P15849659726149052091.a, A017091.P5438283382663161292.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017091

/-!
# A017092: a(n) = (8*n + 2)^4.

The programs for A017092, the canonical program `A017092.P16780752070542581176` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017092 has offset 0).

The definition of A017092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^4` (program `A017092.P16780752070542581176`, by `A017092.P16780752070542581176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017092.P16780752070542581176

`(8*n+2)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017092

/-- `(8*n+2)^4` -/
def P16780752070542581176.Spec : Prop :=
  ∀ n, (P16780752070542581176.a n : ℤ) = A017092 n

theorem P16780752070542581176.correct : P16780752070542581176.Spec := by
  intro n
  simp only [A017092]

end A017092

/-! ## A017092.P16991385285967053513

`or(2, 8*n)²²`
-/

namespace A017092.P16991385285967053513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (8 * n) ^ 2) ^ 2

end

end A017092.P16991385285967053513

namespace A017092

/-- `or(2, 8*n)²²` -/
def P16991385285967053513.Spec : Prop :=
  ∀ n, (P16991385285967053513.a n : ℤ) = A017092 n

end A017092

/-! ## A017092.P6060287220433901713

`xor(2, 8*n)²²`
-/

namespace A017092.P6060287220433901713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (8 * n) ^ 2) ^ 2

end

end A017092.P6060287220433901713

namespace A017092

/-- `xor(2, 8*n)²²` -/
def P6060287220433901713.Spec : Prop :=
  ∀ n, (P6060287220433901713.a n : ℤ) = A017092 n

end A017092

/-! ## A017092.P17344365898429042136

`record[(2-lcm(4, n))^4]`
-/

namespace A017092.P17344365898429042136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.lcm 4 n : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017092.P17344365898429042136

namespace A017092

/-- `record[(2-lcm(4, n))^4]` -/
def P17344365898429042136.Spec : Prop :=
  ∀ n, P17344365898429042136.a n = A017092 n

end A017092

/-! ## A017092.P258981038601373743

`lcm(2, (8*n+2)²²)`
-/

namespace A017092.P258981038601373743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (((8 * n + 2) ^ 2) ^ 2)

end

end A017092.P258981038601373743

namespace A017092

/-- `lcm(2, (8*n+2)²²)` -/
def P258981038601373743.Spec : Prop :=
  ∀ n, (P258981038601373743.a n : ℤ) = A017092 n

end A017092

/-! ## A017092.P6854297147070507551

`Δ[2*C(2*n, 2)]²²`
-/

namespace A017092.P6854297147070507551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017092.P6854297147070507551

namespace A017092

/-- `Δ[2*C(2*n, 2)]²²` -/
def P6854297147070507551.Spec : Prop :=
  ∀ n, P6854297147070507551.a n = A017092 n

theorem P6854297147070507551.correct : P6854297147070507551.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P6854297147070507551.f1, A017092.P6854297147070507551.a, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017092

/-! ## A017092.P6643765185817310122

`(8*n%(n+1)+2)²²`
-/

namespace A017092.P6643765185817310122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((8 * (n % (n + 1)) + 2) ^ 2) ^ 2

end

end A017092.P6643765185817310122

namespace A017092

/-- `(8*n%(n+1)+2)²²` -/
def P6643765185817310122.Spec : Prop :=
  ∀ n, (P6643765185817310122.a n : ℤ) = A017092 n

theorem P6643765185817310122.correct : P6643765185817310122.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P6643765185817310122.a, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017092

/-! ## A017092.P746852759283699432

`4*4*record[xor(3, or(2, n))^4]`
-/

namespace A017092.P746852759283699432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.lor 2 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A017092.P746852759283699432

namespace A017092

/-- `4*4*record[xor(3, or(2, n))^4]` -/
def P746852759283699432.Spec : Prop :=
  ∀ n, (P746852759283699432.a n : ℤ) = A017092 n

end A017092

/-! ## A017092.P14190369547340567785

`Δ[lcm(1-2*n, 2*n)]²²`
-/

namespace A017092.P14190369547340567785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * n : ℤ)) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017092.P14190369547340567785

namespace A017092

/-- `Δ[lcm(1-2*n, 2*n)]²²` -/
def P14190369547340567785.Spec : Prop :=
  ∀ n, P14190369547340567785.a n = A017092 n

end A017092

/-! ## A017092.P8868113961620562911

`(gcd(2, 2*n)-Δ[(2*n)²])²²`
-/

namespace A017092.P8868113961620562911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.gcd 2 (2 * n) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017092.P8868113961620562911

namespace A017092

/-- `(gcd(2, 2*n)-Δ[(2*n)²])²²` -/
def P8868113961620562911.Spec : Prop :=
  ∀ n, P8868113961620562911.a n = A017092 n

theorem P8868113961620562911.correct : P8868113961620562911.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P8868113961620562911.f1, A017092.P8868113961620562911.a, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017092

/-! ## A017092.P11936954786424733180

`(2-Δ[and(2*n+1, 2*n)²])²²`
-/

namespace A017092.P11936954786424733180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2) ^ 2

end

end A017092.P11936954786424733180

namespace A017092

/-- `(2-Δ[and(2*n+1, 2*n)²])²²` -/
def P11936954786424733180.Spec : Prop :=
  ∀ n, P11936954786424733180.a n = A017092 n

end A017092

/-! ## A017092.P18402106730564337172

`(2*(C(2*n+1, 2*n)+2*n))²²`
-/

namespace A017092.P18402106730564337172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.choose (2 * n + 1) (2 * n) + 2 * n)) ^ 2) ^ 2

end

end A017092.P18402106730564337172

namespace A017092

/-- `(2*(C(2*n+1, 2*n)+2*n))²²` -/
def P18402106730564337172.Spec : Prop :=
  ∀ n, (P18402106730564337172.a n : ℤ) = A017092 n

theorem P18402106730564337172.correct : P18402106730564337172.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P18402106730564337172.a, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017092

/-! ## A017092.P10122697527350285161

`(2*(and(2*n+1, 2*n)+2*n+1))²²`
-/

namespace A017092.P10122697527350285161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.land (2 * n + 1) (2 * n) + (2 * n + 1))) ^ 2) ^ 2

end

end A017092.P10122697527350285161

namespace A017092

/-- `(2*(and(2*n+1, 2*n)+2*n+1))²²` -/
def P10122697527350285161.Spec : Prop :=
  ∀ n, (P10122697527350285161.a n : ℤ) = A017092 n

end A017092

/-! ## A017092.P15180066719515686169

`A017090(n)²`
-/

namespace A017092.P15180066719515686169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n ^ 2

end

end A017092.P15180066719515686169

namespace A017092

/-- `A017090(n)²` -/
def P15180066719515686169.Spec : Prop :=
  ∀ n, P15180066719515686169.a n = A017092 n

theorem P15180066719515686169.correct : P15180066719515686169.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P15180066719515686169.a, A017092.P16780752070542581176.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017092

/-! ## A017092.P866160574877830258

`sqrt(A017096(n))`
-/

namespace A017092.P866160574877830258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017096 n : ℝ)

end

end A017092.P866160574877830258

namespace A017092

/-- `sqrt(A017096(n))` -/
def P866160574877830258.Spec : Prop :=
  ∀ n, P866160574877830258.a n = (A017092 n : ℝ)

end A017092

/-! ## A017092.P9090869699105498231

`A017089(n)²²`
-/

namespace A017092.P9090869699105498231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n ^ 2) ^ 2

end

end A017092.P9090869699105498231

namespace A017092

/-- `A017089(n)²²` -/
def P9090869699105498231.Spec : Prop :=
  ∀ n, P9090869699105498231.a n = A017092 n

theorem P9090869699105498231.correct : P9090869699105498231.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P9090869699105498231.a, A017092.P16780752070542581176.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017092

/-! ## A017092.P4416037933447184707

`(4*A016814(n))²`
-/

namespace A017092.P4416037933447184707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016814 n) ^ 2

end

end A017092.P4416037933447184707

namespace A017092

/-- `(4*A016814(n))²` -/
def P4416037933447184707.Spec : Prop :=
  ∀ n, P4416037933447184707.a n = A017092 n

theorem P4416037933447184707.correct : P4416037933447184707.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P4416037933447184707.a, A017092.P16780752070542581176.a, A016814, A016814.P5668709183610020667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017092

/-! ## A017092.P15995537568925611339

`Δ[A002939(n)]²²`
-/

namespace A017092.P15995537568925611339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017092.P15995537568925611339

namespace A017092

/-- `Δ[A002939(n)]²²` -/
def P15995537568925611339.Spec : Prop :=
  ∀ n, P15995537568925611339.a n = A017092 n

theorem P15995537568925611339.correct : P15995537568925611339.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P15995537568925611339.f1, A017092.P15995537568925611339.a, A017092.P16780752070542581176.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017092

/-! ## A017092.P3498009138785683292

`4*4*A016816(n)`
-/

namespace A017092.P3498009138785683292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A016816 n)

end

end A017092.P3498009138785683292

namespace A017092

/-- `4*4*A016816(n)` -/
def P3498009138785683292.Spec : Prop :=
  ∀ n, P3498009138785683292.a n = A017092 n

theorem P3498009138785683292.correct : P3498009138785683292.Spec := by
  intro n
  simp only [A017092, Nat.add_sub_cancel, A017092.P3498009138785683292.a, A017092.P16780752070542581176.a, A016816, A016816.P12433774529613122654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017092

/-!
# A017093: a(n) = (8*n + 2)^5.

The programs for A017093, the canonical program `A017093.P14270033943114759403` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017093 has offset 0).

The definition of A017093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^5` (program `A017093.P14270033943114759403`, by `A017093.P14270033943114759403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017093.P14270033943114759403

`(8*n+2)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017093

/-- `(8*n+2)^5` -/
def P14270033943114759403.Spec : Prop :=
  ∀ n, (P14270033943114759403.a n : ℤ) = A017093 n

theorem P14270033943114759403.correct : P14270033943114759403.Spec := by
  intro n
  simp only [A017093]

end A017093

/-! ## A017093.P10149643700092319404

`record[(lcm(4, n+1)-2)^5]`
-/

namespace A017093.P10149643700092319404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 1) : ℤ) - 2) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017093.P10149643700092319404

namespace A017093

/-- `record[(lcm(4, n+1)-2)^5]` -/
def P10149643700092319404.Spec : Prop :=
  ∀ n, P10149643700092319404.a n = A017093 n

end A017093

/-! ## A017093.P8493009304795273031

`sqrt(A017098(n))`
-/

namespace A017093.P8493009304795273031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017098 n : ℝ)

end

end A017093.P8493009304795273031

namespace A017093

/-- `sqrt(A017098(n))` -/
def P8493009304795273031.Spec : Prop :=
  ∀ n, P8493009304795273031.a n = (A017093 n : ℝ)

end A017093

/-! ## A017093.P11479898632727942827

`sqrt(A017090(n)^5)`
-/

namespace A017093.P11479898632727942827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017090 n ^ 5 : ℝ)

end

end A017093.P11479898632727942827

namespace A017093

/-- `sqrt(A017090(n)^5)` -/
def P11479898632727942827.Spec : Prop :=
  ∀ n, P11479898632727942827.a n = (A017093 n : ℝ)

end A017093

/-! ## A017093.P16403071361723812640

`(8*n+2)*A017092(n)`
-/

namespace A017093.P16403071361723812640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 2 : ℤ) * A017092 n

end

end A017093.P16403071361723812640

namespace A017093

/-- `(8*n+2)*A017092(n)` -/
def P16403071361723812640.Spec : Prop :=
  ∀ n, P16403071361723812640.a n = A017093 n

theorem P16403071361723812640.correct : P16403071361723812640.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P16403071361723812640.a, A017093.P14270033943114759403.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P12129650350008403433

`round(sqrt(Δ[A002939(n)]^10+1))`
-/

namespace A017093.P12129650350008403433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n) ^ 10 + 1 : ℝ))

end

end A017093.P12129650350008403433

namespace A017093

/-- `round(sqrt(Δ[A002939(n)]^10+1))` -/
def P12129650350008403433.Spec : Prop :=
  ∀ n, P12129650350008403433.a n = A017093 n

end A017093

/-! ## A017093.P11356835800994440238

`A017090(n)*A017091(n)`
-/

namespace A017093.P11356835800994440238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n * A017091 n

end

end A017093.P11356835800994440238

namespace A017093

/-- `A017090(n)*A017091(n)` -/
def P11356835800994440238.Spec : Prop :=
  ∀ n, P11356835800994440238.a n = A017093 n

theorem P11356835800994440238.correct : P11356835800994440238.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P11356835800994440238.a, A017093.P14270033943114759403.a, A017090, A017090.P12898225331554019596.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P8240326967231354265

`A017094(n)/A017089(n)`
-/

namespace A017093.P8240326967231354265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017094 n : ℚ) / (A017089 n : ℚ)

end

end A017093.P8240326967231354265

namespace A017093

/-- `A017094(n)/A017089(n)` -/
def P8240326967231354265.Spec : Prop :=
  ∀ n, P8240326967231354265.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P3739608134326585330

`A017095(n)/A017090(n)`
-/

namespace A017093.P3739608134326585330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017090 n : ℚ)

end

end A017093.P3739608134326585330

namespace A017093

/-- `A017095(n)/A017090(n)` -/
def P3739608134326585330.Spec : Prop :=
  ∀ n, P3739608134326585330.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P13953480967701633544

`A017089(n)²*A017091(n)`
-/

namespace A017093.P13953480967701633544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n ^ 2 * A017091 n

end

end A017093.P13953480967701633544

namespace A017093

/-- `A017089(n)²*A017091(n)` -/
def P13953480967701633544.Spec : Prop :=
  ∀ n, P13953480967701633544.a n = A017093 n

theorem P13953480967701633544.correct : P13953480967701633544.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P13953480967701633544.a, A017093.P14270033943114759403.a, A017089, A017089.P13709942329986306669.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P8656145982148691901

`A017090(n)²*A017089(n)`
-/

namespace A017093.P8656145982148691901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n ^ 2 * A017089 n

end

end A017093.P8656145982148691901

namespace A017093

/-- `A017090(n)²*A017089(n)` -/
def P8656145982148691901.Spec : Prop :=
  ∀ n, P8656145982148691901.a n = A017093 n

theorem P8656145982148691901.correct : P8656145982148691901.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P8656145982148691901.a, A017093.P14270033943114759403.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P16555165157360329801

`A017092(n)²/A017091(n)`
-/

namespace A017093.P16555165157360329801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n ^ 2 : ℚ) / (A017091 n : ℚ)

end

end A017093.P16555165157360329801

namespace A017093

/-- `A017092(n)²/A017091(n)` -/
def P16555165157360329801.Spec : Prop :=
  ∀ n, P16555165157360329801.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P9517266649865163821

`A017095(n)/A017089(n)²`
-/

namespace A017093.P9517266649865163821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017089 n ^ 2 : ℚ)

end

end A017093.P9517266649865163821

namespace A017093

/-- `A017095(n)/A017089(n)²` -/
def P9517266649865163821.Spec : Prop :=
  ∀ n, P9517266649865163821.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P15367402268164698471

`A017097(n)/A017090(n)²`
-/

namespace A017093.P15367402268164698471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017097 n : ℚ) / (A017090 n ^ 2 : ℚ)

end

end A017093.P15367402268164698471

namespace A017093

/-- `A017097(n)/A017090(n)²` -/
def P15367402268164698471.Spec : Prop :=
  ∀ n, P15367402268164698471.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P3418507301086328976

`A017097(n)/A017089(n)²²`
-/

namespace A017093.P3418507301086328976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017097 n : ℚ) / ((A017089 n ^ 2) ^ 2 : ℚ)

end

end A017093.P3418507301086328976

namespace A017093

/-- `A017097(n)/A017089(n)²²` -/
def P3418507301086328976.Spec : Prop :=
  ∀ n, P3418507301086328976.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P5655860460568651827

`(2*A016814(n))²*A305075(n+1)`
-/

namespace A017093.P5655860460568651827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A016814 n) ^ 2 * A305075 (n + 1)

end

end A017093.P5655860460568651827

namespace A017093

/-- `(2*A016814(n))²*A305075(n+1)` -/
def P5655860460568651827.Spec : Prop :=
  ∀ n, P5655860460568651827.a n = A017093 n

theorem P5655860460568651827.correct : P5655860460568651827.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P5655860460568651827.a, A017093.P14270033943114759403.a, A016814, A016814.P5668709183610020667.a, A305075, A305075.P8646303328831969502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P4268037281706381515

`A305075(n+1)²/2*A016815(n)`
-/

namespace A017093.P4268037281706381515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305075 (n + 1) ^ 2 : ℚ) / 2 * (A016815 n : ℚ)

end

end A017093.P4268037281706381515

namespace A017093

/-- `A305075(n+1)²/2*A016815(n)` -/
def P4268037281706381515.Spec : Prop :=
  ∀ n, P4268037281706381515.a n = (A017093 n : ℚ)

theorem P4268037281706381515.correct : P4268037281706381515.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P4268037281706381515.a, A017093.P14270033943114759403.a, A016815, A016815.P10670090077902171970.a, A305075, A305075.P8646303328831969502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P827369848414638050

`A016825(2*n)²²*A016825(2*n)`
-/

namespace A017093.P827369848414638050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n) ^ 2) ^ 2 * A016825 (2 * n)

end

end A017093.P827369848414638050

namespace A017093

/-- `A016825(2*n)²²*A016825(2*n)` -/
def P827369848414638050.Spec : Prop :=
  ∀ n, P827369848414638050.a n = A017093 n

theorem P827369848414638050.correct : P827369848414638050.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P827369848414638050.a, A017093.P14270033943114759403.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-! ## A017093.P6931717843361145621

`A017092(n)/A017095(n)*A017092(n)²`
-/

namespace A017093.P6931717843361145621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n : ℚ) / (A017095 n : ℚ) * (A017092 n ^ 2 : ℚ)

end

end A017093.P6931717843361145621

namespace A017093

/-- `A017092(n)/A017095(n)*A017092(n)²` -/
def P6931717843361145621.Spec : Prop :=
  ∀ n, P6931717843361145621.a n = (A017093 n : ℚ)

end A017093

/-! ## A017093.P10129023398753271773

`A016825(2*n)*A016828(2*n)`
-/

namespace A017093.P10129023398753271773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n) * A016828 (2 * n)

end

end A017093.P10129023398753271773

namespace A017093

/-- `A016825(2*n)*A016828(2*n)` -/
def P10129023398753271773.Spec : Prop :=
  ∀ n, P10129023398753271773.a n = A017093 n

theorem P10129023398753271773.correct : P10129023398753271773.Spec := by
  intro n
  simp only [A017093, Nat.add_sub_cancel, A017093.P10129023398753271773.a, A017093.P14270033943114759403.a, A016825, A016825.P4712696052905976233.a, A016828, A016828.P5235314446620895365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017093

/-!
# A017094: a(n) = (8*n + 2)^6.

The programs for A017094, the canonical program `A017094.P3149199155794464703` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017094 has offset 0).

The definition of A017094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^6` (program `A017094.P3149199155794464703`, by `A017094.P3149199155794464703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017094.P3149199155794464703

`(8*n+2)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017094

/-- `(8*n+2)^6` -/
def P3149199155794464703.Spec : Prop :=
  ∀ n, (P3149199155794464703.a n : ℤ) = A017094 n

theorem P3149199155794464703.correct : P3149199155794464703.Spec := by
  intro n
  simp only [A017094]

end A017094

/-! ## A017094.P14970066238360370342

`(or(2, 4*2*n)^3)²`
-/

namespace A017094.P14970066238360370342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * (2 * n)) ^ 3) ^ 2

end

end A017094.P14970066238360370342

namespace A017094

/-- `(or(2, 4*2*n)^3)²` -/
def P14970066238360370342.Spec : Prop :=
  ∀ n, (P14970066238360370342.a n : ℤ) = A017094 n

end A017094

/-! ## A017094.P8741711836634714303

`(xor(2, 4*2*n)^3)²`
-/

namespace A017094.P8741711836634714303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * (2 * n)) ^ 3) ^ 2

end

end A017094.P8741711836634714303

namespace A017094

/-- `(xor(2, 4*2*n)^3)²` -/
def P8741711836634714303.Spec : Prop :=
  ∀ n, (P8741711836634714303.a n : ℤ) = A017094 n

end A017094

/-! ## A017094.P13795483409942691441

`A017091(n)²`
-/

namespace A017094.P13795483409942691441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n ^ 2

end

end A017094.P13795483409942691441

namespace A017094

/-- `A017091(n)²` -/
def P13795483409942691441.Spec : Prop :=
  ∀ n, P13795483409942691441.a n = A017094 n

theorem P13795483409942691441.correct : P13795483409942691441.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P13795483409942691441.a, A017094.P3149199155794464703.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P5703481245181691728

`sqrt(A017092(n)^3)`
-/

namespace A017094.P5703481245181691728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017092 n ^ 3 : ℝ)

end

end A017094.P5703481245181691728

namespace A017094

/-- `sqrt(A017092(n)^3)` -/
def P5703481245181691728.Spec : Prop :=
  ∀ n, P5703481245181691728.a n = (A017094 n : ℝ)

end A017094

/-! ## A017094.P4608422267356390667

`(Δ[A002939(n)]^3)²`
-/

namespace A017094.P4608422267356390667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017094.P4608422267356390667

namespace A017094

/-- `(Δ[A002939(n)]^3)²` -/
def P4608422267356390667.Spec : Prop :=
  ∀ n, P4608422267356390667.a n = A017094 n

theorem P4608422267356390667.correct : P4608422267356390667.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P4608422267356390667.f1, A017094.P4608422267356390667.a, A017094.P3149199155794464703.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P4095577383892448397

`(A016825(2*n)^3)²`
-/

namespace A017094.P4095577383892448397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n) ^ 3) ^ 2

end

end A017094.P4095577383892448397

namespace A017094

/-- `(A016825(2*n)^3)²` -/
def P4095577383892448397.Spec : Prop :=
  ∀ n, P4095577383892448397.a n = A017094 n

theorem P4095577383892448397.correct : P4095577383892448397.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P4095577383892448397.a, A017094.P3149199155794464703.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P10884066424194733811

`A017089(n)*A017093(n)`
-/

namespace A017094.P10884066424194733811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017093 n

end

end A017094.P10884066424194733811

namespace A017094

/-- `A017089(n)*A017093(n)` -/
def P10884066424194733811.Spec : Prop :=
  ∀ n, P10884066424194733811.a n = A017094 n

theorem P10884066424194733811.correct : P10884066424194733811.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P10884066424194733811.a, A017094.P3149199155794464703.a, A017089, A017089.P13709942329986306669.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P4171277451982949294

`A017090(n)*A017092(n)`
-/

namespace A017094.P4171277451982949294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n * A017092 n

end

end A017094.P4171277451982949294

namespace A017094

/-- `A017090(n)*A017092(n)` -/
def P4171277451982949294.Spec : Prop :=
  ∀ n, P4171277451982949294.a n = A017094 n

theorem P4171277451982949294.correct : P4171277451982949294.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P4171277451982949294.a, A017094.P3149199155794464703.a, A017090, A017090.P12898225331554019596.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P9996596112393881890

`A017095(n)/A017089(n)`
-/

namespace A017094.P9996596112393881890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017089 n : ℚ)

end

end A017094.P9996596112393881890

namespace A017094

/-- `A017095(n)/A017089(n)` -/
def P9996596112393881890.Spec : Prop :=
  ∀ n, P9996596112393881890.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P18421719973062664128

`A017097(n)/A017091(n)`
-/

namespace A017094.P18421719973062664128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017097 n : ℚ) / (A017091 n : ℚ)

end

end A017094.P18421719973062664128

namespace A017094

/-- `A017097(n)/A017091(n)` -/
def P18421719973062664128.Spec : Prop :=
  ∀ n, P18421719973062664128.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P16140261951870056492

`(A017089(n)*A017090(n))²`
-/

namespace A017094.P16140261951870056492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n * A017090 n) ^ 2

end

end A017094.P16140261951870056492

namespace A017094

/-- `(A017089(n)*A017090(n))²` -/
def P16140261951870056492.Spec : Prop :=
  ∀ n, P16140261951870056492.a n = A017094 n

theorem P16140261951870056492.correct : P16140261951870056492.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P16140261951870056492.a, A017094.P3149199155794464703.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P17638883175429189088

`A017089(n)²*A017092(n)`
-/

namespace A017094.P17638883175429189088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n ^ 2 * A017092 n

end

end A017094.P17638883175429189088

namespace A017094

/-- `A017089(n)²*A017092(n)` -/
def P17638883175429189088.Spec : Prop :=
  ∀ n, P17638883175429189088.a n = A017094 n

theorem P17638883175429189088.correct : P17638883175429189088.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P17638883175429189088.a, A017094.P3149199155794464703.a, A017089, A017089.P13709942329986306669.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-! ## A017094.P8190181779394623429

`(A017093(n)/A017090(n))²`
-/

namespace A017094.P8190181779394623429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017093 n : ℚ) / (A017090 n : ℚ)) ^ 2

end

end A017094.P8190181779394623429

namespace A017094

/-- `(A017093(n)/A017090(n))²` -/
def P8190181779394623429.Spec : Prop :=
  ∀ n, P8190181779394623429.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P8417838749926486240

`A017093(n)²/A017092(n)`
-/

namespace A017094.P8417838749926486240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n ^ 2 : ℚ) / (A017092 n : ℚ)

end

end A017094.P8417838749926486240

namespace A017094

/-- `A017093(n)²/A017092(n)` -/
def P8417838749926486240.Spec : Prop :=
  ∀ n, P8417838749926486240.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P13764137839963623160

`(A017095(n)/A017092(n))²`
-/

namespace A017094.P13764137839963623160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017095 n : ℚ) / (A017092 n : ℚ)) ^ 2

end

end A017094.P13764137839963623160

namespace A017094

/-- `(A017095(n)/A017092(n))²` -/
def P13764137839963623160.Spec : Prop :=
  ∀ n, P13764137839963623160.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P2666161955670713477

`(A017095(n)/A017090(n)²)²`
-/

namespace A017094.P2666161955670713477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017095 n : ℚ) / (A017090 n ^ 2 : ℚ)) ^ 2

end

end A017094.P2666161955670713477

namespace A017094

/-- `(A017095(n)/A017090(n)²)²` -/
def P2666161955670713477.Spec : Prop :=
  ∀ n, P2666161955670713477.a n = (A017094 n : ℚ)

end A017094

/-! ## A017094.P891365112770780063

`A017096(n)/sqrt(sqrt(A017096(n)))`
-/

namespace A017094.P891365112770780063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017096 n : ℝ) / Real.sqrt (Real.sqrt (A017096 n : ℝ))

end

end A017094.P891365112770780063

namespace A017094

/-- `A017096(n)/sqrt(sqrt(A017096(n)))` -/
def P891365112770780063.Spec : Prop :=
  ∀ n, P891365112770780063.a n = (A017094 n : ℝ)

end A017094

/-! ## A017094.P18011713586435619673

`(A016814(n)*A305075(n+1))²`
-/

namespace A017094.P18011713586435619673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016814 n * A305075 (n + 1)) ^ 2

end

end A017094.P18011713586435619673

namespace A017094

/-- `(A016814(n)*A305075(n+1))²` -/
def P18011713586435619673.Spec : Prop :=
  ∀ n, P18011713586435619673.a n = A017094 n

theorem P18011713586435619673.correct : P18011713586435619673.Spec := by
  intro n
  simp only [A017094, Nat.add_sub_cancel, A017094.P18011713586435619673.a, A017094.P3149199155794464703.a, A016814, A016814.P5668709183610020667.a, A305075, A305075.P8646303328831969502.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017094

/-!
# A017095: a(n) = (8*n + 2)^7.

The programs for A017095, the canonical program `A017095.P15550785587980297693` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017095 has offset 0).

The definition of A017095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^7` (program `A017095.P15550785587980297693`, by `A017095.P15550785587980297693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017095.P15550785587980297693

`(8*n+2)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017095

/-- `(8*n+2)^7` -/
def P15550785587980297693.Spec : Prop :=
  ∀ n, (P15550785587980297693.a n : ℤ) = A017095 n

theorem P15550785587980297693.correct : P15550785587980297693.Spec := by
  intro n
  simp only [A017095]

end A017095

/-! ## A017095.P6583065397454948105

`A017089(n)*A017094(n)`
-/

namespace A017095.P6583065397454948105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017094 n

end

end A017095.P6583065397454948105

namespace A017095

/-- `A017089(n)*A017094(n)` -/
def P6583065397454948105.Spec : Prop :=
  ∀ n, P6583065397454948105.a n = A017095 n

theorem P6583065397454948105.correct : P6583065397454948105.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P6583065397454948105.a, A017095.P15550785587980297693.a, A017089, A017089.P13709942329986306669.a, A017094, A017094.P3149199155794464703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P1690931498648886255

`A017090(n)*A017093(n)`
-/

namespace A017095.P1690931498648886255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n * A017093 n

end

end A017095.P1690931498648886255

namespace A017095

/-- `A017090(n)*A017093(n)` -/
def P1690931498648886255.Spec : Prop :=
  ∀ n, P1690931498648886255.a n = A017095 n

theorem P1690931498648886255.correct : P1690931498648886255.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P1690931498648886255.a, A017095.P15550785587980297693.a, A017090, A017090.P12898225331554019596.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P18159294780490688557

`A017091(n)*A017092(n)`
-/

namespace A017095.P18159294780490688557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n * A017092 n

end

end A017095.P18159294780490688557

namespace A017095

/-- `A017091(n)*A017092(n)` -/
def P18159294780490688557.Spec : Prop :=
  ∀ n, P18159294780490688557.a n = A017095 n

theorem P18159294780490688557.correct : P18159294780490688557.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P18159294780490688557.a, A017095.P15550785587980297693.a, A017091, A017091.P5438283382663161292.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P5329396240146115767

`A017097(n)/A017090(n)`
-/

namespace A017095.P5329396240146115767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017097 n : ℚ) / (A017090 n : ℚ)

end

end A017095.P5329396240146115767

namespace A017095

/-- `A017097(n)/A017090(n)` -/
def P5329396240146115767.Spec : Prop :=
  ∀ n, P5329396240146115767.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P4768175195825632228

`A017089(n)²*A017093(n)`
-/

namespace A017095.P4768175195825632228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n ^ 2 * A017093 n

end

end A017095.P4768175195825632228

namespace A017095

/-- `A017089(n)²*A017093(n)` -/
def P4768175195825632228.Spec : Prop :=
  ∀ n, P4768175195825632228.a n = A017095 n

theorem P4768175195825632228.correct : P4768175195825632228.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P4768175195825632228.a, A017095.P15550785587980297693.a, A017089, A017089.P13709942329986306669.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P12386112030541605117

`A017090(n)²*A017091(n)`
-/

namespace A017095.P12386112030541605117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n ^ 2 * A017091 n

end

end A017095.P12386112030541605117

namespace A017095

/-- `A017090(n)²*A017091(n)` -/
def P12386112030541605117.Spec : Prop :=
  ∀ n, P12386112030541605117.a n = A017095 n

theorem P12386112030541605117.correct : P12386112030541605117.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P12386112030541605117.a, A017095.P15550785587980297693.a, A017090, A017090.P12898225331554019596.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P737153838284032744

`A017091(n)²*A017089(n)`
-/

namespace A017095.P737153838284032744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n ^ 2 * A017089 n

end

end A017095.P737153838284032744

namespace A017095

/-- `A017091(n)²*A017089(n)` -/
def P737153838284032744.Spec : Prop :=
  ∀ n, P737153838284032744.a n = A017095 n

theorem P737153838284032744.correct : P737153838284032744.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P737153838284032744.a, A017095.P15550785587980297693.a, A017089, A017089.P13709942329986306669.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P16294572870425618850

`A017092(n)²/A017089(n)`
-/

namespace A017095.P16294572870425618850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n ^ 2 : ℚ) / (A017089 n : ℚ)

end

end A017095.P16294572870425618850

namespace A017095

/-- `A017092(n)²/A017089(n)` -/
def P16294572870425618850.Spec : Prop :=
  ∀ n, P16294572870425618850.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P7048442823712317633

`A017093(n)²/A017091(n)`
-/

namespace A017095.P7048442823712317633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n ^ 2 : ℚ) / (A017091 n : ℚ)

end

end A017095.P7048442823712317633

namespace A017095

/-- `A017093(n)²/A017091(n)` -/
def P7048442823712317633.Spec : Prop :=
  ∀ n, P7048442823712317633.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P13903673877274521346

`A017097(n)/A017089(n)²`
-/

namespace A017095.P13903673877274521346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017097 n : ℚ) / (A017089 n ^ 2 : ℚ)

end

end A017095.P13903673877274521346

namespace A017095

/-- `A017097(n)/A017089(n)²` -/
def P13903673877274521346.Spec : Prop :=
  ∀ n, P13903673877274521346.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P813381957794129332

`A017090(n)²²/A017089(n)`
-/

namespace A017095.P813381957794129332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017090 n ^ 2) ^ 2 : ℚ) / (A017089 n : ℚ)

end

end A017095.P813381957794129332

namespace A017095

/-- `A017090(n)²²/A017089(n)` -/
def P813381957794129332.Spec : Prop :=
  ∀ n, P813381957794129332.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P7426141879210712492

`A017089(n)*A017090(n)*A017092(n)`
-/

namespace A017095.P7426141879210712492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017090 n * A017092 n

end

end A017095.P7426141879210712492

namespace A017095

/-- `A017089(n)*A017090(n)*A017092(n)` -/
def P7426141879210712492.Spec : Prop :=
  ∀ n, P7426141879210712492.a n = A017095 n

theorem P7426141879210712492.correct : P7426141879210712492.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P7426141879210712492.a, A017095.P15550785587980297693.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P16077190621687642619

`A017091(n)*A017093(n)/A017089(n)`
-/

namespace A017095.P16077190621687642619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017091 n * A017093 n : ℚ) / (A017089 n : ℚ)

end

end A017095.P16077190621687642619

namespace A017095

/-- `A017091(n)*A017093(n)/A017089(n)` -/
def P16077190621687642619.Spec : Prop :=
  ∀ n, P16077190621687642619.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P16664483268595256613

`A017092(n)/A017093(n)*A017092(n)²`
-/

namespace A017095.P16664483268595256613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017092 n : ℚ) / (A017093 n : ℚ) * (A017092 n ^ 2 : ℚ)

end

end A017095.P16664483268595256613

namespace A017095

/-- `A017092(n)/A017093(n)*A017092(n)²` -/
def P16664483268595256613.Spec : Prop :=
  ∀ n, P16664483268595256613.a n = (A017095 n : ℚ)

end A017095

/-! ## A017095.P12443411626022101606

`A016827(2*n)*A016828(2*n)`
-/

namespace A017095.P12443411626022101606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 (2 * n) * A016828 (2 * n)

end

end A017095.P12443411626022101606

namespace A017095

/-- `A016827(2*n)*A016828(2*n)` -/
def P12443411626022101606.Spec : Prop :=
  ∀ n, P12443411626022101606.a n = A017095 n

theorem P12443411626022101606.correct : P12443411626022101606.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P12443411626022101606.a, A017095.P15550785587980297693.a, A016827, A016827.P15145738709688113993.a, A016828, A016828.P5235314446620895365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P12768390535503471500

`A016827(2*n)²*A016825(2*n)`
-/

namespace A017095.P12768390535503471500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 (2 * n) ^ 2 * A016825 (2 * n)

end

end A017095.P12768390535503471500

namespace A017095

/-- `A016827(2*n)²*A016825(2*n)` -/
def P12768390535503471500.Spec : Prop :=
  ∀ n, P12768390535503471500.a n = A017095 n

theorem P12768390535503471500.correct : P12768390535503471500.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P12768390535503471500.a, A017095.P15550785587980297693.a, A016825, A016825.P4712696052905976233.a, A016827, A016827.P15145738709688113993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P2934849594123178524

`A016828(2*n)²/A016825(2*n)`
-/

namespace A017095.P2934849594123178524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016828 (2 * n) ^ 2 : ℚ) / (A016825 (2 * n) : ℚ)

end

end A017095.P2934849594123178524

namespace A017095

/-- `A016828(2*n)²/A016825(2*n)` -/
def P2934849594123178524.Spec : Prop :=
  ∀ n, P2934849594123178524.a n = (A017095 n : ℚ)

theorem P2934849594123178524.correct : P2934849594123178524.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P2934849594123178524.a, A017095.P15550785587980297693.a, A016825, A016825.P4712696052905976233.a, A016828, A016828.P5235314446620895365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P17794755301886725360

`A016831(2*n)`
-/

namespace A017095.P17794755301886725360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 (2 * n)

end

end A017095.P17794755301886725360

namespace A017095

/-- `A016831(2*n)` -/
def P17794755301886725360.Spec : Prop :=
  ∀ n, P17794755301886725360.a n = A017095 n

theorem P17794755301886725360.correct : P17794755301886725360.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P17794755301886725360.a, A017095.P15550785587980297693.a, A016831, A016831.P2624877946558227194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-! ## A017095.P10848676079847241632

`A016825(2*n)*A016830(2*n)`
-/

namespace A017095.P10848676079847241632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n) * A016830 (2 * n)

end

end A017095.P10848676079847241632

namespace A017095

/-- `A016825(2*n)*A016830(2*n)` -/
def P10848676079847241632.Spec : Prop :=
  ∀ n, P10848676079847241632.a n = A017095 n

theorem P10848676079847241632.correct : P10848676079847241632.Spec := by
  intro n
  simp only [A017095, Nat.add_sub_cancel, A017095.P10848676079847241632.a, A017095.P15550785587980297693.a, A016825, A016825.P4712696052905976233.a, A016830, A016830.P16460860161337745608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017095

/-!
# A017096: a(n) = (8*n + 2)^8.

The programs for A017096, the canonical program `A017096.P11778192193906840704` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017096 has offset 0).

The definition of A017096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^8` (program `A017096.P11778192193906840704`, by `A017096.P11778192193906840704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017096.P11778192193906840704

`(8*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017096

/-- `(8*n+2)^8` -/
def P11778192193906840704.Spec : Prop :=
  ∀ n, (P11778192193906840704.a n : ℤ) = A017096 n

theorem P11778192193906840704.correct : P11778192193906840704.Spec := by
  intro n
  simp only [A017096]

end A017096

/-! ## A017096.P8607414704118591826

`(or(2, 4*2*n)^4)²`
-/

namespace A017096.P8607414704118591826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (4 * (2 * n)) ^ 4) ^ 2

end

end A017096.P8607414704118591826

namespace A017096

/-- `(or(2, 4*2*n)^4)²` -/
def P8607414704118591826.Spec : Prop :=
  ∀ n, (P8607414704118591826.a n : ℤ) = A017096 n

end A017096

/-! ## A017096.P7302524969783515869

`(xor(2, 4*2*n)^4)²`
-/

namespace A017096.P7302524969783515869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (4 * (2 * n)) ^ 4) ^ 2

end

end A017096.P7302524969783515869

namespace A017096

/-- `(xor(2, 4*2*n)^4)²` -/
def P7302524969783515869.Spec : Prop :=
  ∀ n, (P7302524969783515869.a n : ℤ) = A017096 n

end A017096

/-! ## A017096.P6424845435613436669

`or(2, 4*2*n)²²²`
-/

namespace A017096.P6424845435613436669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017096.P6424845435613436669

namespace A017096

/-- `or(2, 4*2*n)²²²` -/
def P6424845435613436669.Spec : Prop :=
  ∀ n, (P6424845435613436669.a n : ℤ) = A017096 n

end A017096

/-! ## A017096.P7577107234967115602

`xor(2, 4*2*n)²²²`
-/

namespace A017096.P7577107234967115602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 (4 * (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017096.P7577107234967115602

namespace A017096

/-- `xor(2, 4*2*n)²²²` -/
def P7577107234967115602.Spec : Prop :=
  ∀ n, (P7577107234967115602.a n : ℤ) = A017096 n

end A017096

/-! ## A017096.P10982176869340603725

`Δ[2*C(2*n, 2)]²²²`
-/

namespace A017096.P10982176869340603725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017096.P10982176869340603725

namespace A017096

/-- `Δ[2*C(2*n, 2)]²²²` -/
def P10982176869340603725.Spec : Prop :=
  ∀ n, P10982176869340603725.a n = A017096 n

theorem P10982176869340603725.correct : P10982176869340603725.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P10982176869340603725.f1, A017096.P10982176869340603725.a, A017096.P11778192193906840704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P2762241525786727663

`(2-lcm(4, 2*n+1))²²²`
-/

namespace A017096.P2762241525786727663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - (Nat.lcm 4 (2 * n + 1) : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017096.P2762241525786727663

namespace A017096

/-- `(2-lcm(4, 2*n+1))²²²` -/
def P2762241525786727663.Spec : Prop :=
  ∀ n, P2762241525786727663.a n = A017096 n

end A017096

/-! ## A017096.P4704104607693301160

`Δ[lcm(1-2*n, 2*n)]²²²`
-/

namespace A017096.P4704104607693301160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (2 * n : ℤ)) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017096.P4704104607693301160

namespace A017096

/-- `Δ[lcm(1-2*n, 2*n)]²²²` -/
def P4704104607693301160.Spec : Prop :=
  ∀ n, P4704104607693301160.a n = A017096 n

end A017096

/-! ## A017096.P5738999565728179217

`lcm(2, 2*n+2*n+1)²²²`
-/

namespace A017096.P5738999565728179217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n + (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A017096.P5738999565728179217

namespace A017096

/-- `lcm(2, 2*n+2*n+1)²²²` -/
def P5738999565728179217.Spec : Prop :=
  ∀ n, (P5738999565728179217.a n : ℤ) = A017096 n

end A017096

/-! ## A017096.P7487598592737363025

`A017092(n)²`
-/

namespace A017096.P7487598592737363025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017092 n ^ 2

end

end A017096.P7487598592737363025

namespace A017096

/-- `A017092(n)²` -/
def P7487598592737363025.Spec : Prop :=
  ∀ n, P7487598592737363025.a n = A017096 n

theorem P7487598592737363025.correct : P7487598592737363025.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P7487598592737363025.a, A017096.P11778192193906840704.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P8340040927425799086

`A017090(n)²²`
-/

namespace A017096.P8340040927425799086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017090 n ^ 2) ^ 2

end

end A017096.P8340040927425799086

namespace A017096

/-- `A017090(n)²²` -/
def P8340040927425799086.Spec : Prop :=
  ∀ n, P8340040927425799086.a n = A017096 n

theorem P8340040927425799086.correct : P8340040927425799086.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P8340040927425799086.a, A017096.P11778192193906840704.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P15495993698467608233

`A017089(n)²²²`
-/

namespace A017096.P15495993698467608233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017089 n ^ 2) ^ 2) ^ 2

end

end A017096.P15495993698467608233

namespace A017096

/-- `A017089(n)²²²` -/
def P15495993698467608233.Spec : Prop :=
  ∀ n, P15495993698467608233.a n = A017096 n

theorem P15495993698467608233.correct : P15495993698467608233.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P15495993698467608233.a, A017096.P11778192193906840704.a, A017089, A017089.P13709942329986306669.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P308356724746177876

`Δ[A002939(n)]²²²`
-/

namespace A017096.P308356724746177876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017096.P308356724746177876

namespace A017096

/-- `Δ[A002939(n)]²²²` -/
def P308356724746177876.Spec : Prop :=
  ∀ n, P308356724746177876.a n = A017096 n

theorem P308356724746177876.correct : P308356724746177876.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P308356724746177876.f1, A017096.P308356724746177876.a, A017096.P11778192193906840704.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P10206583812585614114

`(A017077(n)+1)²²²`
-/

namespace A017096.P10206583812585614114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017077 n + 1) ^ 2) ^ 2) ^ 2

end

end A017096.P10206583812585614114

namespace A017096

/-- `(A017077(n)+1)²²²` -/
def P10206583812585614114.Spec : Prop :=
  ∀ n, P10206583812585614114.a n = A017096 n

theorem P10206583812585614114.correct : P10206583812585614114.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P10206583812585614114.a, A017096.P11778192193906840704.a, A017077, A017077.P465032159772507632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P10860850779177977542

`(A008590(n)+2)²²²`
-/

namespace A017096.P10860850779177977542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008590 n + 2) ^ 2) ^ 2) ^ 2

end

end A017096.P10860850779177977542

namespace A017096

/-- `(A008590(n)+2)²²²` -/
def P10860850779177977542.Spec : Prop :=
  ∀ n, P10860850779177977542.a n = A017096 n

theorem P10860850779177977542.correct : P10860850779177977542.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P10860850779177977542.a, A017096.P11778192193906840704.a, A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P312384083361658053

`(1-A017101(n))²²²`
-/

namespace A017096.P312384083361658053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017101 n) ^ 2) ^ 2) ^ 2

end

end A017096.P312384083361658053

namespace A017096

/-- `(1-A017101(n))²²²` -/
def P312384083361658053.Spec : Prop :=
  ∀ n, P312384083361658053.a n = A017096 n

theorem P312384083361658053.correct : P312384083361658053.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P312384083361658053.a, A017096.P11778192193906840704.a, A017101, A017101.P13562222580894225451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P11768297953687909510

`(2-A017113(n))²²²`
-/

namespace A017096.P11768297953687909510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017113 n) ^ 2) ^ 2) ^ 2

end

end A017096.P11768297953687909510

namespace A017096

/-- `(2-A017113(n))²²²` -/
def P11768297953687909510.Spec : Prop :=
  ∀ n, P11768297953687909510.a n = A017096 n

theorem P11768297953687909510.correct : P11768297953687909510.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P11768297953687909510.a, A017096.P11778192193906840704.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P13846325421886170212

`(2*A016813(n))²²²`
-/

namespace A017096.P13846325421886170212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016813 n) ^ 2) ^ 2) ^ 2

end

end A017096.P13846325421886170212

namespace A017096

/-- `(2*A016813(n))²²²` -/
def P13846325421886170212.Spec : Prop :=
  ∀ n, P13846325421886170212.a n = A017096 n

theorem P13846325421886170212.correct : P13846325421886170212.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P13846325421886170212.a, A017096.P11778192193906840704.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P4663259054602053090

`A016825(2*n)²²²`
-/

namespace A017096.P4663259054602053090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016825 (2 * n) ^ 2) ^ 2) ^ 2

end

end A017096.P4663259054602053090

namespace A017096

/-- `A016825(2*n)²²²` -/
def P4663259054602053090.Spec : Prop :=
  ∀ n, P4663259054602053090.a n = A017096 n

theorem P4663259054602053090.correct : P4663259054602053090.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P4663259054602053090.a, A017096.P11778192193906840704.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-! ## A017096.P16294157302946420989

`(A017005(n)+n)²²²`
-/

namespace A017096.P16294157302946420989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017005 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017096.P16294157302946420989

namespace A017096

/-- `(A017005(n)+n)²²²` -/
def P16294157302946420989.Spec : Prop :=
  ∀ n, P16294157302946420989.a n = A017096 n

theorem P16294157302946420989.correct : P16294157302946420989.Spec := by
  intro n
  simp only [A017096, Nat.add_sub_cancel, A017096.P16294157302946420989.a, A017096.P11778192193906840704.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017096

/-!
# A017097: a(n) = (8*n + 2)^9.

The programs for A017097, the canonical program `A017097.P2388239762916299819` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017097 has offset 0).

The definition of A017097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^9` (program `A017097.P2388239762916299819`, by `A017097.P2388239762916299819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017097.P2388239762916299819

`(8*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017097

/-- `(8*n+2)^9` -/
def P2388239762916299819.Spec : Prop :=
  ∀ n, (P2388239762916299819.a n : ℤ) = A017097 n

theorem P2388239762916299819.correct : P2388239762916299819.Spec := by
  intro n
  simp only [A017097]

end A017097

/-! ## A017097.P15240359022911185498

`sqrt(A017094(n)^3)`
-/

namespace A017097.P15240359022911185498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017094 n ^ 3 : ℝ)

end

end A017097.P15240359022911185498

namespace A017097

/-- `sqrt(A017094(n)^3)` -/
def P15240359022911185498.Spec : Prop :=
  ∀ n, P15240359022911185498.a n = (A017097 n : ℝ)

end A017097

/-! ## A017097.P11554484289097147051

`A017090(n)*A017095(n)`
-/

namespace A017097.P11554484289097147051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n * A017095 n

end

end A017097.P11554484289097147051

namespace A017097

/-- `A017090(n)*A017095(n)` -/
def P11554484289097147051.Spec : Prop :=
  ∀ n, P11554484289097147051.a n = A017097 n

theorem P11554484289097147051.correct : P11554484289097147051.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P11554484289097147051.a, A017097.P2388239762916299819.a, A017090, A017090.P12898225331554019596.a, A017095, A017095.P15550785587980297693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P10648184599164931490

`A017091(n)*A017094(n)`
-/

namespace A017097.P10648184599164931490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n * A017094 n

end

end A017097.P10648184599164931490

namespace A017097

/-- `A017091(n)*A017094(n)` -/
def P10648184599164931490.Spec : Prop :=
  ∀ n, P10648184599164931490.a n = A017097 n

theorem P10648184599164931490.correct : P10648184599164931490.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P10648184599164931490.a, A017097.P2388239762916299819.a, A017091, A017091.P5438283382663161292.a, A017094, A017094.P3149199155794464703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P12624699643215964176

`A017092(n)*A017093(n)`
-/

namespace A017097.P12624699643215964176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017092 n * A017093 n

end

end A017097.P12624699643215964176

namespace A017097

/-- `A017092(n)*A017093(n)` -/
def P12624699643215964176.Spec : Prop :=
  ∀ n, P12624699643215964176.a n = A017097 n

theorem P12624699643215964176.correct : P12624699643215964176.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P12624699643215964176.a, A017097.P2388239762916299819.a, A017092, A017092.P16780752070542581176.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P12196288744312329696

`A017089(n)²*A017095(n)`
-/

namespace A017097.P12196288744312329696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n ^ 2 * A017095 n

end

end A017097.P12196288744312329696

namespace A017097

/-- `A017089(n)²*A017095(n)` -/
def P12196288744312329696.Spec : Prop :=
  ∀ n, P12196288744312329696.a n = A017097 n

theorem P12196288744312329696.correct : P12196288744312329696.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P12196288744312329696.a, A017097.P2388239762916299819.a, A017089, A017089.P13709942329986306669.a, A017095, A017095.P15550785587980297693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P10627703458924584894

`A017090(n)²*A017093(n)`
-/

namespace A017097.P10627703458924584894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n ^ 2 * A017093 n

end

end A017097.P10627703458924584894

namespace A017097

/-- `A017090(n)²*A017093(n)` -/
def P10627703458924584894.Spec : Prop :=
  ∀ n, P10627703458924584894.a n = A017097 n

theorem P10627703458924584894.correct : P10627703458924584894.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P10627703458924584894.a, A017097.P2388239762916299819.a, A017090, A017090.P12898225331554019596.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P11785459359621714360

`A017092(n)²*A017089(n)`
-/

namespace A017097.P11785459359621714360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017092 n ^ 2 * A017089 n

end

end A017097.P11785459359621714360

namespace A017097

/-- `A017092(n)²*A017089(n)` -/
def P11785459359621714360.Spec : Prop :=
  ∀ n, P11785459359621714360.a n = A017097 n

theorem P11785459359621714360.correct : P11785459359621714360.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P11785459359621714360.a, A017097.P2388239762916299819.a, A017089, A017089.P13709942329986306669.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P16895980252308725013

`A017093(n)²/A017089(n)`
-/

namespace A017097.P16895980252308725013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017093 n ^ 2 : ℚ) / (A017089 n : ℚ)

end

end A017097.P16895980252308725013

namespace A017097

/-- `A017093(n)²/A017089(n)` -/
def P16895980252308725013.Spec : Prop :=
  ∀ n, P16895980252308725013.a n = (A017097 n : ℚ)

end A017097

/-! ## A017097.P12240990397979900715

`A017090(n)²²*A017089(n)`
-/

namespace A017097.P12240990397979900715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017090 n ^ 2) ^ 2 * A017089 n

end

end A017097.P12240990397979900715

namespace A017097

/-- `A017090(n)²²*A017089(n)` -/
def P12240990397979900715.Spec : Prop :=
  ∀ n, P12240990397979900715.a n = A017097 n

theorem P12240990397979900715.correct : P12240990397979900715.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P12240990397979900715.a, A017097.P2388239762916299819.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P4195833971988606958

`A017089(n)*A017091(n)*A017093(n)`
-/

namespace A017097.P4195833971988606958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n * A017091 n * A017093 n

end

end A017097.P4195833971988606958

namespace A017097

/-- `A017089(n)*A017091(n)*A017093(n)` -/
def P4195833971988606958.Spec : Prop :=
  ∀ n, P4195833971988606958.a n = A017097 n

theorem P4195833971988606958.correct : P4195833971988606958.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P4195833971988606958.a, A017097.P2388239762916299819.a, A017089, A017089.P13709942329986306669.a, A017091, A017091.P5438283382663161292.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P2304582157436291919

`A017090(n)*A017091(n)*A017092(n)`
-/

namespace A017097.P2304582157436291919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n * A017091 n * A017092 n

end

end A017097.P2304582157436291919

namespace A017097

/-- `A017090(n)*A017091(n)*A017092(n)` -/
def P2304582157436291919.Spec : Prop :=
  ∀ n, P2304582157436291919.a n = A017097 n

theorem P2304582157436291919.correct : P2304582157436291919.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P2304582157436291919.a, A017097.P2388239762916299819.a, A017090, A017090.P12898225331554019596.a, A017091, A017091.P5438283382663161292.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P2867002175058475707

`A017095(n)/A017093(n)*A017095(n)`
-/

namespace A017097.P2867002175058475707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017095 n : ℚ) / (A017093 n : ℚ) * (A017095 n : ℚ)

end

end A017097.P2867002175058475707

namespace A017097

/-- `A017095(n)/A017093(n)*A017095(n)` -/
def P2867002175058475707.Spec : Prop :=
  ∀ n, P2867002175058475707.a n = (A017097 n : ℚ)

end A017097

/-! ## A017097.P17734092981309002805

`A016827(2*n)²*A016827(2*n)`
-/

namespace A017097.P17734092981309002805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 (2 * n) ^ 2 * A016827 (2 * n)

end

end A017097.P17734092981309002805

namespace A017097

/-- `A016827(2*n)²*A016827(2*n)` -/
def P17734092981309002805.Spec : Prop :=
  ∀ n, P17734092981309002805.a n = A017097 n

theorem P17734092981309002805.correct : P17734092981309002805.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P17734092981309002805.a, A017097.P2388239762916299819.a, A016827, A016827.P15145738709688113993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P5135953784013773530

`A016828(2*n)²*A016825(2*n)`
-/

namespace A017097.P5135953784013773530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016828 (2 * n) ^ 2 * A016825 (2 * n)

end

end A017097.P5135953784013773530

namespace A017097

/-- `A016828(2*n)²*A016825(2*n)` -/
def P5135953784013773530.Spec : Prop :=
  ∀ n, P5135953784013773530.a n = A017097 n

theorem P5135953784013773530.correct : P5135953784013773530.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P5135953784013773530.a, A017097.P2388239762916299819.a, A016825, A016825.P4712696052905976233.a, A016828, A016828.P5235314446620895365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P6962794884211849330

`A016833(2*n)`
-/

namespace A017097.P6962794884211849330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016833 (2 * n)

end

end A017097.P6962794884211849330

namespace A017097

/-- `A016833(2*n)` -/
def P6962794884211849330.Spec : Prop :=
  ∀ n, P6962794884211849330.a n = A017097 n

theorem P6962794884211849330.correct : P6962794884211849330.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P6962794884211849330.a, A017097.P2388239762916299819.a, A016833, A016833.P12755141053771216048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P18340245886856626066

`A016825(2*n)*A016832(2*n)`
-/

namespace A017097.P18340245886856626066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n) * A016832 (2 * n)

end

end A017097.P18340245886856626066

namespace A017097

/-- `A016825(2*n)*A016832(2*n)` -/
def P18340245886856626066.Spec : Prop :=
  ∀ n, P18340245886856626066.a n = A017097 n

theorem P18340245886856626066.correct : P18340245886856626066.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P18340245886856626066.a, A017097.P2388239762916299819.a, A016825, A016825.P4712696052905976233.a, A016832, A016832.P2951353771397420253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P15932225718942871497

`A016826(2*n)*A016831(2*n)`
-/

namespace A017097.P15932225718942871497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 (2 * n) * A016831 (2 * n)

end

end A017097.P15932225718942871497

namespace A017097

/-- `A016826(2*n)*A016831(2*n)` -/
def P15932225718942871497.Spec : Prop :=
  ∀ n, P15932225718942871497.a n = A017097 n

theorem P15932225718942871497.correct : P15932225718942871497.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P15932225718942871497.a, A017097.P2388239762916299819.a, A016826, A016826.P3235835473290805917.a, A016831, A016831.P2624877946558227194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-! ## A017097.P1633479458956849148

`A016827(2*n)*A016830(2*n)`
-/

namespace A017097.P1633479458956849148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 (2 * n) * A016830 (2 * n)

end

end A017097.P1633479458956849148

namespace A017097

/-- `A016827(2*n)*A016830(2*n)` -/
def P1633479458956849148.Spec : Prop :=
  ∀ n, P1633479458956849148.a n = A017097 n

theorem P1633479458956849148.correct : P1633479458956849148.Spec := by
  intro n
  simp only [A017097, Nat.add_sub_cancel, A017097.P1633479458956849148.a, A017097.P2388239762916299819.a, A016827, A016827.P15145738709688113993.a, A016830, A016830.P16460860161337745608.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017097

/-!
# A017098: a(n) = (8*n + 2)^10.

The programs for A017098, the canonical program `A017098.P8095537577016678550` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017098 has offset 0).

The definition of A017098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+2)^10` (program `A017098.P8095537577016678550`, by `A017098.P8095537577016678550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017098.P8095537577016678550

`(8*n+2)^10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017098

/-- `(8*n+2)^10` -/
def P8095537577016678550.Spec : Prop :=
  ∀ n, (P8095537577016678550.a n : ℤ) = A017098 n

theorem P8095537577016678550.correct : P8095537577016678550.Spec := by
  intro n
  simp only [A017098]

end A017098

/-! ## A017098.P14170229547475652836

`(or(2, 8*n)^5)²`
-/

namespace A017098.P14170229547475652836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (8 * n) ^ 5) ^ 2

end

end A017098.P14170229547475652836

namespace A017098

/-- `(or(2, 8*n)^5)²` -/
def P14170229547475652836.Spec : Prop :=
  ∀ n, (P14170229547475652836.a n : ℤ) = A017098 n

end A017098

/-! ## A017098.P10562633179650463136

`A017093(n)²`
-/

namespace A017098.P10562633179650463136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017093 n ^ 2

end

end A017098.P10562633179650463136

namespace A017098

/-- `A017093(n)²` -/
def P10562633179650463136.Spec : Prop :=
  ∀ n, P10562633179650463136.a n = A017098 n

theorem P10562633179650463136.correct : P10562633179650463136.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P10562633179650463136.a, A017098.P8095537577016678550.a, A017093, A017093.P14270033943114759403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P769136219722923729

`sqrt(A017092(n)^5)`
-/

namespace A017098.P769136219722923729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017092 n ^ 5 : ℝ)

end

end A017098.P769136219722923729

namespace A017098

/-- `sqrt(A017092(n)^5)` -/
def P769136219722923729.Spec : Prop :=
  ∀ n, P769136219722923729.a n = (A017098 n : ℝ)

end A017098

/-! ## A017098.P11115698012698785682

`A017092(n)*A017094(n)`
-/

namespace A017098.P11115698012698785682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017092 n * A017094 n

end

end A017098.P11115698012698785682

namespace A017098

/-- `A017092(n)*A017094(n)` -/
def P11115698012698785682.Spec : Prop :=
  ∀ n, P11115698012698785682.a n = A017098 n

theorem P11115698012698785682.correct : P11115698012698785682.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P11115698012698785682.a, A017098.P8095537577016678550.a, A017092, A017092.P16780752070542581176.a, A017094, A017094.P3149199155794464703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P12940171332181998952

`(A017089(n)*A017092(n))²`
-/

namespace A017098.P12940171332181998952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n * A017092 n) ^ 2

end

end A017098.P12940171332181998952

namespace A017098

/-- `(A017089(n)*A017092(n))²` -/
def P12940171332181998952.Spec : Prop :=
  ∀ n, P12940171332181998952.a n = A017098 n

theorem P12940171332181998952.correct : P12940171332181998952.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P12940171332181998952.a, A017098.P8095537577016678550.a, A017089, A017089.P13709942329986306669.a, A017092, A017092.P16780752070542581176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P12126422962116865979

`(A017094(n)/A017089(n))²`
-/

namespace A017098.P12126422962116865979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017094 n : ℚ) / (A017089 n : ℚ)) ^ 2

end

end A017098.P12126422962116865979

namespace A017098

/-- `(A017094(n)/A017089(n))²` -/
def P12126422962116865979.Spec : Prop :=
  ∀ n, P12126422962116865979.a n = (A017098 n : ℚ)

end A017098

/-! ## A017098.P16278198628796629247

`(A017089(n)²*A017091(n))²`
-/

namespace A017098.P16278198628796629247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n ^ 2 * A017091 n) ^ 2

end

end A017098.P16278198628796629247

namespace A017098

/-- `(A017089(n)²*A017091(n))²` -/
def P16278198628796629247.Spec : Prop :=
  ∀ n, P16278198628796629247.a n = A017098 n

theorem P16278198628796629247.correct : P16278198628796629247.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P16278198628796629247.a, A017098.P8095537577016678550.a, A017089, A017089.P13709942329986306669.a, A017091, A017091.P5438283382663161292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P8810112657430976923

`(A017090(n)²*A017089(n))²`
-/

namespace A017098.P8810112657430976923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017090 n ^ 2 * A017089 n) ^ 2

end

end A017098.P8810112657430976923

namespace A017098

/-- `(A017090(n)²*A017089(n))²` -/
def P8810112657430976923.Spec : Prop :=
  ∀ n, P8810112657430976923.a n = A017098 n

theorem P8810112657430976923.correct : P8810112657430976923.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P8810112657430976923.a, A017098.P8095537577016678550.a, A017089, A017089.P13709942329986306669.a, A017090, A017090.P12898225331554019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P3583235337291833552

`(A017095(n)/A017089(n)²)²`
-/

namespace A017098.P3583235337291833552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017095 n : ℚ) / (A017089 n ^ 2 : ℚ)) ^ 2

end

end A017098.P3583235337291833552

namespace A017098

/-- `(A017095(n)/A017089(n)²)²` -/
def P3583235337291833552.Spec : Prop :=
  ∀ n, P3583235337291833552.a n = (A017098 n : ℚ)

end A017098

/-! ## A017098.P213468724011987865

`sqrt(sqrt(A017096(n)))*A017096(n)`
-/

namespace A017098.P213468724011987865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017096 n : ℝ)) * (A017096 n : ℝ)

end

end A017098.P213468724011987865

namespace A017098

/-- `sqrt(sqrt(A017096(n)))*A017096(n)` -/
def P213468724011987865.Spec : Prop :=
  ∀ n, P213468724011987865.a n = (A017098 n : ℝ)

end A017098

/-! ## A017098.P1736202355796721875

`A016834(2*n)`
-/

namespace A017098.P1736202355796721875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016834 (2 * n)

end

end A017098.P1736202355796721875

namespace A017098

/-- `A016834(2*n)` -/
def P1736202355796721875.Spec : Prop :=
  ∀ n, P1736202355796721875.a n = A017098 n

theorem P1736202355796721875.correct : P1736202355796721875.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P1736202355796721875.a, A017098.P8095537577016678550.a, A016834, A016834.P8357198670827523963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P14468561124376790931

`A016829(2*n)²`
-/

namespace A017098.P14468561124376790931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016829 (2 * n) ^ 2

end

end A017098.P14468561124376790931

namespace A017098

/-- `A016829(2*n)²` -/
def P14468561124376790931.Spec : Prop :=
  ∀ n, P14468561124376790931.a n = A017098 n

theorem P14468561124376790931.correct : P14468561124376790931.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P14468561124376790931.a, A017098.P8095537577016678550.a, A016829, A016829.P4272908375837523993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P6834359633341214536

`A016750(3*n+n+1)`
-/

namespace A017098.P6834359633341214536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 (3 * n + (n + 1))

end

end A017098.P6834359633341214536

namespace A017098

/-- `A016750(3*n+n+1)` -/
def P6834359633341214536.Spec : Prop :=
  ∀ n, P6834359633341214536.a n = A017098 n

theorem P6834359633341214536.correct : P6834359633341214536.Spec := by
  intro n
  simp only [A017098, Nat.add_sub_cancel, A017098.P6834359633341214536.a, A017098.P8095537577016678550.a, A016750, A016750.P3077076585520264960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017098

/-! ## A017098.P4669337701619060291

`A008454(A017089(n))`
-/

namespace A017098.P4669337701619060291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017089 n).toNat

end

end A017098.P4669337701619060291

namespace A017098

/-- `A008454(A017089(n))` -/
def P4669337701619060291.Spec : Prop :=
  ∀ n, P4669337701619060291.a n = A017098 n

end A017098

/-! ## A017098.P6084198283798027775

`A008454(2*A016813(n))`
-/

namespace A017098.P6084198283798027775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016813 n).toNat

end

end A017098.P6084198283798027775

namespace A017098

/-- `A008454(2*A016813(n))` -/
def P6084198283798027775.Spec : Prop :=
  ∀ n, P6084198283798027775.a n = A017098 n

end A017098

/-! ## A017098.P16830819323894790959

`A008454(2*(A008586(n)+1))`
-/

namespace A017098.P16830819323894790959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * (A008586 n + 1)).toNat

end

end A017098.P16830819323894790959

namespace A017098

/-- `A008454(2*(A008586(n)+1))` -/
def P16830819323894790959.Spec : Prop :=
  ∀ n, P16830819323894790959.a n = A017098 n

end A017098

/-! ## A017098.P251595224286222

`A008454(A016813(n)+A016813(n))`
-/

namespace A017098.P251595224286222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016813 n + A016813 n).toNat

end

end A017098.P251595224286222

namespace A017098

/-- `A008454(A016813(n)+A016813(n))` -/
def P251595224286222.Spec : Prop :=
  ∀ n, P251595224286222.a n = A017098 n

end A017098

/-!
# A017099: 

The programs for A017099, there is no canonical definition to state claims against.
-/

/-! ## A017099.P7387978091969359360

`(8*n+2)^11`
-/

namespace A017099.P7387978091969359360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 2) ^ 11

end

end A017099.P7387978091969359360

/-! ## A017099.P833870427878610095

`A017093(n)²*A017089(n)`
-/

namespace A017099.P833870427878610095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017093 n ^ 2 * A017089 n

end

end A017099.P833870427878610095

/-! ## A017099.P8511506414235458087

`A017094(n)²/A017089(n)`
-/

namespace A017099.P8511506414235458087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017094 n ^ 2 : ℚ) / (A017089 n : ℚ)

end

end A017099.P8511506414235458087

/-! ## A017099.P12147919946228745391

`A017089(n)²²*A017095(n)`
-/

namespace A017099.P12147919946228745391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n ^ 2) ^ 2 * A017095 n

end

end A017099.P12147919946228745391

/-! ## A017099.P5176685494778442188

`A017091(n)²²/A017089(n)`
-/

namespace A017099.P5176685494778442188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017091 n ^ 2) ^ 2 : ℚ) / (A017089 n : ℚ)

end

end A017099.P5176685494778442188

/-! ## A017099.P8169735757061995790

`(A017089(n)*A017092(n))²*A017089(n)`
-/

namespace A017099.P8169735757061995790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017089 n * A017092 n) ^ 2 * A017089 n

end

end A017099.P8169735757061995790

/-! ## A017099.P14649965277837915968

`sqrt(A017090(n)^11)`
-/

namespace A017099.P14649965277837915968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017090 n ^ 11 : ℝ)

end

end A017099.P14649965277837915968

/-! ## A017099.P13565672199680227665

`A016751(3*n+n+1)`
-/

namespace A017099.P13565672199680227665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016751 (3 * n + (n + 1))

end

end A017099.P13565672199680227665

/-! ## A017099.P6659269781910413749

`A008455(2*A016813(n))`
-/

namespace A017099.P6659269781910413749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * A016813 n).toNat

end

end A017099.P6659269781910413749

/-! ## A017099.P7285637538559189843

`A008455(A008591(n)+2-n)`
-/

namespace A017099.P7285637538559189843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 n + (2 - (n : ℤ))).toNat

end

end A017099.P7285637538559189843

/-! ## A017099.P3635406616652556855

`A008455(2-(n-A008591(n)))`
-/

namespace A017099.P3635406616652556855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 - ((n : ℤ) - A008591 n)).toNat

end

end A017099.P3635406616652556855

/-! ## A017099.P733519848563012364

`A008455(A016813(n)+A016813(n))`
-/

namespace A017099.P733519848563012364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 n + A016813 n).toNat

end

end A017099.P733519848563012364

