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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B013.C000
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
# A245400: Number of nonnegative integers with property that their base 9/8 expansion (see A024656) has n digits.

The programs for A245400, the canonical program `A245400.P14935792558701192917` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245400 has offset 1).

The definition of A245400 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120194, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245400.P14935792558701192917

`9*A120194(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245400

/-- `9*A120194(n+1)` -/
def P14935792558701192917.Spec : Prop :=
  ∀ n, P14935792558701192917.a n = A245400 (n + 1)

theorem P14935792558701192917.correct : P14935792558701192917.Spec := by
  intro n
  simp only [A245400, Nat.add_sub_cancel]

end A245400

/-! ## A245400.P12494712625903967098

`9*Δ[floor(9/8*a(n-1))]` with `a(0)=7, a(1)=8`
-/

namespace A245400.P12494712625903967098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  ⌊(9 : ℚ) / 8 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (f1 (n + 1) - f1 n)

end

end A245400.P12494712625903967098

namespace A245400

/-- `9*Δ[floor(9/8*a(n-1))]` -/
def P12494712625903967098.Spec : Prop :=
  ∀ n, P12494712625903967098.a n = A245400 (n + 1)

end A245400

/-! ## A245400.P4309240173717101201

`9*ceil(A279079(A028310(n))/9)`
-/

namespace A245400.P4309240173717101201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌈(A279079 (A028310 n).toNat : ℚ) / 9⌉

end

end A245400.P4309240173717101201

namespace A245400

/-- `9*ceil(A279079(A028310(n))/9)` -/
def P4309240173717101201.Spec : Prop :=
  ∀ n, P4309240173717101201.a n = A245400 (n + 1)

end A245400

/-! ## A245400.P12052806923526254679

`9*ceil(A279079(A233583(n+1))/9)`
-/

namespace A245400.P12052806923526254679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌈(A279079 (A233583 (n + 1)).toNat : ℚ) / 9⌉

end

end A245400.P12052806923526254679

namespace A245400

/-- `9*ceil(A279079(A233583(n+1))/9)` -/
def P12052806923526254679.Spec : Prop :=
  ∀ n, P12052806923526254679.a n = A245400 (n + 1)

end A245400

/-! ## A245400.P17037944294821706920

`A008591(A120194(n+1))`
-/

namespace A245400.P17037944294821706920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A120194 (n + 1)).toNat

end

end A245400.P17037944294821706920

namespace A245400

/-- `A008591(A120194(n+1))` -/
def P17037944294821706920.Spec : Prop :=
  ∀ n, P17037944294821706920.a n = A245400 (n + 1)

end A245400

/-!
# A245401: Number of nonnegative integers with property that their base 8/7 expansion (see A024649) has n digits.

The programs for A245401, the canonical program `A245401.P11796803760799320921` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245401 has offset 1).

The definition of A245401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120186, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245401.P11796803760799320921

`8*A120186(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245401

/-- `8*A120186(n+1)` -/
def P11796803760799320921.Spec : Prop :=
  ∀ n, P11796803760799320921.a n = A245401 (n + 1)

theorem P11796803760799320921.correct : P11796803760799320921.Spec := by
  intro n
  simp only [A245401, Nat.add_sub_cancel]

end A245401

/-! ## A245401.P16719308929567676540

`or(7, A279078(n))+1`
-/

namespace A245401.P16719308929567676540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A279078 n) + 1

end

end A245401.P16719308929567676540

namespace A245401

/-- `or(7, A279078(n))+1` -/
def P16719308929567676540.Spec : Prop :=
  ∀ n, P16719308929567676540.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P85288932825783168

`and(-8, A182308(round(acot(n)+n)))`
-/

namespace A245401.P85288932825783168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-8) (A182308 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A245401.P85288932825783168

namespace A245401

/-- `and(-8, A182308(round(acot(n)+n)))` -/
def P85288932825783168.Spec : Prop :=
  ∀ n, P85288932825783168.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P2693014493448795081

`8*floor(A182308(round(sqrt(n²+1)))/8)`
-/

namespace A245401.P2693014493448795081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊(A182308 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 8⌋

end

end A245401.P2693014493448795081

namespace A245401

/-- `8*floor(A182308(round(sqrt(n²+1)))/8)` -/
def P2693014493448795081.Spec : Prop :=
  ∀ n, P2693014493448795081.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P14266255037682588812

`A008590(A120186(n+1))`
-/

namespace A245401.P14266255037682588812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A120186 (n + 1)).toNat

end

end A245401.P14266255037682588812

namespace A245401

/-- `A008590(A120186(n+1))` -/
def P14266255037682588812.Spec : Prop :=
  ∀ n, P14266255037682588812.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P2643709433360815451

`A181390(A120186(n+1)+2)`
-/

namespace A245401.P2643709433360815451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (A120186 (n + 1) + 2).toNat

end

end A245401.P2643709433360815451

namespace A245401

/-- `A181390(A120186(n+1)+2)` -/
def P2643709433360815451.Spec : Prop :=
  ∀ n, P2643709433360815451.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P9166646996308510906

`A022144(A120186(n+1))%A017319(n)`
-/

namespace A245401.P9166646996308510906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A120186 (n + 1)).toNat) (A017319 n)

end

end A245401.P9166646996308510906

namespace A245401

/-- `A022144(A120186(n+1))%A017319(n)` -/
def P9166646996308510906.Spec : Prop :=
  ∀ n, P9166646996308510906.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P13332108153690545153

`A022144(gcd(A120186(n+1), A151878(n)))`
-/

namespace A245401.P13332108153690545153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.gcd (A120186 (n + 1)) (A151878 n))

end

end A245401.P13332108153690545153

namespace A245401

/-- `A022144(gcd(A120186(n+1), A151878(n)))` -/
def P13332108153690545153.Spec : Prop :=
  ∀ n, P13332108153690545153.a n = A245401 (n + 1)

end A245401

/-! ## A245401.P7418648356613821754

`A022144(A120186(n+1))^((-1)^A020639(n+1))²`
-/

namespace A245401.P7418648356613821754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A022144 (A120186 (n + 1)).toNat : ℝ) ^ (((-1 : ℚ) ^ (A020639 (n + 1) : ℤ)) ^ 2 : ℝ)

end

end A245401.P7418648356613821754

namespace A245401

/-- `A022144(A120186(n+1))^((-1)^A020639(n+1))²` -/
def P7418648356613821754.Spec : Prop :=
  ∀ n, P7418648356613821754.a n = (A245401 (n + 1) : ℝ)

end A245401

/-!
# A245402: Number of nonnegative integers with property that their base 7/6 expansion (see A024643) has n digits.

The programs for A245402, the canonical program `A245402.P7550969198272451745` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245402 has offset 1).

The definition of A245402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120178, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245402.P7550969198272451745

`7*A120178(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245402

/-- `7*A120178(n+1)` -/
def P7550969198272451745.Spec : Prop :=
  ∀ n, P7550969198272451745.a n = A245402 (n + 1)

theorem P7550969198272451745.correct : P7550969198272451745.Spec := by
  intro n
  simp only [A245402, Nat.add_sub_cancel]

end A245402

/-! ## A245402.P5120009662989422263

`7*Δ[ceil(a(n-1)+a(n-1)/6)]` with `a(0)=0, a(1)=1`
-/

namespace A245402.P5120009662989422263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f1 (n + 1) - f1 n)

end

end A245402.P5120009662989422263

namespace A245402

/-- `7*Δ[ceil(a(n-1)+a(n-1)/6)]` -/
def P5120009662989422263.Spec : Prop :=
  ∀ n, P5120009662989422263.a n = A245402 (n + 1)

end A245402

/-! ## A245402.P8480719650891098387

`A008589(A120178(n+1))`
-/

namespace A245402.P8480719650891098387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A120178 (n + 1)).toNat

end

end A245402.P8480719650891098387

namespace A245402

/-- `A008589(A120178(n+1))` -/
def P8480719650891098387.Spec : Prop :=
  ∀ n, P8480719650891098387.a n = A245402 (n + 1)

end A245402

/-! ## A245402.P13018193155462240739

`A016993(A120178(ceil(acot(n)+n)))-1`
-/

namespace A245402.P13018193155462240739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A120178 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat - 1

end

end A245402.P13018193155462240739

namespace A245402

/-- `A016993(A120178(ceil(acot(n)+n)))-1` -/
def P13018193155462240739.Spec : Prop :=
  ∀ n, P13018193155462240739.a n = A245402 (n + 1)

end A245402

/-! ## A245402.P1050450354270304283

`A016993(A120178(abs(1-n)+2))-1`
-/

namespace A245402.P1050450354270304283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A120178 (|1 - (n : ℤ)| + 2).toNat).toNat - 1

end

end A245402.P1050450354270304283

namespace A245402

/-- `A016993(A120178(abs(1-n)+2))-1` -/
def P1050450354270304283.Spec : Prop :=
  ∀ n, P1050450354270304283.a n = A245402 (n + 1)

end A245402

/-! ## A245402.P9853214149055912372

`A023443(n)+A016993(A120178(n+1))-n`
-/

namespace A245402.P9853214149055912372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A016993 (A120178 (n + 1)).toNat - (n : ℤ)

end

end A245402.P9853214149055912372

namespace A245402

/-- `A023443(n)+A016993(A120178(n+1))-n` -/
def P9853214149055912372.Spec : Prop :=
  ∀ n, P9853214149055912372.a n = A245402 (n + 1)

end A245402

/-! ## A245402.P13376277247742212280

`A008589(Δ[A047306(a(n-1))])` with `a(0)=7, a(1)=8`
-/

namespace A245402.P13376277247742212280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  A047306 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (f1 (n + 1) - f1 n).toNat

end

end A245402.P13376277247742212280

namespace A245402

/-- `A008589(Δ[A047306(a(n-1))])` -/
def P13376277247742212280.Spec : Prop :=
  ∀ n, P13376277247742212280.a n = A245402 (n + 1)

end A245402

/-!
# A245403: Number of nonnegative integers with property that their base 10/9 expansion (see A024664) has n digits.

The programs for A245403, the canonical program `A245403.P11721745227114113463` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245403 has offset 1).

The definition of A245403 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120202, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245403.P11721745227114113463

`10*A120202(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245403

/-- `10*A120202(n+1)` -/
def P11721745227114113463.Spec : Prop :=
  ∀ n, P11721745227114113463.a n = A245403 (n + 1)

theorem P11721745227114113463.correct : P11721745227114113463.Spec := by
  intro n
  simp only [A245403, Nat.add_sub_cancel]

end A245403

/-! ## A245403.P9942681970807331067

`Δ[10*A317591(n+1)]`
-/

namespace A245403.P9942681970807331067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A317591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245403.P9942681970807331067

namespace A245403

/-- `Δ[10*A317591(n+1)]` -/
def P9942681970807331067.Spec : Prop :=
  ∀ n, P9942681970807331067.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P4193590587489684413

`10*floor(A182362(A233583(n+1))/10)`
-/

namespace A245403.P4193590587489684413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌊(A182362 (A233583 (n + 1)).toNat : ℚ) / 10⌋

end

end A245403.P4193590587489684413

namespace A245403

/-- `10*floor(A182362(A233583(n+1))/10)` -/
def P4193590587489684413.Spec : Prop :=
  ∀ n, P4193590587489684413.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P4172263114558790662

`10*(A317591(n+2)-A317591(n+1))`
-/

namespace A245403.P4172263114558790662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A317591 (n + 2) - A317591 (n + 1))

end

end A245403.P4172263114558790662

namespace A245403

/-- `10*(A317591(n+2)-A317591(n+1))` -/
def P4172263114558790662.Spec : Prop :=
  ∀ n, P4172263114558790662.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P3748687491670923558

`A008592(Δ[floor(10/9*a(n-1))])` with `a(0)=8, a(1)=9`
-/

namespace A245403.P3748687491670923558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 9] fun n f1 =>
  ⌊(10 : ℚ) / 9 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f1 (n + 1) - f1 n).toNat

end

end A245403.P3748687491670923558

namespace A245403

/-- `A008592(Δ[floor(10/9*a(n-1))])` -/
def P3748687491670923558.Spec : Prop :=
  ∀ n, P3748687491670923558.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P343644757496258257

`A008592(A120202(n+1))`
-/

namespace A245403.P343644757496258257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A120202 (n + 1)).toNat

end

end A245403.P343644757496258257

namespace A245403

/-- `A008592(A120202(n+1))` -/
def P343644757496258257.Spec : Prop :=
  ∀ n, P343644757496258257.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P7654769704387299883

`A008592(Δ[A317591(n+1)])`
-/

namespace A245403.P7654769704387299883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (f1 (n + 1) - f1 n).toNat

end

end A245403.P7654769704387299883

namespace A245403

/-- `A008592(Δ[A317591(n+1)])` -/
def P7654769704387299883.Spec : Prop :=
  ∀ n, P7654769704387299883.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P14131776071728822545

`A017317(Δ[A317591(n+1)])-4`
-/

namespace A245403.P14131776071728822545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 (f1 (n + 1) - f1 n).toNat - 4

end

end A245403.P14131776071728822545

namespace A245403

/-- `A017317(Δ[A317591(n+1)])-4` -/
def P14131776071728822545.Spec : Prop :=
  ∀ n, P14131776071728822545.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P13682107127798439491

`A008587(Δ[A317591(n+1)+A317591(n+1)])`
-/

namespace A245403.P13682107127798439491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 1) + A317591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (f1 (n + 1) - f1 n).toNat

end

end A245403.P13682107127798439491

namespace A245403

/-- `A008587(Δ[A317591(n+1)+A317591(n+1)])` -/
def P13682107127798439491.Spec : Prop :=
  ∀ n, P13682107127798439491.a n = A245403 (n + 1)

end A245403

/-! ## A245403.P6256837348752622542

`A169932(A317591(n+2))`
-/

namespace A245403.P6256837348752622542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169932 (A317591 (n + 2)).toNat

end

end A245403.P6256837348752622542

namespace A245403

/-- `A169932(A317591(n+2))` -/
def P6256837348752622542.Spec : Prop :=
  ∀ n, P6256837348752622542.a n = A245403 (n + 1)

end A245403

/-!
# A245404: Number of nonnegative integers with property that their base 7/2 expansion (see A024639) has n digits.

The programs for A245404, the canonical program `A245404.P12751598329895483399` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245404 has offset 0).

The definition of A245404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245404.P12751598329895483399

`Δ[7*floor((a(n-1)+1)/2)]` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245404

/-- `Δ[7*floor((a(n-1)+1)/2)]` -/
def P12751598329895483399.Spec : Prop :=
  ∀ n, P12751598329895483399.a n = A245404 n

theorem P12751598329895483399.correct : P12751598329895483399.Spec := by
  intro n
  simp only [A245404]

end A245404

/-! ## A245404.P935172616571927606

`Δ[A168337(a(n-1))]` with `a(0)=1, a(1)=8`
-/

namespace A245404.P935172616571927606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  A168337 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245404.P935172616571927606

namespace A245404

/-- `Δ[A168337(a(n-1))]` -/
def P935172616571927606.Spec : Prop :=
  ∀ n, P935172616571927606.a n = A245404 n

end A245404

/-! ## A245404.P16335927538573049875

`7*(a(n-1)-A049473(A049473(a(n-1))))` with `a(0)=7`
-/

namespace A245404.P16335927538573049875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  7 * (a (n - 1) - A049473 (A049473 (a (n - 1)).toNat).toNat)

end

end A245404.P16335927538573049875

namespace A245404

/-- `7*(a(n-1)-A049473(A049473(a(n-1))))` -/
def P16335927538573049875.Spec : Prop :=
  ∀ n, P16335927538573049875.a n = A245404 n

end A245404

/-!
# A245406: Number of endofunctions on [n] such that no element has a preimage of cardinality two.

The programs for A245406, there is no canonical definition to state claims against.
-/

/-! ## A245406.P11451082075899776271

`A245405(∑[n+3])`
-/

namespace A245406.P11451082075899776271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245406.P11451082075899776271

/-! ## A245406.P2562175081022154652

`or(A000007(n), A245405(A055998(n+1)))`
-/

namespace A245406.P2562175081022154652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A245405 (A055998 (n + 1)).toNat)

end

end A245406.P2562175081022154652

/-! ## A245406.P10917633629957467293

`char[A182184(n+1)]*A245405(A055998(n+1))`
-/

namespace A245406.P10917633629957467293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A245405 (A055998 (n + 1)).toNat

end

end A245406.P10917633629957467293

/-! ## A245406.P476326137448160731

`A027642(2*n+5)*A245405(A055998(n+1))`
-/

namespace A245406.P476326137448160731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 5) * A245405 (A055998 (n + 1)).toNat

end

end A245406.P476326137448160731

/-! ## A245406.P2007755602662767390

`A009531(A005408(n))²*A245405(A055998(n+1))`
-/

namespace A245406.P2007755602662767390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A005408 n).toNat ^ 2 * A245405 (A055998 (n + 1)).toNat

end

end A245406.P2007755602662767390

/-!
# A245407: Number of endofunctions on [n] such that no element has a preimage of cardinality three.

The programs for A245407, there is no canonical definition to state claims against.
-/

/-! ## A245407.P3169602503299345761

`A245405(∑[n+3]+n+3)`
-/

namespace A245407.P3169602503299345761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A245407.P3169602503299345761

/-! ## A245407.P9687438194180925769

`A241980(n)+A085862(A001147(n))`
-/

namespace A245407.P9687438194180925769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241980 n + A085862 (A001147 n).toNat

end

end A245407.P9687438194180925769

/-!
# A245408: Number of endofunctions on [n] such that no element has a preimage of cardinality four.

The programs for A245408, there is no canonical definition to state claims against.
-/

/-! ## A245408.P148807777415993788

`A245405(A052905(n+2))`
-/

namespace A245408.P148807777415993788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (A052905 (n + 2)).toNat

end

end A245408.P148807777415993788

/-! ## A245408.P15823663041074001267

`A245405(eq[4, A025581(n)])`
-/

namespace A245408.P15823663041074001267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245408.P15823663041074001267

/-! ## A245408.P10508800538085220044

`A245405(eq[9, A099375(n)])`
-/

namespace A245408.P10508800538085220044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245408.P10508800538085220044

/-! ## A245408.P13721706839575550584

`A245405(A167614(n+4)-8)`
-/

namespace A245408.P13721706839575550584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (A167614 (n + 4) - 8).toNat

end

end A245408.P13721706839575550584

/-! ## A245408.P1194451519239661400

`A245405(eq[5, A004736(n+1)])`
-/

namespace A245408.P1194451519239661400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245408.P1194451519239661400

/-! ## A245408.P3597298875447323554

`A245405(eq[2, A144257(n+1)-2])`
-/

namespace A245408.P3597298875447323554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245408.P3597298875447323554

/-! ## A245408.P12432632241311169766

`A245405(eq[2, A144257(n+1)/2])`
-/

namespace A245408.P12432632241311169766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144257 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A245408.P12432632241311169766

/-!
# A245409: Number of endofunctions on [n] such that no element has a preimage of cardinality five.

The programs for A245409, there is no canonical definition to state claims against.
-/

/-! ## A245409.P3883143917035853145

`A245405(eq[5, A025581(n)])`
-/

namespace A245409.P3883143917035853145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245409.P3883143917035853145

/-! ## A245409.P1138844748125290538

`A245405(eq[6, A195663(n)])`
-/

namespace A245409.P1138844748125290538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245409.P1138844748125290538

/-! ## A245409.P11039711644673714354

`A245405(eq[6, A004736(n+1)])`
-/

namespace A245409.P11039711644673714354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245409.P11039711644673714354

/-! ## A245409.P16039108641963946985

`A245405(eq[16, A155038(n+1)])`
-/

namespace A245409.P16039108641963946985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245409.P16039108641963946985

/-! ## A245409.P7777809528649536158

`A245405(A167614(n+4)+n-3)`
-/

namespace A245409.P7777809528649536158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (A167614 (n + 4) + ((n : ℤ) - 3)).toNat

end

end A245409.P7777809528649536158

