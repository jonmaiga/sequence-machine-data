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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A310500: Coordination sequence Gal.6.475.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310500, there is no canonical definition to state claims against.
-/

/-! ## A310500.P1195532457124698740

`A310493(n)+A265847(A146620(n+1))`
-/

namespace A310500.P1195532457124698740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n + A265847 (A146620 (n + 1)).toNat

end

end A310500.P1195532457124698740

/-! ## A310500.P14292257346207405338

`A310504(n)-A028586(A093119(n+1))`
-/

namespace A310500.P14292257346207405338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310504 n - A028586 (A093119 (n + 1)).toNat

end

end A310500.P14292257346207405338

/-!
# A310501: Coordination sequence Gal.6.328.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310501, the canonical program `A310501.P8756319467982132797` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310501 has offset 0).

The definition of A310501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310501.P8756319467982132797

`2*A313045(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310501

/-- `2*A313045(n)-A008574(n)` -/
def P8756319467982132797.Spec : Prop :=
  ∀ n, P8756319467982132797.a n = A310501 n

theorem P8756319467982132797.correct : P8756319467982132797.Spec := by
  intro n
  simp only [A310501]

end A310501

/-! ## A310501.P13633915249292547003

`A004275(A313045(n)-A004273(n))`
-/

namespace A310501.P13633915249292547003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313045 n - A004273 n).toNat

end

end A310501.P13633915249292547003

namespace A310501

/-- `A004275(A313045(n)-A004273(n))` -/
def P13633915249292547003.Spec : Prop :=
  ∀ n, P13633915249292547003.a n = A310501 n

end A310501

/-! ## A310501.P7916355127336731576

`A004273(A313045(n)-n)-A004273(n)`
-/

namespace A310501.P7916355127336731576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313045 n - (n : ℤ)).toNat - A004273 n

end

end A310501.P7916355127336731576

namespace A310501

/-- `A004273(A313045(n)-n)-A004273(n)` -/
def P7916355127336731576.Spec : Prop :=
  ∀ n, P7916355127336731576.a n = A310501 n

end A310501

/-! ## A310501.P5803222207861978740

`A008574(n)+A005843(A313045(n)-A008574(n))`
-/

namespace A310501.P5803222207861978740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313045 n - A008574 n).toNat

end

end A310501.P5803222207861978740

namespace A310501

/-- `A008574(n)+A005843(A313045(n)-A008574(n))` -/
def P5803222207861978740.Spec : Prop :=
  ∀ n, P5803222207861978740.a n = A310501 n

end A310501

/-! ## A310501.P5195388418642349153

`A310408(n)+Δ[2*A011864(n)]`
-/

namespace A310501.P5195388418642349153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310408 n + (f1 (n + 1) - f1 n)

end

end A310501.P5195388418642349153

namespace A310501

/-- `A310408(n)+Δ[2*A011864(n)]` -/
def P5195388418642349153.Spec : Prop :=
  ∀ n, P5195388418642349153.a n = A310501 n

theorem P5195388418642349153.correct : P5195388418642349153.Spec := by
  intro n
  simp only [A310501, Nat.add_sub_cancel, A310501.P5195388418642349153.f1, A310501.P5195388418642349153.a, A310501.P8756319467982132797.a, A008574, A008574.P1300280032690682112.a, A011864, A011864.P3547417513882699266.a, A310408, A310408.P15738370817569291537.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, A312927, A312927.P540762951115705510.f1, A312927.P540762951115705510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310501

/-! ## A310501.P2663822166353809069

`abs(A008592(n)-A315208(n))`
-/

namespace A310501.P2663822166353809069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315208 n|

end

end A310501.P2663822166353809069

namespace A310501

/-- `abs(A008592(n)-A315208(n))` -/
def P2663822166353809069.Spec : Prop :=
  ∀ n, P2663822166353809069.a n = A310501 n

end A310501

/-! ## A310501.P9074456364222287522

`2*A008706(n)-A315208(n)`
-/

namespace A310501.P9074456364222287522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315208 n

end

end A310501.P9074456364222287522

namespace A310501

/-- `2*A008706(n)-A315208(n)` -/
def P9074456364222287522.Spec : Prop :=
  ∀ n, P9074456364222287522.a n = A310501 n

end A310501

/-! ## A310501.P14213606120284744444

`xor(1, A017281(n)-A315208(n))`
-/

namespace A310501.P14213606120284744444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315208 n)

end

end A310501.P14213606120284744444

namespace A310501

/-- `xor(1, A017281(n)-A315208(n))` -/
def P14213606120284744444.Spec : Prop :=
  ∀ n, P14213606120284744444.a n = A310501 n

end A310501

/-! ## A310501.P4617205162347422887

`A008458(n)+A008574(n)-A315208(n)`
-/

namespace A310501.P4617205162347422887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315208 n)

end

end A310501.P4617205162347422887

namespace A310501

/-- `A008458(n)+A008574(n)-A315208(n)` -/
def P4617205162347422887.Spec : Prop :=
  ∀ n, P4617205162347422887.a n = A310501 n

end A310501

/-! ## A310501.P1058778860216167548

`A310456(n)+Δ[A011864(n)]`
-/

namespace A310501.P1058778860216167548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + (f1 (n + 1) - f1 n)

end

end A310501.P1058778860216167548

namespace A310501

/-- `A310456(n)+Δ[A011864(n)]` -/
def P1058778860216167548.Spec : Prop :=
  ∀ n, P1058778860216167548.a n = A310501 n

theorem P1058778860216167548.correct : P1058778860216167548.Spec := by
  intro n
  simp only [A310501, Nat.add_sub_cancel, A310501.P1058778860216167548.f1, A310501.P1058778860216167548.a, A310501.P8756319467982132797.a, A008574, A008574.P1300280032690682112.a, A011864, A011864.P3547417513882699266.a, A310456, A310456.P16640342773671596994.f1, A310456.P16640342773671596994.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, A310408, A310408.P15738370817569291537.a, A312927, A312927.P540762951115705510.f1, A312927.P540762951115705510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310501

/-! ## A310501.P8430149806276053972

`A314190(n)-A004525(A004396(n))`
-/

namespace A310501.P8430149806276053972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314190 n - A004525 (A004396 n).toNat

end

end A310501.P8430149806276053972

namespace A310501

/-- `A314190(n)-A004525(A004396(n))` -/
def P8430149806276053972.Spec : Prop :=
  ∀ n, P8430149806276053972.a n = A310501 n

theorem P8430149806276053972.correct : P8430149806276053972.Spec := by
  intro n
  simp only [A310501, Nat.add_sub_cancel, A310501.P8430149806276053972.a, A310501.P8756319467982132797.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A314190, A314190.P16264638501610305232.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310501

/-! ## A310501.P5410417223033112272

`A005843(A313045(n))-A008574(n)`
-/

namespace A310501.P5410417223033112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313045 n).toNat - A008574 n

end

end A310501.P5410417223033112272

namespace A310501

/-- `A005843(A313045(n))-A008574(n)` -/
def P5410417223033112272.Spec : Prop :=
  ∀ n, P5410417223033112272.a n = A310501 n

end A310501

/-! ## A310501.P12002469344656440071

`A004275(A313045(n))-A004275(2*n)`
-/

namespace A310501.P12002469344656440071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313045 n).toNat - A004275 (2 * n)

end

end A310501.P12002469344656440071

namespace A310501

/-- `A004275(A313045(n))-A004275(2*n)` -/
def P12002469344656440071.Spec : Prop :=
  ∀ n, P12002469344656440071.a n = A310501 n

end A310501

/-! ## A310501.P13554501490433562489

`A005843(A313045(n))+n-A008706(n)`
-/

namespace A310501.P13554501490433562489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313045 n).toNat + ((n : ℤ) - A008706 n)

end

end A310501.P13554501490433562489

namespace A310501

/-- `A005843(A313045(n))+n-A008706(n)` -/
def P13554501490433562489.Spec : Prop :=
  ∀ n, P13554501490433562489.a n = A310501 n

end A310501

/-! ## A310501.P18109344063201832860

`A017281(n)-A004442(A315208(n))`
-/

namespace A310501.P18109344063201832860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315208 n).toNat

end

end A310501.P18109344063201832860

namespace A310501

/-- `A017281(n)-A004442(A315208(n))` -/
def P18109344063201832860.Spec : Prop :=
  ∀ n, P18109344063201832860.a n = A310501 n

end A310501

/-! ## A310501.P18263579151391141115

`A005843(A008706(n))-A315208(n)`
-/

namespace A310501.P18263579151391141115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315208 n

end

end A310501.P18263579151391141115

namespace A310501

/-- `A005843(A008706(n))-A315208(n)` -/
def P18263579151391141115.Spec : Prop :=
  ∀ n, P18263579151391141115.a n = A310501 n

end A310501

/-! ## A310501.P12415269391062945209

`A312507(2*n)-4*n`
-/

namespace A310501.P12415269391062945209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 (2 * n) - (4 * n : ℤ)

end

end A310501.P12415269391062945209

namespace A310501

/-- `A312507(2*n)-4*n` -/
def P12415269391062945209.Spec : Prop :=
  ∀ n, P12415269391062945209.a n = A310501 n

end A310501

/-! ## A310501.P3932357823809862633

`2*A008574(2*n)-A315650(2*n)`
-/

namespace A310501.P3932357823809862633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315650 (2 * n)

end

end A310501.P3932357823809862633

namespace A310501

/-- `2*A008574(2*n)-A315650(2*n)` -/
def P3932357823809862633.Spec : Prop :=
  ∀ n, P3932357823809862633.a n = A310501 n

end A310501

/-!
# A310502: Coordination sequence Gal.5.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310502, the canonical program `A310502.P9099728291858349393` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310502 has offset 0).

The definition of A310502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310502.P9099728291858349393

`A008458(n)-2*A004396(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310502

/-- `A008458(n)-2*A004396(A004396(n))` -/
def P9099728291858349393.Spec : Prop :=
  ∀ n, P9099728291858349393.a n = A310502 n

theorem P9099728291858349393.correct : P9099728291858349393.Spec := by
  intro n
  simp only [A310502]

end A310502

/-! ## A310502.P591703772565935308

`A312484(n)+A008612(A016813(n))`
-/

namespace A310502.P591703772565935308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A008612 (A016813 n).toNat

end

end A310502.P591703772565935308

namespace A310502

/-- `A312484(n)+A008612(A016813(n))` -/
def P591703772565935308.Spec : Prop :=
  ∀ n, P591703772565935308.a n = A310502 n

end A310502

/-! ## A310502.P3032243556225200124

`abs(A008592(n)-A315207(n))`
-/

namespace A310502.P3032243556225200124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315207 n|

end

end A310502.P3032243556225200124

namespace A310502

/-- `abs(A008592(n)-A315207(n))` -/
def P3032243556225200124.Spec : Prop :=
  ∀ n, P3032243556225200124.a n = A310502 n

end A310502

/-! ## A310502.P675908871849627154

`2*A008706(n)-A315207(n)`
-/

namespace A310502.P675908871849627154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315207 n

end

end A310502.P675908871849627154

namespace A310502

/-- `2*A008706(n)-A315207(n)` -/
def P675908871849627154.Spec : Prop :=
  ∀ n, P675908871849627154.a n = A310502 n

end A310502

/-! ## A310502.P10013287060840933376

`xor(1, A017281(n)-A315207(n))`
-/

namespace A310502.P10013287060840933376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315207 n)

end

end A310502.P10013287060840933376

namespace A310502

/-- `xor(1, A017281(n)-A315207(n))` -/
def P10013287060840933376.Spec : Prop :=
  ∀ n, P10013287060840933376.a n = A310502 n

end A310502

/-! ## A310502.P7853843392458727071

`A008458(n)+A008574(n)-A315207(n)`
-/

namespace A310502.P7853843392458727071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315207 n)

end

end A310502.P7853843392458727071

namespace A310502

/-- `A008458(n)+A008574(n)-A315207(n)` -/
def P7853843392458727071.Spec : Prop :=
  ∀ n, P7853843392458727071.a n = A310502 n

end A310502

/-! ## A310502.P9971862188244473947

`2*A314218(n)-A008458(n)`
-/

namespace A310502.P9971862188244473947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314218 n - A008458 n

end

end A310502.P9971862188244473947

namespace A310502

/-- `2*A314218(n)-A008458(n)` -/
def P9971862188244473947.Spec : Prop :=
  ∀ n, P9971862188244473947.a n = A310502 n

end A310502

/-! ## A310502.P10214099838774845483

`A314218(n)-A004396(A004396(n))`
-/

namespace A310502.P10214099838774845483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314218 n - A004396 (A004396 n).toNat

end

end A310502.P10214099838774845483

namespace A310502

/-- `A314218(n)-A004396(A004396(n))` -/
def P10214099838774845483.Spec : Prop :=
  ∀ n, P10214099838774845483.a n = A310502 n

end A310502

/-! ## A310502.P16712272400261400679

`A008458(n)-A005843(A008458(n)-A314218(n))`
-/

namespace A310502.P16712272400261400679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314218 n).toNat

end

end A310502.P16712272400261400679

namespace A310502

/-- `A008458(n)-A005843(A008458(n)-A314218(n))` -/
def P16712272400261400679.Spec : Prop :=
  ∀ n, P16712272400261400679.a n = A310502 n

end A310502

/-! ## A310502.P16244327670427890684

`2*A219529(n)-A315653(n)`
-/

namespace A310502.P16244327670427890684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A315653 n

end

end A310502.P16244327670427890684

namespace A310502

/-- `2*A219529(n)-A315653(n)` -/
def P16244327670427890684.Spec : Prop :=
  ∀ n, P16244327670427890684.a n = A310502 n

end A310502

/-! ## A310502.P11224189895820513778

`A017281(n)-A004442(A315207(n))`
-/

namespace A310502.P11224189895820513778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315207 n).toNat

end

end A310502.P11224189895820513778

namespace A310502

/-- `A017281(n)-A004442(A315207(n))` -/
def P11224189895820513778.Spec : Prop :=
  ∀ n, P11224189895820513778.a n = A310502 n

end A310502

/-! ## A310502.P15529158860598360684

`A005843(A008706(n))-A315207(n)`
-/

namespace A310502.P15529158860598360684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315207 n

end

end A310502.P15529158860598360684

namespace A310502

/-- `A005843(A008706(n))-A315207(n)` -/
def P15529158860598360684.Spec : Prop :=
  ∀ n, P15529158860598360684.a n = A310502 n

end A310502

/-! ## A310502.P8531596708725389781

`A005843(A314218(n))-A008458(n)`
-/

namespace A310502.P8531596708725389781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314218 n).toNat - A008458 n

end

end A310502.P8531596708725389781

namespace A310502

/-- `A005843(A314218(n))-A008458(n)` -/
def P8531596708725389781.Spec : Prop :=
  ∀ n, P8531596708725389781.a n = A310502 n

end A310502

/-! ## A310502.P4360162670891000137

`A315343(2*n)-6*n`
-/

namespace A310502.P4360162670891000137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 (2 * n) - (6 * n : ℤ)

end

end A310502.P4360162670891000137

namespace A310502

/-- `A315343(2*n)-6*n` -/
def P4360162670891000137.Spec : Prop :=
  ∀ n, P4360162670891000137.a n = A310502 n

end A310502

/-!
# A310503: Coordination sequence Gal.4.73.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310503, the canonical program `A310503.P5766519764822027206` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310503 has offset 0).

The definition of A310503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310503.P5766519764822027206

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=16, a(4)=20, a(5)=26, a(6)=32, a(7)=36, a(8)=40`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310503

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P5766519764822027206.Spec : Prop :=
  ∀ n, P5766519764822027206.a n = A310503 n

theorem P5766519764822027206.correct : P5766519764822027206.Spec := by
  intro n
  simp only [A310503]

end A310503

/-! ## A310503.P16501707881054292433

`(A310529(n)+A008458(n))/2-A004525(A047588(n+1))`
-/

namespace A310503.P16501707881054292433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310529 n + A008458 n : ℚ) / 2 - (A004525 (A047588 (n + 1)).toNat : ℚ)

end

end A310503.P16501707881054292433

namespace A310503

/-- `(A310529(n)+A008458(n))/2-A004525(A047588(n+1))` -/
def P16501707881054292433.Spec : Prop :=
  ∀ n, P16501707881054292433.a n = (A310503 n : ℚ)

end A310503

/-! ## A310503.P2948490161221474612

`A060464(2*(n+1))+A060464(A004277(n))`
-/

namespace A310503.P2948490161221474612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * (n + 1)) + A060464 (A004277 n).toNat

end

end A310503.P2948490161221474612

namespace A310503

/-- `A060464(2*(n+1))+A060464(A004277(n))` -/
def P2948490161221474612.Spec : Prop :=
  ∀ n, P2948490161221474612.a n = A310503 n

end A310503

/-! ## A310503.P13068034087738434991

`A060464(2*(n+1))+A060464(A004275(n+1))`
-/

namespace A310503.P13068034087738434991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * (n + 1)) + A060464 (A004275 (n + 1)).toNat

end

end A310503.P13068034087738434991

namespace A310503

/-- `A060464(2*(n+1))+A060464(A004275(n+1))` -/
def P13068034087738434991.Spec : Prop :=
  ∀ n, P13068034087738434991.a n = A310503 n

end A310503

/-! ## A310503.P7724904892444515782

`A060464(2*(n+1))+A060464(A028310(2*n))`
-/

namespace A310503.P7724904892444515782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * (n + 1)) + A060464 (A028310 (2 * n)).toNat

end

end A310503.P7724904892444515782

namespace A310503

/-- `A060464(2*(n+1))+A060464(A028310(2*n))` -/
def P7724904892444515782.Spec : Prop :=
  ∀ n, P7724904892444515782.a n = A310503 n

end A310503

/-! ## A310503.P15234047378272591407

`A191275(n+1)+A004275(2*n+1)-A004525(A047588(n+1))`
-/

namespace A310503.P15234047378272591407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A004275 (2 * n + 1) - A004525 (A047588 (n + 1)).toNat

end

end A310503.P15234047378272591407

namespace A310503

/-- `A191275(n+1)+A004275(2*n+1)-A004525(A047588(n+1))` -/
def P15234047378272591407.Spec : Prop :=
  ∀ n, P15234047378272591407.a n = A310503 n

end A310503

/-! ## A310503.P12323795774350741720

`A191275(n+1)+A028310(A191275(2*n+1))`
-/

namespace A310503.P12323795774350741720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A028310 (A191275 (2 * n + 1)).toNat

end

end A310503.P12323795774350741720

namespace A310503

/-- `A191275(n+1)+A028310(A191275(2*n+1))` -/
def P12323795774350741720.Spec : Prop :=
  ∀ n, P12323795774350741720.a n = A310503 n

end A310503

/-! ## A310503.P16543763372317334989

`2*A313051(n)-A008574(n)`
-/

namespace A310503.P16543763372317334989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313051 n - A008574 n

end

end A310503.P16543763372317334989

namespace A310503

/-- `2*A313051(n)-A008574(n)` -/
def P16543763372317334989.Spec : Prop :=
  ∀ n, P16543763372317334989.a n = A310503 n

end A310503

/-! ## A310503.P12138507533418512626

`A004275(A313051(n)-A004273(n))`
-/

namespace A310503.P12138507533418512626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313051 n - A004273 n).toNat

end

end A310503.P12138507533418512626

namespace A310503

/-- `A004275(A313051(n)-A004273(n))` -/
def P12138507533418512626.Spec : Prop :=
  ∀ n, P12138507533418512626.a n = A310503 n

end A310503

/-! ## A310503.P18350449009516040345

`A004273(A313051(n)-n)-A004273(n)`
-/

namespace A310503.P18350449009516040345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313051 n - (n : ℤ)).toNat - A004273 n

end

end A310503.P18350449009516040345

namespace A310503

/-- `A004273(A313051(n)-n)-A004273(n)` -/
def P18350449009516040345.Spec : Prop :=
  ∀ n, P18350449009516040345.a n = A310503 n

end A310503

/-! ## A310503.P14223735869609279555

`A008574(n)+A005843(A313051(n)-A008574(n))`
-/

namespace A310503.P14223735869609279555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313051 n - A008574 n).toNat

end

end A310503.P14223735869609279555

namespace A310503

/-- `A008574(n)+A005843(A313051(n)-A008574(n))` -/
def P14223735869609279555.Spec : Prop :=
  ∀ n, P14223735869609279555.a n = A310503 n

end A310503

/-! ## A310503.P5378036262567776531

`A310372(n)+Δ[2*A011860(n)]`
-/

namespace A310503.P5378036262567776531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + (f1 (n + 1) - f1 n)

end

end A310503.P5378036262567776531

namespace A310503

/-- `A310372(n)+Δ[2*A011860(n)]` -/
def P5378036262567776531.Spec : Prop :=
  ∀ n, P5378036262567776531.a n = A310503 n

end A310503

/-! ## A310503.P2363511274760536002

`A310441(n)+Δ[A011860(n)]`
-/

namespace A310503.P2363511274760536002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + (f1 (n + 1) - f1 n)

end

end A310503.P2363511274760536002

namespace A310503

/-- `A310441(n)+Δ[A011860(n)]` -/
def P2363511274760536002.Spec : Prop :=
  ∀ n, P2363511274760536002.a n = A310503 n

end A310503

/-! ## A310503.P5911267183692443631

`abs(A008592(n)-A315204(n))`
-/

namespace A310503.P5911267183692443631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315204 n|

end

end A310503.P5911267183692443631

namespace A310503

/-- `abs(A008592(n)-A315204(n))` -/
def P5911267183692443631.Spec : Prop :=
  ∀ n, P5911267183692443631.a n = A310503 n

end A310503

/-! ## A310503.P3074479250632474015

`A008458(n)+A008574(n)-A315204(n)`
-/

namespace A310503.P3074479250632474015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315204 n)

end

end A310503.P3074479250632474015

namespace A310503

/-- `A008458(n)+A008574(n)-A315204(n)` -/
def P3074479250632474015.Spec : Prop :=
  ∀ n, P3074479250632474015.a n = A310503 n

end A310503

/-! ## A310503.P863436068428566225

`A314040(n)-A175629(n)`
-/

namespace A310503.P863436068428566225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n - A175629 n

end

end A310503.P863436068428566225

namespace A310503

/-- `A314040(n)-A175629(n)` -/
def P863436068428566225.Spec : Prop :=
  ∀ n, P863436068428566225.a n = A310503 n

end A310503

/-! ## A310503.P9248161154704893025

`A151988(A312289(n))`
-/

namespace A310503.P9248161154704893025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A312289 n).toNat

end

end A310503.P9248161154704893025

namespace A310503

/-- `A151988(A312289(n))` -/
def P9248161154704893025.Spec : Prop :=
  ∀ n, P9248161154704893025.a n = A310503 n

end A310503

/-! ## A310503.P9392643871812833611

`A315309(n)-2*A238469(n)`
-/

namespace A310503.P9392643871812833611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n - 2 * A238469 n

end

end A310503.P9392643871812833611

namespace A310503

/-- `A315309(n)-2*A238469(n)` -/
def P9392643871812833611.Spec : Prop :=
  ∀ n, P9392643871812833611.a n = A310503 n

end A310503

/-! ## A310503.P17426640749887250110

`A313836(n)-A238469(n)`
-/

namespace A310503.P17426640749887250110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A238469 n

end

end A310503.P17426640749887250110

namespace A310503

/-- `A313836(n)-A238469(n)` -/
def P17426640749887250110.Spec : Prop :=
  ∀ n, P17426640749887250110.a n = A310503 n

end A310503

/-! ## A310503.P5544139636575096740

`A313836(n)-A238470(2*n)`
-/

namespace A310503.P5544139636575096740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A238470 (2 * n)

end

end A310503.P5544139636575096740

namespace A310503

/-- `A313836(n)-A238470(2*n)` -/
def P5544139636575096740.Spec : Prop :=
  ∀ n, P5544139636575096740.a n = A310503 n

end A310503

/-!
# A310504: Coordination sequence Gal.6.329.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310504, the canonical program `A310504.P464538820079187203` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310504 has offset 0).

The definition of A310504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310504.P464538820079187203

`2*A313053(n)-A008574(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A310504

/-- `2*A313053(n)-A008574(n)` -/
def P464538820079187203.Spec : Prop :=
  ∀ n, P464538820079187203.a n = A310504 n

theorem P464538820079187203.correct : P464538820079187203.Spec := by
  intro n
  simp only [A310504]

end A310504

/-! ## A310504.P1315630598835843073

`A004275(A313053(n)-A004273(n))`
-/

namespace A310504.P1315630598835843073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313053 n - A004273 n).toNat

end

end A310504.P1315630598835843073

namespace A310504

/-- `A004275(A313053(n)-A004273(n))` -/
def P1315630598835843073.Spec : Prop :=
  ∀ n, P1315630598835843073.a n = A310504 n

end A310504

/-! ## A310504.P2926977579416409373

`A004273(A313053(n)-n)-A004273(n)`
-/

namespace A310504.P2926977579416409373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313053 n - (n : ℤ)).toNat - A004273 n

end

end A310504.P2926977579416409373

namespace A310504

/-- `A004273(A313053(n)-n)-A004273(n)` -/
def P2926977579416409373.Spec : Prop :=
  ∀ n, P2926977579416409373.a n = A310504 n

end A310504

/-! ## A310504.P5746834859041901676

`A008574(n)+A005843(A313053(n)-A008574(n))`
-/

namespace A310504.P5746834859041901676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313053 n - A008574 n).toNat

end

end A310504.P5746834859041901676

namespace A310504

/-- `A008574(n)+A005843(A313053(n)-A008574(n))` -/
def P5746834859041901676.Spec : Prop :=
  ∀ n, P5746834859041901676.a n = A310504 n

end A310504

/-! ## A310504.P7608629369788552312

`abs(A008592(n)-A315203(n))`
-/

namespace A310504.P7608629369788552312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315203 n|

end

end A310504.P7608629369788552312

namespace A310504

/-- `abs(A008592(n)-A315203(n))` -/
def P7608629369788552312.Spec : Prop :=
  ∀ n, P7608629369788552312.a n = A310504 n

end A310504

/-! ## A310504.P5531048628044246530

`2*A008706(n)-A315203(n)`
-/

namespace A310504.P5531048628044246530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315203 n

end

end A310504.P5531048628044246530

namespace A310504

/-- `2*A008706(n)-A315203(n)` -/
def P5531048628044246530.Spec : Prop :=
  ∀ n, P5531048628044246530.a n = A310504 n

end A310504

/-! ## A310504.P13867606936714323591

`A008458(n)+A008574(n)-A315203(n)`
-/

namespace A310504.P13867606936714323591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315203 n)

end

end A310504.P13867606936714323591

namespace A310504

/-- `A008458(n)+A008574(n)-A315203(n)` -/
def P13867606936714323591.Spec : Prop :=
  ∀ n, P13867606936714323591.a n = A310504 n

end A310504

/-! ## A310504.P7912168144503977768

`A310446(n)+A002266(n+2)`
-/

namespace A310504.P7912168144503977768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n + A002266 (n + 2)

end

end A310504.P7912168144503977768

namespace A310504

/-- `A310446(n)+A002266(n+2)` -/
def P7912168144503977768.Spec : Prop :=
  ∀ n, P7912168144503977768.a n = A310504 n

end A310504

/-! ## A310504.P7628965479621359812

`2*A314220(n)-A008458(n)`
-/

namespace A310504.P7628965479621359812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314220 n - A008458 n

end

end A310504.P7628965479621359812

namespace A310504

