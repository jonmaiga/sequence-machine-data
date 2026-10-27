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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B012.C000
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
# A057000: a(n) = phi(n+1) - phi(n).

The programs for A057000, the canonical program `A057000.P1784928744238617975` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057000 has offset 1).

The definition of A057000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+2)-A000010(n+1)` (program `A057000.P1784928744238617975`, by `A057000.P1784928744238617975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057000.P1784928744238617975

`A000010(n+2)-A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057000

/-- `A000010(n+2)-A000010(n+1)` -/
def P1784928744238617975.Spec : Prop :=
  ∀ n, P1784928744238617975.a n = A057000 (n + 1)

theorem P1784928744238617975.correct : P1784928744238617975.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel]

end A057000

/-! ## A057000.P16840353395483136498

`Δ[A000010(n+1)]`
-/

namespace A057000.P16840353395483136498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P16840353395483136498

namespace A057000

/-- `Δ[A000010(n+1)]` -/
def P16840353395483136498.Spec : Prop :=
  ∀ n, P16840353395483136498.a n = A057000 (n + 1)

theorem P16840353395483136498.correct : P16840353395483136498.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P16840353395483136498.f1, A057000.P16840353395483136498.a, A057000.P1784928744238617975.a, SequenceMachineLib.memo_apply]

end A057000

/-! ## A057000.P11374671352921709865

`2-Δ[A053158(n+1)]`
-/

namespace A057000.P11374671352921709865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A057000.P11374671352921709865

namespace A057000

/-- `2-Δ[A053158(n+1)]` -/
def P11374671352921709865.Spec : Prop :=
  ∀ n, P11374671352921709865.a n = A057000 (n + 1)

theorem P11374671352921709865.correct : P11374671352921709865.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P11374671352921709865.f1, A057000.P11374671352921709865.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P2051252929868916303

`-Δ[-A000010(2*n-(n-1))]`
-/

namespace A057000.P2051252929868916303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A057000.P2051252929868916303

namespace A057000

/-- `-Δ[-A000010(2*n-(n-1))]` -/
def P2051252929868916303.Spec : Prop :=
  ∀ n, P2051252929868916303.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P9635807601217288929

`A053158(n+1)-A180444(n)`
-/

namespace A057000.P9635807601217288929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A180444 n

end

end A057000.P9635807601217288929

namespace A057000

/-- `A053158(n+1)-A180444(n)` -/
def P9635807601217288929.Spec : Prop :=
  ∀ n, P9635807601217288929.a n = A057000 (n + 1)

theorem P9635807601217288929.correct : P9635807601217288929.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P9635807601217288929.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A053158, A053158.P11533641159092355549.a, A180444, A180444.P789406692991955832.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P11295931668533720418

`Δ[A002088(n+1)-A002088(n)]`
-/

namespace A057000.P11295931668533720418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P11295931668533720418

namespace A057000

/-- `Δ[A002088(n+1)-A002088(n)]` -/
def P11295931668533720418.Spec : Prop :=
  ∀ n, P11295931668533720418.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P14160888126328152418

`Δ[A005728(n+1)-A005728(n)]`
-/

namespace A057000.P14160888126328152418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P14160888126328152418

namespace A057000

/-- `Δ[A005728(n+1)-A005728(n)]` -/
def P14160888126328152418.Spec : Prop :=
  ∀ n, P14160888126328152418.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P16621433720141931197

`Δ[Δ[A002088(n)]]`
-/

namespace A057000.P16621433720141931197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P16621433720141931197

namespace A057000

/-- `Δ[Δ[A002088(n)]]` -/
def P16621433720141931197.Spec : Prop :=
  ∀ n, P16621433720141931197.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P12336986026280014643

`Δ[Δ[A005728(n)]]`
-/

namespace A057000.P12336986026280014643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P12336986026280014643

namespace A057000

/-- `Δ[Δ[A005728(n)]]` -/
def P12336986026280014643.Spec : Prop :=
  ∀ n, P12336986026280014643.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P11139923293491027699

`Δ[A039649(n+1)]`
-/

namespace A057000.P11139923293491027699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P11139923293491027699

namespace A057000

/-- `Δ[A039649(n+1)]` -/
def P11139923293491027699.Spec : Prop :=
  ∀ n, P11139923293491027699.a n = A057000 (n + 1)

theorem P11139923293491027699.correct : P11139923293491027699.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P11139923293491027699.f1, A057000.P11139923293491027699.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P8468370363321107898

`Δ[A109606(n+1)]`
-/

namespace A057000.P8468370363321107898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P8468370363321107898

namespace A057000

/-- `Δ[A109606(n+1)]` -/
def P8468370363321107898.Spec : Prop :=
  ∀ n, P8468370363321107898.a n = A057000 (n + 1)

theorem P8468370363321107898.correct : P8468370363321107898.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P8468370363321107898.f1, A057000.P8468370363321107898.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P10889266634817978318

`Δ[A349137(Δ[n²])]`
-/

namespace A057000.P10889266634817978318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P10889266634817978318

namespace A057000

/-- `Δ[A349137(Δ[n²])]` -/
def P10889266634817978318.Spec : Prop :=
  ∀ n, P10889266634817978318.a n = A057000 (n + 1)

end A057000

/-! ## A057000.P5613831184159120370

`Δ[sqrt(A127473(n+1))]`
-/

namespace A057000.P5613831184159120370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P5613831184159120370

namespace A057000

/-- `Δ[sqrt(A127473(n+1))]` -/
def P5613831184159120370.Spec : Prop :=
  ∀ n, P5613831184159120370.a n = (A057000 (n + 1) : ℝ)

end A057000

/-! ## A057000.P16781272347870098174

`1-Δ[A051953(n+1)]`
-/

namespace A057000.P16781272347870098174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A057000.P16781272347870098174

namespace A057000

/-- `1-Δ[A051953(n+1)]` -/
def P16781272347870098174.Spec : Prop :=
  ∀ n, P16781272347870098174.a n = A057000 (n + 1)

theorem P16781272347870098174.correct : P16781272347870098174.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P16781272347870098174.f1, A057000.P16781272347870098174.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P17898396878523601089

`Δ[A121048(n+1)]-1`
-/

namespace A057000.P17898396878523601089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A057000.P17898396878523601089

namespace A057000

/-- `Δ[A121048(n+1)]-1` -/
def P17898396878523601089.Spec : Prop :=
  ∀ n, P17898396878523601089.a n = A057000 (n + 1)

theorem P17898396878523601089.correct : P17898396878523601089.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P17898396878523601089.f1, A057000.P17898396878523601089.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P13942247961232480654

`1-Δ[A219428(n+1)]`
-/

namespace A057000.P13942247961232480654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A057000.P13942247961232480654

namespace A057000

/-- `1-Δ[A219428(n+1)]` -/
def P13942247961232480654.Spec : Prop :=
  ∀ n, P13942247961232480654.a n = A057000 (n + 1)

theorem P13942247961232480654.correct : P13942247961232480654.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P13942247961232480654.f1, A057000.P13942247961232480654.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P12322713230278429041

`Δ[A200905(n+1)/3]`
-/

namespace A057000.P12322713230278429041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P12322713230278429041

namespace A057000

/-- `Δ[A200905(n+1)/3]` -/
def P12322713230278429041.Spec : Prop :=
  ∀ n, P12322713230278429041.a n = (A057000 (n + 1) : ℚ)

theorem P12322713230278429041.correct : P12322713230278429041.Spec := by
  intro n
  simp only [A057000, Nat.add_sub_cancel, A057000.P12322713230278429041.f1, A057000.P12322713230278429041.a, A057000.P1784928744238617975.a, A000010, A000010.P4673923239450215316.a, A200905, A200905.P16128160975711994279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057000

/-! ## A057000.P16203783989581917711

`Δ[A319998(2*(n+1))/2]`
-/

namespace A057000.P16203783989581917711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P16203783989581917711

namespace A057000

/-- `Δ[A319998(2*(n+1))/2]` -/
def P16203783989581917711.Spec : Prop :=
  ∀ n, P16203783989581917711.a n = (A057000 (n + 1) : ℚ)

end A057000

/-! ## A057000.P20907521895507033

`Δ[A002618(n+1)/(n+1)]`
-/

namespace A057000.P20907521895507033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057000.P20907521895507033

namespace A057000

/-- `Δ[A002618(n+1)/(n+1)]` -/
def P20907521895507033.Spec : Prop :=
  ∀ n, P20907521895507033.a n = (A057000 (n + 1) : ℚ)

end A057000

/-! ## A057000.P8438174892365500582

`A083239(n+2)-A083239(n)`
-/

namespace A057000.P8438174892365500582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083239 (n + 2) - A083239 n

end

end A057000.P8438174892365500582

namespace A057000

/-- `A083239(n+2)-A083239(n)` -/
def P8438174892365500582.Spec : Prop :=
  ∀ n, P8438174892365500582.a n = A057000 (n + 1)

end A057000

/-!
# A057001: (phi(n+1)-phi(n))/2.

The programs for A057001, the canonical program `A057001.P14440288707371223238` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057001 has offset 3).

The definition of A057001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057001.P14440288707371223238

`(A000010(n+4)-A000010(n+3))/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057001

/-- `(A000010(n+4)-A000010(n+3))/2` -/
def P14440288707371223238.Spec : Prop :=
  ∀ n, P14440288707371223238.a n = (A057001 (n + 3) : ℚ)

end A057001

/-! ## A057001.P6262013438870649235

`Δ[A000010(n+3)/2]`
-/

namespace A057001.P6262013438870649235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P6262013438870649235

namespace A057001

/-- `Δ[A000010(n+3)/2]` -/
def P6262013438870649235.Spec : Prop :=
  ∀ n, P6262013438870649235.a n = (A057001 (n + 3) : ℚ)

end A057001

/-! ## A057001.P14728179916321600371

`Δ[A001281(A000010(n+3))]`
-/

namespace A057001.P14728179916321600371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P14728179916321600371

namespace A057001

/-- `Δ[A001281(A000010(n+3))]` -/
def P14728179916321600371.Spec : Prop :=
  ∀ n, P14728179916321600371.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P1156773446607153395

`Δ[A004524(A000010(n+3)+1)]`
-/

namespace A057001.P1156773446607153395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A000010 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P1156773446607153395

namespace A057001

/-- `Δ[A004524(A000010(n+3)+1)]` -/
def P1156773446607153395.Spec : Prop :=
  ∀ n, P1156773446607153395.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P11377197591238561585

`Δ[A008619(A000010(n+3)+1)]`
-/

namespace A057001.P11377197591238561585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P11377197591238561585

namespace A057001

/-- `Δ[A008619(A000010(n+3)+1)]` -/
def P11377197591238561585.Spec : Prop :=
  ∀ n, P11377197591238561585.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P8592259960609223957

`Δ[A028242(A000010(n+3)+1)]`
-/

namespace A057001.P8592259960609223957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000010 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P8592259960609223957

namespace A057001

/-- `Δ[A028242(A000010(n+3)+1)]` -/
def P8592259960609223957.Spec : Prop :=
  ∀ n, P8592259960609223957.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P14077064434602628879

`Δ[A004526(A000010(n+3)+2)]`
-/

namespace A057001.P14077064434602628879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P14077064434602628879

namespace A057001

/-- `Δ[A004526(A000010(n+3)+2)]` -/
def P14077064434602628879.Spec : Prop :=
  ∀ n, P14077064434602628879.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P13894936407625983315

`Δ[A289439(A000010(n+3)+2)]`
-/

namespace A057001.P13894936407625983315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A000010 (n + 3) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P13894936407625983315

namespace A057001

/-- `Δ[A289439(A000010(n+3)+2)]` -/
def P13894936407625983315.Spec : Prop :=
  ∀ n, P13894936407625983315.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P6145100578903579678

`Δ[A006370(A000010(n+3)-2)]`
-/

namespace A057001.P6145100578903579678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000010 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P6145100578903579678

namespace A057001

/-- `Δ[A006370(A000010(n+3)-2)]` -/
def P6145100578903579678.Spec : Prop :=
  ∀ n, P6145100578903579678.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P16816307129833234855

`Δ[A109168(A000010(n+3)+5)]`
-/

namespace A057001.P16816307129833234855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A000010 (n + 3) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P16816307129833234855

namespace A057001

/-- `Δ[A109168(A000010(n+3)+5)]` -/
def P16816307129833234855.Spec : Prop :=
  ∀ n, P16816307129833234855.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P8794725094572777734

`Δ[A055684(n+3)]`
-/

namespace A057001.P8794725094572777734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P8794725094572777734

namespace A057001

/-- `Δ[A055684(n+3)]` -/
def P8794725094572777734.Spec : Prop :=
  ∀ n, P8794725094572777734.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P10155202088855489037

`Δ[A242112(Δ[A002088(n+2)])]`
-/

namespace A057001.P10155202088855489037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P10155202088855489037

namespace A057001

/-- `Δ[A242112(Δ[A002088(n+2)])]` -/
def P10155202088855489037.Spec : Prop :=
  ∀ n, P10155202088855489037.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P10455475787356848251

`A055684(n+4)-A055684(n+3)`
-/

namespace A057001.P10455475787356848251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (n + 4) - A055684 (n + 3)

end

end A057001.P10455475787356848251

namespace A057001

/-- `A055684(n+4)-A055684(n+3)` -/
def P10455475787356848251.Spec : Prop :=
  ∀ n, P10455475787356848251.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P4592426398585308505

`Δ[A023022(n+3)]`
-/

namespace A057001.P4592426398585308505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P4592426398585308505

namespace A057001

/-- `Δ[A023022(n+3)]` -/
def P4592426398585308505.Spec : Prop :=
  ∀ n, P4592426398585308505.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P9529707274030168147

`A057000(n+3)/2`
-/

namespace A057001.P9529707274030168147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057000 (n + 3) : ℚ) / 2

end

end A057001.P9529707274030168147

namespace A057001

/-- `A057000(n+3)/2` -/
def P9529707274030168147.Spec : Prop :=
  ∀ n, P9529707274030168147.a n = (A057001 (n + 3) : ℚ)

end A057001

/-! ## A057001.P7989400565549587886

`Δ[Δ[A046657(n+2)]]`
-/

namespace A057001.P7989400565549587886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P7989400565549587886

namespace A057001

/-- `Δ[Δ[A046657(n+2)]]` -/
def P7989400565549587886.Spec : Prop :=
  ∀ n, P7989400565549587886.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P9780984092078367998

`A023022(n+4)-A023022(n+3)`
-/

namespace A057001.P9780984092078367998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 4) - A023022 (n + 3)

end

end A057001.P9780984092078367998

namespace A057001

/-- `A023022(n+4)-A023022(n+3)` -/
def P9780984092078367998.Spec : Prop :=
  ∀ n, P9780984092078367998.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P16428967750674448274

`Δ[Δ[A049806(n+2)]]`
-/

namespace A057001.P16428967750674448274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P16428967750674448274

namespace A057001

/-- `Δ[Δ[A049806(n+2)]]` -/
def P16428967750674448274.Spec : Prop :=
  ∀ n, P16428967750674448274.a n = A057001 (n + 3)

end A057001

/-! ## A057001.P13822307412292841981

`Δ[A039649(n+3)/2]`
-/

namespace A057001.P13822307412292841981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P13822307412292841981

namespace A057001

/-- `Δ[A039649(n+3)/2]` -/
def P13822307412292841981.Spec : Prop :=
  ∀ n, P13822307412292841981.a n = (A057001 (n + 3) : ℚ)

end A057001

/-! ## A057001.P14086431938660432353

`Δ[A109606(n+3)/2]`
-/

namespace A057001.P14086431938660432353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057001.P14086431938660432353

namespace A057001

/-- `Δ[A109606(n+3)/2]` -/
def P14086431938660432353.Spec : Prop :=
  ∀ n, P14086431938660432353.a n = (A057001 (n + 3) : ℚ)

end A057001

/-!
# A057003: Write the natural numbers in groups: 1; 2,3; 4,5,6; 7,8,9,10; ... and multiply the members of each group.

The programs for A057003, the canonical program `A057003.P14613228913504739719` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057003 has offset 1).

The definition of A057003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057003.P14613228913504739719

`C((n+1)*(n+2)/2, n+1)*(n+1)!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057003

/-- `C((n+1)*(n+2)/2, n+1)*(n+1)!` -/
def P14613228913504739719.Spec : Prop :=
  ∀ n, (P14613228913504739719.a n : ℤ) = A057003 (n + 1)

theorem P14613228913504739719.correct : P14613228913504739719.Spec := by
  intro n
  simp only [A057003, Nat.add_sub_cancel]

end A057003

/-! ## A057003.P15178679869518249146

`((n+1)*(n+2)/2)!/(n*(n+1)/2)!`
-/

namespace A057003.P15178679869518249146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A057003.P15178679869518249146

namespace A057003

/-- `((n+1)*(n+2)/2)!/(n*(n+1)/2)!` -/
def P15178679869518249146.Spec : Prop :=
  ∀ n, P15178679869518249146.a n = (A057003 (n + 1) : ℚ)

end A057003

/-! ## A057003.P1046707139990201411

`(n+1)!*C(∑[n+1], ∑[n])`
-/

namespace A057003.P1046707139990201411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A057003.P1046707139990201411

namespace A057003

/-- `(n+1)!*C(∑[n+1], ∑[n])` -/
def P1046707139990201411.Spec : Prop :=
  ∀ n, (P1046707139990201411.a n : ℤ) = A057003 (n + 1)

end A057003

/-! ## A057003.P5138929899601261688

`C(∑[n+1], ∑[n])*∏[n+1]`
-/

namespace A057003.P5138929899601261688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A057003.P5138929899601261688

namespace A057003

/-- `C(∑[n+1], ∑[n])*∏[n+1]` -/
def P5138929899601261688.Spec : Prop :=
  ∀ n, (P5138929899601261688.a n : ℤ) = A057003 (n + 1)

end A057003

/-! ## A057003.P12376779737862194956

`Δ[A227364(∑[n])]`
-/

namespace A057003.P12376779737862194956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057003.P12376779737862194956

namespace A057003

/-- `Δ[A227364(∑[n])]` -/
def P12376779737862194956.Spec : Prop :=
  ∀ n, P12376779737862194956.a n = A057003 (n + 1)

end A057003

/-!
# A057004: Array T(n,k) = number of conjugacy classes of subgroups of index k in free group of rank n, read by antidiagonals.

The programs for A057004, there is no canonical definition to state claims against.
-/

/-! ## A057004.P12398391108143067636

`A176791(n)%A011554(n+1)`
-/

namespace A057004.P12398391108143067636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176791 n) (A011554 (n + 1))

end

end A057004.P12398391108143067636

/-! ## A057004.P1701621012064403583

`round(∏{e}[3^n, A355333(#)]/A288853(n))`
-/

namespace A057004.P1701621012064403583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), A355333 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / (A288853 n : ℚ))

end

end A057004.P1701621012064403583

/-! ## A057004.P963563119842358879

`A238403(A000055(n))+A046802(n)`
-/

namespace A057004.P963563119842358879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (A000055 n).toNat + A046802 n

end

end A057004.P963563119842358879

/-! ## A057004.P17070158499824801231

`A185036(A079262(n))+A022166(n)`
-/

namespace A057004.P17070158499824801231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A079262 n).toNat + A022166 n

end

end A057004.P17070158499824801231

/-! ## A057004.P2065484822976098322

`A194276(A185254(n))+A022166(n)`
-/

namespace A057004.P2065484822976098322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194276 (A185254 n).toNat + A022166 n

end

end A057004.P2065484822976098322

/-!
# A057005: Number of conjugacy classes of subgroups of index n in free group of rank 2.

The programs for A057005, there is no canonical definition to state claims against.
-/

/-! ## A057005.P17395543940169777647

`A057004(∑[n+2])`
-/

namespace A057005.P17395543940169777647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057005.P17395543940169777647

/-! ## A057005.P12177067976258238815

`record[ratio[1/A057004(n+1)]]`
-/

namespace A057005.P12177067976258238815
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A057004 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057005.P12177067976258238815

/-! ## A057005.P1548431898960637820

`record[A057004(∑[A152271(n)])]`
-/

namespace A057005.P1548431898960637820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057005.P1548431898960637820

/-! ## A057005.P17420895250483494814

`record[ratio[A057004(A038722(n+1))]]`
-/

namespace A057005.P17420895250483494814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A038722 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057005.P17420895250483494814

/-! ## A057005.P6095835151648858584

`record[root(A057004(n+1), A090182(n))]`
-/

namespace A057005.P6095835151648858584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057004 (n + 1) : ℝ) ^ (1 / (A090182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057005.P6095835151648858584

/-!
# A057006: Number of conjugacy classes of subgroups of index n in free group of rank 3.

The programs for A057006, there is no canonical definition to state claims against.
-/

/-! ## A057006.P15778719122134354577

`A057004(∑[n+3]+1)`
-/

namespace A057006.P15778719122134354577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057006.P15778719122134354577

/-! ## A057006.P17263070140489513306

`record[A057004(Δ[A054974(n+2)])]`
-/

namespace A057006.P17263070140489513306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057006.P17263070140489513306

/-! ## A057006.P5712673205804068518

`record[A057004(eq[1, A104244(n+1)])]`
-/

namespace A057006.P5712673205804068518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057006.P5712673205804068518

/-! ## A057006.P2729933284073291834

`record[gcd(A057004(n+1), A214776(n+2))]`
-/

namespace A057006.P2729933284073291834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057004 (n + 1)) (A214776 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057006.P2729933284073291834

/-! ## A057006.P8470839521196234383

`record[A057004(A034856(∑{e}[n+1, #]+1))]`
-/

namespace A057006.P8470839521196234383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A034856 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057006.P8470839521196234383

/-!
# A057007: Number of conjugacy classes of subgroups of index n in free group of rank 4.

The programs for A057007, there is no canonical definition to state claims against.
-/

/-! ## A057007.P1152170062923966371

`A057004(A141214(n+1))`
-/

namespace A057007.P1152170062923966371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A141214 (n + 1)).toNat

end

end A057007.P1152170062923966371

/-! ## A057007.P479601692959936579

`A057004(A027379(n+2))`
-/

namespace A057007.P479601692959936579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A027379 (n + 2)).toNat

end

end A057007.P479601692959936579

/-! ## A057007.P16969141161064358909

`A057004(A155212(n)+5)`
-/

namespace A057007.P16969141161064358909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A155212 n + 5).toNat

end

end A057007.P16969141161064358909

/-! ## A057007.P14476326869804463809

`A057004(A056000(n)+7)`
-/

namespace A057007.P14476326869804463809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A056000 n + 7).toNat

end

end A057007.P14476326869804463809

/-! ## A057007.P17848148581088909065

`A057004(eq[4, A140997(n)])`
-/

namespace A057007.P17848148581088909065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057007.P17848148581088909065

/-!
# A057008: Number of conjugacy classes of subgroups of index n in free group of rank 5.

The programs for A057008, there is no canonical definition to state claims against.
-/

/-! ## A057008.P17578038265557179129

`A057004(Δ[A264443(n)])`
-/

namespace A057008.P17578038265557179129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (f1 (n + 1) - f1 n).toNat

end

end A057008.P17578038265557179129

/-! ## A057008.P919226026594203880

`A057004(eq[2, A092921(n)])`
-/

namespace A057008.P919226026594203880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057008.P919226026594203880

/-! ## A057008.P8658097186194392484

`A057004(eq[4, A193592(n)])`
-/

namespace A057008.P8658097186194392484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057008.P8658097186194392484

/-! ## A057008.P2990547495848816007

`A057004(Δ[A023545(n+1)])`
-/

namespace A057008.P2990547495848816007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (f1 (n + 1) - f1 n).toNat

end

end A057008.P2990547495848816007

/-! ## A057008.P2739004864608241026

`A057004(A027379(n+3)-1)`
-/

namespace A057008.P2739004864608241026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A027379 (n + 3) - 1).toNat

end

end A057008.P2739004864608241026

/-!
# A057009: Number of conjugacy classes of subgroups of index 3 in free group of rank n.

The programs for A057009, the canonical program `A057009.P5013518911641145531` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057009 has offset 1).

The definition of A057009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057009.P5013518911641145531

`6^n+3^n-2^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057009

/-- `6^n+3^n-2^n` -/
def P5013518911641145531.Spec : Prop :=
  ∀ n, P5013518911641145531.a n = A057009 (n + 1)

theorem P5013518911641145531.correct : P5013518911641145531.Spec := by
  intro n
  simp only [A057009, Nat.add_sub_cancel]

end A057009

/-! ## A057009.P9405446467756220547

`abs(2^n+1-A074508(n))`
-/

namespace A057009.P9405446467756220547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n + 1 : ℤ) - A074508 n|

end

end A057009.P9405446467756220547

namespace A057009

/-- `abs(2^n+1-A074508(n))` -/
def P9405446467756220547.Spec : Prop :=
  ∀ n, P9405446467756220547.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P12357088020061222023

`abs(A155597(n)+3^n-1)`
-/

namespace A057009.P12357088020061222023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155597 n + ((3 ^ n : ℤ) - 1)|

end

end A057009.P12357088020061222023

namespace A057009

/-- `abs(A155597(n)+3^n-1)` -/
def P12357088020061222023.Spec : Prop :=
  ∀ n, P12357088020061222023.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P3356813423410900991

`abs(2^n-1-A155604(n))`
-/

namespace A057009.P3356813423410900991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A155604 n|

end

end A057009.P3356813423410900991

namespace A057009

/-- `abs(2^n-1-A155604(n))` -/
def P3356813423410900991.Spec : Prop :=
  ∀ n, P3356813423410900991.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P18203011251069698487

`abs(A000079(n)-A074607(n))`
-/

namespace A057009.P18203011251069698487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A074607 n|

end

end A057009.P18203011251069698487

namespace A057009

/-- `abs(A000079(n)-A074607(n))` -/
def P18203011251069698487.Spec : Prop :=
  ∀ n, P18203011251069698487.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P12378918699297013396

`abs(A001579(n)-A074600(n))`
-/

namespace A057009.P12378918699297013396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - A074600 n|

end

end A057009.P12378918699297013396

namespace A057009

/-- `abs(A001579(n)-A074600(n))` -/
def P12378918699297013396.Spec : Prop :=
  ∀ n, P12378918699297013396.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P3798422729827012082

`Δ[A134063(n)+A003464(n)]`
-/

namespace A057009.P3798422729827012082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n + A003464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057009.P3798422729827012082

namespace A057009

/-- `Δ[A134063(n)+A003464(n)]` -/
def P3798422729827012082.Spec : Prop :=
  ∀ n, P3798422729827012082.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P12364181223554498149

`or(1, A001579(n)-A074501(n))`
-/

namespace A057009.P12364181223554498149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001579 n - A074501 n)

end

end A057009.P12364181223554498149

namespace A057009

/-- `or(1, A001579(n)-A074501(n))` -/
def P12364181223554498149.Spec : Prop :=
  ∀ n, P12364181223554498149.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P5171330113916498237

`abs(A001047(n)+Δ[A047851(n)])`
-/

namespace A057009.P5171330113916498237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n + (f1 (n + 1) - f1 n)|

end

end A057009.P5171330113916498237

namespace A057009

/-- `abs(A001047(n)+Δ[A047851(n)])` -/
def P5171330113916498237.Spec : Prop :=
  ∀ n, P5171330113916498237.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P14159487339794369141

`abs(∑[A011782(n)]-A074607(n))`
-/

namespace A057009.P14159487339794369141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A074607 n|

end

end A057009.P14159487339794369141

namespace A057009

/-- `abs(∑[A011782(n)]-A074607(n))` -/
def P14159487339794369141.Spec : Prop :=
  ∀ n, P14159487339794369141.a n = A057009 (n + 1)

end A057009

/-! ## A057009.P12922715245518917929

`Δ[A047851(n)+A000392(n+1)]`
-/

namespace A057009.P12922715245518917929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 n + A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057009.P12922715245518917929

namespace A057009

/-- `Δ[A047851(n)+A000392(n+1)]` -/
def P12922715245518917929.Spec : Prop :=
  ∀ n, P12922715245518917929.a n = A057009 (n + 1)

end A057009

/-!
# A057010: Number of conjugacy classes of subgroups of index 4 in free group of rank n.

The programs for A057010, the canonical program `A057010.P2577822004845922239` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057010 has offset 1).

The definition of A057010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057010.P2577822004845922239

`24^n+8^n-6^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057010

/-- `24^n+8^n-6^n` -/
def P2577822004845922239.Spec : Prop :=
  ∀ n, P2577822004845922239.a n = A057010 (n + 1)

theorem P2577822004845922239.correct : P2577822004845922239.Spec := by
  intro n
  simp only [A057010, Nat.add_sub_cancel]

end A057010

/-! ## A057010.P7964579297355145863

`or(A009968(n)-A000400(n), A009968(n))`
-/

namespace A057010.P7964579297355145863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009968 n - A000400 n) (A009968 n)

end

end A057010.P7964579297355145863

namespace A057010

/-- `or(A009968(n)-A000400(n), A009968(n))` -/
def P7964579297355145863.Spec : Prop :=
  ∀ n, P7964579297355145863.a n = A057010 (n + 1)

end A057010

/-! ## A057010.P16711611403243568434

`A057004(A141214(n)+7)`
-/

namespace A057010.P16711611403243568434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A141214 n + 7).toNat

end

end A057010.P16711611403243568434

namespace A057010

/-- `A057004(A141214(n)+7)` -/
def P16711611403243568434.Spec : Prop :=
  ∀ n, P16711611403243568434.a n = A057010 (n + 1)

end A057010

/-!
# A057011: Number of conjugacy classes of subgroups of index 5 in free group of rank n.

The programs for A057011, the canonical program `A057011.P3051020439161269528` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057011 has offset 1).

The definition of A057011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057011.P3051020439161269528

`120^n-24^n-12^n+6^n+5^n+4^n-2^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057011

/-- `120^n-24^n-12^n+6^n+5^n+4^n-2^n` -/
def P3051020439161269528.Spec : Prop :=
  ∀ n, P3051020439161269528.a n = A057011 (n + 1)

theorem P3051020439161269528.correct : P3051020439161269528.Spec := by
  intro n
  simp only [A057011, Nat.add_sub_cancel]

end A057011

/-! ## A057011.P13207981449287161329

`A057004(A155212(n)+13)`
-/

namespace A057011.P13207981449287161329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A155212 n + 13).toNat

end

end A057011.P13207981449287161329

namespace A057011

/-- `A057004(A155212(n)+13)` -/
def P13207981449287161329.Spec : Prop :=
  ∀ n, P13207981449287161329.a n = A057011 (n + 1)

end A057011

/-! ## A057011.P15767538242519217049

`A057004(A056000(n)+15)`
-/

namespace A057011.P15767538242519217049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A056000 n + 15).toNat

end

end A057011.P15767538242519217049

namespace A057011

/-- `A057004(A056000(n)+15)` -/
def P15767538242519217049.Spec : Prop :=
  ∀ n, P15767538242519217049.a n = A057011 (n + 1)

end A057011

/-! ## A057011.P332877102428967540

`A057004(A167614(n+3)+2)`
-/

namespace A057011.P332877102428967540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A167614 (n + 3) + 2).toNat

end

end A057011.P332877102428967540

namespace A057011

/-- `A057004(A167614(n+3)+2)` -/
def P332877102428967540.Spec : Prop :=
  ∀ n, P332877102428967540.a n = A057011 (n + 1)

end A057011

/-! ## A057011.P9148417844660738928

`A057004(A051936(n+4)+14)`
-/

namespace A057011.P9148417844660738928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A051936 (n + 4) + 14).toNat

end

end A057011.P9148417844660738928

namespace A057011

/-- `A057004(A051936(n+4)+14)` -/
def P9148417844660738928.Spec : Prop :=
  ∀ n, P9148417844660738928.a n = A057011 (n + 1)

end A057011

/-!
# A057012: Number of conjugacy classes of subgroups of index 6 in free group of rank n.

The programs for A057012, there is no canonical definition to state claims against.
-/

/-! ## A057012.P15441487654694667372

`A057004(eq[7, A131818(n+1)])`
-/

namespace A057012.P15441487654694667372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057012.P15441487654694667372

/-! ## A057012.P5364162498923624701

`A057004(A052905(n+3)-(n-5))`
-/

namespace A057012.P5364162498923624701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (A052905 (n + 3) - ((n : ℤ) - 5)).toNat

end

end A057012.P5364162498923624701

/-!
# A057013: Number of conjugacy classes of subgroups of index n in free group of rank n.

The programs for A057013, there is no canonical definition to state claims against.
-/

/-! ## A057013.P10996565694679496094

`A057004(∑[4*n]+1)`
-/

namespace A057013.P10996565694679496094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057004 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057013.P10996565694679496094

/-! ## A057013.P9707017576092219007

`A281155(n)+A057004(A001844(n))`
-/

namespace A057013.P9707017576092219007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A057004 (A001844 n).toNat

end

end A057013.P9707017576092219007

/-! ## A057013.P1719377211039953210

`A057004(A001844(n))^A119326(n)`
-/

namespace A057013.P1719377211039953210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057004 (A001844 n).toNat : ℚ) ^ (A119326 n : ℤ)

end

end A057013.P1719377211039953210

/-! ## A057013.P3878502727911512584

`A057004(A001844(n))^A178334(n)`
-/

namespace A057013.P3878502727911512584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057004 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A057013.P3878502727911512584

/-! ## A057013.P12401862309570579939

`A057004(A001844(n))^A287656(n)`
-/

namespace A057013.P12401862309570579939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057004 (A001844 n).toNat : ℚ) ^ (A287656 n : ℤ)

end

end A057013.P12401862309570579939

/-!
# A057014: Number of subgroups of index n in free group of rank n.

The programs for A057014, there is no canonical definition to state claims against.
-/

/-! ## A057014.P13196011278351657503

`A049290((n+1)²+n²)`
-/

namespace A057014.P13196011278351657503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049290 ((n + 1) ^ 2 + n ^ 2)

end

end A057014.P13196011278351657503

/-!
# A057015: Numbers k such that k^2 + 1, k^2 + 3, k^2 + 7 and k^2 + 9 are all primes.

The programs for A057015, there is no canonical definition to state claims against.
-/

/-! ## A057015.P1198577042580855348

`∩[A114272(n+1), A182238(n+1)]`
-/

namespace A057015.P1198577042580855348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057015.P1198577042580855348

/-!
# A057017: Numbers k such that the product of the first k composite numbers minus 1 is a prime.

The programs for A057017, there is no canonical definition to state claims against.
-/

/-! ## A057017.P8993468071944847968

`A305800(A049421(n+1))-2`
-/

namespace A057017.P8993468071944847968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (A049421 (n + 1)).toNat - 2

end

end A057017.P8993468071944847968

/-! ## A057017.P13080824818063734596

`A065855(A049421(n+1))`
-/

namespace A057017.P13080824818063734596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A049421 (n + 1)).toNat

end

end A057017.P13080824818063734596

/-! ## A057017.P6619734363795857386

`A347785(∑[A066657(2^n)])`
-/

namespace A057017.P6619734363795857386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057017.P6619734363795857386

/-!
# A057019: Difference between n!! and the first prime after n!! + 1.

The programs for A057019, there is no canonical definition to state claims against.
-/

/-! ## A057019.P2384803872175747717

`A178606(n+1)-A216466(n+1)`
-/

namespace A057019.P2384803872175747717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178606 (n + 1) - A216466 (n + 1)

end

end A057019.P2384803872175747717

/-! ## A057019.P13869725335659507057

`A178606(n+1)%A106230(n+1)`
-/

namespace A057019.P13869725335659507057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178606 (n + 1)) (A106230 (n + 1))

end

end A057019.P13869725335659507057

/-! ## A057019.P6963342318393069398

`A255598(A151977(n+2)+1)`
-/

namespace A057019.P6963342318393069398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255598 (A151977 (n + 2) + 1).toNat

end

end A057019.P6963342318393069398

/-! ## A057019.P4302322763332924175

`A151800(A006882(n+1))%A106230(n+1)`
-/

namespace A057019.P4302322763332924175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A006882 (n + 1)).toNat) (A106230 (n + 1))

end

end A057019.P4302322763332924175

/-! ## A057019.P2807236696169816665

`A151800(A006882(n+1)+1)-A006882(n+1)`
-/

namespace A057019.P2807236696169816665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006882 (n + 1) + 1).toNat - A006882 (n + 1)

end

end A057019.P2807236696169816665

/-!
# A057020: Numerator of (sum of divisors of n / number of divisors of n).

The programs for A057020, the canonical program `A057020.P17158263776737705447` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057020 has offset 1).

The definition of A057020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057020.P17158263776737705447

`A000203(n+1)/A009205(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057020

/-- `A000203(n+1)/A009205(n+1)` -/
def P17158263776737705447.Spec : Prop :=
  ∀ n, P17158263776737705447.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P5099356074440718386

`A057021(n+1)*A000203(n+1)/A000005(n+1)`
-/

namespace A057020.P5099356074440718386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057021 (n + 1) * A000203 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A057020.P5099356074440718386

namespace A057020

/-- `A057021(n+1)*A000203(n+1)/A000005(n+1)` -/
def P5099356074440718386.Spec : Prop :=
  ∀ n, P5099356074440718386.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P8645557909434736540

`(A057022(n+1)+A054025(n+1)/A000005(n+1))*A057021(n+1)`
-/

namespace A057020.P8645557909434736540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057022 (n + 1) : ℚ) + (A054025 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)) * (A057021 (n + 1) : ℚ)

end

end A057020.P8645557909434736540

namespace A057020

/-- `(A057022(n+1)+A054025(n+1)/A000005(n+1))*A057021(n+1)` -/
def P8645557909434736540.Spec : Prop :=
  ∀ n, P8645557909434736540.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P13479488099212797199

`A009278(n+1)/Δ[A054519(n)]`
-/

namespace A057020.P13479488099212797199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A057020.P13479488099212797199

namespace A057020

/-- `A009278(n+1)/Δ[A054519(n)]` -/
def P13479488099212797199.Spec : Prop :=
  ∀ n, P13479488099212797199.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P13585254958469723843

`A099378(n+1)*A348969(n+1)`
-/

namespace A057020.P13585254958469723843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1) * A348969 (n + 1)

end

end A057020.P13585254958469723843

namespace A057020

/-- `A099378(n+1)*A348969(n+1)` -/
def P13585254958469723843.Spec : Prop :=
  ∀ n, P13585254958469723843.a n = A057020 (n + 1)

end A057020

/-! ## A057020.P1583662822117544515

`A009278(n+1)/A000005(n+1)`
-/

namespace A057020.P1583662822117544515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A057020.P1583662822117544515

namespace A057020

/-- `A009278(n+1)/A000005(n+1)` -/
def P1583662822117544515.Spec : Prop :=
  ∀ n, P1583662822117544515.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P5979932199008870354

`∑{d}[∑[A157142(n)], #/A009205(n+1)]`
-/

namespace A057020.P5979932199008870354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P5979932199008870354

namespace A057020

/-- `∑{d}[∑[A157142(n)], #/A009205(n+1)]` -/
def P5979932199008870354.Spec : Prop :=
  ∀ n, P5979932199008870354.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P14256579882592143501

`(A065608(n+1)+A000005(n+1))/A009205(n+1)`
-/

namespace A057020.P14256579882592143501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065608 (n + 1) + A000005 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P14256579882592143501

namespace A057020

/-- `(A065608(n+1)+A000005(n+1))/A009205(n+1)` -/
def P14256579882592143501.Spec : Prop :=
  ∀ n, P14256579882592143501.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P7560948920715503216

`(A007503(n+1)-A000005(n+1))/A009205(n+1)`
-/

namespace A057020.P7560948920715503216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000005 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P7560948920715503216

namespace A057020

/-- `(A007503(n+1)-A000005(n+1))/A009205(n+1)` -/
def P7560948920715503216.Spec : Prop :=
  ∀ n, P7560948920715503216.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P13651288378143574003

`A000203(n+1)*A009278(n+1)/A064840(n+1)`
-/

namespace A057020.P13651288378143574003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A009278 (n + 1) : ℚ) / (A064840 (n + 1) : ℚ)

end

end A057020.P13651288378143574003

namespace A057020

/-- `A000203(n+1)*A009278(n+1)/A064840(n+1)` -/
def P13651288378143574003.Spec : Prop :=
  ∀ n, P13651288378143574003.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P7961900501761986181

`A009278(n+1)/(A009205(n+1)*A057021(n+1))`
-/

namespace A057020.P7961900501761986181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A009205 (n + 1) * A057021 (n + 1) : ℚ)

end

end A057020.P7961900501761986181

namespace A057020

/-- `A009278(n+1)/(A009205(n+1)*A057021(n+1))` -/
def P7961900501761986181.Spec : Prop :=
  ∀ n, P7961900501761986181.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P16753540891963372897

`A000203(n+1)/gcd(A000203(n+1), A007503(n+1))`
-/

namespace A057020.P16753540891963372897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A007503 (n + 1)) : ℚ)

end

end A057020.P16753540891963372897

namespace A057020

/-- `A000203(n+1)/gcd(A000203(n+1), A007503(n+1))` -/
def P16753540891963372897.Spec : Prop :=
  ∀ n, P16753540891963372897.a n = (A057020 (n + 1) : ℚ)

end A057020

/-! ## A057020.P12109425925357160024

`A064840(n+1)/gcd(A000005(n+1)², A064840(n+1))`
-/

namespace A057020.P12109425925357160024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1) ^ 2) (A064840 (n + 1)) : ℚ)

end

end A057020.P12109425925357160024

namespace A057020

/-- `A064840(n+1)/gcd(A000005(n+1)², A064840(n+1))` -/
def P12109425925357160024.Spec : Prop :=
  ∀ n, P12109425925357160024.a n = (A057020 (n + 1) : ℚ)

end A057020

/-!
# A057021: Denominator of (sum of divisors of n / number of divisors of n).

The programs for A057021, the canonical program `A057021.P14859402968036356371` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057021 has offset 1).

The definition of A057021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057021.P14859402968036356371

`A000005(n+1)/A009205(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057021

/-- `A000005(n+1)/A009205(n+1)` -/
def P14859402968036356371.Spec : Prop :=
  ∀ n, P14859402968036356371.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P4738975831353132976

`A057020(n+1)*A000005(n+1)/A000203(n+1)`
-/

namespace A057021.P4738975831353132976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057020 (n + 1) * A000005 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A057021.P4738975831353132976

namespace A057021

/-- `A057020(n+1)*A000005(n+1)/A000203(n+1)` -/
def P4738975831353132976.Spec : Prop :=
  ∀ n, P4738975831353132976.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P13502442367552245179

`A009278(n+1)/∑{d}[n+1, #]`
-/

namespace A057021.P13502442367552245179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A057021.P13502442367552245179

namespace A057021

/-- `A009278(n+1)/∑{d}[n+1, #]` -/
def P13502442367552245179.Spec : Prop :=
  ∀ n, P13502442367552245179.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P16953346342297917600

`A009278(n+1)/Δ[A160664(n)]`
-/

namespace A057021.P16953346342297917600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A057021.P16953346342297917600

namespace A057021

/-- `A009278(n+1)/Δ[A160664(n)]` -/
def P16953346342297917600.Spec : Prop :=
  ∀ n, P16953346342297917600.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P4011224537285342188

`A009278(n+1)/A000203(n+1)`
-/

namespace A057021.P4011224537285342188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A057021.P4011224537285342188

namespace A057021

/-- `A009278(n+1)/A000203(n+1)` -/
def P4011224537285342188.Spec : Prop :=
  ∀ n, P4011224537285342188.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P2465286156022791318

`A099377(n+1)/A348968(n+1)`
-/

namespace A057021.P2465286156022791318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (A348968 (n + 1) : ℚ)

end

end A057021.P2465286156022791318

namespace A057021

/-- `A099377(n+1)/A348968(n+1)` -/
def P2465286156022791318.Spec : Prop :=
  ∀ n, P2465286156022791318.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P4130145821943925376

`abs(A009278(n+1)/Δ[A330725(n)])`
-/

namespace A057021.P4130145821943925376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009278 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A057021.P4130145821943925376

namespace A057021

/-- `abs(A009278(n+1)/Δ[A330725(n)])` -/
def P4130145821943925376.Spec : Prop :=
  ∀ n, P4130145821943925376.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P14819359418269352994

`abs(A009278(n+1)/A143348(n+1))`
-/

namespace A057021.P14819359418269352994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009278 (n + 1) : ℚ) / (A143348 (n + 1) : ℚ)|

end

end A057021.P14819359418269352994

namespace A057021

/-- `abs(A009278(n+1)/A143348(n+1))` -/
def P14819359418269352994.Spec : Prop :=
  ∀ n, P14819359418269352994.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P4321454447011331663

`A062011(n+1)/(2*A009205(n+1))`
-/

namespace A057021.P4321454447011331663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / (2 * A009205 (n + 1) : ℚ)

end

end A057021.P4321454447011331663

namespace A057021

/-- `A062011(n+1)/(2*A009205(n+1))` -/
def P4321454447011331663.Spec : Prop :=
  ∀ n, P4321454447011331663.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P983886597320135308

`A009278(n+1)/floor(A239050(n+1)/4)`
-/

namespace A057021.P983886597320135308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (⌊(A239050 (n + 1) : ℚ) / 4⌋ : ℚ)

end

end A057021.P983886597320135308

namespace A057021

/-- `A009278(n+1)/floor(A239050(n+1)/4)` -/
def P983886597320135308.Spec : Prop :=
  ∀ n, P983886597320135308.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P14736599983562027860

`A009278(n+1)/floor(A274535(n+1)/5)`
-/

namespace A057021.P14736599983562027860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (⌊(A274535 (n + 1) : ℚ) / 5⌋ : ℚ)

end

end A057021.P14736599983562027860

namespace A057021

/-- `A009278(n+1)/floor(A274535(n+1)/5)` -/
def P14736599983562027860.Spec : Prop :=
  ∀ n, P14736599983562027860.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P5436890972337263930

`A326139(A062011(n+1)/A009205(n+1))`
-/

namespace A057021.P5436890972337263930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326139 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ))).toNat

end

end A057021.P5436890972337263930

namespace A057021

/-- `A326139(A062011(n+1)/A009205(n+1))` -/
def P5436890972337263930.Spec : Prop :=
  ∀ n, P5436890972337263930.a n = A057021 (n + 1)

end A057021

/-! ## A057021.P9836747312043765884

`A099377(n+1)/gcd(A099377(n+1), A131738(n))`
-/

namespace A057021.P9836747312043765884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099377 (n + 1) : ℚ) / (Int.gcd (A099377 (n + 1)) (A131738 n) : ℚ)

end

end A057021.P9836747312043765884

namespace A057021

/-- `A099377(n+1)/gcd(A099377(n+1), A131738(n))` -/
def P9836747312043765884.Spec : Prop :=
  ∀ n, P9836747312043765884.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P699425528093477969

`A348969(n+1)+A348510(n+1)/A348968(n+1)`
-/

namespace A057021.P699425528093477969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348969 (n + 1) : ℚ) + (A348510 (n + 1) : ℚ) / (A348968 (n + 1) : ℚ)

end

end A057021.P699425528093477969

namespace A057021

/-- `A348969(n+1)+A348510(n+1)/A348968(n+1)` -/
def P699425528093477969.Spec : Prop :=
  ∀ n, P699425528093477969.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P14574900842942105551

`(A007503(n+1)-A000203(n+1))/A009205(n+1)`
-/

namespace A057021.P14574900842942105551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057021.P14574900842942105551

namespace A057021

/-- `(A007503(n+1)-A000203(n+1))/A009205(n+1)` -/
def P14574900842942105551.Spec : Prop :=
  ∀ n, P14574900842942105551.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P9942752914815128752

`(A000203(n+1)-A065608(n+1))/A009205(n+1)`
-/

namespace A057021.P9942752914815128752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A065608 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057021.P9942752914815128752

namespace A057021

/-- `(A000203(n+1)-A065608(n+1))/A009205(n+1)` -/
def P9942752914815128752.Spec : Prop :=
  ∀ n, P9942752914815128752.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P9666145619345387356

`A064840(n+1)/(A000203(n+1)*A009205(n+1))`
-/

namespace A057021.P9666145619345387356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A000203 (n + 1) * A009205 (n + 1) : ℚ)

end

end A057021.P9666145619345387356

namespace A057021

/-- `A064840(n+1)/(A000203(n+1)*A009205(n+1))` -/
def P9666145619345387356.Spec : Prop :=
  ∀ n, P9666145619345387356.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P16482246737976255231

`A009278(n+1)/(A009205(n+1)*A057020(n+1))`
-/

namespace A057021.P16482246737976255231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009278 (n + 1) : ℚ) / (A009205 (n + 1) * A057020 (n + 1) : ℚ)

end

end A057021.P16482246737976255231

namespace A057021

/-- `A009278(n+1)/(A009205(n+1)*A057020(n+1))` -/
def P16482246737976255231.Spec : Prop :=
  ∀ n, P16482246737976255231.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P8584773210481187828

`A336839(n+1)/A009205(n+1)*A336856(n+1)`
-/

namespace A057021.P8584773210481187828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336839 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ) * (A336856 (n + 1) : ℚ)

end

end A057021.P8584773210481187828

namespace A057021

/-- `A336839(n+1)/A009205(n+1)*A336856(n+1)` -/
def P8584773210481187828.Spec : Prop :=
  ∀ n, P8584773210481187828.a n = (A057021 (n + 1) : ℚ)

end A057021

/-! ## A057021.P13774513354672994651

`lcm(A000005(n+1), A324121(n+1))/A324121(n+1)`
-/

namespace A057021.P13774513354672994651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (n + 1)) (A324121 (n + 1)) : ℚ) / (A324121 (n + 1) : ℚ)

end

end A057021.P13774513354672994651

namespace A057021

/-- `lcm(A000005(n+1), A324121(n+1))/A324121(n+1)` -/
def P13774513354672994651.Spec : Prop :=
  ∀ n, P13774513354672994651.a n = (A057021 (n + 1) : ℚ)

end A057021

/-!
# A057022: a(n) = floor((sum of divisors of n) / (number of divisors of n)), or floor(sigma_1(n)/sigma_0(n)).

The programs for A057022, the canonical program `A057022.P12449521830501119084` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057022 has offset 1).

The definition of A057022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057022.P12449521830501119084

`(A000203(n+1)-A054025(n+1))/A000005(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057022

/-- `(A000203(n+1)-A054025(n+1))/A000005(n+1)` -/
def P12449521830501119084.Spec : Prop :=
  ∀ n, P12449521830501119084.a n = (A057022 (n + 1) : ℚ)

end A057022

/-! ## A057022.P16118664517581699170

`floor(∑{d}[n+1, #]/∏{e}[n+1, #+1])`
-/

namespace A057022.P16118664517581699170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ)⌋

end

end A057022.P16118664517581699170

namespace A057022

/-- `floor(∑{d}[n+1, #]/∏{e}[n+1, #+1])` -/
def P16118664517581699170.Spec : Prop :=
  ∀ n, P16118664517581699170.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P4560591765943371878

`floor(A000203(n+1)/∏{e}[n+1, #+1])`
-/

namespace A057022.P4560591765943371878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A057022.P4560591765943371878

namespace A057022

/-- `floor(A000203(n+1)/∏{e}[n+1, #+1])` -/
def P4560591765943371878.Spec : Prop :=
  ∀ n, P4560591765943371878.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P3701949129797349560

`floor((A155085(n+1)-(n+1))/∏{e}[n+1, #+1])`
-/

namespace A057022.P3701949129797349560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)⌋

end

end A057022.P3701949129797349560

namespace A057022

/-- `floor((A155085(n+1)-(n+1))/∏{e}[n+1, #+1])` -/
def P3701949129797349560.Spec : Prop :=
  ∀ n, P3701949129797349560.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P8321951165607543040

`floor(A000203(n+1)/Δ[A006218(n)])`
-/

namespace A057022.P8321951165607543040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A057022.P8321951165607543040

namespace A057022

/-- `floor(A000203(n+1)/Δ[A006218(n)])` -/
def P8321951165607543040.Spec : Prop :=
  ∀ n, P8321951165607543040.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P3900797543317241137

`floor(A000203(n+1)/Δ[A054519(n)])`
-/

namespace A057022.P3900797543317241137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A057022.P3900797543317241137

namespace A057022

/-- `floor(A000203(n+1)/Δ[A054519(n)])` -/
def P3900797543317241137.Spec : Prop :=
  ∀ n, P3900797543317241137.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P1512055692436639117

`floor(A000203(n+1)/A000005(n+1))`
-/

namespace A057022.P1512055692436639117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A057022.P1512055692436639117

namespace A057022

/-- `floor(A000203(n+1)/A000005(n+1))` -/
def P1512055692436639117.Spec : Prop :=
  ∀ n, P1512055692436639117.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P8596876225622948726

`floor(A064987(n+1)/A038040(n+1))`
-/

namespace A057022.P8596876225622948726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064987 (n + 1) : ℚ) / (A038040 (n + 1) : ℚ)⌋

end

end A057022.P8596876225622948726

namespace A057022

/-- `floor(A064987(n+1)/A038040(n+1))` -/
def P8596876225622948726.Spec : Prop :=
  ∀ n, P8596876225622948726.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P2229926864103662841

`floor(A062354(n+1)/A062355(n+1))`
-/

namespace A057022.P2229926864103662841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062354 (n + 1) : ℚ) / (A062355 (n + 1) : ℚ)⌋

end

end A057022.P2229926864103662841

namespace A057022

/-- `floor(A062354(n+1)/A062355(n+1))` -/
def P2229926864103662841.Spec : Prop :=
  ∀ n, P2229926864103662841.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P17817216819078627144

`floor(A000203(n+1)/(A032741(n+1)+1))`
-/

namespace A057022.P17817216819078627144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A032741 (n + 1) + 1 : ℚ)⌋

end

end A057022.P17817216819078627144

namespace A057022

/-- `floor(A000203(n+1)/(A032741(n+1)+1))` -/
def P17817216819078627144.Spec : Prop :=
  ∀ n, P17817216819078627144.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P16896467003397545096

`floor((A155085(n+1)-(n+1))/Δ[A006218(n)])`
-/

namespace A057022.P16896467003397545096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A057022.P16896467003397545096

namespace A057022

/-- `floor((A155085(n+1)-(n+1))/Δ[A006218(n)])` -/
def P16896467003397545096.Spec : Prop :=
  ∀ n, P16896467003397545096.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P2165653044973193822

`floor(A000203(n+1)/(n+1-A049820(n+1)))`
-/

namespace A057022.P2165653044973193822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / ((n + 1 : ℤ) - A049820 (n + 1) : ℚ)⌋

end

end A057022.P2165653044973193822

namespace A057022

/-- `floor(A000203(n+1)/(n+1-A049820(n+1)))` -/
def P2165653044973193822.Spec : Prop :=
  ∀ n, P2165653044973193822.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P5247278270324173471

`floor(∑{d}[n+1, #]/(A324827(n+1)+A324826(n+1)))`
-/

namespace A057022.P5247278270324173471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A324827 (n + 1) + A324826 (n + 1) : ℚ)⌋

end

end A057022.P5247278270324173471

namespace A057022

/-- `floor(∑{d}[n+1, #]/(A324827(n+1)+A324826(n+1)))` -/
def P5247278270324173471.Spec : Prop :=
  ∀ n, P5247278270324173471.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P776685093877548990

`floor(∑{d}[n+1, #]/(A353362(n+1)+A353361(n+1)))`
-/

namespace A057022.P776685093877548990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A353362 (n + 1) + A353361 (n + 1) : ℚ)⌋

end

end A057022.P776685093877548990

namespace A057022

/-- `floor(∑{d}[n+1, #]/(A353362(n+1)+A353361(n+1)))` -/
def P776685093877548990.Spec : Prop :=
  ∀ n, P776685093877548990.a n = A057022 (n + 1)

end A057022

/-! ## A057022.P7404031195832943180

`floor(∑{d}[n+1, #]/∑{d}[n+1, A057427(#)])`
-/

namespace A057022.P7404031195832943180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), A057427 d : ℤ) : ℚ)⌋

end

end A057022.P7404031195832943180

namespace A057022

/-- `floor(∑{d}[n+1, #]/∑{d}[n+1, A057427(#)])` -/
def P7404031195832943180.Spec : Prop :=
  ∀ n, P7404031195832943180.a n = A057022 (n + 1)

end A057022

/-!
# A057023: Largest odd factor of (n-th prime-1); k when n-th prime is written as k*2^m+1 [with k odd].

The programs for A057023, the canonical program `A057023.P16348844648520426339` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057023 has offset 1).

The definition of A057023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057023.P16348844648520426339

`A000265(A006093(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057023

/-- `A000265(A006093(n+1))` -/
def P16348844648520426339.Spec : Prop :=
  ∀ n, P16348844648520426339.a n = A057023 (n + 1)

theorem P16348844648520426339.correct : P16348844648520426339.Spec := by
  intro n
  simp only [A057023, Nat.add_sub_cancel]

end A057023

/-! ## A057023.P17358451172173710773

`A000265(A000040(n+1)-1)`
-/

namespace A057023.P17358451172173710773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000040 (n + 1) - 1).toNat

end

end A057023.P17358451172173710773

namespace A057023

/-- `A000265(A000040(n+1)-1)` -/
def P17358451172173710773.Spec : Prop :=
  ∀ n, P17358451172173710773.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P10924214539254793132

`A000265(A130290(n+1))`
-/

namespace A057023.P10924214539254793132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A130290 (n + 1)).toNat

end

end A057023.P10924214539254793132

namespace A057023

/-- `A000265(A130290(n+1))` -/
def P10924214539254793132.Spec : Prop :=
  ∀ n, P10924214539254793132.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P16322170139634752979

`A000265(floor(A000040(n+1)/2))`
-/

namespace A057023.P16322170139634752979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A057023.P16322170139634752979

namespace A057023

/-- `A000265(floor(A000040(n+1)/2))` -/
def P16322170139634752979.Spec : Prop :=
  ∀ n, P16322170139634752979.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P8062676709096563358

`A006093(n+1)/A058384(n+1)`
-/

namespace A057023.P8062676709096563358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A058384 (n + 1) : ℚ)

end

end A057023.P8062676709096563358

namespace A057023

/-- `A006093(n+1)/A058384(n+1)` -/
def P8062676709096563358.Spec : Prop :=
  ∀ n, P8062676709096563358.a n = (A057023 (n + 1) : ℚ)

end A057023

/-! ## A057023.P15588541493873692202

`A000265(A102781(n+1)+A000007(n))`
-/

namespace A057023.P15588541493873692202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A102781 (n + 1) + A000007 n).toNat

end

end A057023.P15588541493873692202

namespace A057023

/-- `A000265(A102781(n+1)+A000007(n))` -/
def P15588541493873692202.Spec : Prop :=
  ∀ n, P15588541493873692202.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P15534550187890452768

`A000265(A102781(n+1)+A019590(n+1))`
-/

namespace A057023.P15534550187890452768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A102781 (n + 1) + A019590 (n + 1)).toNat

end

end A057023.P15534550187890452768

namespace A057023

/-- `A000265(A102781(n+1)+A019590(n+1))` -/
def P15534550187890452768.Spec : Prop :=
  ∀ n, P15534550187890452768.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P1349675042724972906

`A006093(n+1)/A000079(A023506(n+1))`
-/

namespace A057023.P1349675042724972906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A000079 (A023506 (n + 1)).toNat : ℚ)

end

end A057023.P1349675042724972906

namespace A057023

/-- `A006093(n+1)/A000079(A023506(n+1))` -/
def P1349675042724972906.Spec : Prop :=
  ∀ n, P1349675042724972906.a n = (A057023 (n + 1) : ℚ)

end A057023

/-! ## A057023.P7320490494188914956

`A000265(A156037(n+1))`
-/

namespace A057023.P7320490494188914956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A156037 (n + 1)).toNat

end

end A057023.P7320490494188914956

namespace A057023

/-- `A000265(A156037(n+1))` -/
def P7320490494188914956.Spec : Prop :=
  ∀ n, P7320490494188914956.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P2205847001790227976

`A000265(record[A000010(n+1)])`
-/

namespace A057023.P2205847001790227976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057023.P2205847001790227976

namespace A057023

/-- `A000265(record[A000010(n+1)])` -/
def P2205847001790227976.Spec : Prop :=
  ∀ n, P2205847001790227976.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P17525853604747816116

`A000265(record[A003958(n+1)])`
-/

namespace A057023.P17525853604747816116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057023.P17525853604747816116

namespace A057023

/-- `A000265(record[A003958(n+1)])` -/
def P17525853604747816116.Spec : Prop :=
  ∀ n, P17525853604747816116.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P2656294600102303549

`A171435(record[A000010(n+1)])`
-/

namespace A057023.P2656294600102303549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057023.P2656294600102303549

namespace A057023

/-- `A171435(record[A000010(n+1)])` -/
def P2656294600102303549.Spec : Prop :=
  ∀ n, P2656294600102303549.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P13331627497259323180

`A000265(A040976(n+1)+1)`
-/

namespace A057023.P13331627497259323180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A040976 (n + 1) + 1).toNat

end

end A057023.P13331627497259323180

namespace A057023

/-- `A000265(A040976(n+1)+1)` -/
def P13331627497259323180.Spec : Prop :=
  ∀ n, P13331627497259323180.a n = A057023 (n + 1)

theorem P13331627497259323180.correct : P13331627497259323180.Spec := by
  intro n
  simp only [A057023, Nat.add_sub_cancel, A057023.P13331627497259323180.a, A057023.P16348844648520426339.a, A000265, A000265.P16482698636471710744.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057023

/-! ## A057023.P17579871028368733742

`A171435(A000040(n+1)-1)`
-/

namespace A057023.P17579871028368733742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000040 (n + 1) - 1).toNat

end

end A057023.P17579871028368733742

namespace A057023

/-- `A171435(A000040(n+1)-1)` -/
def P17579871028368733742.Spec : Prop :=
  ∀ n, P17579871028368733742.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P9346094183719855077

`A000265(A008578(n+2)-1)`
-/

namespace A057023.P9346094183719855077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008578 (n + 2) - 1).toNat

end

end A057023.P9346094183719855077

namespace A057023

/-- `A000265(A008578(n+2)-1)` -/
def P9346094183719855077.Spec : Prop :=
  ∀ n, P9346094183719855077.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P16955508101967230737

`A000265(A008864(n+1)-2)`
-/

namespace A057023.P16955508101967230737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008864 (n + 1) - 2).toNat

end

end A057023.P16955508101967230737

namespace A057023

/-- `A000265(A008864(n+1)-2)` -/
def P16955508101967230737.Spec : Prop :=
  ∀ n, P16955508101967230737.a n = A057023 (n + 1)

theorem P16955508101967230737.correct : P16955508101967230737.Spec := by
  intro n
  simp only [A057023, Nat.add_sub_cancel, A057023.P16955508101967230737.a, A057023.P16348844648520426339.a, A000265, A000265.P16482698636471710744.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057023

/-! ## A057023.P3767483538643031506

`A000265(A028815(n+1)-2)`
-/

namespace A057023.P3767483538643031506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A028815 (n + 1) - 2).toNat

end

end A057023.P3767483538643031506

namespace A057023

/-- `A000265(A028815(n+1)-2)` -/
def P3767483538643031506.Spec : Prop :=
  ∀ n, P3767483538643031506.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P13778936055204876653

`A000265(record[A006530(n+2)-1])`
-/

namespace A057023.P13778936055204876653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057023.P13778936055204876653

namespace A057023

/-- `A000265(record[A006530(n+2)-1])` -/
def P13778936055204876653.Spec : Prop :=
  ∀ n, P13778936055204876653.a n = A057023 (n + 1)

end A057023

/-! ## A057023.P9686521056228592814

`A000265(record[A020639(n+2)-1])`
-/

namespace A057023.P9686521056228592814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057023.P9686521056228592814

namespace A057023

/-- `A000265(record[A020639(n+2)-1])` -/
def P9686521056228592814.Spec : Prop :=
  ∀ n, P9686521056228592814.a n = A057023 (n + 1)

end A057023

/-!
# A057024: Largest odd factor of (n-th prime+1); k when n-th prime is written as k*2^m-1 [with k odd].

The programs for A057024, the canonical program `A057024.P10079165471848434207` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057024 has offset 1).

The definition of A057024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057024.P12385702099569223128

`A000265(A028815(n+1))`
-/

namespace A057024.P12385702099569223128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A028815 (n + 1)).toNat

end

end A057024.P12385702099569223128

namespace A057024

/-- `A000265(A028815(n+1))` -/
def P12385702099569223128.Spec : Prop :=
  ∀ n, P12385702099569223128.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P10079165471848434207

`A000265(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057024

/-- `A000265(A000040(n+1)+1)` -/
def P10079165471848434207.Spec : Prop :=
  ∀ n, P10079165471848434207.a n = A057024 (n + 1)

theorem P10079165471848434207.correct : P10079165471848434207.Spec := by
  intro n
  simp only [A057024, Nat.add_sub_cancel]

end A057024

/-! ## A057024.P9544255534049078365

`A008864(n+1)/A068504(n+1)`
-/

namespace A057024.P9544255534049078365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A068504 (n + 1) : ℚ)

end

end A057024.P9544255534049078365

namespace A057024

/-- `A008864(n+1)/A068504(n+1)` -/
def P9544255534049078365.Spec : Prop :=
  ∀ n, P9544255534049078365.a n = (A057024 (n + 1) : ℚ)

end A057024

/-! ## A057024.P3275141476758691972

`(A000040(n+1)+1)/A068504(n+1)`
-/

namespace A057024.P3275141476758691972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1 : ℚ) / (A068504 (n + 1) : ℚ)

end

end A057024.P3275141476758691972

namespace A057024

/-- `(A000040(n+1)+1)/A068504(n+1)` -/
def P3275141476758691972.Spec : Prop :=
  ∀ n, P3275141476758691972.a n = (A057024 (n + 1) : ℚ)

end A057024

/-! ## A057024.P1705010186465072759

`A008864(n+1)/A000079(A023512(n+1))`
-/

namespace A057024.P1705010186465072759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A000079 (A023512 (n + 1)).toNat : ℚ)

end

end A057024.P1705010186465072759

namespace A057024

/-- `A008864(n+1)/A000079(A023512(n+1))` -/
def P1705010186465072759.Spec : Prop :=
  ∀ n, P1705010186465072759.a n = (A057024 (n + 1) : ℚ)

end A057024

/-! ## A057024.P241749567148102799

`A000265(A008864(n+1))`
-/

namespace A057024.P241749567148102799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008864 (n + 1)).toNat

end

end A057024.P241749567148102799

namespace A057024

/-- `A000265(A008864(n+1))` -/
def P241749567148102799.Spec : Prop :=
  ∀ n, P241749567148102799.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P11588097295201149530

`A000265(A306591(n+1))`
-/

namespace A057024.P11588097295201149530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A306591 (n + 1)).toNat

end

end A057024.P11588097295201149530

namespace A057024

/-- `A000265(A306591(n+1))` -/
def P11588097295201149530.Spec : Prop :=
  ∀ n, P11588097295201149530.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P10718238623257418520

`A000265(∑[A125266(n+1)])`
-/

namespace A057024.P10718238623257418520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057024.P10718238623257418520

namespace A057024

/-- `A000265(∑[A125266(n+1)])` -/
def P10718238623257418520.Spec : Prop :=
  ∀ n, P10718238623257418520.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P27620294178309843

`A000265(A006093(n+1)+2)`
-/

namespace A057024.P27620294178309843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006093 (n + 1) + 2).toNat

end

end A057024.P27620294178309843

namespace A057024

/-- `A000265(A006093(n+1)+2)` -/
def P27620294178309843.Spec : Prop :=
  ∀ n, P27620294178309843.a n = A057024 (n + 1)

theorem P27620294178309843.correct : P27620294178309843.Spec := by
  intro n
  simp only [A057024, Nat.add_sub_cancel, A057024.P27620294178309843.a, A057024.P10079165471848434207.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000265, A000265.P16482698636471710744.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057024

/-! ## A057024.P13882824730657917467

`A000265(A008578(n+2)+1)`
-/

namespace A057024.P13882824730657917467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008578 (n + 2) + 1).toNat

end

end A057024.P13882824730657917467

namespace A057024

/-- `A000265(A008578(n+2)+1)` -/
def P13882824730657917467.Spec : Prop :=
  ∀ n, P13882824730657917467.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P8828736241361042485

`A000265(A052147(n+1)-1)`
-/

namespace A057024.P8828736241361042485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A052147 (n + 1) - 1).toNat

end

end A057024.P8828736241361042485

namespace A057024

/-- `A000265(A052147(n+1)-1)` -/
def P8828736241361042485.Spec : Prop :=
  ∀ n, P8828736241361042485.a n = A057024 (n + 1)

theorem P8828736241361042485.correct : P8828736241361042485.Spec := by
  intro n
  simp only [A057024, Nat.add_sub_cancel, A057024.P8828736241361042485.a, A057024.P10079165471848434207.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000265, A000265.P16482698636471710744.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057024

/-! ## A057024.P9952002905483701771

`A000265(A113935(n+1)-2)`
-/

namespace A057024.P9952002905483701771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A113935 (n + 1) - 2).toNat

end

end A057024.P9952002905483701771

namespace A057024

/-- `A000265(A113935(n+1)-2)` -/
def P9952002905483701771.Spec : Prop :=
  ∀ n, P9952002905483701771.a n = A057024 (n + 1)

theorem P9952002905483701771.correct : P9952002905483701771.Spec := by
  intro n
  simp only [A057024, Nat.add_sub_cancel, A057024.P9952002905483701771.a, A057024.P10079165471848434207.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000265, A000265.P16482698636471710744.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057024

/-! ## A057024.P16393597426448492990

`A000265(A089241(n+1)/2)`
-/

namespace A057024.P16393597426448492990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A057024.P16393597426448492990

namespace A057024

/-- `A000265(A089241(n+1)/2)` -/
def P16393597426448492990.Spec : Prop :=
  ∀ n, P16393597426448492990.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P13142128494617380859

`A000265(A014688(n+1)-n)`
-/

namespace A057024.P13142128494617380859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014688 (n + 1) - (n : ℤ)).toNat

end

end A057024.P13142128494617380859

namespace A057024

/-- `A000265(A014688(n+1)-n)` -/
def P13142128494617380859.Spec : Prop :=
  ∀ n, P13142128494617380859.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P2993505294791525374

`A000265(record[A000010(n+1)+2])`
-/

namespace A057024.P2993505294791525374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057024.P2993505294791525374

namespace A057024

/-- `A000265(record[A000010(n+1)+2])` -/
def P2993505294791525374.Spec : Prop :=
  ∀ n, P2993505294791525374.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P12613528130773783361

`A000265(p?[A000961(n+1)]+1)`
-/

namespace A057024.P12613528130773783361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A057024.P12613528130773783361

namespace A057024

/-- `A000265(p?[A000961(n+1)]+1)` -/
def P12613528130773783361.Spec : Prop :=
  ∀ n, P12613528130773783361.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P12251834586654340696

`A000265(record[A003958(n+1)+2])`
-/

namespace A057024.P12251834586654340696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057024.P12251834586654340696

namespace A057024

/-- `A000265(record[A003958(n+1)+2])` -/
def P12251834586654340696.Spec : Prop :=
  ∀ n, P12251834586654340696.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P15534489701186417186

`A000265(record[A006530(n+2)+1])`
-/

namespace A057024.P15534489701186417186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057024.P15534489701186417186

namespace A057024

/-- `A000265(record[A006530(n+2)+1])` -/
def P15534489701186417186.Spec : Prop :=
  ∀ n, P15534489701186417186.a n = A057024 (n + 1)

end A057024

/-! ## A057024.P3292405607469857023

`A000265(record[A020639(n+2)+1])`
-/

namespace A057024.P3292405607469857023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057024.P3292405607469857023

namespace A057024

/-- `A000265(record[A020639(n+2)+1])` -/
def P3292405607469857023.Spec : Prop :=
  ∀ n, P3292405607469857023.a n = A057024 (n + 1)

end A057024

/-!
# A057025: Smallest prime of form (2n+1)*2^m+1 for some m.

The programs for A057025, there is no canonical definition to state claims against.
-/

/-! ## A057025.P11625036981145811842

`A050921(Δ[n²])`
-/

namespace A057025.P11625036981145811842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057025.P11625036981145811842

/-!
# A057026: Smallest prime of form (2n+1)*2^m-1 for some m, or 0 if no such prime exists.

The programs for A057026, there is no canonical definition to state claims against.
-/

/-! ## A057026.P2756077271474313261

`Δ[n²]*A000079(A040081(2*n+1))-1`
-/

namespace A057026.P2756077271474313261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000079 (A040081 (2 * n + 1)).toNat - 1

end

end A057026.P2756077271474313261

/-! ## A057026.P5147790499771928701

`A038699(Δ[n²])`
-/

namespace A057026.P5147790499771928701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057026.P5147790499771928701

/-! ## A057026.P3246765547401108097

`root(A038699(record[xor(1, n)]), 2)²`
-/

namespace A057026.P3246765547401108097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A038699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A057026.P3246765547401108097

/-! ## A057026.P1367694877038556601

`and(-1, A038699(2*n+1))`
-/

namespace A057026.P1367694877038556601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A038699 (2 * n + 1))

end

end A057026.P1367694877038556601

/-! ## A057026.P350628170458222593

`or(log2(A055642(n)), A038699(2*n+1))`
-/

namespace A057026.P350628170458222593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.logb 2 (A055642 n : ℝ))) (A038699 (2 * n + 1))

end

end A057026.P350628170458222593

/-! ## A057026.P14878755731397021382

`or(char[A000040(n+1)], A038699(2*n+1))`
-/

namespace A057026.P14878755731397021382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A038699 (2 * n + 1))

end

end A057026.P14878755731397021382

/-! ## A057026.P18069518815484590481

`A038699(record[xor(1, n)])+A008683(4*(n+1))`
-/

namespace A057026.P18069518815484590481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + A008683 (4 * (n + 1))

end

end A057026.P18069518815484590481

/-! ## A057026.P16970512998112218648

`A014963(4*n+6)*A038699(record[xor(1, n)])`
-/

namespace A057026.P16970512998112218648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A038699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057026.P16970512998112218648

/-! ## A057026.P11110203297127809376

`A000040(n+3)%2*A038699(record[xor(1, n)])`
-/

namespace A057026.P11110203297127809376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 3)) 2 * A038699 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A057026.P11110203297127809376

/-!
# A057027: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form an increasing sequence and the others a decreasing sequence.

The programs for A057027, the canonical program `A057027.P16662688705013223200` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057027 has offset 1).

The definition of A057027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057027.P16662688705013223200

`A038722(A059399(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A057027

/-- `A038722(A059399(n+1))` -/
def P16662688705013223200.Spec : Prop :=
  ∀ n, P16662688705013223200.a n = A057027 (n + 1)

theorem P16662688705013223200.correct : P16662688705013223200.Spec := by
  intro n
  simp only [A057027, Nat.add_sub_cancel]

end A057027

/-! ## A057027.P9122940942711322152

`A057944(n)+A057058(n+1)`
-/

namespace A057027.P9122940942711322152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A057058 (n + 1)

end

end A057027.P9122940942711322152

namespace A057027

/-- `A057944(n)+A057058(n+1)` -/
def P9122940942711322152.Spec : Prop :=
  ∀ n, P9122940942711322152.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P15957302338811362000

`A265129(n+1)-A059399(n+1)`
-/

namespace A057027.P15957302338811362000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A059399 (n + 1)

end

end A057027.P15957302338811362000

namespace A057027

/-- `A265129(n+1)-A059399(n+1)` -/
def P15957302338811362000.Spec : Prop :=
  ∀ n, P15957302338811362000.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P18034254564957782239

`A002260(n+1)+A038722(n+1)-A057059(n+1)`
-/

namespace A057027.P18034254564957782239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A038722 (n + 1) - A057059 (n + 1))

end

end A057027.P18034254564957782239

namespace A057027

/-- `A002260(n+1)+A038722(n+1)-A057059(n+1)` -/
def P18034254564957782239.Spec : Prop :=
  ∀ n, P18034254564957782239.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P1005919610670781030

`A057028(A038722(n+1))`
-/

namespace A057027.P1005919610670781030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A038722 (n + 1)).toNat

end

end A057027.P1005919610670781030

namespace A057027

/-- `A057028(A038722(n+1))` -/
def P1005919610670781030.Spec : Prop :=
  ∀ n, P1005919610670781030.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P7234704759158620082

`A057028(A093995(n+1)-n)`
-/

namespace A057027.P7234704759158620082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A057027.P7234704759158620082

namespace A057027

/-- `A057028(A093995(n+1)-n)` -/
def P7234704759158620082.Spec : Prop :=
  ∀ n, P7234704759158620082.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P14477205171761950248

`A057028(A002024(n+1)²-n)`
-/

namespace A057027.P14477205171761950248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A057027.P14477205171761950248

namespace A057027

/-- `A057028(A002024(n+1)²-n)` -/
def P14477205171761950248.Spec : Prop :=
  ∀ n, P14477205171761950248.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P14465164944829842283

`A057028(A265129(n+1)-(n+1))`
-/

namespace A057027.P14465164944829842283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A057027.P14465164944829842283

namespace A057027

/-- `A057028(A265129(n+1)-(n+1))` -/
def P14465164944829842283.Spec : Prop :=
  ∀ n, P14465164944829842283.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P11005896026696705111

`A057028(A056023(A056011(n+1)))`
-/

namespace A057027.P11005896026696705111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A057027.P11005896026696705111

namespace A057027

/-- `A057028(A056023(A056011(n+1)))` -/
def P11005896026696705111.Spec : Prop :=
  ∀ n, P11005896026696705111.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P9429032174074965354

`A057028(A064578(A057028(n+1)))`
-/

namespace A057027.P9429032174074965354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A064578 (A057028 (n + 1)).toNat).toNat

end

end A057027.P9429032174074965354

namespace A057027

/-- `A057028(A064578(A057028(n+1)))` -/
def P9429032174074965354.Spec : Prop :=
  ∀ n, P9429032174074965354.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P4833555359840827166

`A057028(A057028(A185180(n+1)))`
-/

namespace A057027.P4833555359840827166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A057027.P4833555359840827166

namespace A057027

/-- `A057028(A057028(A185180(n+1)))` -/
def P4833555359840827166.Spec : Prop :=
  ∀ n, P4833555359840827166.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P5681199165452960102

`A057028(A209293(A064789(n+1)))`
-/

namespace A057027.P5681199165452960102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A209293 (A064789 (n + 1)).toNat).toNat

end

end A057027.P5681199165452960102

namespace A057027

/-- `A057028(A209293(A064789(n+1)))` -/
def P5681199165452960102.Spec : Prop :=
  ∀ n, P5681199165452960102.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P10152044239740841431

`A057028(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A057027.P10152044239740841431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A057027.P10152044239740841431

namespace A057027

/-- `A057028(A004736(n+1)+n-A002260(n+1)+1)` -/
def P10152044239740841431.Spec : Prop :=
  ∀ n, P10152044239740841431.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P6436440927993238325

`A211377(A216252(A060734(A214929(A081344(n+1)))))`
-/

namespace A057027.P6436440927993238325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216252 (A060734 (A214929 (A081344 (n + 1)).toNat).toNat).toNat).toNat

end

end A057027.P6436440927993238325

namespace A057027

/-- `A211377(A216252(A060734(A214929(A081344(n+1)))))` -/
def P6436440927993238325.Spec : Prop :=
  ∀ n, P6436440927993238325.a n = A057027 (n + 1)

end A057027

/-! ## A057027.P13973993906459435220

`A211377(A216252(A060734(A214928(A060734(n+1)))))`
-/

namespace A057027.P13973993906459435220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216252 (A060734 (A214928 (A060734 (n + 1)).toNat).toNat).toNat).toNat

end

end A057027.P13973993906459435220

namespace A057027

/-- `A211377(A216252(A060734(A214928(A060734(n+1)))))` -/
def P13973993906459435220.Spec : Prop :=
  ∀ n, P13973993906459435220.a n = A057027 (n + 1)

end A057027

/-!
# A057028: Triangle T read by rows: row n consists of the numbers C(n,2)+1 to C(n+1,2); numbers in odd-numbered places form a decreasing sequence and the others an increasing sequence.

The programs for A057028, the canonical program `A057028.P8117438138446753169` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057028 has offset 1).

The definition of A057028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057028.P17728671277664950094

`A038722(A059399(A038722(n+1)))`
-/

namespace A057028.P17728671277664950094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A059399 (A038722 (n + 1)).toNat).toNat

end

end A057028.P17728671277664950094

namespace A057028

/-- `A038722(A059399(A038722(n+1)))` -/
def P17728671277664950094.Spec : Prop :=
  ∀ n, P17728671277664950094.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P8117438138446753169

`A056023(n+1)+A092543(n+1)-A209279(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A057028

/-- `A056023(n+1)+A092543(n+1)-A209279(n+1)` -/
def P8117438138446753169.Spec : Prop :=
  ∀ n, P8117438138446753169.a n = A057028 (n + 1)

theorem P8117438138446753169.correct : P8117438138446753169.Spec := by
  intro n
  simp only [A057028, Nat.add_sub_cancel]

end A057028

/-! ## A057028.P14177134748478373626

`A056023(A385406(n+1))`
-/

namespace A057028.P14177134748478373626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A385406 (n + 1)).toNat

end

end A057028.P14177134748478373626

namespace A057028

/-- `A056023(A385406(n+1))` -/
def P14177134748478373626.Spec : Prop :=
  ∀ n, P14177134748478373626.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P13686618581851935212

`A057027(A038722(n+1))`
-/

namespace A057028.P13686618581851935212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A038722 (n + 1)).toNat

end

end A057028.P13686618581851935212

namespace A057028

/-- `A057027(A038722(n+1))` -/
def P13686618581851935212.Spec : Prop :=
  ∀ n, P13686618581851935212.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P4378911394992720802

`A038722(A209293(n+1))`
-/

namespace A057028.P4378911394992720802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A209293 (n + 1)).toNat

end

end A057028.P4378911394992720802

namespace A057028

/-- `A038722(A209293(n+1))` -/
def P4378911394992720802.Spec : Prop :=
  ∀ n, P4378911394992720802.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P12688486083255190539

`A209278(n+1)+A057944(n)`
-/

namespace A057028.P12688486083255190539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) + A057944 n

end

end A057028.P12688486083255190539

namespace A057028

/-- `A209278(n+1)+A057944(n)` -/
def P12688486083255190539.Spec : Prop :=
  ∀ n, P12688486083255190539.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P11565512297977254469

`A057027(A265129(n+1)-(n+1))`
-/

namespace A057028.P11565512297977254469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A265129 (n + 1) - (n + 1 : ℤ)).toNat

end

end A057028.P11565512297977254469

namespace A057028

/-- `A057027(A265129(n+1)-(n+1))` -/
def P11565512297977254469.Spec : Prop :=
  ∀ n, P11565512297977254469.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P6410447228347487367

`A265129(n+1)-A209293(n+1)`
-/

namespace A057028.P6410447228347487367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A209293 (n + 1)

end

end A057028.P6410447228347487367

namespace A057028

/-- `A265129(n+1)-A209293(n+1)` -/
def P6410447228347487367.Spec : Prop :=
  ∀ n, P6410447228347487367.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P15175418123175413549

`A093995(n+1)+1-A209293(n+1)`
-/

namespace A057028.P15175418123175413549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A209293 (n + 1))

end

end A057028.P15175418123175413549

namespace A057028

/-- `A093995(n+1)+1-A209293(n+1)` -/
def P15175418123175413549.Spec : Prop :=
  ∀ n, P15175418123175413549.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P7238356134907839967

`A002024(n+1)²+1-A209293(n+1)`
-/

namespace A057028.P7238356134907839967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A209293 (n + 1))

end

end A057028.P7238356134907839967

namespace A057028

/-- `A002024(n+1)²+1-A209293(n+1)` -/
def P7238356134907839967.Spec : Prop :=
  ∀ n, P7238356134907839967.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P6634304349915479299

`A057027(A056023(A056011(n+1)))`
-/

namespace A057028.P6634304349915479299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A057028.P6634304349915479299

namespace A057028

/-- `A057027(A056023(A056011(n+1)))` -/
def P6634304349915479299.Spec : Prop :=
  ∀ n, P6634304349915479299.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P14654840488666408726

`A057027(A064789(A057027(n+1)))`
-/

namespace A057028.P14654840488666408726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A064789 (A057027 (n + 1)).toNat).toNat

end

end A057028.P14654840488666408726

namespace A057028

/-- `A057027(A064789(A057027(n+1)))` -/
def P14654840488666408726.Spec : Prop :=
  ∀ n, P14654840488666408726.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P13705726897742792835

`A209278(n+1)+A000217(A003056(n))`
-/

namespace A057028.P13705726897742792835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) + A000217 (A003056 n).toNat

end

end A057028.P13705726897742792835

namespace A057028

/-- `A209278(n+1)+A000217(A003056(n))` -/
def P13705726897742792835.Spec : Prop :=
  ∀ n, P13705726897742792835.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P3184945714676804250

`A209278(n+1)+A083920(A127739(n+1))`
-/

namespace A057028.P3184945714676804250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) + A083920 (A127739 (n + 1)).toNat

end

end A057028.P3184945714676804250

namespace A057028

/-- `A209278(n+1)+A083920(A127739(n+1))` -/
def P3184945714676804250.Spec : Prop :=
  ∀ n, P3184945714676804250.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P17986367550381585455

`A002522(A002024(n+1))-A209293(n+1)`
-/

namespace A057028.P17986367550381585455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A209293 (n + 1)

end

end A057028.P17986367550381585455

namespace A057028

/-- `A002522(A002024(n+1))-A209293(n+1)` -/
def P17986367550381585455.Spec : Prop :=
  ∀ n, P17986367550381585455.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P12110842862561302615

`A056011(n+1)+A209278(n+1)-A092543(n+1)`
-/

namespace A057028.P12110842862561302615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) + (A209278 (n + 1) - A092543 (n + 1))

end

end A057028.P12110842862561302615

namespace A057028

/-- `A056011(n+1)+A209278(n+1)-A092543(n+1)` -/
def P12110842862561302615.Spec : Prop :=
  ∀ n, P12110842862561302615.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P5670965466559231484

`A185180(n+1)+A210535(n+1)-A209279(n+1)`
-/

namespace A057028.P5670965466559231484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1) + (A210535 (n + 1) - A209279 (n + 1))

end

end A057028.P5670965466559231484

namespace A057028

/-- `A185180(n+1)+A210535(n+1)-A209279(n+1)` -/
def P5670965466559231484.Spec : Prop :=
  ∀ n, P5670965466559231484.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P724590915514830082

`A209278(n+1)+A209293(n+1)-A209279(n+1)`
-/

namespace A057028.P724590915514830082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (n + 1) + (A209293 (n + 1) - A209279 (n + 1))

end

end A057028.P724590915514830082

namespace A057028

/-- `A209278(n+1)+A209293(n+1)-A209279(n+1)` -/
def P724590915514830082.Spec : Prop :=
  ∀ n, P724590915514830082.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P12542436199807439874

`A002260(n+1)+A038722(n+1)-A057059(A038722(n+1))`
-/

namespace A057028.P12542436199807439874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A038722 (n + 1) - A057059 (A038722 (n + 1)).toNat)

end

end A057028.P12542436199807439874

namespace A057028

/-- `A002260(n+1)+A038722(n+1)-A057059(A038722(n+1))` -/
def P12542436199807439874.Spec : Prop :=
  ∀ n, P12542436199807439874.a n = A057028 (n + 1)

end A057028

/-! ## A057028.P286648876356142369

`A057027(A057027(n+1)+A057059(n+1)-A002260(n+1))`
-/

namespace A057028.P286648876356142369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A057027 (n + 1) + (A057059 (n + 1) - A002260 (n + 1))).toNat

end

end A057028.P286648876356142369

namespace A057028

/-- `A057027(A057027(n+1)+A057059(n+1)-A002260(n+1))` -/
def P286648876356142369.Spec : Prop :=
  ∀ n, P286648876356142369.a n = A057028 (n + 1)

end A057028

/-!
# A057029: Central column of arrays in A057027 and A057028.

The programs for A057029, the canonical program `A057029.P9610619339875686180` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057029 has offset 1).

The definition of A057029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057029.P9610619339875686180

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=27, a(4)=39`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057029

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9610619339875686180.Spec : Prop :=
  ∀ n, P9610619339875686180.a n = A057029 (n + 1)

theorem P9610619339875686180.correct : P9610619339875686180.Spec := by
  intro n
  simp only [A057029, Nat.add_sub_cancel]

end A057029

/-! ## A057029.P17223846564635548877

`∑[2*lcm(2, n)+n]+1`
-/

namespace A057029.P17223846564635548877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057029.P17223846564635548877

namespace A057029

/-- `∑[2*lcm(2, n)+n]+1` -/
def P17223846564635548877.Spec : Prop :=
  ∀ n, (P17223846564635548877.a n : ℤ) = A057029 (n + 1)

end A057029

/-! ## A057029.P7161826470196909414

`∑[n*(4-(-1)^n)]+1`
-/

namespace A057029.P7161826470196909414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A057029.P7161826470196909414

namespace A057029

/-- `∑[n*(4-(-1)^n)]+1` -/
def P7161826470196909414.Spec : Prop :=
  ∀ n, P7161826470196909414.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P6826234385708394576

`∑[A382154(n)+n]`
-/

namespace A057029.P6826234385708394576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P6826234385708394576

namespace A057029

/-- `∑[A382154(n)+n]` -/
def P6826234385708394576.Spec : Prop :=
  ∀ n, P6826234385708394576.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P7217251061111832771

`∑[A028310(n)+2*lcm(2, n)]`
-/

namespace A057029.P7217251061111832771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (2 * Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P7217251061111832771

namespace A057029

/-- `∑[A028310(n)+2*lcm(2, n)]` -/
def P7217251061111832771.Spec : Prop :=
  ∀ n, P7217251061111832771.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P9158825597152140190

`∑[A008574(n)-n*(-1)^n]`
-/

namespace A057029.P9158825597152140190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P9158825597152140190

namespace A057029

/-- `∑[A008574(n)-n*(-1)^n]` -/
def P9158825597152140190.Spec : Prop :=
  ∀ n, P9158825597152140190.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P14817955425038921062

`abs(A001057(n)+∑[4*n]+1)`
-/

namespace A057029.P14817955425038921062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)|

end

end A057029.P14817955425038921062

namespace A057029

/-- `abs(A001057(n)+∑[4*n]+1)` -/
def P14817955425038921062.Spec : Prop :=
  ∀ n, P14817955425038921062.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P1307483822737226033

`∑[A008486(n)+2*n*and(1, n)]`
-/

namespace A057029.P1307483822737226033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (2 * (n * Nat.land 1 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P1307483822737226033

namespace A057029

/-- `∑[A008486(n)+2*n*and(1, n)]` -/
def P1307483822737226033.Spec : Prop :=
  ∀ n, P1307483822737226033.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P3729238070550999504

`∑[A008458(n)-n*gcd(3, n%2)]`
-/

namespace A057029.P3729238070550999504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (n * Nat.gcd 3 (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P3729238070550999504

namespace A057029

/-- `∑[A008458(n)-n*gcd(3, n%2)]` -/
def P3729238070550999504.Spec : Prop :=
  ∀ n, P3729238070550999504.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P1895745622180299950

`abs(A001844(n)+A001057(n))`
-/

namespace A057029.P1895745622180299950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 n + A001057 n|

end

end A057029.P1895745622180299950

namespace A057029

/-- `abs(A001844(n)+A001057(n))` -/
def P1895745622180299950.Spec : Prop :=
  ∀ n, P1895745622180299950.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P4714016783152333640

`∑[A004277(lcm(2, n))+n]`
-/

namespace A057029.P4714016783152333640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.lcm 2 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P4714016783152333640

namespace A057029

/-- `∑[A004277(lcm(2, n))+n]` -/
def P4714016783152333640.Spec : Prop :=
  ∀ n, P4714016783152333640.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P13132440767237548137

`(C(A176895(2*n)+3*n+1+n, 2)+3)/4`
-/

namespace A057029.P13132440767237548137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A176895 (2 * n) + (3 * n + 1 : ℤ) + (n : ℤ)).toNat 2 + 3 : ℚ) / 4

end

end A057029.P13132440767237548137

namespace A057029

/-- `(C(A176895(2*n)+3*n+1+n, 2)+3)/4` -/
def P13132440767237548137.Spec : Prop :=
  ∀ n, P13132440767237548137.a n = (A057029 (n + 1) : ℚ)

end A057029

/-! ## A057029.P12789967451508815874

`∑[A004277(n)*A176895(2*n)+n]`
-/

namespace A057029.P12789967451508815874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A176895 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057029.P12789967451508815874

namespace A057029

/-- `∑[A004277(n)*A176895(2*n)+n]` -/
def P12789967451508815874.Spec : Prop :=
  ∀ n, P12789967451508815874.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P12298034741601493001

`(A137501(n+1)+A002522(2*n+1))/2`
-/

namespace A057029.P12298034741601493001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137501 (n + 1) + A002522 (2 * n + 1) : ℚ) / 2

end

end A057029.P12298034741601493001

namespace A057029

/-- `(A137501(n+1)+A002522(2*n+1))/2` -/
def P12298034741601493001.Spec : Prop :=
  ∀ n, P12298034741601493001.a n = (A057029 (n + 1) : ℚ)

end A057029

/-! ## A057029.P8715765347106179533

`A389318(A047524(n+1))`
-/

namespace A057029.P8715765347106179533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389318 (A047524 (n + 1)).toNat

end

end A057029.P8715765347106179533

namespace A057029

/-- `A389318(A047524(n+1))` -/
def P8715765347106179533.Spec : Prop :=
  ∀ n, P8715765347106179533.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P10229178549950078040

`A014682(2*(A084849(n)+A014682(n)))`
-/

namespace A057029.P10229178549950078040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * (A084849 n + A014682 n)).toNat

end

end A057029.P10229178549950078040

namespace A057029

/-- `A014682(2*(A084849(n)+A014682(n)))` -/
def P10229178549950078040.Spec : Prop :=
  ∀ n, P10229178549950078040.a n = A057029 (n + 1)

end A057029

/-! ## A057029.P13872860600934804725

`A007606(A266883(n))`
-/

namespace A057029.P13872860600934804725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007606 (A266883 n).toNat

end

end A057029.P13872860600934804725

namespace A057029

/-- `A007606(A266883(n))` -/
def P13872860600934804725.Spec : Prop :=
  ∀ n, P13872860600934804725.a n = A057029 (n + 1)

end A057029

/-!
# A057030: Let P(n) of a sequence s(1),s(2),s(3),... be obtained by leaving s(1),...,s(n-1) fixed and reversing every n consecutive terms thereafter; apply P(2) to 1,2,3,... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. The limit of PS(n) is A057030.

The programs for A057030, there is no canonical definition to state claims against.
-/

/-! ## A057030.P11657272560852837432

`A057031(n)+a(n-1)` with `a(0)=1`
-/

namespace A057030.P11657272560852837432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057031 n + a (n - 1)

end

end A057030.P11657272560852837432

/-! ## A057030.P7620908228261926460

`∑[A057031(abs(1-n)+1)]`
-/

namespace A057030.P7620908228261926460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057031 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057030.P7620908228261926460

/-! ## A057030.P5393962259598845703

`∑[A057031(A028310(n))]-1`
-/

namespace A057030.P5393962259598845703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057031 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057030.P5393962259598845703

/-! ## A057030.P15944435316225442340

`A249991(n+1)+1-A057031(n+1)`
-/

namespace A057030.P15944435316225442340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249991 (n + 1) + (1 - A057031 (n + 1))

end

end A057030.P15944435316225442340

/-! ## A057030.P11711731140697609729

`A007062(n+2)-1`
-/

namespace A057030.P11711731140697609729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 2) - 1

end

end A057030.P11711731140697609729

/-! ## A057030.P2708774590805330128

`∑[abs(Δ[A007062(n+1)])]`
-/

namespace A057030.P2708774590805330128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057030.P2708774590805330128

/-! ## A057030.P7297597812295889698

`∑[A000027(Δ[A007062(n+1)])]`
-/

namespace A057030.P7297597812295889698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057030.P7297597812295889698

/-! ## A057030.P9620317625942714230

`∑[Δ[A007062(n+1)]%A007062(n+2)]`
-/

namespace A057030.P9620317625942714230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A007062 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057030.P9620317625942714230

/-! ## A057030.P12121680744945797365

`A023443(A007062(n+2))`
-/

namespace A057030.P12121680744945797365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007062 (n + 2)).toNat

end

end A057030.P12121680744945797365

/-!
# A057031: Sequence of differences of A057030.

The programs for A057031, there is no canonical definition to state claims against.
-/

/-! ## A057031.P7826441566455658256

`A249991(n+1)+1-A057030(n+1)`
-/

namespace A057031.P7826441566455658256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249991 (n + 1) + (1 - A057030 (n + 1))

end

end A057031.P7826441566455658256

/-! ## A057031.P3952065219899358667

`Δ[A057030(n+1)]`
-/

namespace A057031.P3952065219899358667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057031.P3952065219899358667

/-! ## A057031.P13602594638545043151

`abs(Δ[A057030(2*n-(n-1))])`
-/

namespace A057031.P13602594638545043151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A057031.P13602594638545043151

/-! ## A057031.P9257938167725305849

`A057030(n+2)-A057030(n+1)`
-/

namespace A057031.P9257938167725305849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (n + 2) - A057030 (n + 1)

end

end A057031.P9257938167725305849

/-! ## A057031.P218329574791694989

`Δ[A007062(n+2)]`
-/

namespace A057031.P218329574791694989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057031.P218329574791694989

/-! ## A057031.P10593828318687164948

`A007062(n+3)-A007062(n+2)`
-/

namespace A057031.P10593828318687164948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007062 (n + 3) - A007062 (n + 2)

end

end A057031.P10593828318687164948

/-! ## A057031.P5360887666935692152

`Δ[record[A057030(A033930(n))]]`
-/

namespace A057031.P5360887666935692152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057030 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057031.P5360887666935692152

/-!
# A057032: Let P(n) of a sequence s(1), s(2), s(3), ... be obtained by leaving s(1), ..., s(n-1) fixed and forward-cyclically permuting every n consecutive terms thereafter; apply P(2) to 1, 2, 3, ... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. The limit of PS(n) as n -> oo is this sequence.

The programs for A057032, there is no canonical definition to state claims against.
-/

/-! ## A057032.P11199186859377430568

`A057064(n+2)-1`
-/

namespace A057032.P11199186859377430568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057064 (n + 2) - 1

end

end A057032.P11199186859377430568

/-! ## A057032.P17716561403768530156

`abs(∑[-Δ[A057064(n+1)]])`
-/

namespace A057032.P17716561403768530156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A057032.P17716561403768530156

/-! ## A057032.P2303838934829439468

`A057428(n+1)+A057064(n+2)`
-/

namespace A057032.P2303838934829439468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A057064 (n + 2)

end

end A057032.P2303838934829439468

/-! ## A057032.P18165909021197356910

`A123969(gcd(n, n+1))+A057064(n+2)`
-/

namespace A057032.P18165909021197356910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123969 (Nat.gcd n (n + 1)) + A057064 (n + 2)

end

end A057032.P18165909021197356910

/-! ## A057032.P12489076430146784258

`∑[Δ[A057064(n+1)]%A064113(n+1)]`
-/

namespace A057032.P12489076430146784258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A064113 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057032.P12489076430146784258

/-! ## A057032.P2940888989421356102

`A158052(A000040(n+1))+A057064(n+2)`
-/

namespace A057032.P2940888989421356102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A000040 (n + 1)).toNat + A057064 (n + 2)

end

end A057032.P2940888989421356102

/-! ## A057032.P16663145794591885024

`A023443(A057064(n+2))`
-/

namespace A057032.P16663145794591885024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057064 (n + 2)).toNat

end

end A057032.P16663145794591885024

/-! ## A057032.P7500283345350915079

`A000720(p?[A008578(A057064(n+1))])`
-/

namespace A057032.P7500283345350915079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057064 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057032.P7500283345350915079

/-!
# A057033: Let P(n) of a sequence s(1),s(2),s(3),... be obtained by leaving s(1),...s(n-1) fixed and reverse-cyclically permuting every n consecutive terms thereafter; apply P(2) to 1,2,3,... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. The limit of PS(n) is A057033.

The programs for A057033, there is no canonical definition to state claims against.
-/

/-! ## A057033.P9720672355253954270

`A057063(n+2)-1`
-/

namespace A057033.P9720672355253954270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057063 (n + 2) - 1

end

end A057033.P9720672355253954270

/-! ## A057033.P4836875780837793586

`A057428(n+1)+A057063(n+2)`
-/

namespace A057033.P4836875780837793586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A057063 (n + 2)

end

end A057033.P4836875780837793586

/-! ## A057033.P9639683466879214864

`A023443(A057063(n+2))`
-/

namespace A057033.P9639683466879214864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057063 (n + 2)).toNat

end

end A057033.P9639683466879214864

/-! ## A057033.P5870691365426468399

`A168361(2*(n+1))+A057063(n+2)`
-/

namespace A057033.P5870691365426468399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 1)) + A057063 (n + 2)

end

end A057033.P5870691365426468399

/-! ## A057033.P2156457937821759563

`A000720(p?[A008578(A057063(n+1))])`
-/

namespace A057033.P2156457937821759563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057033.P2156457937821759563

/-! ## A057033.P7894534417882507004

`A049084(p?[A008578(A057063(n+1))])`
-/

namespace A057033.P7894534417882507004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057033.P7894534417882507004

/-! ## A057033.P143643513663665701

`A056239(p?[A008578(A057063(n+1))])`
-/

namespace A057033.P143643513663665701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A057063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A057033.P143643513663665701

/-!
# A057035: Numbers n such that n = p + q with n*p*q = primorial number (A002110) (p <= q, p > 0, q > 0).

The programs for A057035, there is no canonical definition to state claims against.
-/

/-! ## A057035.P2365498618957334330

`record[A000688(record[A320124(3*n+1)])]`
-/

namespace A057035.P2365498618957334330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320124 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057035.P2365498618957334330

/-! ## A057035.P16080664152593370146

`record[A074909(n)+A008683(A263348(n))]`
-/

namespace A057035.P16080664152593370146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A008683 (A263348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057035.P16080664152593370146

/-! ## A057035.P15274632983336897236

`A117842(n)-A001222(A131444(n+1))`
-/

namespace A057035.P15274632983336897236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n - A001222 (A131444 (n + 1)).toNat

end

end A057035.P15274632983336897236

/-! ## A057035.P682036383537285553

`A001221(n+4)+record[A057561(A094525(n))]`
-/

namespace A057035.P682036383537285553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A094525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057035.P682036383537285553

/-! ## A057035.P12825447899571081239

`record[A007947(A332602(3*n)+A011973(n))]`
-/

namespace A057035.P12825447899571081239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A332602 (3 * n) + A011973 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057035.P12825447899571081239

/-!
# A057036: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057036(n)=i(2n-1).

The programs for A057036, the canonical program `A057036.P10749021010294889365` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057036 has offset 1).

The definition of A057036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057036.P10749021010294889365

`A057037(A057037(n+1)+n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057036

/-- `A057037(A057037(n+1)+n+1)` -/
def P10749021010294889365.Spec : Prop :=
  ∀ n, P10749021010294889365.a n = A057036 (n + 1)

theorem P10749021010294889365.correct : P10749021010294889365.Spec := by
  intro n
  simp only [A057036, Nat.add_sub_cancel]

end A057036

/-! ## A057036.P13592379473848565320

`log2(A059268(2*n))+1`
-/

namespace A057036.P13592379473848565320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (2 * n) : ℝ) + 1

end

end A057036.P13592379473848565320

namespace A057036

/-- `log2(A059268(2*n))+1` -/
def P13592379473848565320.Spec : Prop :=
  ∀ n, P13592379473848565320.a n = (A057036 (n + 1) : ℝ)

end A057036

/-! ## A057036.P6373792238985038139

`A002260(Δ[n²])`
-/

namespace A057036.P6373792238985038139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057036.P6373792238985038139

namespace A057036

/-- `A002260(Δ[n²])` -/
def P6373792238985038139.Spec : Prop :=
  ∀ n, P6373792238985038139.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P4688204942194246491

`root(A002260(2*n+1), 2)²`
-/

namespace A057036.P4688204942194246491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A002260 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A057036.P4688204942194246491

namespace A057036

/-- `root(A002260(2*n+1), 2)²` -/
def P4688204942194246491.Spec : Prop :=
  ∀ n, P4688204942194246491.a n = (A057036 (n + 1) : ℝ)

end A057036

/-! ## A057036.P13494148851870461308

`A002260(n+1+n)%(n+2)`
-/

namespace A057036.P13494148851870461308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1 + n)) (n + 2 : ℤ)

end

end A057036.P13494148851870461308

namespace A057036

/-- `A002260(n+1+n)%(n+2)` -/
def P13494148851870461308.Spec : Prop :=
  ∀ n, P13494148851870461308.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P127571166006495004

`A002265(4*A002260(2*n+1))`
-/

namespace A057036.P127571166006495004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A002260 (2 * n + 1)).toNat

end

end A057036.P127571166006495004

namespace A057036

/-- `A002265(4*A002260(2*n+1))` -/
def P127571166006495004.Spec : Prop :=
  ∀ n, P127571166006495004.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P4316120589319522484

`2*n+1-A000217(A003056(2*n))`
-/

namespace A057036.P4316120589319522484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000217 (A003056 (2 * n)).toNat

end

end A057036.P4316120589319522484

namespace A057036

/-- `2*n+1-A000217(A003056(2*n))` -/
def P4316120589319522484.Spec : Prop :=
  ∀ n, P4316120589319522484.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P14310602762597327285

`abs(A140756(Δ[n²]))`
-/

namespace A057036.P14310602762597327285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A057036.P14310602762597327285

namespace A057036

/-- `abs(A140756(Δ[n²]))` -/
def P14310602762597327285.Spec : Prop :=
  ∀ n, P14310602762597327285.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P12883426182410605941

`sqrt(A133819(Δ[n²]))`
-/

namespace A057036.P12883426182410605941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A057036.P12883426182410605941

namespace A057036

/-- `sqrt(A133819(Δ[n²]))` -/
def P12883426182410605941.Spec : Prop :=
  ∀ n, P12883426182410605941.a n = (A057036 (n + 1) : ℝ)

end A057036

/-! ## A057036.P4731865745261429961

`A002262(2*n)+1`
-/

namespace A057036.P4731865745261429961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * n) + 1

end

end A057036.P4731865745261429961

namespace A057036

/-- `A002262(2*n)+1` -/
def P4731865745261429961.Spec : Prop :=
  ∀ n, P4731865745261429961.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P5036491316461299377

`sqrt(A143844(2*n))+1`
-/

namespace A057036.P5036491316461299377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 (2 * n) : ℝ) + 1

end

end A057036.P5036491316461299377

namespace A057036

/-- `sqrt(A143844(2*n))+1` -/
def P5036491316461299377.Spec : Prop :=
  ∀ n, P5036491316461299377.a n = (A057036 (n + 1) : ℝ)

end A057036

/-! ## A057036.P5286003339164440616

`A131818(2*(n+1))-1`
-/

namespace A057036.P5286003339164440616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (2 * (n + 1)) - 1

end

end A057036.P5286003339164440616

namespace A057036

/-- `A131818(2*(n+1))-1` -/
def P5286003339164440616.Spec : Prop :=
  ∀ n, P5286003339164440616.a n = A057036 (n + 1)

end A057036

/-! ## A057036.P3003046567829122312

`root(A133819(2*n+1), 2)`
-/

namespace A057036.P3003046567829122312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133819 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A057036.P3003046567829122312

namespace A057036

/-- `root(A133819(2*n+1), 2)` -/
def P3003046567829122312.Spec : Prop :=
  ∀ n, P3003046567829122312.a n = (A057036 (n + 1) : ℝ)

end A057036

/-! ## A057036.P4424634496510772620

`val(A130328(2*n), 2)+1`
-/

namespace A057036.P4424634496510772620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 (2 * n)).toNat 2 + 1

end

end A057036.P4424634496510772620

namespace A057036

/-- `val(A130328(2*n), 2)+1` -/
def P4424634496510772620.Spec : Prop :=
  ∀ n, (P4424634496510772620.a n : ℤ) = A057036 (n + 1)

end A057036

/-! ## A057036.P8916320082308426109

`val(A175840(2*n), 2)+1`
-/

namespace A057036.P8916320082308426109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 (2 * n)).toNat 2 + 1

end

end A057036.P8916320082308426109

namespace A057036

/-- `val(A175840(2*n), 2)+1` -/
def P8916320082308426109.Spec : Prop :=
  ∀ n, (P8916320082308426109.a n : ℤ) = A057036 (n + 1)

end A057036

/-! ## A057036.P9087660482554011689

`val(A204985(2*n+1), 2)`
-/

namespace A057036.P9087660482554011689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204985 (2 * n + 1)).toNat 2

end

end A057036.P9087660482554011689

namespace A057036

/-- `val(A204985(2*n+1), 2)` -/
def P9087660482554011689.Spec : Prop :=
  ∀ n, (P9087660482554011689.a n : ℤ) = A057036 (n + 1)

end A057036

/-! ## A057036.P9010704739183669035

`val(A247936(2*n), 2)+1`
-/

namespace A057036.P9010704739183669035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247936 (2 * n)).toNat 2 + 1

end

end A057036.P9010704739183669035

namespace A057036

/-- `val(A247936(2*n), 2)+1` -/
def P9010704739183669035.Spec : Prop :=
  ∀ n, (P9010704739183669035.a n : ℤ) = A057036 (n + 1)

end A057036

/-! ## A057036.P8891138610694176731

`sqrt(sqrt(A133821(2*n+1)))`
-/

namespace A057036.P8891138610694176731
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133821 (2 * n + 1) : ℝ))

end

end A057036.P8891138610694176731

namespace A057036

/-- `sqrt(sqrt(A133821(2*n+1)))` -/
def P8891138610694176731.Spec : Prop :=
  ∀ n, P8891138610694176731.a n = (A057036 (n + 1) : ℝ)

end A057036

/-!
# A057037: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057037(n)=j(2n-1).

The programs for A057037, the canonical program `A057037.P2208960147265636780` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057037 has offset 1).

The definition of A057037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057037.P2208960147265636780

`val(A036561(2*n), 2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057037

/-- `val(A036561(2*n), 2)+1` -/
def P2208960147265636780.Spec : Prop :=
  ∀ n, (P2208960147265636780.a n : ℤ) = A057037 (n + 1)

theorem P2208960147265636780.correct : P2208960147265636780.Spec := by
  intro n
  simp only [A057037, Nat.add_sub_cancel]

end A057037

/-! ## A057037.P212300527696013913

`A000217(round(sqrt(4*n+1)))-n-n`
-/

namespace A057037.P212300527696013913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (4 * n + 1 : ℝ))).toNat - (n : ℤ) - (n : ℤ)

end

end A057037.P212300527696013913

namespace A057037

/-- `A000217(round(sqrt(4*n+1)))-n-n` -/
def P212300527696013913.Spec : Prop :=
  ∀ n, P212300527696013913.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P12289313096323475693

`ceil(A099375(2*n)/2)`
-/

namespace A057037.P12289313096323475693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 (2 * n) : ℚ) / 2⌉

end

end A057037.P12289313096323475693

namespace A057037

/-- `ceil(A099375(2*n)/2)` -/
def P12289313096323475693.Spec : Prop :=
  ∀ n, P12289313096323475693.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P3830757619166827940

`A000463(A099375(2*n))`
-/

namespace A057037.P3830757619166827940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 (2 * n)).toNat

end

end A057037.P3830757619166827940

namespace A057037

/-- `A000463(A099375(2*n))` -/
def P3830757619166827940.Spec : Prop :=
  ∀ n, P3830757619166827940.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P10005835683024667896

`A078898(A099375(2*n)+1)`
-/

namespace A057037.P10005835683024667896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A099375 (2 * n) + 1).toNat

end

end A057037.P10005835683024667896

namespace A057037

/-- `A078898(A099375(2*n)+1)` -/
def P10005835683024667896.Spec : Prop :=
  ∀ n, P10005835683024667896.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P5882815777960121642

`A289435(A099375(2*n)+1)`
-/

namespace A057037.P5882815777960121642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A099375 (2 * n) + 1).toNat

end

end A057037.P5882815777960121642

namespace A057037

/-- `A289435(A099375(2*n)+1)` -/
def P5882815777960121642.Spec : Prop :=
  ∀ n, P5882815777960121642.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P11327640817935179159

`A001057(or(1, A099375(2*n)))`
-/

namespace A057037.P11327640817935179159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A099375 (2 * n))).toNat

end

end A057037.P11327640817935179159

namespace A057037

/-- `A001057(or(1, A099375(2*n)))` -/
def P11327640817935179159.Spec : Prop :=
  ∀ n, P11327640817935179159.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P11661149009677119722

`A212012(Δ[n²])/2`
-/

namespace A057037.P11661149009677119722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A057037.P11661149009677119722

namespace A057037

/-- `A212012(Δ[n²])/2` -/
def P11661149009677119722.Spec : Prop :=
  ∀ n, P11661149009677119722.a n = (A057037 (n + 1) : ℚ)

end A057037

/-! ## A057037.P13658817854199805470

`log2(A130330(2*n)+1)`
-/

namespace A057037.P13658817854199805470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130330 (2 * n) + 1 : ℝ)

end

end A057037.P13658817854199805470

namespace A057037

/-- `log2(A130330(2*n)+1)` -/
def P13658817854199805470.Spec : Prop :=
  ∀ n, P13658817854199805470.a n = (A057037 (n + 1) : ℝ)

end A057037

/-! ## A057037.P12615537605882038858

`A002260(A038722(2*n+1))`
-/

namespace A057037.P12615537605882038858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (2 * n + 1)).toNat

end

end A057037.P12615537605882038858

namespace A057037

/-- `A002260(A038722(2*n+1))` -/
def P12615537605882038858.Spec : Prop :=
  ∀ n, P12615537605882038858.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P10501246008071551478

`sqrt(A055461(Δ[n²]))`
-/

namespace A057037.P10501246008071551478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A057037.P10501246008071551478

namespace A057037

/-- `sqrt(A055461(Δ[n²]))` -/
def P10501246008071551478.Spec : Prop :=
  ∀ n, P10501246008071551478.a n = (A057037 (n + 1) : ℝ)

end A057037

/-! ## A057037.P17256741813300176554

`root(A055461(2*n+1), 2)`
-/

namespace A057037.P17256741813300176554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055461 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A057037.P17256741813300176554

namespace A057037

/-- `root(A055461(2*n+1), 2)` -/
def P17256741813300176554.Spec : Prop :=
  ∀ n, P17256741813300176554.a n = (A057037 (n + 1) : ℝ)

end A057037

/-! ## A057037.P1286660404057970966

`A004736(Δ[n²])`
-/

namespace A057037.P1286660404057970966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057037.P1286660404057970966

namespace A057037

/-- `A004736(Δ[n²])` -/
def P1286660404057970966.Spec : Prop :=
  ∀ n, P1286660404057970966.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P3302965066469652645

`log2(A090988(Δ[n²]))`
-/

namespace A057037.P3302965066469652645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A057037.P3302965066469652645

namespace A057037

/-- `log2(A090988(Δ[n²]))` -/
def P3302965066469652645.Spec : Prop :=
  ∀ n, P3302965066469652645.a n = (A057037 (n + 1) : ℝ)

end A057037

/-! ## A057037.P12433080863184364271

`A025581(2*n)+1`
-/

namespace A057037.P12433080863184364271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * n) + 1

end

end A057037.P12433080863184364271

namespace A057037

/-- `A025581(2*n)+1` -/
def P12433080863184364271.Spec : Prop :=
  ∀ n, P12433080863184364271.a n = A057037 (n + 1)

end A057037

/-! ## A057037.P8075455877593449193

`log2(A130321(2*n))+1`
-/

namespace A057037.P8075455877593449193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 (2 * n) : ℝ) + 1

end

end A057037.P8075455877593449193

namespace A057037

/-- `log2(A130321(2*n))+1` -/
def P8075455877593449193.Spec : Prop :=
  ∀ n, P8075455877593449193.a n = (A057037 (n + 1) : ℝ)

end A057037

/-! ## A057037.P6892416982244267264

`val(A043569(2*n+1), 2)`
-/

namespace A057037.P6892416982244267264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (2 * n + 1)).toNat 2

end

end A057037.P6892416982244267264

namespace A057037

/-- `val(A043569(2*n+1), 2)` -/
def P6892416982244267264.Spec : Prop :=
  ∀ n, (P6892416982244267264.a n : ℤ) = A057037 (n + 1)

end A057037

/-! ## A057037.P4779059253299538535

`val(A054582(2*n), 2)+1`
-/

namespace A057037.P4779059253299538535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 (2 * n)).toNat 2 + 1

end

end A057037.P4779059253299538535

namespace A057037

/-- `val(A054582(2*n), 2)+1` -/
def P4779059253299538535.Spec : Prop :=
  ∀ n, (P4779059253299538535.a n : ℤ) = A057037 (n + 1)

end A057037

/-! ## A057037.P11478959029522672747

`val(A081954(2*n+1), 2)`
-/

namespace A057037.P11478959029522672747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081954 (2 * n + 1)).toNat 2

end

end A057037.P11478959029522672747

namespace A057037

/-- `val(A081954(2*n+1), 2)` -/
def P11478959029522672747.Spec : Prop :=
  ∀ n, (P11478959029522672747.a n : ℤ) = A057037 (n + 1)

end A057037

/-! ## A057037.P16408418249882488673

`val(A094615(2*n)+1, 2)`
-/

namespace A057037.P16408418249882488673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094615 (2 * n) + 1).toNat 2

end

end A057037.P16408418249882488673

namespace A057037

/-- `val(A094615(2*n)+1, 2)` -/
def P16408418249882488673.Spec : Prop :=
  ∀ n, (P16408418249882488673.a n : ℤ) = A057037 (n + 1)

end A057037

/-!
# A057038: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057038(n)=i(2n).

The programs for A057038, the canonical program `A057038.P7025590189014035910` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057038 has offset 1).

The definition of A057038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057038.P7025590189014035910

`(a(n-1)+1)%A000267(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057038

/-- `(a(n-1)+1)%A000267(n)+1` -/
def P7025590189014035910.Spec : Prop :=
  ∀ n, P7025590189014035910.a n = A057038 (n + 1)

theorem P7025590189014035910.correct : P7025590189014035910.Spec := by
  intro n
  simp only [A057038, Nat.add_sub_cancel]

end A057038

/-! ## A057038.P13055497206494532862

`A057039(A057039(n+1)+n+1)`
-/

namespace A057038.P13055497206494532862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057039 (A057039 (n + 1) + (n + 1 : ℤ)).toNat

end

end A057038.P13055497206494532862

namespace A057038

/-- `A057039(A057039(n+1)+n+1)` -/
def P13055497206494532862.Spec : Prop :=
  ∀ n, P13055497206494532862.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P14386521315538708257

`log2(A059268(2*n+1))+1`
-/

namespace A057038.P14386521315538708257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 (2 * n + 1) : ℝ) + 1

end

end A057038.P14386521315538708257

namespace A057038

/-- `log2(A059268(2*n+1))+1` -/
def P14386521315538708257.Spec : Prop :=
  ∀ n, P14386521315538708257.a n = (A057038 (n + 1) : ℝ)

end A057038

/-! ## A057038.P15837354066079598125

`A002260(2*(n+1))`
-/

namespace A057038.P15837354066079598125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * (n + 1))

end

end A057038.P15837354066079598125

namespace A057038

/-- `A002260(2*(n+1))` -/
def P15837354066079598125.Spec : Prop :=
  ∀ n, P15837354066079598125.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P7691265182074454940

`A002260(n+2+n)%(n+2)`
-/

namespace A057038.P7691265182074454940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 2 + n)) (n + 2 : ℤ)

end

end A057038.P7691265182074454940

namespace A057038

/-- `A002260(n+2+n)%(n+2)` -/
def P7691265182074454940.Spec : Prop :=
  ∀ n, P7691265182074454940.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P5083954096640603807

`A000027(A002260(Δ[n²]+1)+n)-n`
-/

namespace A057038.P5083954096640603807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002260 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + (n : ℤ)).toNat - (n : ℤ)

end

end A057038.P5083954096640603807

namespace A057038

/-- `A000027(A002260(Δ[n²]+1)+n)-n` -/
def P5083954096640603807.Spec : Prop :=
  ∀ n, P5083954096640603807.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P4559383109115726190

`A002262(Δ[n²])+1`
-/

namespace A057038.P4559383109115726190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A057038.P4559383109115726190

namespace A057038

/-- `A002262(Δ[n²])+1` -/
def P4559383109115726190.Spec : Prop :=
  ∀ n, P4559383109115726190.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P8109555033489593821

`A048151(Δ[n²])+1`
-/

namespace A057038.P8109555033489593821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A057038.P8109555033489593821

namespace A057038

/-- `A048151(Δ[n²])+1` -/
def P8109555033489593821.Spec : Prop :=
  ∀ n, P8109555033489593821.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P3886881281417354560

`abs(A140756(2*(n+1)))`
-/

namespace A057038.P3886881281417354560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (2 * (n + 1))|

end

end A057038.P3886881281417354560

namespace A057038

/-- `abs(A140756(2*(n+1)))` -/
def P3886881281417354560.Spec : Prop :=
  ∀ n, P3886881281417354560.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P7585694038227016805

`sqrt(A133819(2*(n+1)))`
-/

namespace A057038.P7585694038227016805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (2 * (n + 1)) : ℝ)

end

end A057038.P7585694038227016805

namespace A057038

/-- `sqrt(A133819(2*(n+1)))` -/
def P7585694038227016805.Spec : Prop :=
  ∀ n, P7585694038227016805.a n = (A057038 (n + 1) : ℝ)

end A057038

/-! ## A057038.P1562704628721798277

`val(A204985(2*(n+1)), 2)`
-/

namespace A057038.P1562704628721798277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A204985 (2 * (n + 1))).toNat 2

end

end A057038.P1562704628721798277

namespace A057038

/-- `val(A204985(2*(n+1)), 2)` -/
def P1562704628721798277.Spec : Prop :=
  ∀ n, (P1562704628721798277.a n : ℤ) = A057038 (n + 1)

end A057038

/-! ## A057038.P2606201466559667307

`sqrt(sqrt(A133821(2*(n+1))))`
-/

namespace A057038.P2606201466559667307
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133821 (2 * (n + 1)) : ℝ))

end

end A057038.P2606201466559667307

namespace A057038

/-- `sqrt(sqrt(A133821(2*(n+1))))` -/
def P2606201466559667307.Spec : Prop :=
  ∀ n, P2606201466559667307.a n = (A057038 (n + 1) : ℝ)

end A057038

/-! ## A057038.P10616041407338300093

`sqrt(A143844(2*n+1))+1`
-/

namespace A057038.P10616041407338300093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 (2 * n + 1) : ℝ) + 1

end

end A057038.P10616041407338300093

namespace A057038

/-- `sqrt(A143844(2*n+1))+1` -/
def P10616041407338300093.Spec : Prop :=
  ∀ n, P10616041407338300093.a n = (A057038 (n + 1) : ℝ)

end A057038

/-! ## A057038.P18357989522034563327

`ceil(A158405(2*(n+1))/2)`
-/

namespace A057038.P18357989522034563327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158405 (2 * (n + 1)) : ℚ) / 2⌉

end

end A057038.P18357989522034563327

namespace A057038

/-- `ceil(A158405(2*(n+1))/2)` -/
def P18357989522034563327.Spec : Prop :=
  ∀ n, P18357989522034563327.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P14595549213929419324

`round(A131225(2*(n+1))/2)`
-/

namespace A057038.P14595549213929419324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131225 (2 * (n + 1)) : ℚ) / 2)

end

end A057038.P14595549213929419324

namespace A057038

/-- `round(A131225(2*(n+1))/2)` -/
def P14595549213929419324.Spec : Prop :=
  ∀ n, P14595549213929419324.a n = A057038 (n + 1)

end A057038

/-! ## A057038.P190372273667850568

`val(A018900(2*(n+1)), 2)+1`
-/

namespace A057038.P190372273667850568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018900 (2 * (n + 1))).toNat 2 + 1

end

end A057038.P190372273667850568

namespace A057038

/-- `val(A018900(2*(n+1)), 2)+1` -/
def P190372273667850568.Spec : Prop :=
  ∀ n, (P190372273667850568.a n : ℤ) = A057038 (n + 1)

end A057038

/-! ## A057038.P6143022157092077380

`val(A130328(2*n+1), 2)+1`
-/

namespace A057038.P6143022157092077380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 (2 * n + 1)).toNat 2 + 1

end

end A057038.P6143022157092077380

namespace A057038

/-- `val(A130328(2*n+1), 2)+1` -/
def P6143022157092077380.Spec : Prop :=
  ∀ n, (P6143022157092077380.a n : ℤ) = A057038 (n + 1)

end A057038

/-! ## A057038.P11096032092648236325

`val(A175840(2*n+1), 2)+1`
-/

namespace A057038.P11096032092648236325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 (2 * n + 1)).toNat 2 + 1

end

end A057038.P11096032092648236325

namespace A057038

/-- `val(A175840(2*n+1), 2)+1` -/
def P11096032092648236325.Spec : Prop :=
  ∀ n, (P11096032092648236325.a n : ℤ) = A057038 (n + 1)

end A057038

/-! ## A057038.P13457733153546384438

`val(A247936(2*n+1), 2)+1`
-/

namespace A057038.P13457733153546384438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247936 (2 * n + 1)).toNat 2 + 1

end

end A057038.P13457733153546384438

namespace A057038

/-- `val(A247936(2*n+1), 2)+1` -/
def P13457733153546384438.Spec : Prop :=
  ∀ n, (P13457733153546384438.a n : ℤ) = A057038 (n + 1)

end A057038

/-! ## A057038.P15728633293632540451

`A132118(2*(n+1))-Δ[n²]`
-/

namespace A057038.P15728633293632540451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A057038.P15728633293632540451

namespace A057038

/-- `A132118(2*(n+1))-Δ[n²]` -/
def P15728633293632540451.Spec : Prop :=
  ∀ n, P15728633293632540451.a n = A057038 (n + 1)

end A057038

/-!
# A057039: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057039(n)=j(2n).

The programs for A057039, the canonical program `A057039.P10812322326582328204` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057039 has offset 1).

The definition of A057039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057039.P10812322326582328204

`val(A036561(2*n+1), 2)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A057039

/-- `val(A036561(2*n+1), 2)+1` -/
def P10812322326582328204.Spec : Prop :=
  ∀ n, (P10812322326582328204.a n : ℤ) = A057039 (n + 1)

theorem P10812322326582328204.correct : P10812322326582328204.Spec := by
  intro n
  simp only [A057039, Nat.add_sub_cancel]

end A057039

/-! ## A057039.P6461672711924540469

`ceil(A099375(2*n+1)/2)`
-/

namespace A057039.P6461672711924540469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 (2 * n + 1) : ℚ) / 2⌉

end

end A057039.P6461672711924540469

namespace A057039

/-- `ceil(A099375(2*n+1)/2)` -/
def P6461672711924540469.Spec : Prop :=
  ∀ n, P6461672711924540469.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P8961143602091752566

`A000463(A099375(2*n+1))`
-/

namespace A057039.P8961143602091752566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 (2 * n + 1)).toNat

end

end A057039.P8961143602091752566

namespace A057039

/-- `A000463(A099375(2*n+1))` -/
def P8961143602091752566.Spec : Prop :=
  ∀ n, P8961143602091752566.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P10594733700303557176

`A032742(A099375(Δ[n²])+1)`
-/

namespace A057039.P10594733700303557176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A099375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A057039.P10594733700303557176

namespace A057039

/-- `A032742(A099375(Δ[n²])+1)` -/
def P10594733700303557176.Spec : Prop :=
  ∀ n, P10594733700303557176.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P13309880355268376397

`A078898(A099375(2*n+1)+1)`
-/

namespace A057039.P13309880355268376397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A099375 (2 * n + 1) + 1).toNat

end

end A057039.P13309880355268376397

namespace A057039

/-- `A078898(A099375(2*n+1)+1)` -/
def P13309880355268376397.Spec : Prop :=
  ∀ n, P13309880355268376397.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P18007291765346202560

`A302042(A099375(2*n+1)+1)`
-/

namespace A057039.P18007291765346202560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A099375 (2 * n + 1) + 1).toNat

end

end A057039.P18007291765346202560

namespace A057039

/-- `A302042(A099375(2*n+1)+1)` -/
def P18007291765346202560.Spec : Prop :=
  ∀ n, P18007291765346202560.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P11907841392023192183

`A003602(2*A099375(2*n+1))`
-/

namespace A057039.P11907841392023192183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A099375 (2 * n + 1)).toNat

end

end A057039.P11907841392023192183

namespace A057039

/-- `A003602(2*A099375(2*n+1))` -/
def P11907841392023192183.Spec : Prop :=
  ∀ n, P11907841392023192183.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P6864067979432588562

`A212012(2*(n+1))/2`
-/

namespace A057039.P6864067979432588562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (2 * (n + 1)) : ℚ) / 2

end

end A057039.P6864067979432588562

namespace A057039

/-- `A212012(2*(n+1))/2` -/
def P6864067979432588562.Spec : Prop :=
  ∀ n, P6864067979432588562.a n = (A057039 (n + 1) : ℚ)

end A057039

/-! ## A057039.P1977731904917243754

`log2(A130330(2*n+1)+1)`
-/

namespace A057039.P1977731904917243754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130330 (2 * n + 1) + 1 : ℝ)

end

end A057039.P1977731904917243754

namespace A057039

/-- `log2(A130330(2*n+1)+1)` -/
def P1977731904917243754.Spec : Prop :=
  ∀ n, P1977731904917243754.a n = (A057039 (n + 1) : ℝ)

end A057039

/-! ## A057039.P11464913293222972718

`A002260(A038722(2*(n+1)))`
-/

namespace A057039.P11464913293222972718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (2 * (n + 1))).toNat

end

end A057039.P11464913293222972718

namespace A057039

/-- `A002260(A038722(2*(n+1)))` -/
def P11464913293222972718.Spec : Prop :=
  ∀ n, P11464913293222972718.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P6699665408301978432

`sqrt(A055461(2*(n+1)))`
-/

namespace A057039.P6699665408301978432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (2 * (n + 1)) : ℝ)

end

end A057039.P6699665408301978432

namespace A057039

/-- `sqrt(A055461(2*(n+1)))` -/
def P6699665408301978432.Spec : Prop :=
  ∀ n, P6699665408301978432.a n = (A057039 (n + 1) : ℝ)

end A057039

/-! ## A057039.P5992008776748585589

`A004736(2*(n+1))`
-/

namespace A057039.P5992008776748585589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (2 * (n + 1))

end

end A057039.P5992008776748585589

namespace A057039

/-- `A004736(2*(n+1))` -/
def P5992008776748585589.Spec : Prop :=
  ∀ n, P5992008776748585589.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P11429154937644852336

`A025581(Δ[n²])+1`
-/

namespace A057039.P11429154937644852336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A057039.P11429154937644852336

namespace A057039

/-- `A025581(Δ[n²])+1` -/
def P11429154937644852336.Spec : Prop :=
  ∀ n, P11429154937644852336.a n = A057039 (n + 1)

end A057039

/-! ## A057039.P9605240218728172666

`log2(A090988(2*(n+1)))`
-/

namespace A057039.P9605240218728172666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (2 * (n + 1)) : ℝ)

end

end A057039.P9605240218728172666

namespace A057039

/-- `log2(A090988(2*(n+1)))` -/
def P9605240218728172666.Spec : Prop :=
  ∀ n, P9605240218728172666.a n = (A057039 (n + 1) : ℝ)

end A057039

/-! ## A057039.P8058570015633233704

`val(A043569(2*(n+1)), 2)`
-/

namespace A057039.P8058570015633233704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (2 * (n + 1))).toNat 2

end

end A057039.P8058570015633233704

namespace A057039

/-- `val(A043569(2*(n+1)), 2)` -/
def P8058570015633233704.Spec : Prop :=
  ∀ n, (P8058570015633233704.a n : ℤ) = A057039 (n + 1)

end A057039

/-! ## A057039.P14198912331847174525

`val(A081954(2*(n+1)), 2)`
-/

namespace A057039.P14198912331847174525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081954 (2 * (n + 1))).toNat 2

end

end A057039.P14198912331847174525

namespace A057039

/-- `val(A081954(2*(n+1)), 2)` -/
def P14198912331847174525.Spec : Prop :=
  ∀ n, (P14198912331847174525.a n : ℤ) = A057039 (n + 1)

end A057039

/-! ## A057039.P3870995211407076252

`val(A118586(2*(n+1)), 2)`
-/

namespace A057039.P3870995211407076252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (2 * (n + 1))).toNat 2

end

end A057039.P3870995211407076252

namespace A057039

/-- `val(A118586(2*(n+1)), 2)` -/
def P3870995211407076252.Spec : Prop :=
  ∀ n, (P3870995211407076252.a n : ℤ) = A057039 (n + 1)

end A057039

/-! ## A057039.P12661135536609286733

`sqrt(A095831(2*(n+1)))+1`
-/

namespace A057039.P12661135536609286733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A095831 (2 * (n + 1)) : ℝ) + 1

end

end A057039.P12661135536609286733

namespace A057039

/-- `sqrt(A095831(2*(n+1)))+1` -/
def P12661135536609286733.Spec : Prop :=
  ∀ n, P12661135536609286733.a n = (A057039 (n + 1) : ℝ)

end A057039

/-! ## A057039.P8100550316749493360

`log2(A130321(2*n+1))+1`
-/

namespace A057039.P8100550316749493360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 (2 * n + 1) : ℝ) + 1

end

end A057039.P8100550316749493360

namespace A057039

/-- `log2(A130321(2*n+1))+1` -/
def P8100550316749493360.Spec : Prop :=
  ∀ n, P8100550316749493360.a n = (A057039 (n + 1) : ℝ)

end A057039

/-!
# A057040: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057040(n)=i(F(n)), where F(n) is the n-th Fibonacci number.

The programs for A057040, there is no canonical definition to state claims against.
-/

/-! ## A057040.P7511084219922863460

`A057042(n+1)+1-A057041(n+1)`
-/

namespace A057040.P7511084219922863460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057042 (n + 1) + (1 - A057041 (n + 1))

end

end A057040.P7511084219922863460

/-! ## A057040.P6177655746204525799

`A057042(n+1)+A024000(A057041(n+1))`
-/

namespace A057040.P6177655746204525799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057042 (n + 1) + A024000 (A057041 (n + 1)).toNat

end

end A057040.P6177655746204525799

/-! ## A057040.P10663135219240726087

`A002260(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A057040.P10663135219240726087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n).toNat

end

end A057040.P10663135219240726087

/-! ## A057040.P13232530879831226257

`A002260(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A057040.P13232530879831226257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n).toNat

end

end A057040.P13232530879831226257

/-!
# A057041: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057041(n)=j(F(n)), where F(n) is the n-th Fibonacci number.

The programs for A057041, there is no canonical definition to state claims against.
-/

/-! ## A057041.P10880020787293485459

`A057042(n+1)+1-A057040(n+1)`
-/

namespace A057041.P10880020787293485459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057042 (n + 1) + (1 - A057040 (n + 1))

end

end A057041.P10880020787293485459

/-! ## A057041.P6888436241585922059

`A000217(A057042(n+1))-A000071(n+1)`
-/

namespace A057041.P6888436241585922059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057042 (n + 1)).toNat - A000071 (n + 1)

end

end A057041.P6888436241585922059

/-! ## A057041.P7436881741902503144

`A057042(n+1)+A024000(A057040(n+1))`
-/

namespace A057041.P7436881741902503144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057042 (n + 1) + A024000 (A057040 (n + 1)).toNat

end

end A057041.P7436881741902503144

/-! ## A057041.P13850633996078861915

`A000124(A057042(n+1))-A000045(n+1)`
-/

namespace A057041.P13850633996078861915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057042 (n + 1)).toNat - A000045 (n + 1)

end

end A057041.P13850633996078861915

/-! ## A057041.P2581531617453897581

`A212012(A000045(n+1))/2`
-/

namespace A057041.P2581531617453897581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (A000045 (n + 1)).toNat : ℚ) / 2

end

end A057041.P2581531617453897581

/-!
# A057042: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; the n-th Fibonacci number is in antidiagonal a(n).

The programs for A057042, there is no canonical definition to state claims against.
-/

/-! ## A057042.P7399474908858855901

`round(sqrt(floor(2/(3-ϕ)*ϕ^n)))`
-/

namespace A057042.P7399474908858855901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (⌊2 / (3 - Real.goldenRatio) * Real.goldenRatio ^ n⌋ : ℝ))

end

end A057042.P7399474908858855901

/-! ## A057042.P3271864645378361762

`round(sqrt(A001595(n)))%A052548(n)`
-/

namespace A057042.P3271864645378361762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001595 n : ℝ))) (A052548 n)

end

end A057042.P3271864645378361762

/-! ## A057042.P7330112448634041763

`round(sqrt(A001595(n)))*A084600(n²)`
-/

namespace A057042.P7330112448634041763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001595 n : ℝ)) * A084600 (n ^ 2)

end

end A057042.P7330112448634041763

/-! ## A057042.P12720825487693004464

`round(sqrt(A001595(n)))+A265185(n)%2`
-/

namespace A057042.P12720825487693004464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001595 n : ℝ)) + Int.tmod (A265185 n) 2

end

end A057042.P12720825487693004464

/-! ## A057042.P13452978010699199005

`round(sqrt(A062114(n+1)))+A000038(n)%2`
-/

namespace A057042.P13452978010699199005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A062114 (n + 1) : ℝ)) + Int.tmod (A000038 n) 2

end

end A057042.P13452978010699199005

/-! ## A057042.P11544597136087706223

`A000027(round(sqrt(A001595(n))))`
-/

namespace A057042.P11544597136087706223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A001595 n : ℝ))).toNat

end

end A057042.P11544597136087706223

/-!
# A057043: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057043(n)=i(L(n)), where L(n) is the n-th Lucas number.

The programs for A057043, there is no canonical definition to state claims against.
-/

/-! ## A057043.P13372367334065387709

`A057045(n+1)+1-A057044(n+1)`
-/

namespace A057043.P13372367334065387709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057045 (n + 1) + (1 - A057044 (n + 1))

end

end A057043.P13372367334065387709

/-! ## A057043.P13950921724543493602

`A057045(n+1)-A023443(A057044(n+1))`
-/

namespace A057043.P13950921724543493602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057045 (n + 1) - A023443 (A057044 (n + 1)).toNat

end

end A057043.P13950921724543493602

/-! ## A057043.P7035928546684762937

`A002260(A000032(n)%A020221(3*n+4))`
-/

namespace A057043.P7035928546684762937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A000032 n) (A020221 (3 * n + 4))).toNat

end

end A057043.P7035928546684762937

/-! ## A057043.P1398847163885785775

`A002260(round(ϕ^n))`
-/

namespace A057043.P1398847163885785775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A057043.P1398847163885785775

/-! ## A057043.P7918417557051474804

`A285730(round(ϕ^n))`
-/

namespace A057043.P7918417557051474804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A057043.P7918417557051474804

/-!
# A057044: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057044(n)=j(L(n)), where L(n) is the n-th Lucas number.

The programs for A057044, there is no canonical definition to state claims against.
-/

/-! ## A057044.P16666229403324454039

`A057045(n+1)+1-A057043(n+1)`
-/

namespace A057044.P16666229403324454039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057045 (n + 1) + (1 - A057043 (n + 1))

end

end A057044.P16666229403324454039

/-! ## A057044.P2900553911321323267

`A057045(n+1)-A023443(A057043(n+1))`
-/

namespace A057044.P2900553911321323267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057045 (n + 1) - A023443 (A057043 (n + 1)).toNat

end

end A057044.P2900553911321323267

/-! ## A057044.P17430436760640084356

`A000124(A057045(n+1))-A000032(n)`
-/

namespace A057044.P17430436760640084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057045 (n + 1)).toNat - A000032 n

end

end A057044.P17430436760640084356

/-! ## A057044.P4879938643172511376

`A000124(A057045(n+1))-sqrt(A001254(n))`
-/

namespace A057044.P4879938643172511376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000124 (A057045 (n + 1)).toNat : ℝ) - Real.sqrt (A001254 n : ℝ)

end

end A057044.P4879938643172511376

/-! ## A057044.P15733460141523535243

`A000124(A057045(n+1))-A127218(2*n)`
-/

namespace A057044.P15733460141523535243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057045 (n + 1)).toNat - A127218 (2 * n)

end

end A057044.P15733460141523535243

/-!
# A057045: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; the n-th Lucas number is in antidiagonal a(n).

The programs for A057045, the canonical program `A057045.P8533816772793938656` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057045 has offset 1).

The definition of A057045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057045.P8533816772793938656

`round(sqrt(2*A000032(n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057045

/-- `round(sqrt(2*A000032(n)))` -/
def P8533816772793938656.Spec : Prop :=
  ∀ n, P8533816772793938656.a n = A057045 (n + 1)

theorem P8533816772793938656.correct : P8533816772793938656.Spec := by
  intro n
  simp only [A057045, Nat.add_sub_cancel]

end A057045

/-! ## A057045.P4370240732073210546

`round(sqrt(2*A303427(2*n)))`
-/

namespace A057045.P4370240732073210546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A303427 (2 * n) : ℝ))

end

end A057045.P4370240732073210546

namespace A057045

/-- `round(sqrt(2*A303427(2*n)))` -/
def P4370240732073210546.Spec : Prop :=
  ∀ n, P4370240732073210546.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P10500850854622205440

`round(sqrt(2*A302126(2*n+1)))`
-/

namespace A057045.P10500850854622205440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A302126 (2 * n + 1) : ℝ))

end

end A057045.P10500850854622205440

namespace A057045

/-- `round(sqrt(2*A302126(2*n+1)))` -/
def P10500850854622205440.Spec : Prop :=
  ∀ n, P10500850854622205440.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P15791932095227426788

`round(sqrt(A014217(n)+A000032(n)))`
-/

namespace A057045.P15791932095227426788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A014217 n + A000032 n : ℝ))

end

end A057045.P15791932095227426788

namespace A057045

/-- `round(sqrt(A014217(n)+A000032(n)))` -/
def P15791932095227426788.Spec : Prop :=
  ∀ n, P15791932095227426788.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P16423921354551635294

`round(sqrt(2*Δ[A000204(n+1)]))`
-/

namespace A057045.P16423921354551635294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (f1 (n + 1) - f1 n) : ℝ))

end

end A057045.P16423921354551635294

namespace A057045

/-- `round(sqrt(2*Δ[A000204(n+1)]))` -/
def P16423921354551635294.Spec : Prop :=
  ∀ n, P16423921354551635294.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P9685274607527875413

`round(root(2*Δ[A000032(n+1)], 2))`
-/

namespace A057045.P9685274607527875413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (f1 (n + 1) - f1 n) : ℝ) ^ (1 / (2 : ℝ)))

end

end A057045.P9685274607527875413

namespace A057045

/-- `round(root(2*Δ[A000032(n+1)], 2))` -/
def P9685274607527875413.Spec : Prop :=
  ∀ n, P9685274607527875413.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P2505638713749906452

`round(sqrt(Δ[a(n-2)+a(n-1)]))` with `a(0)=2, a(1)=6`
-/

namespace A057045.P2505638713749906452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))

end

end A057045.P2505638713749906452

namespace A057045

/-- `round(sqrt(Δ[a(n-2)+a(n-1)]))` -/
def P2505638713749906452.Spec : Prop :=
  ∀ n, P2505638713749906452.a n = A057045 (n + 1)

end A057045

/-! ## A057045.P14991022209454194675

`round(sqrt(Δ[A022319(n)]))`
-/

namespace A057045.P14991022209454194675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A057045.P14991022209454194675

namespace A057045

/-- `round(sqrt(Δ[A022319(n)]))` -/
def P14991022209454194675.Spec : Prop :=
  ∀ n, P14991022209454194675.a n = A057045 (n + 1)

end A057045

/-!
# A057046: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057046(n)=i(2^n).

The programs for A057046, there is no canonical definition to state claims against.
-/

/-! ## A057046.P8968919310319502295

`2^n-C(A017911(n+1), 2)`
-/

namespace A057046.P8968919310319502295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose (A017911 (n + 1)).toNat 2 : ℤ)

end

end A057046.P8968919310319502295

/-! ## A057046.P9038192207345712864

`A057048(n)+1-A057047(n)`
-/

namespace A057046.P9038192207345712864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 n + (1 - A057047 n)

end

end A057046.P9038192207345712864

/-! ## A057046.P7509871133980943897

`A000079(n)-C(A057048(n), 2)`
-/

namespace A057046.P7509871133980943897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (Nat.choose (A057048 n).toNat 2 : ℤ)

end

end A057046.P7509871133980943897

/-! ## A057046.P9703777499281715504

`abs(C(A017911(n+1), 2)-A000079(n))`
-/

namespace A057046.P9703777499281715504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A017911 (n + 1)).toNat 2 : ℤ) - A000079 n|

end

end A057046.P9703777499281715504

/-! ## A057046.P521276545175077248

`A000225(n)-C(A017911(n+1), 2)+1`
-/

namespace A057046.P521276545175077248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (Nat.choose (A017911 (n + 1)).toNat 2 : ℤ) + 1

end

end A057046.P521276545175077248

/-!
# A057047: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057047(n)=j(2^n).

The programs for A057047, there is no canonical definition to state claims against.
-/

/-! ## A057047.P4946995550041604728

`round(2^((n+1)/2))+1-A057046(n)`
-/

namespace A057047.P4946995550041604728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)) + 1 - A057046 n

end

end A057047.P4946995550041604728

/-! ## A057047.P6439823274158719464

`A057048(n)+1-A057046(n)`
-/

namespace A057047.P6439823274158719464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 n + (1 - A057046 n)

end

end A057047.P6439823274158719464

/-! ## A057047.P13174201968808116914

`A000217(round(2^((n+1)/2)))-(2^n-1)`
-/

namespace A057047.P13174201968808116914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))).toNat - ((2 ^ n : ℤ) - 1)

end

end A057047.P13174201968808116914

/-! ## A057047.P14027182708268908535

`A023443(2-(A057046(n)-A057048(n)))`
-/

namespace A057047.P14027182708268908535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 - (A057046 n - A057048 n)).toNat

end

end A057047.P14027182708268908535

/-! ## A057047.P15839913187200848582

`A057048(n)-A023443(A057046(n))`
-/

namespace A057047.P15839913187200848582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 n - A023443 (A057046 n).toNat

end

end A057047.P15839913187200848582

/-!
# A057048: a(n) = A017911(n+1) = round(sqrt(2)^(n+1)).

The programs for A057048, the canonical program `A057048.P5956460566480631135` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057048 has offset 0).

The definition of A057048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057048.P16061020937751246668

`A017911(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057048.P16061020937751246668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (n + 1)

end

end A057048.P16061020937751246668

namespace A057048

/-- `A017911(n+1)` -/
def P16061020937751246668.Spec : Prop :=
  ∀ n, P16061020937751246668.a n = A057048 n

end A057048

/-! ## A057048.P5956460566480631135

`round(sqrt(2^(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057048

/-- `round(sqrt(2^(n+1)))` -/
def P5956460566480631135.Spec : Prop :=
  ∀ n, P5956460566480631135.a n = A057048 n

theorem P5956460566480631135.correct : P5956460566480631135.Spec := by
  intro n
  simp only [A057048]

end A057048

/-! ## A057048.P13517688147772131807

`A190660(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A057048.P13517688147772131807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A190660 n + a (n - 1)

end

end A057048.P13517688147772131807

namespace A057048

/-- `A190660(n)+a(n-1)` -/
def P13517688147772131807.Spec : Prop :=
  ∀ n, P13517688147772131807.a n = A057048 n

end A057048

/-! ## A057048.P14041459108325947227

`ratio[A017911(n)]*A017911(n)`
-/

namespace A057048.P14041459108325947227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A017911 n : ℚ)

end

end A057048.P14041459108325947227

namespace A057048

/-- `ratio[A017911(n)]*A017911(n)` -/
def P14041459108325947227.Spec : Prop :=
  ∀ n, P14041459108325947227.a n = (A057048 n : ℚ)

end A057048

/-! ## A057048.P3947573446259613011

`A126726(n+2)+A126726(n+3)`
-/

namespace A057048.P3947573446259613011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126726 (n + 2) + A126726 (n + 3)

end

end A057048.P3947573446259613011

namespace A057048

/-- `A126726(n+2)+A126726(n+3)` -/
def P3947573446259613011.Spec : Prop :=
  ∀ n, P3947573446259613011.a n = A057048 n

end A057048

/-! ## A057048.P3788192743764837538

`A017910(n+3)-A017910(n+1)`
-/

namespace A057048.P3788192743764837538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (n + 3) - A017910 (n + 1)

end

end A057048.P3788192743764837538

namespace A057048

/-- `A017910(n+3)-A017910(n+1)` -/
def P3788192743764837538.Spec : Prop :=
  ∀ n, P3788192743764837538.a n = A057048 n

end A057048

/-! ## A057048.P5915558811018375477

`A017912(n+3)-A017912(n+1)`
-/

namespace A057048.P5915558811018375477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (n + 3) - A017912 (n + 1)

end

end A057048.P5915558811018375477

namespace A057048

/-- `A017912(n+3)-A017912(n+1)` -/
def P5915558811018375477.Spec : Prop :=
  ∀ n, P5915558811018375477.a n = A057048 n

end A057048

/-! ## A057048.P13198734091168543889

`A136417(n+3)-A136417(n+1)`
-/

namespace A057048.P13198734091168543889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (n + 3) - A136417 (n + 1)

end

end A057048.P13198734091168543889

namespace A057048

/-- `A136417(n+3)-A136417(n+1)` -/
def P13198734091168543889.Spec : Prop :=
  ∀ n, P13198734091168543889.a n = A057048 n

end A057048

/-! ## A057048.P12953842730769995924

`Δ[A001521(n+3)]`
-/

namespace A057048.P12953842730769995924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057048.P12953842730769995924

namespace A057048

/-- `Δ[A001521(n+3)]` -/
def P12953842730769995924.Spec : Prop :=
  ∀ n, P12953842730769995924.a n = A057048 n

end A057048

/-! ## A057048.P9043949685595860131

`A001521(n+4)-A001521(n+3)`
-/

namespace A057048.P9043949685595860131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001521 (n + 4) - A001521 (n + 3)

end

end A057048.P9043949685595860131

namespace A057048

/-- `A001521(n+4)-A001521(n+3)` -/
def P9043949685595860131.Spec : Prop :=
  ∀ n, P9043949685595860131.a n = A057048 n

end A057048

/-! ## A057048.P12200270706438662900

`A018049(2*(n+1))`
-/

namespace A057048.P12200270706438662900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018049 (2 * (n + 1))

end

end A057048.P12200270706438662900

namespace A057048

/-- `A018049(2*(n+1))` -/
def P12200270706438662900.Spec : Prop :=
  ∀ n, P12200270706438662900.a n = A057048 n

end A057048

/-! ## A057048.P6466378512594019503

`record[round(sqrt(A077958(n)))]`
-/

namespace A057048.P6466378512594019503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A077958 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P6466378512594019503

namespace A057048

/-- `record[round(sqrt(A077958(n)))]` -/
def P6466378512594019503.Spec : Prop :=
  ∀ n, P6466378512594019503.a n = A057048 n

end A057048

/-! ## A057048.P16599364356449393386

`record[round(sqrt(A131575(n)))]`
-/

namespace A057048.P16599364356449393386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A131575 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P16599364356449393386

namespace A057048

/-- `record[round(sqrt(A131575(n)))]` -/
def P16599364356449393386.Spec : Prop :=
  ∀ n, P16599364356449393386.a n = A057048 n

end A057048

/-! ## A057048.P15493121653751792012

`record[round(sqrt(A324866(n+2)))]`
-/

namespace A057048.P15493121653751792012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A324866 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P15493121653751792012

namespace A057048

/-- `record[round(sqrt(A324866(n+2)))]` -/
def P15493121653751792012.Spec : Prop :=
  ∀ n, P15493121653751792012.a n = A057048 n

end A057048

/-! ## A057048.P5678085912470976076

`record[round(sqrt(2*A081532(n+1)))]`
-/

namespace A057048.P5678085912470976076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A081532 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P5678085912470976076

namespace A057048

/-- `record[round(sqrt(2*A081532(n+1)))]` -/
def P5678085912470976076.Spec : Prop :=
  ∀ n, P5678085912470976076.a n = A057048 n

end A057048

/-! ## A057048.P10508227043731948343

`record[round(sqrt(A081532(n+1)))]`
-/

namespace A057048.P10508227043731948343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A081532 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P10508227043731948343

namespace A057048

/-- `record[round(sqrt(A081532(n+1)))]` -/
def P10508227043731948343.Spec : Prop :=
  ∀ n, P10508227043731948343.a n = A057048 n

end A057048

/-! ## A057048.P3038265463906877626

`record[round(sqrt(A239303(n+1)))]`
-/

namespace A057048.P3038265463906877626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A239303 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057048.P3038265463906877626

namespace A057048

/-- `record[round(sqrt(A239303(n+1)))]` -/
def P3038265463906877626.Spec : Prop :=
  ∀ n, P3038265463906877626.a n = A057048 n

end A057048

/-!
# A057049: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057049(n) = i(n^2).

The programs for A057049, the canonical program `A057049.P14476744536565979045` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057049 has offset 1).

The definition of A057049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057049.P14476744536565979045

`(n+1)²-A000217(A022846(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057049

/-- `(n+1)²-A000217(A022846(n+1)-1)` -/
def P14476744536565979045.Spec : Prop :=
  ∀ n, P14476744536565979045.a n = A057049 (n + 1)

theorem P14476744536565979045.correct : P14476744536565979045.Spec := by
  intro n
  simp only [A057049, Nat.add_sub_cancel]

end A057049

/-! ## A057049.P6290942937279435622

`(n+1)²-A000217(A186222(n+1)-(n+1))`
-/

namespace A057049.P6290942937279435622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000217 (A186222 (n + 1) - (n + 1 : ℤ)).toNat

end

end A057049.P6290942937279435622

namespace A057049

/-- `(n+1)²-A000217(A186222(n+1)-(n+1))` -/
def P6290942937279435622.Spec : Prop :=
  ∀ n, P6290942937279435622.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P4390244781558629323

`A003153(n+1)+A001489(n)-A057050(n+1)`
-/

namespace A057049.P4390244781558629323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1) + (A001489 n - A057050 (n + 1))

end

end A057049.P4390244781558629323

namespace A057049

/-- `A003153(n+1)+A001489(n)-A057050(n+1)` -/
def P4390244781558629323.Spec : Prop :=
  ∀ n, P4390244781558629323.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P11369222113268817770

`A117704(A193714(n+1))`
-/

namespace A057049.P11369222113268817770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117704 (A193714 (n + 1)).toNat

end

end A057049.P11369222113268817770

namespace A057049

/-- `A117704(A193714(n+1))` -/
def P11369222113268817770.Spec : Prop :=
  ∀ n, P11369222113268817770.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P9918136412197161281

`A355182(A003153(n+1))`
-/

namespace A057049.P9918136412197161281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355182 (A003153 (n + 1)).toNat

end

end A057049.P9918136412197161281

namespace A057049

/-- `A355182(A003153(n+1))` -/
def P9918136412197161281.Spec : Prop :=
  ∀ n, P9918136412197161281.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P6229603548414041878

`A002260((n+1)²)`
-/

namespace A057049.P6229603548414041878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n + 1) ^ 2)

end

end A057049.P6229603548414041878

namespace A057049

/-- `A002260((n+1)²)` -/
def P6229603548414041878.Spec : Prop :=
  ∀ n, P6229603548414041878.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P15527343359749664372

`A002260(∑[2*n+1])%(2*(n+1))`
-/

namespace A057049.P15527343359749664372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 * (n + 1) : ℤ)

end

end A057049.P15527343359749664372

namespace A057049

/-- `A002260(∑[2*n+1])%(2*(n+1))` -/
def P15527343359749664372.Spec : Prop :=
  ∀ n, P15527343359749664372.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P3421471962427961577

`A000027(A002260(∑[2*n+1]))`
-/

namespace A057049.P3421471962427961577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057049.P3421471962427961577

namespace A057049

/-- `A000027(A002260(∑[2*n+1]))` -/
def P3421471962427961577.Spec : Prop :=
  ∀ n, P3421471962427961577.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P17070485854233796534

`A028310(A002260(∑[or(1, 2*n)]))`
-/

namespace A057049.P17070485854233796534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057049.P17070485854233796534

namespace A057049

/-- `A028310(A002260(∑[or(1, 2*n)]))` -/
def P17070485854233796534.Spec : Prop :=
  ∀ n, P17070485854233796534.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P14494231642169493182

`A002260(A005563(n)+1)+and(n, -(n+1))`
-/

namespace A057049.P14494231642169493182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A005563 n + 1).toNat + Int.land (n : ℤ) (-(n + 1 : ℤ))

end

end A057049.P14494231642169493182

namespace A057049

/-- `A002260(A005563(n)+1)+and(n, -(n+1))` -/
def P14494231642169493182.Spec : Prop :=
  ∀ n, P14494231642169493182.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P5071121120009667109

`A254051(A254052(A002260((n+1)*(n+1))))`
-/

namespace A057049.P5071121120009667109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A254052 (A002260 ((n + 1) * (n + 1))).toNat).toNat

end

end A057049.P5071121120009667109

namespace A057049

/-- `A254051(A254052(A002260((n+1)*(n+1))))` -/
def P5071121120009667109.Spec : Prop :=
  ∀ n, P5071121120009667109.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P8957767329998892873

`A004736(C(A002260(n*(n+2)+1), 2)+1)`
-/

namespace A057049.P8957767329998892873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (A002260 (n * (n + 2) + 1)).toNat 2 + 1)

end

end A057049.P8957767329998892873

namespace A057049

/-- `A004736(C(A002260(n*(n+2)+1), 2)+1)` -/
def P8957767329998892873.Spec : Prop :=
  ∀ n, P8957767329998892873.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P13745275368017272266

`A003506(A000217(A002260(A000290(n+1))))`
-/

namespace A057049.P13745275368017272266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A000217 (A002260 (A000290 (n + 1)).toNat).toNat).toNat

end

end A057049.P13745275368017272266

namespace A057049

/-- `A003506(A000217(A002260(A000290(n+1))))` -/
def P13745275368017272266.Spec : Prop :=
  ∀ n, P13745275368017272266.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P5960755953602041620

`A080818((n+1)²)`
-/

namespace A057049.P5960755953602041620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 ((n + 1) ^ 2)

end

end A057049.P5960755953602041620

namespace A057049

/-- `A080818((n+1)²)` -/
def P5960755953602041620.Spec : Prop :=
  ∀ n, P5960755953602041620.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P7486126932916902473

`abs(A140756((n+1)²))`
-/

namespace A057049.P7486126932916902473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 ((n + 1) ^ 2)|

end

end A057049.P7486126932916902473

namespace A057049

/-- `abs(A140756((n+1)²))` -/
def P7486126932916902473.Spec : Prop :=
  ∀ n, P7486126932916902473.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P3148457681363905451

`sqrt(A133819((n+1)²))`
-/

namespace A057049.P3148457681363905451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 ((n + 1) ^ 2) : ℝ)

end

end A057049.P3148457681363905451

namespace A057049

/-- `sqrt(A133819((n+1)²))` -/
def P3148457681363905451.Spec : Prop :=
  ∀ n, P3148457681363905451.a n = (A057049 (n + 1) : ℝ)

end A057049

/-! ## A057049.P5102855439291068153

`A002262(n*(n+2))+1`
-/

namespace A057049.P5102855439291068153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n * (n + 2)) + 1

end

end A057049.P5102855439291068153

namespace A057049

/-- `A002262(n*(n+2))+1` -/
def P5102855439291068153.Spec : Prop :=
  ∀ n, P5102855439291068153.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P15927674647077427835

`ceil(A158405(n*(n+2)+1)/2)`
-/

namespace A057049.P15927674647077427835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158405 (n * (n + 2) + 1) : ℚ) / 2⌉

end

end A057049.P15927674647077427835

namespace A057049

/-- `ceil(A158405(n*(n+2)+1)/2)` -/
def P15927674647077427835.Spec : Prop :=
  ∀ n, P15927674647077427835.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P459151587272784435

`A000720(A037126((n+1)²))`
-/

namespace A057049.P459151587272784435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 ((n + 1) ^ 2)).toNat

end

end A057049.P459151587272784435

namespace A057049

/-- `A000720(A037126((n+1)²))` -/
def P459151587272784435.Spec : Prop :=
  ∀ n, P459151587272784435.a n = A057049 (n + 1)

end A057049

/-! ## A057049.P2407372010760837048

`A004736(A038722((n+1)²))`
-/

namespace A057049.P2407372010760837048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 ((n + 1) ^ 2)).toNat

end

end A057049.P2407372010760837048

namespace A057049

/-- `A004736(A038722((n+1)²))` -/
def P2407372010760837048.Spec : Prop :=
  ∀ n, P2407372010760837048.a n = A057049 (n + 1)

end A057049

/-!
# A057050: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057050(n)=j(n^2).

The programs for A057050, the canonical program `A057050.P6691171465393059928` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057050 has offset 1).

The definition of A057050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057050.P6691171465393059928

`∑[A214848(n)]-A057049(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057050

/-- `∑[A214848(n)]-A057049(n+1)+1` -/
def P6691171465393059928.Spec : Prop :=
  ∀ n, P6691171465393059928.a n = A057050 (n + 1)

theorem P6691171465393059928.correct : P6691171465393059928.Spec := by
  intro n
  simp only [A057050, Nat.add_sub_cancel]

end A057050

/-! ## A057050.P13187185813164568209

`A064784(A022846(n+1))+1`
-/

namespace A057050.P13187185813164568209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (A022846 (n + 1)).toNat + 1

end

end A057050.P13187185813164568209

namespace A057050

/-- `A064784(A022846(n+1))+1` -/
def P13187185813164568209.Spec : Prop :=
  ∀ n, P13187185813164568209.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P11241353661890316321

`A000124(∑[A214848(n)])-(n+1)²`
-/

namespace A057050.P11241353661890316321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((n + 1) ^ 2 : ℤ)

end

end A057050.P11241353661890316321

namespace A057050

/-- `A000124(∑[A214848(n)])-(n+1)²` -/
def P11241353661890316321.Spec : Prop :=
  ∀ n, P11241353661890316321.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P7525112790557027900

`A057049(A003153(n+1))-n`
-/

namespace A057050.P7525112790557027900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057049 (A003153 (n + 1)).toNat - (n : ℤ)

end

end A057050.P7525112790557027900

namespace A057050

/-- `A057049(A003153(n+1))-n` -/
def P7525112790557027900.Spec : Prop :=
  ∀ n, P7525112790557027900.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P11050430659894802611

`A230038(n+1)+1`
-/

namespace A057050.P11050430659894802611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230038 (n + 1) + 1

end

end A057050.P11050430659894802611

namespace A057050

/-- `A230038(n+1)+1` -/
def P11050430659894802611.Spec : Prop :=
  ∀ n, P11050430659894802611.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P16457737795984953221

`A330439(A330587((n+1)²))`
-/

namespace A057050.P16457737795984953221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 (A330587 ((n + 1) ^ 2)).toNat

end

end A057050.P16457737795984953221

namespace A057050

/-- `A330439(A330587((n+1)²))` -/
def P16457737795984953221.Spec : Prop :=
  ∀ n, P16457737795984953221.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P3810628592809821434

`ceil(A099375(n*(n+2))/2)`
-/

namespace A057050.P3810628592809821434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 (n * (n + 2)) : ℚ) / 2⌉

end

end A057050.P3810628592809821434

namespace A057050

/-- `ceil(A099375(n*(n+2))/2)` -/
def P3810628592809821434.Spec : Prop :=
  ∀ n, P3810628592809821434.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P10732414641581461435

`A000463(A099375(n*(n+2)))`
-/

namespace A057050.P10732414641581461435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 (n * (n + 2))).toNat

end

end A057050.P10732414641581461435

namespace A057050

/-- `A000463(A099375(n*(n+2)))` -/
def P10732414641581461435.Spec : Prop :=
  ∀ n, P10732414641581461435.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P12779169153021118771

`A110654(A099375((n+1)²-1))`
-/

namespace A057050.P12779169153021118771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A099375 ((n + 1) ^ 2 - 1)).toNat

end

end A057050.P12779169153021118771

namespace A057050

/-- `A110654(A099375((n+1)²-1))` -/
def P12779169153021118771.Spec : Prop :=
  ∀ n, P12779169153021118771.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P14690863576499023506

`A160413(A099375(n*(n+2))+1)`
-/

namespace A057050.P14690863576499023506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A099375 (n * (n + 2)) + 1).toNat

end

end A057050.P14690863576499023506

namespace A057050

/-- `A160413(A099375(n*(n+2))+1)` -/
def P14690863576499023506.Spec : Prop :=
  ∀ n, P14690863576499023506.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P10259822233743879978

`A212012((n+1)²)/2`
-/

namespace A057050.P10259822233743879978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 ((n + 1) ^ 2) : ℚ) / 2

end

end A057050.P10259822233743879978

namespace A057050

/-- `A212012((n+1)²)/2` -/
def P10259822233743879978.Spec : Prop :=
  ∀ n, P10259822233743879978.a n = (A057050 (n + 1) : ℚ)

end A057050

/-! ## A057050.P1888371811879174993

`A002260(A038722((n+1)²))`
-/

namespace A057050.P1888371811879174993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 ((n + 1) ^ 2)).toNat

end

end A057050.P1888371811879174993

namespace A057050

/-- `A002260(A038722((n+1)²))` -/
def P1888371811879174993.Spec : Prop :=
  ∀ n, P1888371811879174993.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P5191489439048359159

`A004736((n+1)²)`
-/

namespace A057050.P5191489439048359159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1) ^ 2)

end

end A057050.P5191489439048359159

namespace A057050

/-- `A004736((n+1)²)` -/
def P5191489439048359159.Spec : Prop :=
  ∀ n, P5191489439048359159.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P14146607589790527494

`sqrt(A055461((n+1)²))`
-/

namespace A057050.P14146607589790527494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 ((n + 1) ^ 2) : ℝ)

end

end A057050.P14146607589790527494

namespace A057050

/-- `sqrt(A055461((n+1)²))` -/
def P14146607589790527494.Spec : Prop :=
  ∀ n, P14146607589790527494.a n = (A057050 (n + 1) : ℝ)

end A057050

/-! ## A057050.P456267931144131778

`log2(A090988((n+1)²))`
-/

namespace A057050.P456267931144131778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 ((n + 1) ^ 2) : ℝ)

end

end A057050.P456267931144131778

namespace A057050

/-- `log2(A090988((n+1)²))` -/
def P456267931144131778.Spec : Prop :=
  ∀ n, P456267931144131778.a n = (A057050 (n + 1) : ℝ)

end A057050

/-! ## A057050.P15584585347357698467

`A025581(n*(n+2))+1`
-/

namespace A057050.P15584585347357698467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n * (n + 2)) + 1

end

end A057050.P15584585347357698467

namespace A057050

/-- `A025581(n*(n+2))+1` -/
def P15584585347357698467.Spec : Prop :=
  ∀ n, P15584585347357698467.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P8420074348806194442

`or(char[1], A004736(∑[2*n+1]))`
-/

namespace A057050.P8420074348806194442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004736 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A057050.P8420074348806194442

namespace A057050

/-- `or(char[1], A004736(∑[2*n+1]))` -/
def P8420074348806194442.Spec : Prop :=
  ∀ n, P8420074348806194442.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P8936896227138280488

`A004736(n*(n+2)+1)+and(n, -(n+1))`
-/

namespace A057050.P8936896227138280488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n * (n + 2) + 1) + Int.land (n : ℤ) (-(n + 1 : ℤ))

end

end A057050.P8936896227138280488

namespace A057050

/-- `A004736(n*(n+2)+1)+and(n, -(n+1))` -/
def P8936896227138280488.Spec : Prop :=
  ∀ n, P8936896227138280488.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P15049492849297255926

`A000720(A104887((n+1)²))`
-/

namespace A057050.P15049492849297255926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104887 ((n + 1) ^ 2)).toNat

end

end A057050.P15049492849297255926

namespace A057050

/-- `A000720(A104887((n+1)²))` -/
def P15049492849297255926.Spec : Prop :=
  ∀ n, P15049492849297255926.a n = A057050 (n + 1)

end A057050

/-! ## A057050.P4894059256069233277

`A057059(A064578((n+1)²))`
-/

namespace A057050.P4894059256069233277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A064578 ((n + 1) ^ 2)).toNat

end

end A057050.P4894059256069233277

namespace A057050

/-- `A057059(A064578((n+1)²))` -/
def P4894059256069233277.Spec : Prop :=
  ∀ n, P4894059256069233277.a n = A057050 (n + 1)

end A057050

/-!
# A057051: Number of polyominoes of 2n-1 cells that span an n X n square.

The programs for A057051, there is no canonical definition to state claims against.
-/

/-! ## A057051.P3046099677363463916

`A379623((n+1)²)`
-/

namespace A057051.P3046099677363463916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 ((n + 1) ^ 2)

end

end A057051.P3046099677363463916

/-! ## A057051.P13697664896512466215

`A379623(A002620(2*(n+1)))+A218470(n)`
-/

namespace A057051.P13697664896512466215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379623 (A002620 (2 * (n + 1))).toNat + A218470 n

end

end A057051.P13697664896512466215

/-! ## A057051.P16912098398493206819

`A379623(A002620(2*(n+1)))%A083876(n+1)`
-/

namespace A057051.P16912098398493206819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379623 (A002620 (2 * (n + 1))).toNat) (A083876 (n + 1))

end

end A057051.P16912098398493206819

/-! ## A057051.P10416477176377726256

`A379623(A000463(2*(n+1)))%A001246(n+2)`
-/

namespace A057051.P10416477176377726256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379623 (A000463 (2 * (n + 1))).toNat) (A001246 (n + 2))

end

end A057051.P10416477176377726256

/-!
# A057052: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057052(n) = i(n^3).

The programs for A057052, there is no canonical definition to state claims against.
-/

/-! ## A057052.P14062307725735580023

`A057054(n+1)+1-A057053(n+1)`
-/

namespace A057052.P14062307725735580023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057054 (n + 1) + (1 - A057053 (n + 1))

end

end A057052.P14062307725735580023

/-! ## A057052.P16907633760736620354

`A057054(n+1)+A024000(A057053(n+1))`
-/

namespace A057052.P16907633760736620354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057054 (n + 1) + A024000 (A057053 (n + 1)).toNat

end

end A057052.P16907633760736620354

/-! ## A057052.P15335286146285740263

`A024000(A057053(n+1))+ceil(A000093(2*(n+1))/2)`
-/

namespace A057052.P15335286146285740263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A057053 (n + 1)).toNat + ⌈(A000093 (2 * (n + 1)) : ℚ) / 2⌉

end

end A057052.P15335286146285740263

/-! ## A057052.P12380174794022813237

`A184628(n+1)-A179865(A057054(n+1))`
-/

namespace A057052.P12380174794022813237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1) - A179865 (A057054 (n + 1)).toNat

end

end A057052.P12380174794022813237

/-! ## A057052.P9426629041108928918

`A065033(A000093(2*(n+1)))+A024000(A057053(n+1))`
-/

namespace A057052.P9426629041108928918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000093 (2 * (n + 1))).toNat + A024000 (A057053 (n + 1)).toNat

end

end A057052.P9426629041108928918

/-!
# A057053: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057053(n)=j(n^3).

The programs for A057053, there is no canonical definition to state claims against.
-/

/-! ## A057053.P2752595387232023257

`A057054(n+1)+1-A057052(n+1)`
-/

namespace A057053.P2752595387232023257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057054 (n + 1) + (1 - A057052 (n + 1))

end

end A057053.P2752595387232023257

/-! ## A057053.P118397809175143575

`A000217(A057054(n+1))%Δ[A145069(n)]`
-/

namespace A057053.P118397809175143575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A057054 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A057053.P118397809175143575

/-! ## A057053.P11903869640428779776

`A000217(A057054(n+1))-A068601(n+1)`
-/

namespace A057053.P11903869640428779776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A057054 (n + 1)).toNat - A068601 (n + 1)

end

end A057053.P11903869640428779776

/-! ## A057053.P2962293863378943448

`A057054(n+1)+A024000(A057052(n+1))`
-/

namespace A057053.P2962293863378943448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057054 (n + 1) + A024000 (A057052 (n + 1)).toNat

end

end A057053.P2962293863378943448

/-! ## A057053.P16313884680375007457

`A024000(A057052(n+1))+ceil(A000093(2*(n+1))/2)`
-/

namespace A057053.P16313884680375007457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A057052 (n + 1)).toNat + ⌈(A000093 (2 * (n + 1)) : ℚ) / 2⌉

end

end A057053.P16313884680375007457

/-! ## A057053.P14760948962676510635

`A065033(A000093(2*(n+1)))+A024000(A057052(n+1))`
-/

namespace A057053.P14760948962676510635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000093 (2 * (n + 1))).toNat + A024000 (A057052 (n + 1)).toNat

end

end A057053.P14760948962676510635

/-! ## A057053.P4473367147845503054

`A024000(A057052(n+1))+A004526(A185549(2*(n+1)))`
-/

namespace A057053.P4473367147845503054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A057052 (n + 1)).toNat + A004526 (A185549 (2 * (n + 1))).toNat

end

end A057053.P4473367147845503054

/-!
# A057054: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; n^3 is in antidiagonal a(n).

The programs for A057054, the canonical program `A057054.P1694414508376365718` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057054 has offset 1).

The definition of A057054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057054.P1694414508376365718

`round((n+1)*sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057054

/-- `round((n+1)*sqrt(2*(n+1)))` -/
def P1694414508376365718.Spec : Prop :=
  ∀ n, P1694414508376365718.a n = A057054 (n + 1)

theorem P1694414508376365718.correct : P1694414508376365718.Spec := by
  intro n
  simp only [A057054, Nat.add_sub_cancel]

end A057054

/-! ## A057054.P16029490574127126962

`A057052(n+1)+A057053(n+1)-1`
-/

namespace A057054.P16029490574127126962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057052 (n + 1) + (A057053 (n + 1) - 1)

end

end A057054.P16029490574127126962

namespace A057054

/-- `A057052(n+1)+A057053(n+1)-1` -/
def P16029490574127126962.Spec : Prop :=
  ∀ n, P16029490574127126962.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P3907009344418415060

`floor(A185549(Δ[A002378(n)])/2)`
-/

namespace A057054.P3907009344418415060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185549 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A057054.P3907009344418415060

namespace A057054

/-- `floor(A185549(Δ[A002378(n)])/2)` -/
def P3907009344418415060.Spec : Prop :=
  ∀ n, P3907009344418415060.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P15950118771029618804

`floor(A185549(Δ[A027693(n)])/2)`
-/

namespace A057054.P15950118771029618804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185549 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A057054.P15950118771029618804

namespace A057054

/-- `floor(A185549(Δ[A027693(n)])/2)` -/
def P15950118771029618804.Spec : Prop :=
  ∀ n, P15950118771029618804.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P15184164959679423550

`A186146(2*(n+1))-A186150(2*(n+1))`
-/

namespace A057054.P15184164959679423550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186146 (2 * (n + 1)) - A186150 (2 * (n + 1))

end

end A057054.P15184164959679423550

namespace A057054

/-- `A186146(2*(n+1))-A186150(2*(n+1))` -/
def P15184164959679423550.Spec : Prop :=
  ∀ n, P15184164959679423550.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P14797931366112865831

`A186147(2*(n+1))-A186148(2*(n+1))`
-/

namespace A057054.P14797931366112865831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186147 (2 * (n + 1)) - A186148 (2 * (n + 1))

end

end A057054.P14797931366112865831

namespace A057054

/-- `A186147(2*(n+1))-A186148(2*(n+1))` -/
def P14797931366112865831.Spec : Prop :=
  ∀ n, P14797931366112865831.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P11114593767559120853

`ceil(A000093(2*(n+1))/2)`
-/

namespace A057054.P11114593767559120853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000093 (2 * (n + 1)) : ℚ) / 2⌉

end

end A057054.P11114593767559120853

namespace A057054

/-- `ceil(A000093(2*(n+1))/2)` -/
def P11114593767559120853.Spec : Prop :=
  ∀ n, P11114593767559120853.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P2310051417853963878

`A057052(n+1)-A024000(A057053(n+1))`
-/

namespace A057054.P2310051417853963878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057052 (n + 1) - A024000 (A057053 (n + 1)).toNat

end

end A057054.P2310051417853963878

namespace A057054

/-- `A057052(n+1)-A024000(A057053(n+1))` -/
def P2310051417853963878.Spec : Prop :=
  ∀ n, P2310051417853963878.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P17773947049993542867

`A065033(A000093(2*(n+1)))`
-/

namespace A057054.P17773947049993542867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000093 (2 * (n + 1))).toNat

end

end A057054.P17773947049993542867

namespace A057054

/-- `A065033(A000093(2*(n+1)))` -/
def P17773947049993542867.Spec : Prop :=
  ∀ n, P17773947049993542867.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P9362486910179374952

`A004526(A185549(2*(n+1)))`
-/

namespace A057054.P9362486910179374952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A185549 (2 * (n + 1))).toNat

end

end A057054.P9362486910179374952

namespace A057054

/-- `A004526(A185549(2*(n+1)))` -/
def P9362486910179374952.Spec : Prop :=
  ∀ n, P9362486910179374952.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P16303160778401205379

`A110654(sqrt(A065733(2*(n+1))))`
-/

namespace A057054.P16303160778401205379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway (Real.sqrt (A065733 (2 * (n + 1)) : ℝ))).toNat

end

end A057054.P16303160778401205379

namespace A057054

/-- `A110654(sqrt(A065733(2*(n+1))))` -/
def P16303160778401205379.Spec : Prop :=
  ∀ n, P16303160778401205379.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P13961794787815405979

`A110654(∩[A000093(2*n), A000093(n+1)])`
-/

namespace A057054.P13961794787815405979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A057054.P13961794787815405979

namespace A057054

/-- `A110654(∩[A000093(2*n), A000093(n+1)])` -/
def P13961794787815405979.Spec : Prop :=
  ∀ n, P13961794787815405979.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P6263838787344433478

`A110654(∑[A035936(2*n+1)+A035936(2*n)])`
-/

namespace A057054.P6263838787344433478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (2 * n + 1) + A035936 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A057054.P6263838787344433478

namespace A057054

/-- `A110654(∑[A035936(2*n+1)+A035936(2*n)])` -/
def P6263838787344433478.Spec : Prop :=
  ∀ n, P6263838787344433478.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P17995375615066385332

`A110654(A186147(2*(n+1)))-(n+1)`
-/

namespace A057054.P17995375615066385332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A186147 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A057054.P17995375615066385332

namespace A057054

/-- `A110654(A186147(2*(n+1)))-(n+1)` -/
def P17995375615066385332.Spec : Prop :=
  ∀ n, P17995375615066385332.a n = A057054 (n + 1)

end A057054

/-! ## A057054.P17459965592475908797

`A002265(A135061(2*(n+1))+2)`
-/

namespace A057054.P17459965592475908797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A135061 (2 * (n + 1)) + 2).toNat

end

end A057054.P17459965592475908797

namespace A057054

/-- `A002265(A135061(2*(n+1))+2)` -/
def P17459965592475908797.Spec : Prop :=
  ∀ n, P17459965592475908797.a n = A057054 (n + 1)

end A057054

/-!
# A057055: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057055(n)=i(C(n,3)).

The programs for A057055, the canonical program `A057055.P15692761595435333627` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057055 has offset 3).

The definition of A057055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057055.P14321909854957966586

`A057057(n+3)+1-A057056(n+3)`
-/

namespace A057055.P14321909854957966586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057057 (n + 3) + (1 - A057056 (n + 3))

end

end A057055.P14321909854957966586

namespace A057055

/-- `A057057(n+3)+1-A057056(n+3)` -/
def P14321909854957966586.Spec : Prop :=
  ∀ n, P14321909854957966586.a n = A057055 (n + 3)

theorem P14321909854957966586.correct : P14321909854957966586.Spec := by
  intro n
  simp only [A057055, Nat.add_sub_cancel, A057055.P14321909854957966586.a, A057055.P15692761595435333627.a, A000292, A000292.P18322089543142633594.a, A057056, A057056.P3364605959562525484.a, A057057, A057057.P12808138124166047998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057055

/-! ## A057055.P15692761595435333627

`A000292(n+1)-C(A057057(n+3), 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057055

/-- `A000292(n+1)-C(A057057(n+3), 2)` -/
def P15692761595435333627.Spec : Prop :=
  ∀ n, P15692761595435333627.a n = A057055 (n + 3)

theorem P15692761595435333627.correct : P15692761595435333627.Spec := by
  intro n
  simp only [A057055, Nat.add_sub_cancel]

end A057055

/-! ## A057055.P15120084538850190043

`A057057(n+3)+A024000(A057056(n+3))`
-/

namespace A057055.P15120084538850190043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057057 (n + 3) + A024000 (A057056 (n + 3)).toNat

end

end A057055.P15120084538850190043

namespace A057055

/-- `A057057(n+3)+A024000(A057056(n+3))` -/
def P15120084538850190043.Spec : Prop :=
  ∀ n, P15120084538850190043.a n = A057055 (n + 3)

end A057055

/-! ## A057055.P17134446048548196387

`A002260(C(n+3, 3))`
-/

namespace A057055.P17134446048548196387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (n + 3) 3)

end

end A057055.P17134446048548196387

namespace A057055

/-- `A002260(C(n+3, 3))` -/
def P17134446048548196387.Spec : Prop :=
  ∀ n, P17134446048548196387.a n = A057055 (n + 3)

end A057055

/-! ## A057055.P6901885692786078935

`A002260(∑[∑[n+1]])`
-/

namespace A057055.P6901885692786078935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057055.P6901885692786078935

namespace A057055

/-- `A002260(∑[∑[n+1]])` -/
def P6901885692786078935.Spec : Prop :=
  ∀ n, P6901885692786078935.a n = A057055 (n + 3)

end A057055

/-!
# A057056: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and a(n) = j(C(n,3)).

The programs for A057056, the canonical program `A057056.P3364605959562525484` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057056 has offset 3).

The definition of A057056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057056.P3364605959562525484

`A057057(n+3)+1-A057055(n+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057056

/-- `A057057(n+3)+1-A057055(n+3)` -/
def P3364605959562525484.Spec : Prop :=
  ∀ n, P3364605959562525484.a n = A057056 (n + 3)

theorem P3364605959562525484.correct : P3364605959562525484.Spec := by
  intro n
  simp only [A057056, Nat.add_sub_cancel]

end A057056

/-! ## A057056.P4489079218700134328

`A057057(n+3)+A024000(A057055(n+3))`
-/

namespace A057056.P4489079218700134328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057057 (n + 3) + A024000 (A057055 (n + 3)).toNat

end

end A057056.P4489079218700134328

namespace A057056

/-- `A057057(n+3)+A024000(A057055(n+3))` -/
def P4489079218700134328.Spec : Prop :=
  ∀ n, P4489079218700134328.a n = A057056 (n + 3)

end A057056

/-! ## A057056.P15697284766584380213

`A065227(A057057(n+3))`
-/

namespace A057056.P15697284766584380213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065227 (A057057 (n + 3)).toNat

end

end A057056.P15697284766584380213

namespace A057056

/-- `A065227(A057057(n+3))` -/
def P15697284766584380213.Spec : Prop :=
  ∀ n, P15697284766584380213.a n = A057056 (n + 3)

end A057056

/-! ## A057056.P14226865181450378576

`A000124(A057057(n+3))-sqrt(A001249(n))`
-/

namespace A057056.P14226865181450378576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000124 (A057057 (n + 3)).toNat : ℝ) - Real.sqrt (A001249 n : ℝ)

end

end A057056.P14226865181450378576

namespace A057056

/-- `A000124(A057057(n+3))-sqrt(A001249(n))` -/
def P14226865181450378576.Spec : Prop :=
  ∀ n, P14226865181450378576.a n = (A057056 (n + 3) : ℝ)

end A057056

/-! ## A057056.P14226428791499755086

`A000124(A057057(n+3))-Δ[A145126(n)]`
-/

namespace A057056.P14226428791499755086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057057 (n + 3)).toNat - (f1 (n + 1) - f1 n)

end

end A057056.P14226428791499755086

namespace A057056

/-- `A000124(A057057(n+3))-Δ[A145126(n)]` -/
def P14226428791499755086.Spec : Prop :=
  ∀ n, P14226428791499755086.a n = A057056 (n + 3)

end A057056

/-! ## A057056.P12030776767321425992

`A000124(A057057(n+3))-A000292(n+1)`
-/

namespace A057056.P12030776767321425992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057057 (n + 3)).toNat - A000292 (n + 1)

end

end A057056.P12030776767321425992

namespace A057056

/-- `A000124(A057057(n+3))-A000292(n+1)` -/
def P12030776767321425992.Spec : Prop :=
  ∀ n, P12030776767321425992.a n = A057056 (n + 3)

end A057056

/-! ## A057056.P899817701807462451

`A000124(A057057(n+3))-A178820(A000096(n))`
-/

namespace A057056.P899817701807462451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A057057 (n + 3)).toNat - A178820 (A000096 n).toNat

end

end A057056.P899817701807462451

namespace A057056

/-- `A000124(A057057(n+3))-A178820(A000096(n))` -/
def P899817701807462451.Spec : Prop :=
  ∀ n, P899817701807462451.a n = A057056 (n + 3)

end A057056

/-! ## A057056.P17760391120823910301

`A330439(A330587(∑[∑[n+1]]))`
-/

namespace A057056.P17760391120823910301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330439 (A330587 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A057056.P17760391120823910301

namespace A057056

/-- `A330439(A330587(∑[∑[n+1]]))` -/
def P17760391120823910301.Spec : Prop :=
  ∀ n, P17760391120823910301.a n = A057056 (n + 3)

end A057056

/-!
# A057057: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; C(n,3) is in antidiagonal a(n).

The programs for A057057, the canonical program `A057057.P12808138124166047998` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057057 has offset 3).

The definition of A057057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057057.P12808138124166047998

`round(sqrt(2*C(n+3, 3)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057057

/-- `round(sqrt(2*C(n+3, 3)))` -/
def P12808138124166047998.Spec : Prop :=
  ∀ n, P12808138124166047998.a n = A057057 (n + 3)

theorem P12808138124166047998.correct : P12808138124166047998.Spec := by
  intro n
  simp only [A057057, Nat.add_sub_cancel]

end A057057

/-! ## A057057.P539009067394852756

`round(sqrt(∑[∑[2*(n+1)]]))`
-/

namespace A057057.P539009067394852756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A057057.P539009067394852756

namespace A057057

/-- `round(sqrt(∑[∑[2*(n+1)]]))` -/
def P539009067394852756.Spec : Prop :=
  ∀ n, P539009067394852756.a n = A057057 (n + 3)

end A057057

/-! ## A057057.P12339094872845361904

`ceil(floor(sqrt(A130809(n+3)))/2)`
-/

namespace A057057.P12339094872845361904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.sqrt (A130809 (n + 3)) : ℚ) / 2⌉

end

end A057057.P12339094872845361904

namespace A057057

/-- `ceil(floor(sqrt(A130809(n+3)))/2)` -/
def P12339094872845361904.Spec : Prop :=
  ∀ n, P12339094872845361904.a n = A057057 (n + 3)

end A057057

/-! ## A057057.P17600974952915429754

`A057055(n+3)+A057056(n+3)-1`
-/

namespace A057057.P17600974952915429754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057055 (n + 3) + (A057056 (n + 3) - 1)

end

end A057057.P17600974952915429754

namespace A057057

/-- `A057055(n+3)+A057056(n+3)-1` -/
def P17600974952915429754.Spec : Prop :=
  ∀ n, P17600974952915429754.a n = A057057 (n + 3)

theorem P17600974952915429754.correct : P17600974952915429754.Spec := by
  intro n
  simp only [A057057, Nat.add_sub_cancel, A057057.P17600974952915429754.a, A057057.P12808138124166047998.a, A057055, A057055.P15692761595435333627.a, A057056, A057056.P3364605959562525484.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057057

/-! ## A057057.P433234697527680189

`A065033(floor(sqrt(A130809(n+3))))`
-/

namespace A057057.P433234697527680189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.sqrt (A130809 (n + 3))).toNat

end

end A057057.P433234697527680189

namespace A057057

/-- `A065033(floor(sqrt(A130809(n+3))))` -/
def P433234697527680189.Spec : Prop :=
  ∀ n, P433234697527680189.a n = A057057 (n + 3)

end A057057

/-! ## A057057.P18041471149774382703

`A123108(ceil(sqrt(A130809(n+3))))`
-/

namespace A057057.P18041471149774382703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ⌈Real.sqrt (A130809 (n + 3) : ℝ)⌉.toNat

end

end A057057.P18041471149774382703

namespace A057057

/-- `A123108(ceil(sqrt(A130809(n+3))))` -/
def P18041471149774382703.Spec : Prop :=
  ∀ n, P18041471149774382703.a n = A057057 (n + 3)

end A057057

/-!
# A057058: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and a(n)=i(A057027(n)).

The programs for A057058, the canonical program `A057058.P18011686596614890694` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057058 has offset 1).

The definition of A057058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057058.P18011686596614890694

`A002260(A057027(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A057058

/-- `A002260(A057027(n+1))` -/
def P18011686596614890694.Spec : Prop :=
  ∀ n, P18011686596614890694.a n = A057058 (n + 1)

theorem P18011686596614890694.correct : P18011686596614890694.Spec := by
  intro n
  simp only [A057058, Nat.add_sub_cancel]

end A057058

/-! ## A057058.P6975048574765007110

`A057027(n+1)-A057944(n)`
-/

namespace A057058.P6975048574765007110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1) - A057944 n

end

end A057058.P6975048574765007110

namespace A057058

/-- `A057027(n+1)-A057944(n)` -/
def P6975048574765007110.Spec : Prop :=
  ∀ n, P6975048574765007110.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P7953870693370935657

`A080251(n)/A057059(n+1)`
-/

namespace A057058.P7953870693370935657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080251 n : ℚ) / (A057059 (n + 1) : ℚ)

end

end A057058.P7953870693370935657

namespace A057058

/-- `A080251(n)/A057059(n+1)` -/
def P7953870693370935657.Spec : Prop :=
  ∀ n, P7953870693370935657.a n = (A057058 (n + 1) : ℚ)

end A057058

/-! ## A057058.P5620666439490556449

`A003057(n+2)-A057059(n+1)`
-/

namespace A057058.P5620666439490556449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A057059 (n + 1)

end

end A057058.P5620666439490556449

namespace A057058

/-- `A003057(n+2)-A057059(n+1)` -/
def P5620666439490556449.Spec : Prop :=
  ∀ n, P5620666439490556449.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P1253144564813676998

`A003056(n)+2-A057059(n+1)`
-/

namespace A057058.P1253144564813676998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (2 - A057059 (n + 1))

end

end A057058.P1253144564813676998

namespace A057058

/-- `A003056(n)+2-A057059(n+1)` -/
def P1253144564813676998.Spec : Prop :=
  ∀ n, P1253144564813676998.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P15239018295163301246

`A002024(n+1)+1-A057059(n+1)`
-/

namespace A057058.P15239018295163301246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (1 - A057059 (n + 1))

end

end A057058.P15239018295163301246

namespace A057058

/-- `A002024(n+1)+1-A057059(n+1)` -/
def P15239018295163301246.Spec : Prop :=
  ∀ n, P15239018295163301246.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P5328678479659914733

`A080251(n)/gcd(A080251(n), A141419(n+1))`
-/

namespace A057058.P5328678479659914733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080251 n : ℚ) / (Int.gcd (A080251 n) (A141419 (n + 1)) : ℚ)

end

end A057058.P5328678479659914733

namespace A057058

/-- `A080251(n)/gcd(A080251(n), A141419(n+1))` -/
def P5328678479659914733.Spec : Prop :=
  ∀ n, P5328678479659914733.a n = (A057058 (n + 1) : ℚ)

end A057058

/-! ## A057058.P8360259398187598797

`A002260(n+1)+A004736(n+1)-A057059(n+1)`
-/

namespace A057058.P8360259398187598797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A057059 (n + 1))

end

end A057058.P8360259398187598797

namespace A057058

/-- `A002260(n+1)+A004736(n+1)-A057059(n+1)` -/
def P8360259398187598797.Spec : Prop :=
  ∀ n, P8360259398187598797.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P6323090467844713212

`A057027(n+1)+A194959(n+1)-A064578(n+1)`
-/

namespace A057058.P6323090467844713212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1) + (A194959 (n + 1) - A064578 (n + 1))

end

end A057058.P6323090467844713212

namespace A057058

/-- `A057027(n+1)+A194959(n+1)-A064578(n+1)` -/
def P6323090467844713212.Spec : Prop :=
  ∀ n, P6323090467844713212.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P3744736987633145256

`A194959(A057027(A057027(A057027(A064578(n+1)))))`
-/

namespace A057058.P3744736987633145256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A057027 (A057027 (A057027 (A064578 (n + 1)).toNat).toNat).toNat).toNat

end

end A057058.P3744736987633145256

namespace A057058

/-- `A194959(A057027(A057027(A057027(A064578(n+1)))))` -/
def P3744736987633145256.Spec : Prop :=
  ∀ n, P3744736987633145256.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P6281096998753823438

`A004736(A059399(n+1))`
-/

namespace A057058.P6281096998753823438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A059399 (n + 1)).toNat

end

end A057058.P6281096998753823438

namespace A057058

/-- `A004736(A059399(n+1))` -/
def P6281096998753823438.Spec : Prop :=
  ∀ n, P6281096998753823438.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P14275531964554132119

`A209278(A038722(n+1))`
-/

namespace A057058.P14275531964554132119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A038722 (n + 1)).toNat

end

end A057058.P14275531964554132119

namespace A057058

/-- `A209278(A038722(n+1))` -/
def P14275531964554132119.Spec : Prop :=
  ∀ n, P14275531964554132119.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P5164708114457273655

`A209278(A061579(n)+1)`
-/

namespace A057058.P5164708114457273655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A061579 n + 1).toNat

end

end A057058.P5164708114457273655

namespace A057058

/-- `A209278(A061579(n)+1)` -/
def P5164708114457273655.Spec : Prop :=
  ∀ n, P5164708114457273655.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P2015155882472020988

`A239304(A185180(n+1))`
-/

namespace A057058.P2015155882472020988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239304 (A185180 (n + 1)).toNat

end

end A057058.P2015155882472020988

namespace A057058

/-- `A239304(A185180(n+1))` -/
def P2015155882472020988.Spec : Prop :=
  ∀ n, P2015155882472020988.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P17889903388020125896

`A209278(∑[A010054(n)]²-n)`
-/

namespace A057058.P17889903388020125896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A057058.P17889903388020125896

namespace A057058

/-- `A209278(∑[A010054(n)]²-n)` -/
def P17889903388020125896.Spec : Prop :=
  ∀ n, P17889903388020125896.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P397914751265463991

`A209278(A002024(n+1)²-n)`
-/

namespace A057058.P397914751265463991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A057058.P397914751265463991

namespace A057058

/-- `A209278(A002024(n+1)²-n)` -/
def P397914751265463991.Spec : Prop :=
  ∀ n, P397914751265463991.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P14232392033845977395

`A209278(A056023(A056011(n+1)))`
-/

namespace A057058.P14232392033845977395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A057058.P14232392033845977395

namespace A057058

/-- `A209278(A056023(A056011(n+1)))` -/
def P14232392033845977395.Spec : Prop :=
  ∀ n, P14232392033845977395.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P5225840781163654954

`A209278(A209293(A064789(n+1)))`
-/

namespace A057058.P5225840781163654954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A209293 (A064789 (n + 1)).toNat).toNat

end

end A057058.P5225840781163654954

namespace A057058

/-- `A209278(A209293(A064789(n+1)))` -/
def P5225840781163654954.Spec : Prop :=
  ∀ n, P5225840781163654954.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P13334960810988268644

`A057027(n+1)+A208233(n+1)-A188568(n+1)`
-/

namespace A057058.P13334960810988268644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1) + (A208233 (n + 1) - A188568 (n + 1))

end

end A057058.P13334960810988268644

namespace A057058

/-- `A057027(n+1)+A208233(n+1)-A188568(n+1)` -/
def P13334960810988268644.Spec : Prop :=
  ∀ n, P13334960810988268644.a n = A057058 (n + 1)

end A057058

/-! ## A057058.P3881277174331724867

`A208233(A188568(A057027(A056023(A056023(n+1)))))`
-/

namespace A057058.P3881277174331724867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A188568 (A057027 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A057058.P3881277174331724867

namespace A057058

/-- `A208233(A188568(A057027(A056023(A056023(n+1)))))` -/
def P3881277174331724867.Spec : Prop :=
  ∀ n, P3881277174331724867.a n = A057058 (n + 1)

end A057058

/-!
# A057059: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ... Define i(m) and j(m) by R(i(m),j(m)) = m. Then a(n) = j(A057027(n)).

The programs for A057059, the canonical program `A057059.P4184647556311659396` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057059 has offset 1).

The definition of A057059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057059.P6595403094587774180

`comp[∑[n]]-(A057058(n+1)+n)`
-/

namespace A057059.P6595403094587774180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (A057058 (n + 1) + (n : ℤ))

end

end A057059.P6595403094587774180

namespace A057059

/-- `comp[∑[n]]-(A057058(n+1)+n)` -/
def P6595403094587774180.Spec : Prop :=
  ∀ n, P6595403094587774180.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P11638521153888356629

`A002260(A059399(n+1))`
-/

namespace A057059.P11638521153888356629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A059399 (n + 1)).toNat

end

end A057059.P11638521153888356629

namespace A057059

/-- `A002260(A059399(n+1))` -/
def P11638521153888356629.Spec : Prop :=
  ∀ n, P11638521153888356629.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P9381779687854230529

`A059399(n+1)-A057944(n)`
-/

namespace A057059.P9381779687854230529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) - A057944 n

end

end A057059.P9381779687854230529

namespace A057059

/-- `A059399(n+1)-A057944(n)` -/
def P9381779687854230529.Spec : Prop :=
  ∀ n, P9381779687854230529.a n = A057059 (n + 1)

theorem P9381779687854230529.correct : P9381779687854230529.Spec := by
  intro n
  simp only [A057059, Nat.add_sub_cancel, A057059.P9381779687854230529.a, A057059.P4184647556311659396.a, A057944, A057944.P16851463738746886639.a, A059399, A059399.P9766970929742721937.a, A080251, A080251.P16627620130656438930.a, A141419, A141419.P17579868509754619633.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A003991, A003991.P6365127437582401781.a, A004201, A004201.P3444704990256805059.a, A002024, A002024.P11700297927830783882.a, A004202, A004202.P6327880886669607984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057059

/-! ## A057059.P18294614919158297104

`A080251(n)/A057058(n+1)`
-/

namespace A057059.P18294614919158297104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080251 n : ℚ) / (A057058 (n + 1) : ℚ)

end

end A057059.P18294614919158297104

namespace A057059

/-- `A080251(n)/A057058(n+1)` -/
def P18294614919158297104.Spec : Prop :=
  ∀ n, P18294614919158297104.a n = (A057059 (n + 1) : ℚ)

end A057059

/-! ## A057059.P4184647556311659396

`gcd(A080251(n), A141419(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A057059

/-- `gcd(A080251(n), A141419(n+1))` -/
def P4184647556311659396.Spec : Prop :=
  ∀ n, (P4184647556311659396.a n : ℤ) = A057059 (n + 1)

theorem P4184647556311659396.correct : P4184647556311659396.Spec := by
  intro n
  simp only [A057059, Nat.add_sub_cancel]

end A057059

/-! ## A057059.P12075468900706445711

`A003057(n+2)-A057058(n+1)`
-/

namespace A057059.P12075468900706445711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A057058 (n + 1)

end

end A057059.P12075468900706445711

namespace A057059

/-- `A003057(n+2)-A057058(n+1)` -/
def P12075468900706445711.Spec : Prop :=
  ∀ n, P12075468900706445711.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P6340929182906715953

`A059399(n+1)+A002262(n)-n`
-/

namespace A057059.P6340929182906715953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) + (A002262 n - (n : ℤ))

end

end A057059.P6340929182906715953

namespace A057059

/-- `A059399(n+1)+A002262(n)-n` -/
def P6340929182906715953.Spec : Prop :=
  ∀ n, P6340929182906715953.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P4854327836946681880

`A002260(n+1)+A004736(n+1)-A057058(n+1)`
-/

namespace A057059.P4854327836946681880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A004736 (n + 1) - A057058 (n + 1))

end

end A057059.P4854327836946681880

namespace A057059

/-- `A002260(n+1)+A004736(n+1)-A057058(n+1)` -/
def P4854327836946681880.Spec : Prop :=
  ∀ n, P4854327836946681880.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P16464233937970732442

`A064789(n+1)+A194959(n+1)-A057027(n+1)`
-/

namespace A057059.P16464233937970732442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (n + 1) + (A194959 (n + 1) - A057027 (n + 1))

end

end A057059.P16464233937970732442

namespace A057059

/-- `A064789(n+1)+A194959(n+1)-A057027(n+1)` -/
def P16464233937970732442.Spec : Prop :=
  ∀ n, P16464233937970732442.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P3641559164422278663

`A004736(A057027(n+1))`
-/

namespace A057059.P3641559164422278663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A057027 (n + 1)).toNat

end

end A057059.P3641559164422278663

namespace A057059

/-- `A004736(A057027(n+1))` -/
def P3641559164422278663.Spec : Prop :=
  ∀ n, P3641559164422278663.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P13752560106203556118

`A209279(A038722(n+1))`
-/

namespace A057059.P13752560106203556118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A038722 (n + 1)).toNat

end

end A057059.P13752560106203556118

namespace A057059

/-- `A209279(A038722(n+1))` -/
def P13752560106203556118.Spec : Prop :=
  ∀ n, P13752560106203556118.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P4980411530627611159

`A209279(A061579(n)+1)`
-/

namespace A057059.P4980411530627611159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A061579 n + 1).toNat

end

end A057059.P4980411530627611159

namespace A057059

/-- `A209279(A061579(n)+1)` -/
def P4980411530627611159.Spec : Prop :=
  ∀ n, P4980411530627611159.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P1374921944913666598

`A209279(A002024(n+1)²-n)`
-/

namespace A057059.P1374921944913666598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A057059.P1374921944913666598

namespace A057059

/-- `A209279(A002024(n+1)²-n)` -/
def P1374921944913666598.Spec : Prop :=
  ∀ n, P1374921944913666598.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P12760484545324361930

`A209279(A056023(A056011(n+1)))`
-/

namespace A057059.P12760484545324361930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A056023 (A056011 (n + 1)).toNat).toNat

end

end A057059.P12760484545324361930

namespace A057059

/-- `A209279(A056023(A056011(n+1)))` -/
def P12760484545324361930.Spec : Prop :=
  ∀ n, P12760484545324361930.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P921243567018227833

`A209279(A064578(A057028(n+1)))`
-/

namespace A057059.P921243567018227833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A064578 (A057028 (n + 1)).toNat).toNat

end

end A057059.P921243567018227833

namespace A057059

/-- `A209279(A064578(A057028(n+1)))` -/
def P921243567018227833.Spec : Prop :=
  ∀ n, P921243567018227833.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P13830636077927288076

`A209279(A057028(A185180(n+1)))`
-/

namespace A057059.P13830636077927288076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A057028 (A185180 (n + 1)).toNat).toNat

end

end A057059.P13830636077927288076

namespace A057059

/-- `A209279(A057028(A185180(n+1)))` -/
def P13830636077927288076.Spec : Prop :=
  ∀ n, P13830636077927288076.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P17326213121222557399

`A188568(n+1)+A208234(n+1)-A057027(n+1)`
-/

namespace A057059.P17326213121222557399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 1) + (A208234 (n + 1) - A057027 (n + 1))

end

end A057059.P17326213121222557399

namespace A057059

/-- `A188568(n+1)+A208234(n+1)-A057027(n+1)` -/
def P17326213121222557399.Spec : Prop :=
  ∀ n, P17326213121222557399.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P9134420144843912264

`A194959(A057028(A057027(A057028(A064789(n+1)))))`
-/

namespace A057059.P9134420144843912264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A057028 (A057027 (A057028 (A064789 (n + 1)).toNat).toNat).toNat).toNat

end

end A057059.P9134420144843912264

namespace A057059

/-- `A194959(A057028(A057027(A057028(A064789(n+1)))))` -/
def P9134420144843912264.Spec : Prop :=
  ∀ n, P9134420144843912264.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P13753365693686487876

`A208234(A188568(A057027(A056023(A056023(n+1)))))`
-/

namespace A057059.P13753365693686487876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A188568 (A057027 (A056023 (A056023 (n + 1)).toNat).toNat).toNat).toNat

end

end A057059.P13753365693686487876

namespace A057059

/-- `A208234(A188568(A057027(A056023(A056023(n+1)))))` -/
def P13753365693686487876.Spec : Prop :=
  ∀ n, P13753365693686487876.a n = A057059 (n + 1)

end A057059

/-! ## A057059.P15456291002818866359

`A209278(A185180(A057027(A057027(A064578(n+1)))))`
-/

namespace A057059.P15456291002818866359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209278 (A185180 (A057027 (A057027 (A064578 (n + 1)).toNat).toNat).toNat).toNat

end

end A057059.P15456291002818866359

namespace A057059

/-- `A209278(A185180(A057027(A057027(A064578(n+1)))))` -/
def P15456291002818866359.Spec : Prop :=
  ∀ n, P15456291002818866359.a n = A057059 (n + 1)

end A057059

/-!
# A057060: a(n) = number of the row of (R(i,j)) that contains prime(n), where R(i,j) is the rectangle with descending antidiagonals 1; 2,3; 4,5,6; ...

The programs for A057060, the canonical program `A057060.P3097650847450915501` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057060 has offset 1).

The definition of A057060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057060.P3097650847450915501

`A002260(A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057060

/-- `A002260(A000040(n+1))` -/
def P3097650847450915501.Spec : Prop :=
  ∀ n, P3097650847450915501.a n = A057060 (n + 1)

theorem P3097650847450915501.correct : P3097650847450915501.Spec := by
  intro n
  simp only [A057060, Nat.add_sub_cancel]

end A057060

/-! ## A057060.P18078579117183750198

`A057062(n+1)-A243111(n+1)`
-/

namespace A057060.P18078579117183750198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) - A243111 (n + 1)

end

end A057060.P18078579117183750198

namespace A057060

/-- `A057062(n+1)-A243111(n+1)` -/
def P18078579117183750198.Spec : Prop :=
  ∀ n, P18078579117183750198.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P16866200820980940723

`A057036(A111333(n+1))`
-/

namespace A057060.P16866200820980940723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (A111333 (n + 1)).toNat

end

end A057060.P16866200820980940723

namespace A057060

/-- `A057036(A111333(n+1))` -/
def P16866200820980940723.Spec : Prop :=
  ∀ n, P16866200820980940723.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P5577164004237343473

`A002260(Δ[A007504(n)])`
-/

namespace A057060.P5577164004237343473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (n + 1) - f1 n).toNat

end

end A057060.P5577164004237343473

namespace A057060

/-- `A002260(Δ[A007504(n)])` -/
def P5577164004237343473.Spec : Prop :=
  ∀ n, P5577164004237343473.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P2824043763730954042

`A002260(A006005(n+1))`
-/

namespace A057060.P2824043763730954042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A006005 (n + 1)).toNat

end

end A057060.P2824043763730954042

namespace A057060

/-- `A002260(A006005(n+1))` -/
def P2824043763730954042.Spec : Prop :=
  ∀ n, P2824043763730954042.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P12320355486641587182

`A002260(A008578(n+2))`
-/

namespace A057060.P12320355486641587182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A008578 (n + 2)).toNat

end

end A057060.P12320355486641587182

namespace A057060

/-- `A002260(A008578(n+2))` -/
def P12320355486641587182.Spec : Prop :=
  ∀ n, P12320355486641587182.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P10655007636567315501

`A002260(A075643(n+2))`
-/

namespace A057060.P10655007636567315501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A075643 (n + 2)).toNat

end

end A057060.P10655007636567315501

namespace A057060

/-- `A002260(A075643(n+2))` -/
def P10655007636567315501.Spec : Prop :=
  ∀ n, P10655007636567315501.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P16583754878941431972

`A002260(A182986(n+2))`
-/

namespace A057060.P16583754878941431972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A182986 (n + 2)).toNat

end

end A057060.P16583754878941431972

namespace A057060

/-- `A002260(A182986(n+2))` -/
def P16583754878941431972.Spec : Prop :=
  ∀ n, P16583754878941431972.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P2468364336055144031

`A002260(record[A006530(n+2)])`
-/

namespace A057060.P2468364336055144031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057060.P2468364336055144031

namespace A057060

/-- `A002260(record[A006530(n+2)])` -/
def P2468364336055144031.Spec : Prop :=
  ∀ n, P2468364336055144031.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P16247527280893100354

`A002260(record[A020639(n+2)])`
-/

namespace A057060.P16247527280893100354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057060.P16247527280893100354

namespace A057060

/-- `A002260(record[A020639(n+2)])` -/
def P16247527280893100354.Spec : Prop :=
  ∀ n, P16247527280893100354.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P1813583229526068570

`A002260(A006093(n+1)+1)`
-/

namespace A057060.P1813583229526068570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A006093 (n + 1) + 1).toNat

end

end A057060.P1813583229526068570

namespace A057060

/-- `A002260(A006093(n+1)+1)` -/
def P1813583229526068570.Spec : Prop :=
  ∀ n, P1813583229526068570.a n = A057060 (n + 1)

theorem P1813583229526068570.correct : P1813583229526068570.Spec := by
  intro n
  simp only [A057060, Nat.add_sub_cancel, A057060.P1813583229526068570.a, A057060.P3097650847450915501.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002260, A002260.P9170571874073898642.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057060

/-! ## A057060.P3902007854996375938

`A002260(A008864(n+1)-1)`
-/

namespace A057060.P3902007854996375938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A008864 (n + 1) - 1).toNat

end

end A057060.P3902007854996375938

namespace A057060

/-- `A002260(A008864(n+1)-1)` -/
def P3902007854996375938.Spec : Prop :=
  ∀ n, P3902007854996375938.a n = A057060 (n + 1)

theorem P3902007854996375938.correct : P3902007854996375938.Spec := by
  intro n
  simp only [A057060, Nat.add_sub_cancel, A057060.P3902007854996375938.a, A057060.P3097650847450915501.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002260, A002260.P9170571874073898642.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057060

/-! ## A057060.P1828198946556539346

`A002260(A028815(n+1)-1)`
-/

namespace A057060.P1828198946556539346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A028815 (n + 1) - 1).toNat

end

end A057060.P1828198946556539346

namespace A057060

/-- `A002260(A028815(n+1)-1)` -/
def P1828198946556539346.Spec : Prop :=
  ∀ n, P1828198946556539346.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P292424925768494599

`A002260(A040976(n+1)+2)`
-/

namespace A057060.P292424925768494599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A040976 (n + 1) + 2).toNat

end

end A057060.P292424925768494599

namespace A057060

/-- `A002260(A040976(n+1)+2)` -/
def P292424925768494599.Spec : Prop :=
  ∀ n, P292424925768494599.a n = A057060 (n + 1)

theorem P292424925768494599.correct : P292424925768494599.Spec := by
  intro n
  simp only [A057060, Nat.add_sub_cancel, A057060.P292424925768494599.a, A057060.P3097650847450915501.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002260, A002260.P9170571874073898642.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A057060

/-! ## A057060.P15530562292900176463

`A002260(A067747(2*n+1))`
-/

namespace A057060.P15530562292900176463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A067747 (2 * n + 1)).toNat

end

end A057060.P15530562292900176463

namespace A057060

/-- `A002260(A067747(2*n+1))` -/
def P15530562292900176463.Spec : Prop :=
  ∀ n, P15530562292900176463.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P17913225497961866523

`A002260(A082500(2*(n+1)))`
-/

namespace A057060.P17913225497961866523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A082500 (2 * (n + 1))).toNat

end

end A057060.P17913225497961866523

namespace A057060

/-- `A002260(A082500(2*(n+1)))` -/
def P17913225497961866523.Spec : Prop :=
  ∀ n, P17913225497961866523.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P18033425653242147277

`A002260(A207790(2*(n+1)))`
-/

namespace A057060.P18033425653242147277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A207790 (2 * (n + 1))).toNat

end

end A057060.P18033425653242147277

namespace A057060

/-- `A002260(A207790(2*(n+1)))` -/
def P18033425653242147277.Spec : Prop :=
  ∀ n, P18033425653242147277.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P9823140689612672573

`A002260(A382129(2*n+1))`
-/

namespace A057060.P9823140689612672573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A382129 (2 * n + 1)).toNat

end

end A057060.P9823140689612672573

namespace A057060

/-- `A002260(A382129(2*n+1))` -/
def P9823140689612672573.Spec : Prop :=
  ∀ n, P9823140689612672573.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P12607537258130097390

`A002260(A100484(n+1)/2)`
-/

namespace A057060.P12607537258130097390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A057060.P12607537258130097390

namespace A057060

/-- `A002260(A100484(n+1)/2)` -/
def P12607537258130097390.Spec : Prop :=
  ∀ n, P12607537258130097390.a n = A057060 (n + 1)

end A057060

/-! ## A057060.P4564294902678359719

`A002260(record[A000010(n+1)+1])`
-/

namespace A057060.P4564294902678359719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057060.P4564294902678359719

namespace A057060

/-- `A002260(record[A000010(n+1)+1])` -/
def P4564294902678359719.Spec : Prop :=
  ∀ n, P4564294902678359719.a n = A057060 (n + 1)

end A057060

/-!
# A057061: a(n) = number of the column of (R(i,j)) that contains prime(n), where R(i,j) is the rectangle with antidiagonals 1; 2,3; 4,5,6; ...

The programs for A057061, the canonical program `A057061.P8781047681454840188` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057061 has offset 1).

The definition of A057061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057061.P8781047681454840188

`A004736(A000040(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057061

/-- `A004736(A000040(n+1))` -/
def P8781047681454840188.Spec : Prop :=
  ∀ n, P8781047681454840188.a n = A057061 (n + 1)

theorem P8781047681454840188.correct : P8781047681454840188.Spec := by
  intro n
  simp only [A057061, Nat.add_sub_cancel]

end A057061

/-! ## A057061.P14924133041998602489

`A243111(n+1)+1`
-/

namespace A057061.P14924133041998602489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243111 (n + 1) + 1

end

end A057061.P14924133041998602489

namespace A057061

/-- `A243111(n+1)+1` -/
def P14924133041998602489.Spec : Prop :=
  ∀ n, P14924133041998602489.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P12449941843415887333

`A057062(n+1)+1-A057060(n+1)`
-/

namespace A057061.P12449941843415887333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (n + 1) + (1 - A057060 (n + 1))

end

end A057061.P12449941843415887333

namespace A057061

/-- `A057062(n+1)+1-A057060(n+1)` -/
def P12449941843415887333.Spec : Prop :=
  ∀ n, P12449941843415887333.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P10446180311734683448

`A057554(A100484(n+1))+1`
-/

namespace A057061.P10446180311734683448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A100484 (n + 1)).toNat + 1

end

end A057061.P10446180311734683448

namespace A057061

/-- `A057554(A100484(n+1))+1` -/
def P10446180311734683448.Spec : Prop :=
  ∀ n, P10446180311734683448.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P7887749329800634853

`A057554(A001747(n+2))+1`
-/

namespace A057061.P7887749329800634853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A001747 (n + 2)).toNat + 1

end

end A057061.P7887749329800634853

namespace A057061

/-- `A057554(A001747(n+2))+1` -/
def P7887749329800634853.Spec : Prop :=
  ∀ n, P7887749329800634853.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P15836777793537000477

`A004736(p?[comp[n²]])`
-/

namespace A057061.P15836777793537000477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A057061.P15836777793537000477

namespace A057061

/-- `A004736(p?[comp[n²]])` -/
def P15836777793537000477.Spec : Prop :=
  ∀ n, P15836777793537000477.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P16329426956331522149

`A004736(Δ[A007504(n)])`
-/

namespace A057061.P16329426956331522149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (n + 1) - f1 n).toNat

end

end A057061.P16329426956331522149

namespace A057061

/-- `A004736(Δ[A007504(n)])` -/
def P16329426956331522149.Spec : Prop :=
  ∀ n, P16329426956331522149.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P5959737962142640976

`A004736(record[A162753(n)])`
-/

namespace A057061.P5959737962142640976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P5959737962142640976

namespace A057061

/-- `A004736(record[A162753(n)])` -/
def P5959737962142640976.Spec : Prop :=
  ∀ n, P5959737962142640976.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P3023867828872386574

`A004736(A008578(n+2))`
-/

namespace A057061.P3023867828872386574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A008578 (n + 2)).toNat

end

end A057061.P3023867828872386574

namespace A057061

/-- `A004736(A008578(n+2))` -/
def P3023867828872386574.Spec : Prop :=
  ∀ n, P3023867828872386574.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P13484872656146519893

`A004736(A182986(n+2))`
-/

namespace A057061.P13484872656146519893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A182986 (n + 2)).toNat

end

end A057061.P13484872656146519893

namespace A057061

/-- `A004736(A182986(n+2))` -/
def P13484872656146519893.Spec : Prop :=
  ∀ n, P13484872656146519893.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P6735237352845772934

`A004736(record[A093074(n+1)])`
-/

namespace A057061.P6735237352845772934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P6735237352845772934

namespace A057061

/-- `A004736(record[A093074(n+1)])` -/
def P6735237352845772934.Spec : Prop :=
  ∀ n, P6735237352845772934.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P17185742501722946771

`A004736(record[A006530(n+2)])`
-/

namespace A057061.P17185742501722946771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P17185742501722946771

namespace A057061

/-- `A004736(record[A006530(n+2)])` -/
def P17185742501722946771.Spec : Prop :=
  ∀ n, P17185742501722946771.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P12421611062264018340

`A004736(record[A014963(n+2)])`
-/

namespace A057061.P12421611062264018340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P12421611062264018340

namespace A057061

/-- `A004736(record[A014963(n+2)])` -/
def P12421611062264018340.Spec : Prop :=
  ∀ n, P12421611062264018340.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P1736790553971530985

`A004736(record[A020639(n+2)])`
-/

namespace A057061.P1736790553971530985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P1736790553971530985

namespace A057061

/-- `A004736(record[A020639(n+2)])` -/
def P1736790553971530985.Spec : Prop :=
  ∀ n, P1736790553971530985.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P5498485276544597561

`A004736(A006093(n+1)+1)`
-/

namespace A057061.P5498485276544597561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A006093 (n + 1) + 1).toNat

end

end A057061.P5498485276544597561

namespace A057061

/-- `A004736(A006093(n+1)+1)` -/
def P5498485276544597561.Spec : Prop :=
  ∀ n, P5498485276544597561.a n = A057061 (n + 1)

theorem P5498485276544597561.correct : P5498485276544597561.Spec := by
  intro n
  simp only [A057061, Nat.add_sub_cancel, A057061.P5498485276544597561.a, A057061.P8781047681454840188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004736, A004736.P10337537277358081527.a, A006093, A006093.P2906174024863549003.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057061

/-! ## A057061.P17692416703546702937

`A004736(A008864(n+1)-1)`
-/

namespace A057061.P17692416703546702937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A008864 (n + 1) - 1).toNat

end

end A057061.P17692416703546702937

namespace A057061

/-- `A004736(A008864(n+1)-1)` -/
def P17692416703546702937.Spec : Prop :=
  ∀ n, P17692416703546702937.a n = A057061 (n + 1)

theorem P17692416703546702937.correct : P17692416703546702937.Spec := by
  intro n
  simp only [A057061, Nat.add_sub_cancel, A057061.P17692416703546702937.a, A057061.P8781047681454840188.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A004736, A004736.P10337537277358081527.a, A008864, A008864.P9177617808325052279.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A057061

/-! ## A057061.P2600846149710230911

`A004736(A028815(n+1)-1)`
-/

namespace A057061.P2600846149710230911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A028815 (n + 1) - 1).toNat

end

end A057061.P2600846149710230911

namespace A057061

/-- `A004736(A028815(n+1)-1)` -/
def P2600846149710230911.Spec : Prop :=
  ∀ n, P2600846149710230911.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P4740603024689743908

`A004736(A001747(n+2)/2)`
-/

namespace A057061.P4740603024689743908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A057061.P4740603024689743908

namespace A057061

/-- `A004736(A001747(n+2)/2)` -/
def P4740603024689743908.Spec : Prop :=
  ∀ n, P4740603024689743908.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P5058676887518653520

`A004736(record[A000010(n+1)+1])`
-/

namespace A057061.P5058676887518653520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A057061.P5058676887518653520

namespace A057061

/-- `A004736(record[A000010(n+1)+1])` -/
def P5058676887518653520.Spec : Prop :=
  ∀ n, P5058676887518653520.a n = A057061 (n + 1)

end A057061

/-! ## A057061.P14443658084938700770

`A025581(record[A000010(n+1)])+1`
-/

namespace A057061.P14443658084938700770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A057061.P14443658084938700770

namespace A057061

/-- `A025581(record[A000010(n+1)])+1` -/
def P14443658084938700770.Spec : Prop :=
  ∀ n, P14443658084938700770.a n = A057061 (n + 1)

end A057061

/-!
# A057062: Let R(i,j) be the infinite square array with antidiagonals 1; 2,3; 4,5,6; ...; the n-th prime is in antidiagonal a(n).

The programs for A057062, the canonical program `A057062.P4788040871400155032` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057062 has offset 1).

The definition of A057062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057062.P4788040871400155032

`round(sqrt(2*A000040(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A057062

/-- `round(sqrt(2*A000040(n+1)))` -/
def P4788040871400155032.Spec : Prop :=
  ∀ n, P4788040871400155032.a n = A057062 (n + 1)

theorem P4788040871400155032.correct : P4788040871400155032.Spec := by
  intro n
  simp only [A057062, Nat.add_sub_cancel]

end A057062

/-! ## A057062.P10739523455808238042

`round(sqrt(A100484(n+1)))`
-/

namespace A057062.P10739523455808238042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A100484 (n + 1) : ℝ))

end

end A057062.P10739523455808238042

namespace A057062

/-- `round(sqrt(A100484(n+1)))` -/
def P10739523455808238042.Spec : Prop :=
  ∀ n, P10739523455808238042.a n = A057062 (n + 1)

theorem P10739523455808238042.correct : P10739523455808238042.Spec := by
  intro n
  simp only [A057062, Nat.add_sub_cancel, A057062.P10739523455808238042.a, A057062.P4788040871400155032.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057062

/-! ## A057062.P11944163090052175033

`A123387(n+1)-char[1]`
-/

namespace A057062.P11944163090052175033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123387 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A057062.P11944163090052175033

namespace A057062

/-- `A123387(n+1)-char[1]` -/
def P11944163090052175033.Spec : Prop :=
  ∀ n, P11944163090052175033.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P4842484382371889401

`round(sqrt(sqrt(A069262(n+1))))`
-/

namespace A057062.P4842484382371889401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A069262 (n + 1) : ℝ)))

end

end A057062.P4842484382371889401

namespace A057062

/-- `round(sqrt(sqrt(A069262(n+1))))` -/
def P4842484382371889401.Spec : Prop :=
  ∀ n, P4842484382371889401.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P5176015191541856552

`round(sqrt(Δ[2*A007504(n)]))`
-/

namespace A057062.P5176015191541856552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (n + 1) - f1 n : ℝ))

end

end A057062.P5176015191541856552

namespace A057062

/-- `round(sqrt(Δ[2*A007504(n)]))` -/
def P5176015191541856552.Spec : Prop :=
  ∀ n, P5176015191541856552.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P2704594264101390563

`round(sqrt(A072055(n+1)-1))`
-/

namespace A057062.P2704594264101390563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A072055 (n + 1) - 1 : ℝ))

end

end A057062.P2704594264101390563

namespace A057062

/-- `round(sqrt(A072055(n+1)-1))` -/
def P2704594264101390563.Spec : Prop :=
  ∀ n, P2704594264101390563.a n = A057062 (n + 1)

theorem P2704594264101390563.correct : P2704594264101390563.Spec := by
  intro n
  simp only [A057062, Nat.add_sub_cancel, A057062.P2704594264101390563.a, A057062.P4788040871400155032.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057062

/-! ## A057062.P17807683912365868907

`round(sqrt(A089241(n+1)-2))`
-/

namespace A057062.P17807683912365868907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089241 (n + 1) - 2 : ℝ))

end

end A057062.P17807683912365868907

namespace A057062

/-- `round(sqrt(A089241(n+1)-2))` -/
def P17807683912365868907.Spec : Prop :=
  ∀ n, P17807683912365868907.a n = A057062 (n + 1)

theorem P17807683912365868907.correct : P17807683912365868907.Spec := by
  intro n
  simp only [A057062, Nat.add_sub_cancel, A057062.P17807683912365868907.a, A057062.P4788040871400155032.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057062

/-! ## A057062.P6616861748920115441

`round(sqrt(A001749(n+1)/2))`
-/

namespace A057062.P6616861748920115441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A001749 (n + 1) : ℚ) / 2 : ℝ))

end

end A057062.P6616861748920115441

namespace A057062

/-- `round(sqrt(A001749(n+1)/2))` -/
def P6616861748920115441.Spec : Prop :=
  ∀ n, P6616861748920115441.a n = A057062 (n + 1)

theorem P6616861748920115441.correct : P6616861748920115441.Spec := by
  intro n
  simp only [A057062, Nat.add_sub_cancel, A057062.P6616861748920115441.a, A057062.P4788040871400155032.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057062

/-! ## A057062.P229609930102504369

`round(sqrt(2*sqrt(A001248(n+1))))`
-/

namespace A057062.P229609930102504369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A057062.P229609930102504369

namespace A057062

/-- `round(sqrt(2*sqrt(A001248(n+1))))` -/
def P229609930102504369.Spec : Prop :=
  ∀ n, P229609930102504369.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P3887846912689086684

`A159075(n)+A123387(n+1)`
-/

namespace A057062.P3887846912689086684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A123387 (n + 1)

end

end A057062.P3887846912689086684

namespace A057062

/-- `A159075(n)+A123387(n+1)` -/
def P3887846912689086684.Spec : Prop :=
  ∀ n, P3887846912689086684.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P1795965499080167443

`A317137(n+1)+A060576(n)`
-/

namespace A057062.P1795965499080167443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (n + 1) + A060576 n

end

end A057062.P1795965499080167443

namespace A057062

/-- `A317137(n+1)+A060576(n)` -/
def P1795965499080167443.Spec : Prop :=
  ∀ n, P1795965499080167443.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P5166797139403181319

`xor(A063524(n), A123387(n+1))`
-/

namespace A057062.P5166797139403181319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A123387 (n + 1))

end

end A057062.P5166797139403181319

namespace A057062

/-- `xor(A063524(n), A123387(n+1))` -/
def P5166797139403181319.Spec : Prop :=
  ∀ n, P5166797139403181319.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P16690572938771866068

`A243111(n+1)+A057060(n+1)`
-/

namespace A057062.P16690572938771866068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243111 (n + 1) + A057060 (n + 1)

end

end A057062.P16690572938771866068

namespace A057062

/-- `A243111(n+1)+A057060(n+1)` -/
def P16690572938771866068.Spec : Prop :=
  ∀ n, P16690572938771866068.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P6072104529279185744

`A057060(n+1)+A057061(n+1)-1`
-/

namespace A057062.P6072104529279185744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057060 (n + 1) + (A057061 (n + 1) - 1)

end

end A057062.P6072104529279185744

namespace A057062

/-- `A057060(n+1)+A057061(n+1)-1` -/
def P6072104529279185744.Spec : Prop :=
  ∀ n, P6072104529279185744.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P10873940468440604224

`round(sqrt(A000040(n+1)+A040976(n+1)+1))`
-/

namespace A057062.P10873940468440604224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000040 (n + 1) + (A040976 (n + 1) + 1) : ℝ))

end

end A057062.P10873940468440604224

namespace A057062

/-- `round(sqrt(A000040(n+1)+A040976(n+1)+1))` -/
def P10873940468440604224.Spec : Prop :=
  ∀ n, P10873940468440604224.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P17097156870277771922

`round(sqrt(A001747(n+2)))`
-/

namespace A057062.P17097156870277771922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001747 (n + 2) : ℝ))

end

end A057062.P17097156870277771922

namespace A057062

/-- `round(sqrt(A001747(n+2)))` -/
def P17097156870277771922.Spec : Prop :=
  ∀ n, P17097156870277771922.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P5065461600447385238

`round(sqrt(A076274(n+2)))`
-/

namespace A057062.P5065461600447385238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A076274 (n + 2) : ℝ))

end

end A057062.P5065461600447385238

namespace A057062

/-- `round(sqrt(A076274(n+2)))` -/
def P5065461600447385238.Spec : Prop :=
  ∀ n, P5065461600447385238.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P3629845226375003913

`round(sqrt(2*A008578(n+2)))`
-/

namespace A057062.P3629845226375003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A008578 (n + 2) : ℝ))

end

end A057062.P3629845226375003913

namespace A057062

/-- `round(sqrt(2*A008578(n+2)))` -/
def P3629845226375003913.Spec : Prop :=
  ∀ n, P3629845226375003913.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P2992284848719580348

`round(sqrt(2*record[A000010(n+1)]+1))`
-/

namespace A057062.P2992284848719580348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℝ))

end

end A057062.P2992284848719580348

namespace A057062

/-- `round(sqrt(2*record[A000010(n+1)]+1))` -/
def P2992284848719580348.Spec : Prop :=
  ∀ n, P2992284848719580348.a n = A057062 (n + 1)

end A057062

/-! ## A057062.P792033660901621177

`round(sqrt(2*p?[A039698(n+1)]))`
-/

namespace A057062.P792033660901621177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A057062.P792033660901621177

namespace A057062

/-- `round(sqrt(2*p?[A039698(n+1)]))` -/
def P792033660901621177.Spec : Prop :=
  ∀ n, P792033660901621177.a n = A057062 (n + 1)

end A057062

/-!
# A057063: Let P(n) of a sequence s(1),s(2),s(3),... be obtained by leaving s(1),...,s(n) fixed and reverse-cyclically permuting every n consecutive terms thereafter; apply P(2) to 1,2,3,... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. The limit of PS(n) is A057063.

The programs for A057063, there is no canonical definition to state claims against.
-/

/-! ## A057063.P13786922132462862602

`A057033(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A057063.P13786922132462862602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057033 n + a (A000038 n).toNat

end

end A057063.P13786922132462862602

/-! ## A057063.P13648968904776251484

`A057033(A028310(n))%A000328(n)+1`
-/

namespace A057063.P13648968904776251484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057033 (A028310 n).toNat) (A000328 n) + 1

end

end A057063.P13648968904776251484

/-! ## A057063.P9116017282463537079

`A057033(A028310(n))+A000296(C(2, n²))`
-/

namespace A057063.P9116017282463537079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + A000296 (Nat.choose 2 (n ^ 2))

end

end A057063.P9116017282463537079

/-! ## A057063.P16737969758072458299

`A057033(A028310(n))+A000040(n+1)%2`
-/

namespace A057063.P16737969758072458299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A057063.P16737969758072458299

/-! ## A057063.P1789993119031809973

`A057033(A028310(n))+A001221(A001316(n))`
-/

namespace A057063.P1789993119031809973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A057063.P1789993119031809973

/-! ## A057063.P10563997216102690283

`A057033(A028310(n))+A001221(A000015(n+1))`
-/

namespace A057063.P10563997216102690283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + A001221 (A000015 (n + 1)).toNat

end

end A057063.P10563997216102690283

/-! ## A057063.P3988040136377368124

`A057033(A028310(n))+A001221(A000961(n+1))`
-/

namespace A057063.P3988040136377368124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + A001221 (A000961 (n + 1)).toNat

end

end A057063.P3988040136377368124

/-! ## A057063.P11677918175820834452

`A057033(A028310(n))+A001222(A006005(n+1))`
-/

namespace A057063.P11677918175820834452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (A028310 n).toNat + A001222 (A006005 (n + 1)).toNat

end

end A057063.P11677918175820834452

/-!
# A057064: Let P(n) of a sequence s(1),s(2),s(3),... be obtained by leaving s(1),...,s(n) fixed and forward-cyclically permuting every n consecutive terms thereafter; apply P(2) to 1,2,3,... to get PS(2), then apply P(3) to PS(2) to get PS(3), then apply P(4) to PS(3), etc. The limit of PS(n) is A057064.

The programs for A057064, there is no canonical definition to state claims against.
-/

/-! ## A057064.P9405300102096604674

`A057032(A028310(n))%(n+1)²+1`
-/

namespace A057064.P9405300102096604674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057032 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ) + 1

end

end A057064.P9405300102096604674

/-! ## A057064.P6622002983509419227

`A057032(A028310(n))+1-A000007(n)`
-/

namespace A057064.P6622002983509419227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + (1 - A000007 n)

end

end A057064.P6622002983509419227

/-! ## A057064.P5758241329350028610

`A057032(A028310(n))+A000045(round(n/(n+1)))`
-/

namespace A057064.P5758241329350028610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A057064.P5758241329350028610

/-! ## A057064.P11037083329561093211

`A057032(A028310(n))+A001221(A001316(n))`
-/

namespace A057064.P11037083329561093211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A001221 (A001316 n).toNat

end

end A057064.P11037083329561093211

/-! ## A057064.P11197256914499099432

`A057032(A028310(n))+A001221(A000015(n+1))`
-/

namespace A057064.P11197256914499099432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A001221 (A000015 (n + 1)).toNat

end

end A057064.P11197256914499099432

/-! ## A057064.P14673606163919540489

`A057032(A028310(n))+A000035(A000040(n+1))`
-/

namespace A057064.P14673606163919540489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A000035 (A000040 (n + 1)).toNat

end

end A057064.P14673606163919540489

/-! ## A057064.P15041209639718822517

`A057032(A028310(n))+A002828(n²)`
-/

namespace A057064.P15041209639718822517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A002828 (n ^ 2)

end

end A057064.P15041209639718822517

/-! ## A057064.P17860620665635159425

`A057032(A028310(n))+A002262(∑[n]+1)`
-/

namespace A057064.P17860620665635159425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A028310 n).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A057064.P17860620665635159425

/-!
# A057065: a(n) = floor(n^n/2).

The programs for A057065, the canonical program `A057065.P10070834927182920392` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057065 has offset 0).

The definition of A057065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^n/2)` (program `A057065.P10070834927182920392`, by `A057065.P10070834927182920392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057065.P10070834927182920392

`floor(n^n/2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057065

/-- `floor(n^n/2)` -/
def P10070834927182920392.Spec : Prop :=
  ∀ n, P10070834927182920392.a n = A057065 n

theorem P10070834927182920392.correct : P10070834927182920392.Spec := by
  intro n
  simp only [A057065]

end A057065

/-! ## A057065.P14690977978580583453

`or((n+1)%2, A168658(n))-1`
-/

namespace A057065.P14690977978580583453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n + 1) % 2 : ℕ) : ℤ) (A168658 n) - 1

end

end A057065.P14690977978580583453

namespace A057065

/-- `or((n+1)%2, A168658(n))-1` -/
def P14690977978580583453.Spec : Prop :=
  ∀ n, P14690977978580583453.a n = A057065 n

end A057065

/-! ## A057065.P3217044823321543795

`A369026(n)+A081131(n)`
-/

namespace A057065.P3217044823321543795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369026 n + A081131 n

end

end A057065.P3217044823321543795

namespace A057065

/-- `A369026(n)+A081131(n)` -/
def P3217044823321543795.Spec : Prop :=
  ∀ n, P3217044823321543795.a n = A057065 n

end A057065

/-! ## A057065.P13671897408898184967

`A168658(n)-A078707(n)%2`
-/

namespace A057065.P13671897408898184967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168658 n - Int.tmod (A078707 n) 2

end

end A057065.P13671897408898184967

namespace A057065

/-- `A168658(n)-A078707(n)%2` -/
def P13671897408898184967.Spec : Prop :=
  ∀ n, P13671897408898184967.a n = A057065 n

end A057065

/-! ## A057065.P6343653885161195100

`or(A000035(n+1), A168658(n))-1`
-/

namespace A057065.P6343653885161195100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A168658 n) - 1

end

end A057065.P6343653885161195100

namespace A057065

/-- `or(A000035(n+1), A168658(n))-1` -/
def P6343653885161195100.Spec : Prop :=
  ∀ n, P6343653885161195100.a n = A057065 n

end A057065

/-! ## A057065.P4080359512443701475

`A168658(n)-A000035(A028310(n))`
-/

namespace A057065.P4080359512443701475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168658 n - A000035 (A028310 n).toNat

end

end A057065.P4080359512443701475

namespace A057065

/-- `A168658(n)-A000035(A028310(n))` -/
def P4080359512443701475.Spec : Prop :=
  ∀ n, P4080359512443701475.a n = A057065 n

end A057065

/-! ## A057065.P6752439207237018263

`A168658(n)-A000035(A065190(n+1))`
-/

namespace A057065.P6752439207237018263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168658 n - A000035 (A065190 (n + 1)).toNat

end

end A057065.P6752439207237018263

namespace A057065

/-- `A168658(n)-A000035(A065190(n+1))` -/
def P6752439207237018263.Spec : Prop :=
  ∀ n, P6752439207237018263.a n = A057065 n

end A057065

/-! ## A057065.P1253884128902298786

`(A168658(n)-A000035(n))%A275549(n)`
-/

namespace A057065.P1253884128902298786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168658 n - A000035 n) (A275549 n)

end

end A057065.P1253884128902298786

namespace A057065

/-- `(A168658(n)-A000035(n))%A275549(n)` -/
def P1253884128902298786.Spec : Prop :=
  ∀ n, P1253884128902298786.a n = A057065 n

end A057065

/-! ## A057065.P15317961087471315056

`and(-2, n^n)/2`
-/

namespace A057065.P15317961087471315056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (n ^ n : ℤ) : ℚ) / 2

end

end A057065.P15317961087471315056

namespace A057065

/-- `and(-2, n^n)/2` -/
def P15317961087471315056.Spec : Prop :=
  ∀ n, P15317961087471315056.a n = (A057065 n : ℚ)

end A057065

/-! ## A057065.P3074937341752071231

`(or(1, n^n)-1)/2`
-/

namespace A057065.P3074937341752071231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ n) : ℤ) - 1 : ℚ) / 2

end

end A057065.P3074937341752071231

namespace A057065

/-- `(or(1, n^n)-1)/2` -/
def P3074937341752071231.Spec : Prop :=
  ∀ n, P3074937341752071231.a n = (A057065 n : ℚ)

end A057065

/-!
# A057066: a(n) = floor(4^4/n).

The programs for A057066, the canonical program `A057066.P9180442226146607525` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057066 has offset 1).

The definition of A057066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^4/(n+1))` (program `A057066.P9180442226146607525`, by `A057066.P9180442226146607525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057066.P9180442226146607525

`floor(4^4/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057066

/-- `floor(4^4/(n+1))` -/
def P9180442226146607525.Spec : Prop :=
  ∀ n, P9180442226146607525.a n = A057066 (n + 1)

theorem P9180442226146607525.correct : P9180442226146607525.Spec := by
  intro n
  simp only [A057066, Nat.add_sub_cancel]

end A057066

/-!
# A057067: a(n) = floor(5^5/n).

The programs for A057067, the canonical program `A057067.P10646057106204978441` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057067 has offset 1).

The definition of A057067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^5/(n+1))` (program `A057067.P10646057106204978441`, by `A057067.P10646057106204978441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057067.P10646057106204978441

`floor(5^5/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057067

/-- `floor(5^5/(n+1))` -/
def P10646057106204978441.Spec : Prop :=
  ∀ n, P10646057106204978441.a n = A057067 (n + 1)

theorem P10646057106204978441.correct : P10646057106204978441.Spec := by
  intro n
  simp only [A057067, Nat.add_sub_cancel]

end A057067

/-! ## A057067.P17219577021409444547

`A033427(16*2*(n+1))`
-/

namespace A057067.P17219577021409444547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033427 (16 * (2 * (n + 1)))

end

end A057067.P17219577021409444547

namespace A057067

/-- `A033427(16*2*(n+1))` -/
def P17219577021409444547.Spec : Prop :=
  ∀ n, P17219577021409444547.a n = A057067 (n + 1)

end A057067

/-! ## A057067.P10271968118649039766

`A057075(A056000(n)+15)`
-/

namespace A057067.P10271968118649039766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A056000 n + 15).toNat

end

end A057067.P10271968118649039766

namespace A057067

/-- `A057075(A056000(n)+15)` -/
def P10271968118649039766.Spec : Prop :=
  ∀ n, P10271968118649039766.a n = A057067 (n + 1)

end A057067

/-! ## A057067.P16920064912625386642

`A057075(eq[6, A131818(n+1)])`
-/

namespace A057067.P16920064912625386642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057067.P16920064912625386642

namespace A057067

/-- `A057075(eq[6, A131818(n+1)])` -/
def P16920064912625386642.Spec : Prop :=
  ∀ n, P16920064912625386642.a n = A057067 (n + 1)

end A057067

/-!
# A057068: a(n) = floor(6^6/n).

The programs for A057068, the canonical program `A057068.P13412592450850774742` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057068 has offset 1).

The definition of A057068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^6/(n+1))` (program `A057068.P13412592450850774742`, by `A057068.P13412592450850774742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057068.P13412592450850774742

`floor(6^6/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057068

/-- `floor(6^6/(n+1))` -/
def P13412592450850774742.Spec : Prop :=
  ∀ n, P13412592450850774742.a n = A057068 (n + 1)

theorem P13412592450850774742.correct : P13412592450850774742.Spec := by
  intro n
  simp only [A057068, Nat.add_sub_cancel]

end A057068

/-! ## A057068.P6722994671230578514

`A057075(A167499(n+4)+1)`
-/

namespace A057068.P6722994671230578514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A167499 (n + 4) + 1).toNat

end

end A057068.P6722994671230578514

namespace A057068

/-- `A057075(A167499(n+4)+1)` -/
def P6722994671230578514.Spec : Prop :=
  ∀ n, P6722994671230578514.a n = A057068 (n + 1)

end A057068

/-! ## A057068.P7892628697058692041

`A057075(A000124(n+5)+5)`
-/

namespace A057068.P7892628697058692041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A000124 (n + 5) + 5).toNat

end

end A057068.P7892628697058692041

namespace A057068

/-- `A057075(A000124(n+5)+5)` -/
def P7892628697058692041.Spec : Prop :=
  ∀ n, P7892628697058692041.a n = A057068 (n + 1)

end A057068

/-! ## A057068.P12654261758876099959

`A057075(eq[7, A131818(n+1)])`
-/

namespace A057068.P12654261758876099959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057068.P12654261758876099959

namespace A057068

/-- `A057075(eq[7, A131818(n+1)])` -/
def P12654261758876099959.Spec : Prop :=
  ∀ n, P12654261758876099959.a n = A057068 (n + 1)

end A057068

/-! ## A057068.P6773403258686798790

`A057075(Δ[A023545(n+1)]+10)`
-/

namespace A057068.P6773403258686798790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (f1 (n + 1) - f1 n + 10).toNat

end

end A057068.P6773403258686798790

namespace A057068

/-- `A057075(Δ[A023545(n+1)]+10)` -/
def P6773403258686798790.Spec : Prop :=
  ∀ n, P6773403258686798790.a n = A057068 (n + 1)

end A057068

/-!
# A057069: a(n) = floor(7^7/n).

The programs for A057069, the canonical program `A057069.P3331556346305926395` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057069 has offset 1).

The definition of A057069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^7/(n+1))` (program `A057069.P3331556346305926395`, by `A057069.P3331556346305926395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057069.P3331556346305926395

`floor(7^7/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057069

/-- `floor(7^7/(n+1))` -/
def P3331556346305926395.Spec : Prop :=
  ∀ n, P3331556346305926395.a n = A057069 (n + 1)

theorem P3331556346305926395.correct : P3331556346305926395.Spec := by
  intro n
  simp only [A057069, Nat.add_sub_cancel]

end A057069

/-! ## A057069.P6134478443725760254

`A057075(A056119(n)+28)`
-/

namespace A057069.P6134478443725760254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A056119 n + 28).toNat

end

end A057069.P6134478443725760254

namespace A057069

/-- `A057075(A056119(n)+28)` -/
def P6134478443725760254.Spec : Prop :=
  ∀ n, P6134478443725760254.a n = A057069 (n + 1)

end A057069

/-! ## A057069.P15109006663474505476

`A057075(A166136(n+5)+1)`
-/

namespace A057069.P15109006663474505476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A166136 (n + 5) + 1).toNat

end

end A057069.P15109006663474505476

namespace A057069

/-- `A057075(A166136(n+5)+1)` -/
def P15109006663474505476.Spec : Prop :=
  ∀ n, P15109006663474505476.a n = A057069 (n + 1)

end A057069

/-! ## A057069.P14677848441276560706

`A057075(A000217(n+6)+7)`
-/

namespace A057069.P14677848441276560706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A000217 (n + 6) + 7).toNat

end

end A057069.P14677848441276560706

namespace A057069

/-- `A057075(A000217(n+6)+7)` -/
def P14677848441276560706.Spec : Prop :=
  ∀ n, P14677848441276560706.a n = A057069 (n + 1)

end A057069

/-! ## A057069.P11108629853928982375

`A057075(eq[8, A131818(n+1)])`
-/

namespace A057069.P11108629853928982375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057069.P11108629853928982375

namespace A057069

/-- `A057075(eq[8, A131818(n+1)])` -/
def P11108629853928982375.Spec : Prop :=
  ∀ n, P11108629853928982375.a n = A057069 (n + 1)

end A057069

/-!
# A057070: a(n) = floor(8^8/n).

The programs for A057070, the canonical program `A057070.P1854055760486452176` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057070 has offset 1).

The definition of A057070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8^8/(n+1))` (program `A057070.P1854055760486452176`, by `A057070.P1854055760486452176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057070.P1854055760486452176

`floor(8^8/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057070

/-- `floor(8^8/(n+1))` -/
def P1854055760486452176.Spec : Prop :=
  ∀ n, P1854055760486452176.a n = A057070 (n + 1)

theorem P1854055760486452176.correct : P1854055760486452176.Spec := by
  intro n
  simp only [A057070, Nat.add_sub_cancel]

end A057070

/-! ## A057070.P9941903748753647019

`A057075(eq[13, A066657(n)])`
-/

namespace A057070.P9941903748753647019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057070.P9941903748753647019

namespace A057070

/-- `A057075(eq[13, A066657(n)])` -/
def P9941903748753647019.Spec : Prop :=
  ∀ n, P9941903748753647019.a n = A057070 (n + 1)

end A057070

/-! ## A057070.P10086533682550704801

`A057075(A000217(n+7)+8)`
-/

namespace A057070.P10086533682550704801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A000217 (n + 7) + 8).toNat

end

end A057070.P10086533682550704801

namespace A057070

/-- `A057075(A000217(n+7)+8)` -/
def P10086533682550704801.Spec : Prop :=
  ∀ n, P10086533682550704801.a n = A057070 (n + 1)

end A057070

/-! ## A057070.P3591994840340090144

`A057075(eq[7, A002262(n)]+1)`
-/

namespace A057070.P3591994840340090144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A057070.P3591994840340090144

namespace A057070

/-- `A057075(eq[7, A002262(n)]+1)` -/
def P3591994840340090144.Spec : Prop :=
  ∀ n, P3591994840340090144.a n = A057070 (n + 1)

end A057070

/-! ## A057070.P13583577135863085344

`A057075(eq[9, A131818(n+1)])`
-/

namespace A057070.P13583577135863085344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057070.P13583577135863085344

namespace A057070

/-- `A057075(eq[9, A131818(n+1)])` -/
def P13583577135863085344.Spec : Prop :=
  ∀ n, P13583577135863085344.a n = A057070 (n + 1)

end A057070

/-!
# A057071: a(n) = floor(9^9/n).

The programs for A057071, the canonical program `A057071.P8323662043066971055` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057071 has offset 1).

The definition of A057071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^9/(n+1))` (program `A057071.P8323662043066971055`, by `A057071.P8323662043066971055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057071.P8323662043066971055

`floor(9^9/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057071

/-- `floor(9^9/(n+1))` -/
def P8323662043066971055.Spec : Prop :=
  ∀ n, P8323662043066971055.a n = A057071 (n + 1)

theorem P8323662043066971055.correct : P8323662043066971055.Spec := by
  intro n
  simp only [A057071, Nat.add_sub_cancel]

end A057071

/-! ## A057071.P11827625218931189605

`A057075(eq[17, A066657(n)])`
-/

namespace A057071.P11827625218931189605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057071.P11827625218931189605

namespace A057071

/-- `A057075(eq[17, A066657(n)])` -/
def P11827625218931189605.Spec : Prop :=
  ∀ n, P11827625218931189605.a n = A057071 (n + 1)

end A057071

/-! ## A057071.P11635579179104950963

`A057075(A161680(n+9)+9)`
-/

namespace A057071.P11635579179104950963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (A161680 (n + 9) + 9).toNat

end

end A057071.P11635579179104950963

namespace A057071

/-- `A057075(A161680(n+9)+9)` -/
def P11635579179104950963.Spec : Prop :=
  ∀ n, P11635579179104950963.a n = A057071 (n + 1)

end A057071

/-! ## A057071.P10488631537093028944

`A057075(eq[10, A131818(n+1)])`
-/

namespace A057071.P10488631537093028944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057071.P10488631537093028944

namespace A057071

/-- `A057075(eq[10, A131818(n+1)])` -/
def P10488631537093028944.Spec : Prop :=
  ∀ n, P10488631537093028944.a n = A057071 (n + 1)

end A057071

/-!
# A057072: a(n) = floor(10^10/n).

The programs for A057072, the canonical program `A057072.P8609580403071528110` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057072 has offset 1).

The definition of A057072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^10/(n+1))` (program `A057072.P8609580403071528110`, by `A057072.P8609580403071528110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057072.P8609580403071528110

`floor(10^10/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057072

/-- `floor(10^10/(n+1))` -/
def P8609580403071528110.Spec : Prop :=
  ∀ n, P8609580403071528110.a n = A057072 (n + 1)

theorem P8609580403071528110.correct : P8609580403071528110.Spec := by
  intro n
  simp only [A057072, Nat.add_sub_cancel]

end A057072

/-! ## A057072.P5558769486811791277

`A057075(eq[11, A131818(n+1)])`
-/

namespace A057072.P5558769486811791277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057072.P5558769486811791277

namespace A057072

/-- `A057075(eq[11, A131818(n+1)])` -/
def P5558769486811791277.Spec : Prop :=
  ∀ n, P5558769486811791277.a n = A057072 (n + 1)

end A057072

/-! ## A057072.P6411908721221779569

`A057075(eq[11, A123229(n+1)])`
-/

namespace A057072.P6411908721221779569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057075 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057072.P6411908721221779569

namespace A057072

/-- `A057075(eq[11, A123229(n+1)])` -/
def P6411908721221779569.Spec : Prop :=
  ∀ n, P6411908721221779569.a n = A057072 (n + 1)

end A057072

/-!
# A057073: a(n) = floor(11^11/n).

The programs for A057073, the canonical program `A057073.P18092672665887771032` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057073 has offset 1).

The definition of A057073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^11/(n+1))` (program `A057073.P18092672665887771032`, by `A057073.P18092672665887771032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057073.P18092672665887771032

`floor(11^11/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057073

/-- `floor(11^11/(n+1))` -/
def P18092672665887771032.Spec : Prop :=
  ∀ n, P18092672665887771032.a n = A057073 (n + 1)

theorem P18092672665887771032.correct : P18092672665887771032.Spec := by
  intro n
  simp only [A057073, Nat.add_sub_cancel]

end A057073

/-!
# A057074: a(n) = floor(12^12/n).

The programs for A057074, the canonical program `A057074.P3715894920876173103` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057074 has offset 1).

The definition of A057074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(12^12/(n+1))` (program `A057074.P3715894920876173103`, by `A057074.P3715894920876173103.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057074.P3715894920876173103

`floor(12^12/(n+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057074

/-- `floor(12^12/(n+1))` -/
def P3715894920876173103.Spec : Prop :=
  ∀ n, P3715894920876173103.a n = A057074 (n + 1)

theorem P3715894920876173103.correct : P3715894920876173103.Spec := by
  intro n
  simp only [A057074, Nat.add_sub_cancel]

end A057074

/-!
# A057075: Table read by antidiagonals of T(n,k)=floor(n^n/k) with n,k >= 1.

The programs for A057075, the canonical program `A057075.P12208288930621935229` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057075 has offset 1).

The definition of A057075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((col(n)+1)^(col(n)+1)/(row(n)-col(n)+1))` (program `A057075.P12208288930621935229`, by `A057075.P12208288930621935229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057075.P12208288930621935229

`floor((col(n)+1)^(col(n)+1)/(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057075

/-- `floor((col(n)+1)^(col(n)+1)/(row(n)-col(n)+1))` -/
def P12208288930621935229.Spec : Prop :=
  ∀ n, P12208288930621935229.a n = A057075 (n + 1)

theorem P12208288930621935229.correct : P12208288930621935229.Spec := by
  intro n
  simp only [A057075, Nat.add_sub_cancel]

end A057075

/-! ## A057075.P15161166367962018706

`floor(A033918(n+1)/A004736(n+1))`
-/

namespace A057075.P15161166367962018706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033918 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A057075.P15161166367962018706

namespace A057075

/-- `floor(A033918(n+1)/A004736(n+1))` -/
def P15161166367962018706.Spec : Prop :=
  ∀ n, P15161166367962018706.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P6686854261515084281

`floor(A089072(n+1)/A104002(n+2))`
-/

namespace A057075.P6686854261515084281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089072 (n + 1) : ℚ) / (A104002 (n + 2) : ℚ)⌋

end

end A057075.P6686854261515084281

namespace A057075

/-- `floor(A089072(n+1)/A104002(n+2))` -/
def P6686854261515084281.Spec : Prop :=
  ∀ n, P6686854261515084281.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P360904269055999831

`floor(A033918(n+1)/A004396(A104568(n)))`
-/

namespace A057075.P360904269055999831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033918 (n + 1) : ℚ) / (A004396 (A104568 n).toNat : ℚ)⌋

end

end A057075.P360904269055999831

namespace A057075

/-- `floor(A033918(n+1)/A004396(A104568(n)))` -/
def P360904269055999831.Spec : Prop :=
  ∀ n, P360904269055999831.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P5296184853428761266

`floor(A033918(n+1)/A002260(A278818(n)))`
-/

namespace A057075.P5296184853428761266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033918 (n + 1) : ℚ) / (A002260 (A278818 n).toNat : ℚ)⌋

end

end A057075.P5296184853428761266

namespace A057075

/-- `floor(A033918(n+1)/A002260(A278818(n)))` -/
def P5296184853428761266.Spec : Prop :=
  ∀ n, P5296184853428761266.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P6809420018403370642

`floor(A000312(A002260(n+1))/A004736(n+1))`
-/

namespace A057075.P6809420018403370642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000312 (A002260 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A057075.P6809420018403370642

namespace A057075

/-- `floor(A000312(A002260(n+1))/A004736(n+1))` -/
def P6809420018403370642.Spec : Prop :=
  ∀ n, P6809420018403370642.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P14095586982205386497

`floor(A033918(n+1)/A002260(A038722(n+1)))`
-/

namespace A057075.P14095586982205386497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033918 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)⌋

end

end A057075.P14095586982205386497

namespace A057075

/-- `floor(A033918(n+1)/A002260(A038722(n+1)))` -/
def P14095586982205386497.Spec : Prop :=
  ∀ n, P14095586982205386497.a n = A057075 (n + 1)

end A057075

/-! ## A057075.P14837396894015684363

`floor(A095891(A038722(n+1))/A004736(n+1))`
-/

namespace A057075.P14837396894015684363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095891 (A038722 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A057075.P14837396894015684363

namespace A057075

/-- `floor(A095891(A038722(n+1))/A004736(n+1))` -/
def P14837396894015684363.Spec : Prop :=
  ∀ n, P14837396894015684363.a n = A057075 (n + 1)

end A057075

/-!
# A057076: A Chebyshev or generalized Fibonacci sequence.

The programs for A057076, the canonical program `A057076.P6410077051092806992` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057076 has offset 0).

The definition of A057076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057076.P6410077051092806992

`11*a(n-1)-a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057076

/-- `11*a(n-1)-a(n-2)` -/
def P6410077051092806992.Spec : Prop :=
  ∀ n, P6410077051092806992.a n = A057076 n

theorem P6410077051092806992.correct : P6410077051092806992.Spec := by
  intro n
  simp only [A057076]

end A057076

/-! ## A057076.P1385164328023091194

`ogf((2-11x)/(1-11x+x^2))`
-/

namespace A057076.P1385164328023091194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -11] [1, -11, 1] n

end

end A057076.P1385164328023091194

namespace A057076

/-- `ogf((2-11x)/(1-11x+x^2))` -/
def P1385164328023091194.Spec : Prop :=
  ∀ n, P1385164328023091194.a n = A057076 n

end A057076

/-! ## A057076.P8815613865131037070

`A006497(2*n)`
-/

namespace A057076.P8815613865131037070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (2 * n)

end

end A057076.P8815613865131037070

namespace A057076

/-- `A006497(2*n)` -/
def P8815613865131037070.Spec : Prop :=
  ∀ n, P8815613865131037070.a n = A057076 n

end A057076

/-! ## A057076.P9411198515380626842

`A100230(2*n)+1`
-/

namespace A057076.P9411198515380626842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 (2 * n) + 1

end

end A057076.P9411198515380626842

namespace A057076

/-- `A100230(2*n)+1` -/
def P9411198515380626842.Spec : Prop :=
  ∀ n, P9411198515380626842.a n = A057076 n

end A057076

/-! ## A057076.P11947676070428285375

`A051928(2*n)-2`
-/

namespace A057076.P11947676070428285375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051928 (2 * n) - 2

end

end A057076.P11947676070428285375

namespace A057076

/-- `A051928(2*n)-2` -/
def P11947676070428285375.Spec : Prop :=
  ∀ n, P11947676070428285375.a n = A057076 n

end A057076

/-! ## A057076.P4113082186711411677

`record[gcd(val(n+1, 2), A006497(n))]`
-/

namespace A057076.P4113082186711411677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A006497 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057076.P4113082186711411677

namespace A057076

/-- `record[gcd(val(n+1, 2), A006497(n))]` -/
def P4113082186711411677.Spec : Prop :=
  ∀ n, (P4113082186711411677.a n : ℤ) = A057076 n

end A057076

/-! ## A057076.P12165285739975937718

`record[A006497(A014681(n))]`
-/

namespace A057076.P12165285739975937718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057076.P12165285739975937718

namespace A057076

/-- `record[A006497(A014681(n))]` -/
def P12165285739975937718.Spec : Prop :=
  ∀ n, P12165285739975937718.a n = A057076 n

end A057076

/-! ## A057076.P1437830344545631275

`record[A006497(A273724(n))]`
-/

namespace A057076.P1437830344545631275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A273724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057076.P1437830344545631275

namespace A057076

/-- `record[A006497(A273724(n))]` -/
def P1437830344545631275.Spec : Prop :=
  ∀ n, P1437830344545631275.a n = A057076 n

end A057076

/-! ## A057076.P9988283184440455426

`record[A006497(n)%A051928(n)]`
-/

namespace A057076.P9988283184440455426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006497 n) (A051928 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057076.P9988283184440455426

namespace A057076

/-- `record[A006497(n)%A051928(n)]` -/
def P9988283184440455426.Spec : Prop :=
  ∀ n, P9988283184440455426.a n = A057076 n

end A057076

/-! ## A057076.P3418746994705574171

`2*A052924(2*n)-A006190(2*n)`
-/

namespace A057076.P3418746994705574171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052924 (2 * n) - A006190 (2 * n)

end

end A057076.P3418746994705574171

namespace A057076

/-- `2*A052924(2*n)-A006190(2*n)` -/
def P3418746994705574171.Spec : Prop :=
  ∀ n, P3418746994705574171.a n = A057076 n

end A057076

/-!
# A057077: Periodic sequence 1,1,-1,-1; expansion of (1+x)/(1+x^2).

The programs for A057077, the canonical program `A057077.P1014922601361247684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057077 has offset 0).

The definition of A057077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057077.P1014922601361247684

`(-1)^C(n, 2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057077

/-- `(-1)^C(n, 2)` -/
def P1014922601361247684.Spec : Prop :=
  ∀ n, P1014922601361247684.a n = A057077 n

theorem P1014922601361247684.correct : P1014922601361247684.Spec := by
  intro n
  simp only [A057077]

end A057077

/-!
# A057078: Periodic sequence 1,0,-1,...; expansion of (1+x)/(1+x+x^2).

The programs for A057078, the canonical program `A057078.P4951435475119423572` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057078 has offset 0).

The definition of A057078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057078.P4951435475119423572

`1-n%3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057078

/-- `1-n%3` -/
def P4951435475119423572.Spec : Prop :=
  ∀ n, P4951435475119423572.a n = A057078 n

theorem P4951435475119423572.correct : P4951435475119423572.Spec := by
  intro n
  simp only [A057078]

end A057078

/-!
# A057079: Periodic sequence: repeat [1,2,1,-1,-2,-1]; expansion of (1+x)/(1-x+x^2).

The programs for A057079, the canonical program `A057079.P1190996201053141136` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057079 has offset 0).

The definition of A057079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057079.P1190996201053141136

`-a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057079

/-- `-a(n-3)` -/
def P1190996201053141136.Spec : Prop :=
  ∀ n, P1190996201053141136.a n = A057079 n

theorem P1190996201053141136.correct : P1190996201053141136.Spec := by
  intro n
  simp only [A057079]

end A057079

/-!
# A057080: Even-indexed Chebyshev U-polynomials evaluated at sqrt(10)/2.

The programs for A057080, the canonical program `A057080.P5160504863345441443` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057080 has offset 0).

The definition of A057080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057080.P5160504863345441443

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057080

/-- `8*a(n-1)-a(n-2)` -/
def P5160504863345441443.Spec : Prop :=
  ∀ n, P5160504863345441443.a n = A057080 n

theorem P5160504863345441443.correct : P5160504863345441443.Spec := by
  intro n
  simp only [A057080]

end A057080

/-! ## A057080.P3019627241514570040

`sqrt((5*A070997(n)²-2)/3)`
-/

namespace A057080.P3019627241514570040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((5 * A070997 n ^ 2 - 2 : ℚ) / 3 : ℝ)

end

end A057080.P3019627241514570040

namespace A057080

/-- `sqrt((5*A070997(n)²-2)/3)` -/
def P3019627241514570040.Spec : Prop :=
  ∀ n, P3019627241514570040.a n = (A057080 n : ℝ)

end A057080

/-! ## A057080.P1845172923907554982

`ogf((1+x)/(1-8x+x^2))`
-/

namespace A057080.P1845172923907554982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, 1] n

end

end A057080.P1845172923907554982

namespace A057080

/-- `ogf((1+x)/(1-8x+x^2))` -/
def P1845172923907554982.Spec : Prop :=
  ∀ n, P1845172923907554982.a n = A057080 n

end A057080

/-! ## A057080.P2440428611878029906

`lcm(8, a(n-1))-a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A057080.P2440428611878029906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - a (n - 2)

end

end A057080.P2440428611878029906

namespace A057080

/-- `lcm(8, a(n-1))-a(n-2)` -/
def P2440428611878029906.Spec : Prop :=
  ∀ n, P2440428611878029906.a n = A057080 n

end A057080

/-! ## A057080.P7972040691819792077

`A145543(Δ[n²])`
-/

namespace A057080.P7972040691819792077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057080.P7972040691819792077

namespace A057080

/-- `A145543(Δ[n²])` -/
def P7972040691819792077.Spec : Prop :=
  ∀ n, P7972040691819792077.a n = A057080 n

end A057080

/-! ## A057080.P8197892559466153021

`A177187(Δ[n²])`
-/

namespace A057080.P8197892559466153021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057080.P8197892559466153021

namespace A057080

/-- `A177187(Δ[n²])` -/
def P8197892559466153021.Spec : Prop :=
  ∀ n, P8197892559466153021.a n = A057080 n

end A057080

/-! ## A057080.P14842998427552617617

`A322780(Δ[n²])`
-/

namespace A057080.P14842998427552617617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A057080.P14842998427552617617

namespace A057080

/-- `A322780(Δ[n²])` -/
def P14842998427552617617.Spec : Prop :=
  ∀ n, P14842998427552617617.a n = A057080 n

end A057080

/-! ## A057080.P5676355611507137670

`record[Δ[A105045(n)]]`
-/

namespace A057080.P5676355611507137670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057080.P5676355611507137670

namespace A057080

/-- `record[Δ[A105045(n)]]` -/
def P5676355611507137670.Spec : Prop :=
  ∀ n, P5676355611507137670.a n = A057080 n

end A057080

/-! ## A057080.P17745003261892459774

`∑[A086903(n)]-1`
-/

namespace A057080.P17745003261892459774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057080.P17745003261892459774

namespace A057080

/-- `∑[A086903(n)]-1` -/
def P17745003261892459774.Spec : Prop :=
  ∀ n, P17745003261892459774.a n = A057080 n

end A057080

/-! ## A057080.P6606135931131301562

`record[A177187(n+1)]`
-/

namespace A057080.P6606135931131301562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057080.P6606135931131301562

namespace A057080

/-- `record[A177187(n+1)]` -/
def P6606135931131301562.Spec : Prop :=
  ∀ n, P6606135931131301562.a n = A057080 n

end A057080

/-! ## A057080.P15237083804830018788

`record[Δ[A103200(n+1)]]`
-/

namespace A057080.P15237083804830018788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057080.P15237083804830018788

namespace A057080

/-- `record[Δ[A103200(n+1)]]` -/
def P15237083804830018788.Spec : Prop :=
  ∀ n, P15237083804830018788.a n = A057080 n

end A057080

/-! ## A057080.P2836585194131585108

`record[Δ[A105076(n+1)]]`
-/

namespace A057080.P2836585194131585108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057080.P2836585194131585108

namespace A057080

/-- `record[Δ[A105076(n+1)]]` -/
def P2836585194131585108.Spec : Prop :=
  ∀ n, P2836585194131585108.a n = A057080 n

end A057080

/-! ## A057080.P2386717398676786944

`∑[2*A001091(n)]-1`
-/

namespace A057080.P2386717398676786944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057080.P2386717398676786944

namespace A057080

/-- `∑[2*A001091(n)]-1` -/
def P2386717398676786944.Spec : Prop :=
  ∀ n, P2386717398676786944.a n = A057080 n

end A057080

/-! ## A057080.P17676412750127352176

`2*A145607(n+1)+1`
-/

namespace A057080.P17676412750127352176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145607 (n + 1) + 1

end

end A057080.P17676412750127352176

namespace A057080

/-- `2*A145607(n+1)+1` -/
def P17676412750127352176.Spec : Prop :=
  ∀ n, P17676412750127352176.a n = A057080 n

end A057080

/-! ## A057080.P10810684058355524295

`2*A253470(n+1)-1`
-/

namespace A057080.P10810684058355524295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253470 (n + 1) - 1

end

end A057080.P10810684058355524295

namespace A057080

/-- `2*A253470(n+1)-1` -/
def P10810684058355524295.Spec : Prop :=
  ∀ n, P10810684058355524295.a n = A057080 n

end A057080

/-! ## A057080.P11492441579700022953

`A077245(n)-A001090(n)`
-/

namespace A057080.P11492441579700022953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077245 n - A001090 n

end

end A057080.P11492441579700022953

namespace A057080

/-- `A077245(n)-A001090(n)` -/
def P11492441579700022953.Spec : Prop :=
  ∀ n, P11492441579700022953.a n = A057080 n

end A057080

/-! ## A057080.P8610235158969159966

`A077246(n)-A001091(n)`
-/

namespace A057080.P8610235158969159966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077246 n - A001091 n

end

end A057080.P8610235158969159966

namespace A057080

/-- `A077246(n)-A001091(n)` -/
def P8610235158969159966.Spec : Prop :=
  ∀ n, P8610235158969159966.a n = A057080 n

end A057080

/-! ## A057080.P10731117903605398656

`A077244(n)-A077246(n)`
-/

namespace A057080.P10731117903605398656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077244 n - A077246 n

end

end A057080.P10731117903605398656

namespace A057080

/-- `A077244(n)-A077246(n)` -/
def P10731117903605398656.Spec : Prop :=
  ∀ n, P10731117903605398656.a n = A057080 n

end A057080

/-! ## A057080.P821500608970399820

`A001090(n)+∑[A070997(n)]`
-/

namespace A057080.P821500608970399820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057080.P821500608970399820

namespace A057080

/-- `A001090(n)+∑[A070997(n)]` -/
def P821500608970399820.Spec : Prop :=
  ∀ n, P821500608970399820.a n = A057080 n

end A057080

/-! ## A057080.P3020812867789697867

`A001090(n+1)+A001090(n)`
-/

namespace A057080.P3020812867789697867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1) + A001090 n

end

end A057080.P3020812867789697867

namespace A057080

/-- `A001090(n+1)+A001090(n)` -/
def P3020812867789697867.Spec : Prop :=
  ∀ n, P3020812867789697867.a n = A057080 n

end A057080

/-!
# A057081: Even-indexed Chebyshev U-polynomials evaluated at sqrt(11)/2.

The programs for A057081, the canonical program `A057081.P13507815277657479236` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057081 has offset 0).

The definition of A057081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057081.P13507815277657479236

`9*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057081

/-- `9*a(n-1)-a(n-2)` -/
def P13507815277657479236.Spec : Prop :=
  ∀ n, P13507815277657479236.a n = A057081 n

theorem P13507815277657479236.correct : P13507815277657479236.Spec := by
  intro n
  simp only [A057081]

end A057081

/-! ## A057081.P11927683062983775496

`A018913(n)+A018913(n+1)`
-/

namespace A057081.P11927683062983775496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 n + A018913 (n + 1)

end

end A057081.P11927683062983775496

namespace A057081

/-- `A018913(n)+A018913(n+1)` -/
def P11927683062983775496.Spec : Prop :=
  ∀ n, P11927683062983775496.a n = A057081 n

end A057081

/-! ## A057081.P4900697677874696656

`1/sqrt(7)*(((sqrt(11)+sqrt(7))/2)^(2*n+1)-((sqrt(11)-sqrt(7))/2)^(2*n+1))`
-/

namespace A057081.P4900697677874696656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (7 : ℝ) * (((Real.sqrt (11 : ℝ) + Real.sqrt (7 : ℝ)) / 2) ^ (2 * n + 1) - ((Real.sqrt (11 : ℝ) - Real.sqrt (7 : ℝ)) / 2) ^ (2 * n + 1))

end

end A057081.P4900697677874696656

namespace A057081

/-- `1/sqrt(7)*(((sqrt(11)+sqrt(7))/2)^(2*n+1)-((sqrt(11)-sqrt(7))/2)^(2*n+1))` -/
def P4900697677874696656.Spec : Prop :=
  ∀ n, P4900697677874696656.a n = (A057081 n : ℝ)

theorem P4900697677874696656.correct : P4900697677874696656.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A057081, Nat.add_sub_cancel, A057081.P4900697677874696656.a, A057081.P13507815277657479236.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A057081, Nat.add_sub_cancel, A057081.P4900697677874696656.a, A057081.P13507815277657479236.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A057081

/-! ## A057081.P289801296196042418

`ogf((1+x)/(1-9x+x^2))`
-/

namespace A057081.P289801296196042418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -9, 1] n

end

end A057081.P289801296196042418

namespace A057081

/-- `ogf((1+x)/(1-9x+x^2))` -/
def P289801296196042418.Spec : Prop :=
  ∀ n, P289801296196042418.a n = A057081 n

end A057081

/-! ## A057081.P11608890322728430900

`lcm(9, a(n-1))-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A057081.P11608890322728430900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - a (n - 2)

end

end A057081.P11608890322728430900

namespace A057081

/-- `lcm(9, a(n-1))-a(n-2)` -/
def P11608890322728430900.Spec : Prop :=
  ∀ n, P11608890322728430900.a n = A057081 n

end A057081

/-! ## A057081.P9887965287233738273

`Δ[A098296(n)]`
-/

namespace A057081.P9887965287233738273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057081.P9887965287233738273

namespace A057081

/-- `Δ[A098296(n)]` -/
def P9887965287233738273.Spec : Prop :=
  ∀ n, P9887965287233738273.a n = A057081 n

end A057081

/-! ## A057081.P1994611317833458976

`∑[A056918(n)]-1`
-/

namespace A057081.P1994611317833458976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A057081.P1994611317833458976

namespace A057081

/-- `∑[A056918(n)]-1` -/
def P1994611317833458976.Spec : Prop :=
  ∀ n, P1994611317833458976.a n = A057081 n

end A057081

/-! ## A057081.P1930144567470240516

`A018913(n)+∑[A070998(n)]`
-/

namespace A057081.P1930144567470240516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057081.P1930144567470240516

namespace A057081

/-- `A018913(n)+∑[A070998(n)]` -/
def P1930144567470240516.Spec : Prop :=
  ∀ n, P1930144567470240516.a n = A057081 n

end A057081

/-! ## A057081.P2580026228916172920

`A098296(n+1)-A098296(n)`
-/

namespace A057081.P2580026228916172920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098296 (n + 1) - A098296 n

end

end A057081.P2580026228916172920

namespace A057081

/-- `A098296(n+1)-A098296(n)` -/
def P2580026228916172920.Spec : Prop :=
  ∀ n, P2580026228916172920.a n = A057081 n

end A057081

/-! ## A057081.P18114686201894314851

`sqrt(A098296(2*n+1))`
-/

namespace A057081.P18114686201894314851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098296 (2 * n + 1) : ℝ)

end

end A057081.P18114686201894314851

namespace A057081

/-- `sqrt(A098296(2*n+1))` -/
def P18114686201894314851.Spec : Prop :=
  ∀ n, P18114686201894314851.a n = (A057081 n : ℝ)

end A057081

/-!
# A057083: Scaled Chebyshev U-polynomials evaluated at sqrt(3)/2; expansion of 1/(1 - 3*x + 3*x^2).

The programs for A057083, the canonical program `A057083.P13933326755086143168` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057083 has offset 0).

The definition of A057083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057083.P13933326755086143168

`3*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057083

/-- `3*(a(n-1)-a(n-2))` -/
def P13933326755086143168.Spec : Prop :=
  ∀ n, P13933326755086143168.a n = A057083 n

theorem P13933326755086143168.correct : P13933326755086143168.Spec := by
  intro n
  simp only [A057083]

end A057083

/-! ## A057083.P17961105190013327730

`∑[∑[A057681(n)]]`
-/

namespace A057083.P17961105190013327730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057083.P17961105190013327730

namespace A057083

/-- `∑[∑[A057681(n)]]` -/
def P17961105190013327730.Spec : Prop :=
  ∀ n, P17961105190013327730.a n = A057083 n

end A057083

/-! ## A057083.P13496200742145122258

`∑[A057682(n+1)]`
-/

namespace A057083.P13496200742145122258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057083.P13496200742145122258

namespace A057083

/-- `∑[A057682(n+1)]` -/
def P13496200742145122258.Spec : Prop :=
  ∀ n, P13496200742145122258.a n = A057083 n

end A057083

/-! ## A057083.P10234665447707713859

`∑[∑[A103312(n+1)]]`
-/

namespace A057083.P10234665447707713859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057083.P10234665447707713859

namespace A057083

/-- `∑[∑[A103312(n+1)]]` -/
def P10234665447707713859.Spec : Prop :=
  ∀ n, P10234665447707713859.a n = A057083 n

end A057083

/-! ## A057083.P10786338768111711731

`A000748(n)*A033999(n)`
-/

namespace A057083.P10786338768111711731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000748 n * A033999 n

end

end A057083.P10786338768111711731

namespace A057083

/-- `A000748(n)*A033999(n)` -/
def P10786338768111711731.Spec : Prop :=
  ∀ n, P10786338768111711731.a n = A057083 n

end A057083

/-! ## A057083.P6550434047438495175

`A010892(n)+2*A106233(n)`
-/

namespace A057083.P6550434047438495175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + 2 * A106233 n

end

end A057083.P6550434047438495175

namespace A057083

/-- `A010892(n)+2*A106233(n)` -/
def P6550434047438495175.Spec : Prop :=
  ∀ n, P6550434047438495175.a n = A057083 n

end A057083

/-! ## A057083.P2365840881354482502

`A101675(n)*A128019(n)`
-/

namespace A057083.P2365840881354482502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 n * A128019 n

end

end A057083.P2365840881354482502

namespace A057083

/-- `A101675(n)*A128019(n)` -/
def P2365840881354482502.Spec : Prop :=
  ∀ n, P2365840881354482502.a n = A057083 n

end A057083

/-! ## A057083.P14120956708244925724

`2*A057682(n+1)-A057681(n+1)`
-/

namespace A057083.P14120956708244925724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057682 (n + 1) - A057681 (n + 1)

end

end A057083.P14120956708244925724

namespace A057083

/-- `2*A057682(n+1)-A057681(n+1)` -/
def P14120956708244925724.Spec : Prop :=
  ∀ n, P14120956708244925724.a n = A057083 n

end A057083

/-! ## A057083.P4678687838836719194

`ogf(1/(1-3x+3x^2))`
-/

namespace A057083.P4678687838836719194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 3] n

end

end A057083.P4678687838836719194

namespace A057083

/-- `ogf(1/(1-3x+3x^2))` -/
def P4678687838836719194.Spec : Prop :=
  ∀ n, P4678687838836719194.a n = A057083 n

end A057083

/-! ## A057083.P5458130893908809610

`A140343(n+2)+A106233(n+1)`
-/

namespace A057083.P5458130893908809610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 2) + A106233 (n + 1)

end

end A057083.P5458130893908809610

namespace A057083

/-- `A140343(n+2)+A106233(n+1)` -/
def P5458130893908809610.Spec : Prop :=
  ∀ n, P5458130893908809610.a n = A057083 n

end A057083

/-! ## A057083.P12480899249652825562

`A057682(n+2)-A057681(n+2)`
-/

namespace A057083.P12480899249652825562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 2) - A057681 (n + 2)

end

end A057083.P12480899249652825562

namespace A057083

/-- `A057682(n+2)-A057681(n+2)` -/
def P12480899249652825562.Spec : Prop :=
  ∀ n, P12480899249652825562.a n = A057083 n

end A057083

/-! ## A057083.P11549406967916917058

`A057682(n+2)-A103312(n+3)`
-/

namespace A057083.P11549406967916917058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 2) - A103312 (n + 3)

end

end A057083.P11549406967916917058

namespace A057083

/-- `A057682(n+2)-A103312(n+3)` -/
def P11549406967916917058.Spec : Prop :=
  ∀ n, P11549406967916917058.a n = A057083 n

end A057083

/-! ## A057083.P17594842155669136357

`Δ[-A057681(n+2)]`
-/

namespace A057083.P17594842155669136357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057083.P17594842155669136357

namespace A057083

/-- `Δ[-A057681(n+2)]` -/
def P17594842155669136357.Spec : Prop :=
  ∀ n, P17594842155669136357.a n = A057083 n

end A057083

/-! ## A057083.P6311656604981230350

`Δ[-A103312(n+3)]`
-/

namespace A057083.P6311656604981230350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057083.P6311656604981230350

namespace A057083

/-- `Δ[-A103312(n+3)]` -/
def P6311656604981230350.Spec : Prop :=
  ∀ n, P6311656604981230350.a n = A057083 n

end A057083

/-! ## A057083.P16705953885921211856

`Δ[Δ[-A057682(n+2)]]`
-/

namespace A057083.P16705953885921211856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057682 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A057083.P16705953885921211856

namespace A057083

/-- `Δ[Δ[-A057682(n+2)]]` -/
def P16705953885921211856.Spec : Prop :=
  ∀ n, P16705953885921211856.a n = A057083 n

end A057083

/-! ## A057083.P8985805568445666297

`A134581(n+1)+A106233(n)`
-/

namespace A057083.P8985805568445666297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 (n + 1) + A106233 n

end

end A057083.P8985805568445666297

namespace A057083

/-- `A134581(n+1)+A106233(n)` -/
def P8985805568445666297.Spec : Prop :=
  ∀ n, P8985805568445666297.a n = A057083 n

end A057083

/-! ## A057083.P15768877056071866108

`A057681(n+2)-A057681(n+3)`
-/

namespace A057083.P15768877056071866108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 2) - A057681 (n + 3)

end

end A057083.P15768877056071866108

namespace A057083

/-- `A057681(n+2)-A057681(n+3)` -/
def P15768877056071866108.Spec : Prop :=
  ∀ n, P15768877056071866108.a n = A057083 n

end A057083

/-! ## A057083.P5060327529485965516

`A134581(n+1)+A134581(n+1)-A010892(n)`
-/

namespace A057083.P5060327529485965516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 (n + 1) + (A134581 (n + 1) - A010892 n)

end

end A057083.P5060327529485965516

namespace A057083

/-- `A134581(n+1)+A134581(n+1)-A010892(n)` -/
def P5060327529485965516.Spec : Prop :=
  ∀ n, P5060327529485965516.a n = A057083 n

end A057083

/-! ## A057083.P4510733600850924391

`floor(A307395(n+1)/3)`
-/

namespace A057083.P4510733600850924391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307395 (n + 1) : ℚ) / 3⌋

end

end A057083.P4510733600850924391

namespace A057083

/-- `floor(A307395(n+1)/3)` -/
def P4510733600850924391.Spec : Prop :=
  ∀ n, P4510733600850924391.a n = A057083 n

end A057083

/-!
# A057084: Scaled Chebyshev U-polynomials evaluated at sqrt(2).

The programs for A057084, the canonical program `A057084.P1105769528265818203` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057084 has offset 0).

The definition of A057084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057084.P1105769528265818203

`8*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057084

/-- `8*(a(n-1)-a(n-2))` -/
def P1105769528265818203.Spec : Prop :=
  ∀ n, P1105769528265818203.a n = A057084 n

theorem P1105769528265818203.correct : P1105769528265818203.Spec := by
  intro n
  simp only [A057084]

end A057084

/-! ## A057084.P15087966468147187622

`ogf(1/(1-8x+8x^2))`
-/

namespace A057084.P15087966468147187622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 8] n

end

end A057084.P15087966468147187622

namespace A057084

/-- `ogf(1/(1-8x+8x^2))` -/
def P15087966468147187622.Spec : Prop :=
  ∀ n, P15087966468147187622.a n = A057084 n

end A057084

/-! ## A057084.P11212167931320914015

`∑[A164591(n)]`
-/

namespace A057084.P11212167931320914015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057084.P11212167931320914015

namespace A057084

/-- `∑[A164591(n)]` -/
def P11212167931320914015.Spec : Prop :=
  ∀ n, P11212167931320914015.a n = A057084 n

end A057084

/-! ## A057084.P4560882621401808167

`2^n*A007070(n)`
-/

namespace A057084.P4560882621401808167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A007070 n

end

end A057084.P4560882621401808167

namespace A057084

/-- `2^n*A007070(n)` -/
def P4560882621401808167.Spec : Prop :=
  ∀ n, P4560882621401808167.a n = A057084 n

end A057084

/-! ## A057084.P3845531334456837031

`2^n*∑[A007052(n)]`
-/

namespace A057084.P3845531334456837031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057084.P3845531334456837031

namespace A057084

/-- `2^n*∑[A007052(n)]` -/
def P3845531334456837031.Spec : Prop :=
  ∀ n, P3845531334456837031.a n = A057084 n

end A057084

/-! ## A057084.P7578384378227814116

`2^n*Δ[A006012(n)]`
-/

namespace A057084.P7578384378227814116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A057084.P7578384378227814116

namespace A057084

/-- `2^n*Δ[A006012(n)]` -/
def P7578384378227814116.Spec : Prop :=
  ∀ n, P7578384378227814116.a n = A057084 n

end A057084

/-! ## A057084.P10059073062730057667

`2^n*A204089(n+1)`
-/

namespace A057084.P10059073062730057667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A204089 (n + 1)

end

end A057084.P10059073062730057667

namespace A057084

/-- `2^n*A204089(n+1)` -/
def P10059073062730057667.Spec : Prop :=
  ∀ n, P10059073062730057667.a n = A057084 n

end A057084

/-! ## A057084.P6913867780774127829

`2^(n-1)*A060995(n+2)`
-/

namespace A057084.P6913867780774127829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A060995 (n + 2) : ℚ)

end

end A057084.P6913867780774127829

namespace A057084

/-- `2^(n-1)*A060995(n+2)` -/
def P6913867780774127829.Spec : Prop :=
  ∀ n, P6913867780774127829.a n = (A057084 n : ℚ)

end A057084

/-! ## A057084.P1366785791433339584

`2^n*A062112(2*(n+1))`
-/

namespace A057084.P1366785791433339584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A062112 (2 * (n + 1))

end

end A057084.P1366785791433339584

namespace A057084

/-- `2^n*A062112(2*(n+1))` -/
def P1366785791433339584.Spec : Prop :=
  ∀ n, P1366785791433339584.a n = A057084 n

end A057084

/-! ## A057084.P8117833733776709957

`A084130(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A057084.P8117833733776709957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084130 n + 4 * a (n - 1)

end

end A057084.P8117833733776709957

namespace A057084

/-- `A084130(n)+4*a(n-1)` -/
def P8117833733776709957.Spec : Prop :=
  ∀ n, P8117833733776709957.a n = A057084 n

end A057084

/-! ## A057084.P16654436272985960427

`a(n-1)+A123357(n)+a(n-1)` with `a(0)=1`
-/

namespace A057084.P16654436272985960427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A123357 n + a (n - 1))

end

end A057084.P16654436272985960427

namespace A057084

/-- `a(n-1)+A123357(n)+a(n-1)` -/
def P16654436272985960427.Spec : Prop :=
  ∀ n, P16654436272985960427.a n = A057084 n

end A057084

/-! ## A057084.P1357693054460367642

`A164546(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A057084.P1357693054460367642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164546 n - (a (n - 1) + a (n - 1))

end

end A057084.P1357693054460367642

namespace A057084

/-- `A164546(n)-(a(n-1)+a(n-1))` -/
def P1357693054460367642.Spec : Prop :=
  ∀ n, P1357693054460367642.a n = A057084 n

end A057084

/-! ## A057084.P14880383807931823638

`∑[A007052(n)]*A000079(n)`
-/

namespace A057084.P14880383807931823638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A057084.P14880383807931823638

namespace A057084

/-- `∑[A007052(n)]*A000079(n)` -/
def P14880383807931823638.Spec : Prop :=
  ∀ n, P14880383807931823638.a n = A057084 n

end A057084

/-! ## A057084.P8703460595643933251

`Δ[A006012(n)]*A000079(n)`
-/

namespace A057084.P8703460595643933251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A057084.P8703460595643933251

namespace A057084

/-- `Δ[A006012(n)]*A000079(n)` -/
def P8703460595643933251.Spec : Prop :=
  ∀ n, P8703460595643933251.a n = A057084 n

end A057084

/-! ## A057084.P6013948995642552672

`A007070(n)*A011782(n+1)`
-/

namespace A057084.P6013948995642552672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n * A011782 (n + 1)

end

end A057084.P6013948995642552672

namespace A057084

/-- `A007070(n)*A011782(n+1)` -/
def P6013948995642552672.Spec : Prop :=
  ∀ n, P6013948995642552672.a n = A057084 n

end A057084

/-! ## A057084.P9237152462101521725

`A007070(n)*A131577(n+1)`
-/

namespace A057084.P9237152462101521725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n * A131577 (n + 1)

end

end A057084.P9237152462101521725

namespace A057084

/-- `A007070(n)*A131577(n+1)` -/
def P9237152462101521725.Spec : Prop :=
  ∀ n, P9237152462101521725.a n = A057084 n

end A057084

/-! ## A057084.P11191826790853619447

`A003480(n)*A151821(n+1)`
-/

namespace A057084.P11191826790853619447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A151821 (n + 1)

end

end A057084.P11191826790853619447

namespace A057084

/-- `A003480(n)*A151821(n+1)` -/
def P11191826790853619447.Spec : Prop :=
  ∀ n, P11191826790853619447.a n = A057084 n

end A057084

/-! ## A057084.P3857286825724989094

`A084068(n+1)*A094015(n)`
-/

namespace A057084.P3857286825724989094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) * A094015 n

end

end A057084.P3857286825724989094

namespace A057084

/-- `A084068(n+1)*A094015(n)` -/
def P3857286825724989094.Spec : Prop :=
  ∀ n, P3857286825724989094.a n = A057084 n

end A057084

/-! ## A057084.P2146983723553416786

`A007070(n)*A016116(2*n)`
-/

namespace A057084.P2146983723553416786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n * A016116 (2 * n)

end

end A057084.P2146983723553416786

namespace A057084

/-- `A007070(n)*A016116(2*n)` -/
def P2146983723553416786.Spec : Prop :=
  ∀ n, P2146983723553416786.a n = A057084 n

end A057084

/-! ## A057084.P6190606106939806691

`A003480(n)*A029746(2*n)`
-/

namespace A057084.P6190606106939806691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n * A029746 (2 * n)

end

end A057084.P6190606106939806691

namespace A057084

/-- `A003480(n)*A029746(2*n)` -/
def P6190606106939806691.Spec : Prop :=
  ∀ n, P6190606106939806691.a n = A057084 n

end A057084

/-!
# A057085: a(n) = 9*a(n-1) - 9*a(n-2) for n>1, with a(0)=0, a(1)=1.

The programs for A057085, the canonical program `A057085.P8255647662605330836` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057085 has offset 0).

The definition of A057085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-9*a(n-2)` (program `A057085.P8255647662605330836`, by `A057085.P8255647662605330836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A057085.P8129011414991569875

`9*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A057085.P8129011414991569875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * (a (n - 1) - a (n - 2))

end

end A057085.P8129011414991569875

namespace A057085

/-- `9*(a(n-1)-a(n-2))` -/
def P8129011414991569875.Spec : Prop :=
  ∀ n, P8129011414991569875.a n = A057085 n

theorem P8129011414991569875.correct : P8129011414991569875.Spec := by
  intro n
  simp only [A057085, Nat.add_sub_cancel, A057085.P8129011414991569875.a, A057085.P8255647662605330836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057085

/-! ## A057085.P8255647662605330836

`9*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057085

/-- `9*a(n-1)-9*a(n-2)` -/
def P8255647662605330836.Spec : Prop :=
  ∀ n, P8255647662605330836.a n = A057085 n

theorem P8255647662605330836.correct : P8255647662605330836.Spec := by
  intro n
  simp only [A057085]

end A057085

/-! ## A057085.P13583798132835992278

`A001906(n)*3^(n-1)`
-/

namespace A057085.P13583798132835992278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A057085.P13583798132835992278

namespace A057085

/-- `A001906(n)*3^(n-1)` -/
def P13583798132835992278.Spec : Prop :=
  ∀ n, P13583798132835992278.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P10891673345274247118

`A000045(2*n)*3^(n-1)`
-/

namespace A057085.P10891673345274247118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A057085.P10891673345274247118

namespace A057085

/-- `A000045(2*n)*3^(n-1)` -/
def P10891673345274247118.Spec : Prop :=
  ∀ n, P10891673345274247118.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P9552052727753252872

`A001906(n)*A000244(n)/3`
-/

namespace A057085.P9552052727753252872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 n * A000244 n : ℚ) / 3

end

end A057085.P9552052727753252872

namespace A057085

/-- `A001906(n)*A000244(n)/3` -/
def P9552052727753252872.Spec : Prop :=
  ∀ n, P9552052727753252872.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P7616018634090344498

`ogf(x/(1-9x+9x^2))`
-/

namespace A057085.P7616018634090344498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 9] n

end

end A057085.P7616018634090344498

namespace A057085

/-- `ogf(x/(1-9x+9x^2))` -/
def P7616018634090344498.Spec : Prop :=
  ∀ n, P7616018634090344498.a n = A057085 n

end A057085

/-! ## A057085.P4314787849745919588

`(a(n-1)-a(n-2))/(1/3)²` with `a(0)=0, a(1)=1`
-/

namespace A057085.P4314787849745919588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 3) ^ 2

end

end A057085.P4314787849745919588

namespace A057085

/-- `(a(n-1)-a(n-2))/(1/3)²` -/
def P4314787849745919588.Spec : Prop :=
  ∀ n, P4314787849745919588.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P15229387867201228688

`A087426(n)/3`
-/

namespace A057085.P15229387867201228688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087426 n : ℚ) / 3

end

end A057085.P15229387867201228688

namespace A057085

/-- `A087426(n)/3` -/
def P15229387867201228688.Spec : Prop :=
  ∀ n, P15229387867201228688.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P5619902925135568306

`3^n/3*record[A000045(and(n, n+1))]`
-/

namespace A057085.P5619902925135568306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land n (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A057085.P5619902925135568306

namespace A057085

/-- `3^n/3*record[A000045(and(n, n+1))]` -/
def P5619902925135568306.Spec : Prop :=
  ∀ n, P5619902925135568306.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P8729532615846196037

`3^n/3*∑[A000045(comp[2*(n+1)])]`
-/

namespace A057085.P8729532615846196037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A057085.P8729532615846196037

namespace A057085

/-- `3^n/3*∑[A000045(comp[2*(n+1)])]` -/
def P8729532615846196037.Spec : Prop :=
  ∀ n, P8729532615846196037.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P9739717008363877503

`A000032(n)*A099012(n)`
-/

namespace A057085.P9739717008363877503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A099012 n

end

end A057085.P9739717008363877503

namespace A057085

/-- `A000032(n)*A099012(n)` -/
def P9739717008363877503.Spec : Prop :=
  ∀ n, P9739717008363877503.a n = A057085 n

end A057085

/-! ## A057085.P9636630407156807886

`A088305(n)*A140429(n)`
-/

namespace A057085.P9636630407156807886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n * A140429 n

end

end A057085.P9636630407156807886

namespace A057085

/-- `A088305(n)*A140429(n)` -/
def P9636630407156807886.Spec : Prop :=
  ∀ n, P9636630407156807886.a n = A057085 n

end A057085

/-! ## A057085.P11901385805580348207

`A140429(n)*A324969(2*n+1)`
-/

namespace A057085.P11901385805580348207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A324969 (2 * n + 1)

end

end A057085.P11901385805580348207

namespace A057085

/-- `A140429(n)*A324969(2*n+1)` -/
def P11901385805580348207.Spec : Prop :=
  ∀ n, P11901385805580348207.a n = A057085 n

end A057085

/-! ## A057085.P15226906983447478487

`A000045(2*n)*A000244(n)/3`
-/

namespace A057085.P15226906983447478487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) * A000244 n : ℚ) / 3

end

end A057085.P15226906983447478487

namespace A057085

/-- `A000045(2*n)*A000244(n)/3` -/
def P15226906983447478487.Spec : Prop :=
  ∀ n, P15226906983447478487.a n = (A057085 n : ℚ)

end A057085

/-! ## A057085.P424800010100998224

`(A001519(n+1)-A001519(n))*A133494(n)`
-/

namespace A057085.P424800010100998224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 (n + 1) - A001519 n) * A133494 n

end

end A057085.P424800010100998224

namespace A057085

/-- `(A001519(n+1)-A001519(n))*A133494(n)` -/
def P424800010100998224.Spec : Prop :=
  ∀ n, P424800010100998224.a n = A057085 n

end A057085

/-! ## A057085.P11179329800349363334

`(A124302(n+1)-A124302(n))*A001906(n)`
-/

namespace A057085.P11179329800349363334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124302 (n + 1) - A124302 n) * A001906 n

end

end A057085.P11179329800349363334

namespace A057085

/-- `(A124302(n+1)-A124302(n))*A001906(n)` -/
def P11179329800349363334.Spec : Prop :=
  ∀ n, P11179329800349363334.a n = A057085 n

end A057085

/-!
# A057086: Scaled Chebyshev U-polynomials evaluated at sqrt(10)/2.

The programs for A057086, the canonical program `A057086.P8351732154881151313` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057086 has offset 0).

The definition of A057086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057086.P8351732154881151313

`10*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057086

/-- `10*(a(n-1)-a(n-2))` -/
def P8351732154881151313.Spec : Prop :=
  ∀ n, P8351732154881151313.a n = A057086 n

theorem P8351732154881151313.correct : P8351732154881151313.Spec := by
  intro n
  simp only [A057086]

end A057086

/-! ## A057086.P5664059574762323463

`ogf(1/(1-10x+10x^2))`
-/

namespace A057086.P5664059574762323463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 10] n

end

end A057086.P5664059574762323463

namespace A057086

/-- `ogf(1/(1-10x+10x^2))` -/
def P5664059574762323463.Spec : Prop :=
  ∀ n, P5664059574762323463.a n = A057086 n

end A057086

/-! ## A057086.P6224617981678538892

`∑[A176174(n+1)]`
-/

namespace A057086.P6224617981678538892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057086.P6224617981678538892

namespace A057086

/-- `∑[A176174(n+1)]` -/
def P6224617981678538892.Spec : Prop :=
  ∀ n, P6224617981678538892.a n = A057086 n

end A057086

/-! ## A057086.P8135855487620695687

`A177187(n+1)*A286508(n)`
-/

namespace A057086.P8135855487620695687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (n + 1) * A286508 n

end

end A057086.P8135855487620695687

namespace A057086

/-- `A177187(n+1)*A286508(n)` -/
def P8135855487620695687.Spec : Prop :=
  ∀ n, P8135855487620695687.a n = A057086 n

end A057086

/-! ## A057086.P17944104147244211651

`A206819(∑[n])`
-/

namespace A057086.P17944104147244211651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206819 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057086.P17944104147244211651

namespace A057086

/-- `A206819(∑[n])` -/
def P17944104147244211651.Spec : Prop :=
  ∀ n, P17944104147244211651.a n = A057086 n

end A057086

/-! ## A057086.P14362221038770564711

`record[A010054(n)*A206819(n)]`
-/

namespace A057086.P14362221038770564711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A206819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P14362221038770564711

namespace A057086

/-- `record[A010054(n)*A206819(n)]` -/
def P14362221038770564711.Spec : Prop :=
  ∀ n, P14362221038770564711.a n = A057086 n

end A057086

/-! ## A057086.P9654207906200982861

`record[A206819(n)/A007318(n)]`
-/

namespace A057086.P9654207906200982861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P9654207906200982861

namespace A057086

/-- `record[A206819(n)/A007318(n)]` -/
def P9654207906200982861.Spec : Prop :=
  ∀ n, P9654207906200982861.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P14931474384784590880

`record[A206819(n)/A124927(n)]`
-/

namespace A057086.P14931474384784590880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A124927 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P14931474384784590880

namespace A057086

/-- `record[A206819(n)/A124927(n)]` -/
def P14931474384784590880.Spec : Prop :=
  ∀ n, P14931474384784590880.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P15421288014910557147

`record[A206819(n)/A124928(n)]`
-/

namespace A057086.P15421288014910557147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A124928 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P15421288014910557147

namespace A057086

/-- `record[A206819(n)/A124928(n)]` -/
def P15421288014910557147.Spec : Prop :=
  ∀ n, P15421288014910557147.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P13997033549960988119

`record[A206819(n)/A285116(n)]`
-/

namespace A057086.P13997033549960988119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A285116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P13997033549960988119

namespace A057086

/-- `record[A206819(n)/A285116(n)]` -/
def P13997033549960988119.Spec : Prop :=
  ∀ n, P13997033549960988119.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P18380594392799589810

`record[A206819(n)/A001263(n+1)]`
-/

namespace A057086.P18380594392799589810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P18380594392799589810

namespace A057086

/-- `record[A206819(n)/A001263(n+1)]` -/
def P18380594392799589810.Spec : Prop :=
  ∀ n, P18380594392799589810.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P14808214814428718415

`record[A206819(n)/A047812(n+1)]`
-/

namespace A057086.P14808214814428718415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A047812 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P14808214814428718415

namespace A057086

/-- `record[A206819(n)/A047812(n+1)]` -/
def P14808214814428718415.Spec : Prop :=
  ∀ n, P14808214814428718415.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P15696967222779022058

`record[A206819(n)/ceil(A135087(n)/4)]`
-/

namespace A057086.P15696967222779022058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (⌈(A135087 n : ℚ) / 4⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P15696967222779022058

namespace A057086

/-- `record[A206819(n)/ceil(A135087(n)/4)]` -/
def P15696967222779022058.Spec : Prop :=
  ∀ n, P15696967222779022058.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P13220473754075139867

`record[A206819(n)/ceil(A135089(n)/5)]`
-/

namespace A057086.P13220473754075139867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (⌈(A135089 n : ℚ) / 5⌉ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P13220473754075139867

namespace A057086

/-- `record[A206819(n)/ceil(A135089(n)/5)]` -/
def P13220473754075139867.Spec : Prop :=
  ∀ n, P13220473754075139867.a n = (A057086 n : ℚ)

end A057086

/-! ## A057086.P2969619918958568906

`record[A206819(n)/A176348(n)]`
-/

namespace A057086.P2969619918958568906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 n : ℚ) / (A176348 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057086.P2969619918958568906

namespace A057086

/-- `record[A206819(n)/A176348(n)]` -/
def P2969619918958568906.Spec : Prop :=
  ∀ n, P2969619918958568906.a n = (A057086 n : ℚ)

end A057086

/-!
# A057087: Scaled Chebyshev U-polynomials evaluated at i. Generalized Fibonacci sequence.

The programs for A057087, the canonical program `A057087.P11299298562210971782` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057087 has offset 0).

The definition of A057087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057087.P11299298562210971782

`4*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057087

/-- `4*(a(n-1)+a(n-2))` -/
def P11299298562210971782.Spec : Prop :=
  ∀ n, (P11299298562210971782.a n : ℤ) = A057087 n

theorem P11299298562210971782.correct : P11299298562210971782.Spec := by
  intro n
  simp only [A057087]

end A057087

/-! ## A057087.P7716843168622407642

`A000129(n+1)*A000079(n)`
-/

namespace A057087.P7716843168622407642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000079 n

end

end A057087.P7716843168622407642

namespace A057087

/-- `A000129(n+1)*A000079(n)` -/
def P7716843168622407642.Spec : Prop :=
  ∀ n, P7716843168622407642.a n = A057087 n

end A057087

/-! ## A057087.P4777958433305651678

`ogf(1/(1-4x-4x^2))`
-/

namespace A057087.P4777958433305651678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -4] n

end

end A057087.P4777958433305651678

namespace A057087

/-- `ogf(1/(1-4x-4x^2))` -/
def P4777958433305651678.Spec : Prop :=
  ∀ n, P4777958433305651678.a n = A057087 n

end A057087

/-! ## A057087.P11283689410102943912

`4*(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A057087.P11283689410102943912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A057087.P11283689410102943912

namespace A057087

/-- `4*(a(n-1)-floor(-a(n-2)))` -/
def P11283689410102943912.Spec : Prop :=
  ∀ n, P11283689410102943912.a n = A057087 n

end A057087

/-! ## A057087.P3917876675171283764

`4*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A057087.P3917876675171283764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A057087.P3917876675171283764

namespace A057087

/-- `4*(a(n-1)-ceil(-a(n-2)))` -/
def P3917876675171283764.Spec : Prop :=
  ∀ n, P3917876675171283764.a n = A057087 n

end A057087

/-! ## A057087.P5291114523106963945

`4*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A057087.P5291114523106963945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A057087.P5291114523106963945

namespace A057087

/-- `4*(a(n-1)-round(-a(n-2)))` -/
def P5291114523106963945.Spec : Prop :=
  ∀ n, P5291114523106963945.a n = A057087 n

end A057087

/-! ## A057087.P13203930279180091696

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=1, a(1)=4`
-/

namespace A057087.P13203930279180091696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A057087.P13203930279180091696

namespace A057087

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P13203930279180091696.Spec : Prop :=
  ∀ n, P13203930279180091696.a n = (A057087 n : ℚ)

end A057087

/-! ## A057087.P14563693858749114661

`4*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=4`
-/

namespace A057087.P14563693858749114661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A057087.P14563693858749114661

namespace A057087

/-- `4*(a(n-1)-(char[1]-a(n-2)))` -/
def P14563693858749114661.Spec : Prop :=
  ∀ n, P14563693858749114661.a n = A057087 n

end A057087

/-! ## A057087.P1465480547923448694

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A057087.P1465480547923448694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A057087.P1465480547923448694

namespace A057087

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P1465480547923448694.Spec : Prop :=
  ∀ n, P1465480547923448694.a n = A057087 n

end A057087

/-! ## A057087.P13819745274598652365

`abs(A077985(n))*2^n`
-/

namespace A057087.P13819745274598652365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n| * (2 ^ n : ℤ)

end

end A057087.P13819745274598652365

namespace A057087

/-- `abs(A077985(n))*2^n` -/
def P13819745274598652365.Spec : Prop :=
  ∀ n, P13819745274598652365.a n = A057087 n

end A057087

/-! ## A057087.P261141239971611472

`2^n*∑[A001333(n)]`
-/

namespace A057087.P261141239971611472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A057087.P261141239971611472

namespace A057087

/-- `2^n*∑[A001333(n)]` -/
def P261141239971611472.Spec : Prop :=
  ∀ n, P261141239971611472.a n = A057087 n

end A057087

/-! ## A057087.P3649420245412827165

`2^n*Δ[A024537(n)]`
-/

namespace A057087.P3649420245412827165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A057087.P3649420245412827165

namespace A057087

/-- `2^n*Δ[A024537(n)]` -/
def P3649420245412827165.Spec : Prop :=
  ∀ n, P3649420245412827165.a n = A057087 n

end A057087

/-! ## A057087.P2770664207982902912

`2^n*A215928(n+1)`
-/

namespace A057087.P2770664207982902912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A215928 (n + 1)

end

end A057087.P2770664207982902912

namespace A057087

/-- `2^n*A215928(n+1)` -/
def P2770664207982902912.Spec : Prop :=
  ∀ n, P2770664207982902912.a n = A057087 n

end A057087

/-! ## A057087.P11634959465174297867

`A086347(n)-a(n-1)` with `a(0)=1`
-/

namespace A057087.P11634959465174297867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086347 n - a (n - 1)

end

end A057087.P11634959465174297867

namespace A057087

/-- `A086347(n)-a(n-1)` -/
def P11634959465174297867.Spec : Prop :=
  ∀ n, P11634959465174297867.a n = A057087 n

end A057087

/-! ## A057087.P503276923406716187

`2^n*Δ[A171842(n+1)]`
-/

namespace A057087.P503276923406716187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A057087.P503276923406716187

namespace A057087

/-- `2^n*Δ[A171842(n+1)]` -/
def P503276923406716187.Spec : Prop :=
  ∀ n, P503276923406716187.a n = A057087 n

end A057087

/-! ## A057087.P5154851553309386633

`2^(n-1)*A052542(n+1)`
-/

namespace A057087.P5154851553309386633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052542 (n + 1) : ℚ)

end

end A057087.P5154851553309386633

namespace A057087

/-- `2^(n-1)*A052542(n+1)` -/
def P5154851553309386633.Spec : Prop :=
  ∀ n, P5154851553309386633.a n = (A057087 n : ℚ)

end A057087

/-! ## A057087.P7847672079211407014

`2^(n-1)*A163271(n+2)`
-/

namespace A057087.P7847672079211407014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A163271 (n + 2) : ℚ)

end

end A057087.P7847672079211407014

namespace A057087

/-- `2^(n-1)*A163271(n+2)` -/
def P7847672079211407014.Spec : Prop :=
  ∀ n, P7847672079211407014.a n = (A057087 n : ℚ)

end A057087

/-! ## A057087.P16380605919148483226

`A084128(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A057087.P16380605919148483226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084128 n + 2 * a (n - 1)

end

end A057087.P16380605919148483226

namespace A057087

/-- `A084128(n)+2*a(n-1)` -/
def P16380605919148483226.Spec : Prop :=
  ∀ n, P16380605919148483226.a n = A057087 n

end A057087

/-! ## A057087.P12506951797922975169

`A094013(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A057087.P12506951797922975169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094013 n + 4 * a (n - 1)

end

end A057087.P12506951797922975169

namespace A057087

/-- `A094013(n)+4*a(n-1)` -/
def P12506951797922975169.Spec : Prop :=
  ∀ n, P12506951797922975169.a n = A057087 n

end A057087

/-! ## A057087.P15415463247905907343

`A106568(n)+A094013(n)`
-/

namespace A057087.P15415463247905907343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106568 n + A094013 n

end

end A057087.P15415463247905907343

namespace A057087

/-- `A106568(n)+A094013(n)` -/
def P15415463247905907343.Spec : Prop :=
  ∀ n, P15415463247905907343.a n = A057087 n

end A057087

/-!
# A057088: Scaled Chebyshev U-polynomials evaluated at i*sqrt(5)/2. Generalized Fibonacci sequence.

The programs for A057088, the canonical program `A057088.P10533869752876412118` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057088 has offset 0).

The definition of A057088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057088.P10533869752876412118

`5*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057088

/-- `5*(a(n-1)+a(n-2))` -/
def P10533869752876412118.Spec : Prop :=
  ∀ n, (P10533869752876412118.a n : ℤ) = A057088 n

theorem P10533869752876412118.correct : P10533869752876412118.Spec := by
  intro n
  simp only [A057088]

end A057088

/-! ## A057088.P6681486624926578743

`ogf(1/(1-5x-5x^2))`
-/

namespace A057088.P6681486624926578743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, -5] n

end

end A057088.P6681486624926578743

namespace A057088

/-- `ogf(1/(1-5x-5x^2))` -/
def P6681486624926578743.Spec : Prop :=
  ∀ n, P6681486624926578743.a n = A057088 n

end A057088

/-! ## A057088.P16035827541842798732

`ceil(sqrt(5)*floor(ϕ²*a(n-1)))` with `a(0)=1`
-/

namespace A057088.P16035827541842798732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (5 : ℝ) * (⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ : ℝ)⌉

end

end A057088.P16035827541842798732

namespace A057088

/-- `ceil(sqrt(5)*floor(ϕ²*a(n-1)))` -/
def P16035827541842798732.Spec : Prop :=
  ∀ n, P16035827541842798732.a n = A057088 n

end A057088

/-! ## A057088.P14351697416368695996

`5*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`
-/

namespace A057088.P14351697416368695996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  5 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A057088.P14351697416368695996

namespace A057088

/-- `5*(2-(4/2-a(n-1)-a(n-2)))` -/
def P14351697416368695996.Spec : Prop :=
  ∀ n, P14351697416368695996.a n = (A057088 n : ℚ)

end A057088

/-! ## A057088.P14616732711072823491

`A180033(n)-a(n-1)` with `a(0)=1`
-/

namespace A057088.P14616732711072823491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180033 n - a (n - 1)

end

end A057088.P14616732711072823491

namespace A057088

/-- `A180033(n)-a(n-1)` -/
def P14616732711072823491.Spec : Prop :=
  ∀ n, P14616732711072823491.a n = A057088 n

end A057088

/-! ## A057088.P7657888917143613351

`A106565(n+1)/5`
-/

namespace A057088.P7657888917143613351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106565 (n + 1) : ℚ) / 5

end

end A057088.P7657888917143613351

namespace A057088

/-- `A106565(n+1)/5` -/
def P7657888917143613351.Spec : Prop :=
  ∀ n, P7657888917143613351.a n = (A057088 n : ℚ)

end A057088

/-! ## A057088.P17948272147787360241

`record[A342120(A055999(n))]`
-/

namespace A057088.P17948272147787360241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057088.P17948272147787360241

namespace A057088

/-- `record[A342120(A055999(n))]` -/
def P17948272147787360241.Spec : Prop :=
  ∀ n, P17948272147787360241.a n = A057088 n

end A057088

/-! ## A057088.P5519290386616706424

`record[A342120(A155212(n)+2)]`
-/

namespace A057088.P5519290386616706424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A155212 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057088.P5519290386616706424

namespace A057088

/-- `record[A342120(A155212(n)+2)]` -/
def P5519290386616706424.Spec : Prop :=
  ∀ n, P5519290386616706424.a n = A057088 n

end A057088

/-! ## A057088.P1680032458475664115

`record[A342120(A027379(n)+n)]`
-/

namespace A057088.P1680032458475664115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057088.P1680032458475664115

namespace A057088

/-- `record[A342120(A027379(n)+n)]` -/
def P1680032458475664115.Spec : Prop :=
  ∀ n, P1680032458475664115.a n = A057088 n

end A057088

/-!
# A057089: Scaled Chebyshev U-polynomials evaluated at i*sqrt(6)/2. Generalized Fibonacci sequence.

The programs for A057089, the canonical program `A057089.P10280607693125032727` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057089 has offset 0).

The definition of A057089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057089.P10280607693125032727

`6*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057089

/-- `6*a(n-1)+6*a(n-2)` -/
def P10280607693125032727.Spec : Prop :=
  ∀ n, (P10280607693125032727.a n : ℤ) = A057089 n

theorem P10280607693125032727.correct : P10280607693125032727.Spec := by
  intro n
  simp only [A057089]

end A057089

/-! ## A057089.P1436509858911645044

`ogf(1/(1-6x-6x^2))`
-/

namespace A057089.P1436509858911645044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, -6] n

end

end A057089.P1436509858911645044

namespace A057089

/-- `ogf(1/(1-6x-6x^2))` -/
def P1436509858911645044.Spec : Prop :=
  ∀ n, P1436509858911645044.a n = A057089 n

end A057089

/-! ## A057089.P1861492261899463208

`6*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A057089.P1861492261899463208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 * (a (n - 1) + a (n - 2))

end

end A057089.P1861492261899463208

namespace A057089

/-- `6*(a(n-1)+a(n-2))` -/
def P1861492261899463208.Spec : Prop :=
  ∀ n, (P1861492261899463208.a n : ℤ) = A057089 n

theorem P1861492261899463208.correct : P1861492261899463208.Spec := by
  intro n
  simp only [A057089, Nat.add_sub_cancel, A057089.P1861492261899463208.a, A057089.P10280607693125032727.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A057089

/-! ## A057089.P11323509742564457976

`A180167(n)-a(n-1)` with `a(0)=1`
-/

namespace A057089.P11323509742564457976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180167 n - a (n - 1)

end

end A057089.P11323509742564457976

namespace A057089

/-- `A180167(n)-a(n-1)` -/
def P11323509742564457976.Spec : Prop :=
  ∀ n, P11323509742564457976.a n = A057089 n

end A057089

/-! ## A057089.P16936403915167336028

`A041023(n)*A056452(n)`
-/

namespace A057089.P16936403915167336028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 n * A056452 n

end

end A057089.P16936403915167336028

namespace A057089

/-- `A041023(n)*A056452(n)` -/
def P16936403915167336028.Spec : Prop :=
  ∀ n, P16936403915167336028.a n = A057089 n

end A057089

/-! ## A057089.P13687383883329376793

`A026549(n)*A145542(n+1)`
-/

namespace A057089.P13687383883329376793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A145542 (n + 1)

end

end A057089.P13687383883329376793

namespace A057089

/-- `A026549(n)*A145542(n+1)` -/
def P13687383883329376793.Spec : Prop :=
  ∀ n, P13687383883329376793.a n = A057089 n

end A057089

/-! ## A057089.P8750604728334946040

`A221461(n+2)/6`
-/

namespace A057089.P8750604728334946040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221461 (n + 2) : ℚ) / 6

end

end A057089.P8750604728334946040

namespace A057089

/-- `A221461(n+2)/6` -/
def P8750604728334946040.Spec : Prop :=
  ∀ n, P8750604728334946040.a n = (A057089 n : ℚ)

end A057089

/-! ## A057089.P16385818216077634229

`A342120(n+2+A054254(n+6))`
-/

namespace A057089.P16385818216077634229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 ((n + 2 : ℤ) + A054254 (n + 6)).toNat

end

end A057089.P16385818216077634229

namespace A057089

/-- `A342120(n+2+A054254(n+6))` -/
def P16385818216077634229.Spec : Prop :=
  ∀ n, P16385818216077634229.a n = A057089 n

end A057089

/-!
# A057090: Scaled Chebyshev U-polynomials evaluated at i*sqrt(7)/2. Generalized Fibonacci sequence.

The programs for A057090, the canonical program `A057090.P18075705426232057456` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057090 has offset 0).

The definition of A057090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057090.P18075705426232057456

`7*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057090

/-- `7*(a(n-1)+a(n-2))` -/
def P18075705426232057456.Spec : Prop :=
  ∀ n, (P18075705426232057456.a n : ℤ) = A057090 n

theorem P18075705426232057456.correct : P18075705426232057456.Spec := by
  intro n
  simp only [A057090]

end A057090

/-! ## A057090.P15472243860333678097

`ogf(1/(1-7x-7x^2))`
-/

namespace A057090.P15472243860333678097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, -7] n

end

end A057090.P15472243860333678097

namespace A057090

/-- `ogf(1/(1-7x-7x^2))` -/
def P15472243860333678097.Spec : Prop :=
  ∀ n, P15472243860333678097.a n = A057090 n

end A057090

/-! ## A057090.P654681082050810543

`A221462(n+2)/7`
-/

namespace A057090.P654681082050810543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221462 (n + 2) : ℚ) / 7

end

end A057090.P654681082050810543

namespace A057090

/-- `A221462(n+2)/7` -/
def P654681082050810543.Spec : Prop :=
  ∀ n, P654681082050810543.a n = (A057090 n : ℚ)

end A057090

/-! ## A057090.P13241205716637116122

`A342120(A155212(n+4))`
-/

namespace A057090.P13241205716637116122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A155212 (n + 4)).toNat

end

end A057090.P13241205716637116122

namespace A057090

/-- `A342120(A155212(n+4))` -/
def P13241205716637116122.Spec : Prop :=
  ∀ n, P13241205716637116122.a n = A057090 n

end A057090

/-! ## A057090.P6680904399312978007

`A342120(eq[7, A025581(n)])`
-/

namespace A057090.P6680904399312978007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A057090.P6680904399312978007

namespace A057090

/-- `A342120(eq[7, A025581(n)])` -/
def P6680904399312978007.Spec : Prop :=
  ∀ n, P6680904399312978007.a n = A057090 n

end A057090

/-! ## A057090.P11573758040786836547

`A342120(A000217(n+8)-8)`
-/

namespace A057090.P11573758040786836547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A000217 (n + 8) - 8).toNat

end

end A057090.P11573758040786836547

namespace A057090

/-- `A342120(A000217(n+8)-8)` -/
def P11573758040786836547.Spec : Prop :=
  ∀ n, P11573758040786836547.a n = A057090 n

end A057090

/-! ## A057090.P13620873458447712567

`A342120(2*n+A166136(n+5)+1)`
-/

namespace A057090.P13620873458447712567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A057090.P13620873458447712567

namespace A057090

/-- `A342120(2*n+A166136(n+5)+1)` -/
def P13620873458447712567.Spec : Prop :=
  ∀ n, P13620873458447712567.a n = A057090 n

end A057090

/-!
# A057091: Scaled Chebyshev U-polynomials evaluated at i*sqrt(2). Generalized Fibonacci sequence.

The programs for A057091, the canonical program `A057091.P2697204102337654529` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057091 has offset 0).

The definition of A057091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057091.P2697204102337654529

`8*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057091

/-- `8*(a(n-1)+a(n-2))` -/
def P2697204102337654529.Spec : Prop :=
  ∀ n, (P2697204102337654529.a n : ℤ) = A057091 n

theorem P2697204102337654529.correct : P2697204102337654529.Spec := by
  intro n
  simp only [A057091]

end A057091

/-! ## A057091.P8108923362754932307

`2^n*A090017(n+1)`
-/

namespace A057091.P8108923362754932307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A090017 (n + 1)

end

end A057091.P8108923362754932307

namespace A057091

/-- `2^n*A090017(n+1)` -/
def P8108923362754932307.Spec : Prop :=
  ∀ n, P8108923362754932307.a n = A057091 n

end A057091

/-! ## A057091.P4245845635517712324

`ogf(1/(1-8x-8x^2))`
-/

namespace A057091.P4245845635517712324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, -8] n

end

end A057091.P4245845635517712324

namespace A057091

/-- `ogf(1/(1-8x-8x^2))` -/
def P4245845635517712324.Spec : Prop :=
  ∀ n, P4245845635517712324.a n = A057091 n

end A057091

/-! ## A057091.P8131300030449990722

`A041007(n)*A094015(n)`
-/

namespace A057091.P8131300030449990722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n * A094015 n

end

end A057091.P8131300030449990722

namespace A057091

/-- `A041007(n)*A094015(n)` -/
def P8131300030449990722.Spec : Prop :=
  ∀ n, P8131300030449990722.a n = A057091 n

end A057091

/-! ## A057091.P7861729879029463324

`A041039(n)*A164683(n+1)`
-/

namespace A057091.P7861729879029463324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 n * A164683 (n + 1)

end

end A057091.P7861729879029463324

namespace A057091

/-- `A041039(n)*A164683(n+1)` -/
def P7861729879029463324.Spec : Prop :=
  ∀ n, P7861729879029463324.a n = A057091 n

end A057091

/-! ## A057091.P11065194027598308388

`A090017(n+1)*A164073(2*n+1)`
-/

namespace A057091.P11065194027598308388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) * A164073 (2 * n + 1)

end

end A057091.P11065194027598308388

namespace A057091

/-- `A090017(n+1)*A164073(2*n+1)` -/
def P11065194027598308388.Spec : Prop :=
  ∀ n, P11065194027598308388.a n = A057091 n

end A057091

/-! ## A057091.P1179906556614164660

`A090017(n+1)/A007482(n)*A189800(n+1)`
-/

namespace A057091.P1179906556614164660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090017 (n + 1) : ℚ) / (A007482 n : ℚ) * (A189800 (n + 1) : ℚ)

end

end A057091.P1179906556614164660

namespace A057091

/-- `A090017(n+1)/A007482(n)*A189800(n+1)` -/
def P1179906556614164660.Spec : Prop :=
  ∀ n, P1179906556614164660.a n = (A057091 n : ℚ)

end A057091

/-!
# A057092: Scaled Chebyshev U-polynomials evaluated at i*3/2. Generalized Fibonacci sequence.

The programs for A057092, the canonical program `A057092.P15157958238077732770` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057092 has offset 0).

The definition of A057092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057092.P15157958238077732770

`9*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057092

/-- `9*(a(n-1)+a(n-2))` -/
def P15157958238077732770.Spec : Prop :=
  ∀ n, (P15157958238077732770.a n : ℤ) = A057092 n

theorem P15157958238077732770.correct : P15157958238077732770.Spec := by
  intro n
  simp only [A057092]

end A057092

/-! ## A057092.P15886706112598697033

`ogf(1/(1-9x-9x^2))`
-/

namespace A057092.P15886706112598697033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, -9] n

end

end A057092.P15886706112598697033

namespace A057092

/-- `ogf(1/(1-9x-9x^2))` -/
def P15886706112598697033.Spec : Prop :=
  ∀ n, P15886706112598697033.a n = A057092 n

end A057092

/-! ## A057092.P4934801583375893909

`3^n*A006190(n+1)`
-/

namespace A057092.P4934801583375893909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A006190 (n + 1)

end

end A057092.P4934801583375893909

namespace A057092

/-- `3^n*A006190(n+1)` -/
def P4934801583375893909.Spec : Prop :=
  ∀ n, P4934801583375893909.a n = A057092 n

end A057092

/-! ## A057092.P4843321018847978798

`A322054(n)-a(n-1)` with `a(0)=1`
-/

namespace A057092.P4843321018847978798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322054 n - a (n - 1)

end

end A057092.P4843321018847978798

namespace A057092

/-- `A322054(n)-a(n-1)` -/
def P4843321018847978798.Spec : Prop :=
  ∀ n, P4843321018847978798.a n = A057092 n

end A057092

/-! ## A057092.P11748838307952941910

`3^(n-1)*A052906(n+1)`
-/

namespace A057092.P11748838307952941910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052906 (n + 1) : ℚ)

end

end A057092.P11748838307952941910

namespace A057092

/-- `3^(n-1)*A052906(n+1)` -/
def P11748838307952941910.Spec : Prop :=
  ∀ n, P11748838307952941910.a n = (A057092 n : ℚ)

end A057092

/-! ## A057092.P9298540113919122792

`∑[A052924(n)]*A000244(n)`
-/

namespace A057092.P9298540113919122792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A057092.P9298540113919122792

namespace A057092

/-- `∑[A052924(n)]*A000244(n)` -/
def P9298540113919122792.Spec : Prop :=
  ∀ n, P9298540113919122792.a n = A057092 n

end A057092

/-! ## A057092.P7527042687079023293

`∑[A052924(n)]*A166552(2*n+1)`
-/

namespace A057092.P7527042687079023293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A166552 (2 * n + 1)

end

end A057092.P7527042687079023293

namespace A057092

/-- `∑[A052924(n)]*A166552(2*n+1)` -/
def P7527042687079023293.Spec : Prop :=
  ∀ n, P7527042687079023293.a n = A057092 n

end A057092

/-!
# A057093: Scaled Chebyshev U-polynomials evaluated at i*sqrt(10)/2. Generalized Fibonacci sequence.

The programs for A057093, the canonical program `A057093.P5829595970408546467` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057093 has offset 0).

The definition of A057093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A057093.P5829595970408546467

`10*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A057093

/-- `10*(a(n-1)+a(n-2))` -/
def P5829595970408546467.Spec : Prop :=
  ∀ n, (P5829595970408546467.a n : ℤ) = A057093 n

theorem P5829595970408546467.correct : P5829595970408546467.Spec := by
  intro n
  simp only [A057093]

end A057093

/-! ## A057093.P12091865135597405065

`ogf(1/(1-10x-10x^2))`
-/

namespace A057093.P12091865135597405065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, -10] n

end

end A057093.P12091865135597405065

namespace A057093

/-- `ogf(1/(1-10x-10x^2))` -/
def P12091865135597405065.Spec : Prop :=
  ∀ n, P12091865135597405065.a n = A057093 n

end A057093

/-! ## A057093.P12434718394209354255

`10*(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=1, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A057093.P12434718394209354255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * (1 - (1 - a (n - 1) - a (n - 2)))

end

end A057093.P12434718394209354255

namespace A057093

/-- `10*(1-floor(1-a(n-1)-a(n-2)))` -/
def P12434718394209354255.Spec : Prop :=
  ∀ n, P12434718394209354255.a n = A057093 n

end A057093

/-! ## A057093.P16676929620521788767

`A041059(n)*A286508(n)`
-/

namespace A057093.P16676929620521788767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 n * A286508 n

end

end A057093.P16676929620521788767

namespace A057093

/-- `A041059(n)*A286508(n)` -/
def P16676929620521788767.Spec : Prop :=
  ∀ n, P16676929620521788767.a n = A057093 n

end A057093

/-! ## A057093.P8166473345918775637

`A342120(A056000(n+7)-1)`
-/

namespace A057093.P8166473345918775637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A056000 (n + 7) - 1).toNat

end

end A057093.P8166473345918775637

namespace A057093

/-- `A342120(A056000(n+7)-1)` -/
def P8166473345918775637.Spec : Prop :=
  ∀ n, P8166473345918775637.a n = A057093 n

end A057093

/-! ## A057093.P4558377738487918273

`A342120(A054254(n+11)-9)`
-/

namespace A057093.P4558377738487918273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A054254 (n + 11) - 9).toNat

end

end A057093.P4558377738487918273

namespace A057093

/-- `A342120(A054254(n+11)-9)` -/
def P4558377738487918273.Spec : Prop :=
  ∀ n, P4558377738487918273.a n = A057093 n

end A057093

/-! ## A057093.P3015624416361770380

`A342120(n+2+A054254(n+10))`
-/

namespace A057093.P3015624416361770380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 ((n + 2 : ℤ) + A054254 (n + 10)).toNat

end

end A057093.P3015624416361770380

namespace A057093

/-- `A342120(n+2+A054254(n+10))` -/
def P3015624416361770380.Spec : Prop :=
  ∀ n, P3015624416361770380.a n = A057093 n

end A057093

/-! ## A057093.P8321918120014228652

`A342120(A002522(n+8)-A000217(n+4))`
-/

namespace A057093.P8321918120014228652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (A002522 (n + 8) - A000217 (n + 4)).toNat

end

end A057093.P8321918120014228652

namespace A057093

/-- `A342120(A002522(n+8)-A000217(n+4))` -/
def P8321918120014228652.Spec : Prop :=
  ∀ n, P8321918120014228652.a n = A057093 n

end A057093

/-!
# A057094: Coefficient triangle for certain polynomials (rising powers).

The programs for A057094, the canonical program `A057094.P5134780784658940036` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A057094 has offset 0).

The definition of A057094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A057094.P4148936181633783795

`A072784(n)*A284938(n+1)`
-/

namespace A057094.P4148936181633783795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072784 n * A284938 (n + 1)

end

end A057094.P4148936181633783795

namespace A057094

/-- `A072784(n)*A284938(n+1)` -/
def P4148936181633783795.Spec : Prop :=
  ∀ n, P4148936181633783795.a n = A057094 n

end A057094

/-! ## A057094.P5134780784658940036

`A062157(A051162(n))*A284938(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A057094

/-- `A062157(A051162(n))*A284938(n+1)` -/
def P5134780784658940036.Spec : Prop :=
  ∀ n, P5134780784658940036.a n = A057094 n

theorem P5134780784658940036.correct : P5134780784658940036.Spec := by
  intro n
  simp only [A057094]

end A057094

/-! ## A057094.P16977517638808941889

`A033999(A082233(n))*A284938(n+1)`
-/

namespace A057094.P16977517638808941889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A082233 n).toNat * A284938 (n + 1)

end

end A057094.P16977517638808941889

namespace A057094

/-- `A033999(A082233(n))*A284938(n+1)` -/
def P16977517638808941889.Spec : Prop :=
  ∀ n, P16977517638808941889.a n = A057094 n

end A057094

/-! ## A057094.P658284431192363111

`A062157(A134478(n))*A284938(n+1)`
-/

namespace A057094.P658284431192363111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A134478 n).toNat * A284938 (n + 1)

end

end A057094.P658284431192363111

namespace A057094

/-- `A062157(A134478(n))*A284938(n+1)` -/
def P658284431192363111.Spec : Prop :=
  ∀ n, P658284431192363111.a n = A057094 n

end A057094

/-! ## A057094.P17623097316591984372

`A033999(A193592(n))*A284938(n+1)`
-/

namespace A057094.P17623097316591984372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A193592 n).toNat * A284938 (n + 1)

end

end A057094.P17623097316591984372

namespace A057094

/-- `A033999(A193592(n))*A284938(n+1)` -/
def P17623097316591984372.Spec : Prop :=
  ∀ n, P17623097316591984372.a n = A057094 n

end A057094

/-! ## A057094.P10268990887587958268

`A033999(A004736(n+1))*A284938(n+1)`
-/

namespace A057094.P10268990887587958268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004736 (n + 1)).toNat * A284938 (n + 1)

end

end A057094.P10268990887587958268

namespace A057094

/-- `A033999(A004736(n+1))*A284938(n+1)` -/
def P10268990887587958268.Spec : Prop :=
  ∀ n, P10268990887587958268.a n = A057094 n

end A057094

/-! ## A057094.P12601374157353920818

`A284938(n+1)/A033999(A004736(n+1)+2)`
-/

namespace A057094.P12601374157353920818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284938 (n + 1) : ℚ) / (A033999 (A004736 (n + 1) + 2).toNat : ℚ)

end

end A057094.P12601374157353920818

namespace A057094

/-- `A284938(n+1)/A033999(A004736(n+1)+2)` -/
def P12601374157353920818.Spec : Prop :=
  ∀ n, P12601374157353920818.a n = (A057094 n : ℚ)

end A057094

/-! ## A057094.P16310539947802191065

`A284938(n+1)/A033999(A004736(n+1)²)`
-/

namespace A057094.P16310539947802191065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284938 (n + 1) : ℚ) / (A033999 (A004736 (n + 1) ^ 2).toNat : ℚ)

end

end A057094.P16310539947802191065

namespace A057094

/-- `A284938(n+1)/A033999(A004736(n+1)²)` -/
def P16310539947802191065.Spec : Prop :=
  ∀ n, P16310539947802191065.a n = (A057094 n : ℚ)

end A057094

/-! ## A057094.P9805354078783929629

`A033999(A064801(n+1))*A284938(n+1)`
-/

namespace A057094.P9805354078783929629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A064801 (n + 1)).toNat * A284938 (n + 1)

end

end A057094.P9805354078783929629

namespace A057094

/-- `A033999(A064801(n+1))*A284938(n+1)` -/
def P9805354078783929629.Spec : Prop :=
  ∀ n, P9805354078783929629.a n = A057094 n

end A057094

/-! ## A057094.P12022172245722352925

`-(A114116(n)*A284938(n+1))`
-/

namespace A057094.P12022172245722352925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A114116 n * A284938 (n + 1))

end

end A057094.P12022172245722352925

namespace A057094

/-- `-(A114116(n)*A284938(n+1))` -/
def P12022172245722352925.Spec : Prop :=
  ∀ n, P12022172245722352925.a n = A057094 n

end A057094

/-!
# A057096: Saint-Exupéry numbers: ordered products of the three sides of Pythagorean triangles.

The programs for A057096, there is no canonical definition to state claims against.
-/

/-! ## A057096.P14545500211427215472

`60*A057097(n+1)`
-/

namespace A057096.P14545500211427215472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A057097 (n + 1)

end

end A057096.P14545500211427215472

/-! ## A057096.P10576422442976938602

`A057098(n+1)*A057099(n+1)*A057100(n+1)`
-/

namespace A057096.P10576422442976938602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057098 (n + 1) * A057099 (n + 1) * A057100 (n + 1)

end

end A057096.P10576422442976938602

/-! ## A057096.P2719464671166336554

`2*A057100(n+1)*A057101(n+1)`
-/

namespace A057096.P2719464671166336554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057100 (n + 1) * A057101 (n + 1))

end

end A057096.P2719464671166336554

/-! ## A057096.P12154580052982210836

`2*A081779(n+1)`
-/

namespace A057096.P12154580052982210836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081779 (n + 1)

end

end A057096.P12154580052982210836

/-! ## A057096.P11577538529830034232

`A004277(A057100(n+1))*A057101(n+1)`
-/

namespace A057096.P11577538529830034232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A057100 (n + 1)).toNat * A057101 (n + 1)

end

end A057096.P11577538529830034232

/-! ## A057096.P3801580718320981136

`A169823(A057097(n+1))`
-/

namespace A057096.P3801580718320981136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169823 (A057097 (n + 1)).toNat

end

end A057096.P3801580718320981136

/-!
# A057097: Products of the three sides of Pythagorean triangles divided by 60.

The programs for A057097, there is no canonical definition to state claims against.
-/

/-! ## A057097.P5506949877320179121

`A057096(n+1)/60`
-/

namespace A057097.P5506949877320179121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / 60

end

end A057097.P5506949877320179121

/-! ## A057097.P9010295824431089089

`A057098(n+1)*A057099(n+1)*A057100(n+1)/60`
-/

namespace A057097.P9010295824431089089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057098 (n + 1) * A057099 (n + 1) * A057100 (n + 1) : ℚ) / 60

end

end A057097.P9010295824431089089

/-! ## A057097.P13202489716127860759

`A057100(n+1)/30*A057101(n+1)`
-/

namespace A057097.P13202489716127860759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057100 (n + 1) : ℚ) / 30 * (A057101 (n + 1) : ℚ)

end

end A057097.P13202489716127860759

/-! ## A057097.P1926716619486326236

`A081779(n+1)/30`
-/

namespace A057097.P1926716619486326236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081779 (n + 1) : ℚ) / 30

end

end A057097.P1926716619486326236

/-! ## A057097.P7346501476457526371

`record[ratio[A057096(A152271(n))]]`
-/

namespace A057097.P7346501476457526371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057096 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A057097.P7346501476457526371

/-!
# A057098: Shortest side of a Pythagorean triangle (ordered by the product of the sides).

The programs for A057098, there is no canonical definition to state claims against.
-/

/-! ## A057098.P10043236124597543622

`sqrt(A057100(n+1)²-A057099(n+1)²)`
-/

namespace A057098.P10043236124597543622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057100 (n + 1) ^ 2 - A057099 (n + 1) ^ 2 : ℝ)

end

end A057098.P10043236124597543622

/-! ## A057098.P7148077993579526571

`A057096(n+1)/(A057099(n+1)*A057100(n+1))`
-/

namespace A057098.P7148077993579526571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / (A057099 (n + 1) * A057100 (n + 1) : ℚ)

end

end A057098.P7148077993579526571

/-! ## A057098.P7015950298953980313

`2/A057099(n+1)*A057101(n+1)`
-/

namespace A057098.P7015950298953980313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A057099 (n + 1) : ℚ) * (A057101 (n + 1) : ℚ)

end

end A057098.P7015950298953980313

/-! ## A057098.P11654156718072163559

`A004277(A057101(n+1))/A057099(n+1)`
-/

namespace A057098.P11654156718072163559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A057101 (n + 1)).toNat : ℚ) / (A057099 (n + 1) : ℚ)

end

end A057098.P11654156718072163559

/-! ## A057098.P12506543564442301011

`A004277(30*A057097(n+1)/A057100(n+1))/A057099(n+1)`
-/

namespace A057098.P12506543564442301011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (SequenceMachineLib.roundAway (30 * ((A057097 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ)))).toNat : ℚ) / (A057099 (n + 1) : ℚ)

end

end A057098.P12506543564442301011

/-!
# A057099: Middle side of a Pythagorean triangle (ordered by the product of the sides).

The programs for A057099, there is no canonical definition to state claims against.
-/

/-! ## A057099.P2613829373663996053

`sqrt(A057100(n+1)²-A057098(n+1)²)`
-/

namespace A057099.P2613829373663996053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057100 (n + 1) ^ 2 - A057098 (n + 1) ^ 2 : ℝ)

end

end A057099.P2613829373663996053

/-! ## A057099.P9786660590962795559

`A057096(n+1)/(A057098(n+1)*A057100(n+1))`
-/

namespace A057099.P9786660590962795559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / (A057098 (n + 1) * A057100 (n + 1) : ℚ)

end

end A057099.P9786660590962795559

/-! ## A057099.P6628206980568644890

`2/A057098(n+1)*A057101(n+1)`
-/

namespace A057099.P6628206980568644890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A057098 (n + 1) : ℚ) * (A057101 (n + 1) : ℚ)

end

end A057099.P6628206980568644890

/-! ## A057099.P16020935534746169485

`A004277(A057101(n+1))/A057098(n+1)`
-/

namespace A057099.P16020935534746169485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A057101 (n + 1)).toNat : ℚ) / (A057098 (n + 1) : ℚ)

end

end A057099.P16020935534746169485

/-! ## A057099.P7319994102040655433

`A004277(30*A057097(n+1)/A057100(n+1))/A057098(n+1)`
-/

namespace A057099.P7319994102040655433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (SequenceMachineLib.roundAway (30 * ((A057097 (n + 1) : ℚ) / (A057100 (n + 1) : ℚ)))).toNat : ℚ) / (A057098 (n + 1) : ℚ)

end

end A057099.P7319994102040655433