/-!
# A245410: Number of endofunctions on [n] such that no element has a preimage of cardinality six.

The programs for A245410, there is no canonical definition to state claims against.
-/

/-! ## A245410.P11566117441900749946

`A245405(eq[4, A268830(n)])`
-/

namespace A245410.P11566117441900749946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245410.P11566117441900749946

/-! ## A245410.P8572985223787996743

`A245405(eq[6, A025581(n)])`
-/

namespace A245410.P8572985223787996743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245410.P8572985223787996743

/-! ## A245410.P10712197113188980555

`A245405(eq[7, A195663(n)])`
-/

namespace A245410.P10712197113188980555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245410.P10712197113188980555

/-! ## A245410.P9004718025499721335

`A245405(eq[6, A144257(n+1)])`
-/

namespace A245410.P9004718025499721335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245410.P9004718025499721335

/-! ## A245410.P5574338164206228834

`A245405(eq[7, A004736(n+1)])`
-/

namespace A245410.P5574338164206228834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245410.P5574338164206228834

/-!
# A245411: Number of endofunctions on [n] such that no element has a preimage of cardinality seven.

The programs for A245411, there is no canonical definition to state claims against.
-/

/-! ## A245411.P545716028274424728

`A245405(eq[7, A025581(n)])`
-/

namespace A245411.P545716028274424728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245411.P545716028274424728

/-! ## A245411.P10648952480683748131

`A245405(eq[8, A195663(n)])`
-/

namespace A245411.P10648952480683748131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245411.P10648952480683748131

/-! ## A245411.P1972432547432958895

`A245405(eq[15, A099375(n)])`
-/

namespace A245411.P1972432547432958895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245411.P1972432547432958895

/-! ## A245411.P12401274532702670398

`A245405(A052905(n+5)-3)`
-/

namespace A245411.P12401274532702670398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (A052905 (n + 5) - 3).toNat

end

end A245411.P12401274532702670398

/-! ## A245411.P1904902095593964319

`A245405(eq[7, A144257(n+1)])`
-/

namespace A245411.P1904902095593964319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245411.P1904902095593964319

/-! ## A245411.P766946045486471830

`A245405(eq[8, A004736(n+1)])`
-/

namespace A245411.P766946045486471830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245411.P766946045486471830

/-!
# A245412: Number of endofunctions on [n] such that no element has a preimage of cardinality eight.

The programs for A245412, there is no canonical definition to state claims against.
-/

/-! ## A245412.P18106973292161456799

`A245405(eq[7, A116598(n)])`
-/

namespace A245412.P18106973292161456799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245412.P18106973292161456799

/-! ## A245412.P7862153889067976455

`A245405(eq[8, A025581(n)])`
-/

namespace A245412.P7862153889067976455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245412.P7862153889067976455

/-! ## A245412.P2464598135373877404

`A245405(eq[9, A195663(n)])`
-/

namespace A245412.P2464598135373877404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245412.P2464598135373877404

/-! ## A245412.P10135750666083727443

`A245405(eq[8, A144257(n+1)])`
-/

namespace A245412.P10135750666083727443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245412.P10135750666083727443

/-! ## A245412.P17971058506973116935

`A245405(eq[9, A004736(n+1)])`
-/

namespace A245412.P17971058506973116935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245412.P17971058506973116935

/-!
# A245413: Number of endofunctions on [n] such that no element has a preimage of cardinality nine.

The programs for A245413, there is no canonical definition to state claims against.
-/

/-! ## A245413.P16581343437139172168

`A324808(n^∑[char[10*n]])`
-/

namespace A245413.P16581343437139172168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324808 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A245413.P16581343437139172168

/-!
# A245414: Number of endofunctions on [n] such that no element has a preimage of cardinality ten.

The programs for A245414, there is no canonical definition to state claims against.
-/

/-! ## A245414.P9461538486643582102

`n^n-A185255(3*n)`
-/

namespace A245414.P9461538486643582102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A185255 (3 * n)

end

end A245414.P9461538486643582102

/-! ## A245414.P16368237636278159224

`A324809(lcm(n, and(n, Δ[-n²])))`
-/

namespace A245414.P16368237636278159224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324809 (Int.lcm (n : ℤ) (Int.land (n : ℤ) (f1 (n + 1) - f1 n)))

end

end A245414.P16368237636278159224

/-! ## A245414.P1581976163163441512

`A324809(A055649(n))`
-/

namespace A245414.P1581976163163441512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324809 (A055649 n).toNat

end

end A245414.P1581976163163441512

/-! ## A245414.P17126561953577149440

`A324809(A120126(n))`
-/

namespace A245414.P17126561953577149440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324809 (A120126 n).toNat

end

end A245414.P17126561953577149440

/-! ## A245414.P8091168309971598118

`A324809(A351870(n))`
-/

namespace A245414.P8091168309971598118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324809 (A351870 n).toNat

end

end A245414.P8091168309971598118

/-!
# A245415: Number of nonnegative integers with property that their base 5/2 expansion (see A024632) has n digits.

The programs for A245415, the canonical program `A245415.P997022546435130758` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245415 has offset 1).

The definition of A245415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245415.P997022546435130758

`Δ[5*ceil(a(n-1)/2)]` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245415

/-- `Δ[5*ceil(a(n-1)/2)]` -/
def P997022546435130758.Spec : Prop :=
  ∀ n, P997022546435130758.a n = A245415 (n + 1)

theorem P997022546435130758.correct : P997022546435130758.Spec := by
  intro n
  simp only [A245415, Nat.add_sub_cancel]

end A245415

/-! ## A245415.P9704896107429570097

`A313589(A140832(n))`
-/

namespace A245415.P9704896107429570097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313589 (A140832 n).toNat

end

end A245415.P9704896107429570097

namespace A245415

/-- `A313589(A140832(n))` -/
def P9704896107429570097.Spec : Prop :=
  ∀ n, P9704896107429570097.a n = A245415 (n + 1)

end A245415

/-! ## A245415.P14064841303011905714

`A001068(4*A140832(n))`
-/

namespace A245415.P14064841303011905714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (4 * A140832 n).toNat

end

end A245415.P14064841303011905714

namespace A245415

/-- `A001068(4*A140832(n))` -/
def P14064841303011905714.Spec : Prop :=
  ∀ n, P14064841303011905714.a n = A245415 (n + 1)

end A245415

/-! ## A245415.P4133785053591007358

`A249031(4*A140832(n))`
-/

namespace A245415.P4133785053591007358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (4 * A140832 n).toNat

end

end A245415.P4133785053591007358

namespace A245415

/-- `A249031(4*A140832(n))` -/
def P4133785053591007358.Spec : Prop :=
  ∀ n, P4133785053591007358.a n = A245415 (n + 1)

end A245415

/-! ## A245415.P5883948064663641843

`5*A140832(A024654(n))`
-/

namespace A245415.P5883948064663641843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A140832 (A024654 n).toNat

end

end A245415.P5883948064663641843

namespace A245415

/-- `5*A140832(A024654(n))` -/
def P5883948064663641843.Spec : Prop :=
  ∀ n, P5883948064663641843.a n = A245415 (n + 1)

end A245415

/-!
# A245416: Number of nonnegative integers with property that their base 9/2 expansion (see A024650) has n digits.

The programs for A245416, there is no canonical definition to state claims against.
-/

/-! ## A245416.P2144827244658116533

`A168419(a(n-1))` with `a(0)=9`
-/

namespace A245416.P2144827244658116533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A168419 (a (n - 1)).toNat

end

end A245416.P2144827244658116533

/-! ## A245416.P2710244509658778580

`9*A004526(a(n-1))` with `a(0)=9`
-/

namespace A245416.P2710244509658778580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  9 * A004526 (a (n - 1)).toNat

end

end A245416.P2710244509658778580

/-!
# A245417: Number of nonnegative integers with property that their base 7/3 expansion (see A024640) has n digits.

The programs for A245417, there is no canonical definition to state claims against.
-/

/-! ## A245417.P17053805027028681723

`7*A100196(A217778(n))`
-/

namespace A245417.P17053805027028681723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A100196 (A217778 n).toNat

end

end A245417.P17053805027028681723

/-! ## A245417.P11644558787596705580

`7*A179182(floor(6*2^n/5))`
-/

namespace A245417.P11644558787596705580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A179182 ⌊6 * ((2 ^ n : ℚ) / 5)⌋.toNat

end

end A245417.P11644558787596705580

/-! ## A245417.P1088460092322729023

`7*A003056(A165310(n))`
-/

namespace A245417.P1088460092322729023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003056 (A165310 n).toNat

end

end A245417.P1088460092322729023

/-!
# A245418: Number of nonnegative integers with property that their base 5/3 expansion (see A024633) has n digits.

The programs for A245418, there is no canonical definition to state claims against.
-/

/-! ## A245418.P13566374847886153154

`Δ[A008706(A002264(a(n-1)))]` with `a(0)=5, a(1)=10`
-/

namespace A245418.P13566374847886153154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  A008706 (A002264 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245418.P13566374847886153154

/-! ## A245418.P9889903995391745275

`5*A000194(A098182(n))`
-/

namespace A245418.P9889903995391745275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000194 (A098182 n).toNat

end

end A245418.P9889903995391745275

/-! ## A245418.P10057122636499767596

`5*A000196(A125023(n))`
-/

namespace A245418.P10057122636499767596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000196 (A125023 n).toNat

end

end A245418.P10057122636499767596

/-! ## A245418.P11080665942601596288

`5*A000194(A329155(n))`
-/

namespace A245418.P11080665942601596288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000194 (A329155 n).toNat

end

end A245418.P11080665942601596288

/-! ## A245418.P18181828196252764064

`5*A000196(A000368(n+4))`
-/

namespace A245418.P18181828196252764064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000196 (A000368 (n + 4)).toNat

end

end A245418.P18181828196252764064

/-!
# A245419: Number of nonnegative integers with property that their base 8/3 expansion (see A024645) has n digits.

The programs for A245419, there is no canonical definition to state claims against.
-/

/-! ## A245419.P4407050954018394650

`8*A257639(7^n)`
-/

namespace A245419.P4407050954018394650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A257639 (7 ^ n)

end

end A245419.P4407050954018394650

/-! ## A245419.P14164305464273853596

`4*A134930(A058696(n))`
-/

namespace A245419.P14164305464273853596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A134930 (A058696 n).toNat

end

end A245419.P14164305464273853596

/-!
# A245420: Number of nonnegative integers with property that their base 8/5 expansion (see A024647) has n digits.

The programs for A245420, there is no canonical definition to state claims against.
-/

/-! ## A245420.P13760468118424977291

`8*A055086(A095980(n))`
-/

namespace A245420.P13760468118424977291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A055086 (A095980 n).toNat

end

end A245420.P13760468118424977291

/-! ## A245420.P7721534437273566822

`8*A056556(A149242(n))`
-/

namespace A245420.P7721534437273566822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A056556 (A149242 n).toNat

end

end A245420.P7721534437273566822

/-! ## A245420.P17779865318207689902

`8*A204560(A002907(n))`
-/

namespace A245420.P17779865318207689902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A204560 (A002907 n).toNat

end

end A245420.P17779865318207689902

/-! ## A245420.P6985921377814710501

`8*A112232(A123908(n))`
-/

namespace A245420.P6985921377814710501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A112232 (A123908 n).toNat

end

end A245420.P6985921377814710501

/-! ## A245420.P6419527024684082760

`8*A204551(A106729(n))`
-/

namespace A245420.P6419527024684082760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A204551 (A106729 n).toNat

end

end A245420.P6419527024684082760

/-!
# A245423: Number of nonnegative integers with property that their base 7/5 expansion (see A024642) has n digits.

The programs for A245423, there is no canonical definition to state claims against.
-/

/-! ## A245423.P12929148985826140145

`7*A121900(A130626(n))`
-/

namespace A245423.P12929148985826140145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A121900 (A130626 n).toNat

end

end A245423.P12929148985826140145

/-! ## A245423.P12737568690503671806

`7*A204551(A048578(n))`
-/

namespace A245423.P12737568690503671806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A204551 (A048578 n).toNat

end

end A245423.P12737568690503671806

/-! ## A245423.P17299748633806200914

`7*A172471(A120707(n))`
-/

namespace A245423.P17299748633806200914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A172471 (A120707 n).toNat

end

end A245423.P17299748633806200914

/-! ## A245423.P11013404117282220278

`7*A204551(A095121(n))`
-/

namespace A245423.P11013404117282220278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A204551 (A095121 n).toNat

end

end A245423.P11013404117282220278

/-! ## A245423.P12289148662593086835

`7*A204551(A122746(n))`
-/

namespace A245423.P12289148662593086835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A204551 (A122746 n).toNat

end

end A245423.P12289148662593086835

/-!
# A245425: Number of nonnegative integers with the property that their base 9/4 expansion (see A024652) has n digits.

The programs for A245425, there is no canonical definition to state claims against.
-/

/-! ## A245425.P2844030670480138363

`9*A000267(A015531(n))`
-/

namespace A245425.P2844030670480138363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000267 (A015531 n).toNat

end

end A245425.P2844030670480138363

/-! ## A245425.P15263655250449325325

`9*A003056(A176832(n))`
-/

namespace A245425.P15263655250449325325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A003056 (A176832 n).toNat

end

end A245425.P15263655250449325325

/-! ## A245425.P7644066091009650939

`9*A172471(A084609(n))`
-/

namespace A245425.P7644066091009650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A172471 (A084609 n).toNat

end

end A245425.P7644066091009650939

/-!
# A245426: Number of nonnegative integers with property that their base 7/4 expansion (see A024641) has n digits.

The programs for A245426, there is no canonical definition to state claims against.
-/

/-! ## A245426.P12730447664257103287

`7*A003056(A001573(n+1))`
-/

namespace A245426.P12730447664257103287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003056 (A001573 (n + 1)).toNat

end

end A245426.P12730447664257103287

/-! ## A245426.P16789886564156034861

`7*A003056(A093156(n+1))`
-/

namespace A245426.P16789886564156034861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003056 (A093156 (n + 1)).toNat

end

end A245426.P16789886564156034861

/-! ## A245426.P8290466322150829758

`7*A067086(A352818(n+1))`
-/

namespace A245426.P8290466322150829758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A067086 (A352818 (n + 1)).toNat

end

end A245426.P8290466322150829758

/-! ## A245426.P447423023255216891

`7*A078704(A169353(n))`
-/

namespace A245426.P447423023255216891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A078704 (A169353 n).toNat

end

end A245426.P447423023255216891

/-!
# A245427: Primes of the form n^6 - n^5 + n^4 - n^3 + n^2 - n + 1.

The programs for A245427, there is no canonical definition to state claims against.
-/

/-! ## A245427.P11473789345706834967

`A060888(A250174(n+1))`
-/

namespace A245427.P11473789345706834967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060888 (A250174 (n + 1)).toNat

end

end A245427.P11473789345706834967

/-! ## A245427.P13257992422363355414

`A240550(∪[A180561(n+1), A250174(n+1)])`
-/

namespace A245427.P13257992422363355414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250174 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240550 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A245427.P13257992422363355414

/-! ## A245427.P13759887914548994565

`A240550(A250174(n+1)+A000007(3*n+1))`
-/

namespace A245427.P13759887914548994565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240550 (A250174 (n + 1) + A000007 (3 * n + 1)).toNat

end

end A245427.P13759887914548994565

/-! ## A245427.P2910945917210023038

`A240550(lt[A243609(n+1), A240550(n+1)]+1)`
-/

namespace A245427.P2910945917210023038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240550 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A245427.P2910945917210023038

/-!
# A245428: Number of nonnegative integers with property that their base 10/3 expansion (see A024658) has n digits.

The programs for A245428, the canonical program `A245428.P6667339529761788209` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245428 has offset 1).

The definition of A245428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245428.P6667339529761788209

`Δ[10*ceil(a(n-1)/3)]` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245428

/-- `Δ[10*ceil(a(n-1)/3)]` -/
def P6667339529761788209.Spec : Prop :=
  ∀ n, P6667339529761788209.a n = A245428 (n + 1)

theorem P6667339529761788209.correct : P6667339529761788209.Spec := by
  intro n
  simp only [A245428, Nat.add_sub_cancel]

end A245428

/-! ## A245428.P888006613900336267

`10*floor(A000265(a(n-1)+1)/3)` with `a(0)=10`
-/

namespace A245428.P888006613900336267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  10 * ⌊(A000265 (a (n - 1) + 1).toNat : ℚ) / 3⌋

end

end A245428.P888006613900336267

namespace A245428

/-- `10*floor(A000265(a(n-1)+1)/3)` -/
def P888006613900336267.Spec : Prop :=
  ∀ n, P888006613900336267.a n = A245428 (n + 1)

end A245428

/-! ## A245428.P13515725514780379333

`A008592(ceil(abs(1-a(n-1))/3))` with `a(0)=10`
-/

namespace A245428.P13515725514780379333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A008592 ⌈(|1 - a (n - 1)| : ℚ) / 3⌉.toNat

end

end A245428.P13515725514780379333

namespace A245428

/-- `A008592(ceil(abs(1-a(n-1))/3))` -/
def P13515725514780379333.Spec : Prop :=
  ∀ n, P13515725514780379333.a n = A245428 (n + 1)

end A245428

/-!
# A245429: Number of nonnegative integers with property that their base 9/7 expansion (see A024655) has n digits.

The programs for A245429, there is no canonical definition to state claims against.
-/

/-! ## A245429.P14575675670982245316

`9*A074279(A126683(n))`
-/

namespace A245429.P14575675670982245316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A074279 (A126683 n).toNat

end

end A245429.P14575675670982245316

/-! ## A245429.P13901820053043110961

`9*A367329(A379315(2*n+3))`
-/

namespace A245429.P13901820053043110961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A367329 (A379315 (2 * n + 3)).toNat

end

end A245429.P13901820053043110961

/-! ## A245429.P15612338640258617865

`9*A045778(3^((n-1)%(n+1)))`
-/

namespace A245429.P15612338640258617865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A045778 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat

end

end A245429.P15612338640258617865

/-! ## A245429.P9512822034571757455

`A265539(A121295(n))`
-/

namespace A245429.P9512822034571757455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A121295 (n + 10)).toNat

end

end A245429.P9512822034571757455

/-! ## A245429.P177217326190731284

`A265539(A023389(n+2))`
-/

namespace A245429.P177217326190731284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265539 (A023389 (n + 2)).toNat

end

end A245429.P177217326190731284

/-!
# A245430: Number of nonnegative integers with property that their base 9/5 expansion (see A024653) has n digits.

The programs for A245430, there is no canonical definition to state claims against.
-/

/-! ## A245430.P7364729496531597801

`9*A000196(A134635(n))`
-/

namespace A245430.P7364729496531597801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000196 (A134635 n).toNat

end

end A245430.P7364729496531597801

/-! ## A245430.P978904020156229773

`9*A000194(A257674(n))`
-/

namespace A245430.P978904020156229773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000194 (A257674 n).toNat

end

end A245430.P978904020156229773

/-! ## A245430.P10476567264834006223

`9*A000194(A301994(n+1))`
-/

namespace A245430.P10476567264834006223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000194 (A301994 (n + 1)).toNat

end

end A245430.P10476567264834006223

/-! ## A245430.P6602030283743019171

`9*A000196(A002572(2*(n+1)))`
-/

namespace A245430.P6602030283743019171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000196 (A002572 (2 * (n + 1))).toNat

end

end A245430.P6602030283743019171

/-!
# A245431: Number of nonnegative integers with property that their base 10/7 expansion has n digits.

The programs for A245431, there is no canonical definition to state claims against.
-/

/-! ## A245431.P16436815334547079859

`10*A000194(A220123(n))`
-/

namespace A245431.P16436815334547079859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000194 (A220123 n).toNat

end

end A245431.P16436815334547079859

/-! ## A245431.P4278220061490804827

`10*A056556(A055775(n))`
-/

namespace A245431.P4278220061490804827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A056556 (A055775 n).toNat

end

end A245431.P4278220061490804827

/-! ## A245431.P16682136933326913831

`10*A092982(A214077(n+1))`
-/