/-- `2*A314220(n)-A008458(n)` -/
def P7628965479621359812.Spec : Prop :=
  ∀ n, P7628965479621359812.a n = A310504 n

end A310504

/-! ## A310504.P6170940091106128060

`A008458(n)-A005843(A008458(n)-A314220(n))`
-/

namespace A310504.P6170940091106128060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314220 n).toNat

end

end A310504.P6170940091106128060

namespace A310504

/-- `A008458(n)-A005843(A008458(n)-A314220(n))` -/
def P6170940091106128060.Spec : Prop :=
  ∀ n, P6170940091106128060.a n = A310504 n

end A310504

/-! ## A310504.P5132342906371241527

`A005843(A313053(n))-A008574(n)`
-/

namespace A310504.P5132342906371241527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313053 n).toNat - A008574 n

end

end A310504.P5132342906371241527

namespace A310504

/-- `A005843(A313053(n))-A008574(n)` -/
def P5132342906371241527.Spec : Prop :=
  ∀ n, P5132342906371241527.a n = A310504 n

end A310504

/-! ## A310504.P14344757058055686961

`A004275(A313053(n))-A004275(2*n)`
-/

namespace A310504.P14344757058055686961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313053 n).toNat - A004275 (2 * n)

end

end A310504.P14344757058055686961

namespace A310504

/-- `A004275(A313053(n))-A004275(2*n)` -/
def P14344757058055686961.Spec : Prop :=
  ∀ n, P14344757058055686961.a n = A310504 n

end A310504

/-! ## A310504.P4752849395283808895

`A005843(A008706(n))-A315203(n)`
-/

namespace A310504.P4752849395283808895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315203 n

end

end A310504.P4752849395283808895

namespace A310504

/-- `A005843(A008706(n))-A315203(n)` -/
def P4752849395283808895.Spec : Prop :=
  ∀ n, P4752849395283808895.a n = A310504 n

end A310504

/-! ## A310504.P4796723317714839387

`A004275(A004525(A313782(n)+2))`
-/

namespace A310504.P4796723317714839387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004525 (A313782 n + 2).toNat).toNat

end

end A310504.P4796723317714839387

namespace A310504

/-- `A004275(A004525(A313782(n)+2))` -/
def P4796723317714839387.Spec : Prop :=
  ∀ n, P4796723317714839387.a n = A310504 n

end A310504

/-! ## A310504.P17834962469894788913

`A005843(A314220(n))-A008458(n)`
-/

namespace A310504.P17834962469894788913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314220 n).toNat - A008458 n

end

end A310504.P17834962469894788913

namespace A310504

/-- `A005843(A314220(n))-A008458(n)` -/
def P17834962469894788913.Spec : Prop :=
  ∀ n, P17834962469894788913.a n = A310504 n

end A310504

/-!
# A310505: Coordination sequence Gal.6.330.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310505, the canonical program `A310505.P8653001486545686443` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310505 has offset 0).

The definition of A310505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310505.P8653001486545686443

`abs(A008592(n)-A315202(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310505

/-- `abs(A008592(n)-A315202(n))` -/
def P8653001486545686443.Spec : Prop :=
  ∀ n, P8653001486545686443.a n = A310505 n

theorem P8653001486545686443.correct : P8653001486545686443.Spec := by
  intro n
  simp only [A310505]

end A310505

/-! ## A310505.P13882380686149534968

`2*A008706(n)-A315202(n)`
-/

namespace A310505.P13882380686149534968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315202 n

end

end A310505.P13882380686149534968

namespace A310505

/-- `2*A008706(n)-A315202(n)` -/
def P13882380686149534968.Spec : Prop :=
  ∀ n, P13882380686149534968.a n = A310505 n

end A310505

/-! ## A310505.P17163635027915083268

`2*A310442(n)-A310371(n)`
-/

namespace A310505.P17163635027915083268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310442 n - A310371 n

end

end A310505.P17163635027915083268

namespace A310505

/-- `2*A310442(n)-A310371(n)` -/
def P17163635027915083268.Spec : Prop :=
  ∀ n, P17163635027915083268.a n = A310505 n

end A310505

/-! ## A310505.P18046645777026889791

`A008458(n)+A008574(n)-A315202(n)`
-/

namespace A310505.P18046645777026889791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315202 n)

end

end A310505.P18046645777026889791

namespace A310505

/-- `A008458(n)+A008574(n)-A315202(n)` -/
def P18046645777026889791.Spec : Prop :=
  ∀ n, P18046645777026889791.a n = A310505 n

end A310505

/-! ## A310505.P9547764172666046220

`A310371(n)+A005843(A310442(n)-A310371(n))`
-/

namespace A310505.P9547764172666046220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 n + A005843 (A310442 n - A310371 n).toNat

end

end A310505.P9547764172666046220

namespace A310505

/-- `A310371(n)+A005843(A310442(n)-A310371(n))` -/
def P9547764172666046220.Spec : Prop :=
  ∀ n, P9547764172666046220.a n = A310505 n

end A310505

/-! ## A310505.P167373109529640233

`A065502(A311932(n))-A004277(n)`
-/

namespace A310505.P167373109529640233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A311932 n).toNat - A004277 n

end

end A310505.P167373109529640233

namespace A310505

/-- `A065502(A311932(n))-A004277(n)` -/
def P167373109529640233.Spec : Prop :=
  ∀ n, P167373109529640233.a n = A310505 n

end A310505

/-! ## A310505.P974740972097190457

`A017281(n)-A004442(A315202(n))`
-/

namespace A310505.P974740972097190457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315202 n).toNat

end

end A310505.P974740972097190457

namespace A310505

/-- `A017281(n)-A004442(A315202(n))` -/
def P974740972097190457.Spec : Prop :=
  ∀ n, P974740972097190457.a n = A310505 n

end A310505

/-! ## A310505.P17096903960342211063

`A005843(A310442(n))-A310371(n)`
-/

namespace A310505.P17096903960342211063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310442 n).toNat - A310371 n

end

end A310505.P17096903960342211063

namespace A310505

/-- `A005843(A310442(n))-A310371(n)` -/
def P17096903960342211063.Spec : Prop :=
  ∀ n, P17096903960342211063.a n = A310505 n

end A310505

/-! ## A310505.P16146416955565728630

`2*A314221(n)-A008458(n)`
-/

namespace A310505.P16146416955565728630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314221 n - A008458 n

end

end A310505.P16146416955565728630

namespace A310505

/-- `2*A314221(n)-A008458(n)` -/
def P16146416955565728630.Spec : Prop :=
  ∀ n, P16146416955565728630.a n = A310505 n

end A310505

/-! ## A310505.P18380225444824466824

`A008458(n)-A005843(A008458(n)-A314221(n))`
-/

namespace A310505.P18380225444824466824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314221 n).toNat

end

end A310505.P18380225444824466824

namespace A310505

/-- `A008458(n)-A005843(A008458(n)-A314221(n))` -/
def P18380225444824466824.Spec : Prop :=
  ∀ n, P18380225444824466824.a n = A310505 n

end A310505

/-! ## A310505.P6916126695929911631

`A005843(A008706(n))-A315202(n)`
-/

namespace A310505.P6916126695929911631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315202 n

end

end A310505.P6916126695929911631

namespace A310505

/-- `A005843(A008706(n))-A315202(n)` -/
def P6916126695929911631.Spec : Prop :=
  ∀ n, P6916126695929911631.a n = A310505 n

end A310505

/-! ## A310505.P16244007519808069819

`A005843(A314221(n))-A008458(n)`
-/

namespace A310505.P16244007519808069819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314221 n).toNat - A008458 n

end

end A310505.P16244007519808069819

namespace A310505

/-- `A005843(A314221(n))-A008458(n)` -/
def P16244007519808069819.Spec : Prop :=
  ∀ n, P16244007519808069819.a n = A310505 n

end A310505

/-! ## A310505.P6044830388065446724

`A271324(A022144(n))-A315202(n)`
-/

namespace A310505.P6044830388065446724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A315202 n

end

end A310505.P6044830388065446724

namespace A310505

/-- `A271324(A022144(n))-A315202(n)` -/
def P6044830388065446724.Spec : Prop :=
  ∀ n, P6044830388065446724.a n = A310505 n

end A310505

/-!
# A310506: Coordination sequence Gal.5.258.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310506, there is no canonical definition to state claims against.
-/

/-! ## A310506.P6678725079195042642

`A344959(n+1)-A000120(A280114(2*(n+1)))`
-/

namespace A310506.P6678725079195042642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344959 (n + 1) - A000120 (A280114 (2 * (n + 1))).toNat

end

end A310506.P6678725079195042642

/-!
# A310508: Coordination sequence Gal.4.123.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310508, there is no canonical definition to state claims against.
-/

/-! ## A310508.P10728999281509289268

`A301710(n)-A001221(A123412(n+1))`
-/

namespace A310508.P10728999281509289268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A001221 (A123412 (n + 1)).toNat

end

end A310508.P10728999281509289268

/-! ## A310508.P16547584630941432329

`A310509(n)-A044941(A020515(n))`
-/

namespace A310508.P16547584630941432329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A044941 (A020515 n).toNat

end

end A310508.P16547584630941432329

/-! ## A310508.P10304128579456105600

`A310509(n)-A025469(A061396(n))`
-/

namespace A310508.P10304128579456105600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A025469 (A061396 n).toNat

end

end A310508.P10304128579456105600

/-! ## A310508.P17425531535167664684

`A310538(n)-A001221(A177249(n))`
-/

namespace A310508.P17425531535167664684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - A001221 (A177249 n).toNat

end

end A310508.P17425531535167664684

/-! ## A310508.P17923695446823747613

`A310509(n)-A023969(A172075(n))`
-/

namespace A310508.P17923695446823747613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A023969 (A172075 n).toNat

end

end A310508.P17923695446823747613

/-!
# A310509: Coordination sequence Gal.5.142.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310509, the canonical program `A310509.P5623356039193188941` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310509 has offset 0).

The definition of A310509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310509.P5623356039193188941

`A313201(n)+A002264(A004773(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310509

/-- `A313201(n)+A002264(A004773(n+1))` -/
def P5623356039193188941.Spec : Prop :=
  ∀ n, P5623356039193188941.a n = A310509 n

theorem P5623356039193188941.correct : P5623356039193188941.Spec := by
  intro n
  simp only [A310509]

end A310509

/-! ## A310509.P7750736413975177905

`A313241(n)+A004396(A002264(n+1))`
-/

namespace A310509.P7750736413975177905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A004396 (A002264 (n + 1)).toNat

end

end A310509.P7750736413975177905

namespace A310509

/-- `A313241(n)+A004396(A002264(n+1))` -/
def P7750736413975177905.Spec : Prop :=
  ∀ n, P7750736413975177905.a n = A310509 n

end A310509

/-! ## A310509.P2099946523450525791

`A313241(n)+A004396(n-A004396(n))`
-/

namespace A310509.P2099946523450525791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310509.P2099946523450525791

namespace A310509

/-- `A313241(n)+A004396(n-A004396(n))` -/
def P2099946523450525791.Spec : Prop :=
  ∀ n, P2099946523450525791.a n = A310509 n

end A310509

/-! ## A310509.P4886598186439215659

`A310454(n)+Δ[A011862(n)]`
-/

namespace A310509.P4886598186439215659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + (f1 (n + 1) - f1 n)

end

end A310509.P4886598186439215659

namespace A310509

/-- `A310454(n)+Δ[A011862(n)]` -/
def P4886598186439215659.Spec : Prop :=
  ∀ n, P4886598186439215659.a n = A310509 n

end A310509

/-! ## A310509.P6691193525400615052

`A004396(n)+A310454(n)-A004396(A004396(n))`
-/

namespace A310509.P6691193525400615052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310454 n - A004396 (A004396 n).toNat)

end

end A310509.P6691193525400615052

namespace A310509

/-- `A004396(n)+A310454(n)-A004396(A004396(n))` -/
def P6691193525400615052.Spec : Prop :=
  ∀ n, P6691193525400615052.a n = A310509 n

end A310509

/-! ## A310509.P6372127072216169441

`A310538(n)-Δ[A011862(n)]`
-/

namespace A310509.P6372127072216169441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - (f1 (n + 1) - f1 n)

end

end A310509.P6372127072216169441

namespace A310509

/-- `A310538(n)-Δ[A011862(n)]` -/
def P6372127072216169441.Spec : Prop :=
  ∀ n, P6372127072216169441.a n = A310509 n

theorem P6372127072216169441.correct : P6372127072216169441.Spec := by
  intro n
  simp only [A310509, Nat.add_sub_cancel, A310509.P6372127072216169441.f1, A310509.P6372127072216169441.a, A310509.P5623356039193188941.a, A002264, A002264.P5647656940077635922.a, A004773, A004773.P4600344600828530214.a, A011862, A011862.P9485299441699197278.a, A310538, A310538.P10108678506340412.f1, A310538.P10108678506340412.a, A313201, A313201.P17274935370983792056.f1, A313201.P17274935370983792056.a, A313026, A313026.P11714630493594694704.f1, A313026.P11714630493594694704.a, A312893, A312893.P922128372979076951.a, A004396, A004396.P17032557045289780609.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310509

/-! ## A310509.P8797286431277151234

`A004396(A004396(n))+A310538(n)-A004396(n)`
-/

namespace A310509.P8797286431277151234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A310538 n - A004396 n)

end

end A310509.P8797286431277151234

namespace A310509

/-- `A004396(A004396(n))+A310538(n)-A004396(n)` -/
def P8797286431277151234.Spec : Prop :=
  ∀ n, P8797286431277151234.a n = A310509 n

end A310509

/-! ## A310509.P14053467084245003596

`abs(A008592(n)-A315198(n))`
-/

namespace A310509.P14053467084245003596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315198 n|

end

end A310509.P14053467084245003596

namespace A310509

/-- `abs(A008592(n)-A315198(n))` -/
def P14053467084245003596.Spec : Prop :=
  ∀ n, P14053467084245003596.a n = A310509 n

end A310509

/-! ## A310509.P12269154097497749015

`2*A008706(n)-A315198(n)`
-/

namespace A310509.P12269154097497749015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315198 n

end

end A310509.P12269154097497749015

namespace A310509

/-- `2*A008706(n)-A315198(n)` -/
def P12269154097497749015.Spec : Prop :=
  ∀ n, P12269154097497749015.a n = A310509 n

end A310509

/-! ## A310509.P5193813565283681359

`A008458(n)+A008574(n)-A315198(n)`
-/

namespace A310509.P5193813565283681359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315198 n)

end

end A310509.P5193813565283681359

namespace A310509

/-- `A008458(n)+A008574(n)-A315198(n)` -/
def P5193813565283681359.Spec : Prop :=
  ∀ n, P5193813565283681359.a n = A310509 n

end A310509

/-! ## A310509.P2141867172255823546

`∑{d}[A008592(n)-A315198(n), A000010(#)]`
-/

namespace A310509.P2141867172255823546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310509.P2141867172255823546

namespace A310509

/-- `∑{d}[A008592(n)-A315198(n), A000010(#)]` -/
def P2141867172255823546.Spec : Prop :=
  ∀ n, P2141867172255823546.a n = A310509 n

end A310509

/-! ## A310509.P3652761738977437055

`A314231(n)-A004396(A004396(n))`
-/

namespace A310509.P3652761738977437055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A004396 (A004396 n).toNat

end

end A310509.P3652761738977437055

namespace A310509

/-- `A314231(n)-A004396(A004396(n))` -/
def P3652761738977437055.Spec : Prop :=
  ∀ n, P3652761738977437055.a n = A310509 n

end A310509

/-! ## A310509.P5507862698164316391

`A005843(A008706(n))-A315198(n)`
-/

namespace A310509.P5507862698164316391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315198 n

end

end A310509.P5507862698164316391

namespace A310509

/-- `A005843(A008706(n))-A315198(n)` -/
def P5507862698164316391.Spec : Prop :=
  ∀ n, P5507862698164316391.a n = A310509 n

end A310509

/-! ## A310509.P5271309408103656628

`A312683(2*n)/A020639(A312683(n))`
-/

namespace A310509.P5271309408103656628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312683 (2 * n) : ℚ) / (A020639 (A312683 n).toNat : ℚ)

end

end A310509.P5271309408103656628

namespace A310509

/-- `A312683(2*n)/A020639(A312683(n))` -/
def P5271309408103656628.Spec : Prop :=
  ∀ n, P5271309408103656628.a n = (A310509 n : ℚ)

end A310509

/-! ## A310509.P5105268813699414104

`A313927(2*n)+n-7*n`
-/

namespace A310509.P5105268813699414104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313927 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A310509.P5105268813699414104

namespace A310509

/-- `A313927(2*n)+n-7*n` -/
def P5105268813699414104.Spec : Prop :=
  ∀ n, P5105268813699414104.a n = A310509 n

end A310509

/-! ## A310509.P18428893974917776522

`A004525(A312683(2*n))`
-/

namespace A310509.P18428893974917776522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312683 (2 * n)).toNat

end

end A310509.P18428893974917776522

namespace A310509

/-- `A004525(A312683(2*n))` -/
def P18428893974917776522.Spec : Prop :=
  ∀ n, P18428893974917776522.a n = A310509 n

end A310509

/-! ## A310509.P16383630411932754101

`A004526(A312683(2*n)+1)`
-/

namespace A310509.P16383630411932754101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312683 (2 * n) + 1).toNat

end

end A310509.P16383630411932754101

namespace A310509

/-- `A004526(A312683(2*n)+1)` -/
def P16383630411932754101.Spec : Prop :=
  ∀ n, P16383630411932754101.a n = A310509 n

end A310509

/-! ## A310509.P11323778055823948551

`A004396(A313293(2*n))-A005843(n)`
-/

namespace A310509.P11323778055823948551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313293 (2 * n)).toNat - A005843 n

end

end A310509.P11323778055823948551

namespace A310509

/-- `A004396(A313293(2*n))-A005843(n)` -/
def P11323778055823948551.Spec : Prop :=
  ∀ n, P11323778055823948551.a n = A310509 n

end A310509

/-!
# A310511: Coordination sequence Gal.6.354.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310511, the canonical program `A310511.P9412189317304849787` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310511 has offset 0).

The definition of A310511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310511.P9412189317304849787

