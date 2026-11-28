import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A222400: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222400, there is no canonical definition to state claims against.
-/

/-! ## A222400.P18093199037274024634

`A222402(∑[n+5]+16)`
-/

namespace A222400.P18093199037274024634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222400.P18093199037274024634

/-!
# A222401: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222401, there is no canonical definition to state claims against.
-/

/-! ## A222401.P3457695590142495487

`A222402(A374008(n+1))`
-/

namespace A222401.P3457695590142495487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A374008 (n + 1)).toNat

end

end A222401.P3457695590142495487

/-!
# A222402: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222402, there is no canonical definition to state claims against.
-/

/-! ## A222402.P2778522069161314389

`A130573(A222522(n+1))`
-/

namespace A222402.P2778522069161314389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A222522 (n + 1)).toNat

end

end A222402.P2778522069161314389

/-! ## A222402.P8560849919554971949

`A256974(A222673(n+1))+A032513(A222522(n+1))`
-/

namespace A222402.P8560849919554971949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A222673 (n + 1)).toNat + A032513 (A222522 (n + 1)).toNat

end

end A222402.P8560849919554971949

/-! ## A222402.P1183235463172153572

`A073137(A222522(n+1)%A213249(n+2))`
-/

namespace A222402.P1183235463172153572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (Int.tmod (A222522 (n + 1)) (A213249 (n + 2))).toNat

end

end A222402.P1183235463172153572

/-! ## A222402.P4707565831365923008

`A073137(∑[A072189(n)]*A222522(n+1))`
-/

namespace A222402.P4707565831365923008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 ((∑ j ∈ Finset.range (n + 1), f1 j) * A222522 (n + 1)).toNat

end

end A222402.P4707565831365923008

/-!
# A222403: Triangle read by rows: left and right edges are A000217, interior entries are filled in using the Pascal triangle rule.

The programs for A222403, the canonical program `A222403.P3020155544965014607` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222403 has offset 0).

The definition of A222403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222403.P16927505274878439442

`lcm(Δ[abs(T(n-1,k))], row(n))+T(n-1,k)+T(n-1,k-1)` with `a(0)=0, a(1)=1`
-/

namespace A222403.P16927505274878439442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A222403.P16927505274878439442

namespace A222403

/-- `lcm(Δ[abs(T(n-1,k))], row(n))+T(n-1,k)+T(n-1,k-1)` -/
def P16927505274878439442.Spec : Prop :=
  ∀ n, (P16927505274878439442.a n : ℤ) = A222403 n

end A222403

/-! ## A222403.P17259549073981765187

`A222404(n)/2`
-/

namespace A222403.P17259549073981765187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222404 n : ℚ) / 2

end

end A222403.P17259549073981765187

namespace A222403

/-- `A222404(n)/2` -/
def P17259549073981765187.Spec : Prop :=
  ∀ n, P17259549073981765187.a n = (A222403 n : ℚ)

theorem P17259549073981765187.correct : P17259549073981765187.Spec := by
  intro n
  simp only [A222403, Nat.add_sub_cancel, A222403.P17259549073981765187.a, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, A222404, A222404.P14214754150695596768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222403

/-! ## A222403.P3020155544965014607

`A194121(n)-A028327(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A222403

/-- `A194121(n)-A028327(n)` -/
def P3020155544965014607.Spec : Prop :=
  ∀ n, P3020155544965014607.a n = A222403 n

theorem P3020155544965014607.correct : P3020155544965014607.Spec := by
  intro n
  simp only [A222403]

end A222403

/-! ## A222403.P8284530775463667790

`A194118(n)-A014410(n+2)`
-/

namespace A222403.P8284530775463667790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - A014410 (n + 2)

end

end A222403.P8284530775463667790

namespace A222403

/-- `A194118(n)-A014410(n+2)` -/
def P8284530775463667790.Spec : Prop :=
  ∀ n, P8284530775463667790.a n = A222403 n

end A222403

/-! ## A222403.P4486834191595915915

`(A051666(n)+A051601(n))/2`
-/

namespace A222403.P4486834191595915915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051666 n + A051601 n : ℚ) / 2

end

end A222403.P4486834191595915915

namespace A222403

/-- `(A051666(n)+A051601(n))/2` -/
def P4486834191595915915.Spec : Prop :=
  ∀ n, P4486834191595915915.a n = (A222403 n : ℚ)

theorem P4486834191595915915.correct : P4486834191595915915.Spec := by
  intro n
  simp only [A222403, Nat.add_sub_cancel, A222403.P4486834191595915915.a, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A051601, A051601.P8807190257128102919.a, A051666, A051666.P8179550014341494216.a, A194121, A194121.P9595817741942349886.a, A222404, A222404.P14214754150695596768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222403

/-! ## A222403.P10209347874899822550

`2*A194118(n)-A194121(n)`
-/

namespace A222403.P10209347874899822550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194118 n - A194121 n

end

end A222403.P10209347874899822550

namespace A222403

/-- `2*A194118(n)-A194121(n)` -/
def P10209347874899822550.Spec : Prop :=
  ∀ n, P10209347874899822550.a n = A222403 n

theorem P10209347874899822550.correct : P10209347874899822550.Spec := by
  intro n
  simp only [A222403, Nat.add_sub_cancel, A222403.P10209347874899822550.a, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A194118, A194118.P7393930768151872042.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222403

/-! ## A222403.P15526214824095772502

`(A051668(n)-A051597(n))/2`
-/

namespace A222403.P15526214824095772502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051668 n - A051597 n : ℚ) / 2

end

end A222403.P15526214824095772502

namespace A222403

/-- `(A051668(n)-A051597(n))/2` -/
def P15526214824095772502.Spec : Prop :=
  ∀ n, P15526214824095772502.a n = (A222403 n : ℚ)

end A222403

/-! ## A222403.P14726618045615634529

`A194118(n)-A028327(n)/2`
-/

namespace A222403.P14726618045615634529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194118 n : ℚ) - (A028327 n : ℚ) / 2

end

end A222403.P14726618045615634529

namespace A222403

/-- `A194118(n)-A028327(n)/2` -/
def P14726618045615634529.Spec : Prop :=
  ∀ n, P14726618045615634529.a n = (A222403 n : ℚ)

theorem P14726618045615634529.correct : P14726618045615634529.Spec := by
  intro n
  simp only [A222403, Nat.add_sub_cancel, A222403.P14726618045615634529.a, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A194118, A194118.P7393930768151872042.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222403

/-! ## A222403.P17545450047323082121

`(A222405(n)-A007318(n))/2`
-/

namespace A222403.P17545450047323082121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222405 n - A007318 n : ℚ) / 2

end

end A222403.P17545450047323082121

namespace A222403

/-- `(A222405(n)-A007318(n))/2` -/
def P17545450047323082121.Spec : Prop :=
  ∀ n, P17545450047323082121.a n = (A222403 n : ℚ)

theorem P17545450047323082121.correct : P17545450047323082121.Spec := by
  intro n
  simp only [A222403, Nat.add_sub_cancel, A222403.P17545450047323082121.a, A222403.P3020155544965014607.a, A007318, A007318.P11755526479805562006.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, A222405, A222405.P12488114317644509065.a, A222404, A222404.P14214754150695596768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222403

/-! ## A222403.P4208513104846253315

`A194121(n)-2*A014410(n+2)`
-/

namespace A222403.P4208513104846253315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n - 2 * A014410 (n + 2)

end

end A222403.P4208513104846253315

namespace A222403

/-- `A194121(n)-2*A014410(n+2)` -/
def P4208513104846253315.Spec : Prop :=
  ∀ n, P4208513104846253315.a n = A222403 n

end A222403

/-! ## A222403.P14729155132710920835

`A194118(n)-(A074909(n+1)+A074909(n))`
-/

namespace A222403.P14729155132710920835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 n - (A074909 (n + 1) + A074909 n)

end

end A222403.P14729155132710920835

namespace A222403

/-- `A194118(n)-(A074909(n+1)+A074909(n))` -/
def P14729155132710920835.Spec : Prop :=
  ∀ n, P14729155132710920835.a n = A222403 n

end A222403

/-! ## A222403.P7082701841936089833

`A051631(lt[1, T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)])` with `a(0)=1, a(1)=1`
-/

namespace A222403.P7082701841936089833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.triUpLeft f2 n + SequenceMachineLib.triUp2 f2 n + SequenceMachineLib.triUp2Left f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222403.P7082701841936089833

namespace A222403

/-- `A051631(lt[1, T(n-1,k-1)+T(n-2,k)+T(n-2,k-1)])` -/
def P7082701841936089833.Spec : Prop :=
  ∀ n, P7082701841936089833.a n = A222403 n

end A222403

/-!
# A222404: Triangle read by rows: left and right edges are A002378, interior entries are filled in using the Pascal triangle rule.

The programs for A222404, the canonical program `A222404.P14214754150695596768` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222404 has offset 0).

The definition of A222404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222404.P14214754150695596768

`2*A222403(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A222404

/-- `2*A222403(n)` -/
def P14214754150695596768.Spec : Prop :=
  ∀ n, P14214754150695596768.a n = A222404 n

theorem P14214754150695596768.correct : P14214754150695596768.Spec := by
  intro n
  simp only [A222404]

end A222404

/-! ## A222404.P11056876777360103628

`A051666(n)+A051601(n)`
-/

namespace A222404.P11056876777360103628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051666 n + A051601 n

end

end A222404.P11056876777360103628

namespace A222404

/-- `A051666(n)+A051601(n)` -/
def P11056876777360103628.Spec : Prop :=
  ∀ n, P11056876777360103628.a n = A222404 n

theorem P11056876777360103628.correct : P11056876777360103628.Spec := by
  intro n
  simp only [A222404, Nat.add_sub_cancel, A222404.P11056876777360103628.a, A222404.P14214754150695596768.a, A051601, A051601.P8807190257128102919.a, A051666, A051666.P8179550014341494216.a, A222403, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222404

/-! ## A222404.P6563202475690336159

`A051668(n)-A051597(n)`
-/

namespace A222404.P6563202475690336159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A051597 n

end

end A222404.P6563202475690336159

namespace A222404

/-- `A051668(n)-A051597(n)` -/
def P6563202475690336159.Spec : Prop :=
  ∀ n, P6563202475690336159.a n = A222404 n

end A222404

/-! ## A222404.P17267604521108444189

`A222405(n)-A007318(n)`
-/

namespace A222404.P17267604521108444189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222405 n - A007318 n

end

end A222404.P17267604521108444189

namespace A222404

/-- `A222405(n)-A007318(n)` -/
def P17267604521108444189.Spec : Prop :=
  ∀ n, P17267604521108444189.a n = A222404 n

theorem P17267604521108444189.correct : P17267604521108444189.Spec := by
  intro n
  simp only [A222404, Nat.add_sub_cancel, A222404.P17267604521108444189.a, A222404.P14214754150695596768.a, A007318, A007318.P11755526479805562006.a, A222403, A222403.P3020155544965014607.a, A222405, A222405.P12488114317644509065.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222404

/-! ## A222404.P16618934087576911463

`2*A194118(n)-A028327(n)`
-/

namespace A222404.P16618934087576911463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194118 n - A028327 n

end

end A222404.P16618934087576911463

namespace A222404

/-- `2*A194118(n)-A028327(n)` -/
def P16618934087576911463.Spec : Prop :=
  ∀ n, P16618934087576911463.a n = A222404 n

theorem P16618934087576911463.correct : P16618934087576911463.Spec := by
  intro n
  simp only [A222404, Nat.add_sub_cancel, A222404.P16618934087576911463.a, A222404.P14214754150695596768.a, A028327, A028327.P3923039218126808447.a, A194118, A194118.P7393930768151872042.a, A222403, A222403.P3020155544965014607.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222404

/-! ## A222404.P1535609938321752237

`2*(A194121(n)-A028327(n))`
-/

namespace A222404.P1535609938321752237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194121 n - A028327 n)

end

end A222404.P1535609938321752237

namespace A222404

/-- `2*(A194121(n)-A028327(n))` -/
def P1535609938321752237.Spec : Prop :=
  ∀ n, P1535609938321752237.a n = A222404 n

end A222404

/-! ## A222404.P2289892362100915050

`2*(A194118(n)-A014410(n+2))`
-/

namespace A222404.P2289892362100915050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194118 n - A014410 (n + 2))

end

end A222404.P2289892362100915050

namespace A222404

/-- `2*(A194118(n)-A014410(n+2))` -/
def P2289892362100915050.Spec : Prop :=
  ∀ n, P2289892362100915050.a n = A222404 n

end A222404

/-! ## A222404.P10006233011398781423

`A222403(A005843(n)/2)+A222403(n)`
-/

namespace A222404.P10006233011398781423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222403 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A222403 n

end

end A222404.P10006233011398781423

namespace A222404

/-- `A222403(A005843(n)/2)+A222403(n)` -/
def P10006233011398781423.Spec : Prop :=
  ∀ n, P10006233011398781423.a n = A222404 n

end A222404

/-! ## A222404.P17581447770042848927

`A051597(n)+A051666(n)-A007318(n)`
-/

namespace A222404.P17581447770042848927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051666 n - A007318 n)

end

end A222404.P17581447770042848927

namespace A222404

/-- `A051597(n)+A051666(n)-A007318(n)` -/
def P17581447770042848927.Spec : Prop :=
  ∀ n, P17581447770042848927.a n = A222404 n

end A222404

/-! ## A222404.P16242951008475217535

`2*A051631(lt[1, A323211(n)])`
-/

namespace A222404.P16242951008475217535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222404.P16242951008475217535

namespace A222404

/-- `2*A051631(lt[1, A323211(n)])` -/
def P16242951008475217535.Spec : Prop :=
  ∀ n, P16242951008475217535.a n = A222404 n

end A222404

/-! ## A222404.P4906595170510797440

`2*A051631(lt[1, A022166(n)])`
-/

namespace A222404.P4906595170510797440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222404.P4906595170510797440

namespace A222404

/-- `2*A051631(lt[1, A022166(n)])` -/
def P4906595170510797440.Spec : Prop :=
  ∀ n, P4906595170510797440.a n = A222404 n

end A222404

/-! ## A222404.P4756817797333238949

`A005843(A222403(n))`
-/

namespace A222404.P4756817797333238949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A222403 n).toNat

end

end A222404.P4756817797333238949

namespace A222404