namespace A245431.P16682136933326913831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A092982 (A214077 (n + 1)).toNat

end

end A245431.P16682136933326913831

/-! ## A245431.P16224710551148650101

`10*A107436(A293606(n))`
-/

namespace A245431.P16224710551148650101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A107436 (A293606 n).toNat

end

end A245431.P16224710551148650101

/-! ## A245431.P11515726751906247644

`10*A048766(A001429(n+3))`
-/

namespace A245431.P11515726751906247644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A048766 (A001429 (n + 3)).toNat

end

end A245431.P11515726751906247644

/-!
# A245432: Expansion of f(-q^3, -q^5)^2 / (psi(-q) * phi(q^2)) in powers of q where phi(), psi(), f() are Ramanujan theta functions.

The programs for A245432, there is no canonical definition to state claims against.
-/

/-! ## A245432.P5992176338514779839

`(-1)^floor(n/2)*A115671(n)`
-/

namespace A245432.P5992176338514779839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A115671 n : ℚ)

end

end A245432.P5992176338514779839

/-! ## A245432.P13491853331124074351

`ceil(A080015(n)/2)`
-/

namespace A245432.P13491853331124074351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080015 n : ℚ) / 2⌉

end

end A245432.P13491853331124074351

/-! ## A245432.P13251323550077182787

`A224216((2*n)%(n+1)+1)`
-/

namespace A245432.P13251323550077182787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (2 * n % (n + 1) + 1)

end

end A245432.P13251323550077182787

/-! ## A245432.P4410504072095959666

`A224216(A028310(n))`
-/

namespace A245432.P4410504072095959666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (A028310 n).toNat

end

end A245432.P4410504072095959666

/-! ## A245432.P10043643314637924902

`A224216(A000007(n)+n)`
-/

namespace A245432.P10043643314637924902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (A000007 n + (n : ℤ)).toNat

end

end A245432.P10043643314637924902

/-! ## A245432.P4821117420961249726

`A224216(A004277(n)-n)`
-/

namespace A245432.P4821117420961249726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (A004277 n - (n : ℤ)).toNat

end

end A245432.P4821117420961249726

/-! ## A245432.P2004494838973625599

`A115671(n)/A057077(n)`
-/

namespace A245432.P2004494838973625599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 n : ℚ) / (A057077 n : ℚ)

end

end A245432.P2004494838973625599

/-! ## A245432.P15100243352250860263

`A210030(n)/A280560(n)`
-/

namespace A245432.P15100243352250860263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 n : ℚ) / (A280560 n : ℚ)

end

end A245432.P15100243352250860263

/-! ## A245432.P5352981691690424159

`A224216(gcd(n, A004277(n)))`
-/

namespace A245432.P5352981691690424159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (Int.gcd (n : ℤ) (A004277 n))

end

end A245432.P5352981691690424159

/-! ## A245432.P15065078202420437819

`A224216(ceil(A004277(n)/2))`
-/

namespace A245432.P15065078202420437819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 ⌈(A004277 n : ℚ) / 2⌉.toNat

end

end A245432.P15065078202420437819

/-! ## A245432.P101898215633930674

`A224216(round(A004277(n)/2))`
-/

namespace A245432.P101898215633930674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (SequenceMachineLib.roundAway ((A004277 n : ℚ) / 2)).toNat

end

end A245432.P101898215633930674

/-! ## A245432.P14450088604158620814

`A224216(abs(n-A000007(n)))`
-/

namespace A245432.P14450088604158620814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 |(n : ℤ) - A000007 n|.toNat

end

end A245432.P14450088604158620814

/-! ## A245432.P1203357834462118476

`A224216(A004273(n)+1-n)`
-/

namespace A245432.P1203357834462118476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (A004273 n + (1 - (n : ℤ))).toNat

end

end A245432.P1203357834462118476

/-! ## A245432.P7081340837652201489

`A224216(1-(n-A004273(n)))`
-/

namespace A245432.P7081340837652201489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (1 - ((n : ℤ) - A004273 n)).toNat

end

end A245432.P7081340837652201489

/-! ## A245432.P4024006109973448280

`A224216(A000038(n)/2+n)`
-/

namespace A245432.P4024006109973448280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2 + (n : ℚ))).toNat

end

end A245432.P4024006109973448280

/-! ## A245432.P3826105390841249418

`A224216(C(2, A224229(n))+n)`
-/

namespace A245432.P3826105390841249418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (Nat.choose 2 (A224229 n).toNat + n)

end

end A245432.P3826105390841249418

/-! ## A245432.P63206399799455778

`A224216(A000038(n)+n)+A000038(n)`
-/

namespace A245432.P63206399799455778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224216 (A000038 n + (n : ℤ)).toNat + A000038 n

end

end A245432.P63206399799455778

/-! ## A245432.P7964484280000788262

`A214639(A004277(n))`
-/

namespace A245432.P7964484280000788262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214639 (A004277 n).toNat

end

end A245432.P7964484280000788262

/-!
# A245433: Expansion of f(-x^3, -x^5)^2 / (psi(-x) * psi(x^2)) in powers of x where psi() is a Ramanujan theta function and f(, ) is Ramanujan's general theta functions.

The programs for A245433, there is no canonical definition to state claims against.
-/

/-! ## A245433.P450029133517386870

`A111374(2*n)`
-/

namespace A245433.P450029133517386870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (2 * n)

end

end A245433.P450029133517386870

/-! ## A245433.P2151680939753494639

`A245434(2*n)`
-/

namespace A245433.P2151680939753494639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245434 (2 * n)

end

end A245433.P2151680939753494639

/-! ## A245433.P11882170519596806998

`xor(1, xor(1, A111374(n+n)))`
-/

namespace A245433.P11882170519596806998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A111374 (n + n)))

end

end A245433.P11882170519596806998

/-! ## A245433.P10175667831661998983

`or(A000007(n), A111374(A005843(n)))`
-/

namespace A245433.P10175667831661998983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A111374 (A005843 n).toNat)

end

end A245433.P10175667831661998983

/-!
# A245437: Expansion of x^5/(x^6-x^4-x^2-x+1).

The programs for A245437, the canonical program `A245437.P1995552098125309015` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245437 has offset 0).

The definition of A245437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^5/(1-x-x^2-x^4+x^6))` (program `A245437.P1995552098125309015`, by `A245437.P1995552098125309015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245437.P1995552098125309015

`ogf(x^5/(1-x-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245437

/-- `ogf(x^5/(1-x-x^2-x^4+x^6))` -/
def P1995552098125309015.Spec : Prop :=
  ∀ n, P1995552098125309015.a n = A245437 n

theorem P1995552098125309015.correct : P1995552098125309015.Spec := by
  intro n
  simp only [A245437]

end A245437

/-! ## A245437.P2768834453045269105

`a(n-1)+a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A245437.P2768834453045269105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4) - a (n - 6)

end

end A245437.P2768834453045269105

namespace A245437

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)` -/
def P2768834453045269105.Spec : Prop :=
  ∀ n, P2768834453045269105.a n = A245437 n

end A245437

/-! ## A245437.P18404306937591701508

`A070106(A331529(n+3)-A331529(n))`
-/

namespace A245437.P18404306937591701508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (A331529 (n + 3) - A331529 n).toNat

end

end A245437.P18404306937591701508

namespace A245437

/-- `A070106(A331529(n+3)-A331529(n))` -/
def P18404306937591701508.Spec : Prop :=
  ∀ n, P18404306937591701508.a n = A245437 n

end A245437

/-! ## A245437.P3898599694426630487

`round(A096581(n+1)/(3*(n²+n)+1))`
-/

namespace A245437.P3898599694426630487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096581 (n + 1) : ℚ) / (3 * (n ^ 2 + n) + 1 : ℚ))

end

end A245437.P3898599694426630487

namespace A245437

/-- `round(A096581(n+1)/(3*(n²+n)+1))` -/
def P3898599694426630487.Spec : Prop :=
  ∀ n, P3898599694426630487.a n = A245437 n

end A245437

/-! ## A245437.P15628817958412372895

`A003056(round(A006647(n+7)/A292896(n+2)))`
-/

namespace A245437.P15628817958412372895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A006647 (n + 7) : ℚ) / (A292896 (n + 2) : ℚ))).toNat

end

end A245437.P15628817958412372895

namespace A245437

/-- `A003056(round(A006647(n+7)/A292896(n+2)))` -/
def P15628817958412372895.Spec : Prop :=
  ∀ n, P15628817958412372895.a n = A245437 n

end A245437

/-!
# A245440: Primes p == 1 (mod 4) such that p - floor(sqrt(p))^2 and 2p - floor(sqrt(2p))^2 are not squares.

The programs for A245440, there is no canonical definition to state claims against.
-/

/-! ## A245440.P8148917882419303895

`∪[A145023(n+1), A145047(n+1)]`
-/

namespace A245440.P8148917882419303895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245440.P8148917882419303895

/-!
# A245442: Numbers n such that (50^n - 1)/49 is prime.

The programs for A245442, there is no canonical definition to state claims against.
-/

/-! ## A245442.P6142669522261869106

`A334100(A229545(2*n+3)+A000009(n))`
-/

namespace A245442.P6142669522261869106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334100 (A229545 (2 * n + 3) + A000009 n).toNat

end

end A245442.P6142669522261869106

/-!
# A245443: Permutation of nonnegative integers: a(n) = A165199(A193231(n)).

The programs for A245443, there is no canonical definition to state claims against.
-/

/-! ## A245443.P13641017005757571327

`A165199(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245443.P13641017005757571327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A193231 n).toNat

end

end A245443.P13641017005757571327

/-! ## A245443.P11605971260792941178

`A129594(A245445(n))`
-/

namespace A245443.P11605971260792941178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A245445 n).toNat

end

end A245443.P11605971260792941178

/-! ## A245443.P17539708116563350584

`A180200(A234612(n))`
-/

namespace A245443.P17539708116563350584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A234612 n).toNat

end

end A245443.P17539708116563350584

/-! ## A245443.P495595634276575256

`A165199(xor(n, A280507(n)))`
-/

namespace A245443.P495595634276575256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A245443.P495595634276575256

/-! ## A245443.P2643759467240630643

`A165199(A245446(A056539(n)))`
-/

namespace A245443.P2643759467240630643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A245446 (A056539 n).toNat).toNat

end

end A245443.P2643759467240630643

/-! ## A245443.P4898769121720992102

`A165199(A245444(A165199(n)))`
-/

namespace A245443.P4898769121720992102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A245444 (A165199 n).toNat).toNat

end

end A245443.P4898769121720992102

/-! ## A245443.P9499527327719593620

`A165199(A379471(A057889(n)))`
-/

namespace A245443.P9499527327719593620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A379471 (A057889 n).toNat).toNat

end

end A245443.P9499527327719593620

/-! ## A245443.P13552250118323016099

`A165199(A057889(A379472(n)))`
-/

namespace A245443.P13552250118323016099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A057889 (A379472 n).toNat).toNat

end

end A245443.P13552250118323016099

/-! ## A245443.P10331036310521006391

`A180200(A245444(A180200(n)))`
-/

namespace A245443.P10331036310521006391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A245444 (A180200 n).toNat).toNat

end

end A245443.P10331036310521006391

/-! ## A245443.P4537515489113911221

`A234025(A245444(A234025(n)))`
-/

namespace A245443.P4537515489113911221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A245444 (A234025 n).toNat).toNat

end

end A245443.P4537515489113911221

/-! ## A245443.P860767235211788342

`A245444(A245444(A245444(n)))`
-/

namespace A245443.P860767235211788342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245444 (A245444 (A245444 n).toNat).toNat

end

end A245443.P860767235211788342

/-! ## A245443.P17726679795553348698

`A129594(A056539(A193231(A129594(A129594(n)))))`
-/

namespace A245443.P17726679795553348698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A056539 (A193231 (A129594 (A129594 n).toNat).toNat).toNat).toNat

end

end A245443.P17726679795553348698

/-! ## A245443.P9957468048689764318

`A375184(A375183(A193231(A063946(A063946(n)))))`
-/

namespace A245443.P9957468048689764318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A375183 (A193231 (A063946 (A063946 n).toNat).toNat).toNat).toNat

end

end A245443.P9957468048689764318

/-! ## A245443.P14986765239830854165

`A245812(A234613(A245812(A234613(A234026(n)))))`
-/

namespace A245443.P14986765239830854165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245812 (A234613 (A245812 (A234613 (A234026 n).toNat).toNat).toNat).toNat

end

end A245443.P14986765239830854165

/-! ## A245443.P2855869145838168064

`A234613(A245812(A234613(A234025(A245812(n)))))`
-/

namespace A245443.P2855869145838168064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A245812 (A234613 (A234025 (A245812 n).toNat).toNat).toNat).toNat

end

end A245443.P2855869145838168064

/-! ## A245443.P7181176370153842628

`A375184(A375183(A193231(A375183(A375183(n)))))`
-/

namespace A245443.P7181176370153842628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375184 (A375183 (A193231 (A375183 (A375183 n).toNat).toNat).toNat).toNat

end

end A245443.P7181176370153842628

/-! ## A245443.P3340848111420574133

`A165199(A156552(A366263(n)))`
-/

namespace A245443.P3340848111420574133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A156552 (A366263 n).toNat).toNat

end

end A245443.P3340848111420574133

/-!
# A245444: Permutation of nonnegative integers: a(n) = A193231(A165199(n)).

The programs for A245444, there is no canonical definition to state claims against.
-/

/-! ## A245444.P4385750215939194928

`A193231(A165199(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245444.P4385750215939194928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A165199 n).toNat

end

end A245444.P4385750215939194928

/-! ## A245444.P3825799925672632128

`A245446(A129594(n))`
-/

namespace A245444.P3825799925672632128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A129594 n).toNat

end

end A245444.P3825799925672632128

/-! ## A245444.P15786660198162680469

`A234612(A180201(n))`
-/

namespace A245444.P15786660198162680469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A180201 n).toNat

end

end A245444.P15786660198162680469

/-! ## A245444.P497272678599171858

`A193231(A129594(A056539(n)))`
-/

namespace A245444.P497272678599171858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A129594 (A056539 n).toNat).toNat

end

end A245444.P497272678599171858

/-! ## A245444.P16806949114584439098

`A193231(A245443(A193231(n)))`
-/

namespace A245444.P16806949114584439098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245443 (A193231 n).toNat).toNat

end

end A245444.P16806949114584439098

/-! ## A245444.P1944742467171965313

`A234612(A234025(A234613(n)))`
-/

namespace A245444.P1944742467171965313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A234025 (A234613 n).toNat).toNat

end

end A245444.P1944742467171965313

/-! ## A245444.P11620687973984826501

`A234026(A245443(A234026(n)))`
-/

namespace A245444.P11620687973984826501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234026 (A245443 (A234026 n).toNat).toNat

end

end A245444.P11620687973984826501

/-! ## A245444.P10514207642385844620

`A245443(A245443(A245443(n)))`
-/

namespace A245444.P10514207642385844620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (A245443 (A245443 n).toNat).toNat

end

end A245444.P10514207642385844620

/-! ## A245444.P7998685178255610110

`A193231(A375184(A375183(n)))`
-/

namespace A245444.P7998685178255610110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A375184 (A375183 n).toNat).toNat

end

end A245444.P7998685178255610110

/-! ## A245444.P8833463131458924322

`A056539(A245445(A165199(A057164(A057164(n)))))`
-/

namespace A245444.P8833463131458924322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A057164 (A057164 n).toNat).toNat).toNat).toNat

end

end A245444.P8833463131458924322

/-! ## A245444.P13843076899410531818

`A379471(A057889(A165199(A057889(A057889(n)))))`
-/

namespace A245444.P13843076899410531818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379471 (A057889 (A165199 (A057889 (A057889 n).toNat).toNat).toNat).toNat

end

end A245444.P13843076899410531818

/-! ## A245444.P8827080603879738876

`A056539(A245445(A165199(A153150(A153150(n)))))`
-/

namespace A245444.P8827080603879738876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A153150 (A153150 n).toNat).toNat).toNat).toNat

end

end A245444.P8827080603879738876

/-! ## A245444.P8636030451011216382

`A056539(A245445(A165199(A166404(A166404(n)))))`
-/

namespace A245444.P8636030451011216382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A166404 (A166404 n).toNat).toNat).toNat).toNat

end

end A245444.P8636030451011216382

/-! ## A245444.P553340835769177839

`A245446(A165199(A245445(A056539(A245445(n)))))`
-/

namespace A245444.P553340835769177839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A165199 (A245445 (A056539 (A245445 n).toNat).toNat).toNat).toNat

end

end A245444.P553340835769177839

/-! ## A245444.P17110284444608020409

`A245446(A165199(A245446(A056539(A245446(n)))))`
-/

namespace A245444.P17110284444608020409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245446 (A165199 (A245446 (A056539 (A245446 n).toNat).toNat).toNat).toNat

end

end A245444.P17110284444608020409

/-! ## A245444.P2344151144609800533

`A056539(A245445(A165199(A285916(A285916(n)))))`
-/

namespace A245444.P2344151144609800533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A285916 (A285916 n).toNat).toNat).toNat).toNat

end

end A245444.P2344151144609800533

/-! ## A245444.P16614460699418943167

`A056539(A245445(A165199(A322463(A322463(n)))))`
-/

namespace A245444.P16614460699418943167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A322463 (A322463 n).toNat).toNat).toNat).toNat

end

end A245444.P16614460699418943167

/-! ## A245444.P17581560312624287309

`A234025(A234613(A245812(A234613(A245812(n)))))`
-/

namespace A245444.P17581560312624287309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234025 (A234613 (A245812 (A234613 (A245812 n).toNat).toNat).toNat).toNat

end

end A245444.P17581560312624287309

/-! ## A245444.P1693606004793491345

`A056539(A245445(A165199(A105726(A105726(n)))))`
-/

namespace A245444.P1693606004793491345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A165199 (A105726 (A105726 n).toNat).toNat).toNat).toNat

end

end A245444.P1693606004793491345

/-!
# A245445: Permutation of nonnegative integers: a(n) = A056539(A193231(n)).

The programs for A245445, there is no canonical definition to state claims against.
-/

/-! ## A245445.P11044390895839390438

`A056539(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245445.P11044390895839390438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A193231 n).toNat

end

end A245445.P11044390895839390438

/-! ## A245445.P6230432840729412886

`A129594(A245443(n))`
-/

namespace A245445.P6230432840729412886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A245443 n).toNat

end

end A245445.P6230432840729412886

/-! ## A245445.P12674633359121708372

`A341916(A234612(n))`
-/

namespace A245445.P12674633359121708372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A234612 n).toNat

end

end A245445.P12674633359121708372

/-! ## A245445.P10774101997266234934

`A056539(A245446(A056539(n)))`
-/

namespace A245445.P10774101997266234934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245446 (A056539 n).toNat).toNat

end

end A245445.P10774101997266234934

/-! ## A245445.P9175159394710929790

`A056539(A245444(A165199(n)))`
-/

namespace A245445.P9175159394710929790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245444 (A165199 n).toNat).toNat

end

end A245445.P9175159394710929790

/-! ## A245445.P12074194699971373261

`A056539(A057889(A379472(n)))`
-/

namespace A245445.P12074194699971373261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A057889 (A379472 n).toNat).toNat

end

end A245445.P12074194699971373261

/-! ## A245445.P17097450581484349679

`A341916(A245446(A341916(n)))`
-/

namespace A245445.P17097450581484349679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A245446 (A341916 n).toNat).toNat

end

end A245445.P17097450581484349679

/-! ## A245445.P12640927823706616724

`A245443(A245446(A245443(2*n-n)))`
-/

namespace A245445.P12640927823706616724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245443 (A245446 (A245443 (2 * n - n)).toNat).toNat

end

end A245445.P12640927823706616724

/-! ## A245445.P15260943858637177764

`A056539(A245444(A056539(A129594(n))))`
-/

namespace A245445.P15260943858637177764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245444 (A056539 (A129594 n).toNat).toNat).toNat

end

end A245445.P15260943858637177764