`A002264(A004525(n+2))+A313099(n)+A002264(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310511

/-- `A002264(A004525(n+2))+A313099(n)+A002264(n+1)` -/
def P9412189317304849787.Spec : Prop :=
  ∀ n, P9412189317304849787.a n = A310511 n

theorem P9412189317304849787.correct : P9412189317304849787.Spec := by
  intro n
  simp only [A310511]

end A310511

/-! ## A310511.P16660066338212821449

`A313110(n)+∑[A021913(n)]`
-/

namespace A310511.P16660066338212821449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310511.P16660066338212821449

namespace A310511

/-- `A313110(n)+∑[A021913(n)]` -/
def P16660066338212821449.Spec : Prop :=
  ∀ n, P16660066338212821449.a n = A310511 n

end A310511

/-! ## A310511.P13165447495232423491

`A313110(n)+Δ[A011848(n)]`
-/

namespace A310511.P13165447495232423491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + (f1 (n + 1) - f1 n)

end

end A310511.P13165447495232423491

namespace A310511

/-- `A313110(n)+Δ[A011848(n)]` -/
def P13165447495232423491.Spec : Prop :=
  ∀ n, P13165447495232423491.a n = A310511 n

end A310511

/-! ## A310511.P17436121435862633207

`A313110(n)+A004524(n+1)`
-/

namespace A310511.P17436121435862633207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A004524 (n + 1)

end

end A310511.P17436121435862633207

namespace A310511

/-- `A313110(n)+A004524(n+1)` -/
def P17436121435862633207.Spec : Prop :=
  ∀ n, P17436121435862633207.a n = A310511 n

end A310511

/-! ## A310511.P14756378479658336873

`A313110(n)+n-A004525(n)`
-/

namespace A310511.P14756378479658336873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ((n : ℤ) - A004525 n)

end

end A310511.P14756378479658336873

namespace A310511

/-- `A313110(n)+n-A004525(n)` -/
def P14756378479658336873.Spec : Prop :=
  ∀ n, P14756378479658336873.a n = A310511 n

end A310511

/-! ## A310511.P4954555739435971228

`abs(A008592(n)-A315196(n))`
-/

namespace A310511.P4954555739435971228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315196 n|

end

end A310511.P4954555739435971228

namespace A310511

/-- `abs(A008592(n)-A315196(n))` -/
def P4954555739435971228.Spec : Prop :=
  ∀ n, P4954555739435971228.a n = A310511 n

end A310511

/-! ## A310511.P17302001744149299175

`A313246(n)+A004396(n-A004525(n))`
-/

namespace A310511.P17302001744149299175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A310511.P17302001744149299175

namespace A310511

/-- `A313246(n)+A004396(n-A004525(n))` -/
def P17302001744149299175.Spec : Prop :=
  ∀ n, P17302001744149299175.a n = A310511 n

end A310511

/-! ## A310511.P9142172740553714648

`A008458(n)+A008574(n)-A315196(n)`
-/

namespace A310511.P9142172740553714648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315196 n)

end

end A310511.P9142172740553714648

namespace A310511

/-- `A008458(n)+A008574(n)-A315196(n)` -/
def P9142172740553714648.Spec : Prop :=
  ∀ n, P9142172740553714648.a n = A310511 n

end A310511

/-! ## A310511.P1263855079047016661

`A313237(n)+n-A004396(n)`
-/

namespace A310511.P1263855079047016661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + ((n : ℤ) - A004396 n)

end

end A310511.P1263855079047016661

namespace A310511

/-- `A313237(n)+n-A004396(n)` -/
def P1263855079047016661.Spec : Prop :=
  ∀ n, P1263855079047016661.a n = A310511 n

end A310511

/-! ## A310511.P1492288261815354965

`A008486(n)+A313237(n)-A008576(n)`
-/

namespace A310511.P1492288261815354965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313237 n - A008576 n)

end

end A310511.P1492288261815354965

namespace A310511

/-- `A008486(n)+A313237(n)-A008576(n)` -/
def P1492288261815354965.Spec : Prop :=
  ∀ n, P1492288261815354965.a n = A310511 n

end A310511

/-! ## A310511.P12786397570916780234

`A310470(n)+Δ[A011865(n)]`
-/

namespace A310511.P12786397570916780234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + (f1 (n + 1) - f1 n)

end

end A310511.P12786397570916780234

namespace A310511

/-- `A310470(n)+Δ[A011865(n)]` -/
def P12786397570916780234.Spec : Prop :=
  ∀ n, P12786397570916780234.a n = A310511 n

end A310511

/-! ## A310511.P5761045347416533796

`A313862(n)-A134667(n)`
-/

namespace A310511.P5761045347416533796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n - A134667 n

end

end A310511.P5761045347416533796

namespace A310511

/-- `A313862(n)-A134667(n)` -/
def P5761045347416533796.Spec : Prop :=
  ∀ n, P5761045347416533796.a n = A310511 n

end A310511

/-! ## A310511.P7733023969714843567

`A313791(n)-A101455(n)`
-/

namespace A310511.P7733023969714843567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n - A101455 n

end

end A310511.P7733023969714843567

namespace A310511

/-- `A313791(n)-A101455(n)` -/
def P7733023969714843567.Spec : Prop :=
  ∀ n, P7733023969714843567.a n = A310511 n

end A310511

/-! ## A310511.P10112800390668869189

`A314097(n)-A128834(n)`
-/

namespace A310511.P10112800390668869189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314097 n - A128834 n

end

end A310511.P10112800390668869189

namespace A310511

/-- `A314097(n)-A128834(n)` -/
def P10112800390668869189.Spec : Prop :=
  ∀ n, P10112800390668869189.a n = A310511 n

end A310511

/-! ## A310511.P17213675432141714490

`A314097(n)+A010892(n+2)`
-/

namespace A310511.P17213675432141714490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314097 n + A010892 (n + 2)

end

end A310511.P17213675432141714490

namespace A310511

/-- `A314097(n)+A010892(n+2)` -/
def P17213675432141714490.Spec : Prop :=
  ∀ n, P17213675432141714490.a n = A310511 n

end A310511

/-! ## A310511.P2390911137294833868

`A314247(n)-A004525(n)`
-/

namespace A310511.P2390911137294833868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004525 n

end

end A310511.P2390911137294833868

namespace A310511

/-- `A314247(n)-A004525(n)` -/
def P2390911137294833868.Spec : Prop :=
  ∀ n, P2390911137294833868.a n = A310511 n

end A310511

/-! ## A310511.P6643252562440711961

`A314247(n)-Δ[A054925(n)]`
-/

namespace A310511.P6643252562440711961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - (f1 (n + 1) - f1 n)

end

end A310511.P6643252562440711961

namespace A310511

/-- `A314247(n)-Δ[A054925(n)]` -/
def P6643252562440711961.Spec : Prop :=
  ∀ n, P6643252562440711961.a n = A310511 n

end A310511

/-! ## A310511.P17691516704799296752

`∑[A021913(n)]+A314247(n)-n`
-/

namespace A310511.P17691516704799296752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314247 n - (n : ℤ))

end

end A310511.P17691516704799296752

namespace A310511

/-- `∑[A021913(n)]+A314247(n)-n` -/
def P17691516704799296752.Spec : Prop :=
  ∀ n, P17691516704799296752.a n = A310511 n

end A310511

/-! ## A310511.P16074198562121595648

`Δ[A011848(n)]+A314247(n)-n`
-/

namespace A310511.P16074198562121595648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314247 n - (n : ℤ))

end

end A310511.P16074198562121595648

namespace A310511

/-- `Δ[A011848(n)]+A314247(n)-n` -/
def P16074198562121595648.Spec : Prop :=
  ∀ n, P16074198562121595648.a n = A310511 n

end A310511

/-! ## A310511.P2317659563516857600

`A004525(A313930(2*n))-A004525(n)`
-/

namespace A310511.P2317659563516857600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313930 (2 * n)).toNat - A004525 n

end

end A310511.P2317659563516857600

namespace A310511

/-- `A004525(A313930(2*n))-A004525(n)` -/
def P2317659563516857600.Spec : Prop :=
  ∀ n, P2317659563516857600.a n = A310511 n

end A310511

/-!
# A310512: Coordination sequence Gal.6.352.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310512, the canonical program `A310512.P18429582237261561799` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310512 has offset 0).

The definition of A310512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310512.P1256154277680619271

`abs(A008592(n)-A315195(n))`
-/

namespace A310512.P1256154277680619271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315195 n|

end

end A310512.P1256154277680619271

namespace A310512

/-- `abs(A008592(n)-A315195(n))` -/
def P1256154277680619271.Spec : Prop :=
  ∀ n, P1256154277680619271.a n = A310512 n

end A310512

/-! ## A310512.P15375157088732503554

`2*A008706(n)-A315195(n)`
-/

namespace A310512.P15375157088732503554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315195 n

end

end A310512.P15375157088732503554

namespace A310512

/-- `2*A008706(n)-A315195(n)` -/
def P15375157088732503554.Spec : Prop :=
  ∀ n, P15375157088732503554.a n = A310512 n

end A310512

/-! ## A310512.P17639608622592346982

`A008458(n)+A008574(n)-A315195(n)`
-/

namespace A310512.P17639608622592346982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315195 n)

end

end A310512.P17639608622592346982

namespace A310512

/-- `A008458(n)+A008574(n)-A315195(n)` -/
def P17639608622592346982.Spec : Prop :=
  ∀ n, P17639608622592346982.a n = A310512 n

end A310512

/-! ## A310512.P18429582237261561799

`A313842(n)-A105384(A004273(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A310512

/-- `A313842(n)-A105384(A004273(n))` -/
def P18429582237261561799.Spec : Prop :=
  ∀ n, P18429582237261561799.a n = A310512 n

theorem P18429582237261561799.correct : P18429582237261561799.Spec := by
  intro n
  simp only [A310512]

end A310512

/-! ## A310512.P14228391282027775408

`A313842(n)+A105384(A004273(n)+n)`
-/

namespace A310512.P14228391282027775408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n + A105384 (A004273 n + (n : ℤ)).toNat

end

end A310512.P14228391282027775408

namespace A310512

/-- `A313842(n)+A105384(A004273(n)+n)` -/
def P14228391282027775408.Spec : Prop :=
  ∀ n, P14228391282027775408.a n = A310512 n

end A310512

/-! ## A310512.P18178423356074397789

`A314203(n)-A330025(n)`
-/

namespace A310512.P18178423356074397789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314203 n - A330025 n

end

end A310512.P18178423356074397789

namespace A310512

/-- `A314203(n)-A330025(n)` -/
def P18178423356074397789.Spec : Prop :=
  ∀ n, P18178423356074397789.a n = A310512 n

end A310512

/-! ## A310512.P5842075534128094583

`A315468(n)-A253262(A253262(n)+n)`
-/

namespace A310512.P5842075534128094583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A253262 (A253262 n + (n : ℤ)).toNat

end

end A310512.P5842075534128094583

namespace A310512

/-- `A315468(n)-A253262(A253262(n)+n)` -/
def P5842075534128094583.Spec : Prop :=
  ∀ n, P5842075534128094583.a n = A310512 n

end A310512

/-! ## A310512.P5375474237634079913

`A314252(n)-A004525(A151988(n))`
-/

namespace A310512.P5375474237634079913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A004525 (A151988 n).toNat

end

end A310512.P5375474237634079913

namespace A310512

/-- `A314252(n)-A004525(A151988(n))` -/
def P5375474237634079913.Spec : Prop :=
  ∀ n, P5375474237634079913.a n = A310512 n

end A310512

/-! ## A310512.P13189777636872597338

`A005843(A008706(n))-A315195(n)`
-/

namespace A310512.P13189777636872597338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315195 n

end

end A310512.P13189777636872597338

namespace A310512

/-- `A005843(A008706(n))-A315195(n)` -/
def P13189777636872597338.Spec : Prop :=
  ∀ n, P13189777636872597338.a n = A310512 n

end A310512

/-! ## A310512.P12871431290552203867

`A313842(n)-A014019(A017101(n))`
-/

namespace A310512.P12871431290552203867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n - A014019 (A017101 n).toNat

end

end A310512.P12871431290552203867

namespace A310512

/-- `A313842(n)-A014019(A017101(n))` -/
def P12871431290552203867.Spec : Prop :=
  ∀ n, P12871431290552203867.a n = A310512 n

end A310512

/-! ## A310512.P16352710812892913629

`A313842(n)+A014019(A017557(n))`
-/

namespace A310512.P16352710812892913629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n + A014019 (A017557 n).toNat

end

end A310512.P16352710812892913629

namespace A310512

/-- `A313842(n)+A014019(A017557(n))` -/
def P16352710812892913629.Spec : Prop :=
  ∀ n, P16352710812892913629.a n = A310512 n

end A310512

/-!
# A310513: Coordination sequence Gal.6.353.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310513, the canonical program `A310513.P8943145076043643259` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310513 has offset 0).

The definition of A310513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310513.P8943145076043643259

`abs(10*n-A315194(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A310513

/-- `abs(10*n-A315194(n))` -/
def P8943145076043643259.Spec : Prop :=
  ∀ n, P8943145076043643259.a n = A310513 n

theorem P8943145076043643259.correct : P8943145076043643259.Spec := by
  intro n
  simp only [A310513]

end A310513

/-! ## A310513.P8759292348217937914

`2*A008706(n)-A315194(n)`
-/

namespace A310513.P8759292348217937914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315194 n

end

end A310513.P8759292348217937914

namespace A310513

/-- `2*A008706(n)-A315194(n)` -/
def P8759292348217937914.Spec : Prop :=
  ∀ n, P8759292348217937914.a n = A310513 n

end A310513

/-! ## A310513.P4544363981339057457

`2*A313118(n)-A311541(n)`
-/

namespace A310513.P4544363981339057457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313118 n - A311541 n

end

end A310513.P4544363981339057457

namespace A310513

/-- `2*A313118(n)-A311541(n)` -/
def P4544363981339057457.Spec : Prop :=
  ∀ n, P4544363981339057457.a n = A310513 n

end A310513

/-! ## A310513.P6056930869247651366

`A135042(2*n+1)-A315194(n)`
-/

namespace A310513.P6056930869247651366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315194 n

end

end A310513.P6056930869247651366

namespace A310513

/-- `A135042(2*n+1)-A315194(n)` -/
def P6056930869247651366.Spec : Prop :=
  ∀ n, P6056930869247651366.a n = A310513 n

end A310513

/-! ## A310513.P4020959758342258943

`A184418(A008574(n))-A315194(n)`
-/

namespace A310513.P4020959758342258943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315194 n

end

end A310513.P4020959758342258943

namespace A310513

/-- `A184418(A008574(n))-A315194(n)` -/
def P4020959758342258943.Spec : Prop :=
  ∀ n, P4020959758342258943.a n = A310513 n

end A310513

/-! ## A310513.P10198730619426826560

`A008458(n)+A008574(n)-A315194(n)`
-/

namespace A310513.P10198730619426826560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315194 n)

end

end A310513.P10198730619426826560

namespace A310513

/-- `A008458(n)+A008574(n)-A315194(n)` -/
def P10198730619426826560.Spec : Prop :=
  ∀ n, P10198730619426826560.a n = A310513 n

end A310513

/-! ## A310513.P15345118796407694910

`A311541(n)+A005843(A313118(n)-A311541(n))`
-/

namespace A310513.P15345118796407694910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311541 n + A005843 (A313118 n - A311541 n).toNat

end

end A310513.P15345118796407694910

namespace A310513

/-- `A311541(n)+A005843(A313118(n)-A311541(n))` -/
def P15345118796407694910.Spec : Prop :=
  ∀ n, P15345118796407694910.a n = A310513 n

end A310513

/-! ## A310513.P13706420996473628420

`A008458(n)+A310442(n)-A315692(n)`
-/

namespace A310513.P13706420996473628420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310442 n - A315692 n)

end

end A310513.P13706420996473628420

namespace A310513

/-- `A008458(n)+A310442(n)-A315692(n)` -/
def P13706420996473628420.Spec : Prop :=
  ∀ n, P13706420996473628420.a n = A310513 n

end A310513

/-! ## A310513.P13303373784462699741

`A005843(A313118(n))-A311541(n)`
-/

namespace A310513.P13303373784462699741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313118 n).toNat - A311541 n

end

end A310513.P13303373784462699741

namespace A310513

/-- `A005843(A313118(n))-A311541(n)` -/
def P13303373784462699741.Spec : Prop :=
  ∀ n, P13303373784462699741.a n = A310513 n

end A310513

/-! ## A310513.P14449276627441922258

`A005843(A008706(n))-A315194(n)`
-/

namespace A310513.P14449276627441922258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315194 n

end

end A310513.P14449276627441922258

namespace A310513

/-- `A005843(A008706(n))-A315194(n)` -/
def P14449276627441922258.Spec : Prop :=
  ∀ n, P14449276627441922258.a n = A310513 n

end A310513

/-! ## A310513.P2272109119259009963

`A065502(A008458(n))-A315194(n)`
-/

namespace A310513.P2272109119259009963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315194 n

end

end A310513.P2272109119259009963

namespace A310513

/-- `A065502(A008458(n))-A315194(n)` -/
def P2272109119259009963.Spec : Prop :=
  ∀ n, P2272109119259009963.a n = A310513 n

end A310513

/-!
# A310514: Coordination sequence Gal.6.595.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310514, there is no canonical definition to state claims against.
-/

/-! ## A310514.P10325112157756124450

`A301680(n)+A021913(A071716(n))`
-/

namespace A310514.P10325112157756124450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n + A021913 (A071716 n).toNat

end

end A310514.P10325112157756124450

/-! ## A310514.P12190563060844440717

`A310503(n)+A079978(A026135(n))`
-/

namespace A310514.P12190563060844440717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + A079978 (A026135 n).toNat

end

end A310514.P12190563060844440717

/-! ## A310514.P16837419937816225226

`A076982(A317444(n))+A075326(n)`
-/

namespace A310514.P16837419937816225226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A317444 n).toNat + A075326 n

end

end A310514.P16837419937816225226

/-! ## A310514.P14690157679764908193

`A310511(n)+A285680(A052545(n))`
-/

namespace A310514.P14690157679764908193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A285680 (A052545 n).toNat

end

end A310514.P14690157679764908193

/-! ## A310514.P240882379309491159

`or(A000035(A074446(n+1)), A310503(n))`
-/

namespace A310514.P240882379309491159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A074446 (n + 1)).toNat) (A310503 n)

end

end A310514.P240882379309491159

/-!
# A310515: Coordination sequence Gal.6.598.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310515, there is no canonical definition to state claims against.
-/

/-! ## A310515.P10028336189719457896

`and(A052905(A003422(n)), A315341(n))`
-/

namespace A310515.P10028336189719457896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A003422 n).toNat) (A315341 n)

end

end A310515.P10028336189719457896

/-!
# A310516: Coordination sequence Gal.6.599.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310516, there is no canonical definition to state claims against.
-/

/-! ## A310516.P5585566533065355214

`2*A313226(n)-A008579(n)`
-/

namespace A310516.P5585566533065355214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313226 n - A008579 n

end

end A310516.P5585566533065355214

/-! ## A310516.P14497735555127265258

`2*A313226(n)-A250122(A005843(n))`
-/

namespace A310516.P14497735555127265258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313226 n - A250122 (A005843 n).toNat

end

end A310516.P14497735555127265258

/-! ## A310516.P4969347809402652213

`A005843(A313226(n))-A008579(n)`
-/

namespace A310516.P4969347809402652213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313226 n).toNat - A008579 n

end

end A310516.P4969347809402652213

/-! ## A310516.P1716418998782163866

`A005843(A313226(n))-A250122(A005843(n))`
-/

namespace A310516.P1716418998782163866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313226 n).toNat - A250122 (A005843 n).toNat

end

end A310516.P1716418998782163866

/-! ## A310516.P2059525861191776792

`or(A046770(A047842(n)), A310482(n))`
-/

namespace A310516.P2059525861191776792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046770 (A047842 n).toNat) (A310482 n)

end

end A310516.P2059525861191776792

/-!
# A310517: Coordination sequence Gal.6.206.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310517, the canonical program `A310517.P12936457194479813651` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310517 has offset 0).

The definition of A310517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310517.P3142464514469705909

`abs(A008592(n)-A315188(n))`
-/

namespace A310517.P3142464514469705909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315188 n|

end

end A310517.P3142464514469705909

namespace A310517

/-- `abs(A008592(n)-A315188(n))` -/
def P3142464514469705909.Spec : Prop :=
  ∀ n, P3142464514469705909.a n = A310517 n

end A310517

/-! ## A310517.P15012633941636250479

`2*A313089(n)-A008574(n)`
-/

namespace A310517.P15012633941636250479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313089 n - A008574 n

end

end A310517.P15012633941636250479

namespace A310517

/-- `2*A313089(n)-A008574(n)` -/
def P15012633941636250479.Spec : Prop :=
  ∀ n, P15012633941636250479.a n = A310517 n

end A310517

/-! ## A310517.P8754509441397463025

`2*A008706(n)-A315188(n)`
-/

namespace A310517.P8754509441397463025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315188 n

end

end A310517.P8754509441397463025

namespace A310517

/-- `2*A008706(n)-A315188(n)` -/
def P8754509441397463025.Spec : Prop :=
  ∀ n, P8754509441397463025.a n = A310517 n

end A310517

/-! ## A310517.P16323728843964969538

`2*A310523(n)-A310526(n)`
-/

namespace A310517.P16323728843964969538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310523 n - A310526 n

end

end A310517.P16323728843964969538

namespace A310517

/-- `2*A310523(n)-A310526(n)` -/
def P16323728843964969538.Spec : Prop :=
  ∀ n, P16323728843964969538.a n = A310517 n

end A310517

/-! ## A310517.P16864768894392762114

`A135042(Δ[n²])-A315188(n)`
-/

namespace A310517.P16864768894392762114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A315188 n

end

end A310517.P16864768894392762114

namespace A310517

/-- `A135042(Δ[n²])-A315188(n)` -/
def P16864768894392762114.Spec : Prop :=
  ∀ n, P16864768894392762114.a n = A310517 n

end A310517

/-! ## A310517.P1526848739489073551

`A004275(A313089(n)-A004273(n))`
-/

namespace A310517.P1526848739489073551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313089 n - A004273 n).toNat

end

end A310517.P1526848739489073551

namespace A310517

/-- `A004275(A313089(n)-A004273(n))` -/
def P1526848739489073551.Spec : Prop :=
  ∀ n, P1526848739489073551.a n = A310517 n

end A310517

/-! ## A310517.P10720108923717110804

`A004277(A313089(n)-A004277(n))`
-/

namespace A310517.P10720108923717110804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313089 n - A004277 n).toNat

end

end A310517.P10720108923717110804

namespace A310517

/-- `A004277(A313089(n)-A004277(n))` -/
def P10720108923717110804.Spec : Prop :=
  ∀ n, P10720108923717110804.a n = A310517 n

end A310517

/-! ## A310517.P7058861975080095941

`A005843(A313089(n))-A008574(n)`
-/

namespace A310517.P7058861975080095941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313089 n).toNat - A008574 n

end

end A310517.P7058861975080095941

namespace A310517

/-- `A005843(A313089(n))-A008574(n)` -/
def P7058861975080095941.Spec : Prop :=
  ∀ n, P7058861975080095941.a n = A310517 n

end A310517

/-! ## A310517.P1875365010804790037

`A005843(A008706(n))-A315188(n)`
-/

namespace A310517.P1875365010804790037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315188 n

end

end A310517.P1875365010804790037

namespace A310517

/-- `A005843(A008706(n))-A315188(n)` -/
def P1875365010804790037.Spec : Prop :=
  ∀ n, P1875365010804790037.a n = A310517 n

end A310517

/-! ## A310517.P1090575572213520914

`A017281(n)-A004442(A315188(n))`
-/

namespace A310517.P1090575572213520914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315188 n).toNat

end

end A310517.P1090575572213520914

namespace A310517

/-- `A017281(n)-A004442(A315188(n))` -/
def P1090575572213520914.Spec : Prop :=
  ∀ n, P1090575572213520914.a n = A310517 n

end A310517

/-! ## A310517.P16624415189271981870

`A103517(A313089(n)-A005408(n))`
-/

namespace A310517.P16624415189271981870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313089 n - A005408 n).toNat

end

end A310517.P16624415189271981870

namespace A310517

/-- `A103517(A313089(n)-A005408(n))` -/
def P16624415189271981870.Spec : Prop :=
  ∀ n, P16624415189271981870.a n = A310517 n

end A310517

/-! ## A310517.P1680903045069899270

`A004275(A313089(n))-A004275(2*n)`
-/

namespace A310517.P1680903045069899270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313089 n).toNat - A004275 (2 * n)

end

end A310517.P1680903045069899270

namespace A310517

/-- `A004275(A313089(n))-A004275(2*n)` -/
def P1680903045069899270.Spec : Prop :=
  ∀ n, P1680903045069899270.a n = A310517 n

end A310517

/-! ## A310517.P17122334554650824345

`A005843(A313089(n))+n-A008706(n)`
-/

namespace A310517.P17122334554650824345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313089 n).toNat + ((n : ℤ) - A008706 n)

end

end A310517.P17122334554650824345

namespace A310517

/-- `A005843(A313089(n))+n-A008706(n)` -/
def P17122334554650824345.Spec : Prop :=
  ∀ n, P17122334554650824345.a n = A310517 n

end A310517

/-! ## A310517.P17060107604712567154

`A008458(n)+A008574(n)-A315188(n)`
-/

namespace A310517.P17060107604712567154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315188 n)

end

end A310517.P17060107604712567154

namespace A310517

/-- `A008458(n)+A008574(n)-A315188(n)` -/
def P17060107604712567154.Spec : Prop :=
  ∀ n, P17060107604712567154.a n = A310517 n

end A310517

/-! ## A310517.P10995857314940263583

`A004273(A313089(n)-n)-A004273(n)`
-/

namespace A310517.P10995857314940263583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313089 n - (n : ℤ)).toNat - A004273 n

end

end A310517.P10995857314940263583

namespace A310517

/-- `A004273(A313089(n)-n)-A004273(n)` -/
def P10995857314940263583.Spec : Prop :=
  ∀ n, P10995857314940263583.a n = A310517 n

end A310517

/-! ## A310517.P8884524255300040636

`A093545(A008458(n))-A315188(n)`
-/

namespace A310517.P8884524255300040636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A315188 n

end

end A310517.P8884524255300040636

namespace A310517

/-- `A093545(A008458(n))-A315188(n)` -/
def P8884524255300040636.Spec : Prop :=
  ∀ n, P8884524255300040636.a n = A310517 n

end A310517

/-! ## A310517.P16721765686333474158

`A311613(2*n)-4*n`
-/

namespace A310517.P16721765686333474158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 (2 * n) - (4 * n : ℤ)

end

end A310517.P16721765686333474158

namespace A310517

/-- `A311613(2*n)-4*n` -/
def P16721765686333474158.Spec : Prop :=
  ∀ n, P16721765686333474158.a n = A310517 n

end A310517

/-! ## A310517.P12936457194479813651

`2*A008574(2*n)-A315730(2*n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A310517

/-- `2*A008574(2*n)-A315730(2*n)` -/
def P12936457194479813651.Spec : Prop :=
  ∀ n, P12936457194479813651.a n = A310517 n

theorem P12936457194479813651.correct : P12936457194479813651.Spec := by
  intro n
  simp only [A310517]

end A310517

/-!
# A310518: Coordination sequence Gal.3.21.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310518, the canonical program `A310518.P403618271380181412` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310518 has offset 0).

The definition of A310518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310518.P403618271380181412

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=16, a(4)=22, a(5)=26, a(6)=30`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310518

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P403618271380181412.Spec : Prop :=
  ∀ n, P403618271380181412.a n = A310518 n

theorem P403618271380181412.correct : P403618271380181412.Spec := by
  intro n
  simp only [A310518]

end A310518

/-! ## A310518.P1273684853137372605

`A004277(n)+2*A047486(n+1)`
-/

namespace A310518.P1273684853137372605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A047486 (n + 1)

end

end A310518.P1273684853137372605

namespace A310518

/-- `A004277(n)+2*A047486(n+1)` -/
def P1273684853137372605.Spec : Prop :=
  ∀ n, P1273684853137372605.a n = A310518 n

end A310518

/-! ## A310518.P15411081885185909934

`A022144(n)-2*A047363(n+1)`
-/

namespace A310518.P15411081885185909934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047363 (n + 1)

end

end A310518.P15411081885185909934

namespace A310518

/-- `A022144(n)-2*A047363(n+1)` -/
def P15411081885185909934.Spec : Prop :=
  ∀ n, P15411081885185909934.a n = A310518 n

end A310518

/-! ## A310518.P7119935102868169052

`A265227(n+1)+A312928(n)-n`
-/

namespace A310518.P7119935102868169052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A312928 n - (n : ℤ))

end

end A310518.P7119935102868169052

namespace A310518

/-- `A265227(n+1)+A312928(n)-n` -/
def P7119935102868169052.Spec : Prop :=
  ∀ n, P7119935102868169052.a n = A310518 n

end A310518

/-! ## A310518.P12309132583415014736

`A022144(n)-A005843(A047363(n+1))`
-/

namespace A310518.P12309132583415014736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A005843 (A047363 (n + 1)).toNat

end

end A310518.P12309132583415014736

namespace A310518

/-- `A022144(n)-A005843(A047363(n+1))` -/
def P12309132583415014736.Spec : Prop :=
  ∀ n, P12309132583415014736.a n = A310518 n

end A310518

/-! ## A310518.P3174959770981139111

`A005843(A047486(n+1))+A004277(n)`
-/

namespace A310518.P3174959770981139111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047486 (n + 1)).toNat + A004277 n

end

end A310518.P3174959770981139111

namespace A310518

/-- `A005843(A047486(n+1))+A004277(n)` -/
def P3174959770981139111.Spec : Prop :=
  ∀ n, P3174959770981139111.a n = A310518 n

end A310518

/-! ## A310518.P12487855264740862338

`A004273(A047486(n+1))+eq[2, A020639(n+1)]`
-/

namespace A310518.P12487855264740862338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047486 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A310518.P12487855264740862338

namespace A310518

/-- `A004273(A047486(n+1))+eq[2, A020639(n+1)]` -/
def P12487855264740862338.Spec : Prop :=
  ∀ n, P12487855264740862338.a n = A310518 n

end A310518

/-! ## A310518.P9751945182036013022

`(A008574(A047486(n+1))+A008574(n))/2`
-/

namespace A310518.P9751945182036013022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A047486 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A310518.P9751945182036013022

namespace A310518

/-- `(A008574(A047486(n+1))+A008574(n))/2` -/
def P9751945182036013022.Spec : Prop :=
  ∀ n, P9751945182036013022.a n = (A310518 n : ℚ)

end A310518

/-! ## A310518.P2607599351839401854

`A310532(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310518.P2607599351839401854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310518.P2607599351839401854

namespace A310518

/-- `A310532(2*n)+A008458(n+1)-(12*n+6)` -/
def P2607599351839401854.Spec : Prop :=
  ∀ n, P2607599351839401854.a n = A310518 n

end A310518

/-! ## A310518.P8753323941169023566

`A008574(n)+(6*n)%A072154(n)`
-/

namespace A310518.P8753323941169023566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (6 * n : ℤ) (A072154 n)

end

end A310518.P8753323941169023566

namespace A310518

/-- `A008574(n)+(6*n)%A072154(n)` -/
def P8753323941169023566.Spec : Prop :=
  ∀ n, P8753323941169023566.a n = A310518 n

end A310518

/-! ## A310518.P5876451271168625596

`A004277(A047486(n+1)+n)`
-/

namespace A310518.P5876451271168625596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047486 (n + 1) + (n : ℤ)).toNat

end

end A310518.P5876451271168625596

namespace A310518

/-- `A004277(A047486(n+1)+n)` -/
def P5876451271168625596.Spec : Prop :=
  ∀ n, P5876451271168625596.a n = A310518 n

end A310518

/-! ## A310518.P9050940843693386811

`A004275(A047412(n+2)+n)`
-/

namespace A310518.P9050940843693386811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047412 (n + 2) + (n : ℤ)).toNat

end

end A310518.P9050940843693386811

namespace A310518

/-- `A004275(A047412(n+2)+n)` -/
def P9050940843693386811.Spec : Prop :=
  ∀ n, P9050940843693386811.a n = A310518 n

end A310518

/-! ## A310518.P15738093780772977850

`A004275(A047486(n+1)+1+n)`
-/

namespace A310518.P15738093780772977850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047486 (n + 1) + 1 + (n : ℤ)).toNat

end

end A310518.P15738093780772977850

namespace A310518

/-- `A004275(A047486(n+1)+1+n)` -/
def P15738093780772977850.Spec : Prop :=
  ∀ n, P15738093780772977850.a n = A310518 n

end A310518

/-! ## A310518.P3341803454265234434

`A004273(A047486(n+1)+n)+1`
-/

namespace A310518.P3341803454265234434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047486 (n + 1) + (n : ℤ)).toNat + 1

end

end A310518.P3341803454265234434

namespace A310518

/-- `A004273(A047486(n+1)+n)+1` -/
def P3341803454265234434.Spec : Prop :=
  ∀ n, P3341803454265234434.a n = A310518 n

end A310518

/-! ## A310518.P15965443644146290331

`A058992(A047486(n+1)+2+n)`
-/

namespace A310518.P15965443644146290331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A047486 (n + 1) + 2 + (n : ℤ)).toNat

end

end A310518.P15965443644146290331

namespace A310518

/-- `A058992(A047486(n+1)+2+n)` -/
def P15965443644146290331.Spec : Prop :=
  ∀ n, P15965443644146290331.a n = A310518 n

end A310518

/-! ## A310518.P11474131485123732808

`A311570(n)+A201629(n)`
-/

namespace A310518.P11474131485123732808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 n + A201629 n

end

end A310518.P11474131485123732808

namespace A310518

/-- `A311570(n)+A201629(n)` -/
def P11474131485123732808.Spec : Prop :=
  ∀ n, P11474131485123732808.a n = A310518 n

theorem P11474131485123732808.correct : P11474131485123732808.Spec := by
  intro n
  simp only [A310518, Nat.add_sub_cancel, A310518.P11474131485123732808.a, A310518.P403618271380181412.a, A201629, A201629.P2149105021995043293.a, A311570, A311570.P17013553146921247597.a, A004524, A004524.P8943215836771390324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310518

/-! ## A310518.P15653348523187552610

`A312475(n)+Δ[2*A011858(n)]`
-/

namespace A310518.P15653348523187552610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + (f1 (n + 1) - f1 n)

end

end A310518.P15653348523187552610

namespace A310518

/-- `A312475(n)+Δ[2*A011858(n)]` -/
def P15653348523187552610.Spec : Prop :=
  ∀ n, P15653348523187552610.a n = A310518 n

end A310518

/-! ## A310518.P1705633284503399985

`abs(A008592(n)-A315187(n))`
-/

namespace A310518.P1705633284503399985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315187 n|

end

end A310518.P1705633284503399985

namespace A310518

/-- `abs(A008592(n)-A315187(n))` -/
def P1705633284503399985.Spec : Prop :=
  ∀ n, P1705633284503399985.a n = A310518 n

end A310518

/-! ## A310518.P4906543253273887726

`A008458(n)+A008574(n)-A315187(n)`
-/

namespace A310518.P4906543253273887726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315187 n)

end

end A310518.P4906543253273887726

namespace A310518

/-- `A008458(n)+A008574(n)-A315187(n)` -/
def P4906543253273887726.Spec : Prop :=
  ∀ n, P4906543253273887726.a n = A310518 n

end A310518

/-! ## A310518.P7123125747105190347

`A315610(n)-2*A244895(n)`
-/

namespace A310518.P7123125747105190347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n - 2 * A244895 n

end

end A310518.P7123125747105190347

namespace A310518

/-- `A315610(n)-2*A244895(n)` -/
def P7123125747105190347.Spec : Prop :=
  ∀ n, P7123125747105190347.a n = A310518 n

end A310518

/-!
# A310519: Coordination sequence Gal.3.37.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310519, there is no canonical definition to state claims against.
-/

/-! ## A310519.P3211858260399879679

`A117741(3*n+1)-A359893(A117732(n+3))`
-/

namespace A310519.P3211858260399879679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117741 (3 * n + 1) - A359893 (A117732 (n + 3)).toNat

end

end A310519.P3211858260399879679

/-! ## A310519.P11045044090377095651

`A314056(n)-A062157(A161999(n+1))`
-/

namespace A310519.P11045044090377095651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n - A062157 (A161999 (n + 1)).toNat

end

end A310519.P11045044090377095651

/-!
# A310520: Coordination sequence Gal.6.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310520, the canonical program `A310520.P9429967964652236068` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310520 has offset 0).

The definition of A310520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310520.P9429967964652236068