/-- `A005843(A222403(n))` -/
def P4756817797333238949.Spec : Prop :=
  ∀ n, P4756817797333238949.a n = A222404 n

end A222404

/-!
# A222405: Triangle read by rows: left and right edges are A002061 (1,3,7,13,21,...), interior entries are filled in using the Pascal triangle rule.

The programs for A222405, the canonical program `A222405.P12488114317644509065` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222405 has offset 0).

The definition of A222405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222405.P2605903553728535082

`A051666(n)+A051597(n)`
-/

namespace A222405.P2605903553728535082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051666 n + A051597 n

end

end A222405.P2605903553728535082

namespace A222405

/-- `A051666(n)+A051597(n)` -/
def P2605903553728535082.Spec : Prop :=
  ∀ n, P2605903553728535082.a n = A222405 n

end A222405

/-! ## A222405.P12488114317644509065

`A222404(n)+A007318(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A222405

/-- `A222404(n)+A007318(n)` -/
def P12488114317644509065.Spec : Prop :=
  ∀ n, P12488114317644509065.a n = A222405 n

theorem P12488114317644509065.correct : P12488114317644509065.Spec := by
  intro n
  simp only [A222405]

end A222405

/-! ## A222405.P10612210615995487755

`A051668(n)-A051601(n)`
-/

namespace A222405.P10612210615995487755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051668 n - A051601 n

end

end A222405.P10612210615995487755

namespace A222405

/-- `A051668(n)-A051601(n)` -/
def P10612210615995487755.Spec : Prop :=
  ∀ n, P10612210615995487755.a n = A222405 n

end A222405

/-! ## A222405.P4628695589628364536

`A222404(n)+abs(A130595(n))`
-/

namespace A222405.P4628695589628364536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + |A130595 n|

end

end A222405.P4628695589628364536

namespace A222405

/-- `A222404(n)+abs(A130595(n))` -/
def P4628695589628364536.Spec : Prop :=
  ∀ n, P4628695589628364536.a n = A222405 n

end A222405

/-! ## A222405.P18165374149065961645

`A222404(n)+sqrt(A008459(n))`
-/

namespace A222405.P18165374149065961645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222404 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A222405.P18165374149065961645

namespace A222405

/-- `A222404(n)+sqrt(A008459(n))` -/
def P18165374149065961645.Spec : Prop :=
  ∀ n, P18165374149065961645.a n = (A222405 n : ℝ)

end A222405

/-! ## A222405.P5662925369314365643

`A222404(n)+Δ[A102363(n)]`
-/

namespace A222405.P5662925369314365643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + (f1 (n + 1) - f1 n)

end

end A222405.P5662925369314365643

namespace A222405

/-- `A222404(n)+Δ[A102363(n)]` -/
def P5662925369314365643.Spec : Prop :=
  ∀ n, P5662925369314365643.a n = A222405 n

end A222405

/-! ## A222405.P6327083495797955198

`A007318(n)+2*A222403(n)`
-/

namespace A222405.P6327083495797955198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A222403 n

end

end A222405.P6327083495797955198

namespace A222405

/-- `A007318(n)+2*A222403(n)` -/
def P6327083495797955198.Spec : Prop :=
  ∀ n, P6327083495797955198.a n = A222405 n

theorem P6327083495797955198.correct : P6327083495797955198.Spec := by
  intro n
  simp only [A222405, Nat.add_sub_cancel, A222405.P6327083495797955198.a, A222405.P12488114317644509065.a, A007318, A007318.P11755526479805562006.a, A222403, A222403.P3020155544965014607.a, A222404, A222404.P14214754150695596768.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222405

/-! ## A222405.P8515558251415205008

`A007318(n)+A051666(n)+A051601(n)`
-/

namespace A222405.P8515558251415205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A051666 n + A051601 n)

end

end A222405.P8515558251415205008

namespace A222405

/-- `A007318(n)+A051666(n)+A051601(n)` -/
def P8515558251415205008.Spec : Prop :=
  ∀ n, P8515558251415205008.a n = A222405 n

theorem P8515558251415205008.correct : P8515558251415205008.Spec := by
  intro n
  simp only [A222405, Nat.add_sub_cancel, A222405.P8515558251415205008.a, A222405.P12488114317644509065.a, A007318, A007318.P11755526479805562006.a, A051601, A051601.P8807190257128102919.a, A051666, A051666.P8179550014341494216.a, A222404, A222404.P14214754150695596768.a, A222403, A222403.P3020155544965014607.a, A028327, A028327.P3923039218126808447.a, A194121, A194121.P9595817741942349886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222405

/-! ## A222405.P10762487409145059398

`A007318(n)+A005843(A222403(n))`
-/

namespace A222405.P10762487409145059398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A005843 (A222403 n).toNat

end

end A222405.P10762487409145059398

namespace A222405

/-- `A007318(n)+A005843(A222403(n))` -/
def P10762487409145059398.Spec : Prop :=
  ∀ n, P10762487409145059398.a n = A222405 n

end A222405

/-! ## A222405.P16537866495489572680

`A222404(n)+A008620(A131060(n))`
-/

namespace A222405.P16537866495489572680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 n + A008620 (A131060 n).toNat

end

end A222405.P16537866495489572680

namespace A222405

/-- `A222404(n)+A008620(A131060(n))` -/
def P16537866495489572680.Spec : Prop :=
  ∀ n, P16537866495489572680.a n = A222405 n

end A222405

/-!
# A222406: Number of isomorphism types of automorphism groups of semigroups of order n.

The programs for A222406, there is no canonical definition to state claims against.
-/

/-! ## A222406.P15722119946935344736

`A295389(A166012(n))`
-/

namespace A222406.P15722119946935344736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295389 (A166012 n).toNat

end

end A222406.P15722119946935344736

/-! ## A222406.P13023125844746560427

`A351115(A149872(n))`
-/

namespace A222406.P13023125844746560427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A149872 n).toNat

end

end A222406.P13023125844746560427

/-! ## A222406.P11333632808724851270

`A081399(A018173(n+1))`
-/

namespace A222406.P11333632808724851270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A018173 (n + 1)).toNat

end

end A222406.P11333632808724851270

/-! ## A222406.P752105737203649573

`A194287(A280064(n+1))`
-/

namespace A222406.P752105737203649573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A280064 (n + 1)).toNat

end

end A222406.P752105737203649573

/-! ## A222406.P2418293899295100173

`A047373(A093305(n+2))`
-/

namespace A222406.P2418293899295100173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047373 (A093305 (n + 2)).toNat

end

end A222406.P2418293899295100173

/-!
# A222407: Digital roots of tribonacci numbers A000073.

The programs for A222407, the canonical program `A222407.P11853468899913562210` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222407 has offset 0).

The definition of A222407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222407.P11853468899913562210

`A010888(A000073(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A222407

/-- `A010888(A000073(n))` -/
def P11853468899913562210.Spec : Prop :=
  ∀ n, P11853468899913562210.a n = A222407 n

theorem P11853468899913562210.correct : P11853468899913562210.Spec := by
  intro n
  simp only [A222407]

end A222407

/-!
# A222408: Partial sums of A008531, or crystal ball sequence for {A_4}* lattice.

The programs for A222408, the canonical program `A222408.P1944966954800485750` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222408 has offset 0).

The definition of A222408 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222408.P14825613115741565876

`ogf((1+6x+16x^2+6x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A222408.P14825613115741565876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 16, 6, 1] [1, -5, 10, -10, 5, -1] n

end

end A222408.P14825613115741565876

namespace A222408

/-- `ogf((1+6x+16x^2+6x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14825613115741565876.Spec : Prop :=
  ∀ n, P14825613115741565876.a n = A222408 n

end A222408

/-! ## A222408.P1944966954800485750

`(4+10*n+15*n²+10*n^3+5*n^4)/4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222408

/-- `(4+10*n+15*n²+10*n^3+5*n^4)/4` -/
def P1944966954800485750.Spec : Prop :=
  ∀ n, P1944966954800485750.a n = (A222408 n : ℚ)

end A222408

/-! ## A222408.P12100097495873705823

`∑[floor(5/acot(n)^3)]`
-/

namespace A222408.P12100097495873705823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P12100097495873705823

namespace A222408

/-- `∑[floor(5/acot(n)^3)]` -/
def P12100097495873705823.Spec : Prop :=
  ∀ n, P12100097495873705823.a n = A222408 n

end A222408

/-! ## A222408.P836548867991254973

`∑[round(5/acot(n)^3)]`
-/

namespace A222408.P836548867991254973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / SequenceMachineLib.acot (n : ℝ) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P836548867991254973

namespace A222408

/-- `∑[round(5/acot(n)^3)]` -/
def P836548867991254973.Spec : Prop :=
  ∀ n, P836548867991254973.a n = A222408 n

end A222408

/-! ## A222408.P4596699962524373646

`∑[floor(5*acot(n)^-3)]`
-/

namespace A222408.P4596699962524373646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P4596699962524373646

namespace A222408

/-- `∑[floor(5*acot(n)^-3)]` -/
def P4596699962524373646.Spec : Prop :=
  ∀ n, P4596699962524373646.a n = A222408 n

end A222408

/-! ## A222408.P18058912608590411349

`∑[round(5*acot(n)^-3)]`
-/

namespace A222408.P18058912608590411349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P18058912608590411349

namespace A222408

/-- `∑[round(5*acot(n)^-3)]` -/
def P18058912608590411349.Spec : Prop :=
  ∀ n, P18058912608590411349.a n = A222408 n

end A222408

/-! ## A222408.P18279960108642267769

`a(n-1)+5*(n^3+n)` with `a(0)=1`
-/

namespace A222408.P18279960108642267769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (n ^ 3 + n)

end

end A222408.P18279960108642267769

namespace A222408

/-- `a(n-1)+5*(n^3+n)` -/
def P18279960108642267769.Spec : Prop :=
  ∀ n, (P18279960108642267769.a n : ℤ) = A222408 n

end A222408

/-! ## A222408.P1576894458109150351

`∑[A008531(n)]`
-/

namespace A222408.P1576894458109150351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P1576894458109150351

namespace A222408

/-- `∑[A008531(n)]` -/
def P1576894458109150351.Spec : Prop :=
  ∀ n, P1576894458109150351.a n = A222408 n

end A222408

/-! ## A222408.P8404564164150323744

`5*A001621(n)+1`
-/

namespace A222408.P8404564164150323744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001621 n + 1

end

end A222408.P8404564164150323744

namespace A222408

/-- `5*A001621(n)+1` -/
def P8404564164150323744.Spec : Prop :=
  ∀ n, P8404564164150323744.a n = A222408 n

end A222408

/-! ## A222408.P2177405820446311160

`A380353(n+1)-∑[n]`
-/

namespace A222408.P2177405820446311160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A222408.P2177405820446311160

namespace A222408

/-- `A380353(n+1)-∑[n]` -/
def P2177405820446311160.Spec : Prop :=
  ∀ n, P2177405820446311160.a n = A222408 n

end A222408

/-! ## A222408.P9240338928961613501

`A008533(n)-a(n-1)` with `a(0)=1`
-/

namespace A222408.P9240338928961613501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008533 n - a (n - 1)

end

end A222408.P9240338928961613501

namespace A222408

/-- `A008533(n)-a(n-1)` -/
def P9240338928961613501.Spec : Prop :=
  ∀ n, P9240338928961613501.a n = A222408 n

end A222408

/-! ## A222408.P13963571118865501312

`A053699(n)+A033487(n)`
-/

namespace A222408.P13963571118865501312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n + A033487 n

end

end A222408.P13963571118865501312

namespace A222408

/-- `A053699(n)+A033487(n)` -/
def P13963571118865501312.Spec : Prop :=
  ∀ n, P13963571118865501312.a n = A222408 n

end A222408

/-! ## A222408.P3255389595178630855

`A143008(n)-A001621(n)`
-/

namespace A222408.P3255389595178630855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - A001621 n

end

end A222408.P3255389595178630855

namespace A222408

/-- `A143008(n)-A001621(n)` -/
def P3255389595178630855.Spec : Prop :=
  ∀ n, P3255389595178630855.a n = A222408 n

end A222408

/-! ## A222408.P14231580147081259466

`A213818(n+1)+A171129(n)`
-/

namespace A222408.P14231580147081259466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213818 (n + 1) + A171129 n

end

end A222408.P14231580147081259466

namespace A222408

/-- `A213818(n+1)+A171129(n)` -/
def P14231580147081259466.Spec : Prop :=
  ∀ n, P14231580147081259466.a n = A222408 n

end A222408

/-! ## A222408.P3433833181423224932

`∑[(A008574(n)+n)*A002522(n)]`
-/

namespace A222408.P3433833181423224932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008574 n + (n : ℤ)) * A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P3433833181423224932

namespace A222408

/-- `∑[(A008574(n)+n)*A002522(n)]` -/
def P3433833181423224932.Spec : Prop :=
  ∀ n, P3433833181423224932.a n = A222408 n

end A222408

/-! ## A222408.P721031716371665882

`A062786(∑[n]+1)`
-/

namespace A222408.P721031716371665882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222408.P721031716371665882

namespace A222408

/-- `A062786(∑[n]+1)` -/
def P721031716371665882.Spec : Prop :=
  ∀ n, P721031716371665882.a n = A222408 n

end A222408

/-! ## A222408.P1184327915674348039

`A124080(∑[n])+1`
-/

namespace A222408.P1184327915674348039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A222408.P1184327915674348039

namespace A222408

/-- `A124080(∑[n])+1` -/
def P1184327915674348039.Spec : Prop :=
  ∀ n, P1184327915674348039.a n = A222408 n

end A222408

/-! ## A222408.P8303723576274966154

`A386485(A152947(n+2))-1`
-/

namespace A222408.P8303723576274966154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 (A152947 (n + 2)).toNat - 1

end

end A222408.P8303723576274966154

namespace A222408

/-- `A386485(A152947(n+2))-1` -/
def P8303723576274966154.Spec : Prop :=
  ∀ n, P8303723576274966154.a n = A222408 n

end A222408

/-! ## A222408.P6421388659684716993

`record[A010054(n)*A062786(n+1)]`
-/

namespace A222408.P6421388659684716993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A062786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222408.P6421388659684716993

namespace A222408

/-- `record[A010054(n)*A062786(n+1)]` -/
def P6421388659684716993.Spec : Prop :=
  ∀ n, P6421388659684716993.a n = A222408 n

end A222408

/-! ## A222408.P3675353148178892193

`∑[A008706(n)*A098180(n²)]`
-/

namespace A222408.P3675353148178892193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A098180 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222408.P3675353148178892193

namespace A222408

/-- `∑[A008706(n)*A098180(n²)]` -/
def P3675353148178892193.Spec : Prop :=
  ∀ n, P3675353148178892193.a n = A222408 n

end A222408

/-!
# A222409: Numbers of the form 8n + [0,3,6,4,7].

The programs for A222409, the canonical program `A222409.P392893962079475371` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222409 has offset 0).

The definition of A222409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222409.P392893962079475371

`ogf((3x+3x^2-2x^3+3x^4+x^5)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222409

/-- `ogf((3x+3x^2-2x^3+3x^4+x^5)/(1-x-x^5+x^6))` -/
def P392893962079475371.Spec : Prop :=
  ∀ n, P392893962079475371.a n = A222409 n

theorem P392893962079475371.correct : P392893962079475371.Spec := by
  intro n
  simp only [A222409]

end A222409

/-! ## A222409.P505782758527960336

`a(n-5)+8` with `a(0)=0, a(1)=3, a(2)=6, a(3)=4, a(4)=7`
-/

namespace A222409.P505782758527960336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6, 4, 7] fun n a =>
  a (n - 5) + 8

end

end A222409.P505782758527960336

namespace A222409

/-- `a(n-5)+8` -/
def P505782758527960336.Spec : Prop :=
  ∀ n, (P505782758527960336.a n : ℤ) = A222409 n

end A222409

/-! ## A222409.P12231704293852206513

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=-2, a(4)=3, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222409.P12231704293852206513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, -2, 3, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222409.P12231704293852206513

namespace A222409

/-- `∑[floor(a(n-5))]` -/
def P12231704293852206513.Spec : Prop :=
  ∀ n, P12231704293852206513.a n = A222409 n

end A222409

/-! ## A222409.P9804336400423825977

`A047453(n+1)+(2*n)%5`
-/

namespace A222409.P9804336400423825977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1) + ((2 * n % 5 : ℕ) : ℤ)

end

end A222409.P9804336400423825977

namespace A222409

/-- `A047453(n+1)+(2*n)%5` -/
def P9804336400423825977.Spec : Prop :=
  ∀ n, P9804336400423825977.a n = A222409 n

end A222409

/-! ## A222409.P1637988497296714509

`A092486(A047518(n+1))-1`
-/

namespace A222409.P1637988497296714509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A047518 (n + 1)).toNat - 1

end

end A222409.P1637988497296714509

namespace A222409

/-- `A092486(A047518(n+1))-1` -/
def P1637988497296714509.Spec : Prop :=
  ∀ n, P1637988497296714509.a n = A222409 n

end A222409

/-! ## A222409.P5197127333993378409

`A152857(n)+A047545(n+1)`
-/

namespace A222409.P5197127333993378409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152857 n + A047545 (n + 1)

end

end A222409.P5197127333993378409

namespace A222409

/-- `A152857(n)+A047545(n+1)` -/
def P5197127333993378409.Spec : Prop :=
  ∀ n, P5197127333993378409.a n = A222409 n

end A222409

/-! ## A222409.P9498411908269568979

`A257164(n)+A047453(n+1)`
-/

namespace A222409.P9498411908269568979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257164 n + A047453 (n + 1)

end

end A222409.P9498411908269568979

namespace A222409

/-- `A257164(n)+A047453(n+1)` -/
def P9498411908269568979.Spec : Prop :=
  ∀ n, P9498411908269568979.a n = A222409 n

end A222409

/-! ## A222409.P12923672272157764037

`xor(A047435(n+1), A130782(n))`
-/

namespace A222409.P12923672272157764037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047435 (n + 1)) (A130782 n)