/-! ## A245445.P714313858097383640

`A129594(A245444(A245444(A245444(n))))`
-/

namespace A245445.P714313858097383640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A245444 (A245444 (A245444 n).toNat).toNat).toNat

end

end A245445.P714313858097383640

/-! ## A245445.P8094706689904210782

`A193231(A245446(A245446(A193231(A245446(n)))))`
-/

namespace A245445.P8094706689904210782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245446 (A245446 (A193231 (A245446 n).toNat).toNat).toNat).toNat

end

end A245445.P8094706689904210782

/-!
# A245446: Permutation of nonnegative integers: a(n) = A193231(A056539(n)).

The programs for A245446, there is no canonical definition to state claims against.
-/

/-! ## A245446.P10757244620380444870

`A193231(A056539(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245446.P10757244620380444870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A056539 n).toNat

end

end A245446.P10757244620380444870

/-! ## A245446.P5965130187490048576

`A245444(A129594(n))`
-/

namespace A245446.P5965130187490048576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245444 (A129594 n).toNat

end

end A245446.P5965130187490048576

/-! ## A245446.P12065597356317236246

`A234612(A341915(n))`
-/

namespace A245446.P12065597356317236246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A341915 n).toNat

end

end A245446.P12065597356317236246

/-! ## A245446.P919237919229227466

`A245444(A056539(A165199(n)))`
-/

namespace A245446.P919237919229227466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245444 (A056539 (A165199 n).toNat).toNat

end

end A245446.P919237919229227466

/-! ## A245446.P15886063337454015001

`A193231(A245445(A193231(n)))`
-/

namespace A245446.P15886063337454015001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A245445 (A193231 n).toNat).toNat

end

end A245446.P15886063337454015001

/-! ## A245446.P14437073204444708735

`A245444(A245445(A245444(n)))`
-/

namespace A245446.P14437073204444708735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245444 (A245445 (A245444 n).toNat).toNat

end

end A245446.P14437073204444708735

/-! ## A245446.P14653997409484980709

`A165199(A245443(A056539(2*n-n)))`
-/

namespace A245446.P14653997409484980709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A245443 (A056539 (2 * n - n)).toNat).toNat

end

end A245446.P14653997409484980709

/-! ## A245446.P12876972596792987741

`A056539(A245445(A056539(A057164(A057164(n)))))`
-/

namespace A245446.P12876972596792987741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A056539 (A057164 (A057164 n).toNat).toNat).toNat).toNat

end

end A245446.P12876972596792987741

/-! ## A245446.P8190514421755519495

`A056539(A245445(A056539(A153150(A153150(n)))))`
-/

namespace A245446.P8190514421755519495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A056539 (A153150 (A153150 n).toNat).toNat).toNat).toNat

end

end A245446.P8190514421755519495

/-! ## A245446.P16974435866275047946

`A056539(A245445(A056539(A166404(A166404(n)))))`
-/

namespace A245446.P16974435866275047946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A056539 (A166404 (A166404 n).toNat).toNat).toNat).toNat

end

end A245446.P16974435866275047946

/-! ## A245446.P3940625560784676851

`A056539(A245445(A245445(A056539(A245445(n)))))`
-/

namespace A245446.P3940625560784676851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A245445 (A245445 (A056539 (A245445 n).toNat).toNat).toNat).toNat

end

end A245446.P3940625560784676851

/-! ## A245446.P17772246267964414380

`A193231(A129594(A245443(A165199(A245443(n)))))`
-/

namespace A245446.P17772246267964414380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A129594 (A245443 (A165199 (A245443 n).toNat).toNat).toNat).toNat

end

end A245446.P17772246267964414380

/-!
# A245447: Permutation of natural numbers: a(n) = A048673(A048673(n)).

The programs for A245447, the canonical program `A245447.P2909225473096699640` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245447 has offset 1).

The definition of A245447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245447.P2909225473096699640

`A048673(A048673(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A245447

/-- `A048673(A048673(n+1))` -/
def P2909225473096699640.Spec : Prop :=
  ∀ n, P2909225473096699640.a n = A245447 (n + 1)

theorem P2909225473096699640.correct : P2909225473096699640.Spec := by
  intro n
  simp only [A245447, Nat.add_sub_cancel]

end A245447

/-! ## A245447.P15279079786904319653

`(A003961(A243501(n+1)/2)+1)/2`
-/

namespace A245447.P15279079786904319653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat + 1 : ℚ) / 2

end

end A245447.P15279079786904319653

namespace A245447

/-- `(A003961(A243501(n+1)/2)+1)/2` -/
def P15279079786904319653.Spec : Prop :=
  ∀ n, P15279079786904319653.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P8709673281773159203

`1/2*(1+A003961(1/2*(1+A003961(n+1))))`
-/

namespace A245447.P8709673281773159203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A003961 (SequenceMachineLib.roundAway ((1 : ℚ) / 2 * (1 + A003961 (n + 1) : ℚ))).toNat : ℚ)

end

end A245447.P8709673281773159203

namespace A245447

/-- `1/2*(1+A003961(1/2*(1+A003961(n+1))))` -/
def P8709673281773159203.Spec : Prop :=
  ∀ n, P8709673281773159203.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P1152555601632889682

`ceil(A243500(2*(n+1))/2)`
-/

namespace A245447.P1152555601632889682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243500 (2 * (n + 1)) : ℚ) / 2⌉

end

end A245447.P1152555601632889682

namespace A245447

/-- `ceil(A243500(2*(n+1))/2)` -/
def P1152555601632889682.Spec : Prop :=
  ∀ n, P1152555601632889682.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P999905535500670774

`(A243500(2*n+2)+1)/2`
-/

namespace A245447.P999905535500670774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243500 (2 * n + 2) + 1 : ℚ) / 2

end

end A245447.P999905535500670774

namespace A245447

/-- `(A243500(2*n+2)+1)/2` -/
def P999905535500670774.Spec : Prop :=
  ∀ n, P999905535500670774.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P16748431770945182602

`A349573(A253885(n)/2+1)+A253885(n)/2+1`
-/

namespace A245447.P16748431770945182602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349573 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat : ℚ) + ((A253885 n : ℚ) / 2 + 1)

end

end A245447.P16748431770945182602

namespace A245447

/-- `A349573(A253885(n)/2+1)+A253885(n)/2+1` -/
def P16748431770945182602.Spec : Prop :=
  ∀ n, P16748431770945182602.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P2803167551768526273

`A349573(A349573(n+1)+1+n)+A349573(n+1)+1+n`
-/

namespace A245447.P2803167551768526273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (A349573 (n + 1) + 1 + (n : ℤ)).toNat + (A349573 (n + 1) + 1 + (n : ℤ))

end

end A245447.P2803167551768526273

namespace A245447

/-- `A349573(A349573(n+1)+1+n)+A349573(n+1)+1+n` -/
def P2803167551768526273.Spec : Prop :=
  ∀ n, P2803167551768526273.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P10683508875734688725

`A243501(A243501(n+1)/2)/2`
-/

namespace A245447.P10683508875734688725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A245447.P10683508875734688725

namespace A245447

/-- `A243501(A243501(n+1)/2)/2` -/
def P10683508875734688725.Spec : Prop :=
  ∀ n, P10683508875734688725.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P606292843782400284

`A253885(A253885(n)/2)/2+1`
-/

namespace A245447.P606292843782400284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2)).toNat : ℚ) / 2 + 1

end

end A245447.P606292843782400284

namespace A245447

/-- `A253885(A253885(n)/2)/2+1` -/
def P606292843782400284.Spec : Prop :=
  ∀ n, P606292843782400284.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P11994147252145322080

`(A003961((A003961(n+1)+1)/2)+1)/2`
-/

namespace A245447.P11994147252145322080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat + 1 : ℚ) / 2

end

end A245447.P11994147252145322080

namespace A245447

/-- `(A003961((A003961(n+1)+1)/2)+1)/2` -/
def P11994147252145322080.Spec : Prop :=
  ∀ n, P11994147252145322080.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P17736362888413594521

`A266408(A266401(A266408(A266401(n+1))))`
-/

namespace A245447.P17736362888413594521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266408 (A266401 (A266408 (A266401 (n + 1)).toNat).toNat).toNat

end

end A245447.P17736362888413594521

namespace A245447

/-- `A266408(A266401(A266408(A266401(n+1))))` -/
def P17736362888413594521.Spec : Prop :=
  ∀ n, P17736362888413594521.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P6927605793963770688

`A264996(A266408(A264996(A266408(n+1))))`
-/

namespace A245447.P6927605793963770688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A266408 (A264996 (A266408 (n + 1)).toNat).toNat).toNat

end

end A245447.P6927605793963770688

namespace A245447

/-- `A264996(A266408(A264996(A266408(n+1))))` -/
def P6927605793963770688.Spec : Prop :=
  ∀ n, P6927605793963770688.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P18410248790165979579

`(A003961(A003961(n+1)+1)+3)/6`
-/

namespace A245447.P18410248790165979579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A003961 (n + 1) + 1).toNat + 3 : ℚ) / 6

end

end A245447.P18410248790165979579

namespace A245447

/-- `(A003961(A003961(n+1)+1)+3)/6` -/
def P18410248790165979579.Spec : Prop :=
  ∀ n, P18410248790165979579.a n = (A245447 (n + 1) : ℚ)

end A245447

/-! ## A245447.P12430995829432036384

`A254103(A254115(A254103(A254115(n+1))))`
-/

namespace A245447.P12430995829432036384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254103 (A254115 (A254103 (A254115 (n + 1)).toNat).toNat).toNat

end

end A245447.P12430995829432036384

namespace A245447

/-- `A254103(A254115(A254103(A254115(n+1))))` -/
def P12430995829432036384.Spec : Prop :=
  ∀ n, P12430995829432036384.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P443604163196268398

`A003602(A243500(2*(n+1)))`
-/

namespace A245447.P443604163196268398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A243500 (2 * (n + 1))).toNat

end

end A245447.P443604163196268398

namespace A245447

/-- `A003602(A243500(2*(n+1)))` -/
def P443604163196268398.Spec : Prop :=
  ∀ n, P443604163196268398.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P5266146976004587761

`A078898(A243501(A078898(A243501(n+1))))`
-/

namespace A245447.P5266146976004587761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A243501 (A078898 (A243501 (n + 1)).toNat).toNat).toNat

end

end A245447.P5266146976004587761

namespace A245447

/-- `A078898(A243501(A078898(A243501(n+1))))` -/
def P5266146976004587761.Spec : Prop :=
  ∀ n, P5266146976004587761.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P5880960434300553678

`A249810(A243501(n+1))`
-/

namespace A245447.P5880960434300553678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A243501 (n + 1)).toNat

end

end A245447.P5880960434300553678

namespace A245447

/-- `A249810(A243501(n+1))` -/
def P5880960434300553678.Spec : Prop :=
  ∀ n, P5880960434300553678.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P15322028503964942950

`A249810(A003961(n+1)+1)`
-/

namespace A245447.P15322028503964942950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (A003961 (n + 1) + 1).toNat

end

end A245447.P15322028503964942950

namespace A245447

/-- `A249810(A003961(n+1)+1)` -/
def P15322028503964942950.Spec : Prop :=
  ∀ n, P15322028503964942950.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P12988440123236161544

`A249810(2*A249810(2*(n+1)))`
-/

namespace A245447.P12988440123236161544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * A249810 (2 * (n + 1))).toNat

end

end A245447.P12988440123236161544

namespace A245447

/-- `A249810(2*A249810(2*(n+1)))` -/
def P12988440123236161544.Spec : Prop :=
  ∀ n, P12988440123236161544.a n = A245447 (n + 1)

end A245447

/-! ## A245447.P247035555559405450

`ceil(A297166(2*ceil(A297166(2*(n+1))/2))/2)`
-/

namespace A245447.P247035555559405450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A297166 (2 * ⌈(A297166 (2 * (n + 1)) : ℚ) / 2⌉).toNat : ℚ) / 2⌉

end

end A245447.P247035555559405450

namespace A245447

/-- `ceil(A297166(2*ceil(A297166(2*(n+1))/2))/2)` -/
def P247035555559405450.Spec : Prop :=
  ∀ n, P247035555559405450.a n = A245447 (n + 1)

end A245447

/-!
# A245448: Permutation of natural numbers: a(n) = A064216(A064216(n)).

The programs for A245448, the canonical program `A245448.P1418358535149914740` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245448 has offset 1).

The definition of A245448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245448.P1418358535149914740