`abs(A008592(n)-A315186(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A310520

/-- `abs(A008592(n)-A315186(n))` -/
def P9429967964652236068.Spec : Prop :=
  ∀ n, P9429967964652236068.a n = A310520 n

theorem P9429967964652236068.correct : P9429967964652236068.Spec := by
  intro n
  simp only [A310520]

end A310520

/-! ## A310520.P3601901202864999135

`2*A008706(n)-A315186(n)`
-/

namespace A310520.P3601901202864999135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315186 n

end

end A310520.P3601901202864999135

namespace A310520

/-- `2*A008706(n)-A315186(n)` -/
def P3601901202864999135.Spec : Prop :=
  ∀ n, P3601901202864999135.a n = A310520 n

end A310520

/-! ## A310520.P13263219002238845712

`2*A310513(n)-A310505(n)`
-/

namespace A310520.P13263219002238845712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310513 n - A310505 n

end

end A310520.P13263219002238845712

namespace A310520

/-- `2*A310513(n)-A310505(n)` -/
def P13263219002238845712.Spec : Prop :=
  ∀ n, P13263219002238845712.a n = A310520 n

end A310520

/-! ## A310520.P369658639038290378

`abs(A017281(n)-(A315186(n)+1))`
-/

namespace A310520.P369658639038290378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017281 n - (A315186 n + 1)|

end

end A310520.P369658639038290378

namespace A310520

/-- `abs(A017281(n)-(A315186(n)+1))` -/
def P369658639038290378.Spec : Prop :=
  ∀ n, P369658639038290378.a n = A310520 n

theorem P369658639038290378.correct : P369658639038290378.Spec := by
  intro n
  simp only [A310520, Nat.add_sub_cancel, A310520.P369658639038290378.a, A310520.P9429967964652236068.a, A008592, A008592.P4981059802862696142.a, A017281, A017281.P12372910670058171543.a, A315186, A315186.P13057520070277243894.a, A008574, A008574.P1300280032690682112.a, A314684, A314684.P10439373234237939789.a, A314239, A314239.P6616137567385777595.a, A047273, A047273.P5050912492785340480.a, A311420, A311420.P358613710613374851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310520

/-! ## A310520.P366820281536441765

`A135042(2*n+1)-A315186(n)`
-/

namespace A310520.P366820281536441765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315186 n

end

end A310520.P366820281536441765

namespace A310520

/-- `A135042(2*n+1)-A315186(n)` -/
def P366820281536441765.Spec : Prop :=
  ∀ n, P366820281536441765.a n = A310520 n

end A310520

/-! ## A310520.P3856599385349822051

`A008458(n)+A008574(n)-A315186(n)`
-/

namespace A310520.P3856599385349822051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315186 n)

end

end A310520.P3856599385349822051

namespace A310520

/-- `A008458(n)+A008574(n)-A315186(n)` -/
def P3856599385349822051.Spec : Prop :=
  ∀ n, P3856599385349822051.a n = A310520 n

end A310520

/-! ## A310520.P17309537860179600626

`2*A314239(n)-A008458(n)`
-/

namespace A310520.P17309537860179600626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314239 n - A008458 n

end

end A310520.P17309537860179600626

namespace A310520

/-- `2*A314239(n)-A008458(n)` -/
def P17309537860179600626.Spec : Prop :=
  ∀ n, P17309537860179600626.a n = A310520 n

end A310520

/-! ## A310520.P9305079275028047632

`A103517(A314239(n)-A016777(n))`
-/

namespace A310520.P9305079275028047632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314239 n - A016777 n).toNat

end

end A310520.P9305079275028047632

namespace A310520

/-- `A103517(A314239(n)-A016777(n))` -/
def P9305079275028047632.Spec : Prop :=
  ∀ n, P9305079275028047632.a n = A310520 n

end A310520

/-! ## A310520.P7964383467980281547

`2*A314239(n)-A008486(A005843(n))`
-/

namespace A310520.P7964383467980281547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314239 n - A008486 (A005843 n).toNat

end

end A310520.P7964383467980281547

namespace A310520

/-- `2*A314239(n)-A008486(A005843(n))` -/
def P7964383467980281547.Spec : Prop :=
  ∀ n, P7964383467980281547.a n = A310520 n

end A310520

/-! ## A310520.P18266372201484900455

`A004277(A314239(n)-(A004277(n)+n))`
-/

namespace A310520.P18266372201484900455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314239 n - (A004277 n + (n : ℤ))).toNat

end

end A310520.P18266372201484900455

namespace A310520

/-- `A004277(A314239(n)-(A004277(n)+n))` -/
def P18266372201484900455.Spec : Prop :=
  ∀ n, P18266372201484900455.a n = A310520 n

end A310520

/-! ## A310520.P16263019872241445968

`A004277(A314239(n)-n-A004277(n))`
-/

namespace A310520.P16263019872241445968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314239 n - (n : ℤ) - A004277 n).toNat

end

end A310520.P16263019872241445968

namespace A310520

/-- `A004277(A314239(n)-n-A004277(n))` -/
def P16263019872241445968.Spec : Prop :=
  ∀ n, P16263019872241445968.a n = A310520 n

end A310520

/-! ## A310520.P12413264915792774785

`A008458(n)-A005843(A008458(n)-A314239(n))`
-/

namespace A310520.P12413264915792774785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314239 n).toNat

end

end A310520.P12413264915792774785

namespace A310520

/-- `A008458(n)-A005843(A008458(n)-A314239(n))` -/
def P12413264915792774785.Spec : Prop :=
  ∀ n, P12413264915792774785.a n = A310520 n

end A310520

/-! ## A310520.P11731047286854776814

`A017281(n)-A004442(A315186(n))`
-/

namespace A310520.P11731047286854776814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315186 n).toNat

end

end A310520.P11731047286854776814

namespace A310520

/-- `A017281(n)-A004442(A315186(n))` -/
def P11731047286854776814.Spec : Prop :=
  ∀ n, P11731047286854776814.a n = A310520 n

end A310520

/-! ## A310520.P3801234253375599329

`A005843(A008706(n))-A315186(n)`
-/

namespace A310520.P3801234253375599329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315186 n

end

end A310520.P3801234253375599329

namespace A310520

/-- `A005843(A008706(n))-A315186(n)` -/
def P3801234253375599329.Spec : Prop :=
  ∀ n, P3801234253375599329.a n = A310520 n

end A310520

/-! ## A310520.P11076437883447137633

`A005843(A314239(n))-A008458(n)`
-/

namespace A310520.P11076437883447137633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314239 n).toNat - A008458 n

end

end A310520.P11076437883447137633

namespace A310520

/-- `A005843(A314239(n))-A008458(n)` -/
def P11076437883447137633.Spec : Prop :=
  ∀ n, P11076437883447137633.a n = A310520 n

end A310520

/-! ## A310520.P9417670231583209769

`A005843(A314239(n))-A008486(A005843(n))`
-/

namespace A310520.P9417670231583209769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314239 n).toNat - A008486 (A005843 n).toNat

end

end A310520.P9417670231583209769

namespace A310520

/-- `A005843(A314239(n))-A008486(A005843(n))` -/
def P9417670231583209769.Spec : Prop :=
  ∀ n, P9417670231583209769.a n = A310520 n

end A310520

/-! ## A310520.P12506055162991712502

`A315345(2*n)+2-A001281(2*n+1)`
-/

namespace A310520.P12506055162991712502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 (2 * n) + (2 - A001281 (2 * n + 1))

end

end A310520.P12506055162991712502

namespace A310520

/-- `A315345(2*n)+2-A001281(2*n+1)` -/
def P12506055162991712502.Spec : Prop :=
  ∀ n, P12506055162991712502.a n = A310520 n

end A310520

/-! ## A310520.P14976616086662904004

`A315345(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310520.P14976616086662904004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310520.P14976616086662904004

namespace A310520

/-- `A315345(2*n)+A008458(n+1)-(12*n+6)` -/
def P14976616086662904004.Spec : Prop :=
  ∀ n, P14976616086662904004.a n = A310520 n

end A310520

/-!
# A310521: Coordination sequence Gal.5.133.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310521, the canonical program `A310521.P11719741427687549128` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310521 has offset 0).

The definition of A310521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310521.P11719741427687549128

`abs(A008592(n)-A315185(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310521

/-- `abs(A008592(n)-A315185(n))` -/
def P11719741427687549128.Spec : Prop :=
  ∀ n, P11719741427687549128.a n = A310521 n

theorem P11719741427687549128.correct : P11719741427687549128.Spec := by
  intro n
  simp only [A310521]

end A310521

/-! ## A310521.P17156486560287243328

`2*A008706(n)-A315185(n)`
-/

namespace A310521.P17156486560287243328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315185 n

end

end A310521.P17156486560287243328

namespace A310521

/-- `2*A008706(n)-A315185(n)` -/
def P17156486560287243328.Spec : Prop :=
  ∀ n, P17156486560287243328.a n = A310521 n

end A310521

/-! ## A310521.P14220723835519164999

`A008458(n)+A008574(n)-A315185(n)`
-/

namespace A310521.P14220723835519164999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315185 n)

end

end A310521.P14220723835519164999

namespace A310521

/-- `A008458(n)+A008574(n)-A315185(n)` -/
def P14220723835519164999.Spec : Prop :=
  ∀ n, P14220723835519164999.a n = A310521 n

end A310521

/-! ## A310521.P5062080870623200215

`2*A313100(n)-A008574(n)`
-/

namespace A310521.P5062080870623200215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313100 n - A008574 n

end

end A310521.P5062080870623200215

namespace A310521

/-- `2*A313100(n)-A008574(n)` -/
def P5062080870623200215.Spec : Prop :=
  ∀ n, P5062080870623200215.a n = A310521 n

end A310521

/-! ## A310521.P1077473818870508799

`A004275(A313100(n)-A004273(n))`
-/

namespace A310521.P1077473818870508799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313100 n - A004273 n).toNat

end

end A310521.P1077473818870508799

namespace A310521

/-- `A004275(A313100(n)-A004273(n))` -/
def P1077473818870508799.Spec : Prop :=
  ∀ n, P1077473818870508799.a n = A310521 n

end A310521

/-! ## A310521.P6506925871994527036

`A004273(A313100(n)-n)-A004273(n)`
-/

namespace A310521.P6506925871994527036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313100 n - (n : ℤ)).toNat - A004273 n

end

end A310521.P6506925871994527036

namespace A310521

/-- `A004273(A313100(n)-n)-A004273(n)` -/
def P6506925871994527036.Spec : Prop :=
  ∀ n, P6506925871994527036.a n = A310521 n

end A310521

/-! ## A310521.P8951167731056976731

`A008574(n)+A005843(A313100(n)-A008574(n))`
-/

namespace A310521.P8951167731056976731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313100 n - A008574 n).toNat

end

end A310521.P8951167731056976731

namespace A310521

/-- `A008574(n)+A005843(A313100(n)-A008574(n))` -/
def P8951167731056976731.Spec : Prop :=
  ∀ n, P8951167731056976731.a n = A310521 n

end A310521

/-! ## A310521.P1845980649342662808

`A151988(A312484(n))`
-/

namespace A310521.P1845980649342662808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A312484 n).toNat

end

end A310521.P1845980649342662808

namespace A310521

/-- `A151988(A312484(n))` -/
def P1845980649342662808.Spec : Prop :=
  ∀ n, P1845980649342662808.a n = A310521 n

end A310521

/-! ## A310521.P13603408700767373797

`A005843(A313100(n))-A008574(n)`
-/

namespace A310521.P13603408700767373797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313100 n).toNat - A008574 n

end

end A310521.P13603408700767373797

namespace A310521

/-- `A005843(A313100(n))-A008574(n)` -/
def P13603408700767373797.Spec : Prop :=
  ∀ n, P13603408700767373797.a n = A310521 n

end A310521

/-! ## A310521.P853360038206022886

`A004273(A313100(n))-record[A059029(n)]`
-/

namespace A310521.P853360038206022886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313100 n).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310521.P853360038206022886

namespace A310521

/-- `A004273(A313100(n))-record[A059029(n)]` -/
def P853360038206022886.Spec : Prop :=
  ∀ n, P853360038206022886.a n = A310521 n

end A310521

/-! ## A310521.P5687915399083543643

`A004275(A313100(n))-A004275(2*n)`
-/

namespace A310521.P5687915399083543643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313100 n).toNat - A004275 (2 * n)

end

end A310521.P5687915399083543643

namespace A310521

/-- `A004275(A313100(n))-A004275(2*n)` -/
def P5687915399083543643.Spec : Prop :=
  ∀ n, P5687915399083543643.a n = A310521 n

end A310521

/-! ## A310521.P2279486806736170347

`A017281(n)-A004442(A315185(n))`
-/

namespace A310521.P2279486806736170347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315185 n).toNat

end

end A310521.P2279486806736170347

namespace A310521

/-- `A017281(n)-A004442(A315185(n))` -/
def P2279486806736170347.Spec : Prop :=
  ∀ n, P2279486806736170347.a n = A310521 n

end A310521

/-! ## A310521.P17669898679411806664

`A005843(A008706(n))-A315185(n)`
-/

namespace A310521.P17669898679411806664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315185 n

end

end A310521.P17669898679411806664

namespace A310521

/-- `A005843(A008706(n))-A315185(n)` -/
def P17669898679411806664.Spec : Prop :=
  ∀ n, P17669898679411806664.a n = A310521 n

end A310521

/-! ## A310521.P6791851270935337072

`A312555(2*n)-4*n`
-/

namespace A310521.P6791851270935337072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 (2 * n) - (4 * n : ℤ)

end

end A310521.P6791851270935337072

namespace A310521

/-- `A312555(2*n)-4*n` -/
def P6791851270935337072.Spec : Prop :=
  ∀ n, P6791851270935337072.a n = A310521 n

end A310521

/-! ## A310521.P630067299295438538

`2*A008574(2*n)-A315646(2*n)`
-/

namespace A310521.P630067299295438538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315646 (2 * n)

end

end A310521.P630067299295438538

namespace A310521

/-- `2*A008574(2*n)-A315646(2*n)` -/
def P630067299295438538.Spec : Prop :=
  ∀ n, P630067299295438538.a n = A310521 n

end A310521

/-! ## A310521.P11428932407862054015

`A004396(A312160(2*n))-A004396(A004396(2*n))`
-/

namespace A310521.P11428932407862054015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A310521.P11428932407862054015

namespace A310521

/-- `A004396(A312160(2*n))-A004396(A004396(2*n))` -/
def P11428932407862054015.Spec : Prop :=
  ∀ n, P11428932407862054015.a n = A310521 n

end A310521

/-!
# A310522: Coordination sequence Gal.5.257.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310522, there is no canonical definition to state claims against.
-/

/-! ## A310522.P17372083227689995258

`A310523(n)-A086483(A107239(n))`
-/

namespace A310522.P17372083227689995258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310523 n - A086483 (A107239 n).toNat

end

end A310522.P17372083227689995258

/-! ## A310522.P8712843129643272322

`A310523(n)-A102683(A173380(n))`
-/

namespace A310522.P8712843129643272322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310523 n - A102683 (A173380 n).toNat

end

end A310522.P8712843129643272322

/-! ## A310522.P10710968792030636289

`A301697(n)-A063725(A105329(n+1))`
-/

namespace A310522.P10710968792030636289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A063725 (A105329 (n + 1)).toNat

end

end A310522.P10710968792030636289

/-! ## A310522.P2195748338857532046

`A312070(n)+A001222(A050146(n))`
-/

namespace A310522.P2195748338857532046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312070 n + A001222 (A050146 n).toNat

end

end A310522.P2195748338857532046

/-!
# A310523: Coordination sequence Gal.6.355.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310523, the canonical program `A310523.P3141303181628939896` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310523 has offset 0).

The definition of A310523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310523.P3141303181628939896

`abs(A008592(n)-A315183(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A310523

/-- `abs(A008592(n)-A315183(n))` -/
def P3141303181628939896.Spec : Prop :=
  ∀ n, P3141303181628939896.a n = A310523 n

theorem P3141303181628939896.correct : P3141303181628939896.Spec := by
  intro n
  simp only [A310523]

end A310523

/-! ## A310523.P14549657084289048250

`2*A008706(n)-A315183(n)`
-/

namespace A310523.P14549657084289048250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315183 n

end

end A310523.P14549657084289048250

namespace A310523

/-- `2*A008706(n)-A315183(n)` -/
def P14549657084289048250.Spec : Prop :=
  ∀ n, P14549657084289048250.a n = A310523 n

end A310523

/-! ## A310523.P3171182180925098870

`2*A310456(n)-A310374(n)`
-/

namespace A310523.P3171182180925098870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310456 n - A310374 n

end

end A310523.P3171182180925098870

namespace A310523

/-- `2*A310456(n)-A310374(n)` -/
def P3171182180925098870.Spec : Prop :=
  ∀ n, P3171182180925098870.a n = A310523 n

end A310523

/-! ## A310523.P3610789877721870908

`2*A313113(n)-A311262(n)`
-/

namespace A310523.P3610789877721870908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313113 n - A311262 n

end

end A310523.P3610789877721870908

namespace A310523

/-- `2*A313113(n)-A311262(n)` -/
def P3610789877721870908.Spec : Prop :=
  ∀ n, P3610789877721870908.a n = A310523 n

end A310523

/-! ## A310523.P3735353500820649631

`A135042(2*n+1)-A315183(n)`
-/

namespace A310523.P3735353500820649631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315183 n

end

end A310523.P3735353500820649631

namespace A310523

/-- `A135042(2*n+1)-A315183(n)` -/
def P3735353500820649631.Spec : Prop :=
  ∀ n, P3735353500820649631.a n = A310523 n

end A310523

/-! ## A310523.P13432556291503856818

`A184418(A008574(n))-A315183(n)`
-/

namespace A310523.P13432556291503856818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315183 n

end

end A310523.P13432556291503856818

namespace A310523

/-- `A184418(A008574(n))-A315183(n)` -/
def P13432556291503856818.Spec : Prop :=
  ∀ n, P13432556291503856818.a n = A310523 n

end A310523

/-! ## A310523.P1228704101561261252

`A008458(n)+A008574(n)-A315183(n)`
-/

namespace A310523.P1228704101561261252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315183 n)

end

end A310523.P1228704101561261252

namespace A310523

/-- `A008458(n)+A008574(n)-A315183(n)` -/
def P1228704101561261252.Spec : Prop :=
  ∀ n, P1228704101561261252.a n = A310523 n

end A310523

/-! ## A310523.P14412418143169971557

`A310374(n)+A005843(A310456(n)-A310374(n))`
-/

namespace A310523.P14412418143169971557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310374 n + A005843 (A310456 n - A310374 n).toNat

end

end A310523.P14412418143169971557

namespace A310523

/-- `A310374(n)+A005843(A310456(n)-A310374(n))` -/
def P14412418143169971557.Spec : Prop :=
  ∀ n, P14412418143169971557.a n = A310523 n

end A310523

/-! ## A310523.P1595261485507921307

`A005843(A313113(n))-A311262(n)`
-/

namespace A310523.P1595261485507921307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313113 n).toNat - A311262 n

end

end A310523.P1595261485507921307

namespace A310523

/-- `A005843(A313113(n))-A311262(n)` -/
def P1595261485507921307.Spec : Prop :=
  ∀ n, P1595261485507921307.a n = A310523 n

end A310523

/-! ## A310523.P9957531683758449921

`A005843(A310456(n))-A310374(n)`
-/

namespace A310523.P9957531683758449921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310456 n).toNat - A310374 n

end

end A310523.P9957531683758449921

namespace A310523

/-- `A005843(A310456(n))-A310374(n)` -/
def P9957531683758449921.Spec : Prop :=
  ∀ n, P9957531683758449921.a n = A310523 n

end A310523

/-! ## A310523.P10790186576055223290

`A005843(A008706(n))-A315183(n)`
-/

namespace A310523.P10790186576055223290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315183 n

end

end A310523.P10790186576055223290

namespace A310523

/-- `A005843(A008706(n))-A315183(n)` -/
def P10790186576055223290.Spec : Prop :=
  ∀ n, P10790186576055223290.a n = A310523 n

end A310523

/-! ## A310523.P9600710654944837060

`A065502(A008458(n))-A315183(n)`
-/

namespace A310523.P9600710654944837060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315183 n

end

end A310523.P9600710654944837060

namespace A310523

/-- `A065502(A008458(n))-A315183(n)` -/
def P9600710654944837060.Spec : Prop :=
  ∀ n, P9600710654944837060.a n = A310523 n

end A310523

/-! ## A310523.P15917177868904977008

`A312685(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A310523.P15917177868904977008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A310523.P15917177868904977008

namespace A310523

/-- `A312685(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P15917177868904977008.Spec : Prop :=
  ∀ n, P15917177868904977008.a n = (A310523 n : ℚ)

end A310523

/-! ## A310523.P16454294408016790958

`A313929(2*n)+n-7*n`
-/

namespace A310523.P16454294408016790958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313929 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A310523.P16454294408016790958

namespace A310523

/-- `A313929(2*n)+n-7*n` -/
def P16454294408016790958.Spec : Prop :=
  ∀ n, P16454294408016790958.a n = A310523 n

end A310523

/-! ## A310523.P903957039723200271

`A004525(A312685(2*n))`
-/

namespace A310523.P903957039723200271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312685 (2 * n)).toNat

end

end A310523.P903957039723200271

namespace A310523

/-- `A004525(A312685(2*n))` -/
def P903957039723200271.Spec : Prop :=
  ∀ n, P903957039723200271.a n = A310523 n

end A310523

/-! ## A310523.P6868081563543593338

`A004526(A312685(2*n)+1)`
-/

namespace A310523.P6868081563543593338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312685 (2 * n) + 1).toNat

end

end A310523.P6868081563543593338

namespace A310523

/-- `A004526(A312685(2*n)+1)` -/
def P6868081563543593338.Spec : Prop :=
  ∀ n, P6868081563543593338.a n = A310523 n

end A310523

/-! ## A310523.P13021616952248098519

`A004396(A313296(2*n))-A005843(n)`
-/

namespace A310523.P13021616952248098519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313296 (2 * n)).toNat - A005843 n

end

end A310523.P13021616952248098519

namespace A310523

/-- `A004396(A313296(2*n))-A005843(n)` -/
def P13021616952248098519.Spec : Prop :=
  ∀ n, P13021616952248098519.a n = A310523 n

end A310523

/-! ## A310523.P15543986053313242885

`A233583(A017281(n))-A315183(n)`
-/

namespace A310523.P15543986053313242885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315183 n

end

end A310523.P15543986053313242885

namespace A310523

/-- `A233583(A017281(n))-A315183(n)` -/
def P15543986053313242885.Spec : Prop :=
  ∀ n, P15543986053313242885.a n = A310523 n

end A310523

/-!
# A310524: Coordination sequence Gal.6.356.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310524, the canonical program `A310524.P4933406775284647162` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310524 has offset 0).

The definition of A310524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310524.P4933406775284647162