end

end A222409.P12923672272157764037

namespace A222409

/-- `xor(A047435(n+1), A130782(n))` -/
def P12923672272157764037.Spec : Prop :=
  ∀ n, P12923672272157764037.a n = A222409 n

end A222409

/-! ## A222409.P12215610753608972256

`A090223(n+1)+A090223(A117444(n)+1+n)`
-/

namespace A222409.P12215610753608972256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) + A090223 (A117444 n + 1 + (n : ℤ)).toNat

end

end A222409.P12215610753608972256

namespace A222409

/-- `A090223(n+1)+A090223(A117444(n)+1+n)` -/
def P12215610753608972256.Spec : Prop :=
  ∀ n, P12215610753608972256.a n = A222409 n

end A222409

/-! ## A222409.P7192359180372620072

`xor(2, A131452(A047253(n+1)))`
-/

namespace A222409.P7192359180372620072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A131452 (A047253 (n + 1)).toNat)

end

end A222409.P7192359180372620072

namespace A222409

/-- `xor(2, A131452(A047253(n+1)))` -/
def P7192359180372620072.Spec : Prop :=
  ∀ n, P7192359180372620072.a n = A222409 n

end A222409

/-! ## A222409.P17480657377693444714

`A093050(A047435(n+1))`
-/

namespace A222409.P17480657377693444714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 (A047435 (n + 1)).toNat

end

end A222409.P17480657377693444714

namespace A222409

/-- `A093050(A047435(n+1))` -/
def P17480657377693444714.Spec : Prop :=
  ∀ n, P17480657377693444714.a n = A222409 n

end A222409

/-! ## A222409.P7409441509268068851

`A132368(A047500(n+1))`
-/

namespace A222409.P7409441509268068851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 (A047500 (n + 1)).toNat

end

end A222409.P7409441509268068851

namespace A222409

/-- `A132368(A047500(n+1))` -/
def P7409441509268068851.Spec : Prop :=
  ∀ n, P7409441509268068851.a n = A222409 n

end A222409

/-! ## A222409.P9858248611509805557

`A263426(A047518(n+1))`
-/

namespace A222409.P9858248611509805557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A047518 (n + 1)).toNat

end

end A222409.P9858248611509805557

namespace A222409

/-- `A263426(A047518(n+1))` -/
def P9858248611509805557.Spec : Prop :=
  ∀ n, P9858248611509805557.a n = A222409 n

end A222409

/-! ## A222409.P15669474194317851608

`A298364(A047435(n+1)+2)-1`
-/

namespace A222409.P15669474194317851608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A047435 (n + 1) + 2).toNat - 1

end

end A222409.P15669474194317851608

namespace A222409

/-- `A298364(A047435(n+1)+2)-1` -/
def P15669474194317851608.Spec : Prop :=
  ∀ n, P15669474194317851608.a n = A222409 n

end A222409

/-! ## A222409.P13010648682116931465

`2*A047496(n+1)-A080414(A047496(n+1))`
-/

namespace A222409.P13010648682116931465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047496 (n + 1) - A080414 (A047496 (n + 1)).toNat

end

end A222409.P13010648682116931465

namespace A222409

/-- `2*A047496(n+1)-A080414(A047496(n+1))` -/
def P13010648682116931465.Spec : Prop :=
  ∀ n, P13010648682116931465.a n = A222409 n

end A222409

/-! ## A222409.P3883416216485354715

`A047568(3*n+1)-A047558(A047561(n+1))`
-/

namespace A222409.P3883416216485354715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047568 (3 * n + 1) - A047558 (A047561 (n + 1)).toNat

end

end A222409.P3883416216485354715

namespace A222409

/-- `A047568(3*n+1)-A047558(A047561(n+1))` -/
def P3883416216485354715.Spec : Prop :=
  ∀ n, P3883416216485354715.a n = A222409 n

end A222409

/-! ## A222409.P1478106786144014095

`xor(abs(A164116(n+3)), A057354(4*n+2))`
-/

namespace A222409.P1478106786144014095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A164116 (n + 3)| (A057354 (4 * n + 2))

end

end A222409.P1478106786144014095

namespace A222409

/-- `xor(abs(A164116(n+3)), A057354(4*n+2))` -/
def P1478106786144014095.Spec : Prop :=
  ∀ n, P1478106786144014095.a n = A222409 n

end A222409

/-! ## A222409.P17168378853497683295

`A081597(4*n+1)-A004396(A081597(2*n+1))`
-/

namespace A222409.P17168378853497683295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (4 * n + 1) - A004396 (A081597 (2 * n + 1)).toNat

end

end A222409.P17168378853497683295

namespace A222409

/-- `A081597(4*n+1)-A004396(A081597(2*n+1))` -/
def P17168378853497683295.Spec : Prop :=
  ∀ n, P17168378853497683295.a n = A222409 n

end A222409

/-! ## A222409.P11929878570702983344

`A047561(A004767(n))-A004767(A047263(n+1))`
-/

namespace A222409.P11929878570702983344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047561 (A004767 n).toNat - A004767 (A047263 (n + 1)).toNat

end

end A222409.P11929878570702983344

namespace A222409

/-- `A047561(A004767(n))-A004767(A047263(n+1))` -/
def P11929878570702983344.Spec : Prop :=
  ∀ n, P11929878570702983344.a n = A222409 n

end A222409

/-!
# A222410: Partial sums of A008534, or crystal ball sequence for {A_6}* lattice.

The programs for A222410, the canonical program `A222410.P2103235388165072425` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222410 has offset 0).

The definition of A222410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222410.P14893837220857318187

`ogf((1+8x+29x^2+64x^3+29x^4+8x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A222410.P14893837220857318187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 29, 64, 29, 8, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A222410.P14893837220857318187

namespace A222410

/-- `ogf((1+8x+29x^2+64x^3+29x^4+8x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14893837220857318187.Spec : Prop :=
  ∀ n, P14893837220857318187.a n = A222410 n

end A222410

/-! ## A222410.P2103235388165072425

`1+7/36*n*(n+1)*(n^4+2*n^3+8*n²+7*n+18)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222410

/-- `1+7/36*n*(n+1)*(n^4+2*n^3+8*n²+7*n+18)` -/
def P2103235388165072425.Spec : Prop :=
  ∀ n, P2103235388165072425.a n = (A222410 n : ℚ)

end A222410

/-! ## A222410.P11908910180664082566

`∑[A008534(n)]`
-/

namespace A222410.P11908910180664082566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222410.P11908910180664082566

namespace A222410

/-- `∑[A008534(n)]` -/
def P11908910180664082566.Spec : Prop :=
  ∀ n, P11908910180664082566.a n = A222410 n

end A222410

/-! ## A222410.P15395946607260390885

`A008535(n)-a(n-1)` with `a(0)=1`
-/

namespace A222410.P15395946607260390885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008535 n - a (n - 1)

end

end A222410.P15395946607260390885

namespace A222410

/-- `A008535(n)-a(n-1)` -/
def P15395946607260390885.Spec : Prop :=
  ∀ n, P15395946607260390885.a n = A222410 n

end A222410

/-! ## A222410.P12925147638574815216

`(A008535(n)+A008534(n))/2`
-/

namespace A222410.P12925147638574815216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008535 n + A008534 n : ℚ) / 2

end

end A222410.P12925147638574815216

namespace A222410

/-- `(A008535(n)+A008534(n))/2` -/
def P12925147638574815216.Spec : Prop :=
  ∀ n, P12925147638574815216.a n = (A222410 n : ℚ)

end A222410

/-!
# A222412: Denominators in Taylor series expansion of (x/(exp(x) - 1))^(3/2)*exp(x/2).

The programs for A222412, there is no canonical definition to state claims against.
-/

/-! ## A222412.P16454726596358018015

`4^n*or(1, n)!/A111368(3*n+5)`
-/

namespace A222412.P16454726596358018015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (Nat.lor 1 n) : ℚ) / (A111368 (3 * n + 5) : ℚ)

end

end A222412.P16454726596358018015

/-! ## A222412.P10091730864380827502

`A000010(lcm(A004171(n), A063810(n)))`
-/

namespace A222412.P10091730864380827502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A004171 n) (A063810 n))

end

end A222412.P10091730864380827502

/-!
# A222413: All primes p > 5 such that A001175(p) is smaller than the maximal value permitted by Wall's Theorems 6 and 7.

The programs for A222413, there is no canonical definition to state claims against.
-/

/-! ## A222413.P2957905939667873018

`p?[lt[A001175(n+1), n]+1]`
-/

namespace A222413.P2957905939667873018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A222413.P2957905939667873018

/-! ## A222413.P697946176821722393

`lt[A001175(n+1), A057237(n+1)]+1`
-/

namespace A222413.P697946176821722393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P697946176821722393

/-! ## A222413.P2929030333552006897

`lt[A106291(n+1), A057237(n+1)]+1`
-/

namespace A222413.P2929030333552006897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P2929030333552006897

/-! ## A222413.P1434186103927773287

`lt[A237836(n+1), A057237(n+1)²]+1`
-/

namespace A222413.P1434186103927773287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A222413.P1434186103927773287

/-! ## A222413.P5106911010063583257

`lt[A001175(A028310(n))+2, A055672(n)]`
-/

namespace A222413.P5106911010063583257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A222413.P5106911010063583257

/-! ## A222413.P9272379951368068180

`A007918(lt[A001175(n+1), A057237(n+1)])`
-/

namespace A222413.P9272379951368068180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A222413.P9272379951368068180

/-! ## A222413.P7115443423094870811

`lt[A237836(n+1)/A237517(n+1), A057237(n+1)]+1`
-/

namespace A222413.P7115443423094870811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A222413.P7115443423094870811

/-!
# A222414: a(n) = A001175(A222413(n)).

The programs for A222414, there is no canonical definition to state claims against.
-/

/-! ## A222414.P3984510686332040264

`A001175(A222413(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222414.P3984510686332040264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A222413 (n + 1)).toNat

end

end A222414.P3984510686332040264

/-! ## A222414.P10112952842881118056

`A106291(or(1, A222413(1+n)))`
-/

namespace A222414.P10112952842881118056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (Int.lor 1 (A222413 (1 + n))).toNat

end

end A222414.P10112952842881118056

/-! ## A222414.P10737164577018055847

`A213277(or(1, A222413(1+n)))`
-/

namespace A222414.P10737164577018055847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213277 (Int.lor 1 (A222413 (1 + n))).toNat

end

end A222414.P10737164577018055847

/-!
# A222415: a(n) = max{A222416(q): q in P(n)}, where P(n) is the set of integers defined in Defn. 2.6 of Nussbaum and Verduyn Lunel (2003).

The programs for A222415, there is no canonical definition to state claims against.
-/

/-! ## A222415.P7800981826625028473

`A072649(∑[A052365(A124625(n))])`
-/

namespace A222415.P7800981826625028473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052365 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222415.P7800981826625028473

/-!
# A222416: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 1 by convention).

The programs for A222416, the canonical program `A222416.P10129870324317811238` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222416 has offset 1).

The definition of A222416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222416.P4564889896288757827

`round(1/acot(A008475(n+1)))`
-/

namespace A222416.P4564889896288757827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A008475 (n + 1) : ℝ))