`A064216(A064216(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A245448

/-- `A064216(A064216(n+1))` -/
def P1418358535149914740.Spec : Prop :=
  ∀ n, P1418358535149914740.a n = A245448 (n + 1)

theorem P1418358535149914740.correct : P1418358535149914740.Spec := by
  intro n
  simp only [A245448, Nat.add_sub_cancel]

end A245448

/-! ## A245448.P14450576656783542032

`A243502(A243502(n+1)/2)/2`
-/

namespace A245448.P14450576656783542032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243502 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A245448.P14450576656783542032

namespace A245448

/-- `A243502(A243502(n+1)/2)/2` -/
def P14450576656783542032.Spec : Prop :=
  ∀ n, P14450576656783542032.a n = (A245448 (n + 1) : ℚ)

end A245448

/-! ## A245448.P15084920679435840177

`A064216(A252463(Δ[n²]))`
-/

namespace A245448.P15084920679435840177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A245448.P15084920679435840177

namespace A245448

/-- `A064216(A252463(Δ[n²]))` -/
def P15084920679435840177.Spec : Prop :=
  ∀ n, P15084920679435840177.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P7272836477627070120

`A266407(A264996(A266407(A264996(n+1))))`
-/

namespace A245448.P7272836477627070120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A264996 (A266407 (A264996 (n + 1)).toNat).toNat).toNat

end

end A245448.P7272836477627070120

namespace A245448

/-- `A266407(A264996(A266407(A264996(n+1))))` -/
def P7272836477627070120.Spec : Prop :=
  ∀ n, P7272836477627070120.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P1547595275590688541

`A243500(Δ[n²])/2`
-/

namespace A245448.P1547595275590688541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243500 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A245448.P1547595275590688541

namespace A245448

/-- `A243500(Δ[n²])/2` -/
def P1547595275590688541.Spec : Prop :=
  ∀ n, P1547595275590688541.a n = (A245448 (n + 1) : ℚ)

end A245448

/-! ## A245448.P11970108205427590131

`A283463(A243502(n+1))`
-/

namespace A245448.P11970108205427590131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A243502 (n + 1)).toNat

end

end A245448.P11970108205427590131

namespace A245448

/-- `A283463(A243502(n+1))` -/
def P11970108205427590131.Spec : Prop :=
  ∀ n, P11970108205427590131.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P4671863723730994338

`A064989(A243502(n+1)-1)`
-/

namespace A245448.P4671863723730994338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A243502 (n + 1) - 1).toNat

end

end A245448.P4671863723730994338

namespace A245448

/-- `A064989(A243502(n+1)-1)` -/
def P4671863723730994338.Spec : Prop :=
  ∀ n, P4671863723730994338.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P9407997926049484465

`A252463(A243502(n+1)-1)`
-/

namespace A245448.P9407997926049484465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A243502 (n + 1) - 1).toNat

end

end A245448.P9407997926049484465

namespace A245448

/-- `A252463(A243502(n+1)-1)` -/
def P9407997926049484465.Spec : Prop :=
  ∀ n, P9407997926049484465.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P10565811673210270192

`A283463(A266645(2*(n+1)))`
-/

namespace A245448.P10565811673210270192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266645 (2 * (n + 1))).toNat

end

end A245448.P10565811673210270192

namespace A245448

/-- `A283463(A266645(2*(n+1)))` -/
def P10565811673210270192.Spec : Prop :=
  ∀ n, P10565811673210270192.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P7080267362713122375

`A064989(A266645(2*(n+1))-1)`
-/

namespace A245448.P7080267362713122375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A266645 (2 * (n + 1)) - 1).toNat

end

end A245448.P7080267362713122375

namespace A245448

/-- `A064989(A266645(2*(n+1))-1)` -/
def P7080267362713122375.Spec : Prop :=
  ∀ n, P7080267362713122375.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P10881752476040523369

`A064989(A297165(2*n+1)-1)`
-/

namespace A245448.P10881752476040523369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A297165 (2 * n + 1) - 1).toNat

end

end A245448.P10881752476040523369

namespace A245448

/-- `A064989(A297165(2*n+1)-1)` -/
def P10881752476040523369.Spec : Prop :=
  ∀ n, P10881752476040523369.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P179176437159453391

`A064989(A389909(2*n+1)-1)`
-/

namespace A245448.P179176437159453391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A389909 (2 * n + 1) - 1).toNat

end

end A245448.P179176437159453391

namespace A245448

/-- `A064989(A389909(2*n+1)-1)` -/
def P179176437159453391.Spec : Prop :=
  ∀ n, P179176437159453391.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P17626382641112797169

`A341515(A297165(2*n+1)-1)`
-/

namespace A245448.P17626382641112797169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (A297165 (2 * n + 1) - 1).toNat

end

end A245448.P17626382641112797169

namespace A245448

/-- `A341515(A297165(2*n+1)-1)` -/
def P17626382641112797169.Spec : Prop :=
  ∀ n, P17626382641112797169.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P2821214447336890629

`A252463(A389909(2*n+1)-1)`
-/

namespace A245448.P2821214447336890629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A389909 (2 * n + 1) - 1).toNat

end

end A245448.P2821214447336890629

namespace A245448

/-- `A252463(A389909(2*n+1)-1)` -/
def P2821214447336890629.Spec : Prop :=
  ∀ n, P2821214447336890629.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P161698506162036031

`A283463(2*A064989(2*n+1))`
-/

namespace A245448.P161698506162036031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * A064989 (2 * n + 1)).toNat

end

end A245448.P161698506162036031

namespace A245448

/-- `A283463(2*A064989(2*n+1))` -/
def P161698506162036031.Spec : Prop :=
  ∀ n, P161698506162036031.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P8299480022578672574

`A283463(2*A252463(2*n+1))`
-/

namespace A245448.P8299480022578672574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * A252463 (2 * n + 1)).toNat

end

end A245448.P8299480022578672574

namespace A245448

/-- `A283463(2*A252463(2*n+1))` -/
def P8299480022578672574.Spec : Prop :=
  ∀ n, P8299480022578672574.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P16382707420324707596

`A283463(2*A283463(2*(n+1)))`
-/

namespace A245448.P16382707420324707596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (2 * A283463 (2 * (n + 1))).toNat

end

end A245448.P16382707420324707596

namespace A245448

/-- `A283463(2*A283463(2*(n+1)))` -/
def P16382707420324707596.Spec : Prop :=
  ∀ n, P16382707420324707596.a n = A245448 (n + 1)

end A245448

/-! ## A245448.P12359117988255309252

`A266645(A266645(2*n+2))/2`
-/

namespace A245448.P12359117988255309252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266645 (A266645 (2 * n + 2)).toNat : ℚ) / 2

end

end A245448.P12359117988255309252

namespace A245448

/-- `A266645(A266645(2*n+2))/2` -/
def P12359117988255309252.Spec : Prop :=
  ∀ n, P12359117988255309252.a n = (A245448 (n + 1) : ℚ)

end A245448

/-!
# A245449: Fixed points of A245447 and A245448.

The programs for A245449, there is no canonical definition to state claims against.
-/

/-! ## A245449.P9640462775283268739

`eq[n, A245447(round(sqrt(n²+1)))]`
-/

namespace A245449.P9640462775283268739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245449.P9640462775283268739

/-! ## A245449.P8300778957849709394

`eq[n, A245448(round(sqrt(n²+1)))]`
-/

namespace A245449.P8300778957849709394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245448 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245449.P8300778957849709394

/-! ## A245449.P16574944922870259300

`eq[n+1, A245447(n+1)]+1`
-/

namespace A245449.P16574944922870259300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245449.P16574944922870259300

/-! ## A245449.P5888489182264942704

`eq[n+1, A245448(n+1)]+1`
-/

namespace A245449.P5888489182264942704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245449.P5888489182264942704

/-! ## A245449.P16746442875634962170

`eq[A048673(n+1), A064216(n+1)]+1`
-/

namespace A245449.P16746442875634962170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A245449.P16746442875634962170

/-!
# A245450: Self-inverse permutation of natural numbers, A245703-conjugate of balanced bit-reverse: a(n) = A245704(A057889(A245703(n))).

The programs for A245450, there is no canonical definition to state claims against.
-/

/-! ## A245450.P8116511918757486903

`A245704(A057889(A245703(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245450.P8116511918757486903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245704 (A057889 (A245703 (n + 1)).toNat).toNat

end

end A245450.P8116511918757486903

/-!
# A245451: Self-inverse permutation of nonnegative integers, A075158-conjugate of gray code: a(n) = 1 + A075157(A003188(A075158(n-1))).

The programs for A245451, there is no canonical definition to state claims against.
-/

/-! ## A245451.P2120323539067631542

`1+A075157(A003188(A075158(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245451.P2120323539067631542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075157 (A003188 (A075158 n).toNat).toNat

end

end A245451.P2120323539067631542

/-! ## A245451.P8362805567131760018

`A075157(A243071(n+1))+1`
-/

namespace A245451.P8362805567131760018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A243071 (n + 1)).toNat + 1

end

end A245451.P8362805567131760018

/-! ## A245451.P3963647782000825689

`A075157(∑{d}[n+1, A297171(#)])+1`
-/

namespace A245451.P3963647782000825689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (∑ d ∈ Nat.divisors (f1 n), A297171 d).toNat + 1

end

end A245451.P3963647782000825689

/-! ## A245451.P17347102834230417158

`A075157(A292943(n+1)+A292263(n+1))+1`
-/

namespace A245451.P17347102834230417158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A292943 (n + 1) + A292263 (n + 1)).toNat + 1

end

end A245451.P17347102834230417158

/-! ## A245451.P17071612066766164647

`A075157(A292253(n+1)+A292943(n+1)+A292255(n+1))+1`
-/

namespace A245451.P17071612066766164647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A292253 (n + 1) + (A292943 (n + 1) + A292255 (n + 1))).toNat + 1

end

end A245451.P17071612066766164647

/-!
# A245452: Self-inverse permutation of nonnegative integers, A075158-conjugate of the inverse of gray code: a(n) = 1 + A075157(A006068(A075158(n-1))).

The programs for A245452, there is no canonical definition to state claims against.
-/

/-! ## A245452.P15882550457743406794

`1+A075157(A006068(A075158(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245452.P15882550457743406794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075157 (A006068 (A075158 n).toNat).toNat

end

end A245452.P15882550457743406794

/-! ## A245452.P2210689771553463457

`A163511(A075158(n))`
-/

namespace A245452.P2210689771553463457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A075158 n).toNat

end

end A245452.P2210689771553463457

/-! ## A245452.P8935581879152087100

`A163511(A075160(n+1)-1)`
-/

namespace A245452.P8935581879152087100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A075160 (n + 1) - 1).toNat

end

end A245452.P8935581879152087100

/-! ## A245452.P8311554882495661142

`A163511(A134824(n+2)+A075160(n+1))`
-/

namespace A245452.P8311554882495661142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A134824 (n + 2) + A075160 (n + 1)).toNat

end

end A245452.P8311554882495661142

/-! ## A245452.P2251395792728591739

`A163511(A153881(n+2)+A075160(n+1))`
-/

namespace A245452.P2251395792728591739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A153881 (n + 2) + A075160 (n + 1)).toNat

end

end A245452.P2251395792728591739

/-!
# A245453: Self-inverse and multiplicative permutation of natural numbers, A235041-conjugate of balanced bit-reverse: a(n) = A235042(A057889(A235041(n))).

The programs for A245453, there is no canonical definition to state claims against.
-/

/-! ## A245453.P7843554390288655798

`A235042(A057889(A235041(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245453.P7843554390288655798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235042 (A057889 (A235041 n).toNat).toNat

end

end A245453.P7843554390288655798

/-! ## A245453.P8709096177776071638

`A234748(A234743(n)%A211121(n+1))`
-/

namespace A245453.P8709096177776071638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234748 (Int.tmod (A234743 n) (A211121 (n + 1))).toNat

end

end A245453.P8709096177776071638

/-!
# A245454: Self-inverse permutation of nonnegative integers, A075158-conjugate of blue code: a(n) = 1 + A075157(A193231(A075158(n-1))).

The programs for A245454, there is no canonical definition to state claims against.
-/

/-! ## A245454.P12560088350679440165

`1+A075157(A193231(A075158(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245454.P12560088350679440165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A075157 (A193231 (A075158 n).toNat).toNat

end

end A245454.P12560088350679440165

/-! ## A245454.P4474890477745386378

`A243353(A245443(A075158(n)))`
-/

namespace A245454.P4474890477745386378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A245443 (A075158 n).toNat).toNat

end

end A245454.P4474890477745386378

/-!
# A245455: Number of minimax elements in the affine Weyl group of the Lie algebra so(2n).

The programs for A245455, there is no canonical definition to state claims against.
-/

/-! ## A245455.P7241831414184406669

`A321994(n+2)+A160381(n)`
-/

namespace A245455.P7241831414184406669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 2) + A160381 n

end

end A245455.P7241831414184406669

/-! ## A245455.P16351911351787598632

`A000267(A002293(n))-A125629(n)`
-/

namespace A245455.P16351911351787598632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A002293 n).toNat - A125629 n

end

end A245455.P16351911351787598632

/-! ## A245455.P62023719143121752

`A284257(n+1)+A070321(A321994(n+2))`
-/

namespace A245455.P62023719143121752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (n + 1) + A070321 (A321994 (n + 2)).toNat

end

end A245455.P62023719143121752

/-!
# A245456: Index of least Fibonacci number congruent to n mod 100.

The programs for A245456, there is no canonical definition to state claims against.
-/

/-! ## A245456.P4573850789527602200

`8*a(n-1)!` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A245456.P4573850789527602200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  8 * Nat.factorial (a (n - 1))

end

end A245456.P4573850789527602200

/-!
# A245457: a(n) = ((prime(n)-1)!+2) mod prime(n)# (cf. A002110).

The programs for A245457, there is no canonical definition to state claims against.
-/

/-! ## A245457.P15092120532043165827

`A245460(n+1)-A326545(A049479(n+2))`
-/

namespace A245457.P15092120532043165827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245460 (n + 1) - A326545 (A049479 (n + 2)).toNat

end

end A245457.P15092120532043165827

/-!
# A245458: a(n) = ((prime(n)-2)!+2) mod prime(n)# (cf. A002110).

The programs for A245458, there is no canonical definition to state claims against.
-/

/-! ## A245458.P1519721201653444456

`A254104(A153562(n))+n`
-/

namespace A245458.P1519721201653444456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A153562 n).toNat + (n : ℤ)

end

end A245458.P1519721201653444456

/-!
# A245460: Max (A245457(n), A245458(n)).

The programs for A245460, there is no canonical definition to state claims against.
-/

/-! ## A245460.P3601822043006139002

`A326545(A049479(n+2))+A245457(n+1)`
-/

namespace A245460.P3601822043006139002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 (A049479 (n + 2)).toNat + A245457 (n + 1)

end

end A245460.P3601822043006139002

/-!
# A245463: Smallest k such that A002522(k) and A002522(k+2n) are successive primes of the form m^2+1.

The programs for A245463, there is no canonical definition to state claims against.
-/

/-! ## A245463.P8259721114855974180

`A005574(A208132(n+1))`
-/

namespace A245463.P8259721114855974180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (A208132 (n + 1)).toNat

end

end A245463.P8259721114855974180

/-! ## A245463.P13322878021340564959

`2*A001912(A208132(n+1)-1)`
-/

namespace A245463.P13322878021340564959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (A208132 (n + 1) - 1).toNat

end

end A245463.P13322878021340564959

/-! ## A245463.P16357348193822249441

`A090693(A208132(n+1))-A007318(∑[n])`
-/

namespace A245463.P16357348193822249441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (A208132 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245463.P16357348193822249441

/-! ## A245463.P12895755345796236091

`A090693(A208132(n+1))-A000041(C(2, n+2))`
-/

namespace A245463.P12895755345796236091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (A208132 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A245463.P12895755345796236091

/-! ## A245463.P13920259333875920472

`A090693(A208132(n+1))-A000108(C(2, n+2))`
-/

namespace A245463.P13920259333875920472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (A208132 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A245463.P13920259333875920472

/-!
# A245464: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k) * ((1+x)^k - 1)^k.

The programs for A245464, there is no canonical definition to state claims against.
-/

/-! ## A245464.P16705703458484767011

`A194806(A322859(n))`
-/

namespace A245464.P16705703458484767011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A322859 n).toNat

end

end A245464.P16705703458484767011

/-! ## A245464.P7824605957467932208

`∑[A007310((n-n%4)^xor(4, n)+1)]-A055640(n)`
-/

namespace A245464.P7824605957467932208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (((n : ℤ) - ((n % 4 : ℕ) : ℤ)) ^ Nat.xor 4 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055640 n

end

end A245464.P7824605957467932208

/-! ## A245464.P10581631153807372746

`A296021(A231497(n)+A191398(n))`
-/

namespace A245464.P10581631153807372746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A231497 n + A191398 n).toNat

end

end A245464.P10581631153807372746

/-! ## A245464.P9612104934221731115

`A062108(A349401(n)+A328437(n))`
-/

namespace A245464.P9612104934221731115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A349401 n + A328437 n).toNat

end

end A245464.P9612104934221731115

/-!
# A245465: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k) * (1/(1-x)^k - 1)^k.

The programs for A245465, there is no canonical definition to state claims against.
-/

/-! ## A245465.P5568716308185812330

`A026834(A005631(n))`
-/

namespace A245465.P5568716308185812330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A005631 n).toNat

end

end A245465.P5568716308185812330

/-! ## A245465.P1395960614756238068

`A298538(A052806(n))`
-/

namespace A245465.P1395960614756238068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (A052806 n).toNat

end

end A245465.P1395960614756238068

/-! ## A245465.P16060475440280212856

`A324841(A052908(n))`
-/

namespace A245465.P16060475440280212856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324841 (A052908 n).toNat

end

end A245465.P16060475440280212856

/-!
# A245466: a(n) = sigma_1(1) + sigma_2(2) + sigma_3(3) + ... + sigma_n-1(n-1) + sigma_n(n).

The programs for A245466, there is no canonical definition to state claims against.
-/

/-! ## A245466.P11443638245940926147

`∑[∑{d}[n+1, #^(n+1)]]`
-/

namespace A245466.P11443638245940926147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245466.P11443638245940926147

/-! ## A245466.P1519634274743214219

`∑{d}[n+1, #^(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A245466.P1519634274743214219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1) + a (n - 1)

end

end A245466.P1519634274743214219

/-! ## A245466.P2792197929304221956

`∑[A023887(n+1)]`
-/

namespace A245466.P2792197929304221956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245466.P2792197929304221956

/-! ## A245466.P5106601033974445546

`∑[A308504(∑[n+1])]`
-/

namespace A245466.P5106601033974445546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245466.P5106601033974445546

/-! ## A245466.P11095559132602425447

`∑[A321295(n+1)/(n+1)]`
-/

namespace A245466.P11095559132602425447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321295 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245466.P11095559132602425447

/-!
# A245467: a(n) = ( 4*n^2 - 2*n + 1 - (2*n^2 - 6*n + 1) * (-1)^n )/16.

The programs for A245467, the canonical program `A245467.P9478170675493316476` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245467 has offset 0).

The definition of A245467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-2*n+1-(2*n²-6*n+1)*(-1)^n)/16` (program `A245467.P12949696600500509336`, by `A245467.P12949696600500509336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245467.P9478170675493316476

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245467

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P9478170675493316476.Spec : Prop :=
  ∀ n, P9478170675493316476.a n = A245467 n

theorem P9478170675493316476.correct : P9478170675493316476.Spec := by
  intro n
  simp only [A245467]

end A245467

/-! ## A245467.P12949696600500509336

`(4*n²-2*n+1-(2*n²-6*n+1)*(-1)^n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245467.P12949696600500509336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1 - ((2 * n ^ 2 : ℤ) - (6 * n : ℤ) + 1) * (-1) ^ n : ℚ) / 16

end

end A245467.P12949696600500509336

namespace A245467

/-- `(4*n²-2*n+1-(2*n²-6*n+1)*(-1)^n)/16` -/
def P12949696600500509336.Spec : Prop :=
  ∀ n, P12949696600500509336.a n = (A245467 n : ℚ)

theorem P12949696600500509336.correct : P12949696600500509336.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A245467, Nat.add_sub_cancel, A245467.P12949696600500509336.a, A245467.P9478170675493316476.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A245467, Nat.add_sub_cancel, A245467.P12949696600500509336.a, A245467.P9478170675493316476.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245467

/-! ## A245467.P3494457268901014380

`A031878(n)-a(n-1)` with `a(0)=0`
-/

namespace A245467.P3494457268901014380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A031878 n - a (n - 1)

end

end A245467.P3494457268901014380

namespace A245467

/-- `A031878(n)-a(n-1)` -/
def P3494457268901014380.Spec : Prop :=
  ∀ n, P3494457268901014380.a n = A245467 n

end A245467

/-! ## A245467.P12549952521655303957

`A363267(n+1)-A008805(n)`
-/

namespace A245467.P12549952521655303957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363267 (n + 1) - A008805 n

end

end A245467.P12549952521655303957

namespace A245467

/-- `A363267(n+1)-A008805(n)` -/
def P12549952521655303957.Spec : Prop :=
  ∀ n, P12549952521655303957.a n = A245467 n

end A245467

/-! ## A245467.P10719584993193727480

`A004526(n)/2*A266285(n)`
-/

namespace A245467.P10719584993193727480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / 2 * (A266285 n : ℚ)

end

end A245467.P10719584993193727480

namespace A245467

/-- `A004526(n)/2*A266285(n)` -/
def P10719584993193727480.Spec : Prop :=
  ∀ n, P10719584993193727480.a n = (A245467 n : ℚ)

end A245467

/-! ## A245467.P9104074147106703945

`n*A004526(n)-A245288(n)`
-/

namespace A245467.P9104074147106703945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 n - A245288 n

end

end A245467.P9104074147106703945

namespace A245467

/-- `n*A004526(n)-A245288(n)` -/
def P9104074147106703945.Spec : Prop :=
  ∀ n, P9104074147106703945.a n = A245467 n

end A245467

/-! ## A245467.P2599040529649554573

`A002620(n)+A124093(n)-A123596(n)`
-/

namespace A245467.P2599040529649554573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (A124093 n - A123596 n)

end

end A245467.P2599040529649554573

namespace A245467

/-- `A002620(n)+A124093(n)-A123596(n)` -/
def P2599040529649554573.Spec : Prop :=
  ∀ n, P2599040529649554573.a n = A245467 n

end A245467

/-! ## A245467.P13333653296840668247

`A124093(n)+A123596(n*A000035(n))`
-/

namespace A245467.P13333653296840668247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A123596 ((n : ℤ) * A000035 n).toNat

end

end A245467.P13333653296840668247

namespace A245467

/-- `A124093(n)+A123596(n*A000035(n))` -/
def P13333653296840668247.Spec : Prop :=
  ∀ n, P13333653296840668247.a n = A245467 n

end A245467

/-! ## A245467.P13366504209600417773

`A245288(n+1)-n*n%2`
-/

namespace A245467.P13366504209600417773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 1) - ((n * (n % 2) : ℕ) : ℤ)

end

end A245467.P13366504209600417773

namespace A245467

/-- `A245288(n+1)-n*n%2` -/
def P13366504209600417773.Spec : Prop :=
  ∀ n, P13366504209600417773.a n = A245467 n

end A245467

/-! ## A245467.P7728493141148057343

`A028242(n)/2*A028242(A294178(n))`
-/

namespace A245467.P7728493141148057343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 n : ℚ) / 2 * (A028242 (A294178 n).toNat : ℚ)

end

end A245467.P7728493141148057343

namespace A245467

/-- `A028242(n)/2*A028242(A294178(n))` -/
def P7728493141148057343.Spec : Prop :=
  ∀ n, P7728493141148057343.a n = (A245467 n : ℚ)

end A245467

/-! ## A245467.P5901586399742272160

`A014682(A239767(n))-n*A014682(n)`
-/

namespace A245467.P5901586399742272160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A239767 n).toNat - (n : ℤ) * A014682 n

end

end A245467.P5901586399742272160

namespace A245467

/-- `A014682(A239767(n))-n*A014682(n)` -/
def P5901586399742272160.Spec : Prop :=
  ∀ n, P5901586399742272160.a n = A245467 n

end A245467

/-! ## A245467.P1655315677000334853

`A004526(A004526(n)*A266285(n))`
-/

namespace A245467.P1655315677000334853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n * A266285 n).toNat

end

end A245467.P1655315677000334853

namespace A245467

/-- `A004526(A004526(n)*A266285(n))` -/
def P1655315677000334853.Spec : Prop :=
  ∀ n, P1655315677000334853.a n = A245467 n

end A245467

/-! ## A245467.P9311590218447366960

`A004526(lcm(A004526(n), A266285(n)))`
-/

namespace A245467.P9311590218447366960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm (A004526 n) (A266285 n))

end

end A245467.P9311590218447366960

namespace A245467

/-- `A004526(lcm(A004526(n), A266285(n)))` -/
def P9311590218447366960.Spec : Prop :=
  ∀ n, P9311590218447366960.a n = A245467 n

end A245467

/-! ## A245467.P15113758129930097991

`A004526((A093178(n)+A004526(n))*A004526(n))`
-/

namespace A245467.P15113758129930097991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A093178 n + A004526 n) * A004526 n).toNat

end

end A245467.P15113758129930097991

namespace A245467

/-- `A004526((A093178(n)+A004526(n))*A004526(n))` -/
def P15113758129930097991.Spec : Prop :=
  ∀ n, P15113758129930097991.a n = A245467 n

end A245467

/-!
# A245470: Smallest multiple of n such that, when expressed in binary, in the string of bits the binary representation of n occurs after the n-1 most significant bits.

The programs for A245470, there is no canonical definition to state claims against.
-/

/-! ## A245470.P11556798949707395412

`(n+1)*A078822((n+1)!)`
-/

namespace A245470.P11556798949707395412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078822 (Nat.factorial (n + 1))

end

end A245470.P11556798949707395412

/-! ## A245470.P10274730017834028011

`(n+1)*A078822(∏[n+1])`
-/

namespace A245470.P10274730017834028011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078822 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A245470.P10274730017834028011

/-! ## A245470.P10775455432842818477

`(n+1)*(A144623((n+1)!)+1)`
-/

namespace A245470.P10775455432842818477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A144623 (Nat.factorial (n + 1)) + 1)

end

end A245470.P10775455432842818477

/-!
# A245471: If n is odd, then a(n) = A065621(n+1). If n is even, then a(n) = n/2.

The programs for A245471, the canonical program `A245471.P2587707209557720129` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245471 has offset 1).

The definition of A245471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245471.P2587707209557720129

`xor(lcm(2, n+1), xor(n+1, A152271(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245471

/-- `xor(lcm(2, n+1), xor(n+1, A152271(n)))` -/
def P2587707209557720129.Spec : Prop :=
  ∀ n, P2587707209557720129.a n = A245471 (n + 1)

theorem P2587707209557720129.correct : P2587707209557720129.Spec := by
  intro n
  simp only [A245471, Nat.add_sub_cancel]

end A245471

/-! ## A245471.P6336877265486720351

`xor(A193356(n+1), A235800(n+1))`
-/

namespace A245471.P6336877265486720351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193356 (n + 1)) (A235800 (n + 1))

end

end A245471.P6336877265486720351

namespace A245471

/-- `xor(A193356(n+1), A235800(n+1))` -/
def P6336877265486720351.Spec : Prop :=
  ∀ n, P6336877265486720351.a n = A245471 (n + 1)

end A245471

/-! ## A245471.P9652602391111342290

`gcd(2, n)*xor(A110654(n), A193356(n+1))`
-/

namespace A245471.P9652602391111342290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * Int.xor (A110654 n) (A193356 (n + 1))

end

end A245471.P9652602391111342290

namespace A245471

/-- `gcd(2, n)*xor(A110654(n), A193356(n+1))` -/
def P9652602391111342290.Spec : Prop :=
  ∀ n, P9652602391111342290.a n = A245471 (n + 1)

end A245471

/-! ## A245471.P6779140067610642040

`xor(A064680(n+1), A237420(n))`
-/

namespace A245471.P6779140067610642040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064680 (n + 1)) (A237420 n)

end

end A245471.P6779140067610642040

namespace A245471

/-- `xor(A064680(n+1), A237420(n))` -/
def P6779140067610642040.Spec : Prop :=
  ∀ n, P6779140067610642040.a n = A245471 (n + 1)

end A245471

/-! ## A245471.P11290953408320567665

`xor(A001281(n+1)-A064680(n+1), A064680(n+1))`
-/

namespace A245471.P11290953408320567665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001281 (n + 1) - A064680 (n + 1)) (A064680 (n + 1))

end

end A245471.P11290953408320567665

namespace A245471

/-- `xor(A001281(n+1)-A064680(n+1), A064680(n+1))` -/
def P11290953408320567665.Spec : Prop :=
  ∀ n, P11290953408320567665.a n = A245471 (n + 1)

end A245471

/-!
# A245472: Number of composite Lucas numbers between the prime Lucas numbers A005479(n) and A005479(n+1).

The programs for A245472, there is no canonical definition to state claims against.
-/

/-! ## A245472.P7523622881745122882

`floor(Δ[A001606(n+1)]-acot(n))`
-/

namespace A245472.P7523622881745122882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A245472.P7523622881745122882

/-! ## A245472.P11940272300605246372

`Δ[A001606(n+1)]-A054977(n)`
-/

namespace A245472.P11940272300605246372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054977 n

end

end A245472.P11940272300605246372

/-! ## A245472.P7637997221319106064

`Δ[abs(A001606(n+1)-A028310(n))]`
-/

namespace A245472.P7637997221319106064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001606 (n + 1) - A028310 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245472.P7637997221319106064

/-! ## A245472.P5472037177358515737

`Δ[A001606(n+1)+A000007(n)]-1`
-/

namespace A245472.P5472037177358515737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A245472.P5472037177358515737

/-! ## A245472.P5938483056521617505

`Δ[A001606(n+1)-A009005(n+1)]`
-/

namespace A245472.P5938483056521617505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1) - A009005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245472.P5938483056521617505

/-! ## A245472.P17835681763917512206

`Δ[A001606(n+1)-A065475(n+1)]`
-/

namespace A245472.P17835681763917512206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1) - A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245472.P17835681763917512206

/-! ## A245472.P15453509387604642778

`Δ[A001606(n+1)]-A000032(round(n/(n+1)))`
-/

namespace A245472.P15453509387604642778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000032 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A245472.P15453509387604642778

/-! ## A245472.P5175921861762796866

`Δ[A001606(n+1)-A028310(n)]%A000045(n+2)`
-/

namespace A245472.P5175921861762796866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 2))

end

end A245472.P5175921861762796866

/-!
# A245473: Nearest integer to 2^log(n).

The programs for A245473, the canonical program `A245473.P12416490537936875042` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245473 has offset 1).

The definition of A245473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245473.P12416490537936875042

`round(2^log(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245473

/-- `round(2^log(n+1))` -/
def P12416490537936875042.Spec : Prop :=
  ∀ n, P12416490537936875042.a n = A245473 (n + 1)

theorem P12416490537936875042.correct : P12416490537936875042.Spec := by
  intro n
  simp only [A245473, Nat.add_sub_cancel]

end A245473

/-! ## A245473.P2935765165137764893

`A048766(A104249(n+1))`
-/

namespace A245473.P2935765165137764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A104249 (n + 1)).toNat

end

end A245473.P2935765165137764893

namespace A245473

/-- `A048766(A104249(n+1))` -/
def P2935765165137764893.Spec : Prop :=
  ∀ n, P2935765165137764893.a n = A245473 (n + 1)

end A245473

/-! ## A245473.P2553957920445989362

`A048766(A190453(n+1)+A000326(n))`
-/

namespace A245473.P2553957920445989362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A190453 (n + 1) + A000326 n).toNat

end

end A245473.P2553957920445989362

namespace A245473

/-- `A048766(A190453(n+1)+A000326(n))` -/
def P2553957920445989362.Spec : Prop :=
  ∀ n, P2553957920445989362.a n = A245473 (n + 1)

end A245473

/-! ## A245473.P5151464302129669019

`A048766(A212959(n)+A091242(n+1))`
-/

namespace A245473.P5151464302129669019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A212959 n + A091242 (n + 1)).toNat