`A314124(n)-A128834(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A310524

/-- `A314124(n)-A128834(n)` -/
def P4933406775284647162.Spec : Prop :=
  ∀ n, P4933406775284647162.a n = A310524 n

theorem P4933406775284647162.correct : P4933406775284647162.Spec := by
  intro n
  simp only [A310524]

end A310524

/-! ## A310524.P13076140516138154459

`abs(A008592(n)-A315182(n))`
-/

namespace A310524.P13076140516138154459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315182 n|

end

end A310524.P13076140516138154459

namespace A310524

/-- `abs(A008592(n)-A315182(n))` -/
def P13076140516138154459.Spec : Prop :=
  ∀ n, P13076140516138154459.a n = A310524 n

end A310524

/-! ## A310524.P5243840731621932005

`A313145(n)+∑[A021913(n)]`
-/

namespace A310524.P5243840731621932005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310524.P5243840731621932005

namespace A310524

/-- `A313145(n)+∑[A021913(n)]` -/
def P5243840731621932005.Spec : Prop :=
  ∀ n, P5243840731621932005.a n = A310524 n

end A310524

/-! ## A310524.P4032263247247391001

`A313099(n)+∑[A131735(n)]`
-/

namespace A310524.P4032263247247391001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310524.P4032263247247391001

namespace A310524

/-- `A313099(n)+∑[A131735(n)]` -/
def P4032263247247391001.Spec : Prop :=
  ∀ n, P4032263247247391001.a n = A310524 n

end A310524

/-! ## A310524.P4757737747201891579

`A313145(n)+Δ[A011848(n)]`
-/

namespace A310524.P4757737747201891579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n + (f1 (n + 1) - f1 n)

end

end A310524.P4757737747201891579

namespace A310524

/-- `A313145(n)+Δ[A011848(n)]` -/
def P4757737747201891579.Spec : Prop :=
  ∀ n, P4757737747201891579.a n = A310524 n

end A310524

/-! ## A310524.P15305041979320720743

`A314124(n)+A010892(n+2)`
-/

namespace A310524.P15305041979320720743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n + A010892 (n + 2)

end

end A310524.P15305041979320720743

namespace A310524

/-- `A314124(n)+A010892(n+2)` -/
def P15305041979320720743.Spec : Prop :=
  ∀ n, P15305041979320720743.a n = A310524 n

end A310524

/-! ## A310524.P10803838477326051494

`A313280(n)+A004396(n-A004525(n))`
-/

namespace A310524.P10803838477326051494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A310524.P10803838477326051494

namespace A310524

/-- `A313280(n)+A004396(n-A004525(n))` -/
def P10803838477326051494.Spec : Prop :=
  ∀ n, P10803838477326051494.a n = A310524 n

end A310524

/-! ## A310524.P7531246904479067860

`A008458(n)+A008574(n)-A315182(n)`
-/

namespace A310524.P7531246904479067860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315182 n)

end

end A310524.P7531246904479067860

namespace A310524

/-- `A008458(n)+A008574(n)-A315182(n)` -/
def P7531246904479067860.Spec : Prop :=
  ∀ n, P7531246904479067860.a n = A310524 n

end A310524

/-! ## A310524.P558084807265522247

`A004525(n)+A310511(n)-A004396(A004525(n))`
-/

namespace A310524.P558084807265522247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310511 n - A004396 (A004525 n).toNat)

end

end A310524.P558084807265522247

namespace A310524

/-- `A004525(n)+A310511(n)-A004396(A004525(n))` -/
def P558084807265522247.Spec : Prop :=
  ∀ n, P558084807265522247.a n = A310524 n

end A310524

/-! ## A310524.P6235020590665944025

`A314240(n)-A004525(A004396(n))`
-/

namespace A310524.P6235020590665944025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A004525 (A004396 n).toNat

end

end A310524.P6235020590665944025

namespace A310524

/-- `A314240(n)-A004525(A004396(n))` -/
def P6235020590665944025.Spec : Prop :=
  ∀ n, P6235020590665944025.a n = A310524 n

end A310524

/-! ## A310524.P3466017011517918563

`A314247(n)-A004396(A004525(n))`
-/

namespace A310524.P3466017011517918563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004396 (A004525 n).toNat

end

end A310524.P3466017011517918563

namespace A310524

/-- `A314247(n)-A004396(A004525(n))` -/
def P3466017011517918563.Spec : Prop :=
  ∀ n, P3466017011517918563.a n = A310524 n

end A310524

/-! ## A310524.P14407271138938263021

`∏{d}[A008592(n)-A315182(n), A014963(#)]`
-/

namespace A310524.P14407271138938263021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A310524.P14407271138938263021

namespace A310524

/-- `∏{d}[A008592(n)-A315182(n), A014963(#)]` -/
def P14407271138938263021.Spec : Prop :=
  ∀ n, P14407271138938263021.a n = A310524 n

end A310524

/-!
# A310525: Coordination sequence Gal.4.74.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310525, the canonical program `A310525.P5831325578290002764` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310525 has offset 0).

The definition of A310525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310525.P17707686610561724585

`A219529(n)-round(sin(n%6))`
-/

namespace A310525.P17707686610561724585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A310525.P17707686610561724585

namespace A310525

/-- `A219529(n)-round(sin(n%6))` -/
def P17707686610561724585.Spec : Prop :=
  ∀ n, P17707686610561724585.a n = A310525 n

end A310525

/-! ## A310525.P5831325578290002764

`A219529(n)-A128834(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310525

/-- `A219529(n)-A128834(n)` -/
def P5831325578290002764.Spec : Prop :=
  ∀ n, P5831325578290002764.a n = A310525 n

theorem P5831325578290002764.correct : P5831325578290002764.Spec := by
  intro n
  simp only [A310525]

end A310525

/-! ## A310525.P286582592996139508

`A301694(n)-2*A134667(n)`
-/

namespace A310525.P286582592996139508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - 2 * A134667 n

end

end A310525.P286582592996139508

namespace A310525

/-- `A301694(n)-2*A134667(n)` -/
def P286582592996139508.Spec : Prop :=
  ∀ n, P286582592996139508.a n = A310525 n

end A310525

/-! ## A310525.P10730592510841756602

`A008574(n)+∑[2*A131735(n)]`
-/

namespace A310525.P10730592510841756602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310525.P10730592510841756602

namespace A310525

/-- `A008574(n)+∑[2*A131735(n)]` -/
def P10730592510841756602.Spec : Prop :=
  ∀ n, P10730592510841756602.a n = A310525 n

end A310525

/-! ## A310525.P18364747240320040031

`A219529(n)+A010892(n+2)`
-/

namespace A310525.P18364747240320040031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A010892 (n + 2)

end

end A310525.P18364747240320040031

namespace A310525

/-- `A219529(n)+A010892(n+2)` -/
def P18364747240320040031.Spec : Prop :=
  ∀ n, P18364747240320040031.a n = A310525 n

end A310525

/-! ## A310525.P10483940651769808880

`A219529(n)-A046978(2*A004396(n))`
-/

namespace A310525.P10483940651769808880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A046978 (2 * A004396 n).toNat

end

end A310525.P10483940651769808880

namespace A310525

/-- `A219529(n)-A046978(2*A004396(n))` -/
def P10483940651769808880.Spec : Prop :=
  ∀ n, P10483940651769808880.a n = A310525 n

end A310525

/-! ## A310525.P3262403968668938853

`A008576(2*n)-A128834(n)`
-/

namespace A310525.P3262403968668938853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A128834 n

end

end A310525.P3262403968668938853

namespace A310525

/-- `A008576(2*n)-A128834(n)` -/
def P3262403968668938853.Spec : Prop :=
  ∀ n, P3262403968668938853.a n = A310525 n

end A310525

/-! ## A310525.P16602917396648123449

`A010892(n+2)+A008576(2*n)`
-/

namespace A310525.P16602917396648123449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2) + A008576 (2 * n)

end

end A310525.P16602917396648123449

namespace A310525

/-- `A010892(n+2)+A008576(2*n)` -/
def P16602917396648123449.Spec : Prop :=
  ∀ n, P16602917396648123449.a n = A310525 n

end A310525

/-! ## A310525.P12523196115818597278

`2*A008574(2*n)-A315683(2*n)`
-/

namespace A310525.P12523196115818597278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315683 (2 * n)

end

end A310525.P12523196115818597278

namespace A310525

/-- `2*A008574(2*n)-A315683(2*n)` -/
def P12523196115818597278.Spec : Prop :=
  ∀ n, P12523196115818597278.a n = A310525 n

end A310525

/-! ## A310525.P924425948655318961

`2*A008574(2*n)-A315688(2*n)`
-/

namespace A310525.P924425948655318961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315688 (2 * n)

end

end A310525.P924425948655318961

namespace A310525

/-- `2*A008574(2*n)-A315688(2*n)` -/
def P924425948655318961.Spec : Prop :=
  ∀ n, P924425948655318961.a n = A310525 n

end A310525

/-! ## A310525.P13966414359153411581

`A004277(4*n+2-A047571(n+2))`
-/

namespace A310525.P13966414359153411581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((4 * n + 2 : ℤ) - A047571 (n + 2)).toNat

end

end A310525.P13966414359153411581

namespace A310525

/-- `A004277(4*n+2-A047571(n+2))` -/
def P13966414359153411581.Spec : Prop :=
  ∀ n, P13966414359153411581.a n = A310525 n

end A310525

/-! ## A310525.P12254670328410863477

`A004275(4*n+1-A047424(n+1))`
-/

namespace A310525.P12254670328410863477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ((4 * n + 1 : ℤ) - A047424 (n + 1)).toNat

end

end A310525.P12254670328410863477

namespace A310525

/-- `A004275(4*n+1-A047424(n+1))` -/
def P12254670328410863477.Spec : Prop :=
  ∀ n, P12254670328410863477.a n = A310525 n

end A310525

/-! ## A310525.P7062328595851916623

`2*A313110(n)-A008574(n)`
-/

namespace A310525.P7062328595851916623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313110 n - A008574 n

end

end A310525.P7062328595851916623

namespace A310525

/-- `2*A313110(n)-A008574(n)` -/
def P7062328595851916623.Spec : Prop :=
  ∀ n, P7062328595851916623.a n = A310525 n

end A310525

/-! ## A310525.P4190360464257474761

`A313110(n)+∑[A131736(n)²]`
-/

namespace A310525.P4190360464257474761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310525.P4190360464257474761

namespace A310525

/-- `A313110(n)+∑[A131736(n)²]` -/
def P4190360464257474761.Spec : Prop :=
  ∀ n, P4190360464257474761.a n = A310525 n

end A310525

/-! ## A310525.P17587958519285075632

`A313280(n)+∑[A022003(n)]`
-/

namespace A310525.P17587958519285075632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310525.P17587958519285075632

namespace A310525

/-- `A313280(n)+∑[A022003(n)]` -/
def P17587958519285075632.Spec : Prop :=
  ∀ n, P17587958519285075632.a n = A310525 n

end A310525

/-! ## A310525.P17701415296778498252

`A313280(n)+n-A004396(n)`
-/

namespace A310525.P17701415296778498252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + ((n : ℤ) - A004396 n)

end

end A310525.P17701415296778498252

namespace A310525

/-- `A313280(n)+n-A004396(n)` -/
def P17701415296778498252.Spec : Prop :=
  ∀ n, P17701415296778498252.a n = A310525 n

end A310525

/-! ## A310525.P5195303193629473993

`A008486(n)+A313280(n)-A008576(n)`
-/

namespace A310525.P5195303193629473993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313280 n - A008576 n)

end

end A310525.P5195303193629473993

namespace A310525

/-- `A008486(n)+A313280(n)-A008576(n)` -/
def P5195303193629473993.Spec : Prop :=
  ∀ n, P5195303193629473993.a n = A310525 n

end A310525

/-! ## A310525.P4501721080332971428

`A301697(n)-A134667(n)`
-/

namespace A310525.P4501721080332971428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A134667 n

end

end A310525.P4501721080332971428

namespace A310525

/-- `A301697(n)-A134667(n)` -/
def P4501721080332971428.Spec : Prop :=
  ∀ n, P4501721080332971428.a n = A310525 n

end A310525

/-! ## A310525.P8705775080626116508

`2*A301697(n)-A301694(n)`
-/

namespace A310525.P8705775080626116508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301697 n - A301694 n

end

end A310525.P8705775080626116508

namespace A310525

/-- `2*A301697(n)-A301694(n)` -/
def P8705775080626116508.Spec : Prop :=
  ∀ n, P8705775080626116508.a n = A310525 n

end A310525

/-!
# A310526: Coordination sequence Gal.6.332.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310526, the canonical program `A310526.P8794290420324191919` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310526 has offset 0).

The definition of A310526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310526.P18113765239118203389

`abs(A008592(n)-A315177(n))`
-/

namespace A310526.P18113765239118203389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315177 n|

end

end A310526.P18113765239118203389

namespace A310526

/-- `abs(A008592(n)-A315177(n))` -/
def P18113765239118203389.Spec : Prop :=
  ∀ n, P18113765239118203389.a n = A310526 n

end A310526

/-! ## A310526.P8794290420324191919

`2*A313113(n)-A008574(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A310526

/-- `2*A313113(n)-A008574(n)` -/
def P8794290420324191919.Spec : Prop :=
  ∀ n, P8794290420324191919.a n = A310526 n

theorem P8794290420324191919.correct : P8794290420324191919.Spec := by
  intro n
  simp only [A310526]

end A310526

/-! ## A310526.P2596751432620564515

`2*A008706(n)-A315177(n)`
-/

namespace A310526.P2596751432620564515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315177 n

end

end A310526.P2596751432620564515

namespace A310526

/-- `2*A008706(n)-A315177(n)` -/
def P2596751432620564515.Spec : Prop :=
  ∀ n, P2596751432620564515.a n = A310526 n

end A310526

/-! ## A310526.P10275163043045441900

`A135042(Δ[n²])-A315177(n)`
-/

namespace A310526.P10275163043045441900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A315177 n

end

end A310526.P10275163043045441900

namespace A310526

/-- `A135042(Δ[n²])-A315177(n)` -/
def P10275163043045441900.Spec : Prop :=
  ∀ n, P10275163043045441900.a n = A310526 n

end A310526

/-! ## A310526.P2296741658190003008

`A004275(A313113(n)-A004273(n))`
-/

namespace A310526.P2296741658190003008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313113 n - A004273 n).toNat

end

end A310526.P2296741658190003008

namespace A310526

/-- `A004275(A313113(n)-A004273(n))` -/
def P2296741658190003008.Spec : Prop :=
  ∀ n, P2296741658190003008.a n = A310526 n

end A310526

/-! ## A310526.P5013098505208554866

`A008458(n)+A008574(n)-A315177(n)`
-/

namespace A310526.P5013098505208554866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315177 n)

end

end A310526.P5013098505208554866

namespace A310526

/-- `A008458(n)+A008574(n)-A315177(n)` -/
def P5013098505208554866.Spec : Prop :=
  ∀ n, P5013098505208554866.a n = A310526 n

end A310526

/-! ## A310526.P851946747438080506

`A004273(A313113(n)-n)-A004273(n)`
-/

namespace A310526.P851946747438080506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313113 n - (n : ℤ)).toNat - A004273 n

end

end A310526.P851946747438080506

namespace A310526

/-- `A004273(A313113(n)-n)-A004273(n)` -/
def P851946747438080506.Spec : Prop :=
  ∀ n, P851946747438080506.a n = A310526 n

end A310526

/-! ## A310526.P6961274904872253370

`∑{d}[A008592(n)-A315177(n), A000010(#)]`
-/

namespace A310526.P6961274904872253370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310526.P6961274904872253370

namespace A310526

/-- `∑{d}[A008592(n)-A315177(n), A000010(#)]` -/
def P6961274904872253370.Spec : Prop :=
  ∀ n, P6961274904872253370.a n = A310526 n

end A310526

/-! ## A310526.P9646805466189633226

`A008574(n)+A005843(A313113(n)-A008574(n))`
-/

namespace A310526.P9646805466189633226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313113 n - A008574 n).toNat

end

end A310526.P9646805466189633226

namespace A310526

/-- `A008574(n)+A005843(A313113(n)-A008574(n))` -/
def P9646805466189633226.Spec : Prop :=
  ∀ n, P9646805466189633226.a n = A310526 n

end A310526

/-! ## A310526.P17141938303968221832

`A314244(n)-A004525(A314244(n)-A310523(n))`
-/

namespace A310526.P17141938303968221832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314244 n - A004525 (A314244 n - A310523 n).toNat

end

end A310526.P17141938303968221832

namespace A310526

/-- `A314244(n)-A004525(A314244(n)-A310523(n))` -/
def P17141938303968221832.Spec : Prop :=
  ∀ n, P17141938303968221832.a n = A310526 n

end A310526

/-! ## A310526.P3003190915068751726

`A005843(A313113(n))-A008574(n)`
-/

namespace A310526.P3003190915068751726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313113 n).toNat - A008574 n

end

end A310526.P3003190915068751726

namespace A310526

/-- `A005843(A313113(n))-A008574(n)` -/
def P3003190915068751726.Spec : Prop :=
  ∀ n, P3003190915068751726.a n = A310526 n

end A310526

/-! ## A310526.P4606101109242750535

`A004275(A313113(n))-A004275(2*n)`
-/

namespace A310526.P4606101109242750535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313113 n).toNat - A004275 (2 * n)

end

end A310526.P4606101109242750535

namespace A310526

/-- `A004275(A313113(n))-A004275(2*n)` -/
def P4606101109242750535.Spec : Prop :=
  ∀ n, P4606101109242750535.a n = A310526 n

end A310526

/-! ## A310526.P5070257458519713996

`A005843(A313113(n))+n-A008706(n)`
-/

namespace A310526.P5070257458519713996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313113 n).toNat + ((n : ℤ) - A008706 n)

end

end A310526.P5070257458519713996

namespace A310526

/-- `A005843(A313113(n))+n-A008706(n)` -/
def P5070257458519713996.Spec : Prop :=
  ∀ n, P5070257458519713996.a n = A310526 n

end A310526

/-! ## A310526.P15118295005935112785

`A005843(A008706(n))-A315177(n)`
-/

namespace A310526.P15118295005935112785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315177 n

end

end A310526.P15118295005935112785

namespace A310526

/-- `A005843(A008706(n))-A315177(n)` -/
def P15118295005935112785.Spec : Prop :=
  ∀ n, P15118295005935112785.a n = A310526 n

end A310526

/-! ## A310526.P354919057523711326

`2*A311932(2*n)-A008458(2*n)`
-/

namespace A310526.P354919057523711326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311932 (2 * n) - A008458 (2 * n)

end

end A310526.P354919057523711326

namespace A310526

/-- `2*A311932(2*n)-A008458(2*n)` -/
def P354919057523711326.Spec : Prop :=
  ∀ n, P354919057523711326.a n = A310526 n

end A310526

/-! ## A310526.P10003630336842781043

`2*A008574(2*n)-A315645(2*n)`
-/

namespace A310526.P10003630336842781043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315645 (2 * n)

end

end A310526.P10003630336842781043

namespace A310526

/-- `2*A008574(2*n)-A315645(2*n)` -/
def P10003630336842781043.Spec : Prop :=
  ∀ n, P10003630336842781043.a n = A310526 n

end A310526

/-! ## A310526.P6163522266821314926

`A312556(2*n)-4*n`
-/

namespace A310526.P6163522266821314926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 (2 * n) - (4 * n : ℤ)

end

end A310526.P6163522266821314926

namespace A310526

/-- `A312556(2*n)-4*n` -/
def P6163522266821314926.Spec : Prop :=
  ∀ n, P6163522266821314926.a n = A310526 n

end A310526

/-!
# A310527: Coordination sequence Gal.6.556.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310527, there is no canonical definition to state claims against.
-/

/-! ## A310527.P7380946249227106763

`∑[A275925(A027612(n+1))]-2`
-/