end

end A222416.P4564889896288757827

namespace A222416

/-- `round(1/acot(A008475(n+1)))` -/
def P4564889896288757827.Spec : Prop :=
  ∀ n, P4564889896288757827.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P7641282529062935868

`A028310(∑{p}[n+1, #^val(n+1, #)])`
-/

namespace A222416.P7641282529062935868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p)

end

end A222416.P7641282529062935868

namespace A222416

/-- `A028310(∑{p}[n+1, #^val(n+1, #)])` -/
def P7641282529062935868.Spec : Prop :=
  ∀ n, P7641282529062935868.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P10129870324317811238

`A008475(C(a(n-2), n)+n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A222416

/-- `A008475(C(a(n-2), n)+n+1)` -/
def P10129870324317811238.Spec : Prop :=
  ∀ n, P10129870324317811238.a n = A222416 (n + 1)

theorem P10129870324317811238.correct : P10129870324317811238.Spec := by
  intro n
  simp only [A222416, Nat.add_sub_cancel]

end A222416

/-! ## A222416.P904790922915064722

`A000007(n)+∑{p}[n+1, #^val(n+1, #)]`
-/

namespace A222416.P904790922915064722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A222416.P904790922915064722

namespace A222416

/-- `A000007(n)+∑{p}[n+1, #^val(n+1, #)]` -/
def P904790922915064722.Spec : Prop :=
  ∀ n, P904790922915064722.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P2332471644705724255

`∑{p}[n+1, #^val(n+1, #)]+A057428(n)+1`
-/

namespace A222416.P2332471644705724255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + A057428 n + 1

end

end A222416.P2332471644705724255

namespace A222416

/-- `∑{p}[n+1, #^val(n+1, #)]+A057428(n)+1` -/
def P2332471644705724255.Spec : Prop :=
  ∀ n, P2332471644705724255.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P16881306750767747899

`A010051(∑{d}[1+n, 2*#])+∑{p}[n+1, #^val(n+1, #)]`
-/

namespace A222416.P16881306750767747899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ d ∈ Nat.divisors (f1 n), 2 * d) + ((∑ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A222416.P16881306750767747899

namespace A222416

/-- `A010051(∑{d}[1+n, 2*#])+∑{p}[n+1, #^val(n+1, #)]` -/
def P16881306750767747899.Spec : Prop :=
  ∀ n, P16881306750767747899.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P1460137566669177258

`A008475(n+1)+A000007(n)`
-/

namespace A222416.P1460137566669177258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + A000007 n

end

end A222416.P1460137566669177258

namespace A222416

/-- `A008475(n+1)+A000007(n)` -/
def P1460137566669177258.Spec : Prop :=
  ∀ n, P1460137566669177258.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13860352609411286367

`A159077(n+1)+A057428(n)`
-/

namespace A222416.P13860352609411286367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) + A057428 n

end

end A222416.P13860352609411286367

namespace A222416

/-- `A159077(n+1)+A057428(n)` -/
def P13860352609411286367.Spec : Prop :=
  ∀ n, P13860352609411286367.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P3212958762609359431

`A159077(n+1)-A057427(n)`
-/

namespace A222416.P3212958762609359431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - A057427 n

end

end A222416.P3212958762609359431

namespace A222416

/-- `A159077(n+1)-A057427(n)` -/
def P3212958762609359431.Spec : Prop :=
  ∀ n, P3212958762609359431.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P6042976576738091306

`∏{d}[A008475(n+1), A014963(#)]`
-/

namespace A222416.P6042976576738091306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A222416.P6042976576738091306

namespace A222416

/-- `∏{d}[A008475(n+1), A014963(#)]` -/
def P6042976576738091306.Spec : Prop :=
  ∀ n, P6042976576738091306.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P13676960844291544041

`A008475(n+1)+1-A057427(n)`
-/

namespace A222416.P13676960844291544041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (1 - A057427 n)

end

end A222416.P13676960844291544041

namespace A222416

/-- `A008475(n+1)+1-A057427(n)` -/
def P13676960844291544041.Spec : Prop :=
  ∀ n, P13676960844291544041.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P4684808674942586780

`max(A000120(n+1), A008475(n+1))`
-/

namespace A222416.P4684808674942586780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A000120 (n + 1)) (A008475 (n + 1))

end

end A222416.P4684808674942586780

namespace A222416

/-- `max(A000120(n+1), A008475(n+1))` -/
def P4684808674942586780.Spec : Prop :=
  ∀ n, P4684808674942586780.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P4830707563653862902

`max(A005361(n+1), A008475(n+1))`
-/

namespace A222416.P4830707563653862902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A005361 (n + 1)) (A008475 (n + 1))

end

end A222416.P4830707563653862902

namespace A222416

/-- `max(A005361(n+1), A008475(n+1))` -/
def P4830707563653862902.Spec : Prop :=
  ∀ n, P4830707563653862902.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P17468003013752934306

`max(A006530(n+1), A008475(n+1))`
-/

namespace A222416.P17468003013752934306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A006530 (n + 1)) (A008475 (n + 1))

end

end A222416.P17468003013752934306

namespace A222416

/-- `max(A006530(n+1), A008475(n+1))` -/
def P17468003013752934306.Spec : Prop :=
  ∀ n, P17468003013752934306.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P1332437723041700367

`max(A008475(n+1), A008683(n+1))`
-/

namespace A222416.P1332437723041700367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A008475 (n + 1)) (A008683 (n + 1))

end

end A222416.P1332437723041700367

namespace A222416

/-- `max(A008475(n+1), A008683(n+1))` -/
def P1332437723041700367.Spec : Prop :=
  ∀ n, P1332437723041700367.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P8202893822916836718

`max(A008475(n+1), A020639(n+1))`
-/

namespace A222416.P8202893822916836718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A008475 (n + 1)) (A020639 (n + 1))

end

end A222416.P8202893822916836718

namespace A222416

/-- `max(A008475(n+1), A020639(n+1))` -/
def P8202893822916836718.Spec : Prop :=
  ∀ n, P8202893822916836718.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P2787538281491228980

`max(A008475(n+1), A028233(n+1))`
-/

namespace A222416.P2787538281491228980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A008475 (n + 1)) (A028233 (n + 1))

end

end A222416.P2787538281491228980

namespace A222416

/-- `max(A008475(n+1), A028233(n+1))` -/
def P2787538281491228980.Spec : Prop :=
  ∀ n, P2787538281491228980.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P14121013692571529308

`max(A008475(n+1), A034684(n+1))`
-/

namespace A222416.P14121013692571529308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A008475 (n + 1)) (A034684 (n + 1))

end

end A222416.P14121013692571529308

namespace A222416

/-- `max(A008475(n+1), A034684(n+1))` -/
def P14121013692571529308.Spec : Prop :=
  ∀ n, P14121013692571529308.a n = A222416 (n + 1)

end A222416

/-! ## A222416.P15606071946010309636

`max(A008475(n+1), A034699(n+1))`
-/

namespace A222416.P15606071946010309636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A008475 (n + 1)) (A034699 (n + 1))

end

end A222416.P15606071946010309636

namespace A222416

/-- `max(A008475(n+1), A034699(n+1))` -/
def P15606071946010309636.Spec : Prop :=
  ∀ n, P15606071946010309636.a n = A222416 (n + 1)

end A222416

/-!
# A222423: Sum of (n AND k) for k = 0, 1, 2, ..., n, where AND is the bitwise AND operator.

The programs for A222423, the canonical program `A222423.P10040492677139867736` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222423 has offset 0).

The definition of A222423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A224915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222423.P10040492677139867736

`(A045943(n)-A224915(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A222423

/-- `(A045943(n)-A224915(n))/2` -/
def P10040492677139867736.Spec : Prop :=
  ∀ n, P10040492677139867736.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P14530241894540735384

`∑[n]-∑[(or(n, -n)²-n)/2]`
-/

namespace A222423.P14530241894540735384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) (-(n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A222423.P14530241894540735384

namespace A222423

/-- `∑[n]-∑[(or(n, -n)²-n)/2]` -/
def P14530241894540735384.Spec : Prop :=
  ∀ n, P14530241894540735384.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P14718423393825422024

`∑[3*n]-∑[(and(n, -n)²+3*n)/2]`
-/

namespace A222423.P14718423393825422024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 + (3 * n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A222423.P14718423393825422024

namespace A222423

/-- `∑[3*n]-∑[(and(n, -n)²+3*n)/2]` -/
def P14718423393825422024.Spec : Prop :=
  ∀ n, P14718423393825422024.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P17385932434945234272

`∑[n]-A350094(n)`
-/

namespace A222423.P17385932434945234272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A350094 n

end

end A222423.P17385932434945234272

namespace A222423

/-- `∑[n]-A350094(n)` -/
def P17385932434945234272.Spec : Prop :=
  ∀ n, P17385932434945234272.a n = A222423 n

end A222423

/-! ## A222423.P16975480160854920376

`3*A213673(n)+n`
-/

namespace A222423.P16975480160854920376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213673 n + (n : ℤ)

end

end A222423.P16975480160854920376

namespace A222423

/-- `3*A213673(n)+n` -/
def P16975480160854920376.Spec : Prop :=
  ∀ n, P16975480160854920376.a n = A222423 n

end A222423

/-! ## A222423.P16174065978741470154

`3*(n²-A000695(n))/4+n`
-/

namespace A222423.P16174065978741470154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((n ^ 2 : ℤ) - A000695 n : ℚ) / 4) + (n : ℚ)

end

end A222423.P16174065978741470154

namespace A222423

/-- `3*(n²-A000695(n))/4+n` -/
def P16174065978741470154.Spec : Prop :=
  ∀ n, P16174065978741470154.a n = (A222423 n : ℚ)

end A222423

/-! ## A222423.P14848938341959799026

`A001859(n)-A332206(n)`
-/

namespace A222423.P14848938341959799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n - A332206 n

end

end A222423.P14848938341959799026

namespace A222423

/-- `A001859(n)-A332206(n)` -/
def P14848938341959799026.Spec : Prop :=
  ∀ n, P14848938341959799026.a n = A222423 n

end A222423

/-! ## A222423.P18009094700948625824

`A045943(n)-A350093(n)`
-/

namespace A222423.P18009094700948625824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A350093 n

end

end A222423.P18009094700948625824

namespace A222423

/-- `A045943(n)-A350093(n)` -/
def P18009094700948625824.Spec : Prop :=
  ∀ n, P18009094700948625824.a n = A222423 n

end A222423

/-! ## A222423.P2674887844037162566

`A350093(n)-A224915(n)`
-/

namespace A222423.P2674887844037162566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350093 n - A224915 n

end

end A222423.P2674887844037162566

namespace A222423

/-- `A350093(n)-A224915(n)` -/
def P2674887844037162566.Spec : Prop :=
  ∀ n, P2674887844037162566.a n = A222423 n

end A222423

/-! ## A222423.P9775467097133623975

`3*(A002620(n)-A000695(A004526(n)))+n`
-/

namespace A222423.P9775467097133623975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002620 n - A000695 (A004526 n).toNat) + (n : ℤ)

end

end A222423.P9775467097133623975

namespace A222423

/-- `3*(A002620(n)-A000695(A004526(n)))+n` -/
def P9775467097133623975.Spec : Prop :=
  ∀ n, P9775467097133623975.a n = A222423 n

end A222423

/-! ## A222423.P2223818182389424298

`A213673(Δ[n²])-A213673(n)`
-/

namespace A222423.P2223818182389424298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A213673 n

end

end A222423.P2223818182389424298

namespace A222423

/-- `A213673(Δ[n²])-A213673(n)` -/
def P2223818182389424298.Spec : Prop :=
  ∀ n, P2223818182389424298.a n = A222423 n

end A222423

/-! ## A222423.P12786897956903425069

`∑{#}[n, and(n, #)]`
-/

namespace A222423.P12786897956903425069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.land n k

end

end A222423.P12786897956903425069

namespace A222423

/-- `∑{#}[n, and(n, #)]` -/
def P12786897956903425069.Spec : Prop :=
  ∀ n, (P12786897956903425069.a n : ℤ) = A222423 n

end A222423

/-! ## A222423.P3697517252328777116

`∑[n]-A014682(A224915(n)-∑[n])`
-/

namespace A222423.P3697517252328777116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A014682 (A224915 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A222423.P3697517252328777116

namespace A222423

/-- `∑[n]-A014682(A224915(n)-∑[n])` -/
def P3697517252328777116.Spec : Prop :=
  ∀ n, P3697517252328777116.a n = A222423 n

end A222423

/-! ## A222423.P1882472524924017909

`A008585(A213673(n))+n`
-/

namespace A222423.P1882472524924017909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A213673 n).toNat + (n : ℤ)

end

end A222423.P1882472524924017909

namespace A222423

/-- `A008585(A213673(n))+n` -/
def P1882472524924017909.Spec : Prop :=
  ∀ n, P1882472524924017909.a n = A222423 n

end A222423

/-! ## A222423.P6540376537513756374

`∑[∑[n]+n-A140472(n²)]`
-/

namespace A222423.P6540376537513756374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - A140472 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222423.P6540376537513756374

namespace A222423

/-- `∑[∑[n]+n-A140472(n²)]` -/
def P6540376537513756374.Spec : Prop :=
  ∀ n, P6540376537513756374.a n = A222423 n

end A222423

/-!
# A222425: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222425, there is no canonical definition to state claims against.
-/

/-! ## A222425.P11939538741898339966

`A222430(2+∑[1+n])`
-/

namespace A222425.P11939538741898339966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222425.P11939538741898339966

/-! ## A222425.P14118427835140833277

`A222488(∑[2+n])`
-/

namespace A222425.P14118427835140833277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222425.P14118427835140833277

/-!
# A222426: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222426, there is no canonical definition to state claims against.
-/

/-! ## A222426.P13959399827968676583

`A222430(∑[n+2]+4)`
-/

namespace A222426.P13959399827968676583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222426.P13959399827968676583

/-!
# A222427: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222427, there is no canonical definition to state claims against.
-/

/-! ## A222427.P3840812964533312074

`A222430(eq[3, col(n)]+1)`
-/

namespace A222427.P3840812964533312074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A222427.P3840812964533312074

/-!
# A222428: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222428, there is no canonical definition to state claims against.
-/

/-! ## A222428.P4986849471469441427

`A222430(eq[4, col(n)]+1)`
-/

namespace A222428.P4986849471469441427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A222428.P4986849471469441427

/-!
# A222429: Number of n X 6 0..2 arrays with exactly floor(n X 6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222429, there is no canonical definition to state claims against.
-/

/-! ## A222429.P13012759940672751963

`A222430(∑[n+5]+16)`
-/

namespace A222429.P13012759940672751963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222430 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222429.P13012759940672751963

/-!
# A222430: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222430, there is no canonical definition to state claims against.
-/

/-! ## A222430.P7166985714420516137

`A367306(A222275(n+1))`
-/

namespace A222430.P7166985714420516137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A222275 (n + 1)).toNat