end

end A245473.P5151464302129669019

namespace A245473

/-- `A048766(A212959(n)+A091242(n+1))` -/
def P5151464302129669019.Spec : Prop :=
  ∀ n, P5151464302129669019.a n = A245473 (n + 1)

end A245473

/-! ## A245473.P17732491273565319692

`A048766(A058331(n+1)-A000217(n))`
-/

namespace A245473.P17732491273565319692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A058331 (n + 1) - A000217 n).toNat

end

end A245473.P17732491273565319692

namespace A245473

/-- `A048766(A058331(n+1)-A000217(n))` -/
def P17732491273565319692.Spec : Prop :=
  ∀ n, P17732491273565319692.a n = A245473 (n + 1)

end A245473

/-!
# A245474: a(n) = smallest positive integer s such that s*n - floor(sqrt(s*n))^2 is a square.

The programs for A245474, there is no canonical definition to state claims against.
-/

/-! ## A245474.P2660528279199046230

`gcd(n, A325144(A089897(n+1)))`
-/

namespace A245474.P2660528279199046230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A325144 (A089897 (n + 1)).toNat)

end

end A245474.P2660528279199046230

/-! ## A245474.P10550936800559761114

`gcd(n, A014820(A053186(A237616(n))))`
-/

namespace A245474.P10550936800559761114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014820 (A053186 (A237616 n).toNat).toNat)

end

end A245474.P10550936800559761114

/-! ## A245474.P9792035571369297730

`A056554((n^A001842(n))²)`
-/

namespace A245474.P9792035571369297730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.roundAway (((n : ℚ) ^ (A001842 n : ℤ)) ^ 2)).toNat

end

end A245474.P9792035571369297730

/-! ## A245474.P14471596317676168428

`A007913((4*n)^A049455(n+1))`
-/

namespace A245474.P14471596317676168428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((4 * n : ℚ) ^ (A049455 (n + 1) : ℤ))).toNat

end

end A245474.P14471596317676168428

/-!
# A245475: Numbers n such that the sum of digits, sum of squares of digits, and sum of cubes of digits are all prime.

The programs for A245475, there is no canonical definition to state claims against.
-/

/-! ## A245475.P18424338677383314354

`∩[A108662(n+1), A225534(n+1)]%A307735(3*n+4)`
-/

namespace A245475.P18424338677383314354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A307735 (3 * n + 4))

end

end A245475.P18424338677383314354

/-! ## A245475.P3090691760136319621

`∩[A182404(n+1), A225534(n+1)]`
-/

namespace A245475.P3090691760136319621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245475.P3090691760136319621

/-! ## A245475.P4927072628650589844

`∩[A108662(n+1), A225534(n+1)%A344366(n+1)]`
-/

namespace A245475.P4927072628650589844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225534 (n + 1)) (A344366 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245475.P4927072628650589844

/-! ## A245475.P16282108023172977079

`∩[A210767(n+1)%A344366(n+1), A225534(n+1)]`
-/

namespace A245475.P16282108023172977079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210767 (n + 1)) (A344366 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245475.P16282108023172977079

/-!
# A245477: Period 6: repeat [1, 1, 1, 1, 1, 2].

The programs for A245477, the canonical program `A245477.P15298588756038265999` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245477 has offset 0).

The definition of A245477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245477.P15298588756038265999

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245477

/-- `a(n-6)` -/
def P15298588756038265999.Spec : Prop :=
  ∀ n, (P15298588756038265999.a n : ℤ) = A245477 n

theorem P15298588756038265999.correct : P15298588756038265999.Spec := by
  intro n
  simp only [A245477]

end A245477

/-!
# A245478: Numbers k such that the k-th cyclotomic polynomial has a root mod 5.

The programs for A245478, the canonical program `A245478.P16865376038304341048` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245478 has offset 1).

The definition of A245478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245478.P16865376038304341048

`5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245478

/-- `5*a(n-3)` -/
def P16865376038304341048.Spec : Prop :=
  ∀ n, (P16865376038304341048.a n : ℤ) = A245478 (n + 1)

theorem P16865376038304341048.correct : P16865376038304341048.Spec := by
  intro n
  simp only [A245478, Nat.add_sub_cancel]

end A245478

/-! ## A245478.P15272880842896273477

`2^(n%3)*5^floor(n/3)`
-/

namespace A245478.P15272880842896273477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n % 3) : ℚ) * (5 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ)

end

end A245478.P15272880842896273477

namespace A245478

/-- `2^(n%3)*5^floor(n/3)` -/
def P15272880842896273477.Spec : Prop :=
  ∀ n, P15272880842896273477.a n = (A245478 (n + 1) : ℚ)

end A245478

/-! ## A245478.P1800939131742683416

`a(n-1)+a(n-gcd(3, n))` with `a(0)=1`
-/

namespace A245478.P1800939131742683416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 3 n)

end

end A245478.P1800939131742683416

namespace A245478

/-- `a(n-1)+a(n-gcd(3, n))` -/
def P1800939131742683416.Spec : Prop :=
  ∀ n, (P1800939131742683416.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P9548348008602631654

`a(n-3)/(1-4/5)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A245478.P9548348008602631654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) / (1 - (4 : ℚ) / 5)

end

end A245478.P9548348008602631654

namespace A245478

/-- `a(n-3)/(1-4/5)` -/
def P9548348008602631654.Spec : Prop :=
  ∀ n, P9548348008602631654.a n = (A245478 (n + 1) : ℚ)

end A245478

/-! ## A245478.P8641681780045622789

`A140730(A042965(n+1))`
-/

namespace A245478.P8641681780045622789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A042965 (n + 1)).toNat

end

end A245478.P8641681780045622789

namespace A245478

/-- `A140730(A042965(n+1))` -/
def P8641681780045622789.Spec : Prop :=
  ∀ n, P8641681780045622789.a n = A245478 (n + 1)

end A245478

/-! ## A245478.P4455009788133929645

`A181287(A004773(n+1))+1`
-/

namespace A245478.P4455009788133929645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (A004773 (n + 1)).toNat + 1

end

end A245478.P4455009788133929645

namespace A245478

/-- `A181287(A004773(n+1))+1` -/
def P4455009788133929645.Spec : Prop :=
  ∀ n, P4455009788133929645.a n = A245478 (n + 1)

end A245478

/-! ## A245478.P2400483646628371267

`A140730(A004773(n+1)-1)`
-/

namespace A245478.P2400483646628371267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A004773 (n + 1) - 1).toNat

end

end A245478.P2400483646628371267

namespace A245478

/-- `A140730(A004773(n+1)-1)` -/
def P2400483646628371267.Spec : Prop :=
  ∀ n, P2400483646628371267.a n = A245478 (n + 1)

end A245478

/-! ## A245478.P5428471608297861006

`∪[A133632(n+1), A026383(n)]`
-/

namespace A245478.P5428471608297861006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P5428471608297861006

namespace A245478

/-- `∪[A133632(n+1), A026383(n)]` -/
def P5428471608297861006.Spec : Prop :=
  ∀ n, (P5428471608297861006.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P6944526465057342051

`∪[A163141(n+1), A026383(n)]`
-/

namespace A245478.P6944526465057342051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P6944526465057342051

namespace A245478

/-- `∪[A163141(n+1), A026383(n)]` -/
def P6944526465057342051.Spec : Prop :=
  ∀ n, (P6944526465057342051.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P11169844837946550961

`∪[A133632(n+1), A162963(n+1)]`
-/

namespace A245478.P11169844837946550961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P11169844837946550961

namespace A245478

/-- `∪[A133632(n+1), A162963(n+1)]` -/
def P11169844837946550961.Spec : Prop :=
  ∀ n, (P11169844837946550961.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P16642317659922140536

`ogf((1+2x+4x^2)/(1-5x^3))`
-/

namespace A245478.P16642317659922140536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 4] [1, 0, 0, -5] n

end

end A245478.P16642317659922140536

namespace A245478

/-- `ogf((1+2x+4x^2)/(1-5x^3))` -/
def P16642317659922140536.Spec : Prop :=
  ∀ n, P16642317659922140536.a n = A245478 (n + 1)

end A245478

/-! ## A245478.P8283998704618422866

`∪[A026383(n), A026395(n)]`
-/

namespace A245478.P8283998704618422866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P8283998704618422866

namespace A245478

/-- `∪[A026383(n), A026395(n)]` -/
def P8283998704618422866.Spec : Prop :=
  ∀ n, (P8283998704618422866.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P2527945737263116612

`∪[A133632(n+1), A026395(n)]`
-/

namespace A245478.P2527945737263116612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P2527945737263116612

namespace A245478

/-- `∪[A133632(n+1), A026395(n)]` -/
def P2527945737263116612.Spec : Prop :=
  ∀ n, (P2527945737263116612.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P13236633259693353149

`∪[A026395(n), A162963(n+1)]`
-/

namespace A245478.P13236633259693353149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P13236633259693353149

namespace A245478

/-- `∪[A026395(n), A162963(n+1)]` -/
def P13236633259693353149.Spec : Prop :=
  ∀ n, (P13236633259693353149.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P8200387260440721228

`∪[A163141(n+1), A026395(n)]`
-/

namespace A245478.P8200387260440721228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P8200387260440721228

namespace A245478

/-- `∪[A163141(n+1), A026395(n)]` -/
def P8200387260440721228.Spec : Prop :=
  ∀ n, (P8200387260440721228.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P7225475373793880122

`A105953(2*(n+1))/5`
-/

namespace A245478.P7225475373793880122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105953 (2 * (n + 1)) : ℚ) / 5

end

end A245478.P7225475373793880122

namespace A245478

/-- `A105953(2*(n+1))/5` -/
def P7225475373793880122.Spec : Prop :=
  ∀ n, P7225475373793880122.a n = (A245478 (n + 1) : ℚ)

end A245478

/-! ## A245478.P8391798291845397045

`A004647(n)/A173862(n+1)`
-/

namespace A245478.P8391798291845397045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004647 n : ℚ) / (A173862 (n + 1) : ℚ)

end

end A245478.P8391798291845397045

namespace A245478

/-- `A004647(n)/A173862(n+1)` -/
def P8391798291845397045.Spec : Prop :=
  ∀ n, P8391798291845397045.a n = (A245478 (n + 1) : ℚ)

end A245478

/-! ## A245478.P4550294142053566572

`∩[A003592(n+1), A140730(n)]`
-/

namespace A245478.P4550294142053566572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P4550294142053566572

namespace A245478

/-- `∩[A003592(n+1), A140730(n)]` -/
def P4550294142053566572.Spec : Prop :=
  ∀ n, (P4550294142053566572.a n : ℤ) = A245478 (n + 1)

end A245478

/-! ## A245478.P15757121587982108712

`∩[A003592(n+1), A079002(n+1)]`
-/

namespace A245478.P15757121587982108712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245478.P15757121587982108712

namespace A245478

/-- `∩[A003592(n+1), A079002(n+1)]` -/
def P15757121587982108712.Spec : Prop :=
  ∀ n, (P15757121587982108712.a n : ℤ) = A245478 (n + 1)

end A245478

/-!
# A245479: Numbers n such that the n-th cyclotomic polynomial has a root mod 7.

The programs for A245479, the canonical program `A245479.P7235134826529250896` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245479 has offset 1).

The definition of A245479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245479.P7235134826529250896

`7*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245479

/-- `7*a(n-4)` -/
def P7235134826529250896.Spec : Prop :=
  ∀ n, (P7235134826529250896.a n : ℤ) = A245479 (n + 1)

theorem P7235134826529250896.correct : P7235134826529250896.Spec := by
  intro n
  simp only [A245479, Nat.add_sub_cancel]

end A245479

/-! ## A245479.P4880115221802952082

`a(n-1)+a(n-gcd(4, n))` with `a(0)=1`
-/

namespace A245479.P4880115221802952082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 4 n)

end

end A245479.P4880115221802952082

namespace A245479

/-- `a(n-1)+a(n-gcd(4, n))` -/
def P4880115221802952082.Spec : Prop :=
  ∀ n, (P4880115221802952082.a n : ℤ) = A245479 (n + 1)

end A245479

/-! ## A245479.P8472693131460067589

`A008589(a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A245479.P8472693131460067589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  A008589 (a (n - 4)).toNat

end

end A245479.P8472693131460067589

namespace A245479

/-- `A008589(a(n-4))` -/
def P8472693131460067589.Spec : Prop :=
  ∀ n, P8472693131460067589.a n = A245479 (n + 1)

end A245479

/-! ## A245479.P9259612488859527872

`A076934(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A245479.P9259612488859527872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076934 (a (n - 1)).toNat + a (n - 1)

end

end A245479.P9259612488859527872

namespace A245479

/-- `A076934(a(n-1))+a(n-1)` -/
def P9259612488859527872.Spec : Prop :=
  ∀ n, P9259612488859527872.a n = A245479 (n + 1)

end A245479

/-! ## A245479.P17378208264049227043

`record[A370182(n+1)]`
-/

namespace A245479.P17378208264049227043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245479.P17378208264049227043

namespace A245479

/-- `record[A370182(n+1)]` -/
def P17378208264049227043.Spec : Prop :=
  ∀ n, P17378208264049227043.a n = A245479 (n + 1)

end A245479

/-!
# A245480: Numbers n such that the n-th cyclotomic polynomial has a root mod 11.

The programs for A245480, the canonical program `A245480.P7512027956403406778` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245480 has offset 1).

The definition of A245480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245480.P7512027956403406778

`11*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245480

/-- `11*a(n-4)` -/
def P7512027956403406778.Spec : Prop :=
  ∀ n, (P7512027956403406778.a n : ℤ) = A245480 (n + 1)

theorem P7512027956403406778.correct : P7512027956403406778.Spec := by
  intro n
  simp only [A245480, Nat.add_sub_cancel]

end A245480

/-! ## A245480.P1919929534849383053

`eq[A056960(n), A109013(n)]`
-/

namespace A245480.P1919929534849383053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245480.P1919929534849383053

namespace A245480

/-- `eq[A056960(n), A109013(n)]` -/
def P1919929534849383053.Spec : Prop :=
  ∀ n, (P1919929534849383053.a n : ℤ) = A245480 (n + 1)

end A245480

/-! ## A245480.P8042006215263470123

`eq[A109013(n), A118541(n)]`
-/

namespace A245480.P8042006215263470123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245480.P8042006215263470123

namespace A245480

/-- `eq[A109013(n), A118541(n)]` -/
def P8042006215263470123.Spec : Prop :=
  ∀ n, (P8042006215263470123.a n : ℤ) = A245480 (n + 1)

end A245480

/-! ## A245480.P8862205175134461819

`record[gcd((2*n+7-3*(-1)^n)/4, A002415(3*n+4))]`
-/

namespace A245480.P8862205175134461819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((2 * n : ℤ) + (7 - 3 * (-1) ^ n) : ℚ) / 4)) (A002415 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245480.P8862205175134461819

namespace A245480

/-- `record[gcd((2*n+7-3*(-1)^n)/4, A002415(3*n+4))]` -/
def P8862205175134461819.Spec : Prop :=
  ∀ n, (P8862205175134461819.a n : ℤ) = A245480 (n + 1)

end A245480

/-! ## A245480.P1793884674314483500

`eq[A106612(A106612(n)), A109013(n)]`
-/

namespace A245480.P1793884674314483500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A106612 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245480.P1793884674314483500

namespace A245480

/-- `eq[A106612(A106612(n)), A109013(n)]` -/
def P1793884674314483500.Spec : Prop :=
  ∀ n, (P1793884674314483500.a n : ℤ) = A245480 (n + 1)

end A245480

/-!
# A245481: Numbers k such that the k-th cyclotomic polynomial has a root mod 13.

The programs for A245481, the canonical program `A245481.P6323696396537334447` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245481 has offset 1).

The definition of A245481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245481.P6323696396537334447

`13*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=12`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245481

/-- `13*a(n-6)` -/
def P6323696396537334447.Spec : Prop :=
  ∀ n, (P6323696396537334447.a n : ℤ) = A245481 (n + 1)

theorem P6323696396537334447.correct : P6323696396537334447.Spec := by
  intro n
  simp only [A245481, Nat.add_sub_cancel]

end A245481

/-! ## A245481.P18283506589364328765

`eq[A033715(A033738(3*n)), A033738(n)]`
-/

namespace A245481.P18283506589364328765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A033738 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033738 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245481.P18283506589364328765

namespace A245481

/-- `eq[A033715(A033738(3*n)), A033738(n)]` -/
def P18283506589364328765.Spec : Prop :=
  ∀ n, (P18283506589364328765.a n : ℤ) = A245481 (n + 1)

end A245481

/-! ## A245481.P9197440039389737132

`eq[A106614(A106614(n)), A109015(n)]`
-/

namespace A245481.P9197440039389737132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A106614 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245481.P9197440039389737132

namespace A245481

/-- `eq[A106614(A106614(n)), A109015(n)]` -/
def P9197440039389737132.Spec : Prop :=
  ∀ n, (P9197440039389737132.a n : ℤ) = A245481 (n + 1)

end A245481

/-! ## A245481.P14982265302632339129

`∩[A057128(n+1), A356940(n+1)]`
-/

namespace A245481.P14982265302632339129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245481.P14982265302632339129

namespace A245481

/-- `∩[A057128(n+1), A356940(n+1)]` -/
def P14982265302632339129.Spec : Prop :=
  ∀ n, (P14982265302632339129.a n : ℤ) = A245481 (n + 1)

end A245481

/-! ## A245481.P15641829604698095478

`eq[13, lcm(13, lcm(12, n)/12)]`
-/

namespace A245481.P15641829604698095478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245481.P15641829604698095478

namespace A245481

/-- `eq[13, lcm(13, lcm(12, n)/12)]` -/
def P15641829604698095478.Spec : Prop :=
  ∀ n, (P15641829604698095478.a n : ℤ) = A245481 (n + 1)

end A245481

/-!
# A245484: a(n) = Sum_{(d

The programs for A245484, the canonical program `A245484.P7320759544988298613` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245484 has offset 1).

The definition of A245484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245484.P7320759544988298613

`A001001(n+1)-A064987(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245484

/-- `A001001(n+1)-A064987(n+1)` -/
def P7320759544988298613.Spec : Prop :=
  ∀ n, P7320759544988298613.a n = A245484 (n + 1)

theorem P7320759544988298613.correct : P7320759544988298613.Spec := by
  intro n
  simp only [A245484, Nat.add_sub_cancel]

end A245484

/-! ## A245484.P14157184879767267501

`A064987(n+1)-A245773(n+1)`
-/

namespace A245484.P14157184879767267501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1) - A245773 (n + 1)

end

end A245484.P14157184879767267501

namespace A245484

/-- `A064987(n+1)-A245773(n+1)` -/
def P14157184879767267501.Spec : Prop :=
  ∀ n, P14157184879767267501.a n = A245484 (n + 1)

theorem P14157184879767267501.correct : P14157184879767267501.Spec := by
  intro n
  simp only [A245484, Nat.add_sub_cancel, A245484.P14157184879767267501.a, A245484.P7320759544988298613.a, A001001, A001001.P14221911591443847044.f1, A001001.P14221911591443847044.a, A064987, A064987.P14181610018234257040.a, A245773, A245773.P11491610189230660149.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245484

/-! ## A245484.P14912502085259766869

`∑{d}[n+1, #*(A000203(#)-(n+1))]`
-/

namespace A245484.P14912502085259766869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000203 d - (n + 1 : ℤ))

end

end A245484.P14912502085259766869

namespace A245484

/-- `∑{d}[n+1, #*(A000203(#)-(n+1))]` -/
def P14912502085259766869.Spec : Prop :=
  ∀ n, P14912502085259766869.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P11331554913768113153

`∑{d}[n+1, #*A067558((n+1)/#)]`
-/

namespace A245484.P11331554913768113153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A067558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P11331554913768113153

namespace A245484

/-- `∑{d}[n+1, #*A067558((n+1)/#)]` -/
def P11331554913768113153.Spec : Prop :=
  ∀ n, P11331554913768113153.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P6312223591406440562

`∑{d}[n+1, A064987(#)]-A064987(n+1)`
-/

namespace A245484.P6312223591406440562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d - A064987 (n + 1)

end

end A245484.P6312223591406440562

namespace A245484

/-- `∑{d}[n+1, A064987(#)]-A064987(n+1)` -/
def P6312223591406440562.Spec : Prop :=
  ∀ n, P6312223591406440562.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P11643374158889868713

`A001001(n+1)%((n+1)*A000203(n+1))`
-/

namespace A245484.P11643374158889868713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001001 (n + 1)) ((n + 1 : ℤ) * A000203 (n + 1))