namespace A310527.P7380946249227106763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (A027612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A310527.P7380946249227106763

/-! ## A310527.P7680494395766228301

`A313286(n)+A001221(A020543(n))`
-/

namespace A310527.P7680494395766228301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313286 n + A001221 (A020543 n).toNat

end

end A310527.P7680494395766228301

/-! ## A310527.P3105080438253375296

`A310528(n)-A185284(A310642(n))`
-/

namespace A310527.P3105080438253375296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310528 n - A185284 (A310642 n).toNat

end

end A310527.P3105080438253375296

/-! ## A310527.P11131617537965193260

`A310528(n)-A185284(A315006(n))`
-/

namespace A310527.P11131617537965193260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310528 n - A185284 (A315006 n).toNat

end

end A310527.P11131617537965193260

/-! ## A310527.P13506301339281940620

`A313288(n)+A023969(A090741(n+1))`
-/

namespace A310527.P13506301339281940620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313288 n + A023969 (A090741 (n + 1)).toNat

end

end A310527.P13506301339281940620

/-!
# A310528: Coordination sequence Gal.5.215.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310528, there is no canonical definition to state claims against.
-/

/-! ## A310528.P12470329604876724443

`A310525(n)+A185203(A133367(n))`
-/

namespace A310528.P12470329604876724443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + A185203 (A133367 n).toNat

end

end A310528.P12470329604876724443

/-! ## A310528.P9543395455969844085

`A310524(n)+A129186(A090721(n+1))`
-/

namespace A310528.P9543395455969844085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310524 n + A129186 (A090721 (n + 1)).toNat

end

end A310528.P9543395455969844085

/-! ## A310528.P771737573090184468

`A310525(n)+A102683(A319038(2*n+1))`
-/

namespace A310528.P771737573090184468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + A102683 (A319038 (2 * n + 1)).toNat

end

end A310528.P771737573090184468

/-! ## A310528.P10139142899245768538

`A310525(n)+A011745(A045903(n))`
-/

namespace A310528.P10139142899245768538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + A011745 (A045903 n).toNat

end

end A310528.P10139142899245768538

/-! ## A310528.P1649801813605031003

`A301726(n)+A010892(A099035(n+2))`
-/

namespace A310528.P1649801813605031003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + A010892 (A099035 (n + 2)).toNat

end

end A310528.P1649801813605031003

/-!
# A310529: Coordination sequence Gal.4.75.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310529, the canonical program `A310529.P1230697940831985805` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310529 has offset 0).

The definition of A310529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310529.P1230697940831985805

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=16, a(4)=22, a(5)=28, a(6)=34, a(7)=38, a(8)=42`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310529

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P1230697940831985805.Spec : Prop :=
  ∀ n, P1230697940831985805.a n = A310529 n

theorem P1230697940831985805.correct : P1230697940831985805.Spec := by
  intro n
  simp only [A310529]

end A310529

/-! ## A310529.P9649976214040826594

`A004277(n)+2*A191275(n+1)`
-/

namespace A310529.P9649976214040826594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A191275 (n + 1)

end

end A310529.P9649976214040826594

namespace A310529

/-- `A004277(n)+2*A191275(n+1)` -/
def P9649976214040826594.Spec : Prop :=
  ∀ n, P9649976214040826594.a n = A310529 n

end A310529

/-! ## A310529.P18359610057778023149

`A005843(A191275(n+1))+A004277(n)`
-/

namespace A310529.P18359610057778023149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A191275 (n + 1)).toNat + A004277 n

end

end A310529.P18359610057778023149

namespace A310529

/-- `A005843(A191275(n+1))+A004277(n)` -/
def P18359610057778023149.Spec : Prop :=
  ∀ n, P18359610057778023149.a n = A310529 n

end A310529

/-! ## A310529.P15669184789607952230

`(A008574(A191275(n+1))+A008574(n))/2`
-/

namespace A310529.P15669184789607952230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A191275 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A310529.P15669184789607952230

namespace A310529

/-- `(A008574(A191275(n+1))+A008574(n))/2` -/
def P15669184789607952230.Spec : Prop :=
  ∀ n, P15669184789607952230.a n = (A310529 n : ℚ)

end A310529

/-! ## A310529.P9514349988032986166

`A004277(A191275(n+1)+n)`
-/

namespace A310529.P9514349988032986166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A191275 (n + 1) + (n : ℤ)).toNat

end

end A310529.P9514349988032986166

namespace A310529

/-- `A004277(A191275(n+1)+n)` -/
def P9514349988032986166.Spec : Prop :=
  ∀ n, P9514349988032986166.a n = A310529 n

end A310529

/-! ## A310529.P3238962294905343932

`A004275(A191275(n+1)+1+n)`
-/

namespace A310529.P3238962294905343932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A191275 (n + 1) + 1 + (n : ℤ)).toNat

end

end A310529.P3238962294905343932

namespace A310529

/-- `A004275(A191275(n+1)+1+n)` -/
def P3238962294905343932.Spec : Prop :=
  ∀ n, P3238962294905343932.a n = A310529 n

end A310529

/-! ## A310529.P18284260698213593561

`abs(A008592(n)-A315175(n))`
-/

namespace A310529.P18284260698213593561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315175 n|

end

end A310529.P18284260698213593561

namespace A310529

/-- `abs(A008592(n)-A315175(n))` -/
def P18284260698213593561.Spec : Prop :=
  ∀ n, P18284260698213593561.a n = A310529 n

end A310529

/-! ## A310529.P12153937517016211772

`2*A008706(n)-A315175(n)`
-/

namespace A310529.P12153937517016211772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315175 n

end

end A310529.P12153937517016211772

namespace A310529

/-- `2*A008706(n)-A315175(n)` -/
def P12153937517016211772.Spec : Prop :=
  ∀ n, P12153937517016211772.a n = A310529 n

end A310529

/-! ## A310529.P13908644947334126598

`A008458(n)+A008574(n)-A315175(n)`
-/

namespace A310529.P13908644947334126598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315175 n)

end

end A310529.P13908644947334126598

namespace A310529

/-- `A008458(n)+A008574(n)-A315175(n)` -/
def P13908644947334126598.Spec : Prop :=
  ∀ n, P13908644947334126598.a n = A310529 n

end A310529

/-! ## A310529.P11289321898146959666

`A315339(n)-2*A238469(n)`
-/

namespace A310529.P11289321898146959666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n - 2 * A238469 n

end

end A310529.P11289321898146959666

namespace A310529

/-- `A315339(n)-2*A238469(n)` -/
def P11289321898146959666.Spec : Prop :=
  ∀ n, P11289321898146959666.a n = A310529 n

end A310529

/-! ## A310529.P8083388570147599494

`A314135(n)-A128834(n)`
-/

namespace A310529.P8083388570147599494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314135 n - A128834 n

end

end A310529.P8083388570147599494

namespace A310529

/-- `A314135(n)-A128834(n)` -/
def P8083388570147599494.Spec : Prop :=
  ∀ n, P8083388570147599494.a n = A310529 n

theorem P8083388570147599494.correct : P8083388570147599494.Spec := by
  intro n
  simp only [A310529, Nat.add_sub_cancel, A310529.P8083388570147599494.a, A310529.P1230697940831985805.a, A128834, A128834.P16779687439637953687.a, A314135, A314135.P657271170897302408.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310529

/-! ## A310529.P10239488873797944724

`A314135(n)+A010892(n+2)`
-/

namespace A310529.P10239488873797944724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314135 n + A010892 (n + 2)

end

end A310529.P10239488873797944724

namespace A310529

/-- `A314135(n)+A010892(n+2)` -/
def P10239488873797944724.Spec : Prop :=
  ∀ n, P10239488873797944724.a n = A310529 n

end A310529

/-! ## A310529.P11199918814645657787

`A313923(n)-A238469(n)`
-/

namespace A310529.P11199918814645657787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A238469 n

end

end A310529.P11199918814645657787

namespace A310529

/-- `A313923(n)-A238469(n)` -/
def P11199918814645657787.Spec : Prop :=
  ∀ n, P11199918814645657787.a n = A310529 n

theorem P11199918814645657787.correct : P11199918814645657787.Spec := by
  intro n
  simp only [A310529, Nat.add_sub_cancel, A310529.P11199918814645657787.a, A310529.P1230697940831985805.a, A238469, A238469.P12053234808981461841.a, A313923, A313923.P4927546755448951901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310529

/-! ## A310529.P420459885309859755

`A313923(n)-A238470(2*n)`
-/

namespace A310529.P420459885309859755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A238470 (2 * n)

end

end A310529.P420459885309859755

namespace A310529

/-- `A313923(n)-A238470(2*n)` -/
def P420459885309859755.Spec : Prop :=
  ∀ n, P420459885309859755.a n = A310529 n

end A310529

/-! ## A310529.P3202571915771813

`2*A314249(n)-A008458(n)`
-/

namespace A310529.P3202571915771813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314249 n - A008458 n

end

end A310529.P3202571915771813

namespace A310529

/-- `2*A314249(n)-A008458(n)` -/
def P3202571915771813.Spec : Prop :=
  ∀ n, P3202571915771813.a n = A310529 n

end A310529

/-! ## A310529.P6094056063574253314

`A004277(A314249(n)-(A004277(n)+n))`
-/

namespace A310529.P6094056063574253314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314249 n - (A004277 n + (n : ℤ))).toNat

end

end A310529.P6094056063574253314

namespace A310529

/-- `A004277(A314249(n)-(A004277(n)+n))` -/
def P6094056063574253314.Spec : Prop :=
  ∀ n, P6094056063574253314.a n = A310529 n

end A310529

/-! ## A310529.P2633201441897152106

`A004277(A314249(n)-n-A004277(n))`
-/

namespace A310529.P2633201441897152106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314249 n - (n : ℤ) - A004277 n).toNat

end

end A310529.P2633201441897152106

namespace A310529

/-- `A004277(A314249(n)-n-A004277(n))` -/
def P2633201441897152106.Spec : Prop :=
  ∀ n, P2633201441897152106.a n = A310529 n

end A310529

/-! ## A310529.P11306598447580145364

`A008458(n)-A005843(A008458(n)-A314249(n))`
-/

namespace A310529.P11306598447580145364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314249 n).toNat

end

end A310529.P11306598447580145364

namespace A310529

/-- `A008458(n)-A005843(A008458(n)-A314249(n))` -/
def P11306598447580145364.Spec : Prop :=
  ∀ n, P11306598447580145364.a n = A310529 n

end A310529

/-! ## A310529.P12446941009549533726

`A005843(A008706(n))-A315175(n)`
-/

namespace A310529.P12446941009549533726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315175 n

end

end A310529.P12446941009549533726

namespace A310529

/-- `A005843(A008706(n))-A315175(n)` -/
def P12446941009549533726.Spec : Prop :=
  ∀ n, P12446941009549533726.a n = A310529 n

end A310529

/-! ## A310529.P9330286459633479523

`A028310(2*(A191275(n+1)+n))`
-/

namespace A310529.P9330286459633479523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * (A191275 (n + 1) + (n : ℤ))).toNat

end

end A310529.P9330286459633479523

namespace A310529

/-- `A028310(2*(A191275(n+1)+n))` -/
def P9330286459633479523.Spec : Prop :=
  ∀ n, P9330286459633479523.a n = A310529 n

end A310529

/-!
# A310530: Coordination sequence Gal.5.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310530, the canonical program `A310530.P10773156038924726472` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310530 has offset 0).

The definition of A310530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310530.P10773156038924726472

`A008458(n)-2*A004525(A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310530

/-- `A008458(n)-2*A004525(A004525(n))` -/
def P10773156038924726472.Spec : Prop :=
  ∀ n, P10773156038924726472.a n = A310530 n

theorem P10773156038924726472.correct : P10773156038924726472.Spec := by
  intro n
  simp only [A310530]

end A310530

/-! ## A310530.P14113725890286024499

`A311625(n)+∑[and(2, n)]`
-/

namespace A310530.P14113725890286024499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A310530.P14113725890286024499

namespace A310530

/-- `A311625(n)+∑[and(2, n)]` -/
def P14113725890286024499.Spec : Prop :=
  ∀ n, P14113725890286024499.a n = A310530 n

end A310530

/-! ## A310530.P12189754250805411981

`A311625(n)+A201629(n)`
-/

namespace A310530.P12189754250805411981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A201629 n

end

end A310530.P12189754250805411981

namespace A310530

/-- `A311625(n)+A201629(n)` -/
def P12189754250805411981.Spec : Prop :=
  ∀ n, P12189754250805411981.a n = A310530 n

end A310530

/-! ## A310530.P2528098546267205592

`A311625(n)+Δ[2*A011848(n)]`
-/

namespace A310530.P2528098546267205592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A310530.P2528098546267205592

namespace A310530

/-- `A311625(n)+Δ[2*A011848(n)]` -/
def P2528098546267205592.Spec : Prop :=
  ∀ n, P2528098546267205592.a n = A310530 n

end A310530

/-! ## A310530.P8236249257466710818

`abs(A008592(n)-A315173(n))`
-/

namespace A310530.P8236249257466710818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315173 n|

end

end A310530.P8236249257466710818

namespace A310530

/-- `abs(A008592(n)-A315173(n))` -/
def P8236249257466710818.Spec : Prop :=
  ∀ n, P8236249257466710818.a n = A310530 n

end A310530

/-! ## A310530.P1717382938807818397

`2*A008706(n)-A315173(n)`
-/

namespace A310530.P1717382938807818397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315173 n

end

end A310530.P1717382938807818397

namespace A310530

/-- `2*A008706(n)-A315173(n)` -/
def P1717382938807818397.Spec : Prop :=
  ∀ n, P1717382938807818397.a n = A310530 n

end A310530

/-! ## A310530.P327982073107613825

`A008458(n)+A008574(n)-A315173(n)`
-/

namespace A310530.P327982073107613825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315173 n)

end

end A310530.P327982073107613825

namespace A310530

/-- `A008458(n)+A008574(n)-A315173(n)` -/
def P327982073107613825.Spec : Prop :=
  ∀ n, P327982073107613825.a n = A310530 n

theorem P327982073107613825.correct : P327982073107613825.Spec := by
  intro n
  simp only [A310530, Nat.add_sub_cancel, A310530.P327982073107613825.a, A310530.P10773156038924726472.a, A004525, A004525.P4158271949796742323.a, A008458, A008458.P10936398443463225625.a, A008574, A008574.P1300280032690682112.a, A315173, A315173.P10729502057905342118.a, A314672, A314672.P11952212366419125291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A310530

/-! ## A310530.P7303379988424884359

`2*A313115(n)-A008574(n)`
-/

namespace A310530.P7303379988424884359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313115 n - A008574 n

end

end A310530.P7303379988424884359

namespace A310530

/-- `2*A313115(n)-A008574(n)` -/
def P7303379988424884359.Spec : Prop :=
  ∀ n, P7303379988424884359.a n = A310530 n

end A310530

/-! ## A310530.P13316220061832929137

`A313115(n)+n-A004525(A004525(n))`
-/

namespace A310530.P13316220061832929137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A310530.P13316220061832929137

namespace A310530

/-- `A313115(n)+n-A004525(A004525(n))` -/
def P13316220061832929137.Spec : Prop :=
  ∀ n, P13316220061832929137.a n = A310530 n

end A310530

/-! ## A310530.P12302192917006245673

`A313152(n)+∑[A021913(n)]`
-/

namespace A310530.P12302192917006245673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310530.P12302192917006245673

namespace A310530

/-- `A313152(n)+∑[A021913(n)]` -/
def P12302192917006245673.Spec : Prop :=
  ∀ n, P12302192917006245673.a n = A310530 n

end A310530

/-! ## A310530.P12824092208539151389

`A313152(n)+Δ[A011848(n)]`
-/

namespace A310530.P12824092208539151389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + (f1 (n + 1) - f1 n)

end

end A310530.P12824092208539151389

namespace A310530

/-- `A313152(n)+Δ[A011848(n)]` -/
def P12824092208539151389.Spec : Prop :=
  ∀ n, P12824092208539151389.a n = A310530 n

end A310530

/-! ## A310530.P3133700414685285640

`A313152(n)+n-A004525(n)`
-/

namespace A310530.P3133700414685285640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + ((n : ℤ) - A004525 n)

end

end A310530.P3133700414685285640

namespace A310530

/-- `A313152(n)+n-A004525(n)` -/
def P3133700414685285640.Spec : Prop :=
  ∀ n, P3133700414685285640.a n = A310530 n

end A310530

/-! ## A310530.P10825435055530316904

`A314161(n)-A046978(A046978(n)+n)`
-/

namespace A310530.P10825435055530316904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A310530.P10825435055530316904

namespace A310530

/-- `A314161(n)-A046978(A046978(n)+n)` -/
def P10825435055530316904.Spec : Prop :=
  ∀ n, P10825435055530316904.a n = A310530 n

end A310530

/-! ## A310530.P10876350191984347219

`A301710(n)-A046978(n)`
-/

namespace A310530.P10876350191984347219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A046978 n

end

end A310530.P10876350191984347219

namespace A310530

/-- `A301710(n)-A046978(n)` -/
def P10876350191984347219.Spec : Prop :=
  ∀ n, P10876350191984347219.a n = A310530 n

end A310530

/-! ## A310530.P6978167710164710892

`2*A314250(n)-A008458(n)`
-/

namespace A310530.P6978167710164710892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314250 n - A008458 n

end

end A310530.P6978167710164710892

namespace A310530

/-- `2*A314250(n)-A008458(n)` -/
def P6978167710164710892.Spec : Prop :=
  ∀ n, P6978167710164710892.a n = A310530 n

end A310530

/-!
# A310531: Coordination sequence Gal.5.135.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310531, the canonical program `A310531.P139863264852785367` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310531 has offset 0).

The definition of A310531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310531.P17301518419512756036

`abs(A008592(n)-A315172(n))`
-/

namespace A310531.P17301518419512756036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315172 n|

end

end A310531.P17301518419512756036

namespace A310531

/-- `abs(A008592(n)-A315172(n))` -/
def P17301518419512756036.Spec : Prop :=
  ∀ n, P17301518419512756036.a n = A310531 n

end A310531

/-! ## A310531.P16763971653306190859

`2*A008706(n)-A315172(n)`
-/

namespace A310531.P16763971653306190859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315172 n

end

end A310531.P16763971653306190859

namespace A310531

/-- `2*A008706(n)-A315172(n)` -/
def P16763971653306190859.Spec : Prop :=
  ∀ n, P16763971653306190859.a n = A310531 n

end A310531

/-! ## A310531.P3230027030682530063

`2*A219529(n)-A315635(n)`
-/

namespace A310531.P3230027030682530063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A315635 n

end

end A310531.P3230027030682530063

namespace A310531

/-- `2*A219529(n)-A315635(n)` -/
def P3230027030682530063.Spec : Prop :=
  ∀ n, P3230027030682530063.a n = A310531 n

end A310531

/-! ## A310531.P139863264852785367

`A313293(n)+A004396(A002264(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310531

/-- `A313293(n)+A004396(A002264(n+1))` -/
def P139863264852785367.Spec : Prop :=
  ∀ n, P139863264852785367.a n = A310531 n

theorem P139863264852785367.correct : P139863264852785367.Spec := by
  intro n
  simp only [A310531]

end A310531

/-! ## A310531.P11119566092702796644

`A313293(n)+A004396(n-A004396(n))`
-/

namespace A310531.P11119566092702796644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310531.P11119566092702796644

namespace A310531

/-- `A313293(n)+A004396(n-A004396(n))` -/
def P11119566092702796644.Spec : Prop :=
  ∀ n, P11119566092702796644.a n = A310531 n

end A310531

/-! ## A310531.P8609682013575448066

`A008458(n)+A008574(n)-A315172(n)`
-/

namespace A310531.P8609682013575448066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315172 n)

end

end A310531.P8609682013575448066

namespace A310531

/-- `A008458(n)+A008574(n)-A315172(n)` -/
def P8609682013575448066.Spec : Prop :=
  ∀ n, P8609682013575448066.a n = A310531 n

end A310531

/-! ## A310531.P6424167496943911581

`∑{d}[A008592(n)-A315172(n), A000010(#)]`
-/

namespace A310531.P6424167496943911581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310531.P6424167496943911581

namespace A310531

/-- `∑{d}[A008592(n)-A315172(n), A000010(#)]` -/
def P6424167496943911581.Spec : Prop :=
  ∀ n, P6424167496943911581.a n = A310531 n

end A310531

/-! ## A310531.P16023509863777911674

`A315653(n)-2*A134667(A004396(n))`
-/

namespace A310531.P16023509863777911674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - 2 * A134667 (A004396 n).toNat

end

end A310531.P16023509863777911674

namespace A310531

/-- `A315653(n)-2*A134667(A004396(n))` -/
def P16023509863777911674.Spec : Prop :=
  ∀ n, P16023509863777911674.a n = A310531 n

end A310531

/-! ## A310531.P6049354507403751065

`2*A314251(n)-A008458(n)`
-/

namespace A310531.P6049354507403751065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314251 n - A008458 n

end

end A310531.P6049354507403751065

namespace A310531

/-- `2*A314251(n)-A008458(n)` -/
def P6049354507403751065.Spec : Prop :=
  ∀ n, P6049354507403751065.a n = A310531 n

end A310531

/-! ## A310531.P17536956784891526097

`A008458(n)-A005843(A008458(n)-A314251(n))`
-/

namespace A310531.P17536956784891526097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314251 n).toNat

end

end A310531.P17536956784891526097

namespace A310531

/-- `A008458(n)-A005843(A008458(n)-A314251(n))` -/
def P17536956784891526097.Spec : Prop :=
  ∀ n, P17536956784891526097.a n = A310531 n

end A310531

/-! ## A310531.P18121395710092680986

`A005843(A008706(n))-A315172(n)`
-/

namespace A310531.P18121395710092680986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315172 n

end

end A310531.P18121395710092680986

namespace A310531

/-- `A005843(A008706(n))-A315172(n)` -/
def P18121395710092680986.Spec : Prop :=
  ∀ n, P18121395710092680986.a n = A310531 n

end A310531

/-! ## A310531.P17377322229022513960

`A004442(A008592(n)+1-A315172(n))`
-/

namespace A310531.P17377322229022513960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A008592 n + (1 - A315172 n)).toNat

end

end A310531.P17377322229022513960

namespace A310531

/-- `A004442(A008592(n)+1-A315172(n))` -/
def P17377322229022513960.Spec : Prop :=
  ∀ n, P17377322229022513960.a n = A310531 n

end A310531

/-! ## A310531.P6704154706175300940

`A004442(1-(A315172(n)-A008592(n)))`
-/

namespace A310531.P6704154706175300940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (1 - (A315172 n - A008592 n)).toNat

end

end A310531.P6704154706175300940

namespace A310531

/-- `A004442(1-(A315172(n)-A008592(n)))` -/
def P6704154706175300940.Spec : Prop :=
  ∀ n, P6704154706175300940.a n = A310531 n

end A310531

/-! ## A310531.P657910095920878441

`A005843(A314251(n))-A008458(n)`
-/

namespace A310531.P657910095920878441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314251 n).toNat - A008458 n

end

end A310531.P657910095920878441

namespace A310531

/-- `A005843(A314251(n))-A008458(n)` -/
def P657910095920878441.Spec : Prop :=
  ∀ n, P657910095920878441.a n = A310531 n

end A310531

/-!
# A310532: Coordination sequence Gal.6.333.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310532, the canonical program `A310532.P5875053090626175182` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310532 has offset 0).

The definition of A310532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310532.P5875053090626175182

`A004277(A047263(n+1)+A312948(n)-n-A004277(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310532

/-- `A004277(A047263(n+1)+A312948(n)-n-A004277(n))` -/
def P5875053090626175182.Spec : Prop :=
  ∀ n, P5875053090626175182.a n = A310532 n

theorem P5875053090626175182.correct : P5875053090626175182.Spec := by
  intro n
  simp only [A310532]

end A310532

/-! ## A310532.P8607063626134306908

`abs(A008592(n)-A315171(n))`
-/

namespace A310532.P8607063626134306908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315171 n|

end

end A310532.P8607063626134306908

namespace A310532

/-- `abs(A008592(n)-A315171(n))` -/
def P8607063626134306908.Spec : Prop :=
  ∀ n, P8607063626134306908.a n = A310532 n

end A310532

/-! ## A310532.P9597261853830743277

`A008458(n)+A008574(n)-A315171(n)`
-/

namespace A310532.P9597261853830743277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315171 n)

end

end A310532.P9597261853830743277

namespace A310532

/-- `A008458(n)+A008574(n)-A315171(n)` -/
def P9597261853830743277.Spec : Prop :=
  ∀ n, P9597261853830743277.a n = A310532 n

end A310532

/-! ## A310532.P7529927635021613387

`∑{d}[A008592(n)-A315171(n), A000010(#)]`
-/

namespace A310532.P7529927635021613387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310532.P7529927635021613387

namespace A310532

/-- `∑{d}[A008592(n)-A315171(n), A000010(#)]` -/
def P7529927635021613387.Spec : Prop :=
  ∀ n, P7529927635021613387.a n = A310532 n

end A310532

/-! ## A310532.P9806254629061334359

`2*A313116(n)-A008574(n)`
-/

namespace A310532.P9806254629061334359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313116 n - A008574 n

end

end A310532.P9806254629061334359

namespace A310532

/-- `2*A313116(n)-A008574(n)` -/
def P9806254629061334359.Spec : Prop :=
  ∀ n, P9806254629061334359.a n = A310532 n

end A310532

/-! ## A310532.P16231607161847219149

`A004275(A313116(n)-A004273(n))`
-/

namespace A310532.P16231607161847219149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313116 n - A004273 n).toNat

end

end A310532.P16231607161847219149

namespace A310532

/-- `A004275(A313116(n)-A004273(n))` -/
def P16231607161847219149.Spec : Prop :=
  ∀ n, P16231607161847219149.a n = A310532 n

end A310532

/-! ## A310532.P7755938822382920469

`A004273(A313116(n)-n)-A004273(n)`
-/

namespace A310532.P7755938822382920469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313116 n - (n : ℤ)).toNat - A004273 n

end

end A310532.P7755938822382920469

namespace A310532

/-- `A004273(A313116(n)-n)-A004273(n)` -/
def P7755938822382920469.Spec : Prop :=
  ∀ n, P7755938822382920469.a n = A310532 n

end A310532

/-! ## A310532.P7803129604911915107

`A008574(n)+A005843(A313116(n)-A008574(n))`
-/

namespace A310532.P7803129604911915107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313116 n - A008574 n).toNat

end

end A310532.P7803129604911915107

namespace A310532

/-- `A008574(n)+A005843(A313116(n)-A008574(n))` -/
def P7803129604911915107.Spec : Prop :=
  ∀ n, P7803129604911915107.a n = A310532 n

end A310532

/-! ## A310532.P9608336247428690211

`A315755(n)-2*A330025(n)`
-/

namespace A310532.P9608336247428690211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - 2 * A330025 n

end

end A310532.P9608336247428690211

namespace A310532

/-- `A315755(n)-2*A330025(n)` -/
def P9608336247428690211.Spec : Prop :=
  ∀ n, P9608336247428690211.a n = A310532 n

end A310532

/-! ## A310532.P11886720340144674668

`A314220(n)-A330025(A330025(n)+n)`
-/

namespace A310532.P11886720340144674668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A310532.P11886720340144674668

namespace A310532

/-- `A314220(n)-A330025(A330025(n)+n)` -/
def P11886720340144674668.Spec : Prop :=
  ∀ n, P11886720340144674668.a n = A310532 n

end A310532

/-! ## A310532.P2472666864921613728

`A301718(n)-A330025(n)`
-/

namespace A310532.P2472666864921613728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A330025 n

end

end A310532.P2472666864921613728

namespace A310532

/-- `A301718(n)-A330025(n)` -/
def P2472666864921613728.Spec : Prop :=
  ∀ n, P2472666864921613728.a n = A310532 n

end A310532

/-! ## A310532.P7070230854793918078

`A313921(n)-A134667(n)`
-/

namespace A310532.P7070230854793918078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313921 n - A134667 n

end

end A310532.P7070230854793918078

namespace A310532

/-- `A313921(n)-A134667(n)` -/
def P7070230854793918078.Spec : Prop :=
  ∀ n, P7070230854793918078.a n = A310532 n

end A310532

/-! ## A310532.P5027974846003783190

`2*A314252(n)-A008458(n)`
-/

namespace A310532.P5027974846003783190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314252 n - A008458 n

end

end A310532.P5027974846003783190

namespace A310532

/-- `2*A314252(n)-A008458(n)` -/
def P5027974846003783190.Spec : Prop :=
  ∀ n, P5027974846003783190.a n = A310532 n

end A310532

/-! ## A310532.P11641478854492880886

`A004277(A314252(n)-n-A004277(n))`
-/

namespace A310532.P11641478854492880886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314252 n - (n : ℤ) - A004277 n).toNat

end

end A310532.P11641478854492880886

namespace A310532

/-- `A004277(A314252(n)-n-A004277(n))` -/
def P11641478854492880886.Spec : Prop :=
  ∀ n, P11641478854492880886.a n = A310532 n

end A310532

/-! ## A310532.P9332303733105989276

`A008458(n)-A005843(A008458(n)-A314252(n))`
-/

namespace A310532.P9332303733105989276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314252 n).toNat

end

end A310532.P9332303733105989276

namespace A310532

/-- `A008458(n)-A005843(A008458(n)-A314252(n))` -/
def P9332303733105989276.Spec : Prop :=
  ∀ n, P9332303733105989276.a n = A310532 n

end A310532

/-! ## A310532.P16993268006517669094

`A005843(A313116(n))-A008574(n)`
-/

namespace A310532.P16993268006517669094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313116 n).toNat - A008574 n

end

end A310532.P16993268006517669094

namespace A310532

/-- `A005843(A313116(n))-A008574(n)` -/
def P16993268006517669094.Spec : Prop :=
  ∀ n, P16993268006517669094.a n = A310532 n

end A310532

/-! ## A310532.P3365328024316042632

`A004275(A313116(n))-A004275(2*n)`
-/

namespace A310532.P3365328024316042632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313116 n).toNat - A004275 (2 * n)

end

end A310532.P3365328024316042632

namespace A310532

/-- `A004275(A313116(n))-A004275(2*n)` -/
def P3365328024316042632.Spec : Prop :=
  ∀ n, P3365328024316042632.a n = A310532 n

end A310532

/-! ## A310532.P2140753605781263301

`A005843(A314252(n))-A008458(n)`
-/

namespace A310532.P2140753605781263301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314252 n).toNat - A008458 n

end

end A310532.P2140753605781263301

namespace A310532

/-- `A005843(A314252(n))-A008458(n)` -/
def P2140753605781263301.Spec : Prop :=
  ∀ n, P2140753605781263301.a n = A310532 n

end A310532

/-!
# A310533: Coordination sequence Gal.6.334.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310533, the canonical program `A310533.P10206175859937310339` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310533 has offset 0).

The definition of A310533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1966 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310533.P10206175859937310339

`2*A314253(n)-A008458(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310533

/-- `2*A314253(n)-A008458(n)` -/
def P10206175859937310339.Spec : Prop :=
  ∀ n, P10206175859937310339.a n = A310533 n

theorem P10206175859937310339.correct : P10206175859937310339.Spec := by
  intro n
  simp only [A310533]

end A310533

/-! ## A310533.P10717245914795060186

`A008458(n)-A005843(A008458(n)-A314253(n))`
-/

namespace A310533.P10717245914795060186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314253 n).toNat

end

end A310533.P10717245914795060186

namespace A310533

/-- `A008458(n)-A005843(A008458(n)-A314253(n))` -/
def P10717245914795060186.Spec : Prop :=
  ∀ n, P10717245914795060186.a n = A310533 n

end A310533

/-! ## A310533.P12761075629456237479

`A005843(A314253(n))-A008458(n)`
-/

namespace A310533.P12761075629456237479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314253 n).toNat - A008458 n

end

end A310533.P12761075629456237479

namespace A310533

/-- `A005843(A314253(n))-A008458(n)` -/
def P12761075629456237479.Spec : Prop :=
  ∀ n, P12761075629456237479.a n = A310533 n

end A310533

/-! ## A310533.P17471956097852544992

`abs(A008592(n)-A315170(n))`
-/

namespace A310533.P17471956097852544992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315170 n|

end

end A310533.P17471956097852544992

namespace A310533

/-- `abs(A008592(n)-A315170(n))` -/
def P17471956097852544992.Spec : Prop :=
  ∀ n, P17471956097852544992.a n = A310533 n

end A310533

/-! ## A310533.P17312125234104721453

`2*A008706(n)-A315170(n)`
-/

namespace A310533.P17312125234104721453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315170 n

end

end A310533.P17312125234104721453

namespace A310533

/-- `2*A008706(n)-A315170(n)` -/
def P17312125234104721453.Spec : Prop :=
  ∀ n, P17312125234104721453.a n = A310533 n

end A310533

/-! ## A310533.P11655746294179774090

`xor(1, A017281(n)-A315170(n))`
-/

namespace A310533.P11655746294179774090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315170 n)

end

end A310533.P11655746294179774090

namespace A310533

/-- `xor(1, A017281(n)-A315170(n))` -/
def P11655746294179774090.Spec : Prop :=
  ∀ n, P11655746294179774090.a n = A310533 n

end A310533

/-! ## A310533.P9855620809138445680

`A135042(2*n+1)-A315170(n)`
-/

namespace A310533.P9855620809138445680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315170 n

end

end A310533.P9855620809138445680

namespace A310533

/-- `A135042(2*n+1)-A315170(n)` -/
def P9855620809138445680.Spec : Prop :=
  ∀ n, P9855620809138445680.a n = A310533 n

end A310533

/-! ## A310533.P7458162321518598039

`A005843(A008706(n))-A315170(n)`
-/

namespace A310533.P7458162321518598039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315170 n

end

end A310533.P7458162321518598039

namespace A310533

/-- `A005843(A008706(n))-A315170(n)` -/
def P7458162321518598039.Spec : Prop :=
  ∀ n, P7458162321518598039.a n = A310533 n

end A310533

/-! ## A310533.P7685324596959969509

`A017281(n)-A004442(A315170(n))`
-/

namespace A310533.P7685324596959969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315170 n).toNat

end

end A310533.P7685324596959969509

namespace A310533

/-- `A017281(n)-A004442(A315170(n))` -/
def P7685324596959969509.Spec : Prop :=
  ∀ n, P7685324596959969509.a n = A310533 n

end A310533

/-! ## A310533.P2209677558182636078

`A065502(A008458(n))-A315170(n)`
-/

namespace A310533.P2209677558182636078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315170 n

end

end A310533.P2209677558182636078

namespace A310533

/-- `A065502(A008458(n))-A315170(n)` -/
def P2209677558182636078.Spec : Prop :=
  ∀ n, P2209677558182636078.a n = A310533 n

end A310533

/-! ## A310533.P10062271651906540778

`A008458(n)+A008574(n)-A315170(n)`
-/

namespace A310533.P10062271651906540778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315170 n)

end

end A310533.P10062271651906540778

namespace A310533

/-- `A008458(n)+A008574(n)-A315170(n)` -/
def P10062271651906540778.Spec : Prop :=
  ∀ n, P10062271651906540778.a n = A310533 n

end A310533

/-! ## A310533.P1444039226851224945

`A313296(n)+A004525(A313296(n)-A312209(n))`
-/

namespace A310533.P1444039226851224945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313296 n + A004525 (A313296 n - A312209 n).toNat

end

end A310533.P1444039226851224945

namespace A310533

/-- `A313296(n)+A004525(A313296(n)-A312209(n))` -/
def P1444039226851224945.Spec : Prop :=
  ∀ n, P1444039226851224945.a n = A310533 n

end A310533

/-!
# A310534: Coordination sequence Gal.4.104.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310534, there is no canonical definition to state claims against.
-/

/-! ## A310534.P11958944951629464505

`A310518(A062399(n))+A002265(n)`
-/

namespace A310534.P11958944951629464505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 (A062399 n).toNat + A002265 n

end

end A310534.P11958944951629464505

/-! ## A310534.P2810967288625911004

`A265227(n+1)+A261466(A008486(n))`
-/

namespace A310534.P2810967288625911004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A261466 (A008486 n).toNat

end

end A310534.P2810967288625911004

/-! ## A310534.P2528286225519346835

`A310537(n)+A057078(A297204(n))`
-/

namespace A310534.P2528286225519346835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310537 n + A057078 (A297204 n).toNat

end

end A310534.P2528286225519346835

/-! ## A310534.P16752213005023872293

`A301718(n)-A034178(record[A325687(n+5)])`
-/

namespace A310534.P16752213005023872293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325687 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A034178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A310534.P16752213005023872293

/-!
# A310535: Coordination sequence Gal.6.603.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310535, there is no canonical definition to state claims against.
-/

/-! ## A310535.P12840468376678313703

`A345452(n+1)+A135549(A000244(n))`
-/

namespace A310535.P12840468376678313703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1) + A135549 (A000244 n).toNat

end

end A310535.P12840468376678313703

/-!
# A310537: Coordination sequence Gal.6.484.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310537, there is no canonical definition to state claims against.
-/

/-! ## A310537.P5284842483374057683

`A310538(n)-A025465(A199306(n+1))`
-/

namespace A310537.P5284842483374057683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - A025465 (A199306 (n + 1)).toNat

end

end A310537.P5284842483374057683

/-! ## A310537.P18000942168437444091

`A310538(n)-A321936(A143543(n+1))`
-/

namespace A310537.P18000942168437444091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - A321936 (A143543 (n + 1)).toNat

end

end A310537.P18000942168437444091

/-! ## A310537.P1552793891854433874

`A314228(n)-A053867(A041151(n))`
-/

namespace A310537.P1552793891854433874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314228 n - A053867 (A041151 n).toNat

end

end A310537.P1552793891854433874

/-! ## A310537.P6775417777011273070

`A310538(n)-A185012(A111427(n))`
-/

namespace A310537.P6775417777011273070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - A185012 (A111427 n).toNat

end

end A310537.P6775417777011273070

/-!
# A310538: Coordination sequence Gal.6.215.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310538, the canonical program `A310538.P10108678506340412` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310538 has offset 0).

The definition of A310538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310538.P10108678506340412

`A310509(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310538

/-- `A310509(n)+Δ[A011862(n)]` -/
def P10108678506340412.Spec : Prop :=
  ∀ n, P10108678506340412.a n = A310538 n

theorem P10108678506340412.correct : P10108678506340412.Spec := by
  intro n
  simp only [A310538]

end A310538

/-! ## A310538.P5879913672738901162

`2*A313241(n)-A312100(n)`
-/

namespace A310538.P5879913672738901162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313241 n - A312100 n

end

end A310538.P5879913672738901162

namespace A310538

/-- `2*A313241(n)-A312100(n)` -/
def P5879913672738901162.Spec : Prop :=
  ∀ n, P5879913672738901162.a n = A310538 n

end A310538

/-! ## A310538.P17109562826970409425

`2*A313894(n)-A315267(n)`
-/

namespace A310538.P17109562826970409425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313894 n - A315267 n

end

end A310538.P17109562826970409425

namespace A310538

/-- `2*A313894(n)-A315267(n)` -/
def P17109562826970409425.Spec : Prop :=
  ∀ n, P17109562826970409425.a n = A310538 n

end A310538

/-! ## A310538.P14918152351011026860

`2*A314205(n)-A315680(n)`
-/

namespace A310538.P14918152351011026860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314205 n - A315680 n

end

end A310538.P14918152351011026860

namespace A310538

/-- `2*A314205(n)-A315680(n)` -/
def P14918152351011026860.Spec : Prop :=
  ∀ n, P14918152351011026860.a n = A310538 n

end A310538

/-! ## A310538.P17341686850460160315

`A310454(n)+Δ[2*A011862(n)]`
-/

namespace A310538.P17341686850460160315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + (f1 (n + 1) - f1 n)

end

end A310538.P17341686850460160315

namespace A310538

/-- `A310454(n)+Δ[2*A011862(n)]` -/
def P17341686850460160315.Spec : Prop :=
  ∀ n, P17341686850460160315.a n = A310538 n

end A310538

/-! ## A310538.P17475280475790399351

`A313100(n)+A093390(A062545(n))`
-/

namespace A310538.P17475280475790399351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A093390 (A062545 n).toNat

end

end A310538.P17475280475790399351

namespace A310538

/-- `A313100(n)+A093390(A062545(n))` -/
def P17475280475790399351.Spec : Prop :=
  ∀ n, P17475280475790399351.a n = A310538 n

end A310538

/-! ## A310538.P12211100235976974454

`A313894(n)-A102283(A006369(n))`
-/

namespace A310538.P12211100235976974454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A102283 (A006369 n).toNat

end

end A310538.P12211100235976974454

namespace A310538

/-- `A313894(n)-A102283(A006369(n))` -/
def P12211100235976974454.Spec : Prop :=
  ∀ n, P12211100235976974454.a n = A310538 n

end A310538

/-! ## A310538.P1929723751707824789

`A314205(n)-A134667(A004396(n))`
-/

namespace A310538.P1929723751707824789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n - A134667 (A004396 n).toNat

end

end A310538.P1929723751707824789

namespace A310538

/-- `A314205(n)-A134667(A004396(n))` -/
def P1929723751707824789.Spec : Prop :=
  ∀ n, P1929723751707824789.a n = A310538 n

end A310538

/-! ## A310538.P15981815373084406593

`A313894(n)-A128834(A042965(n+1))`
-/

namespace A310538.P15981815373084406593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A042965 (n + 1)).toNat