end

end A222430.P7166985714420516137

/-! ## A222430.P12519855966598627197

`A222275(n+1)-A025437(A184955(n))`
-/

namespace A222430.P12519855966598627197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A025437 (A184955 n).toNat

end

end A222430.P12519855966598627197

/-! ## A222430.P144088562654322351

`A222275(n+1)-A178976(A185274(n))`
-/

namespace A222430.P144088562654322351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A178976 (A185274 n).toNat

end

end A222430.P144088562654322351

/-! ## A222430.P6103248588565320045

`A222275(n+1)-A222275(A185274(n)+2)`
-/

namespace A222430.P6103248588565320045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222275 (n + 1) - A222275 (A185274 n + 2).toNat

end

end A222430.P6103248588565320045

/-! ## A222430.P10496700476850501670

`A256974(A222275(n+1)+2)+A222275(n+1)`
-/

namespace A222430.P10496700476850501670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A222275 (n + 1) + 2).toNat + A222275 (n + 1)

end

end A222430.P10496700476850501670

/-!
# A222431: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..1 array extended with zeros and convolved with 1,1,1.

The programs for A222431, the canonical program `A222431.P11031595019497617920` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222431 has offset 1).

The definition of A222431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222431.P11031595019497617920

`ogf((2-x-2x^4+x^5+x^6-x^7+2x^8-x^9-x^10-x^12)/(1-2x+x^2-2x^4+3x^5-x^6-x^7+2x^8-2x^9+x^11-x^12+x^13))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222431

/-- `ogf((2-x-2x^4+x^5+x^6-x^7+2x^8-x^9-x^10-x^12)/(1-2x+x^2-2x^4+3x^5-x^6-x^7+2x^8-2x^9+x^11-x^12+x^13))` -/
def P11031595019497617920.Spec : Prop :=
  ∀ n, P11031595019497617920.a n = A222431 (n + 1)

theorem P11031595019497617920.correct : P11031595019497617920.Spec := by
  intro n
  simp only [A222431, Nat.add_sub_cancel]

end A222431

/-! ## A222431.P17722455768753477183

`A222438(∑[n+1])`
-/

namespace A222431.P17722455768753477183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222431.P17722455768753477183

namespace A222431

/-- `A222438(∑[n+1])` -/
def P17722455768753477183.Spec : Prop :=
  ∀ n, P17722455768753477183.a n = A222431 (n + 1)

end A222431

/-! ## A222431.P6287596305993236994

`record[A222438(A134519(n+1))]`
-/

namespace A222431.P6287596305993236994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P6287596305993236994

namespace A222431

/-- `record[A222438(A134519(n+1))]` -/
def P6287596305993236994.Spec : Prop :=
  ∀ n, P6287596305993236994.a n = A222431 (n + 1)

end A222431

/-! ## A222431.P8869819629241994809

`record[A222438(A209268(n+1))]`
-/

namespace A222431.P8869819629241994809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P8869819629241994809

namespace A222431

/-- `record[A222438(A209268(n+1))]` -/
def P8869819629241994809.Spec : Prop :=
  ∀ n, P8869819629241994809.a n = A222431 (n + 1)

end A222431

/-! ## A222431.P3612963965873811809

`record[A222438(A276956(n+1))]`
-/

namespace A222431.P3612963965873811809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A276956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P3612963965873811809

namespace A222431

/-- `record[A222438(A276956(n+1))]` -/
def P3612963965873811809.Spec : Prop :=
  ∀ n, P3612963965873811809.a n = A222431 (n + 1)

end A222431

/-! ## A222431.P4142545792991469391

`record[A222438(A055802(n+2))]`
-/

namespace A222431.P4142545792991469391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A055802 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P4142545792991469391

namespace A222431

/-- `record[A222438(A055802(n+2))]` -/
def P4142545792991469391.Spec : Prop :=
  ∀ n, P4142545792991469391.a n = A222431 (n + 1)

end A222431

/-! ## A222431.P17062237050015404729

`record[A222438(n+1)/(A222438(n+2)-1)]`
-/

namespace A222431.P17062237050015404729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222438 (n + 1) : ℚ) / (A222438 (n + 2) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222431.P17062237050015404729

namespace A222431

/-- `record[A222438(n+1)/(A222438(n+2)-1)]` -/
def P17062237050015404729.Spec : Prop :=
  ∀ n, P17062237050015404729.a n = (A222431 (n + 1) : ℚ)

end A222431

/-!
# A222432: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,1,1.

The programs for A222432, there is no canonical definition to state claims against.
-/

/-! ## A222432.P14240198707758183875

`A222438(∑[2+n])`
-/

namespace A222432.P14240198707758183875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222432.P14240198707758183875

/-! ## A222432.P17482803724287271088

`record[A222438(A209268(n+2)-1)]`
-/

namespace A222432.P17482803724287271088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P17482803724287271088

/-! ## A222432.P14551597515940590461

`record[A222438(A276956(2+n)-1)]`
-/

namespace A222432.P14551597515940590461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A276956 (2 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P14551597515940590461

/-! ## A222432.P17955797113780774358

`record[A222438(A209268(2*(n+1)))]`
-/

namespace A222432.P17955797113780774358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P17955797113780774358

/-! ## A222432.P8796424923095034912

`record[A222438(sqrt(A303054(n+1))+1)]`
-/

namespace A222432.P8796424923095034912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P8796424923095034912

/-! ## A222432.P3635847198171682625

`record[A222438(A000096(A002260(n+1)))]`
-/

namespace A222432.P3635847198171682625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P3635847198171682625

/-! ## A222432.P1545838581657545994

`record[A222438(A000096(A322815(n+1)))]`
-/

namespace A222432.P1545838581657545994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A000096 (A322815 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P1545838581657545994

/-! ## A222432.P9027398654037677839

`record[A222438(A138153(A276956(n+1)))]`
-/

namespace A222432.P9027398654037677839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A138153 (A276956 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222432.P9027398654037677839

/-!
# A222433: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,1,1.

The programs for A222433, there is no canonical definition to state claims against.
-/

/-! ## A222433.P8315709958318437802

`A222438(1+∑[3+n])`
-/

namespace A222433.P8315709958318437802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222433.P8315709958318437802

/-! ## A222433.P4804101577347494871

`record[A222438(sqrt(A303054(1+n)))]`
-/

namespace A222433.P4804101577347494871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (1 + n) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222433.P4804101577347494871

/-! ## A222433.P2129490456593148143

`record[A222438(A209268(2*(n+1))-1)]`
-/

namespace A222433.P2129490456593148143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222433.P2129490456593148143

/-!
# A222434: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,1,1.

The programs for A222434, there is no canonical definition to state claims against.
-/

/-! ## A222434.P10809182986153875299

`A222438(∑[n+4]+3)`
-/

namespace A222434.P10809182986153875299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222434.P10809182986153875299

/-! ## A222434.P16831487778469323900

`record[A222438(A027379(n))]`
-/

namespace A222434.P16831487778469323900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222434.P16831487778469323900

/-! ## A222434.P16785684844952905236

`record[A222438(A209268(lcm(4, n+3))-1)]`
-/

namespace A222434.P16785684844952905236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A209268 (Nat.lcm 4 (n + 3)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222434.P16785684844952905236

/-! ## A222434.P18420986199108946658

`A127830(A107928(n+2))`
-/

namespace A222434.P18420986199108946658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127830 (A107928 (n + 2)).toNat

end

end A222434.P18420986199108946658

/-!
# A222435: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,1,1.

The programs for A222435, there is no canonical definition to state claims against.
-/

/-! ## A222435.P16002303579084673145

`A222438(∑[n+5]+6)`
-/

namespace A222435.P16002303579084673145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222435.P16002303579084673145

/-!
# A222436: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,1,1.

The programs for A222436, there is no canonical definition to state claims against.
-/

/-! ## A222436.P14619382661217386324

`A222438((n+4)²-∑[n+1]+1)`
-/

namespace A222436.P14619382661217386324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A222436.P14619382661217386324

/-!
# A222437: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,1,1.

The programs for A222437, there is no canonical definition to state claims against.
-/

/-! ## A222437.P4831822060228937658

`A222438(A055999(n+4))`
-/

namespace A222437.P4831822060228937658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A055999 (n + 4)).toNat

end

end A222437.P4831822060228937658

/-! ## A222437.P11461326893281915871

`A222438(A236267(n))`
-/

namespace A222437.P11461326893281915871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222438 (A236267 n).toNat

end

end A222437.P11461326893281915871

/-!
# A222439: Number of n X 3 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222439, there is no canonical definition to state claims against.
-/

/-! ## A222439.P7217613167271933276

`ogf((9-15x)/(1-18x+27x^2))`
-/

namespace A222439.P7217613167271933276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -15] [1, -18, 27] n

end

end A222439.P7217613167271933276

/-! ## A222439.P6747389706138774363

`18*a(n-1)-27*a(n-2)` with `a(0)=9, a(1)=147`
-/

namespace A222439.P6747389706138774363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 147] fun n a =>
  18 * a (n - 1) - 27 * a (n - 2)

end

end A222439.P6747389706138774363

/-! ## A222439.P4645863947039904756

`3*A355882(1+n)`
-/

namespace A222439.P4645863947039904756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A355882 (1 + n)

end

end A222439.P4645863947039904756

/-! ## A222439.P10821599801439228472

`2*A233013(n+1)-1`
-/

namespace A222439.P10821599801439228472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233013 (n + 1) - 1

end

end A222439.P10821599801439228472

/-! ## A222439.P10079747699745049478

`6*A198710(n+1)-3`
-/

namespace A222439.P10079747699745049478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198710 (n + 1) - 3

end

end A222439.P10079747699745049478

/-! ## A222439.P14828744865938951513

`A355882(n+1)+A355882(n+1)+A355882(n+1)`
-/

namespace A222439.P14828744865938951513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355882 (n + 1) + A355882 (n + 1) + A355882 (n + 1)

end

end A222439.P14828744865938951513

/-!
# A222440: Number of n X 4 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222440, there is no canonical definition to state claims against.
-/

/-! ## A222440.P15971998835340407763

`ogf((27-186x+189x^2)/(1-45x+267x^2-263x^3))`
-/

namespace A222440.P15971998835340407763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -186, 189] [1, -45, 267, -263] n

end

end A222440.P15971998835340407763

/-! ## A222440.P9676911188580415039

`2*A233014(1+n)-1`
-/

namespace A222440.P9676911188580415039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233014 (1 + n) - 1

end

end A222440.P9676911188580415039

/-! ## A222440.P5030919074162668999

`6*A198711(1+n)-3`
-/

namespace A222440.P5030919074162668999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198711 (1 + n) - 3

end

end A222440.P5030919074162668999

/-! ## A222440.P10861029255684021843

`A222444(A141214(n+1))`
-/

namespace A222440.P10861029255684021843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A141214 (n + 1)).toNat

end

end A222440.P10861029255684021843

/-!
# A222441: Number of nX5 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222441, there is no canonical definition to state claims against.
-/

/-! ## A222441.P235966975912349474

`2*A233015(1+n)-1`
-/

namespace A222441.P235966975912349474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233015 (1 + n) - 1

end

end A222441.P235966975912349474

/-! ## A222441.P6261175825204892299

`3*(2*A198712(n+1)-1)`
-/

namespace A222441.P6261175825204892299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A198712 (n + 1) - 1)

end

end A222441.P6261175825204892299

/-! ## A222441.P9032788926352450450

`A222444(A374005(n+1))`
-/

namespace A222441.P9032788926352450450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374005 (n + 1)).toNat

end

end A222441.P9032788926352450450

/-!
# A222442: Number of n X 6 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222442, there is no canonical definition to state claims against.
-/

/-! ## A222442.P7098097809684538161

`2*A233016(n+1)-1`
-/

namespace A222442.P7098097809684538161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233016 (n + 1) - 1

end

end A222442.P7098097809684538161

/-! ## A222442.P3932417713057246448

`2*(3*A198713(n+1)-1)-1`
-/

namespace A222442.P3932417713057246448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A198713 (n + 1) - 1) - 1

end

end A222442.P3932417713057246448

/-! ## A222442.P17744691300865498660

`A222444(A374007(n+1))`
-/

namespace A222442.P17744691300865498660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374007 (n + 1)).toNat

end

end A222442.P17744691300865498660

/-!
# A222443: Number of nX7 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222443, there is no canonical definition to state claims against.
-/

/-! ## A222443.P9444791127068432813

`2*A233017(n+1)-1`
-/

namespace A222443.P9444791127068432813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233017 (n + 1) - 1

end

end A222443.P9444791127068432813

/-! ## A222443.P14900955249251447558

`2*(3*A198714(n+1)-1)-1`
-/

namespace A222443.P14900955249251447558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A198714 (n + 1) - 1) - 1

end

end A222443.P14900955249251447558

/-! ## A222443.P18200558189846932502

`A222444(A374008(n+1))`
-/

namespace A222443.P18200558189846932502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 (A374008 (n + 1)).toNat

end

end A222443.P18200558189846932502

/-!
# A222444: T(n,k) = number of n X k 0..3 arrays with entries increasing mod 4 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222444, there is no canonical definition to state claims against.
-/

/-! ## A222444.P2598325029918756686

`2*A233018(1+n)-1`
-/

namespace A222444.P2598325029918756686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233018 (1 + n) - 1

end

end A222444.P2598325029918756686

/-! ## A222444.P10065864538307246115

`(A269109(n+1)-A269097(n+1))/4`
-/

namespace A222444.P10065864538307246115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269109 (n + 1) - A269097 (n + 1) : ℚ) / 4

end

end A222444.P10065864538307246115

/-! ## A222444.P10718336751531143297

`A198688(n)%(A233018(n+1)-A169634(n))`
-/

namespace A222444.P10718336751531143297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198688 n) (A233018 (n + 1) - A169634 n)

end

end A222444.P10718336751531143297

/-! ## A222444.P14134528155984994770

`A199483(n)%(A233018(n+1)-A199418(n))`
-/

namespace A222444.P14134528155984994770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199483 n) (A233018 (n + 1) - A199418 n)

end

end A222444.P14134528155984994770

/-!
# A222445: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX2 array.

The programs for A222445, there is no canonical definition to state claims against.
-/

/-! ## A222445.P13703841398755842009

`A222448(∑[n+1]+2)`
-/

namespace A222445.P13703841398755842009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222445.P13703841398755842009

/-! ## A222445.P6157738270524517088

`record[A222448(n+1)/A036073(n)]`
-/

namespace A222445.P6157738270524517088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P6157738270524517088

/-! ## A222445.P8653565859809051730

`record[root(A222448(n+1), A156366(n))]`
-/

namespace A222445.P8653565859809051730
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℝ) ^ (1 / (A156366 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P8653565859809051730

/-! ## A222445.P5866558746713805419

`record[gcd(A002262(n), A222448(n+2))]`
-/

namespace A222445.P5866558746713805419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222448 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P5866558746713805419

/-! ## A222445.P5733656645573744940

`record[root(A222448(n+1), A130270(n+1))]`
-/

namespace A222445.P5733656645573744940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222448 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222445.P5733656645573744940

/-!
# A222446: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A222446, there is no canonical definition to state claims against.
-/

/-! ## A222446.P9975828726694794172

`A222448(∑[n+2]+4)`
-/

namespace A222446.P9975828726694794172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222446.P9975828726694794172

/-!
# A222447: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A222447, there is no canonical definition to state claims against.
-/

/-! ## A222447.P7663091383076931500

`A222448(∑[n+3]+7)`
-/

namespace A222447.P7663091383076931500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222448 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222447.P7663091383076931500

/-!
# A222448: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A222448, there is no canonical definition to state claims against.
-/

/-! ## A222448.P2023240425642532671

`A218242(n+1)+A165481(A041006(n))`
-/

namespace A222448.P2023240425642532671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (n + 1) + A165481 (A041006 n).toNat

end

end A222448.P2023240425642532671

/-! ## A222448.P212891803173158981

`A218372(n+1)+A165481(A041006(n))`
-/

namespace A222448.P212891803173158981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (n + 1) + A165481 (A041006 n).toNat

end

end A222448.P212891803173158981

/-! ## A222448.P17312385435626967787

`A189111(n+1)-A000038(A186247(n))`
-/

namespace A222448.P17312385435626967787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1) - A000038 (A186247 n).toNat

end

end A222448.P17312385435626967787

/-! ## A222448.P13938026428243812184

`A217457(n+1)-A086257(A056654(n+1))`
-/

namespace A222448.P13938026428243812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217457 (n + 1) - A086257 (A056654 (n + 1)).toNat

end

end A222448.P13938026428243812184

/-! ## A222448.P4839939857524627098

`A218372(n+1)+A010892(A129374(3*n))`
-/

namespace A222448.P4839939857524627098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (n + 1) + A010892 (A129374 (3 * n)).toNat

end

end A222448.P4839939857524627098

/-!
# A222449: Number of n X n 0..1 arrays with exactly floor(n X n/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222449, there is no canonical definition to state claims against.
-/

/-! ## A222449.P7736354479560263247

`A222456(∑[4*n]+1)`
-/

namespace A222449.P7736354479560263247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222449.P7736354479560263247

/-!
# A222450: Number of nX2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222450, there is no canonical definition to state claims against.
-/

/-! ## A222450.P10362788915737412665

`A222456(∑[n+1]+2)`
-/

namespace A222450.P10362788915737412665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222450.P10362788915737412665

/-!
# A222451: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222451, there is no canonical definition to state claims against.
-/

/-! ## A222451.P7756297757534825605

`A222456(∑[n+2]+4)`
-/

namespace A222451.P7756297757534825605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222451.P7756297757534825605

/-!
# A222452: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222452, there is no canonical definition to state claims against.
-/

/-! ## A222452.P13921038858213269410

`A222456(∑[n+3]+7)`
-/

namespace A222452.P13921038858213269410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222452.P13921038858213269410

/-!
# A222453: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222453, there is no canonical definition to state claims against.
-/

/-! ## A222453.P3256735843467874348

`A222456(A167499(n+3))`
-/

namespace A222453.P3256735843467874348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A167499 (n + 3)).toNat

end

end A222453.P3256735843467874348

/-! ## A222453.P13876046026118052478

`A222456(A374005(n+1))`
-/

namespace A222453.P13876046026118052478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A374005 (n + 1)).toNat

end

end A222453.P13876046026118052478

/-!
# A222454: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222454, there is no canonical definition to state claims against.
-/

/-! ## A222454.P16914967826738440132

`A222456(∑[n+5]+16)`
-/

namespace A222454.P16914967826738440132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222454.P16914967826738440132

/-!
# A222455: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222455, there is no canonical definition to state claims against.
-/

/-! ## A222455.P1829536981749706772

`A222456(A056119(n)+28)`
-/

namespace A222455.P1829536981749706772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A056119 n + 28).toNat

end

end A222455.P1829536981749706772

/-! ## A222455.P6203925532629620587

`A222456(A374008(n+1))`
-/

namespace A222455.P6203925532629620587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222456 (A374008 (n + 1)).toNat

end

end A222455.P6203925532629620587

/-!
# A222456: T(n,k) = Number of n X k 0..1 arrays with exactly floor(n X k/2) elements unequal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A222456, there is no canonical definition to state claims against.
-/

/-! ## A222456.P10552901487794725087

`A001222(A276086(A222666(n+1)²))`
-/

namespace A222456.P10552901487794725087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276086 (A222666 (n + 1) ^ 2).toNat).toNat

end

end A222456.P10552901487794725087

/-! ## A222456.P13074762597602240284

`∑{d}[A222666(A187829(n+1)), A108504(#)]`
-/

namespace A222456.P13074762597602240284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A108504 d

end

end A222456.P13074762597602240284

/-! ## A222456.P17255493284903010937

`∑{d}[A222666(A187829(n+1)), A117119(#)]`
-/

namespace A222456.P17255493284903010937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222666 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117119 d

end

end A222456.P17255493284903010937

/-! ## A222456.P7962716317489774534

`A195172(A222666(n+1)%A020610(n+1))`
-/

namespace A222456.P7962716317489774534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (Int.tmod (A222666 (n + 1)) (A020610 (n + 1))).toNat

end

end A222456.P7962716317489774534

/-!
# A222459: Number of n X 3 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222459, there is no canonical definition to state claims against.
-/

/-! ## A222459.P17509413101222133683

`A222462(C(n+3, 2)+3)`
-/

namespace A222459.P17509413101222133683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (Nat.choose (n + 3) 2 + 3)

end

end A222459.P17509413101222133683

/-! ## A222459.P6841569677540786385

`A222462(∑[n+3]+1)`
-/

namespace A222459.P6841569677540786385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222459.P6841569677540786385

/-!
# A222460: Number of n X 4 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222460, there is no canonical definition to state claims against.
-/

/-! ## A222460.P7311403635072662551

`A222462(A055999(n)+10)`
-/

namespace A222460.P7311403635072662551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A055999 n + 10).toNat

end

end A222460.P7311403635072662551

/-! ## A222460.P7135721134921220473

`A222462(A374004(n+1))`
-/

namespace A222460.P7135721134921220473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (A374004 (n + 1)).toNat

end

end A222460.P7135721134921220473

/-!
# A222461: Number of nX5 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222461, there is no canonical definition to state claims against.
-/

/-! ## A222461.P13158652282577702222

`A222462(eq[4, A025581(n)]+1)`
-/

namespace A222461.P13158652282577702222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222461.P13158652282577702222

/-!
# A222462: T(n,k) = number of n X k 0..7 arrays with no entry increasing mod 8 by 7 rightwards or downwards, starting with upper left zero.

The programs for A222462, there is no canonical definition to state claims against.
-/

/-! ## A222462.P11222558750357769296

`∑{d}[A118171(n), A165827(#)]`
-/

namespace A222462.P11222558750357769296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165827 d

end

end A222462.P11222558750357769296

/-! ## A222462.P504070674176956993

`∏{e}[A308128(n), A030549(#)]`
-/

namespace A222462.P504070674176956993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030549 (Nat.factorization (f1 n).natAbs p)

end

end A222462.P504070674176956993

/-! ## A222462.P4069072493630731668

`A037465(lcm(A005676(n), A222340(n+1)))`
-/

namespace A222462.P4069072493630731668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (Int.lcm (A005676 n) (A222340 (n + 1)))

end

end A222462.P4069072493630731668

/-!
# A222463: a(n) = n*5/gcd(n*5,n+5), n >= 5.

The programs for A222463, the canonical program `A222463.P13137367175982139365` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222463 has offset 5).