end

end A245484.P11643374158889868713

namespace A245484

/-- `A001001(n+1)%((n+1)*A000203(n+1))` -/
def P11643374158889868713.Spec : Prop :=
  ∀ n, P11643374158889868713.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P9418919653966014466

`∑{d}[n+1, A000290(#)*A001065((n+1)/#)]`
-/

namespace A245484.P9418919653966014466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P9418919653966014466

namespace A245484

/-- `∑{d}[n+1, A000290(#)*A001065((n+1)/#)]` -/
def P9418919653966014466.Spec : Prop :=
  ∀ n, P9418919653966014466.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P15491814933942587754

`∑{d}[n+1, A001157(#)*A051953((n+1)/#)]`
-/

namespace A245484.P15491814933942587754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P15491814933942587754

namespace A245484

/-- `∑{d}[n+1, A001157(#)*A051953((n+1)/#)]` -/
def P15491814933942587754.Spec : Prop :=
  ∀ n, P15491814933942587754.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P7966929841315586539

`∑{d}[n+1, A000203(#)*A064279((n+1)/#)]`
-/

namespace A245484.P7966929841315586539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A064279 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P7966929841315586539

namespace A245484

/-- `∑{d}[n+1, A000203(#)*A064279((n+1)/#)]` -/
def P7966929841315586539.Spec : Prop :=
  ∀ n, P7966929841315586539.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P13897100044035354537

`∑{d}[n+1, A007433(#)*A062790((n+1)/#)]`
-/

namespace A245484.P13897100044035354537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P13897100044035354537

namespace A245484

/-- `∑{d}[n+1, A007433(#)*A062790((n+1)/#)]` -/
def P13897100044035354537.Spec : Prop :=
  ∀ n, P13897100044035354537.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P17724226486947288167

`∑{d}[n+1, A032741(#)*A069097((n+1)/#)]`
-/

namespace A245484.P17724226486947288167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P17724226486947288167

namespace A245484

/-- `∑{d}[n+1, A032741(#)*A069097((n+1)/#)]` -/
def P17724226486947288167.Spec : Prop :=
  ∀ n, P17724226486947288167.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P16313873052764660088

`∑{d}[n+1, A001001(#)*A157658((n+1)/#)]`
-/

namespace A245484.P16313873052764660088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P16313873052764660088

namespace A245484

/-- `∑{d}[n+1, A001001(#)*A157658((n+1)/#)]` -/
def P16313873052764660088.Spec : Prop :=
  ∀ n, P16313873052764660088.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P9799467567724663208

`∑{d}[n+1, A091519(#)*A091570((n+1)/#)]`
-/

namespace A245484.P9799467567724663208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A091570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P9799467567724663208

namespace A245484

/-- `∑{d}[n+1, A091519(#)*A091570((n+1)/#)]` -/
def P9799467567724663208.Spec : Prop :=
  ∀ n, P9799467567724663208.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P15739879278879835891

`∑{d}[n+1, A007434(#)*A211779((n+1)/#)]`
-/

namespace A245484.P15739879278879835891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P15739879278879835891

namespace A245484

/-- `∑{d}[n+1, A007434(#)*A211779((n+1)/#)]` -/
def P15739879278879835891.Spec : Prop :=
  ∀ n, P15739879278879835891.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P3051202642718730194

`∑{d}[n+1, A002618(#)*A245211((n+1)/#)]`
-/

namespace A245484.P3051202642718730194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A245211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P3051202642718730194

namespace A245484

/-- `∑{d}[n+1, A002618(#)*A245211((n+1)/#)]` -/
def P3051202642718730194.Spec : Prop :=
  ∀ n, P3051202642718730194.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P14569660631708185935

`∑{d}[n+1, A000082(#)*A293235((n+1)/#)]`
-/

namespace A245484.P14569660631708185935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A293235 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P14569660631708185935

namespace A245484

/-- `∑{d}[n+1, A000082(#)*A293235((n+1)/#)]` -/
def P14569660631708185935.Spec : Prop :=
  ∀ n, P14569660631708185935.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P16732467539164844388

`∑{d}[n+1, A238952(#)*A341772((n+1)/#)]`
-/

namespace A245484.P16732467539164844388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P16732467539164844388

namespace A245484

/-- `∑{d}[n+1, A238952(#)*A341772((n+1)/#)]` -/
def P16732467539164844388.Spec : Prop :=
  ∀ n, P16732467539164844388.a n = A245484 (n + 1)

end A245484

/-! ## A245484.P10595981833782569350

`∑{d}[n+1, A293228(#)*A351600((n+1)/#)]`
-/

namespace A245484.P10595981833782569350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A293228 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245484.P10595981833782569350

namespace A245484

/-- `∑{d}[n+1, A293228(#)*A351600((n+1)/#)]` -/
def P10595981833782569350.Spec : Prop :=
  ∀ n, P10595981833782569350.a n = A245484 (n + 1)

end A245484

/-!
# A245485: a(n) = 1 if n is a square, -1 if n is seven times a square, 0 otherwise.

The programs for A245485, the canonical program `A245485.P17665093231945785364` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245485 has offset 1).

The definition of A245485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245485.P17665093231945785364

`A010052(n+1)-A010052(7*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A245485

/-- `A010052(n+1)-A010052(7*(n+1))` -/
def P17665093231945785364.Spec : Prop :=
  ∀ n, P17665093231945785364.a n = A245485 (n + 1)

theorem P17665093231945785364.correct : P17665093231945785364.Spec := by
  intro n
  simp only [A245485, Nat.add_sub_cancel]

end A245485

/-! ## A245485.P1997796779475916264

`A035189(n+1)%2*Δ[xor(n, 2*n)]%2`
-/

namespace A245485.P1997796779475916264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035189 (n + 1)) 2 * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A245485.P1997796779475916264

namespace A245485

/-- `A035189(n+1)%2*Δ[xor(n, 2*n)]%2` -/
def P1997796779475916264.Spec : Prop :=
  ∀ n, P1997796779475916264.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P4926192432755798680

`A214293(A072026(n+1))`
-/

namespace A245485.P4926192432755798680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A072026 (n + 1)).toNat

end

end A245485.P4926192432755798680

namespace A245485

/-- `A214293(A072026(n+1))` -/
def P4926192432755798680.Spec : Prop :=
  ∀ n, P4926192432755798680.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P15466531528483343678

`A214293(A072028(n+1))`
-/

namespace A245485.P15466531528483343678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A072028 (n + 1)).toNat

end

end A245485.P15466531528483343678

namespace A245485

/-- `A214293(A072028(n+1))` -/
def P15466531528483343678.Spec : Prop :=
  ∀ n, P15466531528483343678.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P12997504854769870473

`A214293(A332213(n+1))`
-/

namespace A245485.P12997504854769870473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A332213 (n + 1)).toNat

end

end A245485.P12997504854769870473

namespace A245485

/-- `A214293(A332213(n+1))` -/
def P12997504854769870473.Spec : Prop :=
  ∀ n, P12997504854769870473.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P678945397877468814

`A214293(A235199(n+1))`
-/

namespace A245485.P678945397877468814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A235199 (n + 1)).toNat

end

end A245485.P678945397877468814

namespace A245485

/-- `A214293(A235199(n+1))` -/
def P678945397877468814.Spec : Prop :=
  ∀ n, P678945397877468814.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P10485252645013007567

`A214293(A061898(n+1))`
-/

namespace A245485.P10485252645013007567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A061898 (n + 1)).toNat

end

end A245485.P10485252645013007567

namespace A245485

/-- `A214293(A061898(n+1))` -/
def P10485252645013007567.Spec : Prop :=
  ∀ n, P10485252645013007567.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P13319291026391993557

`A214293(A072027(n+1))`
-/

namespace A245485.P13319291026391993557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214293 (A072027 (n + 1)).toNat

end

end A245485.P13319291026391993557

namespace A245485

/-- `A214293(A072027(n+1))` -/
def P13319291026391993557.Spec : Prop :=
  ∀ n, P13319291026391993557.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P13486711977971817367

`A143062(A137458(n+1)+5)`
-/

namespace A245485.P13486711977971817367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A137458 (n + 1) + 5).toNat

end

end A245485.P13486711977971817367

namespace A245485

/-- `A143062(A137458(n+1)+5)` -/
def P13486711977971817367.Spec : Prop :=
  ∀ n, P13486711977971817367.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P11232965089453074156

`A143259(A389084(n+1))`
-/

namespace A245485.P11232965089453074156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A389084 (n + 1)).toNat

end

end A245485.P11232965089453074156

namespace A245485

/-- `A143259(A389084(n+1))` -/
def P11232965089453074156.Spec : Prop :=
  ∀ n, P11232965089453074156.a n = A245485 (n + 1)

end A245485

/-! ## A245485.P16740412039202932680

`A240332(A071322(n+1)²)*A240332(A071322(n+1))`
-/

namespace A245485.P16740412039202932680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240332 (A071322 (n + 1) ^ 2).toNat * A240332 (A071322 (n + 1)).toNat

end

end A245485.P16740412039202932680

namespace A245485

/-- `A240332(A071322(n+1)²)*A240332(A071322(n+1))` -/
def P16740412039202932680.Spec : Prop :=
  ∀ n, P16740412039202932680.a n = A245485 (n + 1)

end A245485

/-!
# A245486: Product of the greatest prime factor of n and the greatest prime factor of n+1.

The programs for A245486, the canonical program `A245486.P4019298664788629082` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245486 has offset 1).

The definition of A245486 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245486.P4019298664788629082

`A006530(n+1)*A006530(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A245486

/-- `A006530(n+1)*A006530(n+2)` -/
def P4019298664788629082.Spec : Prop :=
  ∀ n, P4019298664788629082.a n = A245486 (n + 1)

theorem P4019298664788629082.correct : P4019298664788629082.Spec := by
  intro n
  simp only [A245486, Nat.add_sub_cancel]

end A245486

/-! ## A245486.P12859815325050806205

`∏{d}[-a(n-1), A006530(#+n)]` with `a(0)=2`
-/

namespace A245486.P12859815325050806205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 (d + n)

end

end A245486.P12859815325050806205

namespace A245486

/-- `∏{d}[-a(n-1), A006530(#+n)]` -/
def P12859815325050806205.Spec : Prop :=
  ∀ n, P12859815325050806205.a n = A245486 (n + 1)

end A245486

/-! ## A245486.P8717090874123231058

`lcm(A006530(n+2), A006530(Δ[n²]-n))`
-/

namespace A245486.P8717090874123231058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 2)) (A006530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A245486.P8717090874123231058

namespace A245486

/-- `lcm(A006530(n+2), A006530(Δ[n²]-n))` -/
def P8717090874123231058.Spec : Prop :=
  ∀ n, (P8717090874123231058.a n : ℤ) = A245486 (n + 1)

end A245486

/-! ## A245486.P13088363980785154083

`(n+1)/A052126(n+1)*p?[A008578(A061395(n+1)+1)]`
-/

namespace A245486.P13088363980785154083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A245486.P13088363980785154083

namespace A245486

/-- `(n+1)/A052126(n+1)*p?[A008578(A061395(n+1)+1)]` -/
def P13088363980785154083.Spec : Prop :=
  ∀ n, P13088363980785154083.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P17710690493870960765

`(n+1)/(A335876(n+1)-(n+1))*A088387(A007947(n+2))`
-/

namespace A245486.P17710690493870960765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335876 (n + 1) - (n + 1 : ℤ) : ℚ) * (A088387 (A007947 (n + 2)).toNat : ℚ)

end

end A245486.P17710690493870960765

namespace A245486

/-- `(n+1)/(A335876(n+1)-(n+1))*A088387(A007947(n+2))` -/
def P17710690493870960765.Spec : Prop :=
  ∀ n, P17710690493870960765.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P4741159258724945154

`lcm(A111089(n+1), A111089(n+2))`
-/

namespace A245486.P4741159258724945154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111089 (n + 1)) (A111089 (n + 2))

end

end A245486.P4741159258724945154

namespace A245486

/-- `lcm(A111089(n+1), A111089(n+2))` -/
def P4741159258724945154.Spec : Prop :=
  ∀ n, (P4741159258724945154.a n : ℤ) = A245486 (n + 1)

end A245486

/-! ## A245486.P9978576450293811286

`(A253560(n+1)+A006530(n+1))/A052126(n+2)`
-/

namespace A245486.P9978576450293811286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) + A006530 (n + 1) : ℚ) / (A052126 (n + 2) : ℚ)

end

end A245486.P9978576450293811286

namespace A245486

/-- `(A253560(n+1)+A006530(n+1))/A052126(n+2)` -/
def P9978576450293811286.Spec : Prop :=
  ∀ n, P9978576450293811286.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P8113097336799217577

`(A129598(n+2)-A111089(n+2))/A052126(n+1)`
-/

namespace A245486.P8113097336799217577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129598 (n + 2) - A111089 (n + 2) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A245486.P8113097336799217577

namespace A245486

/-- `(A129598(n+2)-A111089(n+2))/A052126(n+1)` -/
def P8113097336799217577.Spec : Prop :=
  ∀ n, P8113097336799217577.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P12474578934855116599

`(A253560(n+2)-A111089(n+2))/A052126(n+1)`
-/

namespace A245486.P12474578934855116599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 2) - A111089 (n + 2) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A245486.P12474578934855116599

namespace A245486

/-- `(A253560(n+2)-A111089(n+2))/A052126(n+1)` -/
def P12474578934855116599.Spec : Prop :=
  ∀ n, P12474578934855116599.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P13336062504555681011

`A020639(A345941(n+2))*A085392(2*(n+1))`
-/

namespace A245486.P13336062504555681011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 2)).toNat * A085392 (2 * (n + 1))

end

end A245486.P13336062504555681011

namespace A245486

/-- `A020639(A345941(n+2))*A085392(2*(n+1))` -/
def P13336062504555681011.Spec : Prop :=
  ∀ n, P13336062504555681011.a n = A245486 (n + 1)

end A245486

/-! ## A245486.P5435167141742974333

`lcm(A085392(2*(n+1))*A085392(n+2), A014963(n+2))`
-/

namespace A245486.P5435167141742974333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085392 (2 * (n + 1)) * A085392 (n + 2)) (A014963 (n + 2))

end

end A245486.P5435167141742974333

namespace A245486

/-- `lcm(A085392(2*(n+1))*A085392(n+2), A014963(n+2))` -/
def P5435167141742974333.Spec : Prop :=
  ∀ n, (P5435167141742974333.a n : ℤ) = A245486 (n + 1)

end A245486

/-! ## A245486.P8291194497917514243

`A085392(2*(n+1))*A085392(2*(n+2))`
-/

namespace A245486.P8291194497917514243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1)) * A085392 (2 * (n + 2))

end

end A245486.P8291194497917514243