end

end A310538.P15981815373084406593

namespace A310538

/-- `A313894(n)-A128834(A042965(n+1))` -/
def P15981815373084406593.Spec : Prop :=
  ∀ n, P15981815373084406593.a n = A310538 n

end A310538

/-! ## A310538.P8525442696161416705

`A313894(n)+A102283(2*A006369(n))`
-/

namespace A310538.P8525442696161416705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A102283 (2 * A006369 n).toNat

end

end A310538.P8525442696161416705

namespace A310538

/-- `A313894(n)+A102283(2*A006369(n))` -/
def P8525442696161416705.Spec : Prop :=
  ∀ n, P8525442696161416705.a n = A310538 n

end A310538

/-! ## A310538.P10931621861395650877

`A313894(n)-A128834(A004396(2*n))`
-/

namespace A310538.P10931621861395650877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A004396 (2 * n)).toNat

end

end A310538.P10931621861395650877

namespace A310538

/-- `A313894(n)-A128834(A004396(2*n))` -/
def P10931621861395650877.Spec : Prop :=
  ∀ n, P10931621861395650877.a n = A310538 n

end A310538

/-! ## A310538.P10600196942983977835

`A004396(n)+A310509(n)-A004396(A004396(n))`
-/

namespace A310538.P10600196942983977835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310509 n - A004396 (A004396 n).toNat)

end

end A310538.P10600196942983977835

namespace A310538

/-- `A004396(n)+A310509(n)-A004396(A004396(n))` -/
def P10600196942983977835.Spec : Prop :=
  ∀ n, P10600196942983977835.a n = A310538 n

end A310538

/-! ## A310538.P7032951994216633899

`A312100(n)+A005843(A313241(n)-A312100(n))`
-/

namespace A310538.P7032951994216633899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A005843 (A313241 n - A312100 n).toNat

end

end A310538.P7032951994216633899

namespace A310538

/-- `A312100(n)+A005843(A313241(n)-A312100(n))` -/
def P7032951994216633899.Spec : Prop :=
  ∀ n, P7032951994216633899.a n = A310538 n

end A310538

/-! ## A310538.P12565966746508765578

`A314141(n)-A102283(A004396(n))`
-/

namespace A310538.P12565966746508765578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A102283 (A004396 n).toNat

end

end A310538.P12565966746508765578

namespace A310538

/-- `A314141(n)-A102283(A004396(n))` -/
def P12565966746508765578.Spec : Prop :=
  ∀ n, P12565966746508765578.a n = A310538 n

end A310538

/-! ## A310538.P12085613179175588216

`A314141(n)+A102283(2*A004396(n))`
-/

namespace A310538.P12085613179175588216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A102283 (2 * A004396 n).toNat

end

end A310538.P12085613179175588216

namespace A310538

/-- `A314141(n)+A102283(2*A004396(n))` -/
def P12085613179175588216.Spec : Prop :=
  ∀ n, P12085613179175588216.a n = A310538 n

end A310538

/-! ## A310538.P15504643965636426008

`A314141(n)-A128834(2*A004396(n))`
-/

namespace A310538.P15504643965636426008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A128834 (2 * A004396 n).toNat

end

end A310538.P15504643965636426008

namespace A310538

/-- `A314141(n)-A128834(2*A004396(n))` -/
def P15504643965636426008.Spec : Prop :=
  ∀ n, P15504643965636426008.a n = A310538 n

end A310538

/-! ## A310538.P13706210353027591354

`A313962(n)-A134667(A006369(n))`
-/

namespace A310538.P13706210353027591354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313962 n - A134667 (A006369 n).toNat

end

end A310538.P13706210353027591354

namespace A310538

/-- `A313962(n)-A134667(A006369(n))` -/
def P13706210353027591354.Spec : Prop :=
  ∀ n, P13706210353027591354.a n = A310538 n

end A310538

/-! ## A310538.P11673894259417569329

`A005843(A313241(n))-A312100(n)`
-/

namespace A310538.P11673894259417569329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313241 n).toNat - A312100 n

end

end A310538.P11673894259417569329

namespace A310538

/-- `A005843(A313241(n))-A312100(n)` -/
def P11673894259417569329.Spec : Prop :=
  ∀ n, P11673894259417569329.a n = A310538 n

end A310538

/-! ## A310538.P11755970241587148727

`A005843(A313894(n))-A315267(n)`
-/

namespace A310538.P11755970241587148727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313894 n).toNat - A315267 n

end

end A310538.P11755970241587148727

namespace A310538

/-- `A005843(A313894(n))-A315267(n)` -/
def P11755970241587148727.Spec : Prop :=
  ∀ n, P11755970241587148727.a n = A310538 n

end A310538

/-! ## A310538.P12978076667700061913

`A005843(A314205(n))-A315680(n)`
-/

namespace A310538.P12978076667700061913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314205 n).toNat - A315680 n

end

end A310538.P12978076667700061913

namespace A310538

/-- `A005843(A314205(n))-A315680(n)` -/
def P12978076667700061913.Spec : Prop :=
  ∀ n, P12978076667700061913.a n = A310538 n

end A310538

/-!
# A310539: Coordination sequence Gal.6.486.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310539, there is no canonical definition to state claims against.
-/

/-! ## A310539.P17501797944760396872

`∑[A049541(∑[ceil(2^(n-1)+3^(n-1))])]`
-/

namespace A310539.P17501797944760396872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310539.P17501797944760396872

/-! ## A310539.P945375752616008292

`A310295(n)+record[A036627(n)]`
-/

namespace A310539.P945375752616008292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310295 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310539.P945375752616008292

/-! ## A310539.P3796876019746823411

`A313336(n)+A004218(A189568(n))`
-/

namespace A310539.P3796876019746823411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313336 n + A004218 (A189568 n).toNat

end

end A310539.P3796876019746823411

/-! ## A310539.P1533547749460353551

`A313336(n)+A004218(A336616(n))`
-/

namespace A310539.P1533547749460353551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313336 n + A004218 (A336616 n).toNat

end

end A310539.P1533547749460353551

/-! ## A310539.P7792831887744458439

`A314240(n)-A219463(A003946(n))`
-/

namespace A310539.P7792831887744458439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A219463 (A003946 n).toNat

end

end A310539.P7792831887744458439

/-!
# A310540: Coordination sequence Gal.6.487.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310540, there is no canonical definition to state claims against.
-/

/-! ## A310540.P12879738611017909626

`or(A184166(A001975(n)), A310520(n))`
-/

namespace A310540.P12879738611017909626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184166 (A001975 n).toNat) (A310520 n)

end

end A310540.P12879738611017909626

/-! ## A310540.P3784030800091366703

`A322307(A095766(n+1))+A310520(n)`
-/

namespace A310540.P3784030800091366703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322307 (A095766 (n + 1)).toNat + A310520 n

end

end A310540.P3784030800091366703

/-! ## A310540.P3027093658313602181

`xor(A231715(A000110(n)), A276853(n))`
-/

namespace A310540.P3027093658313602181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A231715 (A000110 n).toNat) (A276853 n)

end

end A310540.P3027093658313602181

/-! ## A310540.P11121425948738263377

`A310524(n)+A179829(A005386(n+1))`
-/

namespace A310540.P11121425948738263377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310524 n + A179829 (A005386 (n + 1)).toNat

end

end A310540.P11121425948738263377

/-! ## A310540.P8910360530072802916

`xor(A102460(A052438(n+1)), A301712(n))`
-/

namespace A310540.P8910360530072802916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102460 (A052438 (n + 1)).toNat) (A301712 n)

end

end A310540.P8910360530072802916

/-!
# A310541: Coordination sequence Gal.4.103.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310541, there is no canonical definition to state claims against.
-/

/-! ## A310541.P3806458606376704839

`A315759(n)-A349670(A190717(2*n+1))`
-/

namespace A310541.P3806458606376704839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315759 n - A349670 (A190717 (2 * n + 1)).toNat

end

end A310541.P3806458606376704839

/-! ## A310541.P11575322018188456777

`A314263(n)-A174626(A174703(n+1))`
-/

namespace A310541.P11575322018188456777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314263 n - A174626 (A174703 (n + 1)).toNat

end

end A310541.P11575322018188456777

/-!
# A310542: Coordination sequence Gal.5.214.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310542, there is no canonical definition to state claims against.
-/

/-! ## A310542.P18102628886735639658

`A313346(n)+A071625(A336616(n))`
-/

namespace A310542.P18102628886735639658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313346 n + A071625 (A336616 n).toNat

end

end A310542.P18102628886735639658

/-!
# A310546: Coordination sequence Gal.4.128.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310546, the canonical program `A310546.P18242339710196559366` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310546 has offset 0).

The definition of A310546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310546.P18242339710196559366

`2*A313321(n)-A008579(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310546

/-- `2*A313321(n)-A008579(n)` -/
def P18242339710196559366.Spec : Prop :=
  ∀ n, P18242339710196559366.a n = A310546 n

theorem P18242339710196559366.correct : P18242339710196559366.Spec := by
  intro n
  simp only [A310546]

end A310546

/-! ## A310546.P9648475422376923911

`2*A313316(n)-A312304(n)`
-/

namespace A310546.P9648475422376923911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313316 n - A312304 n

end

end A310546.P9648475422376923911

namespace A310546

/-- `2*A313316(n)-A312304(n)` -/
def P9648475422376923911.Spec : Prop :=
  ∀ n, P9648475422376923911.a n = A310546 n

end A310546

/-! ## A310546.P9807886230943493857

`2*A313321(n)-A250122(A005843(n))`
-/

namespace A310546.P9807886230943493857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313321 n - A250122 (A005843 n).toNat

end

end A310546.P9807886230943493857

namespace A310546

/-- `2*A313321(n)-A250122(A005843(n))` -/
def P9807886230943493857.Spec : Prop :=
  ∀ n, P9807886230943493857.a n = A310546 n

end A310546

/-! ## A310546.P9358116954475638963

`A008458(n)+A008579(n)-A315237(n)`
-/

namespace A310546.P9358116954475638963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315237 n)

end

end A310546.P9358116954475638963

namespace A310546

/-- `A008458(n)+A008579(n)-A315237(n)` -/
def P9358116954475638963.Spec : Prop :=
  ∀ n, P9358116954475638963.a n = A310546 n

end A310546

/-! ## A310546.P18442660592273481961

`A008706(n)+A313321(n)-A314776(n)`
-/

namespace A310546.P18442660592273481961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A313321 n - A314776 n)

end

end A310546.P18442660592273481961

namespace A310546

/-- `A008706(n)+A313321(n)-A314776(n)` -/
def P18442660592273481961.Spec : Prop :=
  ∀ n, P18442660592273481961.a n = A310546 n

end A310546

/-! ## A310546.P3965390992021866056

`A008579(n)+2*(A008706(n)-A314776(n))`
-/

namespace A310546.P3965390992021866056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + 2 * (A008706 n - A314776 n)

end

end A310546.P3965390992021866056

namespace A310546

/-- `A008579(n)+2*(A008706(n)-A314776(n))` -/
def P3965390992021866056.Spec : Prop :=
  ∀ n, P3965390992021866056.a n = A310546 n

end A310546

/-! ## A310546.P7881326882788765687

`A313321(n)+A313321(n)-A250122(2*n)`
-/

namespace A310546.P7881326882788765687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + (A313321 n - A250122 (2 * n))

end

end A310546.P7881326882788765687

namespace A310546

/-- `A313321(n)+A313321(n)-A250122(2*n)` -/
def P7881326882788765687.Spec : Prop :=
  ∀ n, P7881326882788765687.a n = A310546 n

end A310546

/-! ## A310546.P9769425454403046786

`A312304(n)+A005843(A313316(n)-A312304(n))`
-/

namespace A310546.P9769425454403046786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + A005843 (A313316 n - A312304 n).toNat

end

end A310546.P9769425454403046786

namespace A310546

/-- `A312304(n)+A005843(A313316(n)-A312304(n))` -/
def P9769425454403046786.Spec : Prop :=
  ∀ n, P9769425454403046786.a n = A310546 n

end A310546

/-! ## A310546.P2017071042451348189

`A008458(n)+A313321(n)-A315505(n)`
-/

namespace A310546.P2017071042451348189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A313321 n - A315505 n)

end

end A310546.P2017071042451348189

namespace A310546

/-- `A008458(n)+A313321(n)-A315505(n)` -/
def P2017071042451348189.Spec : Prop :=
  ∀ n, P2017071042451348189.a n = A310546 n

end A310546

/-! ## A310546.P7646157573701646823

`A313321(n)+A315505(n)-A315237(n)`
-/

namespace A310546.P7646157573701646823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + (A315505 n - A315237 n)

end

end A310546.P7646157573701646823

namespace A310546

/-- `A313321(n)+A315505(n)-A315237(n)` -/
def P7646157573701646823.Spec : Prop :=
  ∀ n, P7646157573701646823.a n = A310546 n

end A310546

/-! ## A310546.P6468009482401039582

`A005843(A313321(n))-A008579(n)`
-/

namespace A310546.P6468009482401039582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313321 n).toNat - A008579 n

end

end A310546.P6468009482401039582

namespace A310546

/-- `A005843(A313321(n))-A008579(n)` -/
def P6468009482401039582.Spec : Prop :=
  ∀ n, P6468009482401039582.a n = A310546 n

end A310546

/-! ## A310546.P6053849341963597161

`A005843(A313316(n))-A312304(n)`
-/

namespace A310546.P6053849341963597161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313316 n).toNat - A312304 n

end

end A310546.P6053849341963597161

namespace A310546

/-- `A005843(A313316(n))-A312304(n)` -/
def P6053849341963597161.Spec : Prop :=
  ∀ n, P6053849341963597161.a n = A310546 n

end A310546

/-! ## A310546.P7011605868753543976

`A005843(A313321(n))-A250122(A005843(n))`
-/

namespace A310546.P7011605868753543976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313321 n).toNat - A250122 (A005843 n).toNat

end

end A310546.P7011605868753543976

namespace A310546

/-- `A005843(A313321(n))-A250122(A005843(n))` -/
def P7011605868753543976.Spec : Prop :=
  ∀ n, P7011605868753543976.a n = A310546 n

end A310546

/-!
# A310547: Coordination sequence Gal.6.212.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310547, there is no canonical definition to state claims against.
-/

/-! ## A310547.P4963350850937924020

`A310548(n)%p?[68*n²+1]`
-/

namespace A310547.P4963350850937924020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  68 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310548 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A310547.P4963350850937924020

/-! ## A310547.P14313508196448930130

`A310548(n)%A181898(n)`
-/

namespace A310547.P14313508196448930130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310548 n) (A181898 n)

end

end A310547.P14313508196448930130

/-! ## A310547.P14956212640104038040

`A310548(log2(record[A333484(n)]))`
-/

namespace A310547.P14956212640104038040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310548 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A310547.P14956212640104038040

/-! ## A310547.P15870799944350914164

`A034658(n)!*A310548(n)`
-/

namespace A310547.P15870799944350914164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A034658 n).toNat : ℤ) * A310548 n

end

end A310547.P15870799944350914164

/-! ## A310547.P14199324589373215135

`A310548(n*(A034658(n)+1))`
-/

namespace A310547.P14199324589373215135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310548 ((n : ℤ) * (A034658 n + 1)).toNat

end

end A310547.P14199324589373215135

/-!
# A310549: Coordination sequence Gal.6.336.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310549, there is no canonical definition to state claims against.
-/

/-! ## A310549.P1649893484331088781

`A310550(n)-A067168(A067188(n+1))`
-/

namespace A310549.P1649893484331088781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310550 n - A067168 ((A067188 (n + 1)).toNat + 10)

end

end A310549.P1649893484331088781

/-!
# A310550: Coordination sequence Gal.6.335.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310550, there is no canonical definition to state claims against.
-/

/-! ## A310550.P8539322622787765704

`A326292(A326332(2*n+3))+A310549(n)`
-/

namespace A310550.P8539322622787765704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A326332 (2 * n + 3)).toNat + A310549 n

end

end A310550.P8539322622787765704

/-!
# A310552: Coordination sequence Gal.5.277.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310552, there is no canonical definition to state claims against.
-/

/-! ## A310552.P14540063037102278915

`eq[A037273(n+1), A246522(A001281(n))]`
-/

namespace A310552.P14540063037102278915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (A001281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310552.P14540063037102278915

/-!
# A310553: Coordination sequence Gal.5.284.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310553, there is no canonical definition to state claims against.
-/

/-! ## A310553.P881009934949482125

`A310554(A062399(n))`
-/

namespace A310553.P881009934949482125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310554 (A062399 n).toNat

end

end A310553.P881009934949482125

/-! ## A310553.P8123371386872042745

`A310554(A120126(n))`
-/

namespace A310553.P8123371386872042745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310554 (A120126 n).toNat

end

end A310553.P8123371386872042745

/-! ## A310553.P12512775069735608128

`A310554(A351870(n))`
-/

namespace A310553.P12512775069735608128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310554 (A351870 n).toNat

end

end A310553.P12512775069735608128

/-! ## A310553.P14852075637398148292

`A310554(n)%A096931(2*(n+2))`
-/

namespace A310553.P14852075637398148292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310554 n) (A096931 (2 * (n + 2)))

end

end A310553.P14852075637398148292

/-! ## A310553.P1849330771210507974

`A310554(A087051(n))`
-/

namespace A310553.P1849330771210507974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310554 (A087051 n).toNat

end

end A310553.P1849330771210507974

/-!
# A310556: Coordination sequence Gal.5.279.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310556, there is no canonical definition to state claims against.
-/

/-! ## A310556.P11297655246811910263

`2*A313335(n)-A008579(n)`
-/

namespace A310556.P11297655246811910263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313335 n - A008579 n

end

end A310556.P11297655246811910263

/-! ## A310556.P1999519750629868761

`2*A313335(n)-A250122(A005843(n))`
-/

namespace A310556.P1999519750629868761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313335 n - A250122 (A005843 n).toNat

end

end A310556.P1999519750629868761

/-! ## A310556.P9823841117773070668

`A008458(n)+A008579(n)-A315201(n)`
-/

namespace A310556.P9823841117773070668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315201 n)

end

end A310556.P9823841117773070668

/-! ## A310556.P11971810716756792665

`A008458(n)+A313335(n)-A315484(n)`
-/

namespace A310556.P11971810716756792665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A313335 n - A315484 n)

end

end A310556.P11971810716756792665

/-! ## A310556.P12546543276940580696

`A313335(n)+A315484(n)-A315201(n)`
-/

namespace A310556.P12546543276940580696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313335 n + (A315484 n - A315201 n)

end

end A310556.P12546543276940580696

/-! ## A310556.P7229900507203334597

`A005843(A313335(n))-A008579(n)`
-/

namespace A310556.P7229900507203334597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313335 n).toNat - A008579 n

end

end A310556.P7229900507203334597

/-! ## A310556.P6496483823297947673

`A005843(A313335(n))-A250122(A005843(n))`
-/

namespace A310556.P6496483823297947673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313335 n).toNat - A250122 (A005843 n).toNat

end

end A310556.P6496483823297947673

/-!
# A310558: Coordination sequence Gal.6.363.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310558, there is no canonical definition to state claims against.
-/

/-! ## A310558.P15277054970899222112

`A056594(A054197(n))+A008706(n)`
-/

namespace A310558.P15277054970899222112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A054197 n).toNat + A008706 n

end

end A310558.P15277054970899222112

/-! ## A310558.P9519753821156522391

`A008587(n)-A010815(A363181(n))`
-/

namespace A310558.P9519753821156522391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A010815 (A363181 n).toNat

end

end A310558.P9519753821156522391

/-! ## A310558.P15620071798777895768

`A310457(n)+A007949(A137390(n+1))`
-/

namespace A310558.P15620071798777895768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n + A007949 (A137390 (n + 1)).toNat

end

end A310558.P15620071798777895768

/-! ## A310558.P835696437670834322

`A008587(n)-A015607(A341251(n+9))`
-/

namespace A310558.P835696437670834322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A015607 (A341251 (n + 9)).toNat

end

end A310558.P835696437670834322

/-! ## A310558.P5981462941270510685

`A015607(A341251(n+9)+1)+A008587(n)`
-/

namespace A310558.P5981462941270510685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015607 (A341251 (n + 9) + 1).toNat + A008587 n

end

end A310558.P5981462941270510685

/-!
# A310559: Coordination sequence Gal.4.79.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310559, there is no canonical definition to state claims against.
-/

/-! ## A310559.P3646776380897182729

`A021913(n)+A310457(n)+A225099(A105615(n))`
-/

namespace A310559.P3646776380897182729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n + (A310457 n + A225099 (A105615 n).toNat)

end

end A310559.P3646776380897182729

/-! ## A310559.P3772917722130478008

`A003002(xor(7, A000217(2*n+3)))`
-/

namespace A310559.P3772917722130478008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (Int.xor 7 (A000217 (2 * n + 3))).toNat

end

end A310559.P3772917722130478008

/-! ## A310559.P1019558120333193830

`∑[dr(A212440(A003594(3*n+2)))]`
-/

namespace A310559.P1019558120333193830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A212440 (A003594 (3 * n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310559.P1019558120333193830

/-! ## A310559.P17277382446374348268

`A310372(n)+A001221(A001764(n))`
-/

namespace A310559.P17277382446374348268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310372 n + A001221 (A001764 n).toNat

end

end A310559.P17277382446374348268

/-! ## A310559.P697939268540077905

`A310499(n)+A064911(A067971(n))`
-/

namespace A310559.P697939268540077905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310499 n + A064911 (A067971 n).toNat

end

end A310559.P697939268540077905

/-!
# A310560: Coordination sequence Gal.6.362.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310560, there is no canonical definition to state claims against.
-/

/-! ## A310560.P6746996688082610268

`and(A105620(A322383(n+1)), A314149(n))`
-/

namespace A310560.P6746996688082610268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105620 (A322383 (n + 1)).toNat) (A314149 n)

end

end A310560.P6746996688082610268

/-! ## A310560.P3242781353287965227

`A298024(n)+A000120(A059424(n))`
-/

namespace A310560.P3242781353287965227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A000120 (A059424 n).toNat

end

end A310560.P3242781353287965227

/-! ## A310560.P3842577637238682583

`A310444(n)+A001221(A089656(n))`
-/

namespace A310560.P3842577637238682583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A001221 (A089656 n).toNat

end

end A310560.P3842577637238682583

/-! ## A310560.P11687609304534618743

`A310403(n)+A001222(A117158(n))`
-/

namespace A310560.P11687609304534618743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310403 n + A001222 (A117158 n).toNat

end

end A310560.P11687609304534618743

/-! ## A310560.P17529262786284351403

`A310565(n)-A021913(A000245(n))`
-/

namespace A310560.P17529262786284351403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310565 n - A021913 (A000245 n).toNat

end

end A310560.P17529262786284351403

/-!
# A310561: Coordination sequence Gal.6.364.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310561, there is no canonical definition to state claims against.
-/

/-! ## A310561.P10642324619485464242

`xor(A178181(n), A267576(A028242(n)))`
-/

namespace A310561.P10642324619485464242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A267576 (A028242 n).toNat)

end

end A310561.P10642324619485464242

/-! ## A310561.P2455672665040723815

`xor(A276853(n), A285952(A003418(n)))`
-/

namespace A310561.P2455672665040723815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A276853 n) (A285952 (A003418 n).toNat)

end

end A310561.P2455672665040723815

/-! ## A310561.P13318079135108430103

`xor(A178181(n), A219967(A325325(n)))`
-/

namespace A310561.P13318079135108430103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A219967 (A325325 n).toNat)

end

end A310561.P13318079135108430103

/-! ## A310561.P4956122572721699656

`xor(A178181(n), A219967(A269303(n+1)))`
-/

namespace A310561.P4956122572721699656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A219967 (A269303 (n + 1)).toNat)

end

end A310561.P4956122572721699656

/-! ## A310561.P14446987386310042179

`xor(A178181(n), A344880(A341329(n+1)))`
-/

namespace A310561.P14446987386310042179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A344880 (A341329 (n + 1)).toNat)

end

end A310561.P14446987386310042179

/-!
# A310562: Coordination sequence Gal.6.371.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310562, there is no canonical definition to state claims against.
-/

/-! ## A310562.P12999463084174161676

`∑[A366147(∑[A271269(3*n+1)])]`
-/

namespace A310562.P12999463084174161676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310562.P12999463084174161676

/-! ## A310562.P11122810292737280206

`lt[A285080(A238863(n)), A285080(2*n+1)]`
-/

namespace A310562.P11122810292737280206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (A238863 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285080 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310562.P11122810292737280206

/-!
# A310563: Coordination sequence Gal.5.145.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310563, there is no canonical definition to state claims against.
-/

/-! ## A310563.P13207872645815944626

`eq[A176895(A228023(n+1)), A323244(n+1)]`
-/

namespace A310563.P13207872645815944626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A228023 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310563.P13207872645815944626

/-!
# A310564: Coordination sequence Gal.3.23.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310564, the canonical program `A310564.P8518898930016773917` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310564 has offset 0).

The definition of A310564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310564.P8518898930016773917

`A257088(A060464(Δ[n²]))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310564

/-- `A257088(A060464(Δ[n²]))` -/
def P8518898930016773917.Spec : Prop :=
  ∀ n, P8518898930016773917.a n = A310564 n

theorem P8518898930016773917.correct : P8518898930016773917.Spec := by
  intro n
  simp only [A310564]

end A310564

/-! ## A310564.P2477882135078835529

`A004277(A060464(2*n+1))`
-/

namespace A310564.P2477882135078835529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A060464 (2 * n + 1)).toNat

end

end A310564.P2477882135078835529

namespace A310564

/-- `A004277(A060464(2*n+1))` -/
def P2477882135078835529.Spec : Prop :=
  ∀ n, P2477882135078835529.a n = A310564 n

end A310564

/-! ## A310564.P8336978019962103192

`2*A310372(n)-A008574(n)`
-/