The definition of A222463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222463.P13137367175982139365

`(n+5)*5/gcd(25, n+10)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222463

/-- `(n+5)*5/gcd(25, n+10)` -/
def P13137367175982139365.Spec : Prop :=
  ∀ n, P13137367175982139365.a n = (A222463 (n + 5) : ℚ)

end A222463

/-! ## A222463.P8327964835807124296

`(n+5)*5/gcd((n+5)*5, n+10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222463.P8327964835807124296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 5) * 5 : ℚ) / (Nat.gcd ((n + 5) * 5) (n + 10) : ℚ)

end

end A222463.P8327964835807124296

namespace A222463

/-- `(n+5)*5/gcd((n+5)*5, n+10)` -/
def P8327964835807124296.Spec : Prop :=
  ∀ n, P8327964835807124296.a n = (A222463 (n + 5) : ℚ)

end A222463

/-! ## A222463.P7466320332247870403

`A221918(C(n+5, 2)+5)`
-/

namespace A222463.P7466320332247870403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221918 (Nat.choose (n + 5) 2 + 5)

end

end A222463.P7466320332247870403

namespace A222463

/-- `A221918(C(n+5, 2)+5)` -/
def P7466320332247870403.Spec : Prop :=
  ∀ n, P7466320332247870403.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P5850114946438020891

`A026741(A227109(n+5))`
-/

namespace A222463.P5850114946438020891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227109 (n + 5)).toNat

end

end A222463.P5850114946438020891

namespace A222463

/-- `A026741(A227109(n+5))` -/
def P5850114946438020891.Spec : Prop :=
  ∀ n, P5850114946438020891.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P8762865525446758306

`A318574(11*A000040(n+5))`
-/

namespace A222463.P8762865525446758306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (11 * A000040 (n + 5)).toNat

end

end A222463.P8762865525446758306

namespace A222463

/-- `A318574(11*A000040(n+5))` -/
def P8762865525446758306.Spec : Prop :=
  ∀ n, P8762865525446758306.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P5725222470064727116

`A257522(A167614(n+7)+2)`
-/

namespace A222463.P5725222470064727116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A167614 (n + 7) + 2).toNat

end

end A222463.P5725222470064727116

namespace A222463

/-- `A257522(A167614(n+7)+2)` -/
def P5725222470064727116.Spec : Prop :=
  ∀ n, P5725222470064727116.a n = A222463 (n + 5)

end A222463

/-! ## A222463.P6032685490704261028

`A257522(A046691(n+7))`
-/

namespace A222463.P6032685490704261028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257522 (A046691 (n + 7)).toNat

end

end A222463.P6032685490704261028

namespace A222463

/-- `A257522(A046691(n+7))` -/
def P6032685490704261028.Spec : Prop :=
  ∀ n, P6032685490704261028.a n = A222463 (n + 5)

end A222463

/-!
# A222464: a(n) = (n+6)/gcd(n*6,n+6), n >= 6.

The programs for A222464, the canonical program `A222464.P9341199532680206104` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222464 has offset 6).

The definition of A222464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222464.P9341199532680206104

`(n+12)/gcd(36, n+12)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222464

/-- `(n+12)/gcd(36, n+12)` -/
def P9341199532680206104.Spec : Prop :=
  ∀ n, P9341199532680206104.a n = (A222464 (n + 6) : ℚ)

end A222464

/-! ## A222464.P6662161651818201635

`(n+12)/gcd((n+6)*6, n+12)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222464.P6662161651818201635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℚ) / (Nat.gcd ((n + 6) * 6) (n + 12) : ℚ)

end

end A222464.P6662161651818201635

namespace A222464

/-- `(n+12)/gcd((n+6)*6, n+12)` -/
def P6662161651818201635.Spec : Prop :=
  ∀ n, P6662161651818201635.a n = (A222464 (n + 6) : ℚ)

end A222464

/-! ## A222464.P6071516152328345679

`A221919(C(n+6, 2)+6)`
-/

namespace A222464.P6071516152328345679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221919 (Nat.choose (n + 6) 2 + 6)

end

end A222464.P6071516152328345679

namespace A222464

/-- `A221919(C(n+6, 2)+6)` -/
def P6071516152328345679.Spec : Prop :=
  ∀ n, P6071516152328345679.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P9429479494390277705

`A051724(A145064(n+10))`
-/

namespace A222464.P9429479494390277705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A145064 (n + 10)).toNat

end

end A222464.P9429479494390277705

namespace A222464

/-- `A051724(A145064(n+10))` -/
def P9429479494390277705.Spec : Prop :=
  ∀ n, P9429479494390277705.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P9083586811682949589

`A060789(A060789(n+12))`
-/

namespace A222464.P9083586811682949589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A060789 (n + 12)).toNat

end

end A222464.P9083586811682949589

namespace A222464

/-- `A060789(A060789(n+12))` -/
def P9083586811682949589.Spec : Prop :=
  ∀ n, P9083586811682949589.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P17464978191800675543

`A106619(A026741(n+12))`
-/

namespace A222464.P17464978191800675543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A026741 (n + 12)).toNat

end

end A222464.P17464978191800675543

namespace A222464