namespace A245486

/-- `A085392(2*(n+1))*A085392(2*(n+2))` -/
def P8291194497917514243.Spec : Prop :=
  ∀ n, P8291194497917514243.a n = A245486 (n + 1)

end A245486

/-! ## A245486.P95118501076779426

`(n+1)/A052126(n+1)*p?[A051664(n+1)-A070536(n+1)]`
-/

namespace A245486.P95118501076779426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A070536 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A245486.P95118501076779426

namespace A245486

/-- `(n+1)/A052126(n+1)*p?[A051664(n+1)-A070536(n+1)]` -/
def P95118501076779426.Spec : Prop :=
  ∀ n, P95118501076779426.a n = (A245486 (n + 1) : ℚ)

end A245486

/-! ## A245486.P8387603036848450112

`A007947(A345941(2*(n+1))*A345941(n+2))`
-/

namespace A245486.P8387603036848450112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A345941 (2 * (n + 1)) * A345941 (n + 2)).toNat

end

end A245486.P8387603036848450112

namespace A245486

/-- `A007947(A345941(2*(n+1))*A345941(n+2))` -/
def P8387603036848450112.Spec : Prop :=
  ∀ n, P8387603036848450112.a n = A245486 (n + 1)

end A245486

/-! ## A245486.P16561990383247502033

`A007947(A053585(2*(n+1))*A053585(n+2))`
-/

namespace A245486.P16561990383247502033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A053585 (2 * (n + 1)) * A053585 (n + 2)).toNat

end

end A245486.P16561990383247502033

namespace A245486

/-- `A007947(A053585(2*(n+1))*A053585(n+2))` -/
def P16561990383247502033.Spec : Prop :=
  ∀ n, P16561990383247502033.a n = A245486 (n + 1)

end A245486

/-!
# A245487: Number of compositions of n into parts 3,4 where both parts are always present.

The programs for A245487, there is no canonical definition to state claims against.
-/

/-! ## A245487.P9120062375417645469

`A245527(A047201(n+1)%A245529(n+1))`
-/

namespace A245487.P9120062375417645469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245527 (Int.tmod (A047201 (n + 1)) (A245529 (n + 1))).toNat

end

end A245487.P9120062375417645469

/-!
# A245489: a(n) = (1^n + (-2)^n + 4^n)/3.

The programs for A245489, the canonical program `A245489.P11952086004352555483` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245489 has offset 0).

The definition of A245489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1^n+(-2)^n+4^n)/3` (program `A245489.P4575508004519155592`, by `A245489.P4575508004519155592.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245489.P11635065355961964134

`(1+(-2)^n+4^n)/3`
-/

namespace A245489.P11635065355961964134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-2) ^ n + (4 ^ n : ℤ) : ℚ) / 3

end

end A245489.P11635065355961964134

namespace A245489

/-- `(1+(-2)^n+4^n)/3` -/
def P11635065355961964134.Spec : Prop :=
  ∀ n, P11635065355961964134.a n = (A245489 n : ℚ)

theorem P11635065355961964134.correct : P11635065355961964134.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A245489, Nat.add_sub_cancel, A245489.P11635065355961964134.a, A245489.P11952086004352555483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A245489, Nat.add_sub_cancel, A245489.P11635065355961964134.a, A245489.P11952086004352555483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245489

/-! ## A245489.P4575508004519155592

`(1^n+(-2)^n+4^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245489.P4575508004519155592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 ^ n : ℤ) + (-2) ^ n + (4 ^ n : ℤ) : ℚ) / 3

end

end A245489.P4575508004519155592

namespace A245489

/-- `(1^n+(-2)^n+4^n)/3` -/
def P4575508004519155592.Spec : Prop :=
  ∀ n, P4575508004519155592.a n = (A245489 n : ℚ)

theorem P4575508004519155592.correct : P4575508004519155592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A245489, Nat.add_sub_cancel, A245489.P4575508004519155592.a, A245489.P11952086004352555483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A245489, Nat.add_sub_cancel, A245489.P4575508004519155592.a, A245489.P11952086004352555483.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245489

/-! ## A245489.P3597889340067789468

`∑[ogf((-1+2x+2x^2)/(-1+2x+8x^2))]`
-/

namespace A245489.P3597889340067789468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -2, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245489.P3597889340067789468

namespace A245489

/-- `∑[ogf((-1+2x+2x^2)/(-1+2x+8x^2))]` -/
def P3597889340067789468.Spec : Prop :=
  ∀ n, P3597889340067789468.a n = A245489 n

end A245489

/-! ## A245489.P1150309792346423514

`ogf((-1+2x+2x^2)/(-1+3x+6x^2-8x^3))`
-/

namespace A245489.P1150309792346423514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -6, 8] n

end

end A245489.P1150309792346423514

namespace A245489

/-- `ogf((-1+2x+2x^2)/(-1+3x+6x^2-8x^3))` -/
def P1150309792346423514.Spec : Prop :=
  ∀ n, P1150309792346423514.a n = A245489 n

end A245489

/-! ## A245489.P9779870878043476445

`xor(4*a(n-1)-1, 2^n)` with `a(0)=1`
-/

namespace A245489.P9779870878043476445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (4 * a (n - 1) - 1) (2 ^ n : ℤ)

end

end A245489.P9779870878043476445

namespace A245489

/-- `xor(4*a(n-1)-1, 2^n)` -/
def P9779870878043476445.Spec : Prop :=
  ∀ n, P9779870878043476445.a n = A245489 n

end A245489

/-! ## A245489.P11952086004352555483

`(-2)^n+4*a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A245489

/-- `(-2)^n+4*a(n-1)-1` -/
def P11952086004352555483.Spec : Prop :=
  ∀ n, P11952086004352555483.a n = A245489 n

theorem P11952086004352555483.correct : P11952086004352555483.Spec := by
  intro n
  simp only [A245489]

end A245489

/-! ## A245489.P4224578707505782876

`abs(xor(2^n-2, ∑[floor(2^(n-1))²]))`
-/

namespace A245489.P4224578707505782876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((2 ^ n : ℤ) - 2) (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A245489.P4224578707505782876

namespace A245489

/-- `abs(xor(2^n-2, ∑[floor(2^(n-1))²]))` -/
def P4224578707505782876.Spec : Prop :=
  ∀ n, P4224578707505782876.a n = A245489 n

end A245489

/-! ## A245489.P3514970435829561017

`2*(a(n-1)+4*a(n-2))-3` with `a(0)=1, a(1)=1`
-/

namespace A245489.P3514970435829561017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2)) - 3

end

end A245489.P3514970435829561017

namespace A245489

/-- `2*(a(n-1)+4*a(n-2))-3` -/
def P3514970435829561017.Spec : Prop :=
  ∀ n, P3514970435829561017.a n = A245489 n

end A245489

/-! ## A245489.P4442260138353985195

`2*A136401(2*n)+1`
-/

namespace A245489.P4442260138353985195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136401 (2 * n) + 1

end

end A245489.P4442260138353985195

namespace A245489

/-- `2*A136401(2*n)+1` -/
def P4442260138353985195.Spec : Prop :=
  ∀ n, P4442260138353985195.a n = A245489 n

end A245489

/-! ## A245489.P2819247399475024833

`A071930(n)+a(n-1)` with `a(0)=1`
-/

namespace A245489.P2819247399475024833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071930 n + a (n - 1)

end

end A245489.P2819247399475024833

namespace A245489

/-- `A071930(n)+a(n-1)` -/
def P2819247399475024833.Spec : Prop :=
  ∀ n, P2819247399475024833.a n = A245489 n

end A245489

/-! ## A245489.P16372081586153988586

`A192382(n+1)+∑[(-2)^n]`
-/

namespace A245489.P16372081586153988586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245489.P16372081586153988586

namespace A245489

/-- `A192382(n+1)+∑[(-2)^n]` -/
def P16372081586153988586.Spec : Prop :=
  ∀ n, P16372081586153988586.a n = A245489 n

end A245489

/-! ## A245489.P3885377156091406135

`A151575(n)+record[2-2*a(n-1)]-1` with `a(0)=1`
-/

namespace A245489.P3885377156091406135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1)

end

end A245489.P3885377156091406135

namespace A245489

/-- `A151575(n)+record[2-2*a(n-1)]-1` -/
def P3885377156091406135.Spec : Prop :=
  ∀ n, P3885377156091406135.a n = A245489 n

end A245489

/-! ## A245489.P4664167987081906318

`A081294(n)+1-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A245489.P4664167987081906318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081294 n + 1 - a (n - 1) - a (n - 1)

end

end A245489.P4664167987081906318

namespace A245489

/-- `A081294(n)+1-a(n-1)-a(n-1)` -/
def P4664167987081906318.Spec : Prop :=
  ∀ n, P4664167987081906318.a n = A245489 n

end A245489

/-! ## A245489.P6617165588816281785

`A151575(n)+A002450(n)`
-/

namespace A245489.P6617165588816281785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A002450 n

end

end A245489.P6617165588816281785

namespace A245489

/-- `A151575(n)+A002450(n)` -/
def P6617165588816281785.Spec : Prop :=
  ∀ n, P6617165588816281785.a n = A245489 n

end A245489

/-! ## A245489.P7918694265288250088

`A108924(n)-A084175(n)`
-/

namespace A245489.P7918694265288250088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108924 n - A084175 n

end

end A245489.P7918694265288250088

namespace A245489

/-- `A108924(n)-A084175(n)` -/
def P7918694265288250088.Spec : Prop :=
  ∀ n, P7918694265288250088.a n = A245489 n

end A245489

/-! ## A245489.P1821560299739175

`A163834(n)-A084247(n)`
-/

namespace A245489.P1821560299739175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - A084247 n

end

end A245489.P1821560299739175

namespace A245489

/-- `A163834(n)-A084247(n)` -/
def P1821560299739175.Spec : Prop :=
  ∀ n, P1821560299739175.a n = A245489 n

end A245489

/-! ## A245489.P12227902228836542707

`xor(A007583(n), A020522(n))`
-/

namespace A245489.P12227902228836542707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007583 n) (A020522 n)

end

end A245489.P12227902228836542707

namespace A245489

/-- `xor(A007583(n), A020522(n))` -/
def P12227902228836542707.Spec : Prop :=
  ∀ n, P12227902228836542707.a n = A245489 n

end A245489

/-! ## A245489.P8506662004054081408

`xor(A020515(n), A020988(n))`
-/

namespace A245489.P8506662004054081408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020515 n) (A020988 n)

end

end A245489.P8506662004054081408

namespace A245489

/-- `xor(A020515(n), A020988(n))` -/
def P8506662004054081408.Spec : Prop :=
  ∀ n, P8506662004054081408.a n = A245489 n

end A245489

/-! ## A245489.P2831308318613486249

`abs(A001045(n)-A083086(n))`
-/

namespace A245489.P2831308318613486249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001045 n - A083086 n|

end

end A245489.P2831308318613486249

namespace A245489

/-- `abs(A001045(n)-A083086(n))` -/
def P2831308318613486249.Spec : Prop :=
  ∀ n, P2831308318613486249.a n = A245489 n

end A245489

/-! ## A245489.P13692603903107164126

`A084175(n)+A078008(n)²`
-/

namespace A245489.P13692603903107164126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A078008 n ^ 2

end

end A245489.P13692603903107164126

namespace A245489

/-- `A084175(n)+A078008(n)²` -/
def P13692603903107164126.Spec : Prop :=
  ∀ n, P13692603903107164126.a n = A245489 n

end A245489

/-!
# A245490: 

The programs for A245490, there is no canonical definition to state claims against.
-/

/-! ## A245490.P12475918899655458909

`n^n^3`
-/

namespace A245490.P12475918899655458909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n ^ 3

end

end A245490.P12475918899655458909

/-!
# A245492: Number of compositions of n into parts 3 and 5 with at least one 3 and one 5.

The programs for A245492, there is no canonical definition to state claims against.
-/

/-! ## A245492.P6368453970527056245

`A065358(n)%A265679(A324050(n+1))`
-/

namespace A245492.P6368453970527056245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065358 n) (A265679 (A324050 (n + 1)).toNat)

end

end A245492.P6368453970527056245

/-!
# A245493: a(n) = n! * [x^n] (exp(x)+x^2/2!)^n.

The programs for A245493, there is no canonical definition to state claims against.
-/

/-! ## A245493.P10628718277632989361

`n*A162779(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A245493.P10628718277632989361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A162779 (a (n - 1)).toNat

end

end A245493.P10628718277632989361

/-!
# A245496: a(n) = n! * [x^n] (exp(x)+x)^n.

The programs for A245496, there is no canonical definition to state claims against.
-/

/-! ## A245496.P15317917569760369676

`A305276(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A245496.P15317917569760369676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305276 n + (n : ℤ) * a (n - 1)

end

end A245496.P15317917569760369676

/-!
# A245497: a(n) = phi(n)^2/2, where phi(n) = A000010(n), the Euler totient function.

The programs for A245497, the canonical program `A245497.P11908119768427537626` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245497 has offset 3).

The definition of A245497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245497.P11908119768427537626

`A000010(n+3)²/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245497

/-- `A000010(n+3)²/2` -/
def P11908119768427537626.Spec : Prop :=
  ∀ n, P11908119768427537626.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P2716604617320210811

`A127473(n+3)/2`
-/

namespace A245497.P2716604617320210811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127473 (n + 3) : ℚ) / 2

end

end A245497.P2716604617320210811

namespace A245497

/-- `A127473(n+3)/2` -/
def P2716604617320210811.Spec : Prop :=
  ∀ n, P2716604617320210811.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P12322924336071086064

`2*(A055684(n+3)+1)²`
-/

namespace A245497.P12322924336071086064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055684 (n + 3) + 1) ^ 2

end

end A245497.P12322924336071086064

namespace A245497

/-- `2*(A055684(n+3)+1)²` -/
def P12322924336071086064.Spec : Prop :=
  ∀ n, P12322924336071086064.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P1131242705935760320

`A000982(A000010(n+3))`
-/

namespace A245497.P1131242705935760320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A000010 (n + 3)).toNat

end

end A245497.P1131242705935760320

namespace A245497

/-- `A000982(A000010(n+3))` -/
def P1131242705935760320.Spec : Prop :=
  ∀ n, P1131242705935760320.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P7570986882696046390

`A053439(A000010(n+3)-1)`
-/

namespace A245497.P7570986882696046390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 (A000010 (n + 3) - 1).toNat

end

end A245497.P7570986882696046390

namespace A245497

/-- `A053439(A000010(n+3)-1)` -/
def P7570986882696046390.Spec : Prop :=
  ∀ n, P7570986882696046390.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P10206337820915096846

`A093353(A000010(n+3)-1)`
-/

namespace A245497.P10206337820915096846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (A000010 (n + 3) - 1).toNat

end

end A245497.P10206337820915096846

namespace A245497

/-- `A093353(A000010(n+3)-1)` -/
def P10206337820915096846.Spec : Prop :=
  ∀ n, P10206337820915096846.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P1664927602016088260

`A093907(A000010(n+3)-1)`
-/

namespace A245497.P1664927602016088260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A000010 (n + 3) - 1).toNat

end

end A245497.P1664927602016088260

namespace A245497

/-- `A093907(A000010(n+3)-1)` -/
def P1664927602016088260.Spec : Prop :=
  ∀ n, P1664927602016088260.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P3627148084992411395

`A000010(lcm(2, n+3))/2*A000010(n+3)`
-/

namespace A245497.P3627148084992411395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lcm 2 (n + 3)) : ℚ) / 2 * (A000010 (n + 3) : ℚ)

end

end A245497.P3627148084992411395

namespace A245497

/-- `A000010(lcm(2, n+3))/2*A000010(n+3)` -/
def P3627148084992411395.Spec : Prop :=
  ∀ n, P3627148084992411395.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P18198731530559116863

`A000010(2*n-(n-3))/2*A000010(n+3)`
-/

namespace A245497.P18198731530559116863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat : ℚ) / 2 * (A000010 (n + 3) : ℚ)

end

end A245497.P18198731530559116863

namespace A245497

/-- `A000010(2*n-(n-3))/2*A000010(n+3)` -/
def P18198731530559116863.Spec : Prop :=
  ∀ n, P18198731530559116863.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P10716306564041553922

`2*A023022(n+3)²`
-/

namespace A245497.P10716306564041553922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023022 (n + 3) ^ 2

end

end A245497.P10716306564041553922

namespace A245497

/-- `2*A023022(n+3)²` -/
def P10716306564041553922.Spec : Prop :=
  ∀ n, P10716306564041553922.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P15048622915826132064

`2*Δ[A046657(n+2)]²`
-/

namespace A245497.P15048622915826132064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A245497.P15048622915826132064

namespace A245497

/-- `2*Δ[A046657(n+2)]²` -/
def P15048622915826132064.Spec : Prop :=
  ∀ n, P15048622915826132064.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P889240396515971580

`A001105(A023022(n+3))`
-/

namespace A245497.P889240396515971580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A023022 (n + 3)).toNat

end

end A245497.P889240396515971580

namespace A245497

/-- `A001105(A023022(n+3))` -/
def P889240396515971580.Spec : Prop :=
  ∀ n, P889240396515971580.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P6295711289003797099

`A000010(n+3)*A023022(n+3)`
-/

namespace A245497.P6295711289003797099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) * A023022 (n + 3)

end

end A245497.P6295711289003797099

namespace A245497

/-- `A000010(n+3)*A023022(n+3)` -/
def P6295711289003797099.Spec : Prop :=
  ∀ n, P6295711289003797099.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P5455392904902053647

`Δ[A057434(n+2)/2]`
-/

namespace A245497.P5455392904902053647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057434 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245497.P5455392904902053647

namespace A245497

/-- `Δ[A057434(n+2)/2]` -/
def P5455392904902053647.Spec : Prop :=
  ∀ n, P5455392904902053647.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P10899526562306531560

`2*Δ[A049806(n+2)]²`
-/

namespace A245497.P10899526562306531560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2

end

end A245497.P10899526562306531560

namespace A245497

/-- `2*Δ[A049806(n+2)]²` -/
def P10899526562306531560.Spec : Prop :=
  ∀ n, P10899526562306531560.a n = A245497 (n + 3)

end A245497

/-! ## A245497.P233933099962443370

`Δ[A015614(n+2)]²/2`
-/

namespace A245497.P233933099962443370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A245497.P233933099962443370

namespace A245497

/-- `Δ[A015614(n+2)]²/2` -/
def P233933099962443370.Spec : Prop :=
  ∀ n, P233933099962443370.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P10779290677509996812

`Δ[A068773(n+2)]²/2`
-/

namespace A245497.P10779290677509996812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A245497.P10779290677509996812

namespace A245497

/-- `Δ[A068773(n+2)]²/2` -/
def P10779290677509996812.Spec : Prop :=
  ∀ n, P10779290677509996812.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P16133297919985891801

`Δ[A092249(n+2)]²/2`
-/

namespace A245497.P16133297919985891801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A245497.P16133297919985891801

namespace A245497

/-- `Δ[A092249(n+2)]²/2` -/
def P16133297919985891801.Spec : Prop :=
  ∀ n, P16133297919985891801.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P8049440275290367721

`(A109606(n+3)+1)²/2`
-/

namespace A245497.P8049440275290367721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109606 (n + 3) + 1) ^ 2 : ℚ) / 2

end

end A245497.P8049440275290367721

namespace A245497

/-- `(A109606(n+3)+1)²/2` -/
def P8049440275290367721.Spec : Prop :=
  ∀ n, P8049440275290367721.a n = (A245497 (n + 3) : ℚ)

end A245497

/-! ## A245497.P13713885305242487003

`(A039649(n+3)-1)²/2`
-/

namespace A245497.P13713885305242487003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A039649 (n + 3) - 1) ^ 2 : ℚ) / 2

end

end A245497.P13713885305242487003

namespace A245497

/-- `(A039649(n+3)-1)²/2` -/
def P13713885305242487003.Spec : Prop :=
  ∀ n, P13713885305242487003.a n = (A245497 (n + 3) : ℚ)

end A245497