namespace A310564.P8336978019962103192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310372 n - A008574 n

end

end A310564.P8336978019962103192

namespace A310564

/-- `2*A310372(n)-A008574(n)` -/
def P8336978019962103192.Spec : Prop :=
  ∀ n, P8336978019962103192.a n = A310564 n

end A310564

/-! ## A310564.P5840431439049145020

`A004275(A060464(2*n+1)+1)`
-/

namespace A310564.P5840431439049145020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A060464 (2 * n + 1) + 1).toNat

end

end A310564.P5840431439049145020

namespace A310564

/-- `A004275(A060464(2*n+1)+1)` -/
def P5840431439049145020.Spec : Prop :=
  ∀ n, P5840431439049145020.a n = A310564 n

end A310564

/-! ## A310564.P4573385491887226843

`A008574(A060464(2*n+1)/2)`
-/

namespace A310564.P4573385491887226843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A060464 (2 * n + 1) : ℚ) / 2)).toNat

end

end A310564.P4573385491887226843

namespace A310564

/-- `A008574(A060464(2*n+1)/2)` -/
def P4573385491887226843.Spec : Prop :=
  ∀ n, P4573385491887226843.a n = A310564 n

end A310564

/-! ## A310564.P13192930767047692587

`A008574(A047588(2*n+1)-n)`
-/

namespace A310564.P13192930767047692587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A047588 (2 * n + 1) - (n : ℤ)).toNat

end

end A310564.P13192930767047692587

namespace A310564

/-- `A008574(A047588(2*n+1)-n)` -/
def P13192930767047692587.Spec : Prop :=
  ∀ n, P13192930767047692587.a n = A310564 n

end A310564

/-! ## A310564.P8852793883941893392

`A000007(n)+2*A060464(2*n+1)`
-/

namespace A310564.P8852793883941893392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A060464 (2 * n + 1)

end

end A310564.P8852793883941893392

namespace A310564

/-- `A000007(n)+2*A060464(2*n+1)` -/
def P8852793883941893392.Spec : Prop :=
  ∀ n, P8852793883941893392.a n = A310564 n

end A310564

/-! ## A310564.P313454891056874488

`A008574(A057357(A016777(n)))`
-/

namespace A310564.P313454891056874488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057357 (A016777 n).toNat).toNat

end

end A310564.P313454891056874488

namespace A310564

/-- `A008574(A057357(A016777(n)))` -/
def P313454891056874488.Spec : Prop :=
  ∀ n, P313454891056874488.a n = A310564 n

end A310564

/-! ## A310564.P14154272605471027516

`A008574(A057357(Δ[A000326(n)]))`
-/

namespace A310564.P14154272605471027516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057357 (f1 (n + 1) - f1 n).toNat).toNat

end

end A310564.P14154272605471027516

namespace A310564

/-- `A008574(A057357(Δ[A000326(n)]))` -/
def P14154272605471027516.Spec : Prop :=
  ∀ n, P14154272605471027516.a n = A310564 n

end A310564

/-! ## A310564.P12680498128400674898

`A008574(A057357(record[A087507(n)]))`
-/

namespace A310564.P12680498128400674898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A310564.P12680498128400674898

namespace A310564

/-- `A008574(A057357(record[A087507(n)]))` -/
def P12680498128400674898.Spec : Prop :=
  ∀ n, P12680498128400674898.a n = A310564 n

end A310564

/-! ## A310564.P3012891898070985619

`A008574(A312895(n)-A008486(n))`
-/

namespace A310564.P3012891898070985619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A312895 n - A008486 n).toNat

end

end A310564.P3012891898070985619

namespace A310564

/-- `A008574(A312895(n)-A008486(n))` -/
def P3012891898070985619.Spec : Prop :=
  ∀ n, P3012891898070985619.a n = A310564 n

end A310564

/-! ## A310564.P1252087247636714847

`A008574(A312895(n)+n-A008574(n))`
-/

namespace A310564.P1252087247636714847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A312895 n + ((n : ℤ) - A008574 n)).toNat

end

end A310564.P1252087247636714847

namespace A310564

/-- `A008574(A312895(n)+n-A008574(n))` -/
def P1252087247636714847.Spec : Prop :=
  ∀ n, P1252087247636714847.a n = A310564 n

end A310564

/-! ## A310564.P3890879160724690078

`A008574(n-(A008574(n)-A312895(n)))`
-/

namespace A310564.P3890879160724690078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((n : ℤ) - (A008574 n - A312895 n)).toNat

end

end A310564.P3890879160724690078

namespace A310564

/-- `A008574(n-(A008574(n)-A312895(n)))` -/
def P3890879160724690078.Spec : Prop :=
  ∀ n, P3890879160724690078.a n = A310564 n

end A310564

/-! ## A310564.P17561839638142782173

`A005843(A060464(2*n+1))+A000007(n)`
-/

namespace A310564.P17561839638142782173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A060464 (2 * n + 1)).toNat + A000007 n

end

end A310564.P17561839638142782173

namespace A310564

/-- `A005843(A060464(2*n+1))+A000007(n)` -/
def P17561839638142782173.Spec : Prop :=
  ∀ n, P17561839638142782173.a n = A310564 n

end A310564

/-! ## A310564.P13326755566792594131

`A008574(A057357(2*n+1)+A057357(n+1))`
-/

namespace A310564.P13326755566792594131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057357 (2 * n + 1) + A057357 (n + 1)).toNat

end

end A310564.P13326755566792594131

namespace A310564

/-- `A008574(A057357(2*n+1)+A057357(n+1))` -/
def P13326755566792594131.Spec : Prop :=
  ∀ n, P13326755566792594131.a n = A310564 n

end A310564

/-! ## A310564.P16327964724951118542

`A060464(2*n+1)+A060464(A004280(n+2))`
-/

namespace A310564.P16327964724951118542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (2 * n + 1) + A060464 (A004280 (n + 2)).toNat

end

end A310564.P16327964724951118542

namespace A310564

/-- `A060464(2*n+1)+A060464(A004280(n+2))` -/
def P16327964724951118542.Spec : Prop :=
  ∀ n, P16327964724951118542.a n = A310564 n

end A310564

/-! ## A310564.P422408099816003774

`A008574(A008458(n)+n-A315541(n))`
-/

namespace A310564.P422408099816003774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008458 n + ((n : ℤ) - A315541 n)).toNat

end

end A310564.P422408099816003774

namespace A310564

/-- `A008574(A008458(n)+n-A315541(n))` -/
def P422408099816003774.Spec : Prop :=
  ∀ n, P422408099816003774.a n = A310564 n

end A310564

/-! ## A310564.P9397541843328417874

`A008574(n-(A315541(n)-A008458(n)))`
-/

namespace A310564.P9397541843328417874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 ((n : ℤ) - (A315541 n - A008458 n)).toNat

end

end A310564.P9397541843328417874

namespace A310564

/-- `A008574(n-(A315541(n)-A008458(n)))` -/
def P9397541843328417874.Spec : Prop :=
  ∀ n, P9397541843328417874.a n = A310564 n

end A310564

/-! ## A310564.P5576257783524315845

`A028310(2*A060464(2*n+1))`
-/

namespace A310564.P5576257783524315845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A060464 (2 * n + 1)).toNat

end

end A310564.P5576257783524315845

namespace A310564

/-- `A028310(2*A060464(2*n+1))` -/
def P5576257783524315845.Spec : Prop :=
  ∀ n, P5576257783524315845.a n = A310564 n

end A310564

/-! ## A310564.P9799518906849755056

`2*A311586(2*n)-A008458(2*n)`
-/

namespace A310564.P9799518906849755056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311586 (2 * n) - A008458 (2 * n)

end

end A310564.P9799518906849755056

namespace A310564

/-- `2*A311586(2*n)-A008458(2*n)` -/
def P9799518906849755056.Spec : Prop :=
  ∀ n, P9799518906849755056.a n = A310564 n

end A310564

/-!
# A310565: Coordination sequence Gal.4.82.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310565, the canonical program `A310565.P6513209614937103627` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310565 has offset 0).

The definition of A310565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310565.P6513209614937103627

`a(n-3)+16` with `a(0)=1, a(1)=4, a(2)=12, a(3)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310565

/-- `a(n-3)+16` -/
def P6513209614937103627.Spec : Prop :=
  ∀ n, (P6513209614937103627.a n : ℤ) = A310565 n

theorem P6513209614937103627.correct : P6513209614937103627.Spec := by
  intro n
  simp only [A310565]

end A310565

/-! ## A310565.P8315635720900902625

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A310565.P8315635720900902625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310565.P8315635720900902625

namespace A310565

/-- `∑[floor(a(n-3))]` -/
def P8315635720900902625.Spec : Prop :=
  ∀ n, (P8315635720900902625.a n : ℤ) = A310565 n

end A310565

/-! ## A310565.P10414696129026792406

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=4, a(4)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A310565.P10414696129026792406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310565.P10414696129026792406

namespace A310565

/-- `∑[ceil(a(n-3))]` -/
def P10414696129026792406.Spec : Prop :=
  ∀ n, (P10414696129026792406.a n : ℤ) = A310565 n

end A310565

/-! ## A310565.P7789187622678514440

`∑[gcd(8, a(n-3))]` with `a(0)=1, a(1)=3, a(2)=8, a(3)=4, a(4)=4`
-/

namespace A310565.P7789187622678514440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 4, 4] fun n f1 =>
  Nat.gcd 8 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310565.P7789187622678514440

namespace A310565

/-- `∑[gcd(8, a(n-3))]` -/
def P7789187622678514440.Spec : Prop :=
  ∀ n, (P7789187622678514440.a n : ℤ) = A310565 n

end A310565

/-! ## A310565.P4796124898929980677

`record[(n+1)²%or(4, (1-n)²)]`
-/

namespace A310565.P4796124898929980677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (Int.lor 4 ((1 - (n : ℤ)) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310565.P4796124898929980677

namespace A310565

/-- `record[(n+1)²%or(4, (1-n)²)]` -/
def P4796124898929980677.Spec : Prop :=
  ∀ n, P4796124898929980677.a n = A310565 n

end A310565

/-! ## A310565.P8817299514627078531

`record[and(n, xor(5, n)+6)^(n%2)]`
-/

namespace A310565.P8817299514627078531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 5 n + 6) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310565.P8817299514627078531

namespace A310565

/-- `record[and(n, xor(5, n)+6)^(n%2)]` -/
def P8817299514627078531.Spec : Prop :=
  ∀ n, (P8817299514627078531.a n : ℤ) = A310565 n

end A310565

/-! ## A310565.P5596777731479956320

`record[(n+1)*(2-and(17, (n+1)²))]`
-/

namespace A310565.P5596777731479956320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - (Nat.land 17 ((n + 1) ^ 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310565.P5596777731479956320

namespace A310565

/-- `record[(n+1)*(2-and(17, (n+1)²))]` -/
def P5596777731479956320.Spec : Prop :=
  ∀ n, P5596777731479956320.a n = A310565 n

end A310565

/-! ## A310565.P13895933801872196076

`8-(and(4, a(n-2))-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A310565.P13895933801872196076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 - (Int.land 4 (a (n - 2)) - a (n - 1))

end

end A310565.P13895933801872196076

namespace A310565

/-- `8-(and(4, a(n-2))-a(n-1))` -/
def P13895933801872196076.Spec : Prop :=
  ∀ n, P13895933801872196076.a n = A310565 n

end A310565

/-! ## A310565.P14084635036087301799

`4-(a(n-2)-or(4, a(n-2))-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A310565.P14084635036087301799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (a (n - 2) - Int.lor 4 (a (n - 2)) - a (n - 1))

end

end A310565.P14084635036087301799

namespace A310565

/-- `4-(a(n-2)-or(4, a(n-2))-a(n-1))` -/
def P14084635036087301799.Spec : Prop :=
  ∀ n, P14084635036087301799.a n = A310565 n

end A310565

/-! ## A310565.P10935587334297644

`record[A187541(abs(2-n))]`
-/

namespace A310565.P10935587334297644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187541 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310565.P10935587334297644

namespace A310565

/-- `record[A187541(abs(2-n))]` -/
def P10935587334297644.Spec : Prop :=
  ∀ n, P10935587334297644.a n = A310565 n

end A310565

/-! ## A310565.P750763664944206008

`A008574(comp[4*n+2])`
-/

namespace A310565.P750763664944206008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A310565.P750763664944206008

namespace A310565

/-- `A008574(comp[4*n+2])` -/
def P750763664944206008.Spec : Prop :=
  ∀ n, P750763664944206008.a n = A310565 n

end A310565

/-! ## A310565.P449685407994406814

`or(2, A063089(n+1))-2`
-/

namespace A310565.P449685407994406814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A063089 (n + 1)) - 2

end

end A310565.P449685407994406814

namespace A310565

/-- `or(2, A063089(n+1))-2` -/
def P449685407994406814.Spec : Prop :=
  ∀ n, P449685407994406814.a n = A310565 n

end A310565

/-! ## A310565.P352765224022800410

`A063236(n)-a(n-1)` with `a(0)=1`
-/

namespace A310565.P352765224022800410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063236 n - a (n - 1)

end

end A310565.P352765224022800410

namespace A310565

/-- `A063236(n)-a(n-1)` -/
def P352765224022800410.Spec : Prop :=
  ∀ n, P352765224022800410.a n = A310565 n

end A310565

/-! ## A310565.P1882021584678128563

`A004277(2*round(4*n/3))`
-/

namespace A310565.P1882021584678128563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat

end

end A310565.P1882021584678128563

namespace A310565

/-- `A004277(2*round(4*n/3))` -/
def P1882021584678128563.Spec : Prop :=
  ∀ n, P1882021584678128563.a n = A310565 n

end A310565

/-! ## A310565.P10787012047096112653

`abs(2-A133653(comp[4*n+2]+1))`
-/

namespace A310565.P10787012047096112653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A133653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)|

end

end A310565.P10787012047096112653

namespace A310565

/-- `abs(2-A133653(comp[4*n+2]+1))` -/
def P10787012047096112653.Spec : Prop :=
  ∀ n, P10787012047096112653.a n = A310565 n

end A310565

/-! ## A310565.P13112057391468773636

`A004773(A136290(n))`
-/

namespace A310565.P13112057391468773636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A136290 n).toNat

end

end A310565.P13112057391468773636

namespace A310565

/-- `A004773(A136290(n))` -/
def P13112057391468773636.Spec : Prop :=
  ∀ n, P13112057391468773636.a n = A310565 n

end A310565

/-! ## A310565.P4404803437258155581

`A004275(A047529(n+1))`
-/

namespace A310565.P4404803437258155581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047529 (n + 1)).toNat

end

end A310565.P4404803437258155581

namespace A310565

/-- `A004275(A047529(n+1))` -/
def P4404803437258155581.Spec : Prop :=
  ∀ n, P4404803437258155581.a n = A310565 n

end A310565

/-! ## A310565.P2116824843441547449

`A042965(A136290(n)+1)`
-/

namespace A310565.P2116824843441547449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A136290 n + 1).toNat

end

end A310565.P2116824843441547449

namespace A310565

/-- `A042965(A136290(n)+1)` -/
def P2116824843441547449.Spec : Prop :=
  ∀ n, P2116824843441547449.a n = A310565 n

end A310565

/-! ## A310565.P11245842851937097127

`A047513(A136290(n)+1)`
-/

namespace A310565.P11245842851937097127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A136290 n + 1).toNat

end

end A310565.P11245842851937097127

namespace A310565

/-- `A047513(A136290(n)+1)` -/
def P11245842851937097127.Spec : Prop :=
  ∀ n, P11245842851937097127.a n = A310565 n

end A310565

/-! ## A310565.P8177747204888307267

`A058992(A047464(n+2))`
-/

namespace A310565.P8177747204888307267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A047464 (n + 2)).toNat

end

end A310565.P8177747204888307267

namespace A310565

/-- `A058992(A047464(n+2))` -/
def P8177747204888307267.Spec : Prop :=
  ∀ n, P8177747204888307267.a n = A310565 n

end A310565

/-!
# A310566: Coordination sequence Gal.5.144.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310566, there is no canonical definition to state claims against.
-/

/-! ## A310566.P8884280057544021594

`A008574(∑[A305831(∑[n+2]-1)])`
-/

namespace A310566.P8884280057544021594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310566.P8884280057544021594

/-! ## A310566.P8541597587722726310

`and(61, A315656(A087051(n)))`
-/

namespace A310566.P8541597587722726310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 61 (A315656 (A087051 n).toNat)

end

end A310566.P8541597587722726310

/-! ## A310566.P12699036799480480220

`A352241(A291746(n+1))`
-/

namespace A310566.P12699036799480480220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A291746 (n + 1)).toNat

end

end A310566.P12699036799480480220

/-! ## A310566.P10057134636093374751

`eq[A159584(n+1), A292475(n+1)]`
-/

namespace A310566.P10057134636093374751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310566.P10057134636093374751

/-!
# A310567: Coordination sequence Gal.6.369.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310567, there is no canonical definition to state claims against.
-/

/-! ## A310567.P8334209811545006716

`A001222(A015448(n))+xor(1, 5*n)`
-/

namespace A310567.P8334209811545006716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A015448 n).toNat + (Nat.xor 1 (5 * n) : ℤ)

end

end A310567.P8334209811545006716

/-! ## A310567.P11840003854484702007

`A312816(n)+A028572(A045723(n))`
-/

namespace A310567.P11840003854484702007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312816 n + A028572 (A045723 n).toNat

end

end A310567.P11840003854484702007

/-! ## A310567.P982310348401253356

`A310505(n)+A141700(A002531(n))`
-/

namespace A310567.P982310348401253356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310505 n + A141700 (A002531 n).toNat

end

end A310567.P982310348401253356

/-! ## A310567.P2709340614962184960

`A245092(A314142(n)^A143572(n))`
-/

namespace A310567.P2709340614962184960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A314142 n : ℚ) ^ (A143572 n : ℤ))).toNat

end

end A310567.P2709340614962184960

/-! ## A310567.P7295055132958733899

`A245092(A314142(n)^A032568(n+1))`
-/

namespace A310567.P7295055132958733899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A314142 n : ℚ) ^ (A032568 (n + 1) : ℤ))).toNat

end

end A310567.P7295055132958733899

/-!
# A310568: Coordination sequence Gal.6.370.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310568, there is no canonical definition to state claims against.
-/

/-! ## A310568.P10519647022849166743

`A314172(n)-A102283(n)`
-/

namespace A310568.P10519647022849166743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314172 n - A102283 n

end

end A310568.P10519647022849166743

/-! ## A310568.P10469122705996466086

`A314172(n)-A049347(n+2)`
-/

namespace A310568.P10469122705996466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314172 n - A049347 (n + 2)

end

end A310568.P10469122705996466086

/-! ## A310568.P326127834774535951

`A314172(n)+n-A064429(n)`
-/

namespace A310568.P326127834774535951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314172 n + ((n : ℤ) - A064429 n)

end

end A310568.P326127834774535951

/-! ## A310568.P14912685932461925970

`A314172(n)+A010892(2*(n+1))`
-/

namespace A310568.P14912685932461925970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314172 n + A010892 (2 * (n + 1))

end

end A310568.P14912685932461925970

/-! ## A310568.P12399558465456810361

`A008458(n)-A132747(A186417(3*n+2))`
-/

namespace A310568.P12399558465456810361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A132747 (A186417 (3 * n + 2)).toNat

end

end A310568.P12399558465456810361

/-!
# A310577: Coordination sequence Gal.6.42.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310577, there is no canonical definition to state claims against.
-/

/-! ## A310577.P17276124354623314013

`∑[A000005(A246682(3*n+5))]-1`
-/

namespace A310577.P17276124354623314013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A246682 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A310577.P17276124354623314013

/-! ## A310577.P14783585732865204604

`or(A185284((5-n)²), A296655(n+1))`
-/

namespace A310577.P14783585732865204604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A296655 (n + 1))

end

end A310577.P14783585732865204604

/-! ## A310577.P13682823628630228137

`eq[A007920(n), A092896(A321936(n))]`
-/

namespace A310577.P13682823628630228137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092896 (A321936 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310577.P13682823628630228137

/-! ## A310577.P13477988940684474301

`eq[A040024(A246186(n)), A284011(n+1)]`
-/

namespace A310577.P13477988940684474301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (A246186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310577.P13477988940684474301

/-! ## A310577.P16589065973406944420

`or(A185238(A180771(n+1)), A296655(n+1))`
-/

namespace A310577.P16589065973406944420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185238 (A180771 (n + 1)).toNat) (A296655 (n + 1))

end

end A310577.P16589065973406944420

/-!
# A310578: Coordination sequence Gal.5.4.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310578, there is no canonical definition to state claims against.
-/

/-! ## A310578.P7923748978787944768

`A107463(record[A193917(n)²])`
-/

namespace A310578.P7923748978787944768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A310578.P7923748978787944768

/-! ## A310578.P7240365911287148046

`eq[A002033(n), A339660(A025805(n))]`
-/

namespace A310578.P7240365911287148046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A025805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310578.P7240365911287148046

/-! ## A310578.P12707829087723060513

`eq[A097795(A057921(n)), A325765(n)]`
-/

namespace A310578.P12707829087723060513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A057921 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310578.P12707829087723060513

/-! ## A310578.P12368710473429473420

`eq[A000045(A081753(n)), A322338(n+1)]`
-/

namespace A310578.P12368710473429473420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A081753 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310578.P12368710473429473420

/-! ## A310578.P12147881314426244151

`A266875(A227149(n+1))+A006005(n+1)`
-/

namespace A310578.P12147881314426244151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266875 (A227149 (n + 1)).toNat + A006005 (n + 1)

end

end A310578.P12147881314426244151

/-!
# A310583: Coordination sequence Gal.6.6.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310583, there is no canonical definition to state claims against.
-/

/-! ## A310583.P6015887909770876034

`A371447(A276463(n)+2)-A214212(A004526(n))`
-/

namespace A310583.P6015887909770876034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A214212 (A004526 n).toNat

end

end A310583.P6015887909770876034

/-! ## A310583.P7546446825339797338

`A371447(A276463(n)+2)-A000005(A058313(n+1))`
-/

namespace A310583.P7546446825339797338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (A276463 n + 2).toNat - A000005 (A058313 (n + 1)).toNat

end

end A310583.P7546446825339797338

/-! ## A310583.P18354729146253270493

`A335901(n+1)+record[A279228(n+1)]`
-/

namespace A310583.P18354729146253270493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335901 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310583.P18354729146253270493

/-! ## A310583.P4779088999434451201

`A045319(n+1)-A008836(A164039(n))`
-/

namespace A310583.P4779088999434451201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1) - A008836 (A164039 n).toNat

end

end A310583.P4779088999434451201

/-! ## A310583.P9018035160867678419

`eq[A053760(A034953(n+1)), A266722(n)]`
-/

namespace A310583.P9018035160867678419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (A034953 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310583.P9018035160867678419

/-!
# A310588: Coordination sequence Gal.6.112.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310588, there is no canonical definition to state claims against.
-/

/-! ## A310588.P1434243350780858715

`eq[2, A337243(A225745(n+1))]`
-/

namespace A310588.P1434243350780858715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (A225745 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A310588.P1434243350780858715

/-!
# A310590: Coordination sequence Gal.6.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310590, there is no canonical definition to state claims against.
-/

/-! ## A310590.P4653859088009039970

`eq[A078134(n+1), A362496(n)]`
-/

namespace A310590.P4653859088009039970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310590.P4653859088009039970

/-! ## A310590.P353039098247016206

`A020639(A007691(n+1))*lt[n, or(n, 2*n%4)]`
-/

namespace A310590.P353039098247016206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * (n % 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007691 (n + 1)).toNat * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A310590.P353039098247016206

/-! ## A310590.P7781646094541110322

`lt[xor(n+2, (2*n+1)%8), n]*A020639(A000759(n))`
-/

namespace A310590.P7781646094541110322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) ((2 * n + 1) % 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) * A020639 (A000759 n).toNat

end

end A310590.P7781646094541110322

/-! ## A310590.P2686732825461806420

`A046523(A007097(n))*A047606(n+1)`
-/

namespace A310590.P2686732825461806420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A007097 n).toNat * A047606 (n + 1)

end

end A310590.P2686732825461806420

/-!
# A310591: Coordination sequence Gal.6.102.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310591, there is no canonical definition to state claims against.
-/

/-! ## A310591.P8029623691553187064

`A177887(n+1)+A001222(A162162(n))`
-/

namespace A310591.P8029623691553187064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177887 (n + 1) + A001222 (A162162 n).toNat

end

end A310591.P8029623691553187064

/-!
# A310592: Coordination sequence Gal.6.10.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310592, there is no canonical definition to state claims against.
-/

/-! ## A310592.P6108209849171311634

`A310192(n)+A304438(A000984(n))`
-/

namespace A310592.P6108209849171311634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310192 n + A304438 (A000984 n).toNat

end

end A310592.P6108209849171311634

/-!
# A310596: Coordination sequence Gal.6.33.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310596, there is no canonical definition to state claims against.
-/

/-! ## A310596.P17890094072302394362

`A091065(lt[A340606(3*n+4), A119274(2*(n+1))])`
-/

namespace A310596.P17890094072302394362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340606 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119274 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310596.P17890094072302394362

/-! ## A310596.P4316074362071308049

`record[A013632(or(2, A051645(n+1)))]`
-/

namespace A310596.P4316074362071308049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Int.lor 2 (A051645 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310596.P4316074362071308049

/-! ## A310596.P3014236848699679143

`record[A338743(2*(n+1))%A128337(n+1)]`
-/

namespace A310596.P3014236848699679143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338743 (2 * (n + 1))) (A128337 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310596.P3014236848699679143

/-! ## A310596.P18212880440016970514

`eq[2^val(n+1, 2), A112798(A241909(n+4))]`
-/

namespace A310596.P18212880440016970514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A241909 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A310596.P18212880440016970514

/-!
# A310597: Coordination sequence Gal.5.8.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310597, there is no canonical definition to state claims against.
-/

/-! ## A310597.P15530689788930052268

`A016813(n)-A067898(A069072(n))`
-/

namespace A310597.P15530689788930052268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A067898 (A069072 n).toNat

end

end A310597.P15530689788930052268

/-! ## A310597.P13412850820842033800

`A295771(A001951(n))+A047498(n+1)`
-/

namespace A310597.P13412850820842033800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295771 (A001951 n).toNat + A047498 (n + 1)

end

end A310597.P13412850820842033800

/-! ## A310597.P10190616633346954582

`A250120(n)-A061394(3^n)`
-/

namespace A310597.P10190616633346954582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A061394 (3 ^ n)

end

end A310597.P10190616633346954582

/-! ## A310597.P796021989030462417

`A314989(n)-A001222(A024038(n))`
-/

namespace A310597.P796021989030462417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314989 n - A001222 (A024038 n).toNat

end

end A310597.P796021989030462417

/-! ## A310597.P4983455540863831070

`A105772(n+1)+A010051(A104365(n+2))`
-/

namespace A310597.P4983455540863831070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1) + A010051 (A104365 (n + 2)).toNat

end

end A310597.P4983455540863831070

/-!
# A310598: Coordination sequence Gal.6.23.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310598, there is no canonical definition to state claims against.
-/

/-! ## A310598.P5224070332510326012

`record[Δ[Δ[A141219(2*n+1)]]]`
-/

namespace A310598.P5224070332510326012
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141219 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310598.P5224070332510326012

/-! ## A310598.P18324691600134628151

`∑[A173527(A173528(3^n))]`
-/

namespace A310598.P18324691600134628151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173527 (A173528 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310598.P18324691600134628151