/-- `A106619(A026741(n+12))` -/
def P17464978191800675543.Spec : Prop :=
  ∀ n, P17464978191800675543.a n = A222464 (n + 6)

end A222464

/-! ## A222464.P4540421196742535204

`A106610(A060819(n+12))`
-/

namespace A222464.P4540421196742535204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A060819 (n + 12)).toNat

end

end A222464.P4540421196742535204

namespace A222464

/-- `A106610(A060819(n+12))` -/
def P4540421196742535204.Spec : Prop :=
  ∀ n, P4540421196742535204.a n = A222464 (n + 6)

end A222464

/-!
# A222465: a(n) = 4*n^2 + 3.

The programs for A222465, the canonical program `A222465.P2394610701762065528` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222465 has offset 0).

The definition of A222465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+3` (program `A222465.P2394610701762065528`, by `A222465.P2394610701762065528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222465.P2394610701762065528

`4*n²+3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222465

/-- `4*n²+3` -/
def P2394610701762065528.Spec : Prop :=
  ∀ n, (P2394610701762065528.a n : ℤ) = A222465 n

theorem P2394610701762065528.correct : P2394610701762065528.Spec := by
  intro n
  simp only [A222465]

end A222465

/-! ## A222465.P8228082271841829149

`ogf((3-2x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A222465.P8228082271841829149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 7] [1, -3, 3, -1] n

end

end A222465.P8228082271841829149

namespace A222465

/-- `ogf((3-2x+7x^2)/(1-3x+3x^2-x^3))` -/
def P8228082271841829149.Spec : Prop :=
  ∀ n, P8228082271841829149.a n = A222465 n

end A222465

/-! ## A222465.P396591007199011526

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=19`
-/

namespace A222465.P396591007199011526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 19] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A222465.P396591007199011526

namespace A222465

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P396591007199011526.Spec : Prop :=
  ∀ n, P396591007199011526.a n = A222465 n

theorem P396591007199011526.correct : P396591007199011526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A222465, Nat.add_sub_cancel, A222465.P396591007199011526.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A222465, Nat.add_sub_cancel, A222465.P396591007199011526.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A222465

/-! ## A222465.P1029115483702655204

`or(3, (2*n)²)`
-/

namespace A222465.P1029115483702655204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 ((2 * n) ^ 2)

end

end A222465.P1029115483702655204

namespace A222465

/-- `or(3, (2*n)²)` -/
def P1029115483702655204.Spec : Prop :=
  ∀ n, (P1029115483702655204.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P8175148183477033737

`xor(3, (2*n)²)`
-/

namespace A222465.P8175148183477033737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((2 * n) ^ 2)

end

end A222465.P8175148183477033737

namespace A222465

/-- `xor(3, (2*n)²)` -/
def P8175148183477033737.Spec : Prop :=
  ∀ n, (P8175148183477033737.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P14443777429311560653

`filter[n²+3, #%2]`
-/

namespace A222465.P14443777429311560653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A222465.P14443777429311560653

namespace A222465

/-- `filter[n²+3, #%2]` -/
def P14443777429311560653.Spec : Prop :=
  ∀ n, (P14443777429311560653.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P290326006578887277

`filter[n²+3, gcd(2, #)]`
-/

namespace A222465.P290326006578887277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n)

end

end A222465.P290326006578887277

namespace A222465

/-- `filter[n²+3, gcd(2, #)]` -/
def P290326006578887277.Spec : Prop :=
  ∀ n, (P290326006578887277.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P7864285015707716510

`filter[n²+3, and(1, #)]`
-/

namespace A222465.P7864285015707716510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.land 1 (f1 j) = 1) n)

end

end A222465.P7864285015707716510

namespace A222465

/-- `filter[n²+3, and(1, #)]` -/
def P7864285015707716510.Spec : Prop :=
  ∀ n, (P7864285015707716510.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P14160397677606731231

`floor((3/acot(n)-n)²)`
-/

namespace A222465.P14160397677606731231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / SequenceMachineLib.acot (n : ℝ) - (n : ℝ)) ^ 2⌋

end

end A222465.P14160397677606731231

namespace A222465

/-- `floor((3/acot(n)-n)²)` -/
def P14160397677606731231.Spec : Prop :=
  ∀ n, P14160397677606731231.a n = A222465 n

end A222465

/-! ## A222465.P6894359622725678149

`∑[a(n-1)+8]` with `a(0)=3, a(1)=4`
-/

namespace A222465.P6894359622725678149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222465.P6894359622725678149

namespace A222465

/-- `∑[a(n-1)+8]` -/
def P6894359622725678149.Spec : Prop :=
  ∀ n, (P6894359622725678149.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P10606145413144718722

`record[(n%4+n)²+3]`
-/

namespace A222465.P10606145413144718722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 4 + n) ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P10606145413144718722

namespace A222465

/-- `record[(n%4+n)²+3]` -/
def P10606145413144718722.Spec : Prop :=
  ∀ n, (P10606145413144718722.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P8952593580668923351

`record[and(n, n+1)²+3]`
-/

namespace A222465.P8952593580668923351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P8952593580668923351

namespace A222465

/-- `record[and(n, n+1)²+3]` -/
def P8952593580668923351.Spec : Prop :=
  ∀ n, (P8952593580668923351.a n : ℤ) = A222465 n

end A222465

/-! ## A222465.P9606965791807543006

`∑[ogf((3-2x+7x^2)/(1-2x+x^2))]`
-/

namespace A222465.P9606965791807543006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222465.P9606965791807543006

namespace A222465

/-- `∑[ogf((3-2x+7x^2)/(1-2x+x^2))]` -/
def P9606965791807543006.Spec : Prop :=
  ∀ n, P9606965791807543006.a n = A222465 n

end A222465

/-! ## A222465.P15062970947555242629

`7-∑[a(n-1)-8]` with `a(0)=4`
-/

namespace A222465.P15062970947555242629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222465.P15062970947555242629

namespace A222465

/-- `7-∑[a(n-1)-8]` -/
def P15062970947555242629.Spec : Prop :=
  ∀ n, P15062970947555242629.a n = A222465 n

end A222465

/-! ## A222465.P17401156507716181387

`Δ[C(2*n, 3)+3*n]`
-/

namespace A222465.P17401156507716181387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3 + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A222465.P17401156507716181387

namespace A222465

/-- `Δ[C(2*n, 3)+3*n]` -/
def P17401156507716181387.Spec : Prop :=
  ∀ n, P17401156507716181387.a n = A222465 n

theorem P17401156507716181387.correct : P17401156507716181387.Spec := by
  intro n
  simp only [A222465, Nat.add_sub_cancel, A222465.P17401156507716181387.f1, A222465.P17401156507716181387.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222465

/-! ## A222465.P6938617054698633713

`record[n*xor(1, n)-(n-3)]`
-/

namespace A222465.P6938617054698633713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 1 n : ℤ) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222465.P6938617054698633713

namespace A222465

/-- `record[n*xor(1, n)-(n-3)]` -/
def P6938617054698633713.Spec : Prop :=
  ∀ n, P6938617054698633713.a n = A222465 n

end A222465

/-! ## A222465.P15067770733837716041

`xor(4, n*8*n+2)/2`
-/

namespace A222465.P15067770733837716041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 4 (n * (8 * n) + 2) : ℚ) / 2

end

end A222465.P15067770733837716041

namespace A222465

/-- `xor(4, n*8*n+2)/2` -/
def P15067770733837716041.Spec : Prop :=
  ∀ n, P15067770733837716041.a n = (A222465 n : ℚ)

end A222465

/-! ## A222465.P17438599407360096183

`a(n-1)+8*n-4` with `a(0)=3`
-/

namespace A222465.P17438599407360096183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (8 * n : ℤ) - 4

end

end A222465.P17438599407360096183

namespace A222465

/-- `a(n-1)+8*n-4` -/
def P17438599407360096183.Spec : Prop :=
  ∀ n, P17438599407360096183.a n = A222465 n

theorem P17438599407360096183.correct : P17438599407360096183.Spec := by
  intro n
  induction n with
  | zero => simp [A222465, A222465.P17438599407360096183.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222465, Nat.add_sub_cancel, A222465.P17438599407360096183.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222465

/-! ## A222465.P68793098759613506

`ceil((2*n-acot(-(2*n)))²)`
-/

namespace A222465.P68793098759613506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℝ) - SequenceMachineLib.acot (-(2 * n : ℤ) : ℝ)) ^ 2⌉

end

end A222465.P68793098759613506

namespace A222465

/-- `ceil((2*n-acot(-(2*n)))²)` -/
def P68793098759613506.Spec : Prop :=
  ∀ n, P68793098759613506.a n = A222465 n

end A222465

/-! ## A222465.P16933982075148285777

`floor(8*n-(4-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A222465.P16933982075148285777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 * n : ℤ) - (4 - a (n - 1))

end

end A222465.P16933982075148285777

namespace A222465

/-- `floor(8*n-(4-a(n-1)))` -/
def P16933982075148285777.Spec : Prop :=
  ∀ n, P16933982075148285777.a n = A222465 n

theorem P16933982075148285777.correct : P16933982075148285777.Spec := by
  intro n
  induction n with
  | zero => simp [A222465, A222465.P16933982075148285777.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222465, Nat.add_sub_cancel, A222465.P16933982075148285777.a, A222465.P2394610701762065528.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222465

/-!
# A222467: Denominator sequence of the n-th convergent of the continued fraction 1/(1 + 2/(2 + 2/(3 + 2/(4 + ...

The programs for A222467, the canonical program `A222467.P13033604578238602950` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222467 has offset 0).

The definition of A222467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222467.P13033604578238602950

`n*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222467

/-- `n*a(n-1)+2*a(n-2)` -/
def P13033604578238602950.Spec : Prop :=
  ∀ n, (P13033604578238602950.a n : ℤ) = A222467 n

theorem P13033604578238602950.correct : P13033604578238602950.Spec := by
  intro n
  simp only [A222467]

end A222467

/-! ## A222467.P6612857676119447300

`∏[2/a(n-1)+n]` with `a(0)=1, a(1)=1`
-/

namespace A222467.P6612857676119447300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222467.P6612857676119447300

namespace A222467

/-- `∏[2/a(n-1)+n]` -/
def P6612857676119447300.Spec : Prop :=
  ∀ n, P6612857676119447300.a n = (A222467 n : ℚ)

end A222467

/-! ## A222467.P12144836339358198707

`3*a(n-2)-(a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A222467.P12144836339358198707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - (n : ℤ) * a (n - 1))

end

end A222467.P12144836339358198707

namespace A222467

/-- `3*a(n-2)-(a(n-2)-n*a(n-1))` -/
def P12144836339358198707.Spec : Prop :=
  ∀ n, P12144836339358198707.a n = A222467 n

end A222467

/-! ## A222467.P2389237928929919913

`a(n-1)/n^(-1)+a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=1`
-/

namespace A222467.P2389237928929919913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((n : ℚ) ^ (-1 : ℤ) : ℝ) + a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A222467.P2389237928929919913

namespace A222467

/-- `a(n-1)/n^(-1)+a(n-2)/sqrt(1/4)` -/
def P2389237928929919913.Spec : Prop :=
  ∀ n, P2389237928929919913.a n = (A222467 n : ℝ)

end A222467

/-! ## A222467.P16300022329517151912

`a(n-1)/n^(-1)+1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222467.P16300022329517151912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + (1 - ⌊1 - a (n - 2) - a (n - 2)⌋ : ℚ)

end

end A222467.P16300022329517151912

namespace A222467

/-- `a(n-1)/n^(-1)+1-floor(1-a(n-2)-a(n-2))` -/
def P16300022329517151912.Spec : Prop :=
  ∀ n, P16300022329517151912.a n = (A222467 n : ℚ)

end A222467

/-!
# A222468: Numerator sequence of the n-th convergent of the continued fraction 1/(1+2/(2+2/(3+2/(4+...

The programs for A222468, the canonical program `A222468.P6895879006308950679` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222468 has offset 1).

The definition of A222468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222468.P6895879006308950679

`(n+1)*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222468

/-- `(n+1)*a(n-1)+2*a(n-2)` -/
def P6895879006308950679.Spec : Prop :=
  ∀ n, (P6895879006308950679.a n : ℤ) = A222468 (n + 1)

theorem P6895879006308950679.correct : P6895879006308950679.Spec := by
  intro n
  simp only [A222468, Nat.add_sub_cancel]

end A222468

/-! ## A222468.P4875341430435237217

`∏[2/a(n-1)+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A222468.P4875341430435237217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222468.P4875341430435237217

namespace A222468

/-- `∏[2/a(n-1)+n+1]` -/
def P4875341430435237217.Spec : Prop :=
  ∀ n, P4875341430435237217.a n = (A222468 (n + 1) : ℚ)

end A222468

/-! ## A222468.P18193805168370068666

`A004277(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222468.P18193805168370068666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004277 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222468.P18193805168370068666

namespace A222468

/-- `A004277(a(n-2))+(n+1)*a(n-1)` -/
def P18193805168370068666.Spec : Prop :=
  ∀ n, P18193805168370068666.a n = A222468 (n + 1)

end A222468

/-! ## A222468.P6113363407623706352

`A005843(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222468.P6113363407623706352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005843 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222468.P6113363407623706352

namespace A222468

/-- `A005843(a(n-2))+(n+1)*a(n-1)` -/
def P6113363407623706352.Spec : Prop :=
  ∀ n, P6113363407623706352.a n = A222468 (n + 1)

end A222468

/-!
# A222469: Denominator sequence of the n-th convergent of the continued fraction 1/(1 - 2/(2 - 2/(3 - 2/(4 - ...)))).

The programs for A222469, the canonical program `A222469.P13200938587605070546` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222469 has offset 0).

The definition of A222469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222469.P13200938587605070546

`n*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222469

/-- `n*a(n-1)-2*a(n-2)` -/
def P13200938587605070546.Spec : Prop :=
  ∀ n, P13200938587605070546.a n = A222469 n

theorem P13200938587605070546.correct : P13200938587605070546.Spec := by
  intro n
  simp only [A222469]

end A222469

/-! ## A222469.P12056735620929712222

`a(n-1)/n^-1-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A222469.P12056735620929712222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - a (n - 2) - a (n - 2)

end

end A222469.P12056735620929712222

namespace A222469

/-- `a(n-1)/n^-1-a(n-2)-a(n-2)` -/
def P12056735620929712222.Spec : Prop :=
  ∀ n, P12056735620929712222.a n = (A222469 n : ℚ)

end A222469

/-!
# A222470: Numerator sequence of the n-th convergent of the continued fraction 1/(1-2/(2-2/(3-2/(4-...

The programs for A222470, the canonical program `A222470.P6546917298385608291` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222470 has offset 1).

The definition of A222470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222470.P6546917298385608291

`(n+1)*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222470

/-- `(n+1)*a(n-1)-2*a(n-2)` -/
def P6546917298385608291.Spec : Prop :=
  ∀ n, P6546917298385608291.a n = A222470 (n + 1)

theorem P6546917298385608291.correct : P6546917298385608291.Spec := by
  intro n
  simp only [A222470, Nat.add_sub_cancel]

end A222470

/-! ## A222470.P11810054852957890621

`∏[n+1-2/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A222470.P11810054852957890621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℚ) - 2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222470.P11810054852957890621

namespace A222470

/-- `∏[n+1-2/a(n-1)]` -/
def P11810054852957890621.Spec : Prop :=
  ∀ n, P11810054852957890621.a n = (A222470 (n + 1) : ℚ)

end A222470

/-! ## A222470.P11750921894847364277

`∏[1-(2/a(n-1)-n)]` with `a(0)=1, a(1)=2`
-/

namespace A222470.P11750921894847364277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 - (2 / f1 (n - 1) - (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222470.P11750921894847364277

namespace A222470

/-- `∏[1-(2/a(n-1)-n)]` -/
def P11750921894847364277.Spec : Prop :=
  ∀ n, P11750921894847364277.a n = (A222470 (n + 1) : ℚ)

end A222470

/-! ## A222470.P1849129804743556253

`a(n-1)-(2*a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A222470.P1849129804743556253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (2 * a (n - 2) - (n : ℤ) * a (n - 1))

end

end A222470.P1849129804743556253

namespace A222470

/-- `a(n-1)-(2*a(n-2)-n*a(n-1))` -/
def P1849129804743556253.Spec : Prop :=
  ∀ n, P1849129804743556253.a n = A222470 (n + 1)

end A222470

/-!
# A222472: Numerator sequence of the n-th convergent of the continued fraction 1/(1+3/(2+3/(3+3/(4+...

The programs for A222472, the canonical program `A222472.P3615096556377460270` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222472 has offset 1).

The definition of A222472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222472.P3615096556377460270

`(n+1)*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A222472

/-- `(n+1)*a(n-1)+3*a(n-2)` -/
def P3615096556377460270.Spec : Prop :=
  ∀ n, (P3615096556377460270.a n : ℤ) = A222472 (n + 1)

theorem P3615096556377460270.correct : P3615096556377460270.Spec := by
  intro n
  simp only [A222472, Nat.add_sub_cancel]

end A222472

/-! ## A222472.P13222517079067900464

`∏[3/a(n-1)+n+1]` with `a(0)=1, a(1)=2`
-/

namespace A222472.P13222517079067900464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 / f1 (n - 1) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A222472.P13222517079067900464

namespace A222472

/-- `∏[3/a(n-1)+n+1]` -/
def P13222517079067900464.Spec : Prop :=
  ∀ n, P13222517079067900464.a n = (A222472 (n + 1) : ℚ)

end A222472

/-! ## A222472.P1578946563265439599

`A008486(a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A222472.P1578946563265439599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008486 (a (n - 2)).toNat + (n + 1 : ℤ) * a (n - 1)

end

end A222472.P1578946563265439599

namespace A222472

/-- `A008486(a(n-2))+(n+1)*a(n-1)` -/
def P1578946563265439599.Spec : Prop :=
  ∀ n, P1578946563265439599.a n = A222472 (n + 1)

end A222472

/-!
# A222473: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222473, there is no canonical definition to state claims against.
-/

/-! ## A222473.P405415794268186897

`A222479(∑[n+1]+2)`
-/

namespace A222473.P405415794268186897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222473.P405415794268186897

/-! ## A222473.P1688434721782766889

`A180264(A005380(n))`
-/

namespace A222473.P1688434721782766889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180264 (A005380 n).toNat

end

end A222473.P1688434721782766889

/-!
# A222474: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222474, there is no canonical definition to state claims against.
-/

/-! ## A222474.P11208725259037594521

`A222479(∑[n+2]+4)`
-/

namespace A222474.P11208725259037594521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222474.P11208725259037594521

/-!
# A222475: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222475, there is no canonical definition to state claims against.
-/

/-! ## A222475.P11175766471610040653

`A222479(∑[n+3]+7)`
-/

namespace A222475.P11175766471610040653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222475.P11175766471610040653

/-!
# A222476: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222476, there is no canonical definition to state claims against.
-/

/-! ## A222476.P2325364222069216618

`A222479(A374005(n+1))`
-/

namespace A222476.P2325364222069216618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374005 (n + 1)).toNat

end

end A222476.P2325364222069216618

/-!
# A222477: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222477, there is no canonical definition to state claims against.
-/

/-! ## A222477.P682088947879428121

`A222479(A374007(n+1))`
-/

namespace A222477.P682088947879428121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374007 (n + 1)).toNat

end

end A222477.P682088947879428121

/-!
# A222478: Number of nX7 0..3 arrays with no more than floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222478, there is no canonical definition to state claims against.
-/

/-! ## A222478.P3650727163916521657

`A222479(A374008(n+1))`
-/

namespace A222478.P3650727163916521657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A374008 (n + 1)).toNat

end

end A222478.P3650727163916521657

/-!
# A222479: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..3 order.

The programs for A222479, there is no canonical definition to state claims against.
-/

/-! ## A222479.P7529952982686112170

`A004438(A222371(n+1))`
-/

namespace A222479.P7529952982686112170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A222371 (n + 1)).toNat

end

end A222479.P7529952982686112170

/-!
# A222481: Continued fraction for cos(1)/(1+cos(1)).

The programs for A222481, there is no canonical definition to state claims against.
-/

/-! ## A222481.P1268122930784748111

`A068115(n)+char[1]`
-/

namespace A222481.P1268122930784748111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222481.P1268122930784748111

/-! ## A222481.P16244616137748730970

`A068115(n)*A141044(n)`
-/

namespace A222481.P16244616137748730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A141044 n

end

end A222481.P16244616137748730970

/-! ## A222481.P8898196652977956954

`A068115(n)*A373565(n)`
-/

namespace A222481.P8898196652977956954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A373565 n

end

end A222481.P8898196652977956954

/-! ## A222481.P3233284801622261412

`abs(A159075(n)-A068115(n))`
-/

namespace A222481.P3233284801622261412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159075 n - A068115 n|

end

end A222481.P3233284801622261412

/-! ## A222481.P10644148976142016603

`(A063524(n)+1)*A068115(n)`
-/

namespace A222481.P10644148976142016603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A068115 n

end

end A222481.P10644148976142016603

/-! ## A222481.P7853980140312176383

`A068115(n)*A100063(A000040(n+1))`
-/

namespace A222481.P7853980140312176383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068115 n * A100063 (A000040 (n + 1)).toNat

end

end A222481.P7853980140312176383

/-! ## A222481.P8248645776557583771

`lcm(A068115(n), A141044(n²))`
-/

namespace A222481.P8248645776557583771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068115 n) (A141044 (n ^ 2))

end

end A222481.P8248645776557583771

/-!
# A222483: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222483, there is no canonical definition to state claims against.
-/

/-! ## A222483.P16771812658564590594

`A222488(∑[n+3]+1)`
-/

namespace A222483.P16771812658564590594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222483.P16771812658564590594

/-! ## A222483.P10018463526119586938

`record[A222488(A198464(n+1))]`
-/

namespace A222483.P10018463526119586938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222483.P10018463526119586938

/-! ## A222483.P9041861157137795858

`record[char[A141214(n)]*A222488(n+1)]`
-/

namespace A222483.P9041861157137795858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222483.P9041861157137795858

/-!
# A222484: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222484, there is no canonical definition to state claims against.
-/

/-! ## A222484.P5715704359276529900

`A222488(A141214(n+1))`
-/

namespace A222484.P5715704359276529900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A141214 (n + 1)).toNat

end

end A222484.P5715704359276529900

/-!
# A222485: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222485, there is no canonical definition to state claims against.
-/

/-! ## A222485.P6985461008191949251

`A222488(Δ[A264443(n)])`
-/

namespace A222485.P6985461008191949251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (f1 (n + 1) - f1 n).toNat

end

end A222485.P6985461008191949251

/-!
# A222486: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222486, there is no canonical definition to state claims against.
-/

/-! ## A222486.P10401501888178309379

`A222488(A052905(n+3))`
-/

namespace A222486.P10401501888178309379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A052905 (n + 3)).toNat

end

end A222486.P10401501888178309379

/-!
# A222487: Number of nX7 0..2 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222487, there is no canonical definition to state claims against.
-/

/-! ## A222487.P3802465737616002571

`A222488(A055999(n+4))`
-/

namespace A222487.P3802465737616002571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (A055999 (n + 4)).toNat

end

end A222487.P3802465737616002571

/-!
# A222488: T(n,k)=Number of nXk 0..2 arrays with exactly floor(nXk/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222488, there is no canonical definition to state claims against.
-/

/-! ## A222488.P11225484887576609878

`A222500(n+1)-A025456(A190502(n))`
-/

namespace A222488.P11225484887576609878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (n + 1) - A025456 (A190502 n).toNat

end

end A222488.P11225484887576609878

/-! ## A222488.P2974881341579587529

`A244606(n+1)+A162343(A222500(n+1))`
-/

namespace A222488.P2974881341579587529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (n + 1) + A162343 (A222500 (n + 1)).toNat

end

end A222488.P2974881341579587529

/-! ## A222488.P8732677864515487611

`A222500(n+1)-A037912(A146927(n+1))`
-/

namespace A222488.P8732677864515487611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (n + 1) - A037912 (A146927 (n + 1)).toNat

end

end A222488.P8732677864515487611

/-! ## A222488.P11998894414007365130

`A233131(A028630(n))+A162343(A222500(n+1))`
-/

namespace A222488.P11998894414007365130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233131 (A028630 n).toNat + A162343 (A222500 (n + 1)).toNat

end

end A222488.P11998894414007365130

/-!
# A222489: Number of 2Xn 0..2 arrays with exactly floor(2Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222489, there is no canonical definition to state claims against.
-/

/-! ## A222489.P12617719051407853614

`A222488(2+∑[1+n])`
-/

namespace A222489.P12617719051407853614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222489.P12617719051407853614

/-!
# A222490: Number of 3Xn 0..2 arrays with exactly floor(3Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222490, there is no canonical definition to state claims against.
-/

/-! ## A222490.P120697543313831936

`A222488(∑[n+2]+4)`
-/

namespace A222490.P120697543313831936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222490.P120697543313831936

/-! ## A222490.P11191224449664920866

`record[A010054(n)*A222488(n+3)]`
-/

namespace A222490.P11191224449664920866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222488 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222490.P11191224449664920866

/-! ## A222490.P7838757190007743019

`record[A222488(n+4)/A135494(n+1)]`
-/

namespace A222490.P7838757190007743019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222488 (n + 4) : ℚ) / (A135494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222490.P7838757190007743019

/-!
# A222491: Number of 4Xn 0..2 arrays with exactly floor(4Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222491, there is no canonical definition to state claims against.
-/

/-! ## A222491.P6830210370693585156

`A222488(∑[n+3]+7)`
-/

namespace A222491.P6830210370693585156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222491.P6830210370693585156

/-!
# A222492: Number of 5Xn 0..2 arrays with exactly floor(5Xn/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A222492, there is no canonical definition to state claims against.
-/

/-! ## A222492.P12402016356590587912

`A222488(∑[n+4]+11)`
-/

namespace A222492.P12402016356590587912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222488 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222492.P12402016356590587912

/-!
# A222493: a(n) = A133500(A221221(n)).

The programs for A222493, there is no canonical definition to state claims against.
-/

/-! ## A222493.P1065607597522971627

`A133048(A221221(n+1))`
-/

namespace A222493.P1065607597522971627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A221221 (n + 1)).toNat

end

end A222493.P1065607597522971627

/-! ## A222493.P17063025209543501845

`A133500(A221221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A222493.P17063025209543501845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A221221 (n + 1)).toNat

end

end A222493.P17063025209543501845

/-!
# A222495: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222495, there is no canonical definition to state claims against.
-/

/-! ## A222495.P4317041467326562730

`A222500(∑[n+3]+1)`
-/

namespace A222495.P4317041467326562730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222495.P4317041467326562730

/-! ## A222495.P11013220505070781765

`record[A222500(A198464(n+1))]`
-/

namespace A222495.P11013220505070781765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222495.P11013220505070781765

/-! ## A222495.P12138373682663033942

`record[char[A027379(n)]*A222500(n+1)]`
-/

namespace A222495.P12138373682663033942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222495.P12138373682663033942

/-!
# A222496: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222496, there is no canonical definition to state claims against.
-/

/-! ## A222496.P12570736415692391239

`A222500((n²+9*n+4)/2+5)`
-/

namespace A222496.P12570736415692391239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (SequenceMachineLib.roundAway ((n ^ 2 + 9 * n + 4 : ℚ) / 2 + 5)).toNat

end

end A222496.P12570736415692391239

/-!
# A222497: Number of n X 5 0..3 arrays with exactly floor(n*5/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222497, there is no canonical definition to state claims against.
-/

/-! ## A222497.P2335508786897341073

`A222500(C(n+6, 2)-4)`
-/

namespace A222497.P2335508786897341073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (Nat.choose (n + 6) 2 - 4)

end

end A222497.P2335508786897341073

/-!
# A222498: Number of nX6 0..3 arrays with exactly floor(nX6/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222498, there is no canonical definition to state claims against.
-/

/-! ## A222498.P13064220322928252627

`A222500(C(n+6, 2)+n+1)`
-/

namespace A222498.P13064220322928252627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (Nat.choose (n + 6) 2 + (n + 1))

end

end A222498.P13064220322928252627

/-!
# A222499: Number of nX7 0..3 arrays with exactly floor(nX7/2) elements unequal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222499, there is no canonical definition to state claims against.
-/

/-! ## A222499.P16773450936959596335

`A222500(A055999(n+4))`
-/

namespace A222499.P16773450936959596335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222500 (A055999 (n + 4)).toNat

end

end A222499.P16773450936959596335

