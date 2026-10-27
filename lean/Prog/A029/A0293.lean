import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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
# A029300: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^12)).

The programs for A029300, the canonical program `A029300.P14221668752805489008` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029300 has offset 0).

The definition of A029300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029300.P14221668752805489008

`A025853(n)+A029155(n)-A029164(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029300

/-- `A025853(n)+A029155(n)-A029164(n)` -/
def P14221668752805489008.Spec : Prop :=
  ∀ n, P14221668752805489008.a n = A029300 n

theorem P14221668752805489008.correct : P14221668752805489008.Spec := by
  intro n
  simp only [A029300]

end A029300

/-! ## A029300.P10119084927069240930

`A029318(n)+A029425(n)-A025920(n)`
-/

namespace A029300.P10119084927069240930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029318 n + (A029425 n - A025920 n)

end

end A029300.P10119084927069240930

namespace A029300

/-- `A029318(n)+A029425(n)-A025920(n)` -/
def P10119084927069240930.Spec : Prop :=
  ∀ n, P10119084927069240930.a n = A029300 n

end A029300

/-! ## A029300.P3862335279506148461

`A004275(A025842(n))*A185116(8*n²)`
-/

namespace A029300.P3862335279506148461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A025842 n).toNat * A185116 (8 * n ^ 2)

end

end A029300.P3862335279506148461

namespace A029300

/-- `A004275(A025842(n))*A185116(8*n²)` -/
def P3862335279506148461.Spec : Prop :=
  ∀ n, P3862335279506148461.a n = A029300 n

end A029300

/-! ## A029300.P3930767984170236375

`A029297(n)-A118135(A286542(n))`
-/

namespace A029300.P3930767984170236375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029297 n - A118135 (A286542 n).toNat

end

end A029300.P3930767984170236375

namespace A029300

/-- `A029297(n)-A118135(A286542(n))` -/
def P3930767984170236375.Spec : Prop :=
  ∀ n, P3930767984170236375.a n = A029300 n

end A029300

/-! ## A029300.P630322013239898867

`A364387(2*A171560(n+2))`
-/

namespace A029300.P630322013239898867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (2 * A171560 (n + 2)).toNat

end

end A029300.P630322013239898867

namespace A029300

/-- `A364387(2*A171560(n+2))` -/
def P630322013239898867.Spec : Prop :=
  ∀ n, P630322013239898867.a n = A029300 n

end A029300

/-!
# A029301: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^9)*(1-x^10)).

The programs for A029301, the canonical program `A029301.P14335313693051776555` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029301 has offset 0).

The definition of A029301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^6-x^10+x^12+x^13+x^15+x^16-x^18-x^22-x^25+x^28))` (program `A029301.P14335313693051776555`, by `A029301.P14335313693051776555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029301.P14335313693051776555

`ogf(1/(1-x^3-x^6-x^10+x^12+x^13+x^15+x^16-x^18-x^22-x^25+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029301

/-- `ogf(1/(1-x^3-x^6-x^10+x^12+x^13+x^15+x^16-x^18-x^22-x^25+x^28))` -/
def P14335313693051776555.Spec : Prop :=
  ∀ n, P14335313693051776555.a n = A029301 n

theorem P14335313693051776555.correct : P14335313693051776555.Spec := by
  intro n
  simp only [A029301]

end A029301

/-! ## A029301.P16025174442883651403

`A025904(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029301.P16025174442883651403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025904 n + a (n - 3)

end

end A029301.P16025174442883651403

namespace A029301

/-- `A025904(n)+a(n-3)` -/
def P16025174442883651403.Spec : Prop :=
  ∀ n, P16025174442883651403.a n = A029301 n

end A029301

/-! ## A029301.P12214325034262938535

`A029253(n)+A029286(n)-A029248(n)`
-/

namespace A029301.P12214325034262938535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n + (A029286 n - A029248 n)

end

end A029301.P12214325034262938535

namespace A029301

/-- `A029253(n)+A029286(n)-A029248(n)` -/
def P12214325034262938535.Spec : Prop :=
  ∀ n, P12214325034262938535.a n = A029301 n

end A029301

/-! ## A029301.P11669702017738531561

`A029302(A143097(n+1)%A255286(n))`
-/

namespace A029301.P11669702017738531561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (Int.tmod (A143097 (n + 1)) (A255286 n)).toNat

end

end A029301.P11669702017738531561

namespace A029301

/-- `A029302(A143097(n+1)%A255286(n))` -/
def P11669702017738531561.Spec : Prop :=
  ∀ n, P11669702017738531561.a n = A029301 n

end A029301

/-! ## A029301.P15804976875928067994

`A029302(A064429(n)%A200327(n+1)²)`
-/

namespace A029301.P15804976875928067994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (Int.tmod (A064429 n) (A200327 (n + 1) ^ 2)).toNat

end

end A029301.P15804976875928067994

namespace A029301

/-- `A029302(A064429(n)%A200327(n+1)²)` -/
def P15804976875928067994.Spec : Prop :=
  ∀ n, P15804976875928067994.a n = A029301 n

end A029301

/-!
# A029302: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^9)*(1-x^11)).

The programs for A029302, the canonical program `A029302.P7773887882283839256` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029302 has offset 0).

The definition of A029302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029302.P7773887882283839256

`A025905(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029302

/-- `A025905(n)+a(n-3)` -/
def P7773887882283839256.Spec : Prop :=
  ∀ n, P7773887882283839256.a n = A029302 n

theorem P7773887882283839256.correct : P7773887882283839256.Spec := by
  intro n
  simp only [A029302]

end A029302

/-! ## A029302.P16492462137140403317

`A029267(n)+A029274(n)-A029249(n)`
-/

namespace A029302.P16492462137140403317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029267 n + (A029274 n - A029249 n)

end

end A029302.P16492462137140403317

namespace A029302

/-- `A029267(n)+A029274(n)-A029249(n)` -/
def P16492462137140403317.Spec : Prop :=
  ∀ n, P16492462137140403317.a n = A029302 n

end A029302

/-! ## A029302.P16208908379939230566

`A029114(n)-A029430(A020742(n))`
-/

namespace A029302.P16208908379939230566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n - A029430 (A020742 n).toNat

end

end A029302.P16208908379939230566

namespace A029302

/-- `A029114(n)-A029430(A020742(n))` -/
def P16208908379939230566.Spec : Prop :=
  ∀ n, P16208908379939230566.a n = A029302 n

end A029302

/-! ## A029302.P8257571923955243149

`∑[A025905(n)]-A029430(A020742(n))`
-/

namespace A029302.P8257571923955243149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029430 (A020742 n).toNat

end

end A029302.P8257571923955243149

namespace A029302

/-- `∑[A025905(n)]-A029430(A020742(n))` -/
def P8257571923955243149.Spec : Prop :=
  ∀ n, P8257571923955243149.a n = A029302 n

end A029302

/-! ## A029302.P1357090513432806356

`A029301(A064429(n)%A200327(n+1))`
-/

namespace A029302.P1357090513432806356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029301 (Int.tmod (A064429 n) (A200327 (n + 1))).toNat

end

end A029302.P1357090513432806356

namespace A029302

/-- `A029301(A064429(n)%A200327(n+1))` -/
def P1357090513432806356.Spec : Prop :=
  ∀ n, P1357090513432806356.a n = A029302 n

end A029302

/-!
# A029303: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)*(1-x^11)).

The programs for A029303, the canonical program `A029303.P996504278850235236` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029303 has offset 0).

The definition of A029303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029303.P13164645289789058377

`A025906(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029303.P13164645289789058377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025906 n + a (n - 3)

end

end A029303.P13164645289789058377

namespace A029303

/-- `A025906(n)+a(n-3)` -/
def P13164645289789058377.Spec : Prop :=
  ∀ n, P13164645289789058377.a n = A029303 n

end A029303

/-! ## A029303.P1133576477191078748

`A025857(n)+A029276(n)-A029291(n)`
-/

namespace A029303.P1133576477191078748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029276 n - A029291 n)

end

end A029303.P1133576477191078748

namespace A029303

/-- `A025857(n)+A029276(n)-A029291(n)` -/
def P1133576477191078748.Spec : Prop :=
  ∀ n, P1133576477191078748.a n = A029303 n

end A029303

/-! ## A029303.P1478036366206532299

`A029255(n)+A029313(n)-A029259(n)`
-/

namespace A029303.P1478036366206532299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029255 n + (A029313 n - A029259 n)

end

end A029303.P1478036366206532299

namespace A029303

/-- `A029255(n)+A029313(n)-A029259(n)` -/
def P1478036366206532299.Spec : Prop :=
  ∀ n, P1478036366206532299.a n = A029303 n

theorem P1478036366206532299.correct : P1478036366206532299.Spec := by
  intro n
  simp only [A029303, Nat.add_sub_cancel, A029303.P1478036366206532299.a, A029303.P996504278850235236.a, A029255, A029255.P9888914938056888738.a, A029259, A029259.P5557540223903951613.a, A029311, A029311.P11942994698236464024.a, A029313, A029313.P18194141507139867726.a, A029355, A029355.P10567033194552355608.a, A029363, A029363.P5892090971847677782.a, A025913, A025913.P6872223754574144002.a, A029222, A029222.P13450996779978871818.a, A029230, A029230.P18014352078282283868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029303

/-! ## A029303.P14319450737431655032

`A029295(n)+A029357(n)-A029349(n)`
-/

namespace A029303.P14319450737431655032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029295 n + (A029357 n - A029349 n)

end

end A029303.P14319450737431655032

namespace A029303

/-- `A029295(n)+A029357(n)-A029349(n)` -/
def P14319450737431655032.Spec : Prop :=
  ∀ n, P14319450737431655032.a n = A029303 n

theorem P14319450737431655032.correct : P14319450737431655032.Spec := by
  intro n
  simp only [A029303, Nat.add_sub_cancel, A029303.P14319450737431655032.a, A029303.P996504278850235236.a, A029295, A029295.P6904684891100908360.a, A029311, A029311.P11942994698236464024.a, A029349, A029349.P5476095844287341884.a, A029355, A029355.P10567033194552355608.a, A029357, A029357.P1479724606091517717.a, A029363, A029363.P5892090971847677782.a, A025913, A025913.P6872223754574144002.a, A029222, A029222.P13450996779978871818.a, A029230, A029230.P18014352078282283868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029303

/-! ## A029303.P996504278850235236

`A029311(n)+A029355(n)-A029363(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029303

/-- `A029311(n)+A029355(n)-A029363(n)` -/
def P996504278850235236.Spec : Prop :=
  ∀ n, P996504278850235236.a n = A029303 n

theorem P996504278850235236.correct : P996504278850235236.Spec := by
  intro n
  simp only [A029303]

end A029303

/-! ## A029303.P16018451326880158358

`A029291(A020710(n))-A025857(A020710(n))`
-/

namespace A029303.P16018451326880158358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 (A020710 n).toNat - A025857 (A020710 n).toNat

end

end A029303.P16018451326880158358

namespace A029303

/-- `A029291(A020710(n))-A025857(A020710(n))` -/
def P16018451326880158358.Spec : Prop :=
  ∀ n, P16018451326880158358.a n = A029303 n

end A029303

/-!
# A029304: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)*(1-x^12)).

The programs for A029304, the canonical program `A029304.P9150661440163627688` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029304 has offset 0).

The definition of A029304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029304.P9150661440163627688

`A177239(A171088(A028242(n))+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029304

/-- `A177239(A171088(A028242(n))+1)` -/
def P9150661440163627688.Spec : Prop :=
  ∀ n, P9150661440163627688.a n = A029304 n

theorem P9150661440163627688.correct : P9150661440163627688.Spec := by
  intro n
  simp only [A029304]

end A029304

/-! ## A029304.P4224551575780396645

`A029323(n)+A029429(n)-A025924(n)`
-/

namespace A029304.P4224551575780396645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029323 n + (A029429 n - A025924 n)

end

end A029304.P4224551575780396645

namespace A029304

/-- `A029323(n)+A029429(n)-A025924(n)` -/
def P4224551575780396645.Spec : Prop :=
  ∀ n, P4224551575780396645.a n = A029304 n

end A029304

/-! ## A029304.P18105280724013288161

`A151566(A025843(n))%A000010(A000045(n+4))`
-/

namespace A029304.P18105280724013288161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151566 (A025843 n).toNat) (A000010 (A000045 (n + 4)).toNat)

end

end A029304.P18105280724013288161

namespace A029304

/-- `A151566(A025843(n))%A000010(A000045(n+4))` -/
def P18105280724013288161.Spec : Prop :=
  ∀ n, P18105280724013288161.a n = A029304 n

end A029304

/-! ## A029304.P15570374228503183458

`A387880(A075353(n+2))`
-/

namespace A029304.P15570374228503183458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387880 (A075353 (n + 2)).toNat

end

end A029304.P15570374228503183458

namespace A029304

/-- `A387880(A075353(n+2))` -/
def P15570374228503183458.Spec : Prop :=
  ∀ n, P15570374228503183458.a n = A029304 n

end A029304

/-! ## A029304.P12138142462725885722

`A338971(A332283(n+1))`
-/

namespace A029304.P12138142462725885722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338971 (A332283 (n + 1)).toNat

end

end A029304.P12138142462725885722

namespace A029304

/-- `A338971(A332283(n+1))` -/
def P12138142462725885722.Spec : Prop :=
  ∀ n, P12138142462725885722.a n = A029304 n

end A029304

/-!
# A029305: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^11)*(1-x^12)).

The programs for A029305, the canonical program `A029305.P5923973588584456125` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029305 has offset 0).

The definition of A029305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029305.P5923973588584456125

`A025907(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029305

/-- `A025907(n)+a(n-3)` -/
def P5923973588584456125.Spec : Prop :=
  ∀ n, P5923973588584456125.a n = A029305 n

theorem P5923973588584456125.correct : P5923973588584456125.Spec := by
  intro n
  simp only [A029305]

end A029305

/-! ## A029305.P7279339647515525381

`A029277(n)+A029315(n)-A029280(n)`
-/

namespace A029305.P7279339647515525381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 n + (A029315 n - A029280 n)

end

end A029305.P7279339647515525381

namespace A029305

/-- `A029277(n)+A029315(n)-A029280(n)` -/
def P7279339647515525381.Spec : Prop :=
  ∀ n, P7279339647515525381.a n = A029305 n

theorem P7279339647515525381.correct : P7279339647515525381.Spec := by
  intro n
  simp only [A029305, Nat.add_sub_cancel, A029305.P7279339647515525381.a, A029305.P5923973588584456125.a, A025907, A025907.P12793639154697755668.a, A029277, A029277.P17981612767777105858.a, A029280, A029280.P14027745827875663436.a, A029315, A029315.P17147396963157737905.a, A025781, A025781.P7662789883593314095.a, A025783, A025783.P15062552760523704649.a, A025881, A025881.P15100123725397875390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029305

/-! ## A029305.P16954049783982464847

`A029302(n+3)-A029430(n+3)`
-/

namespace A029305.P16954049783982464847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 (n + 3) - A029430 (n + 3)

end

end A029305.P16954049783982464847

namespace A029305

/-- `A029302(n+3)-A029430(n+3)` -/
def P16954049783982464847.Spec : Prop :=
  ∀ n, P16954049783982464847.a n = A029305 n

end A029305

/-! ## A029305.P772332266228703071

`A034968(A000045(A025844(n)²))`
-/

namespace A029305.P772332266228703071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000045 (A025844 n ^ 2).toNat).toNat

end

end A029305.P772332266228703071

namespace A029305

/-- `A034968(A000045(A025844(n)²))` -/
def P772332266228703071.Spec : Prop :=
  ∀ n, P772332266228703071.a n = A029305 n

end A029305

/-! ## A029305.P7004122900111499203

`A337101(A334638(n+1))`
-/

namespace A029305.P7004122900111499203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A334638 (n + 1)).toNat

end

end A029305.P7004122900111499203

namespace A029305

/-- `A337101(A334638(n+1))` -/
def P7004122900111499203.Spec : Prop :=
  ∀ n, P7004122900111499203.a n = A029305 n

end A029305

/-!
# A029306: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^9)).

The programs for A029306, the canonical program `A029306.P3523955415286614641` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029306 has offset 0).

The definition of A029306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7-x^8-x^9+x^10+x^11+x^12+x^15+x^16+x^17-x^18-x^19-x^20-x^24+x^27))` (program `A029306.P3523955415286614641`, by `A029306.P3523955415286614641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029306.P3523955415286614641

`ogf(1/(1-x^3-x^7-x^8-x^9+x^10+x^11+x^12+x^15+x^16+x^17-x^18-x^19-x^20-x^24+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029306

/-- `ogf(1/(1-x^3-x^7-x^8-x^9+x^10+x^11+x^12+x^15+x^16+x^17-x^18-x^19-x^20-x^24+x^27))` -/
def P3523955415286614641.Spec : Prop :=
  ∀ n, P3523955415286614641.a n = A029306 n

theorem P3523955415286614641.correct : P3523955415286614641.Spec := by
  intro n
  simp only [A029306]

end A029306

/-! ## A029306.P7411619528741633283

`A025908(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029306.P7411619528741633283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025908 n + a (n - 3)

end

end A029306.P7411619528741633283

namespace A029306

/-- `A025908(n)+a(n-3)` -/
def P7411619528741633283.Spec : Prop :=
  ∀ n, P7411619528741633283.a n = A029306 n

end A029306

/-! ## A029306.P6708631216040585907

`A029258(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0`
-/

namespace A029306.P6708631216040585907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0] fun n a =>
  A029258 n - a (n - 4)

end

end A029306.P6708631216040585907

namespace A029306

/-- `A029258(n)-a(n-4)` -/
def P6708631216040585907.Spec : Prop :=
  ∀ n, P6708631216040585907.a n = A029306 n

end A029306

/-! ## A029306.P14458623433053634894

`A029413(abs(3-n))+A029413(n)`
-/

namespace A029306.P14458623433053634894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029413 |3 - (n : ℤ)|.toNat + A029413 n

end

end A029306.P14458623433053634894

namespace A029306

/-- `A029413(abs(3-n))+A029413(n)` -/
def P14458623433053634894.Spec : Prop :=
  ∀ n, P14458623433053634894.a n = A029306 n

end A029306

/-! ## A029306.P3748662828292305163

`A029050(n+7)%A029054(n+7)`
-/

namespace A029306.P3748662828292305163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029050 (n + 7)) (A029054 (n + 7))

end

end A029306.P3748662828292305163

namespace A029306

/-- `A029050(n+7)%A029054(n+7)` -/
def P3748662828292305163.Spec : Prop :=
  ∀ n, P3748662828292305163.a n = A029306 n

end A029306

/-! ## A029306.P10409260119369175263

`A029050(round(sqrt(n²+1))+7)-A029054(n+7)`
-/

namespace A029306.P10409260119369175263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029050 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 7).toNat - A029054 (n + 7)

end

end A029306.P10409260119369175263

namespace A029306

/-- `A029050(round(sqrt(n²+1))+7)-A029054(n+7)` -/
def P10409260119369175263.Spec : Prop :=
  ∀ n, P10409260119369175263.a n = A029306 n

end A029306

/-!
# A029307: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^10)).

The programs for A029307, the canonical program `A029307.P16625482226971782564` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029307 has offset 0).

The definition of A029307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7-x^8+x^11+x^13+x^15+x^17-x^20-x^21-x^25+x^28))` (program `A029307.P16625482226971782564`, by `A029307.P16625482226971782564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029307.P16625482226971782564

`ogf(1/(1-x^3-x^7-x^8+x^11+x^13+x^15+x^17-x^20-x^21-x^25+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029307

/-- `ogf(1/(1-x^3-x^7-x^8+x^11+x^13+x^15+x^17-x^20-x^21-x^25+x^28))` -/
def P16625482226971782564.Spec : Prop :=
  ∀ n, P16625482226971782564.a n = A029307 n

theorem P16625482226971782564.correct : P16625482226971782564.Spec := by
  intro n
  simp only [A029307]

end A029307

/-! ## A029307.P1124786855564538988

`A025909(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029307.P1124786855564538988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025909 n + a (n - 3)

end

end A029307.P1124786855564538988

namespace A029307

/-- `A025909(n)+a(n-3)` -/
def P1124786855564538988.Spec : Prop :=
  ∀ n, P1124786855564538988.a n = A029307 n

end A029307

/-! ## A029307.P3942146260973275338

`A029259(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A029307.P3942146260973275338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A029259 n - a (n - 4)

end

end A029307.P3942146260973275338

namespace A029307

/-- `A029259(n)-a(n-4)` -/
def P3942146260973275338.Spec : Prop :=
  ∀ n, P3942146260973275338.a n = A029307 n

end A029307

/-! ## A029307.P15520472967877227012

`A029414(abs(3-n))+A029414(n)`
-/

namespace A029307.P15520472967877227012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 |3 - (n : ℤ)|.toNat + A029414 n

end

end A029307.P15520472967877227012

namespace A029307

/-- `A029414(abs(3-n))+A029414(n)` -/
def P15520472967877227012.Spec : Prop :=
  ∀ n, P15520472967877227012.a n = A029307 n

end A029307

/-! ## A029307.P641134571920757124

`Δ[∑[A029349(n)]-A029414(n)]`
-/

namespace A029307.P641134571920757124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029307.P641134571920757124

namespace A029307

/-- `Δ[∑[A029349(n)]-A029414(n)]` -/
def P641134571920757124.Spec : Prop :=
  ∀ n, P641134571920757124.a n = A029307 n

end A029307

/-! ## A029307.P5414806387017519697

`A029349(n+1)-Δ[A029414(n)]`
-/

namespace A029307.P5414806387017519697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029307.P5414806387017519697

namespace A029307

/-- `A029349(n+1)-Δ[A029414(n)]` -/
def P5414806387017519697.Spec : Prop :=
  ∀ n, P5414806387017519697.a n = A029307 n

end A029307

/-! ## A029307.P14469685779713023639

`A029294(n+2)+A029294(n)-A029292(n+2)`
-/

namespace A029307.P14469685779713023639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 (n + 2) + (A029294 n - A029292 (n + 2))

end

end A029307.P14469685779713023639

namespace A029307

/-- `A029294(n+2)+A029294(n)-A029292(n+2)` -/
def P14469685779713023639.Spec : Prop :=
  ∀ n, P14469685779713023639.a n = A029307 n

end A029307

/-!
# A029308: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^11)).

The programs for A029308, the canonical program `A029308.P9850508978971010874` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029308 has offset 0).

The definition of A029308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029308.P9253783541600558282

`A025910(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029308.P9253783541600558282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025910 n + a (n - 3)

end

end A029308.P9253783541600558282

namespace A029308

/-- `A025910(n)+a(n-3)` -/
def P9253783541600558282.Spec : Prop :=
  ∀ n, P9253783541600558282.a n = A029308 n

end A029308

/-! ## A029308.P9850508978971010874

`A029319(n)+A029360(n)-A029372(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029308

/-- `A029319(n)+A029360(n)-A029372(n)` -/
def P9850508978971010874.Spec : Prop :=
  ∀ n, P9850508978971010874.a n = A029308 n

theorem P9850508978971010874.correct : P9850508978971010874.Spec := by
  intro n
  simp only [A029308]

end A029308

/-! ## A029308.P7634278146101102143

`A029350(n+1)-Δ[A029415(n)]`
-/

namespace A029308.P7634278146101102143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029308.P7634278146101102143

namespace A029308

/-- `A029350(n+1)-Δ[A029415(n)]` -/
def P7634278146101102143.Spec : Prop :=
  ∀ n, P7634278146101102143.a n = A029308 n

end A029308

/-! ## A029308.P12260251884941728036

`A029437(2*n+1)+A025822(n+2)-A029350(n+2)`
-/

namespace A029308.P12260251884941728036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 1) + (A025822 (n + 2) - A029350 (n + 2))

end

end A029308.P12260251884941728036

namespace A029308

/-- `A029437(2*n+1)+A025822(n+2)-A029350(n+2)` -/
def P12260251884941728036.Spec : Prop :=
  ∀ n, P12260251884941728036.a n = A029308 n

end A029308

/-! ## A029308.P8216541453036887895

`A025432(n)+A005136(∑{d}[A046766(n), #])`
-/

namespace A029308.P8216541453036887895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025432 n + A005136 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A029308.P8216541453036887895

namespace A029308

/-- `A025432(n)+A005136(∑{d}[A046766(n), #])` -/
def P8216541453036887895.Spec : Prop :=
  ∀ n, P8216541453036887895.a n = A029308 n

end A029308

/-!
# A029309: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^12)).

The programs for A029309, the canonical program `A029309.P15051498724445637453` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029309 has offset 0).

The definition of A029309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029309.P15051498724445637453

`A025911(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029309

/-- `A025911(n)+a(n-3)` -/
def P15051498724445637453.Spec : Prop :=
  ∀ n, P15051498724445637453.a n = A029309 n

theorem P15051498724445637453.correct : P15051498724445637453.Spec := by
  intro n
  simp only [A029309]

end A029309

/-! ## A029309.P6159015699434345798

`A029120(n)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A029309.P6159015699434345798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029120 n - (a (n - 2) + a (n - 1))

end

end A029309.P6159015699434345798

namespace A029309

/-- `A029120(n)-(a(n-2)+a(n-1))` -/
def P6159015699434345798.Spec : Prop :=
  ∀ n, P6159015699434345798.a n = A029309 n

end A029309

/-! ## A029309.P7448113231537530657

`A029315(n)+A029361(n)-A029368(n)`
-/

namespace A029309.P7448113231537530657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029315 n + (A029361 n - A029368 n)

end

end A029309.P7448113231537530657

namespace A029309

/-- `A029315(n)+A029361(n)-A029368(n)` -/
def P7448113231537530657.Spec : Prop :=
  ∀ n, P7448113231537530657.a n = A029309 n

theorem P7448113231537530657.correct : P7448113231537530657.Spec := by
  intro n
  simp only [A029309, Nat.add_sub_cancel, A029309.P7448113231537530657.a, A029309.P15051498724445637453.a, A025911, A025911.P13384529438674371776.a, A029315, A029315.P17147396963157737905.a, A029361, A029361.P2316491448957553572.a, A029368, A029368.P396495999053672389.a, A029235, A029235.P12349426323057609679.a, A029277, A029277.P17981612767777105858.a, A029280, A029280.P14027745827875663436.a, A029305, A029305.P5923973588584456125.a, A025827, A025827.P17085874073192218021.a, A025907, A025907.P12793639154697755668.a, A029202, A029202.P12759038853367375186.a, A029213, A029213.P5201621740032638678.a, A025781, A025781.P7662789883593314095.a, A025783, A025783.P15062552760523704649.a, A025881, A025881.P15100123725397875390.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029309

/-! ## A029309.P5720497674156914202

`A029351(n+1)-Δ[A029416(n)]`
-/

namespace A029309.P5720497674156914202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029309.P5720497674156914202

namespace A029309

/-- `A029351(n+1)-Δ[A029416(n)]` -/
def P5720497674156914202.Spec : Prop :=
  ∀ n, P5720497674156914202.a n = A029309 n

end A029309

/-! ## A029309.P9602701420090501575

`A029057(n+3)-A029077(n+3)`
-/

namespace A029309.P9602701420090501575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (n + 3) - A029077 (n + 3)

end

end A029309.P9602701420090501575

namespace A029309

/-- `A029057(n+3)-A029077(n+3)` -/
def P9602701420090501575.Spec : Prop :=
  ∀ n, P9602701420090501575.a n = A029309 n

end A029309

/-!
# A029310: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^10)).

The programs for A029310, the canonical program `A029310.P14462968750972825055` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029310 has offset 0).

The definition of A029310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029310.P14462968750972825055

`A025912(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029310

/-- `A025912(n)+a(n-3)` -/
def P14462968750972825055.Spec : Prop :=
  ∀ n, P14462968750972825055.a n = A029310 n

theorem P14462968750972825055.correct : P14462968750972825055.Spec := by
  intro n
  simp only [A029310]

end A029310

/-! ## A029310.P1750427309288224582

`A029294(n)+A029363(n)-A029348(n)`
-/

namespace A029310.P1750427309288224582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 n + (A029363 n - A029348 n)

end

end A029310.P1750427309288224582

namespace A029310

/-- `A029294(n)+A029363(n)-A029348(n)` -/
def P1750427309288224582.Spec : Prop :=
  ∀ n, P1750427309288224582.a n = A029310 n

end A029310

/-! ## A029310.P7236000372023336723

`A029294(n)+A029363(n)-(A029071(n+6)-A029074(n+6))`
-/

namespace A029310.P7236000372023336723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 n + (A029363 n - (A029071 (n + 6) - A029074 (n + 6)))

end

end A029310.P7236000372023336723

namespace A029310

/-- `A029294(n)+A029363(n)-(A029071(n+6)-A029074(n+6))` -/
def P7236000372023336723.Spec : Prop :=
  ∀ n, P7236000372023336723.a n = A029310 n

end A029310

/-! ## A029310.P11419845252788753989

`A025880(round(n*sqrt(3))%A270613(2*n+5))`
-/

namespace A029310.P11419845252788753989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025880 (Int.tmod (SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (3 : ℝ))) (A270613 (2 * n + 5))).toNat

end

end A029310.P11419845252788753989

namespace A029310

/-- `A025880(round(n*sqrt(3))%A270613(2*n+5))` -/
def P11419845252788753989.Spec : Prop :=
  ∀ n, P11419845252788753989.a n = A029310 n

end A029310

/-! ## A029310.P4440255965714991265

`A196563(A095356(n+5)-A179051(n))`
-/

namespace A029310.P4440255965714991265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A095356 (n + 5) - A179051 n).toNat

end

end A029310.P4440255965714991265

namespace A029310

/-- `A196563(A095356(n+5)-A179051(n))` -/
def P4440255965714991265.Spec : Prop :=
  ∀ n, P4440255965714991265.a n = A029310 n

end A029310

/-!
# A029311: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^11)).

The programs for A029311, the canonical program `A029311.P11942994698236464024` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029311 has offset 0).

The definition of A029311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029311.P11942994698236464024

`A025913(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029311

/-- `A025913(n)+a(n-3)` -/
def P11942994698236464024.Spec : Prop :=
  ∀ n, P11942994698236464024.a n = A029311 n

theorem P11942994698236464024.correct : P11942994698236464024.Spec := by
  intro n
  simp only [A029311]

end A029311

/-! ## A029311.P17545706198426134225

`A029418(abs(3-n))+A029418(n)`
-/

namespace A029311.P17545706198426134225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029418 |3 - (n : ℤ)|.toNat + A029418 n

end

end A029311.P17545706198426134225

namespace A029311

/-- `A029418(abs(3-n))+A029418(n)` -/
def P17545706198426134225.Spec : Prop :=
  ∀ n, P17545706198426134225.a n = A029311 n

end A029311

/-! ## A029311.P14371942411497379060

`A029303(n)+A029363(n)-A029355(n)`
-/

namespace A029311.P14371942411497379060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029363 n - A029355 n)

end

end A029311.P14371942411497379060

namespace A029311

/-- `A029303(n)+A029363(n)-A029355(n)` -/
def P14371942411497379060.Spec : Prop :=
  ∀ n, P14371942411497379060.a n = A029311 n

theorem P14371942411497379060.correct : P14371942411497379060.Spec := by
  intro n
  simp only [A029311, Nat.add_sub_cancel, A029311.P14371942411497379060.a, A029311.P11942994698236464024.a, A025913, A025913.P6872223754574144002.a, A029303, A029303.P996504278850235236.a, A029355, A029355.P10567033194552355608.a, A029363, A029363.P5892090971847677782.a, A029222, A029222.P13450996779978871818.a, A029230, A029230.P18014352078282283868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029311

/-! ## A029311.P13627236654824192019

`A029159(n+7)-A029166(n+7)`
-/

namespace A029311.P13627236654824192019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 (n + 7) - A029166 (n + 7)

end

end A029311.P13627236654824192019

namespace A029311

/-- `A029159(n+7)-A029166(n+7)` -/
def P13627236654824192019.Spec : Prop :=
  ∀ n, P13627236654824192019.a n = A029311 n

end A029311

/-! ## A029311.P944808749157969326

`A029157(n)-A029415(2*n+3)`
-/

namespace A029311.P944808749157969326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 n - A029415 (2 * n + 3)

end

end A029311.P944808749157969326

namespace A029311

/-- `A029157(n)-A029415(2*n+3)` -/
def P944808749157969326.Spec : Prop :=
  ∀ n, P944808749157969326.a n = A029311 n

end A029311

/-!
# A029312: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^12)).

The programs for A029312, the canonical program `A029312.P7128779910836162524` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029312 has offset 0).

The definition of A029312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029312.P7128779910836162524

`A025914(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029312

/-- `A025914(n)+a(n-3)` -/
def P7128779910836162524.Spec : Prop :=
  ∀ n, P7128779910836162524.a n = A029312 n

theorem P7128779910836162524.correct : P7128779910836162524.Spec := by
  intro n
  simp only [A029312]

end A029312

/-! ## A029312.P4767719647643335516

`A005206(A097479(n)+A029293(n))`
-/

namespace A029312.P4767719647643335516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A097479 n + A029293 n).toNat

end

end A029312.P4767719647643335516

namespace A029312

/-- `A005206(A097479(n)+A029293(n))` -/
def P4767719647643335516.Spec : Prop :=
  ∀ n, P4767719647643335516.a n = A029312 n

end A029312

/-! ## A029312.P16753813788998626540

`A005206(A029293(n)%A325606(n+1))`
-/

namespace A029312.P16753813788998626540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A029293 n) (A325606 (n + 1))).toNat

end

end A029312.P16753813788998626540

namespace A029312

/-- `A005206(A029293(n)%A325606(n+1))` -/
def P16753813788998626540.Spec : Prop :=
  ∀ n, P16753813788998626540.a n = A029312 n

end A029312

/-! ## A029312.P8448478810763363185

`A005206(A029293(n))%A368689(2*n+3)`
-/

namespace A029312.P8448478810763363185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A029293 n).toNat) (A368689 (2 * n + 3))

end

end A029312.P8448478810763363185

namespace A029312

/-- `A005206(A029293(n))%A368689(2*n+3)` -/
def P8448478810763363185.Spec : Prop :=
  ∀ n, P8448478810763363185.a n = A029312 n

end A029312

/-! ## A029312.P7835868664110518643

`A005206(A029293(n))*A007318(A097479(n)²)`
-/

namespace A029312.P7835868664110518643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A029293 n).toNat * A007318 (A097479 n ^ 2).toNat

end

end A029312.P7835868664110518643

namespace A029312

/-- `A005206(A029293(n))*A007318(A097479(n)²)` -/
def P7835868664110518643.Spec : Prop :=
  ∀ n, P7835868664110518643.a n = A029312 n

end A029312

/-!
# A029313: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)*(1-x^11)).

The programs for A029313, the canonical program `A029313.P18194141507139867726` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029313 has offset 0).

The definition of A029313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029313.P16190672408909971008

`A025915(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029313.P16190672408909971008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025915 n + a (n - 3)

end

end A029313.P16190672408909971008

namespace A029313

/-- `A025915(n)+a(n-3)` -/
def P16190672408909971008.Spec : Prop :=
  ∀ n, P16190672408909971008.a n = A029313 n

end A029313

/-! ## A029313.P8093306639335615120

`A029420(abs(3-n))+A029420(n)`
-/

namespace A029313.P8093306639335615120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029420 |3 - (n : ℤ)|.toNat + A029420 n

end

end A029313.P8093306639335615120

namespace A029313

/-- `A029420(abs(3-n))+A029420(n)` -/
def P8093306639335615120.Spec : Prop :=
  ∀ n, P8093306639335615120.a n = A029313 n

end A029313

/-! ## A029313.P18194141507139867726

`A029259(n)+A029303(n)-A029255(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029313

/-- `A029259(n)+A029303(n)-A029255(n)` -/
def P18194141507139867726.Spec : Prop :=
  ∀ n, P18194141507139867726.a n = A029313 n

theorem P18194141507139867726.correct : P18194141507139867726.Spec := by
  intro n
  simp only [A029313]

end A029313

/-! ## A029313.P12507511029194201506

`A025923(record[n*A011646(n)])`
-/

namespace A029313.P12507511029194201506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025923 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029313.P12507511029194201506

namespace A029313

/-- `A025923(record[n*A011646(n)])` -/
def P12507511029194201506.Spec : Prop :=
  ∀ n, P12507511029194201506.a n = A029313 n

end A029313

/-!
# A029314: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)*(1-x^12)).

The programs for A029314, the canonical program `A029314.P3166923144704903477` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029314 has offset 0).

The definition of A029314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029314.P3166923144704903477

`A025916(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029314

/-- `A025916(n)+a(n-3)` -/
def P3166923144704903477.Spec : Prop :=
  ∀ n, P3166923144704903477.a n = A029314 n

theorem P3166923144704903477.correct : P3166923144704903477.Spec := by
  intro n
  simp only [A029314]

end A029314

/-! ## A029314.P153022511689848985

`A025847(n)*A232088(A308995(n))`
-/

namespace A029314.P153022511689848985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 n * A232088 (A308995 n).toNat

end

end A029314.P153022511689848985

namespace A029314

/-- `A025847(n)*A232088(A308995(n))` -/
def P153022511689848985.Spec : Prop :=
  ∀ n, P153022511689848985.a n = A029314 n

end A029314

/-! ## A029314.P12677123350917863867

`lcm(A001221(A105098(2*(n+3))), A025847(n))`
-/

namespace A029314.P12677123350917863867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A105098 (2 * (n + 3))).toNat) (A025847 n)

end

end A029314.P12677123350917863867

namespace A029314

/-- `lcm(A001221(A105098(2*(n+3))), A025847(n))` -/
def P12677123350917863867.Spec : Prop :=
  ∀ n, (P12677123350917863867.a n : ℤ) = A029314 n

end A029314

/-! ## A029314.P2498817218912228001

`A185709(A096172(n+3))+A025847(n)`
-/

namespace A029314.P2498817218912228001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (A096172 (n + 3)).toNat + A025847 n

end

end A029314.P2498817218912228001

namespace A029314

/-- `A185709(A096172(n+3))+A025847(n)` -/
def P2498817218912228001.Spec : Prop :=
  ∀ n, P2498817218912228001.a n = A029314 n

end A029314

/-! ## A029314.P15919007229903364412

`A269241(A323865(n)+A274938(n))`
-/

namespace A029314.P15919007229903364412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 (A323865 n + A274938 n).toNat

end

end A029314.P15919007229903364412

namespace A029314

/-- `A269241(A323865(n)+A274938(n))` -/
def P15919007229903364412.Spec : Prop :=
  ∀ n, P15919007229903364412.a n = A029314 n

end A029314

/-!
# A029315: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^11)*(1-x^12)).

The programs for A029315, the canonical program `A029315.P17147396963157737905` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029315 has offset 0).

The definition of A029315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029315.P13984371355647800050

`A025917(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029315.P13984371355647800050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025917 n + a (n - 3)

end

end A029315.P13984371355647800050

namespace A029315

/-- `A025917(n)+a(n-3)` -/
def P13984371355647800050.Spec : Prop :=
  ∀ n, P13984371355647800050.a n = A029315 n

end A029315

/-! ## A029315.P4325214252803324652

`A029422(abs(3-n))+A029422(n)`
-/

namespace A029315.P4325214252803324652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 |3 - (n : ℤ)|.toNat + A029422 n

end

end A029315.P4325214252803324652

namespace A029315

/-- `A029422(abs(3-n))+A029422(n)` -/
def P4325214252803324652.Spec : Prop :=
  ∀ n, P4325214252803324652.a n = A029315 n

end A029315

/-! ## A029315.P10570653166000671813

`A029052(n)+A029160(n)-A029024(n)`
-/

namespace A029315.P10570653166000671813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029052 n + (A029160 n - A029024 n)

end

end A029315.P10570653166000671813

namespace A029315

/-- `A029052(n)+A029160(n)-A029024(n)` -/
def P10570653166000671813.Spec : Prop :=
  ∀ n, P10570653166000671813.a n = A029315 n

end A029315

/-! ## A029315.P17147396963157737905

`A029280(n)+A029305(n)-A029277(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029315

/-- `A029280(n)+A029305(n)-A029277(n)` -/
def P17147396963157737905.Spec : Prop :=
  ∀ n, P17147396963157737905.a n = A029315 n

theorem P17147396963157737905.correct : P17147396963157737905.Spec := by
  intro n
  simp only [A029315]

end A029315

/-! ## A029315.P2988035285495287339

`A029309(n)+A029368(n)-A029361(n)`
-/

namespace A029315.P2988035285495287339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029309 n + (A029368 n - A029361 n)

end

end A029315.P2988035285495287339

namespace A029315

/-- `A029309(n)+A029368(n)-A029361(n)` -/
def P2988035285495287339.Spec : Prop :=
  ∀ n, P2988035285495287339.a n = A029315 n

theorem P2988035285495287339.correct : P2988035285495287339.Spec := by
  intro n
  simp only [A029315, Nat.add_sub_cancel, A029315.P2988035285495287339.a, A029315.P17147396963157737905.a, A029277, A029277.P17981612767777105858.a, A029280, A029280.P14027745827875663436.a, A029305, A029305.P5923973588584456125.a, A029309, A029309.P15051498724445637453.a, A029361, A029361.P2316491448957553572.a, A029368, A029368.P396495999053672389.a, A025907, A025907.P12793639154697755668.a, A025911, A025911.P13384529438674371776.a, A029235, A029235.P12349426323057609679.a, A025781, A025781.P7662789883593314095.a, A025783, A025783.P15062552760523704649.a, A025827, A025827.P17085874073192218021.a, A025881, A025881.P15100123725397875390.a, A029202, A029202.P12759038853367375186.a, A029213, A029213.P5201621740032638678.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029315

/-!
# A029316: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A029316, the canonical program `A029316.P6118394211418629132` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029316 has offset 0).

The definition of A029316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029316.P6855615584383074612

`A025918(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029316.P6855615584383074612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025918 n + a (n - 3)

end

end A029316.P6855615584383074612

namespace A029316

/-- `A025918(n)+a(n-3)` -/
def P6855615584383074612.Spec : Prop :=
  ∀ n, P6855615584383074612.a n = A029316 n

end A029316

/-! ## A029316.P7283148516306344042

`A029423(abs(3-n))+A029423(n)`
-/

namespace A029316.P7283148516306344042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 |3 - (n : ℤ)|.toNat + A029423 n

end

end A029316.P7283148516306344042

namespace A029316

/-- `A029423(abs(3-n))+A029423(n)` -/
def P7283148516306344042.Spec : Prop :=
  ∀ n, P7283148516306344042.a n = A029316 n

end A029316

/-! ## A029316.P6118394211418629132

`∑[A025850(n)-A025877(A004442(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029316

/-- `∑[A025850(n)-A025877(A004442(n))]` -/
def P6118394211418629132.Spec : Prop :=
  ∀ n, P6118394211418629132.a n = A029316 n

theorem P6118394211418629132.correct : P6118394211418629132.Spec := by
  intro n
  simp only [A029316]

end A029316

/-! ## A029316.P13609890043556095746

`Δ[∑[A029354(n)]-A029423(n)]`
-/

namespace A029316.P13609890043556095746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029316.P13609890043556095746

namespace A029316

/-- `Δ[∑[A029354(n)]-A029423(n)]` -/
def P13609890043556095746.Spec : Prop :=
  ∀ n, P13609890043556095746.a n = A029316 n

end A029316

/-! ## A029316.P3177062801469554203

`A029354(n+1)-Δ[A029423(n)]`
-/

namespace A029316.P3177062801469554203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029316.P3177062801469554203

namespace A029316

/-- `A029354(n+1)-Δ[A029423(n)]` -/
def P3177062801469554203.Spec : Prop :=
  ∀ n, P3177062801469554203.a n = A029316 n

end A029316

/-! ## A029316.P12943667682440366100

`A029423(n+3)+A029423(n)-A025918(n+3)`
-/

namespace A029316.P12943667682440366100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (n + 3) + (A029423 n - A025918 (n + 3))

end

end A029316.P12943667682440366100

namespace A029316

/-- `A029423(n+3)+A029423(n)-A025918(n+3)` -/
def P12943667682440366100.Spec : Prop :=
  ∀ n, P12943667682440366100.a n = A029316 n

end A029316

/-!
# A029317: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^11)).

The programs for A029317, the canonical program `A029317.P5055318172430600220` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029317 has offset 0).

The definition of A029317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029317.P5055318172430600220

`A025919(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029317

/-- `A025919(n)+a(n-3)` -/
def P5055318172430600220.Spec : Prop :=
  ∀ n, P5055318172430600220.a n = A029317 n

theorem P5055318172430600220.correct : P5055318172430600220.Spec := by
  intro n
  simp only [A029317]

end A029317

/-! ## A029317.P17124342062065431706

`A316863(A345943(n+1))+A025850(n)`
-/

namespace A029317.P17124342062065431706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A345943 (n + 1)).toNat + A025850 n

end

end A029317.P17124342062065431706

namespace A029317

/-- `A316863(A345943(n+1))+A025850(n)` -/
def P17124342062065431706.Spec : Prop :=
  ∀ n, P17124342062065431706.a n = A029317 n

end A029317

/-! ## A029317.P10396821021105980696

`A308831(A340915(n+8))`
-/

namespace A029317.P10396821021105980696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308831 (A340915 (n + 8)).toNat

end

end A029317.P10396821021105980696

namespace A029317

/-- `A308831(A340915(n+8))` -/
def P10396821021105980696.Spec : Prop :=
  ∀ n, P10396821021105980696.a n = A029317 n

end A029317

/-! ## A029317.P11539723190024003965

`A001876(A029299(n)^A004525(n))`
-/

namespace A029317.P11539723190024003965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A029299 n : ℚ) ^ (A004525 n : ℤ))).toNat

end

end A029317.P11539723190024003965

namespace A029317

/-- `A001876(A029299(n)^A004525(n))` -/
def P11539723190024003965.Spec : Prop :=
  ∀ n, P11539723190024003965.a n = A029317 n

end A029317

/-! ## A029317.P1686309342482558387

`A347383(2*(n+1))%A126759(A340481(n+5))`
-/

namespace A029317.P1686309342482558387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347383 (2 * (n + 1))) (A126759 (A340481 (n + 5)).toNat)

end

end A029317.P1686309342482558387

namespace A029317

/-- `A347383(2*(n+1))%A126759(A340481(n+5))` -/
def P1686309342482558387.Spec : Prop :=
  ∀ n, P1686309342482558387.a n = A029317 n

end A029317

/-!
# A029318: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^12)).

The programs for A029318, the canonical program `A029318.P9153013755735390018` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029318 has offset 0).

The definition of A029318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029318.P9153013755735390018

`A025920(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029318

/-- `A025920(n)+a(n-3)` -/
def P9153013755735390018.Spec : Prop :=
  ∀ n, P9153013755735390018.a n = A029318 n

theorem P9153013755735390018.correct : P9153013755735390018.Spec := by
  intro n
  simp only [A029318]

end A029318

/-! ## A029318.P5497223836650181753

`A029425(abs(3-n))+A029425(n)`
-/

namespace A029318.P5497223836650181753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 |3 - (n : ℤ)|.toNat + A029425 n

end

end A029318.P5497223836650181753

namespace A029318

/-- `A029425(abs(3-n))+A029425(n)` -/
def P5497223836650181753.Spec : Prop :=
  ∀ n, P5497223836650181753.a n = A029318 n

end A029318

/-! ## A029318.P8013225820256510248

`Δ[∑[A029356(n)]-A029425(n)]`
-/

namespace A029318.P8013225820256510248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029318.P8013225820256510248

namespace A029318

/-- `Δ[∑[A029356(n)]-A029425(n)]` -/
def P8013225820256510248.Spec : Prop :=
  ∀ n, P8013225820256510248.a n = A029318 n

end A029318

/-! ## A029318.P12952785925918459636

`A029356(n+1)-Δ[A029425(n)]`
-/

namespace A029318.P12952785925918459636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029356 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029318.P12952785925918459636

namespace A029318

/-- `A029356(n+1)-Δ[A029425(n)]` -/
def P12952785925918459636.Spec : Prop :=
  ∀ n, P12952785925918459636.a n = A029318 n

end A029318

/-! ## A029318.P412468476124075195

`A000193(A077947(A029297(n))+A029297(n))`
-/

namespace A029318.P412468476124075195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A077947 (A029297 n).toNat + A029297 n).toNat

end

end A029318.P412468476124075195

namespace A029318

/-- `A000193(A077947(A029297(n))+A029297(n))` -/
def P412468476124075195.Spec : Prop :=
  ∀ n, P412468476124075195.a n = A029318 n

end A029318

/-!
# A029319: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)*(1-x^11)).

The programs for A029319, the canonical program `A029319.P17880918560433221598` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029319 has offset 0).

The definition of A029319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029319.P724694982278821277

`A025921(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029319.P724694982278821277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025921 n + a (n - 3)

end

end A029319.P724694982278821277

namespace A029319

/-- `A025921(n)+a(n-3)` -/
def P724694982278821277.Spec : Prop :=
  ∀ n, P724694982278821277.a n = A029319 n

end A029319

/-! ## A029319.P17880918560433221598

`A029130(n)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029319

/-- `A029130(n)-a(n-1)-a(n-2)` -/
def P17880918560433221598.Spec : Prop :=
  ∀ n, P17880918560433221598.a n = A029319 n

theorem P17880918560433221598.correct : P17880918560433221598.Spec := by
  intro n
  simp only [A029319]

end A029319

/-! ## A029319.P16163889193601638191

`A029308(n)+A029372(n)-A029360(n)`
-/

namespace A029319.P16163889193601638191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 n + (A029372 n - A029360 n)

end

end A029319.P16163889193601638191

namespace A029319

/-- `A029308(n)+A029372(n)-A029360(n)` -/
def P16163889193601638191.Spec : Prop :=
  ∀ n, P16163889193601638191.a n = A029319 n

theorem P16163889193601638191.correct : P16163889193601638191.Spec := by
  intro n
  simp only [A029319, Nat.add_sub_cancel, A029319.P16163889193601638191.a, A029319.P17880918560433221598.a, A029130, A029130.P9139947445189529959.a, A029308, A029308.P9850508978971010874.a, A029360, A029360.P14859210217828173422.a, A029372, A029372.P2672987048635236464.a, A024000, A024000.P8748414335487061084.a, A029227, A029227.P8296418391857945900.a, A029237, A029237.P12458243396982577582.a, A029239, A029239.P14692552077046529193.a, A029241, A029241.P4809283722259501140.a, A029128, A029128.P7892556659566413608.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, A029081, A029081.P1252340112717492852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029319

/-! ## A029319.P12758939513071305706

`Δ[∑[A029357(n)]-A029426(n)]`
-/

namespace A029319.P12758939513071305706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029319.P12758939513071305706

namespace A029319

/-- `Δ[∑[A029357(n)]-A029426(n)]` -/
def P12758939513071305706.Spec : Prop :=
  ∀ n, P12758939513071305706.a n = A029319 n

end A029319

/-! ## A029319.P1938513425500135629

`A029357(n+1)-Δ[A029426(n)]`
-/

namespace A029319.P1938513425500135629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029319.P1938513425500135629

namespace A029319

/-- `A029357(n+1)-Δ[A029426(n)]` -/
def P1938513425500135629.Spec : Prop :=
  ∀ n, P1938513425500135629.a n = A029319 n

end A029319

/-!
# A029320: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)*(1-x^12)).

The programs for A029320, the canonical program `A029320.P3817495982437401057` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029320 has offset 0).

The definition of A029320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029320.P3817495982437401057

`A008681(abs(A097140(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029320

/-- `A008681(abs(A097140(n)))` -/
def P3817495982437401057.Spec : Prop :=
  ∀ n, P3817495982437401057.a n = A029320 n

theorem P3817495982437401057.correct : P3817495982437401057.Spec := by
  intro n
  simp only [A029320]

end A029320

/-! ## A029320.P9853058528949816862

`A008681(abs(Δ[A029578(n)]))`
-/

namespace A029320.P9853058528949816862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 |f1 (n + 1) - f1 n|.toNat

end

end A029320.P9853058528949816862

namespace A029320

/-- `A008681(abs(Δ[A029578(n)]))` -/
def P9853058528949816862.Spec : Prop :=
  ∀ n, P9853058528949816862.a n = A029320 n

end A029320

/-! ## A029320.P2165874298935830065

`A029386(xor(1, n+1))`
-/

namespace A029320.P2165874298935830065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (Nat.xor 1 (n + 1))

end

end A029320.P2165874298935830065

namespace A029320

/-- `A029386(xor(1, n+1))` -/
def P2165874298935830065.Spec : Prop :=
  ∀ n, P2165874298935830065.a n = A029320 n

end A029320

/-! ## A029320.P18331311579997431805

`A029386(2*n%2+n)`
-/

namespace A029320.P18331311579997431805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * (n % 2) + n)

end

end A029320.P18331311579997431805

namespace A029320

/-- `A029386(2*n%2+n)` -/
def P18331311579997431805.Spec : Prop :=
  ∀ n, P18331311579997431805.a n = A029320 n

end A029320

/-! ## A029320.P3999615991939222119

`A029386(n+1-(-1)^n)`
-/

namespace A029320.P3999615991939222119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A029320.P3999615991939222119

namespace A029320

/-- `A029386(n+1-(-1)^n)` -/
def P3999615991939222119.Spec : Prop :=
  ∀ n, P3999615991939222119.a n = A029320 n

end A029320

/-! ## A029320.P14202782622465434418

`A008681(abs(Δ[A029579(n)]))`
-/

namespace A029320.P14202782622465434418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 |f1 (n + 1) - f1 n|.toNat

end

end A029320.P14202782622465434418

namespace A029320

/-- `A008681(abs(Δ[A029579(n)]))` -/
def P14202782622465434418.Spec : Prop :=
  ∀ n, P14202782622465434418.a n = A029320 n

end A029320

/-!
# A029321: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^11)*(1-x^12)).

The programs for A029321, the canonical program `A029321.P12768009406685608528` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029321 has offset 0).

The definition of A029321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029321.P12768009406685608528

`A025922(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029321

/-- `A025922(n)+a(n-3)` -/
def P12768009406685608528.Spec : Prop :=
  ∀ n, P12768009406685608528.a n = A029321 n

theorem P12768009406685608528.correct : P12768009406685608528.Spec := by
  intro n
  simp only [A029321]

end A029321

/-! ## A029321.P11380559801382710519

`A029131(n)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029321.P11380559801382710519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029131 n - a (n - 1) - a (n - 2)

end

end A029321.P11380559801382710519

namespace A029321

/-- `A029131(n)-a(n-1)-a(n-2)` -/
def P11380559801382710519.Spec : Prop :=
  ∀ n, P11380559801382710519.a n = A029321 n

end A029321

/-! ## A029321.P15284980837705762831

`A001876(A029317(n)^A261916(n))`
-/

namespace A029321.P15284980837705762831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A029317 n : ℚ) ^ (A261916 n : ℤ))).toNat

end

end A029321.P15284980837705762831

namespace A029321

/-- `A001876(A029317(n)^A261916(n))` -/
def P15284980837705762831.Spec : Prop :=
  ∀ n, P15284980837705762831.a n = A029321 n

end A029321

/-! ## A029321.P9382793636523646440

`A316863(A345943(n+1))+A025853(n)`
-/

namespace A029321.P9382793636523646440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A345943 (n + 1)).toNat + A025853 n

end

end A029321.P9382793636523646440

namespace A029321

/-- `A316863(A345943(n+1))+A025853(n)` -/
def P9382793636523646440.Spec : Prop :=
  ∀ n, P9382793636523646440.a n = A029321 n

end A029321

/-! ## A029321.P3508060144157952632

`A355741(A236914(n)+A133080(n+1))`
-/

namespace A029321.P3508060144157952632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A236914 n + A133080 (n + 1)).toNat

end

end A029321.P3508060144157952632

namespace A029321

/-- `A355741(A236914(n)+A133080(n+1))` -/
def P3508060144157952632.Spec : Prop :=
  ∀ n, P3508060144157952632.a n = A029321 n

end A029321

/-!
# A029322: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)*(1-x^11)).

The programs for A029322, the canonical program `A029322.P8613173679421761326` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029322 has offset 0).

The definition of A029322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029322.P15937225379204386719

`A025923(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029322.P15937225379204386719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025923 n + a (n - 3)

end

end A029322.P15937225379204386719

namespace A029322

/-- `A025923(n)+a(n-3)` -/
def P15937225379204386719.Spec : Prop :=
  ∀ n, P15937225379204386719.a n = A029322 n

end A029322

/-! ## A029322.P8613173679421761326

`A029303(n)+A029374(n)-A029355(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029322

/-- `A029303(n)+A029374(n)-A029355(n)` -/
def P8613173679421761326.Spec : Prop :=
  ∀ n, P8613173679421761326.a n = A029322 n

theorem P8613173679421761326.correct : P8613173679421761326.Spec := by
  intro n
  simp only [A029322]

end A029322

/-! ## A029322.P15905713584852259233

`A029311(n)+A029374(n)-A029363(n)`
-/

namespace A029322.P15905713584852259233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029311 n + (A029374 n - A029363 n)

end

end A029322.P15905713584852259233

namespace A029322

/-- `A029311(n)+A029374(n)-A029363(n)` -/
def P15905713584852259233.Spec : Prop :=
  ∀ n, P15905713584852259233.a n = A029322 n

theorem P15905713584852259233.correct : P15905713584852259233.Spec := by
  intro n
  simp only [A029322, Nat.add_sub_cancel, A029322.P15905713584852259233.a, A029322.P8613173679421761326.a, A029303, A029303.P996504278850235236.a, A029311, A029311.P11942994698236464024.a, A029355, A029355.P10567033194552355608.a, A029363, A029363.P5892090971847677782.a, A029374, A029374.P16522389890125630689.a, A025913, A025913.P6872223754574144002.a, A029222, A029222.P13450996779978871818.a, A029230, A029230.P18014352078282283868.a, A029241, A029241.P4809283722259501140.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029322

/-! ## A029322.P1087250497602713340

`A029303(n)+A029409(n)-A029387(n)`
-/

namespace A029322.P1087250497602713340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029409 n - A029387 n)

end

end A029322.P1087250497602713340

namespace A029322

/-- `A029303(n)+A029409(n)-A029387(n)` -/
def P1087250497602713340.Spec : Prop :=
  ∀ n, P1087250497602713340.a n = A029322 n

theorem P1087250497602713340.correct : P1087250497602713340.Spec := by
  intro n
  simp only [A029322, Nat.add_sub_cancel, A029322.P1087250497602713340.a, A029322.P8613173679421761326.a, A029303, A029303.P996504278850235236.a, A029355, A029355.P10567033194552355608.a, A029374, A029374.P16522389890125630689.a, A029387, A029387.P14372817239229268115.a, A029409, A029409.P7184523161704019906.a, A029222, A029222.P13450996779978871818.a, A029241, A029241.P4809283722259501140.a, A029286, A029286.P7325490354402353084.a, A029311, A029311.P11942994698236464024.a, A029363, A029363.P5892090971847677782.a, A025913, A025913.P6872223754574144002.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029230, A029230.P18014352078282283868.a, A029243, A029243.P10472737080434967019.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029322

/-! ## A029322.P7151790541527353001

`A029316(n+3)-A029442(n+3)`
-/

namespace A029322.P7151790541527353001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029316 (n + 3) - A029442 (n + 3)

end

end A029322.P7151790541527353001

namespace A029322

/-- `A029316(n+3)-A029442(n+3)` -/
def P7151790541527353001.Spec : Prop :=
  ∀ n, P7151790541527353001.a n = A029322 n

end A029322

/-!
# A029323: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)*(1-x^12)).

The programs for A029323, the canonical program `A029323.P5470347165269879992` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029323 has offset 0).

The definition of A029323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029323.P5470347165269879992

`A025924(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029323

/-- `A025924(n)+a(n-3)` -/
def P5470347165269879992.Spec : Prop :=
  ∀ n, P5470347165269879992.a n = A029323 n

theorem P5470347165269879992.correct : P5470347165269879992.Spec := by
  intro n
  simp only [A029323]

end A029323

/-! ## A029323.P8317096339207492558

`A029429(abs(3-n))+A029429(n)`
-/

namespace A029323.P8317096339207492558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 |3 - (n : ℤ)|.toNat + A029429 n

end

end A029323.P8317096339207492558

namespace A029323

/-- `A029429(abs(3-n))+A029429(n)` -/
def P8317096339207492558.Spec : Prop :=
  ∀ n, P8317096339207492558.a n = A029323 n

end A029323

/-! ## A029323.P12640251486761944758

`A005206(A029301(n)%A332523(n))`
-/

namespace A029323.P12640251486761944758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A029301 n) (A332523 n)).toNat

end

end A029323.P12640251486761944758

namespace A029323

/-- `A005206(A029301(n)%A332523(n))` -/
def P12640251486761944758.Spec : Prop :=
  ∀ n, P12640251486761944758.a n = A029323 n

end A029323

/-! ## A029323.P1542274383129102174

`A005206(A029301(n))+A000038(A260889(n+1))`
-/

namespace A029323.P1542274383129102174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A029301 n).toNat + A000038 (A260889 (n + 1)).toNat

end

end A029323.P1542274383129102174

namespace A029323

/-- `A005206(A029301(n))+A000038(A260889(n+1))` -/
def P1542274383129102174.Spec : Prop :=
  ∀ n, P1542274383129102174.a n = A029323 n

end A029323

/-! ## A029323.P16497923117429655876

`A005206(A029301(n))%A034295(n+5)`
-/

namespace A029323.P16497923117429655876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A029301 n).toNat) (A034295 (n + 5))

end

end A029323.P16497923117429655876

namespace A029323

/-- `A005206(A029301(n))%A034295(n+5)` -/
def P16497923117429655876.Spec : Prop :=
  ∀ n, P16497923117429655876.a n = A029323 n

end A029323

/-!
# A029324: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^11)*(1-x^12)).

The programs for A029324, the canonical program `A029324.P10071969728101027486` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029324 has offset 0).

The definition of A029324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029324.P10071969728101027486

`A025925(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029324

/-- `A025925(n)+a(n-3)` -/
def P10071969728101027486.Spec : Prop :=
  ∀ n, P10071969728101027486.a n = A029324 n

theorem P10071969728101027486.correct : P10071969728101027486.Spec := by
  intro n
  simp only [A029324]

end A029324

/-! ## A029324.P6097504052110131227

`A005206(A029302(n))^A014963(A112540(n+1))`
-/

namespace A029324.P6097504052110131227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A029302 n).toNat : ℚ) ^ (A014963 (A112540 (n + 1)).toNat : ℤ)

end

end A029324.P6097504052110131227

namespace A029324

/-- `A005206(A029302(n))^A014963(A112540(n+1))` -/
def P6097504052110131227.Spec : Prop :=
  ∀ n, P6097504052110131227.a n = (A029324 n : ℚ)

end A029324

/-! ## A029324.P5963301868861424573

`A005206(A029302(n))^A014963(A153277(n+1))`
-/

namespace A029324.P5963301868861424573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A029302 n).toNat : ℚ) ^ (A014963 (A153277 (n + 1)).toNat : ℤ)

end

end A029324.P5963301868861424573

namespace A029324

/-- `A005206(A029302(n))^A014963(A153277(n+1))` -/
def P5963301868861424573.Spec : Prop :=
  ∀ n, P5963301868861424573.a n = (A029324 n : ℚ)

end A029324

/-! ## A029324.P15841327545832506306

`A005206(A029302(n))%A000040(A079961(n))`
-/

namespace A029324.P15841327545832506306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 (A029302 n).toNat) (A000040 (A079961 n).toNat)

end

end A029324.P15841327545832506306

namespace A029324

/-- `A005206(A029302(n))%A000040(A079961(n))` -/
def P15841327545832506306.Spec : Prop :=
  ∀ n, P15841327545832506306.a n = A029324 n

end A029324

/-! ## A029324.P10392760500918849445

`A308971(2*(n+2))%A270533(A354661(n+1))`
-/

namespace A029324.P10392760500918849445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308971 (2 * (n + 2))) (A270533 (A354661 (n + 1)).toNat)

end

end A029324.P10392760500918849445

namespace A029324

/-- `A308971(2*(n+2))%A270533(A354661(n+1))` -/
def P10392760500918849445.Spec : Prop :=
  ∀ n, P10392760500918849445.a n = A029324 n

end A029324

/-!
# A029325: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^11)*(1-x^12)).

The programs for A029325, the canonical program `A029325.P16077546944501799160` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029325 has offset 0).

The definition of A029325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029325.P15204880044677725976

`A025926(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029325.P15204880044677725976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025926 n + a (n - 3)

end

end A029325.P15204880044677725976

namespace A029325

/-- `A025926(n)+a(n-3)` -/
def P15204880044677725976.Spec : Prop :=
  ∀ n, P15204880044677725976.a n = A029325 n

end A029325

/-! ## A029325.P16077546944501799160

`A029431(abs(3-n))+A029431(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029325

/-- `A029431(abs(3-n))+A029431(n)` -/
def P16077546944501799160.Spec : Prop :=
  ∀ n, P16077546944501799160.a n = A029325 n

theorem P16077546944501799160.correct : P16077546944501799160.Spec := by
  intro n
  simp only [A029325]

end A029325

/-! ## A029325.P6694844236640453287

`∑[A025856(n)-A025881(A004442(n))]`
-/

namespace A029325.P6694844236640453287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025856 n - A025881 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029325.P6694844236640453287

namespace A029325

/-- `∑[A025856(n)-A025881(A004442(n))]` -/
def P6694844236640453287.Spec : Prop :=
  ∀ n, P6694844236640453287.a n = A029325 n

end A029325

/-! ## A029325.P11286462984158868003

`A029431(n+3)+A029431(n)-A025926(n+3)`
-/

namespace A029325.P11286462984158868003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (n + 3) + (A029431 n - A025926 (n + 3))

end

end A029325.P11286462984158868003

namespace A029325

/-- `A029431(n+3)+A029431(n)-A025926(n+3)` -/
def P11286462984158868003.Spec : Prop :=
  ∀ n, P11286462984158868003.a n = A029325 n

end A029325

/-! ## A029325.P4005771802807129151

`A097795(A039579(n+2))`
-/

namespace A029325.P4005771802807129151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A039579 (n + 2)).toNat

end

end A029325.P4005771802807129151

namespace A029325

/-- `A097795(A039579(n+2))` -/
def P4005771802807129151.Spec : Prop :=
  ∀ n, P4005771802807129151.a n = A029325 n

end A029325

/-!
# A029326: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^7)).

The programs for A029326, the canonical program `A029326.P2476340280247281313` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029326 has offset 0).

The definition of A029326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^7+x^9+x^10+2x^11+x^12+x^13-x^15-x^16-x^17-x^18+x^22))` (program `A029326.P2476340280247281313`, by `A029326.P2476340280247281313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029326.P2476340280247281313

`ogf(1/(1-x^4-x^5-x^6-x^7+x^9+x^10+2x^11+x^12+x^13-x^15-x^16-x^17-x^18+x^22))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029326

/-- `ogf(1/(1-x^4-x^5-x^6-x^7+x^9+x^10+2x^11+x^12+x^13-x^15-x^16-x^17-x^18+x^22))` -/
def P2476340280247281313.Spec : Prop :=
  ∀ n, P2476340280247281313.a n = A029326 n

theorem P2476340280247281313.correct : P2476340280247281313.Spec := by
  intro n
  simp only [A029326]

end A029326

/-! ## A029326.P2226920409026667842

`A029193(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029326.P2226920409026667842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029193 n - a (n - 2)

end

end A029326.P2226920409026667842

namespace A029326

/-- `A029193(n)-a(n-2)` -/
def P2226920409026667842.Spec : Prop :=
  ∀ n, P2226920409026667842.a n = A029326 n

end A029326

/-! ## A029326.P12102164672921395325

`A029245(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029326.P12102164672921395325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029245 n - a (n - 3)

end

end A029326.P12102164672921395325

namespace A029326

/-- `A029245(n)-a(n-3)` -/
def P12102164672921395325.Spec : Prop :=
  ∀ n, P12102164672921395325.a n = A029326 n

end A029326

/-! ## A029326.P11221886589509266048

`A025876(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029326.P11221886589509266048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025876 n + a (n - 4)

end

end A029326.P11221886589509266048

namespace A029326

/-- `A025876(n)+a(n-4)` -/
def P11221886589509266048.Spec : Prop :=
  ∀ n, P11221886589509266048.a n = A029326 n

end A029326

/-! ## A029326.P9166877777509817341

`A029335(n)+A029350(n)-A025870(n)`
-/

namespace A029326.P9166877777509817341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n + (A029350 n - A025870 n)

end

end A029326.P9166877777509817341

namespace A029326

/-- `A029335(n)+A029350(n)-A025870(n)` -/
def P9166877777509817341.Spec : Prop :=
  ∀ n, P9166877777509817341.a n = A029326 n

end A029326

/-! ## A029326.P16141912506720753132

`A029008(n+4)-A029011(n+4)`
-/

namespace A029326.P16141912506720753132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029008 (n + 4) - A029011 (n + 4)

end

end A029326.P16141912506720753132

namespace A029326

/-- `A029008(n+4)-A029011(n+4)` -/
def P16141912506720753132.Spec : Prop :=
  ∀ n, P16141912506720753132.a n = A029326 n

end A029326

/-! ## A029326.P9098846350607186304

`A029436(2*n)`
-/

namespace A029326.P9098846350607186304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (2 * n)

end

end A029326.P9098846350607186304

namespace A029326

/-- `A029436(2*n)` -/
def P9098846350607186304.Spec : Prop :=
  ∀ n, P9098846350607186304.a n = A029326 n

end A029326

/-! ## A029326.P10781583439282830615

`A029436(A005843(n))%A001034(n+1)`
-/

namespace A029326.P10781583439282830615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029436 (A005843 n).toNat) (A001034 (n + 1))

end

end A029326.P10781583439282830615

namespace A029326

/-- `A029436(A005843(n))%A001034(n+1)` -/
def P10781583439282830615.Spec : Prop :=
  ∀ n, P10781583439282830615.a n = A029326 n

end A029326

/-!
# A029327: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^8)).

The programs for A029327, the canonical program `A029327.P7922506822392909947` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029327 has offset 0).

The definition of A029327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6-x^8+x^9+x^10+x^11+x^12+x^13+x^14-x^15-x^17-x^18-x^19+x^23))` (program `A029327.P7922506822392909947`, by `A029327.P7922506822392909947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029327.P7922506822392909947

`ogf(1/(1-x^4-x^5-x^6-x^8+x^9+x^10+x^11+x^12+x^13+x^14-x^15-x^17-x^18-x^19+x^23))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029327

/-- `ogf(1/(1-x^4-x^5-x^6-x^8+x^9+x^10+x^11+x^12+x^13+x^14-x^15-x^17-x^18-x^19+x^23))` -/
def P7922506822392909947.Spec : Prop :=
  ∀ n, P7922506822392909947.a n = A029327 n

theorem P7922506822392909947.correct : P7922506822392909947.Spec := by
  intro n
  simp only [A029327]

end A029327

/-! ## A029327.P2009853405969626873

`A029194(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029327.P2009853405969626873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029194 n - a (n - 2)

end

end A029327.P2009853405969626873

namespace A029327

/-- `A029194(n)-a(n-2)` -/
def P2009853405969626873.Spec : Prop :=
  ∀ n, P2009853405969626873.a n = A029327 n

end A029327

/-! ## A029327.P10050803321346858628

`A029246(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029327.P10050803321346858628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029246 n - a (n - 3)

end

end A029327.P10050803321346858628

namespace A029327

/-- `A029246(n)-a(n-3)` -/
def P10050803321346858628.Spec : Prop :=
  ∀ n, P10050803321346858628.a n = A029327 n

end A029327

/-! ## A029327.P9368956447974379568

`A029263((xor(1, n)+n)%(n+1))`
-/

namespace A029327.P9368956447974379568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 ((Nat.xor 1 n + n) % (n + 1))

end

end A029327.P9368956447974379568

namespace A029327

/-- `A029263((xor(1, n)+n)%(n+1))` -/
def P9368956447974379568.Spec : Prop :=
  ∀ n, P9368956447974379568.a n = A029327 n

end A029327

/-! ## A029327.P16208833729118716843

`A029263(abs(n-A010673(n)))`
-/

namespace A029327.P16208833729118716843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 |(n : ℤ) - A010673 n|.toNat

end

end A029327.P16208833729118716843

namespace A029327

/-- `A029263(abs(n-A010673(n)))` -/
def P16208833729118716843.Spec : Prop :=
  ∀ n, P16208833729118716843.a n = A029327 n

end A029327

/-! ## A029327.P6297928557600793105

`A266768(n)-A026811(A084964(n)+2)`
-/

namespace A029327.P6297928557600793105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A026811 (A084964 n + 2).toNat

end

end A029327.P6297928557600793105

namespace A029327

/-- `A266768(n)-A026811(A084964(n)+2)` -/
def P6297928557600793105.Spec : Prop :=
  ∀ n, P6297928557600793105.a n = A029327 n

end A029327

/-! ## A029327.P16554771597803669989

`A029263(abs(Δ[A266285(n)]))`
-/

namespace A029327.P16554771597803669989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 |f1 (n + 1) - f1 n|.toNat

end

end A029327.P16554771597803669989

namespace A029327

/-- `A029263(abs(Δ[A266285(n)]))` -/
def P16554771597803669989.Spec : Prop :=
  ∀ n, P16554771597803669989.a n = A029327 n

end A029327

/-! ## A029327.P15014892299317238858

`A266768(n)-A288166(2*n+1)`
-/

namespace A029327.P15014892299317238858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 n - A288166 (2 * n + 1)

end

end A029327.P15014892299317238858

namespace A029327

/-- `A266768(n)-A288166(2*n+1)` -/
def P15014892299317238858.Spec : Prop :=
  ∀ n, P15014892299317238858.a n = A029327 n

end A029327

/-! ## A029327.P10443521117740545173

`A288166(2*(n+5))-A288166(A005408(n))`
-/

namespace A029327.P10443521117740545173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (2 * (n + 5)) - A288166 (A005408 n).toNat

end

end A029327.P10443521117740545173

namespace A029327

/-- `A288166(2*(n+5))-A288166(A005408(n))` -/
def P10443521117740545173.Spec : Prop :=
  ∀ n, P10443521117740545173.a n = A029327 n

end A029327

/-!
# A029328: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^9)).

The programs for A029328, the canonical program `A029328.P4129848005300392605` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029328 has offset 0).

The definition of A029328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6+x^10+x^11+x^13+x^14-x^18-x^19-x^20+x^24))` (program `A029328.P4129848005300392605`, by `A029328.P4129848005300392605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029328.P4129848005300392605

`ogf(1/(1-x^4-x^5-x^6+x^10+x^11+x^13+x^14-x^18-x^19-x^20+x^24))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029328

/-- `ogf(1/(1-x^4-x^5-x^6+x^10+x^11+x^13+x^14-x^18-x^19-x^20+x^24))` -/
def P4129848005300392605.Spec : Prop :=
  ∀ n, P4129848005300392605.a n = A029328 n

theorem P4129848005300392605.correct : P4129848005300392605.Spec := by
  intro n
  simp only [A029328]

end A029328

/-! ## A029328.P17808888260259536915

`A029195(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029328.P17808888260259536915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029195 n - a (n - 2)

end

end A029328.P17808888260259536915

namespace A029328

/-- `A029195(n)-a(n-2)` -/
def P17808888260259536915.Spec : Prop :=
  ∀ n, P17808888260259536915.a n = A029328 n

end A029328

/-! ## A029328.P9303137671020705564

`A029247(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029328.P9303137671020705564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029247 n - a (n - 3)

end

end A029328.P9303137671020705564

namespace A029328

/-- `A029247(n)-a(n-3)` -/
def P9303137671020705564.Spec : Prop :=
  ∀ n, P9303137671020705564.a n = A029328 n

end A029328

/-! ## A029328.P1382537238316925087

`A025904(n+1)+A029080(n)-A029165(n+1)`
-/

namespace A029328.P1382537238316925087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (n + 1) + (A029080 n - A029165 (n + 1))

end

end A029328.P1382537238316925087

namespace A029328

/-- `A025904(n+1)+A029080(n)-A029165(n+1)` -/
def P1382537238316925087.Spec : Prop :=
  ∀ n, P1382537238316925087.a n = A029328 n

end A029328

/-! ## A029328.P12361486293255792934

`A029443(2*n)`
-/

namespace A029328.P12361486293255792934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (2 * n)

end

end A029328.P12361486293255792934

namespace A029328

/-- `A029443(2*n)` -/
def P12361486293255792934.Spec : Prop :=
  ∀ n, P12361486293255792934.a n = A029328 n

end A029328

/-! ## A029328.P16411716568640587212

`A029443(A004277(n))+A000007(n)`
-/

namespace A029328.P16411716568640587212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (A004277 n).toNat + A000007 n

end

end A029328.P16411716568640587212

namespace A029328

/-- `A029443(A004277(n))+A000007(n)` -/
def P16411716568640587212.Spec : Prop :=
  ∀ n, P16411716568640587212.a n = A029328 n

end A029328

/-! ## A029328.P17670019133506057455

`or(A000007(n), A029443(A005843(n)))`
-/

namespace A029328.P17670019133506057455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029443 (A005843 n).toNat)

end

end A029328.P17670019133506057455

namespace A029328

/-- `or(A000007(n), A029443(A005843(n)))` -/
def P17670019133506057455.Spec : Prop :=
  ∀ n, P17670019133506057455.a n = A029328 n

end A029328

/-! ## A029328.P16316031695247349492

`A029236(2*n)+A029352(2*n)-A029190(2*n)`
-/

namespace A029328.P16316031695247349492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n) + (A029352 (2 * n) - A029190 (2 * n))

end

end A029328.P16316031695247349492

namespace A029328

/-- `A029236(2*n)+A029352(2*n)-A029190(2*n)` -/
def P16316031695247349492.Spec : Prop :=
  ∀ n, P16316031695247349492.a n = A029328 n

end A029328

/-! ## A029328.P17137534853369878986

`A118759(A029443(n+n))`
-/

namespace A029328.P17137534853369878986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A029443 (n + n)).toNat

end

end A029328.P17137534853369878986

namespace A029328

/-- `A118759(A029443(n+n))` -/
def P17137534853369878986.Spec : Prop :=
  ∀ n, P17137534853369878986.a n = A029328 n

end A029328

/-!
# A029329: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^10)).

The programs for A029329, the canonical program `A029329.P17603292444450766346` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029329 has offset 0).

The definition of A029329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6+x^9+x^11+x^14+x^16-x^19-x^20-x^21+x^25))` (program `A029329.P17603292444450766346`, by `A029329.P17603292444450766346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029329.P17603292444450766346

`ogf(1/(1-x^4-x^5-x^6+x^9+x^11+x^14+x^16-x^19-x^20-x^21+x^25))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029329

/-- `ogf(1/(1-x^4-x^5-x^6+x^9+x^11+x^14+x^16-x^19-x^20-x^21+x^25))` -/
def P17603292444450766346.Spec : Prop :=
  ∀ n, P17603292444450766346.a n = A029329 n

theorem P17603292444450766346.correct : P17603292444450766346.Spec := by
  intro n
  simp only [A029329]

end A029329

/-! ## A029329.P8667486082790727907

`A029196(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029329.P8667486082790727907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029196 n - a (n - 2)

end

end A029329.P8667486082790727907

namespace A029329

/-- `A029196(n)-a(n-2)` -/
def P8667486082790727907.Spec : Prop :=
  ∀ n, P8667486082790727907.a n = A029329 n

end A029329

/-! ## A029329.P1193533850686965064

`A029248(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029329.P1193533850686965064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029248 n - a (n - 3)

end

end A029329.P1193533850686965064

namespace A029329

/-- `A029248(n)-a(n-3)` -/
def P1193533850686965064.Spec : Prop :=
  ∀ n, P1193533850686965064.a n = A029329 n

end A029329

/-! ## A029329.P9366773298933581041

`A025879(n)+A029175(n)-A029196(n)`
-/

namespace A029329.P9366773298933581041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025879 n + (A029175 n - A029196 n)

end

end A029329.P9366773298933581041

namespace A029329

/-- `A025879(n)+A029175(n)-A029196(n)` -/
def P9366773298933581041.Spec : Prop :=
  ∀ n, P9366773298933581041.a n = A029329 n

end A029329

/-! ## A029329.P1422201830134285443

`A129594(A029331(n)%A062766(n+1))`
-/

namespace A029329.P1422201830134285443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (Int.tmod (A029331 n) (A062766 (n + 1))).toNat

end

end A029329.P1422201830134285443

namespace A029329

/-- `A129594(A029331(n)%A062766(n+1))` -/
def P1422201830134285443.Spec : Prop :=
  ∀ n, P1422201830134285443.a n = A029329 n

end A029329

/-!
# A029330: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^11)).

The programs for A029330, the canonical program `A029330.P556113051353556058` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029330 has offset 0).

The definition of A029330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^16+x^17-x^20-x^21-x^22+x^26))` (program `A029330.P556113051353556058`, by `A029330.P556113051353556058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029330.P556113051353556058

`ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^16+x^17-x^20-x^21-x^22+x^26))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029330

/-- `ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^16+x^17-x^20-x^21-x^22+x^26))` -/
def P556113051353556058.Spec : Prop :=
  ∀ n, P556113051353556058.a n = A029330 n

theorem P556113051353556058.correct : P556113051353556058.Spec := by
  intro n
  simp only [A029330]

end A029330

/-! ## A029330.P667323074417046602

`A029197(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029330.P667323074417046602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029197 n - a (n - 2)

end

end A029330.P667323074417046602

namespace A029330

/-- `A029197(n)-a(n-2)` -/
def P667323074417046602.Spec : Prop :=
  ∀ n, P667323074417046602.a n = A029330 n

end A029330

/-! ## A029330.P17118730750791089019

`A029249(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029330.P17118730750791089019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029249 n - a (n - 3)

end

end A029330.P17118730750791089019

namespace A029330

/-- `A029249(n)-a(n-3)` -/
def P17118730750791089019.Spec : Prop :=
  ∀ n, P17118730750791089019.a n = A029330 n

end A029330

/-! ## A029330.P5847227855229412183

`A029445(2*n)`
-/

namespace A029330.P5847227855229412183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 (2 * n)

end

end A029330.P5847227855229412183

namespace A029330

/-- `A029445(2*n)` -/
def P5847227855229412183.Spec : Prop :=
  ∀ n, P5847227855229412183.a n = A029330 n

end A029330

/-! ## A029330.P17568923507971257750

`gcd(A000038(n), A029445(A005843(n)))`
-/

namespace A029330.P17568923507971257750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A029445 (A005843 n).toNat)

end

end A029330.P17568923507971257750

namespace A029330

/-- `gcd(A000038(n), A029445(A005843(n)))` -/
def P17568923507971257750.Spec : Prop :=
  ∀ n, (P17568923507971257750.a n : ℤ) = A029330 n

end A029330

/-! ## A029330.P6936482881622073213

`and(A029445(A005843(n)), A260196(n))`
-/

namespace A029330.P6936482881622073213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029445 (A005843 n).toNat) (A260196 n)

end

end A029330.P6936482881622073213

namespace A029330

/-- `and(A029445(A005843(n)), A260196(n))` -/
def P6936482881622073213.Spec : Prop :=
  ∀ n, P6936482881622073213.a n = A029330 n

end A029330

/-! ## A029330.P10532338925606603399

`A025926(2*n)+A029240(2*n)-A029244(2*n)`
-/

namespace A029330.P10532338925606603399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029240 (2 * n) - A029244 (2 * n))

end

end A029330.P10532338925606603399

namespace A029330

/-- `A025926(2*n)+A029240(2*n)-A029244(2*n)` -/
def P10532338925606603399.Spec : Prop :=
  ∀ n, P10532338925606603399.a n = A029330 n

end A029330

/-! ## A029330.P12662201376484119374

`A025926(2*n)+A029372(2*n)-A029377(2*n)`
-/

namespace A029330.P12662201376484119374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029372 (2 * n) - A029377 (2 * n))

end

end A029330.P12662201376484119374

namespace A029330

/-- `A025926(2*n)+A029372(2*n)-A029377(2*n)` -/
def P12662201376484119374.Spec : Prop :=
  ∀ n, P12662201376484119374.a n = A029330 n

end A029330

/-! ## A029330.P6915180571781526520

`A029224(2*n)+A029372(2*n)-A029192(2*n)`
-/

namespace A029330.P6915180571781526520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n) + (A029372 (2 * n) - A029192 (2 * n))

end

end A029330.P6915180571781526520

namespace A029330

/-- `A029224(2*n)+A029372(2*n)-A029192(2*n)` -/
def P6915180571781526520.Spec : Prop :=
  ∀ n, P6915180571781526520.a n = A029330 n

end A029330

/-! ## A029330.P8912876827333950269

`A029372(2*n)+A029431(2*n)-A029358(2*n)`
-/

namespace A029330.P8912876827333950269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 (2 * n) + (A029431 (2 * n) - A029358 (2 * n))

end

end A029330.P8912876827333950269

namespace A029330

/-- `A029372(2*n)+A029431(2*n)-A029358(2*n)` -/
def P8912876827333950269.Spec : Prop :=
  ∀ n, P8912876827333950269.a n = A029330 n

end A029330

/-! ## A029330.P15909880051416806280

`A029240(2*n)-A029244(2*n+9)`
-/

namespace A029330.P15909880051416806280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) - A029244 (2 * n + 9)

end

end A029330.P15909880051416806280

namespace A029330

/-- `A029240(2*n)-A029244(2*n+9)` -/
def P15909880051416806280.Spec : Prop :=
  ∀ n, P15909880051416806280.a n = A029330 n

end A029330

/-! ## A029330.P16572297979677099295

`A029445(A005843(n))%A000914(n+1)`
-/

namespace A029330.P16572297979677099295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029445 (A005843 n).toNat) (A000914 (n + 1))

end

end A029330.P16572297979677099295

namespace A029330

/-- `A029445(A005843(n))%A000914(n+1)` -/
def P16572297979677099295.Spec : Prop :=
  ∀ n, P16572297979677099295.a n = A029330 n

end A029330

/-! ## A029330.P13606479816881464548

`A029445(A005843(n))%A214899(n)`
-/

namespace A029330.P13606479816881464548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029445 (A005843 n).toNat) (A214899 n)

end

end A029330.P13606479816881464548

namespace A029330

/-- `A029445(A005843(n))%A214899(n)` -/
def P13606479816881464548.Spec : Prop :=
  ∀ n, P13606479816881464548.a n = A029330 n

end A029330

/-!
# A029331: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)*(1-x^12)).

The programs for A029331, the canonical program `A029331.P16509172661417459008` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029331 has offset 0).

The definition of A029331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^12-x^15+x^16+x^17+x^18-x^21-x^22-x^23+x^27))` (program `A029331.P16509172661417459008`, by `A029331.P16509172661417459008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029331.P16509172661417459008

`ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^12-x^15+x^16+x^17+x^18-x^21-x^22-x^23+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029331

/-- `ogf(1/(1-x^4-x^5-x^6+x^9+x^10+x^11-x^12-x^15+x^16+x^17+x^18-x^21-x^22-x^23+x^27))` -/
def P16509172661417459008.Spec : Prop :=
  ∀ n, P16509172661417459008.a n = A029331 n

theorem P16509172661417459008.correct : P16509172661417459008.Spec := by
  intro n
  simp only [A029331]

end A029331

/-! ## A029331.P5624072464246158089

`A029198(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029331.P5624072464246158089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029198 n - a (n - 2)

end

end A029331.P5624072464246158089

namespace A029331

/-- `A029198(n)-a(n-2)` -/
def P5624072464246158089.Spec : Prop :=
  ∀ n, P5624072464246158089.a n = A029331 n

end A029331

/-! ## A029331.P15446691450051038870

`A029250(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029331.P15446691450051038870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029250 n - a (n - 3)

end

end A029331.P15446691450051038870

namespace A029331

/-- `A029250(n)-a(n-3)` -/
def P15446691450051038870.Spec : Prop :=
  ∀ n, P15446691450051038870.a n = A029331 n

end A029331

/-! ## A029331.P16985620138202255207

`A029270(abs(1-A004442(n)))`
-/

namespace A029331.P16985620138202255207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 |1 - A004442 n|.toNat

end

end A029331.P16985620138202255207

namespace A029331

/-- `A029270(abs(1-A004442(n)))` -/
def P16985620138202255207.Spec : Prop :=
  ∀ n, P16985620138202255207.a n = A029331 n

end A029331

/-! ## A029331.P13276243320106233382

`A029270(abs(n-A010673(n)))`
-/

namespace A029331.P13276243320106233382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 |(n : ℤ) - A010673 n|.toNat

end

end A029331.P13276243320106233382

namespace A029331

/-- `A029270(abs(n-A010673(n)))` -/
def P13276243320106233382.Spec : Prop :=
  ∀ n, P13276243320106233382.a n = A029331 n

end A029331

/-! ## A029331.P18076535663219718287

`A029270(A047621(n+1)%(n+1))`
-/

namespace A029331.P18076535663219718287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (Int.tmod (A047621 (n + 1)) (n + 1 : ℤ)).toNat

end

end A029331.P18076535663219718287

namespace A029331

/-- `A029270(A047621(n+1)%(n+1))` -/
def P18076535663219718287.Spec : Prop :=
  ∀ n, P18076535663219718287.a n = A029331 n

end A029331

/-! ## A029331.P269614820166822591

`∑[A025864(n)-A025796(A057979(n))]`
-/

namespace A029331.P269614820166822591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 n - A025796 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029331.P269614820166822591

namespace A029331

/-- `∑[A025864(n)-A025796(A057979(n))]` -/
def P269614820166822591.Spec : Prop :=
  ∀ n, P269614820166822591.a n = A029331 n

end A029331

/-! ## A029331.P3394460218962591015

`A029346(n)+A029358(n)-A025875(n)`
-/

namespace A029331.P3394460218962591015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029358 n - A025875 n)

end

end A029331.P3394460218962591015

namespace A029331

/-- `A029346(n)+A029358(n)-A025875(n)` -/
def P3394460218962591015.Spec : Prop :=
  ∀ n, P3394460218962591015.a n = A029331 n

theorem P3394460218962591015.correct : P3394460218962591015.Spec := by
  intro n
  simp only [A029331, Nat.add_sub_cancel, A029331.P3394460218962591015.a, A029331.P16509172661417459008.a, A025875, A025875.P6817867275474269582.a, A029346, A029346.P15441236893995981458.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029331

/-! ## A029331.P331213221797082555

`A029335(n)+A029358(n)-A029368(n)`
-/

namespace A029331.P331213221797082555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n + (A029358 n - A029368 n)

end

end A029331.P331213221797082555

namespace A029331

/-- `A029335(n)+A029358(n)-A029368(n)` -/
def P331213221797082555.Spec : Prop :=
  ∀ n, P331213221797082555.a n = A029331 n

end A029331

/-! ## A029331.P3667043912687783957

`A029270((2*n+3)%A014681(n+4))`
-/

namespace A029331.P3667043912687783957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (Int.tmod (2 * n + 3 : ℤ) (A014681 (n + 4))).toNat

end

end A029331.P3667043912687783957

namespace A029331

/-- `A029270((2*n+3)%A014681(n+4))` -/
def P3667043912687783957.Spec : Prop :=
  ∀ n, P3667043912687783957.a n = A029331 n

end A029331

/-!
# A029332: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^8)).

The programs for A029332, the canonical program `A029332.P7919617988897500836` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029332 has offset 0).

The definition of A029332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7-x^8+x^9+x^11+2x^12+x^13+x^15-x^16-x^17-x^19-x^20+x^24))` (program `A029332.P7919617988897500836`, by `A029332.P7919617988897500836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029332.P7919617988897500836

`ogf(1/(1-x^4-x^5-x^7-x^8+x^9+x^11+2x^12+x^13+x^15-x^16-x^17-x^19-x^20+x^24))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029332

/-- `ogf(1/(1-x^4-x^5-x^7-x^8+x^9+x^11+2x^12+x^13+x^15-x^16-x^17-x^19-x^20+x^24))` -/
def P7919617988897500836.Spec : Prop :=
  ∀ n, P7919617988897500836.a n = A029332 n

theorem P7919617988897500836.correct : P7919617988897500836.Spec := by
  intro n
  simp only [A029332]

end A029332

/-! ## A029332.P5866904758425921540

`A029199(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029332.P5866904758425921540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029199 n - a (n - 2)

end

end A029332.P5866904758425921540

namespace A029332

/-- `A029199(n)-a(n-2)` -/
def P5866904758425921540.Spec : Prop :=
  ∀ n, P5866904758425921540.a n = A029332 n

end A029332

/-! ## A029332.P7905343477633350124

`A025882(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029332.P7905343477633350124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025882 n + a (n - 4)

end

end A029332.P7905343477633350124

namespace A029332

/-- `A025882(n)+a(n-4)` -/
def P7905343477633350124.Spec : Prop :=
  ∀ n, P7905343477633350124.a n = A029332 n

end A029332

/-! ## A029332.P1870773409451874926

`A025867(n)+a((2*n-5)%n)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029332.P1870773409451874926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025867 n + a (Int.tmod ((2 * n : ℤ) - 5) (n : ℤ)).toNat

end

end A029332.P1870773409451874926

namespace A029332

/-- `A025867(n)+a((2*n-5)%n)` -/
def P1870773409451874926.Spec : Prop :=
  ∀ n, P1870773409451874926.a n = A029332 n

end A029332

/-! ## A029332.P5577278663143819530

`A000700(n)-A268310(A249275(n+1))`
-/

namespace A029332.P5577278663143819530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A268310 (A249275 (n + 1)).toNat

end

end A029332.P5577278663143819530

namespace A029332

/-- `A000700(n)-A268310(A249275(n+1))` -/
def P5577278663143819530.Spec : Prop :=
  ∀ n, P5577278663143819530.a n = A029332 n

end A029332

/-!
# A029333: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^9)).

The programs for A029333, the canonical program `A029333.P3714242767305281863` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029333 has offset 0).

The definition of A029333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7+x^11+x^12+x^13+x^14-x^18-x^20-x^21+x^25))` (program `A029333.P3714242767305281863`, by `A029333.P3714242767305281863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029333.P3714242767305281863

`ogf(1/(1-x^4-x^5-x^7+x^11+x^12+x^13+x^14-x^18-x^20-x^21+x^25))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029333

/-- `ogf(1/(1-x^4-x^5-x^7+x^11+x^12+x^13+x^14-x^18-x^20-x^21+x^25))` -/
def P3714242767305281863.Spec : Prop :=
  ∀ n, P3714242767305281863.a n = A029333 n

theorem P3714242767305281863.correct : P3714242767305281863.Spec := by
  intro n
  simp only [A029333]

end A029333

/-! ## A029333.P17196548368232780078

`A029200(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029333.P17196548368232780078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029200 n - a (n - 2)

end

end A029333.P17196548368232780078

namespace A029333

/-- `A029200(n)-a(n-2)` -/
def P17196548368232780078.Spec : Prop :=
  ∀ n, P17196548368232780078.a n = A029333 n

end A029333

/-! ## A029333.P10384689749464305392

`A025883(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029333.P10384689749464305392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025883 n + a (n - 4)

end

end A029333.P10384689749464305392

namespace A029333

/-- `A025883(n)+a(n-4)` -/
def P10384689749464305392.Spec : Prop :=
  ∀ n, P10384689749464305392.a n = A029333 n

end A029333

/-! ## A029333.P17107011714426001056

`A029363(abs(A060576(n)+4-n))+A029363(n)`
-/

namespace A029333.P17107011714426001056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029363 |A060576 n + (4 - (n : ℤ))|.toNat + A029363 n

end

end A029333.P17107011714426001056

namespace A029333

/-- `A029363(abs(A060576(n)+4-n))+A029363(n)` -/
def P17107011714426001056.Spec : Prop :=
  ∀ n, P17107011714426001056.a n = A029333 n

end A029333

/-! ## A029333.P12883685550896812358

`A029074(n+4)-A029092(n+4)`
-/

namespace A029333.P12883685550896812358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 (n + 4) - A029092 (n + 4)

end

end A029333.P12883685550896812358

namespace A029333

/-- `A029074(n+4)-A029092(n+4)` -/
def P12883685550896812358.Spec : Prop :=
  ∀ n, P12883685550896812358.a n = A029333 n

end A029333

/-! ## A029333.P4939039092426387186

`A029074(n)-A029363(A005408(n+2))`
-/

namespace A029333.P4939039092426387186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n - A029363 (A005408 (n + 2)).toNat

end

end A029333.P4939039092426387186

namespace A029333

/-- `A029074(n)-A029363(A005408(n+2))` -/
def P4939039092426387186.Spec : Prop :=
  ∀ n, P4939039092426387186.a n = A029333 n

end A029333

/-!
# A029334: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^10)).

The programs for A029334, the canonical program `A029334.P14425935815873540571` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029334 has offset 0).

The definition of A029334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7+x^9-x^10+x^11+x^12+x^14+x^15-x^16+x^17-x^19-x^21-x^22+x^26))` (program `A029334.P14425935815873540571`, by `A029334.P14425935815873540571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029334.P14425935815873540571

`ogf(1/(1-x^4-x^5-x^7+x^9-x^10+x^11+x^12+x^14+x^15-x^16+x^17-x^19-x^21-x^22+x^26))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029334

/-- `ogf(1/(1-x^4-x^5-x^7+x^9-x^10+x^11+x^12+x^14+x^15-x^16+x^17-x^19-x^21-x^22+x^26))` -/
def P14425935815873540571.Spec : Prop :=
  ∀ n, P14425935815873540571.a n = A029334 n

theorem P14425935815873540571.correct : P14425935815873540571.Spec := by
  intro n
  simp only [A029334]

end A029334

/-! ## A029334.P14027425800741772782

`A029201(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029334.P14027425800741772782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029201 n - a (n - 2)

end

end A029334.P14027425800741772782

namespace A029334

/-- `A029201(n)-a(n-2)` -/
def P14027425800741772782.Spec : Prop :=
  ∀ n, P14027425800741772782.a n = A029334 n

end A029334

/-! ## A029334.P15698287493889104218

`A025884(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029334.P15698287493889104218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025884 n + a (n - 4)

end

end A029334.P15698287493889104218

namespace A029334

/-- `A025884(n)+a(n-4)` -/
def P15698287493889104218.Spec : Prop :=
  ∀ n, P15698287493889104218.a n = A029334 n

end A029334

/-! ## A029334.P15020872417043804577

`A029394(abs(4-n))+A029394(n)`
-/

namespace A029334.P15020872417043804577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029394 |4 - (n : ℤ)|.toNat + A029394 n

end

end A029334.P15020872417043804577

namespace A029334

/-- `A029394(abs(4-n))+A029394(n)` -/
def P15020872417043804577.Spec : Prop :=
  ∀ n, P15020872417043804577.a n = A029334 n

end A029334

/-! ## A029334.P16669295010065403845

`A029384(n+1)-(A029414(n+1)-A029378(n))`
-/

namespace A029334.P16669295010065403845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029384 (n + 1) - (A029414 (n + 1) - A029378 n)

end

end A029334.P16669295010065403845

namespace A029334

/-- `A029384(n+1)-(A029414(n+1)-A029378(n))` -/
def P16669295010065403845.Spec : Prop :=
  ∀ n, P16669295010065403845.a n = A029334 n

end A029334

/-! ## A029334.P10167643461323551214

`A029075(n+4)-A029093(n+4)`
-/

namespace A029334.P10167643461323551214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029075 (n + 4) - A029093 (n + 4)

end

end A029334.P10167643461323551214

namespace A029334

/-- `A029075(n+4)-A029093(n+4)` -/
def P10167643461323551214.Spec : Prop :=
  ∀ n, P10167643461323551214.a n = A029334 n

end A029334

/-!
# A029335: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^11)).

The programs for A029335, the canonical program `A029335.P4715969748177274942` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029335 has offset 0).

The definition of A029335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7+x^9+x^12+x^15+x^18-x^20-x^22-x^23+x^27))` (program `A029335.P4715969748177274942`, by `A029335.P4715969748177274942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029335.P4715969748177274942

`ogf(1/(1-x^4-x^5-x^7+x^9+x^12+x^15+x^18-x^20-x^22-x^23+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029335

/-- `ogf(1/(1-x^4-x^5-x^7+x^9+x^12+x^15+x^18-x^20-x^22-x^23+x^27))` -/
def P4715969748177274942.Spec : Prop :=
  ∀ n, P4715969748177274942.a n = A029335 n

theorem P4715969748177274942.correct : P4715969748177274942.Spec := by
  intro n
  simp only [A029335]

end A029335

/-! ## A029335.P4706333864958502065

`A029202(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029335.P4706333864958502065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029202 n - a (n - 2)

end

end A029335.P4706333864958502065

namespace A029335

/-- `A029202(n)-a(n-2)` -/
def P4706333864958502065.Spec : Prop :=
  ∀ n, P4706333864958502065.a n = A029335 n

end A029335

/-! ## A029335.P917410658883658903

`A029395(abs(4-n))+A029395(n)`
-/

namespace A029335.P917410658883658903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 |4 - (n : ℤ)|.toNat + A029395 n

end

end A029335.P917410658883658903

namespace A029335

/-- `A029395(abs(4-n))+A029395(n)` -/
def P917410658883658903.Spec : Prop :=
  ∀ n, P917410658883658903.a n = A029335 n

end A029335

/-! ## A029335.P7112031621717799457

`A025870(n)+A029326(n)-A029350(n)`
-/

namespace A029335.P7112031621717799457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 n + (A029326 n - A029350 n)

end

end A029335.P7112031621717799457

namespace A029335

/-- `A025870(n)+A029326(n)-A029350(n)` -/
def P7112031621717799457.Spec : Prop :=
  ∀ n, P7112031621717799457.a n = A029335 n

end A029335

/-! ## A029335.P7395304765752035433

`A029346(n)+A029368(n)-A025875(n)`
-/

namespace A029335.P7395304765752035433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029368 n - A025875 n)

end

end A029335.P7395304765752035433

namespace A029335

/-- `A029346(n)+A029368(n)-A025875(n)` -/
def P7395304765752035433.Spec : Prop :=
  ∀ n, P7395304765752035433.a n = A029335 n

end A029335

/-! ## A029335.P3779254921784659800

`A029331(n)+A029368(n)-A029358(n)`
-/

namespace A029335.P3779254921784659800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 n + (A029368 n - A029358 n)

end

end A029335.P3779254921784659800

namespace A029335

/-- `A029331(n)+A029368(n)-A029358(n)` -/
def P3779254921784659800.Spec : Prop :=
  ∀ n, P3779254921784659800.a n = A029335 n

end A029335

/-!
# A029336: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^12)).

The programs for A029336, the canonical program `A029336.P7674119392893955228` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029336 has offset 0).

The definition of A029336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^17+x^19-x^21-x^23-x^24+x^28))` (program `A029336.P7674119392893955228`, by `A029336.P7674119392893955228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029336.P7674119392893955228

`ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^17+x^19-x^21-x^23-x^24+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029336

/-- `ogf(1/(1-x^4-x^5-x^7+x^9+x^11+x^17+x^19-x^21-x^23-x^24+x^28))` -/
def P7674119392893955228.Spec : Prop :=
  ∀ n, P7674119392893955228.a n = A029336 n

theorem P7674119392893955228.correct : P7674119392893955228.Spec := by
  intro n
  simp only [A029336]

end A029336

/-! ## A029336.P17481784717413030806

`A029203(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029336.P17481784717413030806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029203 n - a (n - 2)

end

end A029336.P17481784717413030806

namespace A029336

/-- `A029203(n)-a(n-2)` -/
def P17481784717413030806.Spec : Prop :=
  ∀ n, P17481784717413030806.a n = A029336 n

end A029336

/-! ## A029336.P12803582574683710070

`A025886(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029336.P12803582574683710070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025886 n + a (n - 4)

end

end A029336.P12803582574683710070

namespace A029336

/-- `A025886(n)+a(n-4)` -/
def P12803582574683710070.Spec : Prop :=
  ∀ n, P12803582574683710070.a n = A029336 n

end A029336

/-! ## A029336.P10295448152853480292

`Δ[∑[A029349(n)]-A029367(n)]`
-/

namespace A029336.P10295448152853480292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029336.P10295448152853480292

namespace A029336

/-- `Δ[∑[A029349(n)]-A029367(n)]` -/
def P10295448152853480292.Spec : Prop :=
  ∀ n, P10295448152853480292.a n = A029336 n

end A029336

/-! ## A029336.P2052749181866211739

`A029378(n+1)-Δ[A025911(n)]`
-/

namespace A029336.P2052749181866211739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029378 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029336.P2052749181866211739

namespace A029336

/-- `A029378(n+1)-Δ[A025911(n)]` -/
def P2052749181866211739.Spec : Prop :=
  ∀ n, P2052749181866211739.a n = A029336 n

end A029336

/-! ## A029336.P3380645930046868483

`A029349(n+1)-Δ[A029367(n)]`
-/

namespace A029336.P3380645930046868483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029336.P3380645930046868483

namespace A029336

/-- `A029349(n+1)-Δ[A029367(n)]` -/
def P3380645930046868483.Spec : Prop :=
  ∀ n, P3380645930046868483.a n = A029336 n

end A029336

/-!
# A029337: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^9)).

The programs for A029337, the canonical program `A029337.P12340486578170960747` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029337 has offset 0).

The definition of A029337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^8+x^12+2x^13+x^14-x^18-x^21-x^22+x^26))` (program `A029337.P12340486578170960747`, by `A029337.P12340486578170960747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029337.P12340486578170960747

`ogf(1/(1-x^4-x^5-x^8+x^12+2x^13+x^14-x^18-x^21-x^22+x^26))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029337

/-- `ogf(1/(1-x^4-x^5-x^8+x^12+2x^13+x^14-x^18-x^21-x^22+x^26))` -/
def P12340486578170960747.Spec : Prop :=
  ∀ n, P12340486578170960747.a n = A029337 n

theorem P12340486578170960747.correct : P12340486578170960747.Spec := by
  intro n
  simp only [A029337]

end A029337

/-! ## A029337.P13131368463976962976

`A029204(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029337.P13131368463976962976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029204 n - a (n - 2)

end

end A029337.P13131368463976962976

namespace A029337

/-- `A029204(n)-a(n-2)` -/
def P13131368463976962976.Spec : Prop :=
  ∀ n, P13131368463976962976.a n = A029337 n

end A029337

/-! ## A029337.P12413899174918051649

`A025887(n)+A029078(n)-A029096(n)`
-/

namespace A029337.P12413899174918051649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 n + (A029078 n - A029096 n)

end

end A029337.P12413899174918051649

namespace A029337

/-- `A025887(n)+A029078(n)-A029096(n)` -/
def P12413899174918051649.Spec : Prop :=
  ∀ n, P12413899174918051649.a n = A029337 n

end A029337

/-! ## A029337.P15838410275073056490

`A029078(n)+A029393(n)-A029092(n)`
-/

namespace A029337.P15838410275073056490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029078 n + (A029393 n - A029092 n)

end

end A029337.P15838410275073056490

namespace A029337

/-- `A029078(n)+A029393(n)-A029092(n)` -/
def P15838410275073056490.Spec : Prop :=
  ∀ n, P15838410275073056490.a n = A029337 n

end A029337

/-! ## A029337.P2023841413843430840

`A003056(A099423(n)^A008834(n+1))`
-/

namespace A029337.P2023841413843430840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A099423 n : ℚ) ^ (A008834 (n + 1) : ℤ))).toNat

end

end A029337.P2023841413843430840

namespace A029337

/-- `A003056(A099423(n)^A008834(n+1))` -/
def P2023841413843430840.Spec : Prop :=
  ∀ n, P2023841413843430840.a n = A029337 n

end A029337

/-!
# A029338: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^10)).

The programs for A029338, the canonical program `A029338.P16805295716428423661` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029338 has offset 0).

The definition of A029338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^8+x^9-x^10+x^12+x^13+x^14+x^15-x^17+x^18-x^19-x^22-x^23+x^27))` (program `A029338.P16805295716428423661`, by `A029338.P16805295716428423661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029338.P16805295716428423661

`ogf(1/(1-x^4-x^5-x^8+x^9-x^10+x^12+x^13+x^14+x^15-x^17+x^18-x^19-x^22-x^23+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029338

/-- `ogf(1/(1-x^4-x^5-x^8+x^9-x^10+x^12+x^13+x^14+x^15-x^17+x^18-x^19-x^22-x^23+x^27))` -/
def P16805295716428423661.Spec : Prop :=
  ∀ n, P16805295716428423661.a n = A029338 n

theorem P16805295716428423661.correct : P16805295716428423661.Spec := by
  intro n
  simp only [A029338]

end A029338

/-! ## A029338.P7557712913129089284

`A029205(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029338.P7557712913129089284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029205 n - a (n - 2)

end

end A029338.P7557712913129089284

namespace A029338

/-- `A029205(n)-a(n-2)` -/
def P7557712913129089284.Spec : Prop :=
  ∀ n, P7557712913129089284.a n = A029338 n

end A029338

/-! ## A029338.P2605616494561561097

`A005136(6*A147786(n))`
-/

namespace A029338.P2605616494561561097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (6 * A147786 n).toNat

end

end A029338.P2605616494561561097

namespace A029338

/-- `A005136(6*A147786(n))` -/
def P2605616494561561097.Spec : Prop :=
  ∀ n, P2605616494561561097.a n = A029338 n

end A029338

/-! ## A029338.P16709231823219000147

`A000120(floor(sinh(A147786(n))))`
-/

namespace A029338.P16709231823219000147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊Real.sinh (A147786 n : ℝ)⌋.toNat

end

end A029338.P16709231823219000147

namespace A029338

/-- `A000120(floor(sinh(A147786(n))))` -/
def P16709231823219000147.Spec : Prop :=
  ∀ n, P16709231823219000147.a n = A029338 n

end A029338

/-! ## A029338.P5527437046859693965

`A227185(ceil(sinh(A147786(n))))`
-/

namespace A029338.P5527437046859693965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 ⌈Real.sinh (A147786 n : ℝ)⌉.toNat

end

end A029338.P5527437046859693965

namespace A029338

/-- `A227185(ceil(sinh(A147786(n))))` -/
def P5527437046859693965.Spec : Prop :=
  ∀ n, P5527437046859693965.a n = A029338 n

end A029338

/-!
# A029339: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^11)).

The programs for A029339, the canonical program `A029339.P3035388261735253134` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029339 has offset 0).

The definition of A029339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^8+x^9-x^11+x^12+x^13+x^15+x^16-x^17+x^19-x^20-x^23-x^24+x^28))` (program `A029339.P3035388261735253134`, by `A029339.P3035388261735253134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029339.P3035388261735253134

`ogf(1/(1-x^4-x^5-x^8+x^9-x^11+x^12+x^13+x^15+x^16-x^17+x^19-x^20-x^23-x^24+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029339

/-- `ogf(1/(1-x^4-x^5-x^8+x^9-x^11+x^12+x^13+x^15+x^16-x^17+x^19-x^20-x^23-x^24+x^28))` -/
def P3035388261735253134.Spec : Prop :=
  ∀ n, P3035388261735253134.a n = A029339 n

theorem P3035388261735253134.correct : P3035388261735253134.Spec := by
  intro n
  simp only [A029339]

end A029339

/-! ## A029339.P9562664394409500091

`A029206(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029339.P9562664394409500091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029206 n - a (n - 2)

end

end A029339.P9562664394409500091

namespace A029339

/-- `A029206(n)-a(n-2)` -/
def P9562664394409500091.Spec : Prop :=
  ∀ n, P9562664394409500091.a n = A029339 n

end A029339

/-! ## A029339.P4878188543039552830

`A025873(n)+A029327(n)-A029353(n)`
-/

namespace A029339.P4878188543039552830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n + (A029327 n - A029353 n)

end

end A029339.P4878188543039552830

namespace A029339

/-- `A025873(n)+A029327(n)-A029353(n)` -/
def P4878188543039552830.Spec : Prop :=
  ∀ n, P4878188543039552830.a n = A029339 n

end A029339

/-! ## A029339.P7038335507115413747

`A029285(n)+A029346(n)-A029291(n)`
-/

namespace A029339.P7038335507115413747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029285 n + (A029346 n - A029291 n)

end

end A029339.P7038335507115413747

namespace A029339

/-- `A029285(n)+A029346(n)-A029291(n)` -/
def P7038335507115413747.Spec : Prop :=
  ∀ n, P7038335507115413747.a n = A029339 n

end A029339

/-! ## A029339.P1250520541416804388

`A025889(n)+∑[A025873(n)-A025889(n)]`
-/

namespace A029339.P1250520541416804388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n - A025889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025889 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029339.P1250520541416804388

namespace A029339

/-- `A025889(n)+∑[A025873(n)-A025889(n)]` -/
def P1250520541416804388.Spec : Prop :=
  ∀ n, P1250520541416804388.a n = A029339 n

end A029339

/-! ## A029339.P16098857209846660603

`A029249(A020710(n))-A029264(A020710(n))`
-/

namespace A029339.P16098857209846660603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029249 (A020710 n).toNat - A029264 (A020710 n).toNat

end

end A029339.P16098857209846660603

namespace A029339

/-- `A029249(A020710(n))-A029264(A020710(n))` -/
def P16098857209846660603.Spec : Prop :=
  ∀ n, P16098857209846660603.a n = A029339 n

end A029339

/-!
# A029340: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^12)).

The programs for A029340, the canonical program `A029340.P5110672663290039049` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029340 has offset 0).

The definition of A029340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029340.P5110672663290039049

`A029207(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029340

/-- `A029207(n)-a(n-2)` -/
def P5110672663290039049.Spec : Prop :=
  ∀ n, P5110672663290039049.a n = A029340 n

theorem P5110672663290039049.correct : P5110672663290039049.Spec := by
  intro n
  simp only [A029340]

end A029340

/-! ## A029340.P3204106202083254885

`A029171(A026741(n)%A052938(n))`
-/

namespace A029340.P3204106202083254885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (Int.tmod (A026741 n) (A052938 n)).toNat

end

end A029340.P3204106202083254885

namespace A029340

/-- `A029171(A026741(n)%A052938(n))` -/
def P3204106202083254885.Spec : Prop :=
  ∀ n, P3204106202083254885.a n = A029340 n

end A029340

/-! ## A029340.P5577964764432688621

`A029171(A109613(n)%A052938(n))`
-/

namespace A029340.P5577964764432688621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (Int.tmod (A109613 n) (A052938 n)).toNat

end

end A029340.P5577964764432688621

namespace A029340

/-- `A029171(A109613(n)%A052938(n))` -/
def P5577964764432688621.Spec : Prop :=
  ∀ n, P5577964764432688621.a n = A029340 n

end A029340

/-! ## A029340.P9846987348829823298

`A036459(5^A288166(n+5))`
-/

namespace A029340.P9846987348829823298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A288166 (n + 5) : ℤ))).toNat

end

end A029340.P9846987348829823298

namespace A029340

/-- `A036459(5^A288166(n+5))` -/
def P9846987348829823298.Spec : Prop :=
  ∀ n, P9846987348829823298.a n = A029340 n

end A029340

/-! ## A029340.P17485415418656101685

`A387907(n)%A354584(A004086(n+3))`
-/

namespace A029340.P17485415418656101685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387907 n) (A354584 (A004086 (n + 3)).toNat)

end

end A029340.P17485415418656101685

namespace A029340

/-- `A387907(n)%A354584(A004086(n+3))` -/
def P17485415418656101685.Spec : Prop :=
  ∀ n, P17485415418656101685.a n = A029340 n

end A029340

/-!
# A029341: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^10)).

The programs for A029341, the canonical program `A029341.P8727578433097400209` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029341 has offset 0).

The definition of A029341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^10+x^13+2x^14+x^15-x^18-x^23-x^24+x^28))` (program `A029341.P8727578433097400209`, by `A029341.P8727578433097400209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029341.P8727578433097400209

`ogf(1/(1-x^4-x^5-x^10+x^13+2x^14+x^15-x^18-x^23-x^24+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029341

/-- `ogf(1/(1-x^4-x^5-x^10+x^13+2x^14+x^15-x^18-x^23-x^24+x^28))` -/
def P8727578433097400209.Spec : Prop :=
  ∀ n, P8727578433097400209.a n = A029341 n

theorem P8727578433097400209.correct : P8727578433097400209.Spec := by
  intro n
  simp only [A029341]

end A029341

/-! ## A029341.P12104823036578098912

`A029208(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029341.P12104823036578098912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029208 n - a (n - 2)

end

end A029341.P12104823036578098912

namespace A029341

/-- `A029208(n)-a(n-2)` -/
def P12104823036578098912.Spec : Prop :=
  ∀ n, P12104823036578098912.a n = A029341 n

end A029341

/-! ## A029341.P17767637321298352732

`A025891(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029341.P17767637321298352732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025891 n + a (n - 4)

end

end A029341.P17767637321298352732

namespace A029341

/-- `A025891(n)+a(n-4)` -/
def P17767637321298352732.Spec : Prop :=
  ∀ n, P17767637321298352732.a n = A029341 n

end A029341

/-! ## A029341.P5874208335653706562

`A029392(eq[1, A032542(n+1)])`
-/

namespace A029341.P5874208335653706562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029341.P5874208335653706562

namespace A029341

/-- `A029392(eq[1, A032542(n+1)])` -/
def P5874208335653706562.Spec : Prop :=
  ∀ n, P5874208335653706562.a n = A029341 n

end A029341

/-! ## A029341.P3591529593697753332

`A354907(A383572(n))`
-/

namespace A029341.P3591529593697753332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A383572 n).toNat

end

end A029341.P3591529593697753332

namespace A029341

/-- `A354907(A383572(n))` -/
def P3591529593697753332.Spec : Prop :=
  ∀ n, P3591529593697753332.a n = A029341 n

end A029341

/-!
# A029342: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^11)).

The programs for A029342, the canonical program `A029342.P10735621688491322017` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029342 has offset 0).

The definition of A029342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029342.P10735621688491322017

`A029209(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029342

/-- `A029209(n)-a(n-2)` -/
def P10735621688491322017.Spec : Prop :=
  ∀ n, P10735621688491322017.a n = A029342 n

theorem P10735621688491322017.correct : P10735621688491322017.Spec := by
  intro n
  simp only [A029342]

end A029342

/-! ## A029342.P17895888729353199706

`A029404(abs(4-n))+A029404(n)`
-/

namespace A029342.P17895888729353199706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029404 |4 - (n : ℤ)|.toNat + A029404 n

end

end A029342.P17895888729353199706

namespace A029342

/-- `A029404(abs(4-n))+A029404(n)` -/
def P17895888729353199706.Spec : Prop :=
  ∀ n, P17895888729353199706.a n = A029342 n

end A029342

/-! ## A029342.P13179230640159622555

`A025892(n)+A029081(n)-A029101(n)`
-/

namespace A029342.P13179230640159622555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n + (A029081 n - A029101 n)

end

end A029342.P13179230640159622555

namespace A029342

/-- `A025892(n)+A029081(n)-A029101(n)` -/
def P13179230640159622555.Spec : Prop :=
  ∀ n, P13179230640159622555.a n = A029342 n

end A029342

/-! ## A029342.P2586135166028230302

`A029374(n)+A029404(n)-A025921(n)`
-/

namespace A029342.P2586135166028230302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 n + (A029404 n - A025921 n)

end

end A029342.P2586135166028230302

namespace A029342

/-- `A029374(n)+A029404(n)-A025921(n)` -/
def P2586135166028230302.Spec : Prop :=
  ∀ n, P2586135166028230302.a n = A029342 n

end A029342

/-! ## A029342.P2563912456970643188

`A029081(n)+A029404(n)-A029098(n)`
-/

namespace A029342.P2563912456970643188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 n + (A029404 n - A029098 n)

end

end A029342.P2563912456970643188

namespace A029342

/-- `A029081(n)+A029404(n)-A029098(n)` -/
def P2563912456970643188.Spec : Prop :=
  ∀ n, P2563912456970643188.a n = A029342 n

end A029342

/-! ## A029342.P18245335042183381343

`A029081(n+4)-A029101(n+4)`
-/

namespace A029342.P18245335042183381343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029081 (n + 4) - A029101 (n + 4)

end

end A029342.P18245335042183381343

namespace A029342

/-- `A029081(n+4)-A029101(n+4)` -/
def P18245335042183381343.Spec : Prop :=
  ∀ n, P18245335042183381343.a n = A029342 n

end A029342

/-!
# A029343: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^12)).

The programs for A029343, the canonical program `A029343.P15602731285430216918` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029343 has offset 0).

The definition of A029343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029343.P15602731285430216918

`A029210(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029343

/-- `A029210(n)-a(n-2)` -/
def P15602731285430216918.Spec : Prop :=
  ∀ n, P15602731285430216918.a n = A029343 n

theorem P15602731285430216918.correct : P15602731285430216918.Spec := by
  intro n
  simp only [A029343]

end A029343

/-! ## A029343.P7936158151843596961

`Δ[∑[A029354(n)]-A029375(n)]`
-/

namespace A029343.P7936158151843596961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029343.P7936158151843596961

namespace A029343

/-- `Δ[∑[A029354(n)]-A029375(n)]` -/
def P7936158151843596961.Spec : Prop :=
  ∀ n, P7936158151843596961.a n = A029343 n

end A029343

/-! ## A029343.P12255879844538796658

`A029354(n+1)-Δ[A029375(n)]`
-/

namespace A029343.P12255879844538796658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029343.P12255879844538796658

namespace A029343

/-- `A029354(n+1)-Δ[A029375(n)]` -/
def P12255879844538796658.Spec : Prop :=
  ∀ n, P12255879844538796658.a n = A029343 n

end A029343

/-! ## A029343.P486032084494620494

`A001221(A047726(A073937(n)²))`
-/

namespace A029343.P486032084494620494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A047726 (A073937 n ^ 2).toNat).toNat

end

end A029343.P486032084494620494

namespace A029343

/-- `A001221(A047726(A073937(n)²))` -/
def P486032084494620494.Spec : Prop :=
  ∀ n, P486032084494620494.a n = A029343 n

end A029343

/-! ## A029343.P18416517270714915918

`∑{p}[A047726(A073937(n)²), A001222(#)]`
-/

namespace A029343.P18416517270714915918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A073937 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A029343.P18416517270714915918

namespace A029343

/-- `∑{p}[A047726(A073937(n)²), A001222(#)]` -/
def P18416517270714915918.Spec : Prop :=
  ∀ n, P18416517270714915918.a n = A029343 n

end A029343

/-!
# A029344: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^11)).

The programs for A029344, the canonical program `A029344.P1277348593930115986` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029344 has offset 0).

The definition of A029344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029344.P1277348593930115986

`A029211(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029344

/-- `A029211(n)-a(n-2)` -/
def P1277348593930115986.Spec : Prop :=
  ∀ n, P1277348593930115986.a n = A029344 n

theorem P1277348593930115986.correct : P1277348593930115986.Spec := by
  intro n
  simp only [A029344]

end A029344

/-! ## A029344.P11832599586502795680

`A025894(n)+A029072(n)-A029088(n)`
-/

namespace A029344.P11832599586502795680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 n + (A029072 n - A029088 n)

end

end A029344.P11832599586502795680

namespace A029344

/-- `A025894(n)+A029072(n)-A029088(n)` -/
def P11832599586502795680.Spec : Prop :=
  ∀ n, P11832599586502795680.a n = A029344 n

end A029344

/-! ## A029344.P690740470184359928

`A025894(n)+A029083(n)-A029103(n)`
-/

namespace A029344.P690740470184359928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 n + (A029083 n - A029103 n)

end

end A029344.P690740470184359928

namespace A029344

/-- `A025894(n)+A029083(n)-A029103(n)` -/
def P690740470184359928.Spec : Prop :=
  ∀ n, P690740470184359928.a n = A029344 n

end A029344

/-! ## A029344.P17409044521114322071

`A029083(n)+A029409(n)-A029101(n)`
-/

namespace A029344.P17409044521114322071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 n + (A029409 n - A029101 n)

end

end A029344.P17409044521114322071

namespace A029344

/-- `A029083(n)+A029409(n)-A029101(n)` -/
def P17409044521114322071.Spec : Prop :=
  ∀ n, P17409044521114322071.a n = A029344 n

end A029344

/-! ## A029344.P14237549078408104517

`A029067(n)-A029239(A020744(n)+1)`
-/

namespace A029344.P14237549078408104517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029067 n - A029239 (A020744 n + 1).toNat

end

end A029344.P14237549078408104517

namespace A029344

/-- `A029067(n)-A029239(A020744(n)+1)` -/
def P14237549078408104517.Spec : Prop :=
  ∀ n, P14237549078408104517.a n = A029344 n

end A029344

/-!
# A029345: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^12)).

The programs for A029345, the canonical program `A029345.P12851957201810485159` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029345 has offset 0).

The definition of A029345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029345.P12851957201810485159

`A029212(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029345

/-- `A029212(n)-a(n-2)` -/
def P12851957201810485159.Spec : Prop :=
  ∀ n, P12851957201810485159.a n = A029345 n

theorem P12851957201810485159.correct : P12851957201810485159.Spec := by
  intro n
  simp only [A029345]

end A029345

/-! ## A029345.P1962620448461850439

`A029407(abs(4-n))+A029407(n)`
-/

namespace A029345.P1962620448461850439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029407 |4 - (n : ℤ)|.toNat + A029407 n

end

end A029345.P1962620448461850439

namespace A029345

/-- `A029407(abs(4-n))+A029407(n)` -/
def P1962620448461850439.Spec : Prop :=
  ∀ n, P1962620448461850439.a n = A029345 n

end A029345

/-! ## A029345.P3151723017882291894

`(A025862(n)*A025864(n))%A007605(A251268(n+1))`
-/

namespace A029345.P3151723017882291894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025862 n * A025864 n) (A007605 (A251268 (n + 1)).toNat)

end

end A029345.P3151723017882291894

namespace A029345

/-- `(A025862(n)*A025864(n))%A007605(A251268(n+1))` -/
def P3151723017882291894.Spec : Prop :=
  ∀ n, P3151723017882291894.a n = A029345 n

end A029345

/-! ## A029345.P7581856093725812013

`A008616(n^A165190(n)²)`
-/

namespace A029345.P7581856093725812013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A165190 n ^ 2 : ℤ))).toNat

end

end A029345.P7581856093725812013

namespace A029345

/-- `A008616(n^A165190(n)²)` -/
def P7581856093725812013.Spec : Prop :=
  ∀ n, P7581856093725812013.a n = A029345 n

end A029345

/-! ## A029345.P3382069000041405933

`A001222(3^(A025862(n)*A025864(n)))`
-/

namespace A029345.P3382069000041405933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A025862 n * A025864 n : ℤ))).toNat

end

end A029345.P3382069000041405933

namespace A029345

/-- `A001222(3^(A025862(n)*A025864(n)))` -/
def P3382069000041405933.Spec : Prop :=
  ∀ n, P3382069000041405933.a n = A029345 n

end A029345

/-!
# A029346: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)*(1-x^12)).

The programs for A029346, the canonical program `A029346.P15441236893995981458` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029346 has offset 0).

The definition of A029346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029346.P5004788285475440761

`A029213(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029346.P5004788285475440761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029213 n - a (n - 2)

end

end A029346.P5004788285475440761

namespace A029346

/-- `A029213(n)-a(n-2)` -/
def P5004788285475440761.Spec : Prop :=
  ∀ n, P5004788285475440761.a n = A029346 n

end A029346

/-! ## A029346.P15441236893995981458

`A025875(n)+A029331(n)-A029358(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029346

/-- `A025875(n)+A029331(n)-A029358(n)` -/
def P15441236893995981458.Spec : Prop :=
  ∀ n, P15441236893995981458.a n = A029346 n

theorem P15441236893995981458.correct : P15441236893995981458.Spec := by
  intro n
  simp only [A029346]

end A029346

/-! ## A029346.P13370512627812801619

`A025875(n)+A029335(n)-A029368(n)`
-/

namespace A029346.P13370512627812801619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029335 n - A029368 n)

end

end A029346.P13370512627812801619

namespace A029346

/-- `A025875(n)+A029335(n)-A029368(n)` -/
def P13370512627812801619.Spec : Prop :=
  ∀ n, P13370512627812801619.a n = A029346 n

end A029346

/-! ## A029346.P11935374508337663606

`A029376(n)+A029411(n)-A025925(n)`
-/

namespace A029346.P11935374508337663606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029411 n - A025925 n)

end

end A029346.P11935374508337663606

namespace A029346

/-- `A029376(n)+A029411(n)-A025925(n)` -/
def P11935374508337663606.Spec : Prop :=
  ∀ n, P11935374508337663606.a n = A029346 n

theorem P11935374508337663606.correct : P11935374508337663606.Spec := by
  intro n
  simp only [A029346, Nat.add_sub_cancel, A029346.P11935374508337663606.a, A029346.P15441236893995981458.a, A025875, A025875.P6817867275474269582.a, A025925, A025925.P1140353279712905302.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029376, A029376.P16706943438829377810.a, A029411, A029411.P3027199765007840635.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029365, A029365.P2100240297090772745.a, A029398, A029398.P4533888177158712386.a, A057979, A057979.P16537735927241777837.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029232, A029232.P16177588645430596473.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029346

/-! ## A029346.P3055356464725727640

`A029291(n)+A029339(n)-A029285(n)`
-/

namespace A029346.P3055356464725727640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 n + (A029339 n - A029285 n)

end

end A029346.P3055356464725727640

namespace A029346

/-- `A029291(n)+A029339(n)-A029285(n)` -/
def P3055356464725727640.Spec : Prop :=
  ∀ n, P3055356464725727640.a n = A029346 n

end A029346

/-! ## A029346.P6498347868608211819

`Δ[∑[A029357(n)]-A029377(n)]`
-/

namespace A029346.P6498347868608211819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029346.P6498347868608211819

namespace A029346

/-- `Δ[∑[A029357(n)]-A029377(n)]` -/
def P6498347868608211819.Spec : Prop :=
  ∀ n, P6498347868608211819.a n = A029346 n

end A029346

/-! ## A029346.P10185071434214881694

`A029357(n+1)-Δ[A029377(n)]`
-/

namespace A029346.P10185071434214881694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029346.P10185071434214881694

namespace A029346

/-- `A029357(n+1)-Δ[A029377(n)]` -/
def P10185071434214881694.Spec : Prop :=
  ∀ n, P10185071434214881694.a n = A029346 n

end A029346

/-!
# A029347: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^8)).

The programs for A029347, the canonical program `A029347.P13409127776530787667` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029347 has offset 0).

The definition of A029347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^7-x^8+x^10+x^11+x^12+x^13+x^14+x^15-x^17-x^18-x^19-x^21+x^25))` (program `A029347.P13409127776530787667`, by `A029347.P13409127776530787667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029347.P13409127776530787667

`ogf(1/(1-x^4-x^6-x^7-x^8+x^10+x^11+x^12+x^13+x^14+x^15-x^17-x^18-x^19-x^21+x^25))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029347

/-- `ogf(1/(1-x^4-x^6-x^7-x^8+x^10+x^11+x^12+x^13+x^14+x^15-x^17-x^18-x^19-x^21+x^25))` -/
def P13409127776530787667.Spec : Prop :=
  ∀ n, P13409127776530787667.a n = A029347 n

theorem P13409127776530787667.correct : P13409127776530787667.Spec := by
  intro n
  simp only [A029347]

end A029347

/-! ## A029347.P16692074911667362737

`A029214(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029347.P16692074911667362737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029214 n - a (n - 2)

end

end A029347.P16692074911667362737

namespace A029347

/-- `A029214(n)-a(n-2)` -/
def P16692074911667362737.Spec : Prop :=
  ∀ n, P16692074911667362737.a n = A029347 n

end A029347

/-! ## A029347.P7657499473520686554

`A029257(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029347.P7657499473520686554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029257 n - a (n - 3)

end

end A029347.P7657499473520686554

namespace A029347

/-- `A029257(n)-a(n-3)` -/
def P7657499473520686554.Spec : Prop :=
  ∀ n, P7657499473520686554.a n = A029347 n

end A029347

/-! ## A029347.P14843061232388243316

`A025867(n)+A029178(n)-A029181(n)`
-/

namespace A029347.P14843061232388243316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 n + (A029178 n - A029181 n)

end

end A029347.P14843061232388243316

namespace A029347

/-- `A025867(n)+A029178(n)-A029181(n)` -/
def P14843061232388243316.Spec : Prop :=
  ∀ n, P14843061232388243316.a n = A029347 n

end A029347

/-! ## A029347.P669780999974740276

`A025897(n)+A029181(n)-A029214(n)`
-/

namespace A029347.P669780999974740276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n + (A029181 n - A029214 n)

end

end A029347.P669780999974740276

namespace A029347

/-- `A025897(n)+A029181(n)-A029214(n)` -/
def P669780999974740276.Spec : Prop :=
  ∀ n, P669780999974740276.a n = A029347 n

end A029347

/-! ## A029347.P17125312660246655583

`A029360(n)+A029414(n)-A025909(n)`
-/

namespace A029347.P17125312660246655583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 n + (A029414 n - A025909 n)

end

end A029347.P17125312660246655583

namespace A029347

/-- `A029360(n)+A029414(n)-A025909(n)` -/
def P17125312660246655583.Spec : Prop :=
  ∀ n, P17125312660246655583.a n = A029347 n

end A029347

/-! ## A029347.P6422815179289133319

`A029214(n+2)+A029214(n)-A029181(n+2)`
-/

namespace A029347.P6422815179289133319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (n + 2) + (A029214 n - A029181 (n + 2))

end

end A029347.P6422815179289133319

namespace A029347

/-- `A029214(n+2)+A029214(n)-A029181(n+2)` -/
def P6422815179289133319.Spec : Prop :=
  ∀ n, P6422815179289133319.a n = A029347 n

end A029347

/-!
# A029348: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^9)).

The programs for A029348, the canonical program `A029348.P1480093854545677245` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029348 has offset 0).

The definition of A029348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^7-x^9+x^10+x^11+2x^13+x^15+x^16-x^17-x^19-x^20-x^22+x^26))` (program `A029348.P1480093854545677245`, by `A029348.P1480093854545677245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029348.P1480093854545677245

`ogf(1/(1-x^4-x^6-x^7-x^9+x^10+x^11+2x^13+x^15+x^16-x^17-x^19-x^20-x^22+x^26))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029348

/-- `ogf(1/(1-x^4-x^6-x^7-x^9+x^10+x^11+2x^13+x^15+x^16-x^17-x^19-x^20-x^22+x^26))` -/
def P1480093854545677245.Spec : Prop :=
  ∀ n, P1480093854545677245.a n = A029348 n

theorem P1480093854545677245.correct : P1480093854545677245.Spec := by
  intro n
  simp only [A029348]

end A029348

/-! ## A029348.P2288613914950587248

`A029215(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029348.P2288613914950587248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029215 n - a (n - 2)

end

end A029348.P2288613914950587248

namespace A029348

/-- `A029215(n)-a(n-2)` -/
def P2288613914950587248.Spec : Prop :=
  ∀ n, P2288613914950587248.a n = A029348 n

end A029348

/-! ## A029348.P12401027290662421235

`A029258(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029348.P12401027290662421235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029258 n - a (n - 3)

end

end A029348.P12401027290662421235

namespace A029348

/-- `A029258(n)-a(n-3)` -/
def P12401027290662421235.Spec : Prop :=
  ∀ n, P12401027290662421235.a n = A029348 n

end A029348

/-! ## A029348.P5708885296856765169

`A029294(n)+A029363(n)-A029310(n)`
-/

namespace A029348.P5708885296856765169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 n + (A029363 n - A029310 n)

end

end A029348.P5708885296856765169

namespace A029348

/-- `A029294(n)+A029363(n)-A029310(n)` -/
def P5708885296856765169.Spec : Prop :=
  ∀ n, P5708885296856765169.a n = A029348 n

end A029348

/-! ## A029348.P13373266152952089667

`A029071(n+6)-A029074(n+6)`
-/

namespace A029348.P13373266152952089667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (n + 6) - A029074 (n + 6)

end

end A029348.P13373266152952089667

namespace A029348

/-- `A029071(n+6)-A029074(n+6)` -/
def P13373266152952089667.Spec : Prop :=
  ∀ n, P13373266152952089667.a n = A029348 n

end A029348

/-! ## A029348.P7215580792512725723

`A029238(A005843(n))-A029359(A005408(n+2))`
-/

namespace A029348.P7215580792512725723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A005843 n).toNat - A029359 (A005408 (n + 2)).toNat

end

end A029348.P7215580792512725723

namespace A029348

/-- `A029238(A005843(n))-A029359(A005408(n+2))` -/
def P7215580792512725723.Spec : Prop :=
  ∀ n, P7215580792512725723.a n = A029348 n

end A029348

/-!
# A029349: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^10)).

The programs for A029349, the canonical program `A029349.P5476095844287341884` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029349 has offset 0).

The definition of A029349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^7+x^11+x^13+x^14+x^16-x^20-x^21-x^23+x^27))` (program `A029349.P5476095844287341884`, by `A029349.P5476095844287341884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029349.P5476095844287341884

`ogf(1/(1-x^4-x^6-x^7+x^11+x^13+x^14+x^16-x^20-x^21-x^23+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029349

/-- `ogf(1/(1-x^4-x^6-x^7+x^11+x^13+x^14+x^16-x^20-x^21-x^23+x^27))` -/
def P5476095844287341884.Spec : Prop :=
  ∀ n, P5476095844287341884.a n = A029349 n

theorem P5476095844287341884.correct : P5476095844287341884.Spec := by
  intro n
  simp only [A029349]

end A029349

/-! ## A029349.P3958036498362969889

`A029216(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029349.P3958036498362969889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029216 n - a (n - 2)

end

end A029349.P3958036498362969889

namespace A029349

/-- `A029216(n)-a(n-2)` -/
def P3958036498362969889.Spec : Prop :=
  ∀ n, P3958036498362969889.a n = A029349 n

end A029349

/-! ## A029349.P12330471615450385558

`A029259(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029349.P12330471615450385558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029259 n - a (n - 3)

end

end A029349.P12330471615450385558

namespace A029349

/-- `A029259(n)-a(n-3)` -/
def P12330471615450385558.Spec : Prop :=
  ∀ n, P12330471615450385558.a n = A029349 n

end A029349

/-! ## A029349.P5697528365412643712

`A029414(abs(4-n))+A029414(n)`
-/

namespace A029349.P5697528365412643712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 |4 - (n : ℤ)|.toNat + A029414 n

end

end A029349.P5697528365412643712

namespace A029349

/-- `A029414(abs(4-n))+A029414(n)` -/
def P5697528365412643712.Spec : Prop :=
  ∀ n, P5697528365412643712.a n = A029349 n

end A029349

/-! ## A029349.P15725310924538980412

`A025899(n)+A029183(n)-A029216(n)`
-/

namespace A029349.P15725310924538980412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n + (A029183 n - A029216 n)

end

end A029349.P15725310924538980412

namespace A029349

/-- `A025899(n)+A029183(n)-A029216(n)` -/
def P15725310924538980412.Spec : Prop :=
  ∀ n, P15725310924538980412.a n = A029349 n

end A029349

/-! ## A029349.P3833085462928054717

`A029295(n)+A029357(n)-A029303(n)`
-/

namespace A029349.P3833085462928054717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029295 n + (A029357 n - A029303 n)

end

end A029349.P3833085462928054717

namespace A029349

/-- `A029295(n)+A029357(n)-A029303(n)` -/
def P3833085462928054717.Spec : Prop :=
  ∀ n, P3833085462928054717.a n = A029349 n

theorem P3833085462928054717.correct : P3833085462928054717.Spec := by
  intro n
  simp only [A029349, Nat.add_sub_cancel, A029349.P3833085462928054717.a, A029349.P5476095844287341884.a, A029295, A029295.P6904684891100908360.a, A029303, A029303.P996504278850235236.a, A029357, A029357.P1479724606091517717.a, A029311, A029311.P11942994698236464024.a, A029355, A029355.P10567033194552355608.a, A029363, A029363.P5892090971847677782.a, A025913, A025913.P6872223754574144002.a, A029222, A029222.P13450996779978871818.a, A029230, A029230.P18014352078282283868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029349

/-!
# A029350: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^11)).

The programs for A029350, the canonical program `A029350.P16656462126632644310` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029350 has offset 0).

The definition of A029350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^7+x^10+x^13+x^15+x^18-x^21-x^22-x^24+x^28))` (program `A029350.P16656462126632644310`, by `A029350.P16656462126632644310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029350.P16656462126632644310

`ogf(1/(1-x^4-x^6-x^7+x^10+x^13+x^15+x^18-x^21-x^22-x^24+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029350

/-- `ogf(1/(1-x^4-x^6-x^7+x^10+x^13+x^15+x^18-x^21-x^22-x^24+x^28))` -/
def P16656462126632644310.Spec : Prop :=
  ∀ n, P16656462126632644310.a n = A029350 n

theorem P16656462126632644310.correct : P16656462126632644310.Spec := by
  intro n
  simp only [A029350]

end A029350

/-! ## A029350.P18063405206361858315

`A029217(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029350.P18063405206361858315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029217 n - a (n - 2)

end

end A029350.P18063405206361858315

namespace A029350

/-- `A029217(n)-a(n-2)` -/
def P18063405206361858315.Spec : Prop :=
  ∀ n, P18063405206361858315.a n = A029350 n

end A029350

/-! ## A029350.P6742348439784213509

`A029260(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029350.P6742348439784213509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029260 n - a (n - 3)

end

end A029350.P6742348439784213509

namespace A029350

/-- `A029260(n)-a(n-3)` -/
def P6742348439784213509.Spec : Prop :=
  ∀ n, P6742348439784213509.a n = A029350 n

end A029350

/-! ## A029350.P10707736267843165540

`A025870(n)+A029326(n)-A029335(n)`
-/

namespace A029350.P10707736267843165540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 n + (A029326 n - A029335 n)

end

end A029350.P10707736267843165540

namespace A029350

/-- `A025870(n)+A029326(n)-A029335(n)` -/
def P10707736267843165540.Spec : Prop :=
  ∀ n, P10707736267843165540.a n = A029350 n

end A029350

/-! ## A029350.P5099191089593718916

`A029366(n)+A029380(n)-A029400(n)`
-/

namespace A029350.P5099191089593718916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029366 n + (A029380 n - A029400 n)

end

end A029350.P5099191089593718916

namespace A029350

/-- `A029366(n)+A029380(n)-A029400(n)` -/
def P5099191089593718916.Spec : Prop :=
  ∀ n, P5099191089593718916.a n = A029350 n

theorem P5099191089593718916.correct : P5099191089593718916.Spec := by
  intro n
  simp only [A029350, Nat.add_sub_cancel, A029350.P5099191089593718916.a, A029350.P16656462126632644310.a, A029366, A029366.P2484932440147699760.a, A029380, A029380.P4667319608210398714.a, A029400, A029400.P16034242247368147644.a, A029233, A029233.P3941505614629625210.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029224, A029224.P11078861318480278839.a, A029357, A029357.P1479724606091517717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029350

/-! ## A029350.P7635881355679022606

`A029052(n+3)-A029072(n+3)`
-/

namespace A029350.P7635881355679022606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029052 (n + 3) - A029072 (n + 3)

end

end A029350.P7635881355679022606

namespace A029350

/-- `A029052(n+3)-A029072(n+3)` -/
def P7635881355679022606.Spec : Prop :=
  ∀ n, P7635881355679022606.a n = A029350 n

end A029350

/-!
# A029351: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^12)).

The programs for A029351, the canonical program `A029351.P15082155288003523051` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029351 has offset 0).

The definition of A029351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029351.P7405331089980162414

`A029218(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029351.P7405331089980162414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029218 n - a (n - 2)

end

end A029351.P7405331089980162414

namespace A029351

/-- `A029218(n)-a(n-2)` -/
def P7405331089980162414.Spec : Prop :=
  ∀ n, P7405331089980162414.a n = A029351 n

end A029351

/-! ## A029351.P15082155288003523051

`A029261(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029351

/-- `A029261(n)-a(n-3)` -/
def P15082155288003523051.Spec : Prop :=
  ∀ n, P15082155288003523051.a n = A029351 n

theorem P15082155288003523051.correct : P15082155288003523051.Spec := by
  intro n
  simp only [A029351]

end A029351

/-! ## A029351.P9963510024973749087

`A029367(n)+A029421(n)-A025916(n)`
-/

namespace A029351.P9963510024973749087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029421 n - A025916 n)

end

end A029351.P9963510024973749087

namespace A029351

/-- `A029367(n)+A029421(n)-A025916(n)` -/
def P9963510024973749087.Spec : Prop :=
  ∀ n, P9963510024973749087.a n = A029351 n

end A029351

/-! ## A029351.P6041593561924971208

`A029218(n)+∑[A029261(n)-A029218(n)]`
-/

namespace A029351.P6041593561924971208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 n - A029218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029351.P6041593561924971208

namespace A029351

/-- `A029218(n)+∑[A029261(n)-A029218(n)]` -/
def P6041593561924971208.Spec : Prop :=
  ∀ n, P6041593561924971208.a n = A029351 n

end A029351

/-! ## A029351.P16314850790513836137

`∑[char[4*n]]-A001222(A113979(n+1)+1)`
-/

namespace A029351.P16314850790513836137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001222 (A113979 (n + 1) + 1).toNat

end

end A029351.P16314850790513836137

namespace A029351

/-- `∑[char[4*n]]-A001222(A113979(n+1)+1)` -/
def P16314850790513836137.Spec : Prop :=
  ∀ n, P16314850790513836137.a n = A029351 n

end A029351

/-!
# A029352: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^8)*(1-x^9)).

The programs for A029352, the canonical program `A029352.P935358604536330210` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029352 has offset 0).

The definition of A029352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^6-x^8-x^9+x^10+x^12+x^13+x^14+x^15+x^17-x^18-x^19-x^21-x^23+x^27))` (program `A029352.P935358604536330210`, by `A029352.P935358604536330210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029352.P935358604536330210

`ogf(1/(1-x^4-x^6-x^8-x^9+x^10+x^12+x^13+x^14+x^15+x^17-x^18-x^19-x^21-x^23+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029352

/-- `ogf(1/(1-x^4-x^6-x^8-x^9+x^10+x^12+x^13+x^14+x^15+x^17-x^18-x^19-x^21-x^23+x^27))` -/
def P935358604536330210.Spec : Prop :=
  ∀ n, P935358604536330210.a n = A029352 n

theorem P935358604536330210.correct : P935358604536330210.Spec := by
  intro n
  simp only [A029352]

end A029352

/-! ## A029352.P1393725205556291625

`A029219(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029352.P1393725205556291625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029219 n - a (n - 2)

end

end A029352.P1393725205556291625

namespace A029352

/-- `A029219(n)-a(n-2)` -/
def P1393725205556291625.Spec : Prop :=
  ∀ n, P1393725205556291625.a n = A029352 n

end A029352

/-! ## A029352.P9470806305935555199

`A029262(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029352.P9470806305935555199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029262 n - a (n - 3)

end

end A029352.P9470806305935555199

namespace A029352

/-- `A029262(n)-a(n-3)` -/
def P9470806305935555199.Spec : Prop :=
  ∀ n, P9470806305935555199.a n = A029352 n

end A029352

/-! ## A029352.P6828564787870813215

`A029238(n)-A025920(abs(A023444(n)))`
-/

namespace A029352.P6828564787870813215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n - A025920 |A023444 n|.toNat

end

end A029352.P6828564787870813215

namespace A029352

/-- `A029238(n)-A025920(abs(A023444(n)))` -/
def P6828564787870813215.Spec : Prop :=
  ∀ n, P6828564787870813215.a n = A029352 n

end A029352

/-! ## A029352.P2671154731607645572

`A025920(n)+A029190(n)-A029238(n)`
-/

namespace A029352.P2671154731607645572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n + (A029190 n - A029238 n)

end

end A029352.P2671154731607645572

namespace A029352

/-- `A025920(n)+A029190(n)-A029238(n)` -/
def P2671154731607645572.Spec : Prop :=
  ∀ n, P2671154731607645572.a n = A029352 n

end A029352

/-! ## A029352.P6659091013903418139

`A029190(n)+A029425(n)-A029223(n)`
-/

namespace A029352.P6659091013903418139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029425 n - A029223 n)

end

end A029352.P6659091013903418139

namespace A029352

/-- `A029190(n)+A029425(n)-A029223(n)` -/
def P6659091013903418139.Spec : Prop :=
  ∀ n, P6659091013903418139.a n = A029352 n

end A029352

/-!
# A029353: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^8)*(1-x^11)).

The programs for A029353, the canonical program `A029353.P14895594492322350558` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029353 has offset 0).

The definition of A029353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029353.P429871107823966026

`A029220(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029353.P429871107823966026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029220 n - a (n - 2)

end

end A029353.P429871107823966026

namespace A029353

/-- `A029220(n)-a(n-2)` -/
def P429871107823966026.Spec : Prop :=
  ∀ n, P429871107823966026.a n = A029353 n

end A029353

/-! ## A029353.P14895594492322350558

`A029264(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029353

/-- `A029264(n)-a(n-3)` -/
def P14895594492322350558.Spec : Prop :=
  ∀ n, P14895594492322350558.a n = A029353 n

theorem P14895594492322350558.correct : P14895594492322350558.Spec := by
  intro n
  simp only [A029353]

end A029353

/-! ## A029353.P16727793836018855655

`A025875(n)+A029220(n)-A029240(n)`
-/

namespace A029353.P16727793836018855655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029220 n - A029240 n)

end

end A029353.P16727793836018855655

namespace A029353

/-- `A025875(n)+A029220(n)-A029240(n)` -/
def P16727793836018855655.Spec : Prop :=
  ∀ n, P16727793836018855655.a n = A029353 n

end A029353

/-! ## A029353.P17709540051703106593

`A025873(n)+A029327(n)-A029339(n)`
-/

namespace A029353.P17709540051703106593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 n + (A029327 n - A029339 n)

end

end A029353.P17709540051703106593

namespace A029353

/-- `A025873(n)+A029327(n)-A029339(n)` -/
def P17709540051703106593.Spec : Prop :=
  ∀ n, P17709540051703106593.a n = A029353 n

end A029353

/-! ## A029353.P12368916431697675441

`A029372(n)+A029384(n)-A029406(n)`
-/

namespace A029353.P12368916431697675441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 n + (A029384 n - A029406 n)

end

end A029353.P12368916431697675441

namespace A029353

/-- `A029372(n)+A029384(n)-A029406(n)` -/
def P12368916431697675441.Spec : Prop :=
  ∀ n, P12368916431697675441.a n = A029353 n

theorem P12368916431697675441.correct : P12368916431697675441.Spec := by
  intro n
  simp only [A029353, Nat.add_sub_cancel, A029353.P12368916431697675441.a, A029353.P14895594492322350558.a, A029264, A029264.P8381988870702455244.a, A029372, A029372.P2672987048635236464.a, A029384, A029384.P5607878437325388803.a, A029406, A029406.P550328618006401562.a, A029239, A029239.P14692552077046529193.a, A029283, A029283.P10680134094684783138.a, A029130, A029130.P9139947445189529959.a, A024000, A024000.P8748414335487061084.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029353

/-! ## A029353.P9967037071780553634

`A029240(n+2)-A025875(n+2)`
-/

namespace A029353.P9967037071780553634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 2) - A025875 (n + 2)

end

end A029353.P9967037071780553634

namespace A029353

/-- `A029240(n+2)-A025875(n+2)` -/
def P9967037071780553634.Spec : Prop :=
  ∀ n, P9967037071780553634.a n = A029353 n

end A029353

/-! ## A029353.P1858072792109692193

`A029430(A168197(n+1))`
-/

namespace A029353.P1858072792109692193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (A168197 (n + 1)).toNat

end

end A029353.P1858072792109692193

namespace A029353

/-- `A029430(A168197(n+1))` -/
def P1858072792109692193.Spec : Prop :=
  ∀ n, P1858072792109692193.a n = A029353 n

end A029353

/-!
# A029354: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^10)).

The programs for A029354, the canonical program `A029354.P752439661720051044` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029354 has offset 0).

The definition of A029354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029354.P752439661720051044

`A029221(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029354

/-- `A029221(n)-a(n-2)` -/
def P752439661720051044.Spec : Prop :=
  ∀ n, P752439661720051044.a n = A029354 n

theorem P752439661720051044.correct : P752439661720051044.Spec := by
  intro n
  simp only [A029354]

end A029354

/-! ## A029354.P16436960058411338653

`A029266(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029354.P16436960058411338653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029266 n - a (n - 3)

end

end A029354.P16436960058411338653

namespace A029354

/-- `A029266(n)-a(n-3)` -/
def P16436960058411338653.Spec : Prop :=
  ∀ n, P16436960058411338653.a n = A029354 n

end A029354

/-! ## A029354.P1544665361316388523

`A025904(n)+A029188(n)-A029221(n)`
-/

namespace A029354.P1544665361316388523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n + (A029188 n - A029221 n)

end

end A029354.P1544665361316388523

namespace A029354

/-- `A025904(n)+A029188(n)-A029221(n)` -/
def P1544665361316388523.Spec : Prop :=
  ∀ n, P1544665361316388523.a n = A029354 n

end A029354

/-! ## A029354.P7518758349932327503

`A029221(n+1)+A029188(n)-A029165(n+1)`
-/

namespace A029354.P7518758349932327503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (n + 1) + (A029188 n - A029165 (n + 1))

end

end A029354.P7518758349932327503

namespace A029354

/-- `A029221(n+1)+A029188(n)-A029165(n+1)` -/
def P7518758349932327503.Spec : Prop :=
  ∀ n, P7518758349932327503.a n = A029354 n

end A029354

/-! ## A029354.P13315870942323033859

`A029423(n+2)+A029423(n)-A025918(n+2)`
-/

namespace A029354.P13315870942323033859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (n + 2) + (A029423 n - A025918 (n + 2))

end

end A029354.P13315870942323033859

namespace A029354

/-- `A029423(n+2)+A029423(n)-A025918(n+2)` -/
def P13315870942323033859.Spec : Prop :=
  ∀ n, P13315870942323033859.a n = A029354 n

end A029354

/-! ## A029354.P10853307896503708787

`A029221(n+2)+A029221(n)-A029188(n+2)`
-/

namespace A029354.P10853307896503708787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (n + 2) + (A029221 n - A029188 (n + 2))

end

end A029354.P10853307896503708787

namespace A029354

/-- `A029221(n+2)+A029221(n)-A029188(n+2)` -/
def P10853307896503708787.Spec : Prop :=
  ∀ n, P10853307896503708787.a n = A029354 n

end A029354

/-!
# A029355: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^11)).

The programs for A029355, the canonical program `A029355.P10567033194552355608` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029355 has offset 0).

The definition of A029355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029355.P10567033194552355608

`A029222(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029355

/-- `A029222(n)-a(n-2)` -/
def P10567033194552355608.Spec : Prop :=
  ∀ n, P10567033194552355608.a n = A029355 n

theorem P10567033194552355608.correct : P10567033194552355608.Spec := by
  intro n
  simp only [A029355]

end A029355

/-! ## A029355.P7522768804300682227

`A029267(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029355.P7522768804300682227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029267 n - a (n - 3)

end

end A029355.P7522768804300682227

namespace A029355

/-- `A029267(n)-a(n-3)` -/
def P7522768804300682227.Spec : Prop :=
  ∀ n, P7522768804300682227.a n = A029355 n

end A029355

/-! ## A029355.P17412558988066973520

`A025905(n)+A029176(n)-A029195(n)`
-/

namespace A029355.P17412558988066973520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n + (A029176 n - A029195 n)

end

end A029355.P17412558988066973520

namespace A029355

/-- `A025905(n)+A029176(n)-A029195(n)` -/
def P17412558988066973520.Spec : Prop :=
  ∀ n, P17412558988066973520.a n = A029355 n

end A029355

/-! ## A029355.P9890609890540757580

`A025905(n)+A029189(n)-A029222(n)`
-/

namespace A029355.P9890609890540757580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n + (A029189 n - A029222 n)

end

end A029355.P9890609890540757580

namespace A029355

/-- `A025905(n)+A029189(n)-A029222(n)` -/
def P9890609890540757580.Spec : Prop :=
  ∀ n, P9890609890540757580.a n = A029355 n

end A029355

/-! ## A029355.P12895042949990612476

`A029303(n)+A029363(n)-A029311(n)`
-/

namespace A029355.P12895042949990612476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029363 n - A029311 n)

end

end A029355.P12895042949990612476

namespace A029355

/-- `A029303(n)+A029363(n)-A029311(n)` -/
def P12895042949990612476.Spec : Prop :=
  ∀ n, P12895042949990612476.a n = A029355 n

theorem P12895042949990612476.correct : P12895042949990612476.Spec := by
  intro n
  simp only [A029355, Nat.add_sub_cancel, A029355.P12895042949990612476.a, A029355.P10567033194552355608.a, A029222, A029222.P13450996779978871818.a, A029303, A029303.P996504278850235236.a, A029311, A029311.P11942994698236464024.a, A029363, A029363.P5892090971847677782.a, A025913, A025913.P6872223754574144002.a, A029230, A029230.P18014352078282283868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029355

/-! ## A029355.P12229597605791979726

`A029374(n)+A029387(n)-A029409(n)`
-/

namespace A029355.P12229597605791979726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 n + (A029387 n - A029409 n)

end

end A029355.P12229597605791979726

namespace A029355

/-- `A029374(n)+A029387(n)-A029409(n)` -/
def P12229597605791979726.Spec : Prop :=
  ∀ n, P12229597605791979726.a n = A029355 n

theorem P12229597605791979726.correct : P12229597605791979726.Spec := by
  intro n
  simp only [A029355, Nat.add_sub_cancel, A029355.P12229597605791979726.a, A029355.P10567033194552355608.a, A029222, A029222.P13450996779978871818.a, A029374, A029374.P16522389890125630689.a, A029387, A029387.P14372817239229268115.a, A029409, A029409.P7184523161704019906.a, A029241, A029241.P4809283722259501140.a, A029286, A029286.P7325490354402353084.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029355

/-! ## A029355.P12088116570188260253

`A025905(n)+A029189(n)-(A029154(n+6)-A029166(n+6))`
-/

namespace A029355.P12088116570188260253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n + (A029189 n - (A029154 (n + 6) - A029166 (n + 6)))

end

end A029355.P12088116570188260253

namespace A029355

/-- `A025905(n)+A029189(n)-(A029154(n+6)-A029166(n+6))` -/
def P12088116570188260253.Spec : Prop :=
  ∀ n, P12088116570188260253.a n = A029355 n

end A029355

/-!
# A029356: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^12)).

The programs for A029356, the canonical program `A029356.P12624820882491703426` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029356 has offset 0).

The definition of A029356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029356.P12624820882491703426

`A029223(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029356

/-- `A029223(n)-a(n-2)` -/
def P12624820882491703426.Spec : Prop :=
  ∀ n, P12624820882491703426.a n = A029356 n

theorem P12624820882491703426.correct : P12624820882491703426.Spec := by
  intro n
  simp only [A029356]

end A029356

/-! ## A029356.P17475769010492267863

`A029268(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029356.P17475769010492267863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029268 n - a (n - 3)

end

end A029356.P17475769010492267863

namespace A029356

/-- `A029268(n)-a(n-3)` -/
def P17475769010492267863.Spec : Prop :=
  ∀ n, P17475769010492267863.a n = A029356 n

end A029356

/-! ## A029356.P17108199783147565424

`A029425(abs(4-n))+A029425(n)`
-/

namespace A029356.P17108199783147565424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 |4 - (n : ℤ)|.toNat + A029425 n

end

end A029356.P17108199783147565424

namespace A029356

/-- `A029425(abs(4-n))+A029425(n)` -/
def P17108199783147565424.Spec : Prop :=
  ∀ n, P17108199783147565424.a n = A029356 n

end A029356

/-! ## A029356.P16522999371150907316

`A029190(n+4)-A029223(n+4)`
-/

namespace A029356.P16522999371150907316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 (n + 4) - A029223 (n + 4)

end

end A029356.P16522999371150907316

namespace A029356

/-- `A029190(n+4)-A029223(n+4)` -/
def P16522999371150907316.Spec : Prop :=
  ∀ n, P16522999371150907316.a n = A029356 n

end A029356

/-! ## A029356.P18423965807210842564

`A340760(A063942(n)+3)`
-/

namespace A029356.P18423965807210842564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (A063942 n + 3).toNat

end

end A029356.P18423965807210842564

namespace A029356

/-- `A340760(A063942(n)+3)` -/
def P18423965807210842564.Spec : Prop :=
  ∀ n, P18423965807210842564.a n = A029356 n

end A029356

/-!
# A029357: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^10)*(1-x^11)).

The programs for A029357, the canonical program `A029357.P1479724606091517717` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029357 has offset 0).

The definition of A029357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029357.P16256744580711960208

`A029224(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029357.P16256744580711960208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029224 n - a (n - 2)

end

end A029357.P16256744580711960208

namespace A029357

/-- `A029224(n)-a(n-2)` -/
def P16256744580711960208.Spec : Prop :=
  ∀ n, P16256744580711960208.a n = A029357 n

end A029357

/-! ## A029357.P15663706423477488874

`A029269(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029357.P15663706423477488874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029269 n - a (n - 3)

end

end A029357.P15663706423477488874

namespace A029357

/-- `A029269(n)-a(n-3)` -/
def P15663706423477488874.Spec : Prop :=
  ∀ n, P15663706423477488874.a n = A029357 n

end A029357

/-! ## A029357.P12749177822684135823

`A025906(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029357.P12749177822684135823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025906 n + a (n - 4)

end

end A029357.P12749177822684135823

namespace A029357

/-- `A025906(n)+a(n-4)` -/
def P12749177822684135823.Spec : Prop :=
  ∀ n, P12749177822684135823.a n = A029357 n

end A029357

/-! ## A029357.P1479724606091517717

`A029303(n)+A029349(n)-A029295(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029357

/-- `A029303(n)+A029349(n)-A029295(n)` -/
def P1479724606091517717.Spec : Prop :=
  ∀ n, P1479724606091517717.a n = A029357 n

theorem P1479724606091517717.correct : P1479724606091517717.Spec := by
  intro n
  simp only [A029357]

end A029357

/-! ## A029357.P365697954241750137

`A029385(n+1)-Δ[A029426(n)]`
-/

namespace A029357.P365697954241750137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029385 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029357.P365697954241750137

namespace A029357

/-- `A029385(n+1)-Δ[A029426(n)]` -/
def P365697954241750137.Spec : Prop :=
  ∀ n, P365697954241750137.a n = A029357 n

end A029357

/-!
# A029358: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)*(1-x^12)).

The programs for A029358, the canonical program `A029358.P6065047460035336274` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029358 has offset 0).

The definition of A029358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029358.P9721397021614748488

`A029225(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029358.P9721397021614748488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029225 n - a (n - 2)

end

end A029358.P9721397021614748488

namespace A029358

/-- `A029225(n)-a(n-2)` -/
def P9721397021614748488.Spec : Prop :=
  ∀ n, P9721397021614748488.a n = A029358 n

end A029358

/-! ## A029358.P3743211126510751975

`A029271(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029358.P3743211126510751975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029271 n - a (n - 3)

end

end A029358.P3743211126510751975

namespace A029358

/-- `A029271(n)-a(n-3)` -/
def P3743211126510751975.Spec : Prop :=
  ∀ n, P3743211126510751975.a n = A029358 n

end A029358

/-! ## A029358.P6065047460035336274

`A029072(n)-∑[A025796(A057979(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029358

/-- `A029072(n)-∑[A025796(A057979(n))]` -/
def P6065047460035336274.Spec : Prop :=
  ∀ n, P6065047460035336274.a n = A029358 n

theorem P6065047460035336274.correct : P6065047460035336274.Spec := by
  intro n
  simp only [A029358]

end A029358

/-! ## A029358.P13638239063107244850

`A025875(n)+A029331(n)-A029346(n)`
-/

namespace A029358.P13638239063107244850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029331 n - A029346 n)

end

end A029358.P13638239063107244850

namespace A029358

/-- `A025875(n)+A029331(n)-A029346(n)` -/
def P13638239063107244850.Spec : Prop :=
  ∀ n, P13638239063107244850.a n = A029358 n

theorem P13638239063107244850.correct : P13638239063107244850.Spec := by
  intro n
  simp only [A029358, Nat.add_sub_cancel, A029358.P13638239063107244850.a, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A025875, A025875.P6817867275474269582.a, A029072, A029072.P16720113097825012275.a, A029331, A029331.P16509172661417459008.a, A029346, A029346.P15441236893995981458.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029358

/-! ## A029358.P13519930090253853690

`A029331(n)+A029368(n)-A029335(n)`
-/

namespace A029358.P13519930090253853690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 n + (A029368 n - A029335 n)

end

end A029358.P13519930090253853690

namespace A029358

/-- `A029331(n)+A029368(n)-A029335(n)` -/
def P13519930090253853690.Spec : Prop :=
  ∀ n, P13519930090253853690.a n = A029358 n

end A029358

/-! ## A029358.P2321066472834651837

`A029351(n)+A029392(n)-A029381(n)`
-/

namespace A029358.P2321066472834651837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029351 n + (A029392 n - A029381 n)

end

end A029358.P2321066472834651837

namespace A029358

/-- `A029351(n)+A029392(n)-A029381(n)` -/
def P2321066472834651837.Spec : Prop :=
  ∀ n, P2321066472834651837.a n = A029358 n

end A029358

/-! ## A029358.P1834887051285713590

`A029367(n)+A029391(n)-A029400(n)`
-/

namespace A029358.P1834887051285713590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029391 n - A029400 n)

end

end A029358.P1834887051285713590

namespace A029358

/-- `A029367(n)+A029391(n)-A029400(n)` -/
def P1834887051285713590.Spec : Prop :=
  ∀ n, P1834887051285713590.a n = A029358 n

theorem P1834887051285713590.correct : P1834887051285713590.Spec := by
  intro n
  simp only [A029358, Nat.add_sub_cancel, A029358.P1834887051285713590.a, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029367, A029367.P16821808984905599140.a, A029391, A029391.P12825542684118861897.a, A029400, A029400.P16034242247368147644.a, A057979, A057979.P16537735927241777837.a, A029290, A029290.P16762149366517590486.a, A029350, A029350.P16656462126632644310.a, A029366, A029366.P2484932440147699760.a, A029380, A029380.P4667319608210398714.a, A025895, A025895.P11568081359664457230.a, A029233, A029233.P3941505614629625210.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029224, A029224.P11078861318480278839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029358

/-! ## A029358.P5300409809586105855

`A029377(n)+A029391(n)-A029412(n)`
-/

namespace A029358.P5300409809586105855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029391 n - A029412 n)

end

end A029358.P5300409809586105855

namespace A029358

/-- `A029377(n)+A029391(n)-A029412(n)` -/
def P5300409809586105855.Spec : Prop :=
  ∀ n, P5300409809586105855.a n = A029358 n

theorem P5300409809586105855.correct : P5300409809586105855.Spec := by
  intro n
  simp only [A029358, Nat.add_sub_cancel, A029358.P5300409809586105855.a, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029377, A029377.P9082731251158770194.a, A029391, A029391.P12825542684118861897.a, A029412, A029412.P8218405848832406386.a, A057979, A057979.P16537735927241777837.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029290, A029290.P16762149366517590486.a, A025895, A025895.P11568081359664457230.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A025827, A025827.P17085874073192218021.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029357, A029357.P1479724606091517717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029358

/-! ## A029358.P10649497614416649188

`A029372(n)+A029431(n)-A029445(n)`
-/

namespace A029358.P10649497614416649188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 n + (A029431 n - A029445 n)

end

end A029358.P10649497614416649188

namespace A029358

/-- `A029372(n)+A029431(n)-A029445(n)` -/
def P10649497614416649188.Spec : Prop :=
  ∀ n, P10649497614416649188.a n = A029358 n

end A029358

/-! ## A029358.P17419958836342437301

`A029240(n+4)+A029240(n)-A029225(n+4)`
-/

namespace A029358.P17419958836342437301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 4) + (A029240 n - A029225 (n + 4))

end

end A029358.P17419958836342437301

namespace A029358

/-- `A029240(n+4)+A029240(n)-A029225(n+4)` -/
def P17419958836342437301.Spec : Prop :=
  ∀ n, P17419958836342437301.a n = A029358 n

end A029358

/-!
# A029359: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^9)).

The programs for A029359, the canonical program `A029359.P9429317045070172707` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029359 has offset 0).

The definition of A029359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7-x^8-x^9+x^11+x^12+x^13+x^15+x^16+x^17-x^19-x^20-x^21-x^24+x^28))` (program `A029359.P9429317045070172707`, by `A029359.P9429317045070172707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029359.P9429317045070172707

`ogf(1/(1-x^4-x^7-x^8-x^9+x^11+x^12+x^13+x^15+x^16+x^17-x^19-x^20-x^21-x^24+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029359

/-- `ogf(1/(1-x^4-x^7-x^8-x^9+x^11+x^12+x^13+x^15+x^16+x^17-x^19-x^20-x^21-x^24+x^28))` -/
def P9429317045070172707.Spec : Prop :=
  ∀ n, P9429317045070172707.a n = A029359 n

theorem P9429317045070172707.correct : P9429317045070172707.Spec := by
  intro n
  simp only [A029359]

end A029359

/-! ## A029359.P15075739157423315270

`A029226(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029359.P15075739157423315270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029226 n - a (n - 2)

end

end A029359.P15075739157423315270

namespace A029359

/-- `A029226(n)-a(n-2)` -/
def P15075739157423315270.Spec : Prop :=
  ∀ n, P15075739157423315270.a n = A029359 n

end A029359

/-! ## A029359.P14416238812458033572

`A025872(n)+A029074(n)-A029078(n)`
-/

namespace A029359.P14416238812458033572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029074 n - A029078 n)

end

end A029359.P14416238812458033572

namespace A029359

/-- `A025872(n)+A029074(n)-A029078(n)` -/
def P14416238812458033572.Spec : Prop :=
  ∀ n, P14416238812458033572.a n = A029359 n

end A029359

/-! ## A029359.P9382085273049391610

`A025872(n)+A029181(n)-A029186(n)`
-/

namespace A029359.P9382085273049391610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029181 n - A029186 n)

end

end A029359.P9382085273049391610

namespace A029359

/-- `A025872(n)+A029181(n)-A029186(n)` -/
def P9382085273049391610.Spec : Prop :=
  ∀ n, P9382085273049391610.a n = A029359 n

end A029359

/-! ## A029359.P6714357008576135446

`A029074(n)+A029262(n)-A029054(n)`
-/

namespace A029359.P6714357008576135446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029074 n + (A029262 n - A029054 n)

end

end A029359.P6714357008576135446

namespace A029359

/-- `A029074(n)+A029262(n)-A029054(n)` -/
def P6714357008576135446.Spec : Prop :=
  ∀ n, P6714357008576135446.a n = A029359 n

end A029359

/-! ## A029359.P1070429339544117091

`A029178(n+2)-A029347(n+2)+A025872(n)-A029186(n)`
-/

namespace A029359.P1070429339544117091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (n + 2) - A029347 (n + 2) + (A025872 n - A029186 n)

end

end A029359.P1070429339544117091

namespace A029359

/-- `A029178(n+2)-A029347(n+2)+A025872(n)-A029186(n)` -/
def P1070429339544117091.Spec : Prop :=
  ∀ n, P1070429339544117091.a n = A029359 n

end A029359

/-!
# A029360: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^10)).

The programs for A029360, the canonical program `A029360.P14859210217828173422` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029360 has offset 0).

The definition of A029360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029360.P14859210217828173422

`A029227(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029360

/-- `A029227(n)-a(n-2)` -/
def P14859210217828173422.Spec : Prop :=
  ∀ n, P14859210217828173422.a n = A029360 n

theorem P14859210217828173422.correct : P14859210217828173422.Spec := by
  intro n
  simp only [A029360]

end A029360

/-! ## A029360.P8323413032594526629

`A025909(n)+A029347(n)-A029414(n)`
-/

namespace A029360.P8323413032594526629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 n + (A029347 n - A029414 n)

end

end A029360.P8323413032594526629

namespace A029360

/-- `A025909(n)+A029347(n)-A029414(n)` -/
def P8323413032594526629.Spec : Prop :=
  ∀ n, P8323413032594526629.a n = A029360 n

end A029360

/-! ## A029360.P14164917496486842108

`A029372(n)+A029435(n)-A025921(n)`
-/

namespace A029360.P14164917496486842108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 n + (A029435 n - A025921 n)

end

end A029360.P14164917496486842108

namespace A029360

/-- `A029372(n)+A029435(n)-A025921(n)` -/
def P14164917496486842108.Spec : Prop :=
  ∀ n, P14164917496486842108.a n = A029360 n

end A029360

/-! ## A029360.P5165111610176694880

`A029124(n)+A029372(n)-A029130(n)`
-/

namespace A029360.P5165111610176694880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 n + (A029372 n - A029130 n)

end

end A029360.P5165111610176694880

namespace A029360

/-- `A029124(n)+A029372(n)-A029130(n)` -/
def P5165111610176694880.Spec : Prop :=
  ∀ n, P5165111610176694880.a n = A029360 n

end A029360

/-! ## A029360.P3784612372221680834

`A029308(n)+A029372(n)-A029319(n)`
-/

namespace A029360.P3784612372221680834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029308 n + (A029372 n - A029319 n)

end

end A029360.P3784612372221680834

namespace A029360

/-- `A029308(n)+A029372(n)-A029319(n)` -/
def P3784612372221680834.Spec : Prop :=
  ∀ n, P3784612372221680834.a n = A029360 n

theorem P3784612372221680834.correct : P3784612372221680834.Spec := by
  intro n
  simp only [A029360, Nat.add_sub_cancel, A029360.P3784612372221680834.a, A029360.P14859210217828173422.a, A029227, A029227.P8296418391857945900.a, A029308, A029308.P9850508978971010874.a, A029319, A029319.P17880918560433221598.a, A029372, A029372.P2672987048635236464.a, A029130, A029130.P9139947445189529959.a, A029239, A029239.P14692552077046529193.a, A024000, A024000.P8748414335487061084.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, A029128, A029128.P7892556659566413608.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029360

/-! ## A029360.P12538525503410098285

`A029216(n+2)-A029347(n+2)`
-/

namespace A029360.P12538525503410098285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (n + 2) - A029347 (n + 2)

end

end A029360.P12538525503410098285

namespace A029360

/-- `A029216(n+2)-A029347(n+2)` -/
def P12538525503410098285.Spec : Prop :=
  ∀ n, P12538525503410098285.a n = A029360 n

end A029360

/-!
# A029361: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^11)).

The programs for A029361, the canonical program `A029361.P2316491448957553572` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029361 has offset 0).

The definition of A029361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029361.P16042580443002038415

`A029228(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029361.P16042580443002038415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029228 n - a (n - 2)

end

end A029361.P16042580443002038415

namespace A029361

/-- `A029228(n)-a(n-2)` -/
def P16042580443002038415.Spec : Prop :=
  ∀ n, P16042580443002038415.a n = A029361 n

end A029361

/-! ## A029361.P1847245850059198349

`A025910(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029361.P1847245850059198349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025910 n + a (n - 4)

end

end A029361.P1847245850059198349

namespace A029361

/-- `A025910(n)+a(n-4)` -/
def P1847245850059198349.Spec : Prop :=
  ∀ n, P1847245850059198349.a n = A029361 n

end A029361

/-! ## A029361.P2316491448957553572

`A029309(n)+A029368(n)-A029315(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029361

/-- `A029309(n)+A029368(n)-A029315(n)` -/
def P2316491448957553572.Spec : Prop :=
  ∀ n, P2316491448957553572.a n = A029361 n

theorem P2316491448957553572.correct : P2316491448957553572.Spec := by
  intro n
  simp only [A029361]

end A029361

/-! ## A029361.P13292144903276302555

`A102675(A218600(n))+C(2, n+2)`
-/

namespace A029361.P13292144903276302555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A218600 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A029361.P13292144903276302555

namespace A029361

/-- `A102675(A218600(n))+C(2, n+2)` -/
def P13292144903276302555.Spec : Prop :=
  ∀ n, P13292144903276302555.a n = A029361 n

end A029361

/-! ## A029361.P105799362744754232

`A050605(C(n, 7)^(n%2))+A025867(n)`
-/

namespace A029361.P105799362744754232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (Nat.choose n 7 ^ (n % 2)) + A025867 n

end

end A029361.P105799362744754232

namespace A029361

/-- `A050605(C(n, 7)^(n%2))+A025867(n)` -/
def P105799362744754232.Spec : Prop :=
  ∀ n, P105799362744754232.a n = A029361 n

end A029361

/-!
# A029362: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^12)).

The programs for A029362, the canonical program `A029362.P11804372412846034763` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029362 has offset 0).

The definition of A029362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029362.P11804372412846034763

`A029229(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029362

/-- `A029229(n)-a(n-2)` -/
def P11804372412846034763.Spec : Prop :=
  ∀ n, P11804372412846034763.a n = A029362 n

theorem P11804372412846034763.correct : P11804372412846034763.Spec := by
  intro n
  simp only [A029362]

end A029362

/-! ## A029362.P6604197942193415961

`A025911(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0`
-/

namespace A029362.P6604197942193415961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 0, 0] fun n a =>
  A025911 n + a (n - 4)

end

end A029362.P6604197942193415961

namespace A029362

/-- `A025911(n)+a(n-4)` -/
def P6604197942193415961.Spec : Prop :=
  ∀ n, P6604197942193415961.a n = A029362 n

end A029362

/-! ## A029362.P15666862495697203905

`A029373(n)+A029437(n)-A025922(n)`
-/

namespace A029362.P15666862495697203905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 n + (A029437 n - A025922 n)

end

end A029362.P15666862495697203905

namespace A029362

/-- `A029373(n)+A029437(n)-A025922(n)` -/
def P15666862495697203905.Spec : Prop :=
  ∀ n, P15666862495697203905.a n = A029362 n

theorem P15666862495697203905.correct : P15666862495697203905.Spec := by
  intro n
  simp only [A029362, Nat.add_sub_cancel, A029362.P15666862495697203905.a, A029362.P11804372412846034763.a, A025922, A025922.P6708222772634296198.a, A029229, A029229.P7840999330443593408.a, A029373, A029373.P15134939405955312355.a, A029437, A029437.P16437964794762885094.a, A029057, A029057.P12806209273119762580.a, A029079, A029079.P14680622646069132485.a, A029120, A029120.P7548353213827858419.a, A029225, A029225.P16486130044195142611.a, A029240, A029240.P15289134274771874386.a, A029265, A029265.P2700836718253899269.a, A029427, A029427.P7393202542857614358.a, A025926, A025926.P18037225688025791001.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029238, A029238.P16766028808299643663.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029444, A029444.P3494668632536997832.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A025925, A025925.P1140353279712905302.a, A029059, A029059.P2593322934177589198.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029129, A029129.P9138012199681895200.f1, A029129.P9138012199681895200.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029412, A029412.P8218405848832406386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029362

/-! ## A029362.P17801961997024234049

`A029373(n)+A029395(n)-A029408(n)`
-/

namespace A029362.P17801961997024234049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 n + (A029395 n - A029408 n)

end

end A029362.P17801961997024234049

namespace A029362

/-- `A029373(n)+A029395(n)-A029408(n)` -/
def P17801961997024234049.Spec : Prop :=
  ∀ n, P17801961997024234049.a n = A029362 n

theorem P17801961997024234049.correct : P17801961997024234049.Spec := by
  intro n
  simp only [A029362, Nat.add_sub_cancel, A029362.P17801961997024234049.a, A029362.P11804372412846034763.a, A029229, A029229.P7840999330443593408.a, A029373, A029373.P15134939405955312355.a, A029395, A029395.P2989943382135778260.a, A029408, A029408.P16904419876965662283.a, A025922, A025922.P6708222772634296198.a, A029057, A029057.P12806209273119762580.a, A029079, A029079.P14680622646069132485.a, A029120, A029120.P7548353213827858419.a, A029225, A029225.P16486130044195142611.a, A029240, A029240.P15289134274771874386.a, A029265, A029265.P2700836718253899269.a, A029386, A029386.P9736784195507492677.a, A029437, A029437.P16437964794762885094.a, A025926, A025926.P18037225688025791001.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029285, A029285.P11066880582987186294.a, A029427, A029427.P7393202542857614358.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029238, A029238.P16766028808299643663.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029412, A029412.P8218405848832406386.a, A029444, A029444.P3494668632536997832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029362

/-! ## A029362.P741490007357565389

`∑[A025871(n)]+A029265(n)-A029057(n)`
-/

namespace A029362.P741490007357565389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A029265 n - A029057 n)

end

end A029362.P741490007357565389

namespace A029362

/-- `∑[A025871(n)]+A029265(n)-A029057(n)` -/
def P741490007357565389.Spec : Prop :=
  ∀ n, P741490007357565389.a n = A029362 n

end A029362

/-!
# A029363: Expansion of 1/((1 - x^4)*(1 - x^7)*(1 - x^9)*(1 - x^10)).

The programs for A029363, the canonical program `A029363.P5892090971847677782` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029363 has offset 0).

The definition of A029363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029363.P5892090971847677782

`A029230(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029363

/-- `A029230(n)-a(n-2)` -/
def P5892090971847677782.Spec : Prop :=
  ∀ n, P5892090971847677782.a n = A029363 n

theorem P5892090971847677782.correct : P5892090971847677782.Spec := by
  intro n
  simp only [A029363]

end A029363

/-! ## A029363.P5102482421459787062

`A029310(n)+A029348(n)-A029294(n)`
-/

namespace A029363.P5102482421459787062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029310 n + (A029348 n - A029294 n)

end

end A029363.P5102482421459787062

namespace A029363

/-- `A029310(n)+A029348(n)-A029294(n)` -/
def P5102482421459787062.Spec : Prop :=
  ∀ n, P5102482421459787062.a n = A029363 n

end A029363

/-! ## A029363.P420771492315633637

`A029311(n)+A029355(n)-A029303(n)`
-/

namespace A029363.P420771492315633637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029311 n + (A029355 n - A029303 n)

end

end A029363.P420771492315633637

namespace A029363

/-- `A029311(n)+A029355(n)-A029303(n)` -/
def P420771492315633637.Spec : Prop :=
  ∀ n, P420771492315633637.a n = A029363 n

theorem P420771492315633637.correct : P420771492315633637.Spec := by
  intro n
  simp only [A029363, Nat.add_sub_cancel, A029363.P420771492315633637.a, A029363.P5892090971847677782.a, A029230, A029230.P18014352078282283868.a, A029303, A029303.P996504278850235236.a, A029311, A029311.P11942994698236464024.a, A029355, A029355.P10567033194552355608.a, A025913, A025913.P6872223754574144002.a, A029222, A029222.P13450996779978871818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029363

/-! ## A029363.P2089422628690539672

`A029393(n+1)-Δ[A029432(n)]`
-/

namespace A029363.P2089422628690539672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029393 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029363.P2089422628690539672

namespace A029363

/-- `A029393(n+1)-Δ[A029432(n)]` -/
def P2089422628690539672.Spec : Prop :=
  ∀ n, P2089422628690539672.a n = A029363 n

end A029363

/-! ## A029363.P1730219222777517887

`A029071(n+6)-A029074(n+6)+A029310(n)-A029294(n)`
-/

namespace A029363.P1730219222777517887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (n + 6) - A029074 (n + 6) + (A029310 n - A029294 n)

end

end A029363.P1730219222777517887

namespace A029363

/-- `A029071(n+6)-A029074(n+6)+A029310(n)-A029294(n)` -/
def P1730219222777517887.Spec : Prop :=
  ∀ n, P1730219222777517887.a n = A029363 n

end A029363

/-!
# A029364: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^11)).

The programs for A029364, the canonical program `A029364.P18119640240115564070` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029364 has offset 0).

The definition of A029364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029364.P18119640240115564070

`A029231(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029364

/-- `A029231(n)-a(n-2)` -/
def P18119640240115564070.Spec : Prop :=
  ∀ n, P18119640240115564070.a n = A029364 n

theorem P18119640240115564070.correct : P18119640240115564070.Spec := by
  intro n
  simp only [A029364]

end A029364

/-! ## A029364.P1595055357752317614

`A025913(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029364.P1595055357752317614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025913 n + a (n - 4)

end

end A029364.P1595055357752317614

namespace A029364

/-- `A025913(n)+a(n-4)` -/
def P1595055357752317614.Spec : Prop :=
  ∀ n, P1595055357752317614.a n = A029364 n

end A029364

/-! ## A029364.P8565485245001147857

`A029433(abs(4-n))+A029433(n)`
-/

namespace A029364.P8565485245001147857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029433 |4 - (n : ℤ)|.toNat + A029433 n

end

end A029364.P8565485245001147857

namespace A029364

/-- `A029433(abs(4-n))+A029433(n)` -/
def P8565485245001147857.Spec : Prop :=
  ∀ n, P8565485245001147857.a n = A029364 n

end A029364

/-! ## A029364.P951665392236174468

`A029209(n+2)-A029335(n+2)`
-/

namespace A029364.P951665392236174468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029209 (n + 2) - A029335 (n + 2)

end

end A029364.P951665392236174468

namespace A029364

/-- `A029209(n+2)-A029335(n+2)` -/
def P951665392236174468.Spec : Prop :=
  ∀ n, P951665392236174468.a n = A029364 n

end A029364

/-! ## A029364.P7103628059114814191

`A025817(n)-A039993(A126460(A261418(n)))`
-/

namespace A029364.P7103628059114814191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 n - A039993 (A126460 (A261418 n).toNat).toNat

end

end A029364.P7103628059114814191

namespace A029364

/-- `A025817(n)-A039993(A126460(A261418(n)))` -/
def P7103628059114814191.Spec : Prop :=
  ∀ n, P7103628059114814191.a n = A029364 n

end A029364

/-!
# A029365: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^9)*(1-x^12)).

The programs for A029365, the canonical program `A029365.P2100240297090772745` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029365 has offset 0).

The definition of A029365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029365.P2100240297090772745

`A029232(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029365

/-- `A029232(n)-a(n-2)` -/
def P2100240297090772745.Spec : Prop :=
  ∀ n, P2100240297090772745.a n = A029365 n

theorem P2100240297090772745.correct : P2100240297090772745.Spec := by
  intro n
  simp only [A029365]

end A029365

/-! ## A029365.P9236273710027942750

`A029376(n)+A029440(n)-A025925(n)`
-/

namespace A029365.P9236273710027942750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029440 n - A025925 n)

end

end A029365.P9236273710027942750

namespace A029365

/-- `A029376(n)+A029440(n)-A025925(n)` -/
def P9236273710027942750.Spec : Prop :=
  ∀ n, P9236273710027942750.a n = A029365 n

theorem P9236273710027942750.correct : P9236273710027942750.Spec := by
  intro n
  simp only [A029365, Nat.add_sub_cancel, A029365.P9236273710027942750.a, A029365.P2100240297090772745.a, A025925, A025925.P1140353279712905302.a, A029232, A029232.P16177588645430596473.a, A029376, A029376.P16706943438829377810.a, A029440, A029440.P14008336459079568971.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029346, A029346.P15441236893995981458.a, A029398, A029398.P4533888177158712386.a, A029411, A029411.P3027199765007840635.a, A025875, A025875.P6817867275474269582.a, A025913, A025913.P6872223754574144002.a, A025914, A025914.P10374659836394469038.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029365

/-! ## A029365.P3319120826487464554

`A029376(n)+A029398(n)-A029411(n)`
-/

namespace A029365.P3319120826487464554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029398 n - A029411 n)

end

end A029365.P3319120826487464554

namespace A029365

/-- `A029376(n)+A029398(n)-A029411(n)` -/
def P3319120826487464554.Spec : Prop :=
  ∀ n, P3319120826487464554.a n = A029365 n

theorem P3319120826487464554.correct : P3319120826487464554.Spec := by
  intro n
  simp only [A029365, Nat.add_sub_cancel, A029365.P3319120826487464554.a, A029365.P2100240297090772745.a, A029232, A029232.P16177588645430596473.a, A029376, A029376.P16706943438829377810.a, A029398, A029398.P4533888177158712386.a, A029411, A029411.P3027199765007840635.a, A025913, A025913.P6872223754574144002.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029346, A029346.P15441236893995981458.a, A025875, A025875.P6817867275474269582.a, A025914, A025914.P10374659836394469038.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029365

/-! ## A029365.P1392541810645464589

`A029346(n)+A029440(n)-A029411(n)`
-/

namespace A029365.P1392541810645464589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029440 n - A029411 n)

end

end A029365.P1392541810645464589

namespace A029365

/-- `A029346(n)+A029440(n)-A029411(n)` -/
def P1392541810645464589.Spec : Prop :=
  ∀ n, P1392541810645464589.a n = A029365 n

theorem P1392541810645464589.correct : P1392541810645464589.Spec := by
  intro n
  simp only [A029365, Nat.add_sub_cancel, A029365.P1392541810645464589.a, A029365.P2100240297090772745.a, A029232, A029232.P16177588645430596473.a, A029346, A029346.P15441236893995981458.a, A029411, A029411.P3027199765007840635.a, A029440, A029440.P14008336459079568971.a, A025875, A025875.P6817867275474269582.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029376, A029376.P16706943438829377810.a, A029398, A029398.P4533888177158712386.a, A025796, A025796.P17123033237818759149.a, A025913, A025913.P6872223754574144002.a, A025914, A025914.P10374659836394469038.a, A029072, A029072.P16720113097825012275.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A057979, A057979.P16537735927241777837.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029365

/-! ## A029365.P13470066315826465243

`A379679(A379658(n)+A188002(n+1))`
-/

namespace A029365.P13470066315826465243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (A379658 n + A188002 (n + 1)).toNat

end

end A029365.P13470066315826465243

namespace A029365

/-- `A379679(A379658(n)+A188002(n+1))` -/
def P13470066315826465243.Spec : Prop :=
  ∀ n, P13470066315826465243.a n = A029365 n

end A029365

/-!
# A029366: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^11)).

The programs for A029366, the canonical program `A029366.P2484932440147699760` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029366 has offset 0).

The definition of A029366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029366.P2484932440147699760

`A029233(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029366

/-- `A029233(n)-a(n-2)` -/
def P2484932440147699760.Spec : Prop :=
  ∀ n, P2484932440147699760.a n = A029366 n

theorem P2484932440147699760.correct : P2484932440147699760.Spec := by
  intro n
  simp only [A029366]

end A029366

/-! ## A029366.P5623652135150145203

`A025915(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029366.P5623652135150145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025915 n + a (n - 4)

end

end A029366.P5623652135150145203

namespace A029366

/-- `A025915(n)+a(n-4)` -/
def P5623652135150145203.Spec : Prop :=
  ∀ n, P5623652135150145203.a n = A029366 n

end A029366

/-! ## A029366.P6038123342972075635

`A029350(n)+A029400(n)-A029380(n)`
-/

namespace A029366.P6038123342972075635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 n + (A029400 n - A029380 n)

end

end A029366.P6038123342972075635

namespace A029366

/-- `A029350(n)+A029400(n)-A029380(n)` -/
def P6038123342972075635.Spec : Prop :=
  ∀ n, P6038123342972075635.a n = A029366 n

theorem P6038123342972075635.correct : P6038123342972075635.Spec := by
  intro n
  simp only [A029366, Nat.add_sub_cancel, A029366.P6038123342972075635.a, A029366.P2484932440147699760.a, A029233, A029233.P3941505614629625210.a, A029350, A029350.P16656462126632644310.a, A029380, A029380.P4667319608210398714.a, A029400, A029400.P16034242247368147644.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029224, A029224.P11078861318480278839.a, A029357, A029357.P1479724606091517717.a, A029295, A029295.P6904684891100908360.a, A029303, A029303.P996504278850235236.a, A029349, A029349.P5476095844287341884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029366

/-! ## A029366.P6118897074917921012

`Δ[∑[A029395(n)]-A029435(n)]`
-/

namespace A029366.P6118897074917921012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029366.P6118897074917921012

namespace A029366

/-- `Δ[∑[A029395(n)]-A029435(n)]` -/
def P6118897074917921012.Spec : Prop :=
  ∀ n, P6118897074917921012.a n = A029366 n

end A029366

/-! ## A029366.P11138164767977388400

`A029395(n+1)-Δ[A029435(n)]`
-/

namespace A029366.P11138164767977388400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029366.P11138164767977388400

namespace A029366

/-- `A029395(n+1)-Δ[A029435(n)]` -/
def P11138164767977388400.Spec : Prop :=
  ∀ n, P11138164767977388400.a n = A029366 n

end A029366

/-!
# A029367: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^12)).

The programs for A029367, the canonical program `A029367.P16821808984905599140` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029367 has offset 0).

The definition of A029367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029367.P11573722656664596817

`A029234(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029367.P11573722656664596817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029234 n - a (n - 2)

end

end A029367.P11573722656664596817

namespace A029367

/-- `A029234(n)-a(n-2)` -/
def P11573722656664596817.Spec : Prop :=
  ∀ n, P11573722656664596817.a n = A029367 n

end A029367

/-! ## A029367.P16821808984905599140

`A029358(n)+A029400(n)-A029391(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029367

/-- `A029358(n)+A029400(n)-A029391(n)` -/
def P16821808984905599140.Spec : Prop :=
  ∀ n, P16821808984905599140.a n = A029367 n

theorem P16821808984905599140.correct : P16821808984905599140.Spec := by
  intro n
  simp only [A029367]

end A029367

/-! ## A029367.P2738937064361020632

`A029377(n)+A029400(n)-A029412(n)`
-/

namespace A029367.P2738937064361020632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029400 n - A029412 n)

end

end A029367.P2738937064361020632

namespace A029367

/-- `A029377(n)+A029400(n)-A029412(n)` -/
def P2738937064361020632.Spec : Prop :=
  ∀ n, P2738937064361020632.a n = A029367 n

theorem P2738937064361020632.correct : P2738937064361020632.Spec := by
  intro n
  simp only [A029367, Nat.add_sub_cancel, A029367.P2738937064361020632.a, A029367.P16821808984905599140.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029377, A029377.P9082731251158770194.a, A029391, A029391.P12825542684118861897.a, A029400, A029400.P16034242247368147644.a, A029412, A029412.P8218405848832406386.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029290, A029290.P16762149366517590486.a, A029350, A029350.P16656462126632644310.a, A029366, A029366.P2484932440147699760.a, A029380, A029380.P4667319608210398714.a, A057979, A057979.P16537735927241777837.a, A025895, A025895.P11568081359664457230.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029233, A029233.P3941505614629625210.a, A025827, A025827.P17085874073192218021.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029357, A029357.P1479724606091517717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029367

/-! ## A029367.P1069364522553985147

`A029396(n+1)-Δ[A029436(n)]`
-/

namespace A029367.P1069364522553985147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029396 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029367.P1069364522553985147

namespace A029367

/-- `A029396(n+1)-Δ[A029436(n)]` -/
def P1069364522553985147.Spec : Prop :=
  ∀ n, P1069364522553985147.a n = A029367 n

end A029367

/-! ## A029367.P17041653019733784564

`A029377(n)-A001489(A029400(n)-A029412(n))`
-/

namespace A029367.P17041653019733784564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n - A001489 (A029400 n - A029412 n).toNat

end

end A029367.P17041653019733784564

namespace A029367

/-- `A029377(n)-A001489(A029400(n)-A029412(n))` -/
def P17041653019733784564.Spec : Prop :=
  ∀ n, P17041653019733784564.a n = A029367 n

end A029367

/-!
# A029368: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^11)*(1-x^12)).

The programs for A029368, the canonical program `A029368.P396495999053672389` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029368 has offset 0).

The definition of A029368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029368.P396495999053672389

`A029235(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029368

/-- `A029235(n)-a(n-2)` -/
def P396495999053672389.Spec : Prop :=
  ∀ n, P396495999053672389.a n = A029368 n

theorem P396495999053672389.correct : P396495999053672389.Spec := by
  intro n
  simp only [A029368]

end A029368

/-! ## A029368.P3245484166978763910

`A025871(n)+A029076(n)-A029077(n)`
-/

namespace A029368.P3245484166978763910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n + (A029076 n - A029077 n)

end

end A029368.P3245484166978763910

namespace A029368

/-- `A025871(n)+A029076(n)-A029077(n)` -/
def P3245484166978763910.Spec : Prop :=
  ∀ n, P3245484166978763910.a n = A029368 n

end A029368

/-! ## A029368.P15238678306843229801

`A025875(n)+A029335(n)-A029346(n)`
-/

namespace A029368.P15238678306843229801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029335 n - A029346 n)

end

end A029368.P15238678306843229801

namespace A029368

/-- `A025875(n)+A029335(n)-A029346(n)` -/
def P15238678306843229801.Spec : Prop :=
  ∀ n, P15238678306843229801.a n = A029368 n

end A029368

/-! ## A029368.P17127470772572331642

`A029315(n)+A029361(n)-A029309(n)`
-/

namespace A029368.P17127470772572331642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029315 n + (A029361 n - A029309 n)

end

end A029368.P17127470772572331642

namespace A029368

/-- `A029315(n)+A029361(n)-A029309(n)` -/
def P17127470772572331642.Spec : Prop :=
  ∀ n, P17127470772572331642.a n = A029368 n

theorem P17127470772572331642.correct : P17127470772572331642.Spec := by
  intro n
  simp only [A029368, Nat.add_sub_cancel, A029368.P17127470772572331642.a, A029368.P396495999053672389.a, A029235, A029235.P12349426323057609679.a, A029309, A029309.P15051498724445637453.a, A029315, A029315.P17147396963157737905.a, A029361, A029361.P2316491448957553572.a, A025827, A025827.P17085874073192218021.a, A025911, A025911.P13384529438674371776.a, A029202, A029202.P12759038853367375186.a, A029213, A029213.P5201621740032638678.a, A029277, A029277.P17981612767777105858.a, A029280, A029280.P14027745827875663436.a, A029305, A029305.P5923973588584456125.a, A025907, A025907.P12793639154697755668.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A025781, A025781.P7662789883593314095.a, A025783, A025783.P15062552760523704649.a, A025881, A025881.P15100123725397875390.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029368

/-! ## A029368.P9076776272866420203

`A029335(n)+A029358(n)-A029331(n)`
-/

namespace A029368.P9076776272866420203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029335 n + (A029358 n - A029331 n)

end

end A029368.P9076776272866420203

namespace A029368

/-- `A029335(n)+A029358(n)-A029331(n)` -/
def P9076776272866420203.Spec : Prop :=
  ∀ n, P9076776272866420203.a n = A029368 n

end A029368

/-!
# A029369: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A029369, the canonical program `A029369.P5738968494950844050` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029369 has offset 0).

The definition of A029369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029369.P5738968494950844050

`A029236(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029369

/-- `A029236(n)-a(n-2)` -/
def P5738968494950844050.Spec : Prop :=
  ∀ n, P5738968494950844050.a n = A029369 n

theorem P5738968494950844050.correct : P5738968494950844050.Spec := by
  intro n
  simp only [A029369]

end A029369

/-! ## A029369.P14018931064448219084

`A029236(n)+A029352(n)-A029221(n)`
-/

namespace A029369.P14018931064448219084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n + (A029352 n - A029221 n)

end

end A029369.P14018931064448219084

namespace A029369

/-- `A029236(n)+A029352(n)-A029221(n)` -/
def P14018931064448219084.Spec : Prop :=
  ∀ n, P14018931064448219084.a n = A029369 n

end A029369

/-! ## A029369.P8445463022726438031

`∑[A010057(A136215(n+2))]-A000120(n)`
-/

namespace A029369.P8445463022726438031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A136215 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000120 n

end

end A029369.P8445463022726438031

namespace A029369

/-- `∑[A010057(A136215(n+2))]-A000120(n)` -/
def P8445463022726438031.Spec : Prop :=
  ∀ n, P8445463022726438031.a n = A029369 n

end A029369

/-! ## A029369.P3330051358092103905

`A055642(A000712(n))-A000120(n)`
-/

namespace A029369.P3330051358092103905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000712 n).toNat - A000120 n

end

end A029369.P3330051358092103905

namespace A029369

/-- `A055642(A000712(n))-A000120(n)` -/
def P3330051358092103905.Spec : Prop :=
  ∀ n, P3330051358092103905.a n = A029369 n

end A029369

/-! ## A029369.P14138202629322569136

`A055642(A007096(n))-A000120(n)`
-/

namespace A029369.P14138202629322569136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007096 n).toNat - A000120 n

end

end A029369.P14138202629322569136

namespace A029369

/-- `A055642(A007096(n))-A000120(n)` -/
def P14138202629322569136.Spec : Prop :=
  ∀ n, P14138202629322569136.a n = A029369 n

end A029369

/-!
# A029370: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^11)).

The programs for A029370, the canonical program `A029370.P7798369650479054994` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029370 has offset 0).

The definition of A029370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029370.P7798369650479054994

`A029237(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029370

/-- `A029237(n)-a(n-2)` -/
def P7798369650479054994.Spec : Prop :=
  ∀ n, P7798369650479054994.a n = A029370 n

theorem P7798369650479054994.correct : P7798369650479054994.Spec := by
  intro n
  simp only [A029370]

end A029370

/-! ## A029370.P10112052368297376705

`A029317(n)+A029339(n)-A029287(n)`
-/

namespace A029370.P10112052368297376705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029317 n + (A029339 n - A029287 n)

end

end A029370.P10112052368297376705

namespace A029370

/-- `A029317(n)+A029339(n)-A029287(n)` -/
def P10112052368297376705.Spec : Prop :=
  ∀ n, P10112052368297376705.a n = A029370 n

end A029370

/-! ## A029370.P6483785530040589946

`A227186(A240909(or(4, n)))`
-/

namespace A029370.P6483785530040589946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 (A240909 (Nat.lor 4 n)).toNat

end

end A029370.P6483785530040589946

namespace A029370

/-- `A227186(A240909(or(4, n)))` -/
def P6483785530040589946.Spec : Prop :=
  ∀ n, P6483785530040589946.a n = A029370 n

end A029370

/-! ## A029370.P5588308548720672946

`A336569(A296096(n+1)-3*∑{d}[n+1, #])`
-/

namespace A029370.P5588308548720672946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336569 (A296096 (n + 1) - ((3 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ)).toNat

end

end A029370.P5588308548720672946

namespace A029370

/-- `A336569(A296096(n+1)-3*∑{d}[n+1, #])` -/
def P5588308548720672946.Spec : Prop :=
  ∀ n, P5588308548720672946.a n = A029370 n

end A029370

/-! ## A029370.P10933544757778498651

`A169673(A074082(n))+floor(n/4)-floor((n-1)/4)`
-/

namespace A029370.P10933544757778498651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169673 (A074082 n).toNat + (⌊(n : ℚ) / 4⌋ - ⌊((n : ℤ) - 1 : ℚ) / 4⌋)

end

end A029370.P10933544757778498651

namespace A029370

/-- `A169673(A074082(n))+floor(n/4)-floor((n-1)/4)` -/
def P10933544757778498651.Spec : Prop :=
  ∀ n, P10933544757778498651.a n = A029370 n

end A029370

/-!
# A029371: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^12)).

The programs for A029371, the canonical program `A029371.P15358491422474167899` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029371 has offset 0).

The definition of A029371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029371.P15358491422474167899

`A029238(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029371

/-- `A029238(n)-a(n-2)` -/
def P15358491422474167899.Spec : Prop :=
  ∀ n, P15358491422474167899.a n = A029371 n

theorem P15358491422474167899.correct : P15358491422474167899.Spec := by
  intro n
  simp only [A029371]

end A029371

/-! ## A029371.P16866647557102760481

`A025920(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029371.P16866647557102760481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025920 n + a (n - 4)

end

end A029371.P16866647557102760481

namespace A029371

/-- `A025920(n)+a(n-4)` -/
def P16866647557102760481.Spec : Prop :=
  ∀ n, P16866647557102760481.a n = A029371 n

end A029371

/-! ## A029371.P5427115479882750270

`A280586(n)+A033483(A111417(n))`
-/

namespace A029371.P5427115479882750270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280586 n + A033483 (A111417 n).toNat

end

end A029371.P5427115479882750270

namespace A029371

/-- `A280586(n)+A033483(A111417(n))` -/
def P5427115479882750270.Spec : Prop :=
  ∀ n, P5427115479882750270.a n = A029371 n

end A029371

/-! ## A029371.P18166529782200333492

`A114374(n)-A277165(A003242(n))`
-/

namespace A029371.P18166529782200333492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114374 n - A277165 (A003242 n).toNat

end

end A029371.P18166529782200333492

namespace A029371

/-- `A114374(n)-A277165(A003242(n))` -/
def P18166529782200333492.Spec : Prop :=
  ∀ n, P18166529782200333492.a n = A029371 n

end A029371

/-! ## A029371.P16379861902552089230

`A267263(A280125(n)^A007306(n))`
-/

namespace A029371.P16379861902552089230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (SequenceMachineLib.roundAway ((A280125 n : ℚ) ^ (A007306 n : ℤ))).toNat

end

end A029371.P16379861902552089230

namespace A029371

/-- `A267263(A280125(n)^A007306(n))` -/
def P16379861902552089230.Spec : Prop :=
  ∀ n, P16379861902552089230.a n = A029371 n

end A029371

/-!
# A029372: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^10)*(1-x^11)).

The programs for A029372, the canonical program `A029372.P2672987048635236464` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029372 has offset 0).

The definition of A029372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029372.P2672987048635236464

`A029239(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029372

/-- `A029239(n)-a(n-2)` -/
def P2672987048635236464.Spec : Prop :=
  ∀ n, P2672987048635236464.a n = A029372 n

theorem P2672987048635236464.correct : P2672987048635236464.Spec := by
  intro n
  simp only [A029372]

end A029372

/-! ## A029372.P5471670481138775421

`A029377(n)+A029445(n)-A025926(n)`
-/

namespace A029372.P5471670481138775421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029445 n - A025926 n)

end

end A029372.P5471670481138775421

namespace A029372

/-- `A029377(n)+A029445(n)-A025926(n)` -/
def P5471670481138775421.Spec : Prop :=
  ∀ n, P5471670481138775421.a n = A029372 n

theorem P5471670481138775421.correct : P5471670481138775421.Spec := by
  intro n
  simp only [A029372, Nat.add_sub_cancel, A029372.P5471670481138775421.a, A029372.P2672987048635236464.a, A025926, A025926.P18037225688025791001.a, A029239, A029239.P14692552077046529193.a, A029377, A029377.P9082731251158770194.a, A029445, A029445.P17442222994120643145.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029130, A029130.P9139947445189529959.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029412, A029412.P8218405848832406386.a, A024000, A024000.P8748414335487061084.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029391, A029391.P12825542684118861897.a, A025796, A025796.P17123033237818759149.a, A025827, A025827.P17085874073192218021.a, A029072, A029072.P16720113097825012275.a, A029128, A029128.P7892556659566413608.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029243, A029243.P10472737080434967019.a, A029290, A029290.P16762149366517590486.a, A029357, A029357.P1479724606091517717.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029372

/-! ## A029372.P11446114103646412487

`A029192(n)+A029445(n)-A029224(n)`
-/

namespace A029372.P11446114103646412487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 n + (A029445 n - A029224 n)

end

end A029372.P11446114103646412487

namespace A029372

/-- `A029192(n)+A029445(n)-A029224(n)` -/
def P11446114103646412487.Spec : Prop :=
  ∀ n, P11446114103646412487.a n = A029372 n

end A029372

/-! ## A029372.P5962291222162961548

`A029240(n)+A029377(n)-A029244(n)`
-/

namespace A029372.P5962291222162961548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029377 n - A029244 n)

end

end A029372.P5962291222162961548

namespace A029372

/-- `A029240(n)+A029377(n)-A029244(n)` -/
def P5962291222162961548.Spec : Prop :=
  ∀ n, P5962291222162961548.a n = A029372 n

theorem P5962291222162961548.correct : P5962291222162961548.Spec := by
  intro n
  simp only [A029372, Nat.add_sub_cancel, A029372.P5962291222162961548.a, A029372.P2672987048635236464.a, A029239, A029239.P14692552077046529193.a, A029240, A029240.P15289134274771874386.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029377, A029377.P9082731251158770194.a, A025926, A025926.P18037225688025791001.a, A029130, A029130.P9139947445189529959.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029445, A029445.P17442222994120643145.a, A024000, A024000.P8748414335487061084.a, A025827, A025827.P17085874073192218021.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, A029357, A029357.P1479724606091517717.a, A029412, A029412.P8218405848832406386.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029128, A029128.P7892556659566413608.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, A029295, A029295.P6904684891100908360.a, A029303, A029303.P996504278850235236.a, A029349, A029349.P5476095844287341884.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029391, A029391.P12825542684118861897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029372

/-! ## A029372.P15309111359324801921

`A029353(n)+A029406(n)-A029384(n)`
-/

namespace A029372.P15309111359324801921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029353 n + (A029406 n - A029384 n)

end

end A029372.P15309111359324801921

namespace A029372

/-- `A029353(n)+A029406(n)-A029384(n)` -/
def P15309111359324801921.Spec : Prop :=
  ∀ n, P15309111359324801921.a n = A029372 n

theorem P15309111359324801921.correct : P15309111359324801921.Spec := by
  intro n
  simp only [A029372, Nat.add_sub_cancel, A029372.P15309111359324801921.a, A029372.P2672987048635236464.a, A029239, A029239.P14692552077046529193.a, A029353, A029353.P14895594492322350558.a, A029384, A029384.P5607878437325388803.a, A029406, A029406.P550328618006401562.a, A029130, A029130.P9139947445189529959.a, A029264, A029264.P8381988870702455244.a, A029283, A029283.P10680134094684783138.a, A024000, A024000.P8748414335487061084.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, A029128, A029128.P7892556659566413608.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029372

/-! ## A029372.P16594435511018774578

`A029358(n)+A029445(n)-A029431(n)`
-/

namespace A029372.P16594435511018774578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029445 n - A029431 n)

end

end A029372.P16594435511018774578

namespace A029372

/-- `A029358(n)+A029445(n)-A029431(n)` -/
def P16594435511018774578.Spec : Prop :=
  ∀ n, P16594435511018774578.a n = A029372 n

end A029372

/-!
# A029373: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^11)*(1-x^12)).

The programs for A029373, the canonical program `A029373.P15134939405955312355` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029373 has offset 0).

The definition of A029373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029373.P14570508544336117685

`A029240(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029373.P14570508544336117685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029240 n - a (n - 2)

end

end A029373.P14570508544336117685

namespace A029373

/-- `A029240(n)-a(n-2)` -/
def P14570508544336117685.Spec : Prop :=
  ∀ n, P14570508544336117685.a n = A029373 n

end A029373

/-! ## A029373.P17184409947243480797

`A025922(n)+A029362(n)-A029437(n)`
-/

namespace A029373.P17184409947243480797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029362 n - A029437 n)

end

end A029373.P17184409947243480797

namespace A029373

/-- `A025922(n)+A029362(n)-A029437(n)` -/
def P17184409947243480797.Spec : Prop :=
  ∀ n, P17184409947243480797.a n = A029373 n

theorem P17184409947243480797.correct : P17184409947243480797.Spec := by
  intro n
  simp only [A029373, Nat.add_sub_cancel, A029373.P17184409947243480797.a, A029373.P15134939405955312355.a, A025922, A025922.P6708222772634296198.a, A029057, A029057.P12806209273119762580.a, A029079, A029079.P14680622646069132485.a, A029265, A029265.P2700836718253899269.a, A029362, A029362.P11804372412846034763.a, A029437, A029437.P16437964794762885094.a, A029225, A029225.P16486130044195142611.a, A029229, A029229.P7840999330443593408.a, A029240, A029240.P15289134274771874386.a, A029427, A029427.P7393202542857614358.a, A025926, A025926.P18037225688025791001.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029120, A029120.P7548353213827858419.a, A029238, A029238.P16766028808299643663.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029444, A029444.P3494668632536997832.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A025925, A025925.P1140353279712905302.a, A029059, A029059.P2593322934177589198.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029129, A029129.P9138012199681895200.f1, A029129.P9138012199681895200.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029412, A029412.P8218405848832406386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029373

/-! ## A029373.P15134939405955312355

`A029079(n)+A029265(n)-A029057(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029373

/-- `A029079(n)+A029265(n)-A029057(n)` -/
def P15134939405955312355.Spec : Prop :=
  ∀ n, P15134939405955312355.a n = A029373 n

theorem P15134939405955312355.correct : P15134939405955312355.Spec := by
  intro n
  simp only [A029373]

end A029373

/-! ## A029373.P3296481491490323153

`A029362(n)+A029408(n)-A029395(n)`
-/

namespace A029373.P3296481491490323153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 n + (A029408 n - A029395 n)

end

end A029373.P3296481491490323153

namespace A029373

/-- `A029362(n)+A029408(n)-A029395(n)` -/
def P3296481491490323153.Spec : Prop :=
  ∀ n, P3296481491490323153.a n = A029373 n

theorem P3296481491490323153.correct : P3296481491490323153.Spec := by
  intro n
  simp only [A029373, Nat.add_sub_cancel, A029373.P3296481491490323153.a, A029373.P15134939405955312355.a, A029057, A029057.P12806209273119762580.a, A029079, A029079.P14680622646069132485.a, A029265, A029265.P2700836718253899269.a, A029362, A029362.P11804372412846034763.a, A029395, A029395.P2989943382135778260.a, A029408, A029408.P16904419876965662283.a, A025922, A025922.P6708222772634296198.a, A029225, A029225.P16486130044195142611.a, A029229, A029229.P7840999330443593408.a, A029240, A029240.P15289134274771874386.a, A029386, A029386.P9736784195507492677.a, A029437, A029437.P16437964794762885094.a, A025926, A025926.P18037225688025791001.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029120, A029120.P7548353213827858419.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029285, A029285.P11066880582987186294.a, A029427, A029427.P7393202542857614358.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A029104, A029104.P9884099918142540300.a, A029115, A029115.P11935386197220723866.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029238, A029238.P16766028808299643663.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029412, A029412.P8218405848832406386.a, A029444, A029444.P3494668632536997832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029373

/-! ## A029373.P5831703627710237708

`A025922(n)-A001489(A029362(n)-A029437(n))`
-/

namespace A029373.P5831703627710237708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n - A001489 (A029362 n - A029437 n).toNat

end

end A029373.P5831703627710237708

namespace A029373

/-- `A025922(n)-A001489(A029362(n)-A029437(n))` -/
def P5831703627710237708.Spec : Prop :=
  ∀ n, P5831703627710237708.a n = A029373 n

end A029373

/-!
# A029374: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^11)).

The programs for A029374, the canonical program `A029374.P16522389890125630689` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029374 has offset 0).

The definition of A029374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029374.P16522389890125630689

`A029241(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029374

/-- `A029241(n)-a(n-2)` -/
def P16522389890125630689.Spec : Prop :=
  ∀ n, P16522389890125630689.a n = A029374 n

theorem P16522389890125630689.correct : P16522389890125630689.Spec := by
  intro n
  simp only [A029374]

end A029374

/-! ## A029374.P106610129192461591

`A029442(abs(4-n))+A029442(n)`
-/

namespace A029374.P106610129192461591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 |4 - (n : ℤ)|.toNat + A029442 n

end

end A029374.P106610129192461591

namespace A029374

/-- `A029442(abs(4-n))+A029442(n)` -/
def P106610129192461591.Spec : Prop :=
  ∀ n, P106610129192461591.a n = A029374 n

end A029374

/-! ## A029374.P10406844043834578425

`A025921(n)+A029081(n)-A029098(n)`
-/

namespace A029374.P10406844043834578425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029081 n - A029098 n)

end

end A029374.P10406844043834578425

namespace A029374

/-- `A025921(n)+A029081(n)-A029098(n)` -/
def P10406844043834578425.Spec : Prop :=
  ∀ n, P10406844043834578425.a n = A029374 n

end A029374

/-! ## A029374.P4096117421006611510

`A025921(n)+A029342(n)-A029404(n)`
-/

namespace A029374.P4096117421006611510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029342 n - A029404 n)

end

end A029374.P4096117421006611510

namespace A029374

/-- `A025921(n)+A029342(n)-A029404(n)` -/
def P4096117421006611510.Spec : Prop :=
  ∀ n, P4096117421006611510.a n = A029374 n

end A029374

/-! ## A029374.P11130626160178732220

`A029355(n)+A029409(n)-A029387(n)`
-/

namespace A029374.P11130626160178732220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029355 n + (A029409 n - A029387 n)

end

end A029374.P11130626160178732220

namespace A029374

/-- `A029355(n)+A029409(n)-A029387(n)` -/
def P11130626160178732220.Spec : Prop :=
  ∀ n, P11130626160178732220.a n = A029374 n

theorem P11130626160178732220.correct : P11130626160178732220.Spec := by
  intro n
  simp only [A029374, Nat.add_sub_cancel, A029374.P11130626160178732220.a, A029374.P16522389890125630689.a, A029241, A029241.P4809283722259501140.a, A029355, A029355.P10567033194552355608.a, A029387, A029387.P14372817239229268115.a, A029409, A029409.P7184523161704019906.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029222, A029222.P13450996779978871818.a, A029243, A029243.P10472737080434967019.a, A029286, A029286.P7325490354402353084.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, A005044, A005044.P15996777699151766909.a, A025823, A025823.P2313138981244158637.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029411, A029411.P3027199765007840635.a, A194960, A194960.P13491412766380158050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029374

/-! ## A029374.P1202779378221841191

`Δ[∑[A029404(n)]-A029442(n)]`
-/

namespace A029374.P1202779378221841191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029374.P1202779378221841191

namespace A029374

/-- `Δ[∑[A029404(n)]-A029442(n)]` -/
def P1202779378221841191.Spec : Prop :=
  ∀ n, P1202779378221841191.a n = A029374 n

end A029374

/-! ## A029374.P14820945090419872696

`A029404(n+1)-Δ[A029442(n)]`
-/

namespace A029374.P14820945090419872696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029404 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029374.P14820945090419872696

namespace A029374

/-- `A029404(n+1)-Δ[A029442(n)]` -/
def P14820945090419872696.Spec : Prop :=
  ∀ n, P14820945090419872696.a n = A029374 n

end A029374

/-!
# A029375: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^12)).

The programs for A029375, the canonical program `A029375.P12310892285696023417` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029375 has offset 0).

The definition of A029375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029375.P12310892285696023417

`A029242(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029375

/-- `A029242(n)-a(n-2)` -/
def P12310892285696023417.Spec : Prop :=
  ∀ n, P12310892285696023417.a n = A029375 n

theorem P12310892285696023417.correct : P12310892285696023417.Spec := by
  intro n
  simp only [A029375]

end A029375

/-! ## A029375.P17163101943391214100

`A025874(n)+A029188(n)-A029190(n)`
-/

namespace A029375.P17163101943391214100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A029188 n - A029190 n)

end

end A029375.P17163101943391214100

namespace A029375

/-- `A025874(n)+A029188(n)-A029190(n)` -/
def P17163101943391214100.Spec : Prop :=
  ∀ n, P17163101943391214100.a n = A029375 n

end A029375

/-! ## A029375.P12911737301024881522

`A025920(n)+A029188(n)-A029219(n)`
-/

namespace A029375.P12911737301024881522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n + (A029188 n - A029219 n)

end

end A029375.P12911737301024881522

namespace A029375

/-- `A025920(n)+A029188(n)-A029219(n)` -/
def P12911737301024881522.Spec : Prop :=
  ∀ n, P12911737301024881522.a n = A029375 n

end A029375

/-! ## A029375.P5877715416993556678

`Δ[∑[A029405(n)]-A029443(n)]`
-/

namespace A029375.P5877715416993556678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029375.P5877715416993556678

namespace A029375

/-- `Δ[∑[A029405(n)]-A029443(n)]` -/
def P5877715416993556678.Spec : Prop :=
  ∀ n, P5877715416993556678.a n = A029375 n

end A029375

/-! ## A029375.P3103196934937519854

`A029405(n+1)-Δ[A029443(n)]`
-/

namespace A029375.P3103196934937519854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029405 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029375.P3103196934937519854

namespace A029375

/-- `A029405(n+1)-Δ[A029443(n)]` -/
def P3103196934937519854.Spec : Prop :=
  ∀ n, P3103196934937519854.a n = A029375 n

end A029375

/-!
# A029376: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^11)*(1-x^12)).

The programs for A029376, the canonical program `A029376.P16706943438829377810` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029376 has offset 0).

The definition of A029376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029376.P2653979838445002729

`A029243(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029376.P2653979838445002729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029243 n - a (n - 2)

end

end A029376.P2653979838445002729

namespace A029376

/-- `A029243(n)-a(n-2)` -/
def P2653979838445002729.Spec : Prop :=
  ∀ n, P2653979838445002729.a n = A029376 n

end A029376

/-! ## A029376.P5145942503966920627

`A025925(n)+A029346(n)-A029411(n)`
-/

namespace A029376.P5145942503966920627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n + (A029346 n - A029411 n)

end

end A029376.P5145942503966920627

namespace A029376

/-- `A025925(n)+A029346(n)-A029411(n)` -/
def P5145942503966920627.Spec : Prop :=
  ∀ n, P5145942503966920627.a n = A029376 n

theorem P5145942503966920627.correct : P5145942503966920627.Spec := by
  intro n
  simp only [A029376, Nat.add_sub_cancel, A029376.P5145942503966920627.a, A029376.P16706943438829377810.a, A025925, A025925.P1140353279712905302.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029346, A029346.P15441236893995981458.a, A029411, A029411.P3027199765007840635.a, A025875, A025875.P6817867275474269582.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029365, A029365.P2100240297090772745.a, A029398, A029398.P4533888177158712386.a, A025796, A025796.P17123033237818759149.a, A025913, A025913.P6872223754574144002.a, A029072, A029072.P16720113097825012275.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029232, A029232.P16177588645430596473.a, A057979, A057979.P16537735927241777837.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029376

/-! ## A029376.P16706943438829377810

`A029114(n)+A029346(n)-A029102(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029376

/-- `A029114(n)+A029346(n)-A029102(n)` -/
def P16706943438829377810.Spec : Prop :=
  ∀ n, P16706943438829377810.a n = A029376 n

theorem P16706943438829377810.correct : P16706943438829377810.Spec := by
  intro n
  simp only [A029376]

end A029376

/-! ## A029376.P7532132024590079090

`A029346(n)+A029430(n)-A029389(n)`
-/

namespace A029376.P7532132024590079090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029430 n - A029389 n)

end

end A029376.P7532132024590079090

namespace A029376

/-- `A029346(n)+A029430(n)-A029389(n)` -/
def P7532132024590079090.Spec : Prop :=
  ∀ n, P7532132024590079090.a n = A029376 n

theorem P7532132024590079090.correct : P7532132024590079090.Spec := by
  intro n
  simp only [A029376, Nat.add_sub_cancel, A029376.P7532132024590079090.a, A029376.P16706943438829377810.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029346, A029346.P15441236893995981458.a, A029389, A029389.P6952618262700460227.a, A029430, A029430.P1090642862795637503.a, A025875, A025875.P6817867275474269582.a, A029288, A029288.P10411134377989181800.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A025893, A025893.P10661404492981031019.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029376

/-! ## A029376.P18337584479566535664

`A029365(n)+A029411(n)-A029398(n)`
-/

namespace A029376.P18337584479566535664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 n + (A029411 n - A029398 n)

end

end A029376.P18337584479566535664

namespace A029376

/-- `A029365(n)+A029411(n)-A029398(n)` -/
def P18337584479566535664.Spec : Prop :=
  ∀ n, P18337584479566535664.a n = A029376 n

theorem P18337584479566535664.correct : P18337584479566535664.Spec := by
  intro n
  simp only [A029376, Nat.add_sub_cancel, A029376.P18337584479566535664.a, A029376.P16706943438829377810.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029346, A029346.P15441236893995981458.a, A029365, A029365.P2100240297090772745.a, A029398, A029398.P4533888177158712386.a, A029411, A029411.P3027199765007840635.a, A025875, A025875.P6817867275474269582.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029232, A029232.P16177588645430596473.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A057979, A057979.P16537735927241777837.a, A025914, A025914.P10374659836394469038.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029376

/-!
# A029377: Expansion of 1/((1-x^4)*(1-x^10)*(1-x^11)*(1-x^12)).

The programs for A029377, the canonical program `A029377.P9082731251158770194` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029377 has offset 0).

The definition of A029377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029377.P9082731251158770194

`A029244(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029377

/-- `A029244(n)-a(n-2)` -/
def P9082731251158770194.Spec : Prop :=
  ∀ n, P9082731251158770194.a n = A029377 n

theorem P9082731251158770194.correct : P9082731251158770194.Spec := by
  intro n
  simp only [A029377]

end A029377

/-! ## A029377.P8126701660889199007

`A025875(n)+A029191(n)-A029192(n)`
-/

namespace A029377.P8126701660889199007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029191 n - A029192 n)

end

end A029377.P8126701660889199007

namespace A029377

/-- `A025875(n)+A029191(n)-A029192(n)` -/
def P8126701660889199007.Spec : Prop :=
  ∀ n, P8126701660889199007.a n = A029377 n

end A029377

/-! ## A029377.P15997735861388683019

`A025926(n)+A029192(n)-A029224(n)`
-/

namespace A029377.P15997735861388683019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029192 n - A029224 n)

end

end A029377.P15997735861388683019

namespace A029377

/-- `A025926(n)+A029192(n)-A029224(n)` -/
def P15997735861388683019.Spec : Prop :=
  ∀ n, P15997735861388683019.a n = A029377 n

end A029377

/-! ## A029377.P14179914653783771799

`A029358(n)+A029412(n)-A029391(n)`
-/

namespace A029377.P14179914653783771799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029412 n - A029391 n)

end

end A029377.P14179914653783771799

namespace A029377

/-- `A029358(n)+A029412(n)-A029391(n)` -/
def P14179914653783771799.Spec : Prop :=
  ∀ n, P14179914653783771799.a n = A029377 n

theorem P14179914653783771799.correct : P14179914653783771799.Spec := by
  intro n
  simp only [A029377, Nat.add_sub_cancel, A029377.P14179914653783771799.a, A029377.P9082731251158770194.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029391, A029391.P12825542684118861897.a, A029412, A029412.P8218405848832406386.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029290, A029290.P16762149366517590486.a, A057979, A057979.P16537735927241777837.a, A025827, A025827.P17085874073192218021.a, A025895, A025895.P11568081359664457230.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029357, A029357.P1479724606091517717.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029295, A029295.P6904684891100908360.a, A029303, A029303.P996504278850235236.a, A029349, A029349.P5476095844287341884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029377

/-! ## A029377.P17301366001256737640

`A029367(n)+A029412(n)-A029400(n)`
-/

namespace A029377.P17301366001256737640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 n + (A029412 n - A029400 n)

end

end A029377.P17301366001256737640

namespace A029377

/-- `A029367(n)+A029412(n)-A029400(n)` -/
def P17301366001256737640.Spec : Prop :=
  ∀ n, P17301366001256737640.a n = A029377 n

theorem P17301366001256737640.correct : P17301366001256737640.Spec := by
  intro n
  simp only [A029377, Nat.add_sub_cancel, A029377.P17301366001256737640.a, A029377.P9082731251158770194.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029367, A029367.P16821808984905599140.a, A029400, A029400.P16034242247368147644.a, A029412, A029412.P8218405848832406386.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029350, A029350.P16656462126632644310.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029366, A029366.P2484932440147699760.a, A029380, A029380.P4667319608210398714.a, A029391, A029391.P12825542684118861897.a, A025796, A025796.P17123033237818759149.a, A025827, A025827.P17085874073192218021.a, A029072, A029072.P16720113097825012275.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029233, A029233.P3941505614629625210.a, A029290, A029290.P16762149366517590486.a, A029357, A029357.P1479724606091517717.a, A057979, A057979.P16537735927241777837.a, A025895, A025895.P11568081359664457230.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029295, A029295.P6904684891100908360.a, A029303, A029303.P996504278850235236.a, A029349, A029349.P5476095844287341884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029377

/-! ## A029377.P12959658501963923092

`Δ[∑[A029408(n)]-A029445(n)]`
-/

namespace A029377.P12959658501963923092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029377.P12959658501963923092

namespace A029377

/-- `Δ[∑[A029408(n)]-A029445(n)]` -/
def P12959658501963923092.Spec : Prop :=
  ∀ n, P12959658501963923092.a n = A029377 n

end A029377

/-! ## A029377.P369503399943726054

`A029408(n+1)-Δ[A029445(n)]`
-/

namespace A029377.P369503399943726054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029377.P369503399943726054

namespace A029377

/-- `A029408(n+1)-Δ[A029445(n)]` -/
def P369503399943726054.Spec : Prop :=
  ∀ n, P369503399943726054.a n = A029377 n

end A029377

/-!
# A029378: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^8)).

The programs for A029378, the canonical program `A029378.P16832256264864945457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029378 has offset 0).

The definition of A029378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^8+x^11+x^12+2x^13+x^14+x^15-x^18-x^19-x^20-x^21+x^26))` (program `A029378.P16832256264864945457`, by `A029378.P16832256264864945457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029378.P16832256264864945457

`ogf(1/(1-x^5-x^6-x^7-x^8+x^11+x^12+2x^13+x^14+x^15-x^18-x^19-x^20-x^21+x^26))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029378

/-- `ogf(1/(1-x^5-x^6-x^7-x^8+x^11+x^12+2x^13+x^14+x^15-x^18-x^19-x^20-x^21+x^26))` -/
def P16832256264864945457.Spec : Prop :=
  ∀ n, P16832256264864945457.a n = A029378 n

theorem P16832256264864945457.correct : P16832256264864945457.Spec := by
  intro n
  simp only [A029378]

end A029378

/-! ## A029378.P15295269994836652254

`A029278(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029378.P15295269994836652254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029278 n - a (n - 3)

end

end A029378.P15295269994836652254

namespace A029378

/-- `A029278(n)-a(n-3)` -/
def P15295269994836652254.Spec : Prop :=
  ∀ n, P15295269994836652254.a n = A029378 n

end A029378

/-! ## A029378.P7405530235329941483

`A029414(abs(5-n))+A029414(n)`
-/

namespace A029378.P7405530235329941483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 |5 - (n : ℤ)|.toNat + A029414 n

end

end A029378.P7405530235329941483

namespace A029378

/-- `A029414(abs(5-n))+A029414(n)` -/
def P7405530235329941483.Spec : Prop :=
  ∀ n, P7405530235329941483.a n = A029378 n

end A029378

/-! ## A029378.P17866844434440686042

`A029395(n)+A029415(n)-A025910(n)`
-/

namespace A029378.P17866844434440686042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n + (A029415 n - A025910 n)

end

end A029378.P17866844434440686042

namespace A029378

/-- `A029395(n)+A029415(n)-A025910(n)` -/
def P17866844434440686042.Spec : Prop :=
  ∀ n, P17866844434440686042.a n = A029378 n

end A029378

/-! ## A029378.P8710612521900257149

`A029112(n)+A029395(n)-A029119(n)`
-/

namespace A029378.P8710612521900257149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 n + (A029395 n - A029119 n)

end

end A029378.P8710612521900257149

namespace A029378

/-- `A029112(n)+A029395(n)-A029119(n)` -/
def P8710612521900257149.Spec : Prop :=
  ∀ n, P8710612521900257149.a n = A029378 n

end A029378

/-! ## A029378.P6549686031908087086

`A029091(n+5)-A029106(n+5)`
-/

namespace A029378.P6549686031908087086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029091 (n + 5) - A029106 (n + 5)

end

end A029378.P6549686031908087086

namespace A029378

/-- `A029091(n+5)-A029106(n+5)` -/
def P6549686031908087086.Spec : Prop :=
  ∀ n, P6549686031908087086.a n = A029378 n

end A029378

/-! ## A029378.P10604916531701065736

`A029193(A020715(n))-A029199(A020715(n))`
-/

namespace A029378.P10604916531701065736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029193 (A020715 n).toNat - A029199 (A020715 n).toNat

end

end A029378.P10604916531701065736

namespace A029378

/-- `A029193(A020715(n))-A029199(A020715(n))` -/
def P10604916531701065736.Spec : Prop :=
  ∀ n, P10604916531701065736.a n = A029378 n

end A029378

/-!
# A029379: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^9)).

The programs for A029379, the canonical program `A029379.P15356962400069375582` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029379 has offset 0).

The definition of A029379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^9+x^11+x^12+x^13+x^14+x^15+x^16-x^18-x^20-x^21-x^22+x^27))` (program `A029379.P15356962400069375582`, by `A029379.P15356962400069375582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029379.P15356962400069375582

`ogf(1/(1-x^5-x^6-x^7-x^9+x^11+x^12+x^13+x^14+x^15+x^16-x^18-x^20-x^21-x^22+x^27))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029379

/-- `ogf(1/(1-x^5-x^6-x^7-x^9+x^11+x^12+x^13+x^14+x^15+x^16-x^18-x^20-x^21-x^22+x^27))` -/
def P15356962400069375582.Spec : Prop :=
  ∀ n, P15356962400069375582.a n = A029379 n

theorem P15356962400069375582.correct : P15356962400069375582.Spec := by
  intro n
  simp only [A029379]

end A029379

/-! ## A029379.P7066399516052753646

`A008678(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029379.P7066399516052753646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008678 n - a (n - 3)

end

end A029379.P7066399516052753646

namespace A029379

/-- `A008678(n)-a(n-3)` -/
def P7066399516052753646.Spec : Prop :=
  ∀ n, P7066399516052753646.a n = A029379 n

end A029379

/-! ## A029379.P17653071542722905857

`A029367(2*n)-A029405(2*n+1)`
-/

namespace A029379.P17653071542722905857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n) - A029405 (2 * n + 1)

end

end A029379.P17653071542722905857

namespace A029379

/-- `A029367(2*n)-A029405(2*n+1)` -/
def P17653071542722905857.Spec : Prop :=
  ∀ n, P17653071542722905857.a n = A029379 n

end A029379

/-!
# A029380: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^10)).

The programs for A029380, the canonical program `A029380.P4667319608210398714` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029380 has offset 0).

The definition of A029380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^7-x^10+x^11+x^12+x^13+x^15+x^16+x^17-x^18-x^21-x^22-x^23+x^28))` (program `A029380.P4667319608210398714`, by `A029380.P4667319608210398714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029380.P4667319608210398714

`ogf(1/(1-x^5-x^6-x^7-x^10+x^11+x^12+x^13+x^15+x^16+x^17-x^18-x^21-x^22-x^23+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029380

/-- `ogf(1/(1-x^5-x^6-x^7-x^10+x^11+x^12+x^13+x^15+x^16+x^17-x^18-x^21-x^22-x^23+x^28))` -/
def P4667319608210398714.Spec : Prop :=
  ∀ n, P4667319608210398714.a n = A029380 n

theorem P4667319608210398714.correct : P4667319608210398714.Spec := by
  intro n
  simp only [A029380]

end A029380

/-! ## A029380.P1934726510302516810

`A029279(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029380.P1934726510302516810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029279 n - a (n - 3)

end

end A029380.P1934726510302516810

namespace A029380

/-- `A029279(n)-a(n-3)` -/
def P1934726510302516810.Spec : Prop :=
  ∀ n, P1934726510302516810.a n = A029380 n

end A029380

/-! ## A029380.P3498325514899972805

`A025899(n)+A029093(n)-A029108(n)`
-/

namespace A029380.P3498325514899972805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n + (A029093 n - A029108 n)

end

end A029380.P3498325514899972805

namespace A029380

/-- `A025899(n)+A029093(n)-A029108(n)` -/
def P3498325514899972805.Spec : Prop :=
  ∀ n, P3498325514899972805.a n = A029380 n

end A029380

/-! ## A029380.P1719006506985531762

`A029400(n)+A029420(n)-A025915(n)`
-/

namespace A029380.P1719006506985531762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n + (A029420 n - A025915 n)

end

end A029380.P1719006506985531762

namespace A029380

/-- `A029400(n)+A029420(n)-A025915(n)` -/
def P1719006506985531762.Spec : Prop :=
  ∀ n, P1719006506985531762.a n = A029380 n

end A029380

/-! ## A029380.P5443535102100175313

`A029350(n)+A029400(n)-A029366(n)`
-/

namespace A029380.P5443535102100175313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 n + (A029400 n - A029366 n)

end

end A029380.P5443535102100175313

namespace A029380

/-- `A029350(n)+A029400(n)-A029366(n)` -/
def P5443535102100175313.Spec : Prop :=
  ∀ n, P5443535102100175313.a n = A029380 n

theorem P5443535102100175313.correct : P5443535102100175313.Spec := by
  intro n
  simp only [A029380, Nat.add_sub_cancel, A029380.P5443535102100175313.a, A029380.P4667319608210398714.a, A029350, A029350.P16656462126632644310.a, A029366, A029366.P2484932440147699760.a, A029400, A029400.P16034242247368147644.a, A029233, A029233.P3941505614629625210.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029224, A029224.P11078861318480278839.a, A029357, A029357.P1479724606091517717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029380

/-! ## A029380.P16351170133361920240

`A029400(n)-(A029420(n)-A025915(n))*A057428(n)`
-/

namespace A029380.P16351170133361920240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n - (A029420 n - A025915 n) * A057428 n

end

end A029380.P16351170133361920240

namespace A029380

/-- `A029400(n)-(A029420(n)-A025915(n))*A057428(n)` -/
def P16351170133361920240.Spec : Prop :=
  ∀ n, P16351170133361920240.a n = A029380 n

end A029380

/-!
# A029381: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^11)).

The programs for A029381, the canonical program `A029381.P10530664393287797805` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029381 has offset 0).

The definition of A029381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029381.P10530664393287797805

`A029280(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029381

/-- `A029280(n)-a(n-3)` -/
def P10530664393287797805.Spec : Prop :=
  ∀ n, P10530664393287797805.a n = A029381 n

theorem P10530664393287797805.correct : P10530664393287797805.Spec := by
  intro n
  simp only [A029381]

end A029381

/-! ## A029381.P1263264084081583615

`A029420(abs(5-n))+A029420(n)`
-/

namespace A029381.P1263264084081583615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029420 |5 - (n : ℤ)|.toNat + A029420 n

end

end A029381.P1263264084081583615

namespace A029381

/-- `A029420(abs(5-n))+A029420(n)` -/
def P1263264084081583615.Spec : Prop :=
  ∀ n, P1263264084081583615.a n = A029381 n

end A029381

/-! ## A029381.P12468741036185282878

`A025900(n)+∑[A025885(n)-A025900(n)]`
-/

namespace A029381.P12468741036185282878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n - A025900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029381.P12468741036185282878

namespace A029381

/-- `A025900(n)+∑[A025885(n)-A025900(n)]` -/
def P12468741036185282878.Spec : Prop :=
  ∀ n, P12468741036185282878.a n = A029381 n

end A029381

/-! ## A029381.P14551927089223335980

`A029350(n+1)+A029350(n)-A029335(n+1)`
-/

namespace A029381.P14551927089223335980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 (n + 1) + (A029350 n - A029335 (n + 1))

end

end A029381.P14551927089223335980

namespace A029381

/-- `A029350(n+1)+A029350(n)-A029335(n+1)` -/
def P14551927089223335980.Spec : Prop :=
  ∀ n, P14551927089223335980.a n = A029381 n

end A029381

/-! ## A029381.P13226194116934452359

`A029197(n)-A029437(2*n+3)`
-/

namespace A029381.P13226194116934452359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029197 n - A029437 (2 * n + 3)

end

end A029381.P13226194116934452359

namespace A029381

/-- `A029197(n)-A029437(2*n+3)` -/
def P13226194116934452359.Spec : Prop :=
  ∀ n, P13226194116934452359.a n = A029381 n

end A029381

/-!
# A029382: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^12)).

The programs for A029382, the canonical program `A029382.P7525148470487421479` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029382 has offset 0).

The definition of A029382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029382.P1711683065746096296

`A029281(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029382.P1711683065746096296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029281 n - a (n - 3)

end

end A029382.P1711683065746096296

namespace A029382

/-- `A029281(n)-a(n-3)` -/
def P1711683065746096296.Spec : Prop :=
  ∀ n, P1711683065746096296.a n = A029382 n

end A029382

/-! ## A029382.P1399849820497821355

`A029402(n)+A029422(n)-A025917(n)`
-/

namespace A029382.P1399849820497821355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 n + (A029422 n - A025917 n)

end

end A029382.P1399849820497821355

namespace A029382

/-- `A029402(n)+A029422(n)-A025917(n)` -/
def P1399849820497821355.Spec : Prop :=
  ∀ n, P1399849820497821355.a n = A029382 n

theorem P1399849820497821355.correct : P1399849820497821355.Spec := by
  intro n
  simp only [A029382, Nat.add_sub_cancel, A029382.P1399849820497821355.a, A029382.P7525148470487421479.f1, A029382.P7525148470487421479.a, A025899, A025899.P3962564238194121751.a, A025916, A025916.P2083996258895106641.a, A025917, A025917.P17801303751830098508.a, A029090, A029090.P16425497419154571678.a, A029402, A029402.P12129386215705779190.a, A029422, A029422.P14037114085577055039.a, A029094, A029094.P8415234421619639249.a, A029212, A029212.P383525199876690320.a, A029234, A029234.P4989415662554192308.a, A029315, A029315.P17147396963157737905.a, A029401, A029401.P4755430295429988404.a, A029104, A029104.P9884099918142540300.a, A029125, A029125.P2235379853175947616.a, A029277, A029277.P17981612767777105858.a, A029280, A029280.P14027745827875663436.a, A029305, A029305.P5923973588584456125.a, A025907, A025907.P12793639154697755668.a, A029233, A029233.P3941505614629625210.a, A029235, A029235.P12349426323057609679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029382

/-! ## A029382.P4460189822095139575

`A029090(n)+A029402(n)-A029094(n)`
-/

namespace A029382.P4460189822095139575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029090 n + (A029402 n - A029094 n)

end

end A029382.P4460189822095139575

namespace A029382

/-- `A029090(n)+A029402(n)-A029094(n)` -/
def P4460189822095139575.Spec : Prop :=
  ∀ n, P4460189822095139575.a n = A029382 n

theorem P4460189822095139575.correct : P4460189822095139575.Spec := by
  intro n
  simp only [A029382, Nat.add_sub_cancel, A029382.P4460189822095139575.a, A029382.P7525148470487421479.f1, A029382.P7525148470487421479.a, A025899, A025899.P3962564238194121751.a, A025916, A025916.P2083996258895106641.a, A029090, A029090.P16425497419154571678.a, A029094, A029094.P8415234421619639249.a, A029402, A029402.P12129386215705779190.a, A029212, A029212.P383525199876690320.a, A029234, A029234.P4989415662554192308.a, A029401, A029401.P4755430295429988404.a, A029104, A029104.P9884099918142540300.a, A029125, A029125.P2235379853175947616.a, A029233, A029233.P3941505614629625210.a, A029235, A029235.P12349426323057609679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029382

/-! ## A029382.P12418115920704802122

`A029116(n)+A029402(n)-A029126(n)`
-/

namespace A029382.P12418115920704802122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029116 n + (A029402 n - A029126 n)

end

end A029382.P12418115920704802122

namespace A029382

/-- `A029116(n)+A029402(n)-A029126(n)` -/
def P12418115920704802122.Spec : Prop :=
  ∀ n, P12418115920704802122.a n = A029382 n

end A029382

/-! ## A029382.P7525148470487421479

`A025916(n)+A029090(n)-∑[A025899(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029382

/-- `A025916(n)+A029090(n)-∑[A025899(n)]` -/
def P7525148470487421479.Spec : Prop :=
  ∀ n, P7525148470487421479.a n = A029382 n

theorem P7525148470487421479.correct : P7525148470487421479.Spec := by
  intro n
  simp only [A029382]

end A029382

/-!
# A029383: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^9)).

The programs for A029383, the canonical program `A029383.P17140445609957578355` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029383 has offset 0).

The definition of A029383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^6-x^8-x^9+x^11+x^13+2x^14+x^15+x^17-x^19-x^20-x^22-x^23+x^28))` (program `A029383.P17140445609957578355`, by `A029383.P17140445609957578355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A029383.P17140445609957578355

`ogf(1/(1-x^5-x^6-x^8-x^9+x^11+x^13+2x^14+x^15+x^17-x^19-x^20-x^22-x^23+x^28))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A029383

/-- `ogf(1/(1-x^5-x^6-x^8-x^9+x^11+x^13+2x^14+x^15+x^17-x^19-x^20-x^22-x^23+x^28))` -/
def P17140445609957578355.Spec : Prop :=
  ∀ n, P17140445609957578355.a n = A029383 n

theorem P17140445609957578355.correct : P17140445609957578355.Spec := by
  intro n
  simp only [A029383]

end A029383

/-! ## A029383.P9659295514883815150

`A029282(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029383.P9659295514883815150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029282 n - a (n - 3)

end

end A029383.P9659295514883815150

namespace A029383

/-- `A029282(n)-a(n-3)` -/
def P9659295514883815150.Spec : Prop :=
  ∀ n, P9659295514883815150.a n = A029383 n

end A029383

/-! ## A029383.P10874910556214980538

`A029195(n)+A029393(n)-A029199(n)`
-/

namespace A029383.P10874910556214980538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029195 n + (A029393 n - A029199 n)

end

end A029383.P10874910556214980538

namespace A029383

/-- `A029195(n)+A029393(n)-A029199(n)` -/
def P10874910556214980538.Spec : Prop :=
  ∀ n, P10874910556214980538.a n = A029383 n

end A029383

/-! ## A029383.P3760982553212992613

`A029423(n+1)+A029423(n)-A025918(n+1)`
-/

namespace A029383.P3760982553212992613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (n + 1) + (A029423 n - A025918 (n + 1))

end

end A029383.P3760982553212992613

namespace A029383

/-- `A029423(n+1)+A029423(n)-A025918(n+1)` -/
def P3760982553212992613.Spec : Prop :=
  ∀ n, P3760982553212992613.a n = A029383 n

end A029383

/-! ## A029383.P18169402905980762744

`A029204(n+2)-A029328(n+2)`
-/

namespace A029383.P18169402905980762744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (n + 2) - A029328 (n + 2)

end

end A029383.P18169402905980762744

namespace A029383

/-- `A029204(n+2)-A029328(n+2)` -/
def P18169402905980762744.Spec : Prop :=
  ∀ n, P18169402905980762744.a n = A029383 n

end A029383

/-! ## A029383.P6720695478800166797

`A029195(A020715(n))-A029204(A020715(n))`
-/

namespace A029383.P6720695478800166797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029195 (A020715 n).toNat - A029204 (A020715 n).toNat

end

end A029383.P6720695478800166797

namespace A029383

/-- `A029195(A020715(n))-A029204(A020715(n))` -/
def P6720695478800166797.Spec : Prop :=
  ∀ n, P6720695478800166797.a n = A029383 n

end A029383

/-!
# A029384: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^10)).

The programs for A029384, the canonical program `A029384.P5607878437325388803` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029384 has offset 0).

The definition of A029384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029384.P5607878437325388803

`A029283(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029384

/-- `A029283(n)-a(n-3)` -/
def P5607878437325388803.Spec : Prop :=
  ∀ n, P5607878437325388803.a n = A029384 n

theorem P5607878437325388803.correct : P5607878437325388803.Spec := by
  intro n
  simp only [A029384]

end A029384

/-! ## A029384.P10047763821636657707

`A029407(abs(6-(n-C(n, n²))))+A029407(n)`
-/

namespace A029384.P10047763821636657707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029407 |6 - ((n : ℤ) - (Nat.choose n (n ^ 2) : ℤ))|.toNat + A029407 n

end

end A029384.P10047763821636657707

namespace A029384

/-- `A029407(abs(6-(n-C(n, n²))))+A029407(n)` -/
def P10047763821636657707.Spec : Prop :=
  ∀ n, P10047763821636657707.a n = A029384 n

end A029384

/-! ## A029384.P8200293935750806317

`A029353(n)+A029406(n)-A029372(n)`
-/

namespace A029384.P8200293935750806317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029353 n + (A029406 n - A029372 n)

end

end A029384.P8200293935750806317

namespace A029384

/-- `A029353(n)+A029406(n)-A029372(n)` -/
def P8200293935750806317.Spec : Prop :=
  ∀ n, P8200293935750806317.a n = A029384 n

theorem P8200293935750806317.correct : P8200293935750806317.Spec := by
  intro n
  simp only [A029384, Nat.add_sub_cancel, A029384.P8200293935750806317.a, A029384.P5607878437325388803.a, A029283, A029283.P10680134094684783138.a, A029353, A029353.P14895594492322350558.a, A029372, A029372.P2672987048635236464.a, A029406, A029406.P550328618006401562.a, A029239, A029239.P14692552077046529193.a, A029264, A029264.P8381988870702455244.a, A029130, A029130.P9139947445189529959.a, A024000, A024000.P8748414335487061084.a, A029237, A029237.P12458243396982577582.a, A029241, A029241.P4809283722259501140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029384

/-! ## A029384.P4688205908908372026

`A029407(abs(8-A326178(n+1)))+A029407(n)`
-/

namespace A029384.P4688205908908372026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029407 |8 - A326178 (n + 1)|.toNat + A029407 n

end

end A029384.P4688205908908372026

namespace A029384

/-- `A029407(abs(8-A326178(n+1)))+A029407(n)` -/
def P4688205908908372026.Spec : Prop :=
  ∀ n, P4688205908908372026.a n = A029384 n

end A029384

/-! ## A029384.P7759600031025725381

`A122282(3*n+1)%p?[A329316(n)]`
-/

namespace A029384.P7759600031025725381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122282 (3 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A029384.P7759600031025725381

namespace A029384

/-- `A122282(3*n+1)%p?[A329316(n)]` -/
def P7759600031025725381.Spec : Prop :=
  ∀ n, P7759600031025725381.a n = A029384 n

end A029384

/-!
# A029385: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^11)).

The programs for A029385, the canonical program `A029385.P8997023227907676682` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029385 has offset 0).

The definition of A029385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029385.P8997023227907676682

`A029284(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029385

/-- `A029284(n)-a(n-3)` -/
def P8997023227907676682.Spec : Prop :=
  ∀ n, P8997023227907676682.a n = A029385 n

theorem P8997023227907676682.correct : P8997023227907676682.Spec := by
  intro n
  simp only [A029385]

end A029385

/-! ## A029385.P9952789855673707252

`A348327(A011260(n+1))+A025896(2*n)`
-/

namespace A029385.P9952789855673707252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A011260 (n + 1)).toNat + A025896 (2 * n)

end

end A029385.P9952789855673707252

namespace A029385

/-- `A348327(A011260(n+1))+A025896(2*n)` -/
def P9952789855673707252.Spec : Prop :=
  ∀ n, P9952789855673707252.a n = A029385 n

end A029385

/-! ## A029385.P6517426866269897673

`A029386(lt[A029382(n+1), 3])`
-/

namespace A029385.P6517426866269897673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029382 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029385.P6517426866269897673

namespace A029385

/-- `A029386(lt[A029382(n+1), 3])` -/
def P6517426866269897673.Spec : Prop :=
  ∀ n, P6517426866269897673.a n = A029385 n

end A029385

/-! ## A029385.P15209713996380361500

`gcd(A054907(n), A086971(A336140(n)))`
-/

namespace A029385.P15209713996380361500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054907 n) (A086971 (A336140 n).toNat)

end

end A029385.P15209713996380361500

namespace A029385

/-- `gcd(A054907(n), A086971(A336140(n)))` -/
def P15209713996380361500.Spec : Prop :=
  ∀ n, (P15209713996380361500.a n : ℤ) = A029385 n

end A029385

/-!
# A029386: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^12)).

The programs for A029386, the canonical program `A029386.P9736784195507492677` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029386 has offset 0).

The definition of A029386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029386.P9736784195507492677

`A029285(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029386

/-- `A029285(n)-a(n-3)` -/
def P9736784195507492677.Spec : Prop :=
  ∀ n, P9736784195507492677.a n = A029386 n

theorem P9736784195507492677.correct : P9736784195507492677.Spec := by
  intro n
  simp only [A029386]

end A029386

/-! ## A029386.P565089969622963567

`A029331(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A029386.P565089969622963567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A029331 n - a (n - 4)

end

end A029386.P565089969622963567

namespace A029386

/-- `A029331(n)-a(n-4)` -/
def P565089969622963567.Spec : Prop :=
  ∀ n, P565089969622963567.a n = A029386 n

end A029386

/-! ## A029386.P10952787515164767477

`A029320(abs(1-A004442(n)))`
-/

namespace A029386.P10952787515164767477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 |1 - A004442 n|.toNat

end

end A029386.P10952787515164767477

namespace A029386

/-- `A029320(abs(1-A004442(n)))` -/
def P10952787515164767477.Spec : Prop :=
  ∀ n, P10952787515164767477.a n = A029386 n

end A029386

/-! ## A029386.P6504901745106810375

`A029320(abs(n-A010673(n)))`
-/

namespace A029386.P6504901745106810375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 |(n : ℤ) - A010673 n|.toNat

end

end A029386.P6504901745106810375

namespace A029386

/-- `A029320(abs(n-A010673(n)))` -/
def P6504901745106810375.Spec : Prop :=
  ∀ n, P6504901745106810375.a n = A029386 n

end A029386

/-! ## A029386.P16916124182653593561

`A029320(abs(2-A014681(n+1)))`
-/

namespace A029386.P16916124182653593561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 |2 - A014681 (n + 1)|.toNat

end

end A029386.P16916124182653593561

namespace A029386

/-- `A029320(abs(2-A014681(n+1)))` -/
def P16916124182653593561.Spec : Prop :=
  ∀ n, P16916124182653593561.a n = A029386 n

end A029386

/-! ## A029386.P12450847079419335007

`A029320(abs(A023443(A004442(n))))`
-/

namespace A029386.P12450847079419335007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 |A023443 (A004442 n).toNat|.toNat

end

end A029386.P12450847079419335007

namespace A029386

/-- `A029320(abs(A023443(A004442(n))))` -/
def P12450847079419335007.Spec : Prop :=
  ∀ n, P12450847079419335007.a n = A029386 n

end A029386

/-! ## A029386.P14676050198739807075

`A029320(abs(A014681(n)-A004273(n)))`
-/

namespace A029386.P14676050198739807075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 |A014681 n - A004273 n|.toNat

end

end A029386.P14676050198739807075

namespace A029386

/-- `A029320(abs(A014681(n)-A004273(n)))` -/
def P14676050198739807075.Spec : Prop :=
  ∀ n, P14676050198739807075.a n = A029386 n

end A029386

/-! ## A029386.P11668833444752704523

`A029408(n)+A029427(n)-A025922(n)`
-/

namespace A029386.P11668833444752704523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n + (A029427 n - A025922 n)

end

end A029386.P11668833444752704523

namespace A029386

/-- `A029408(n)+A029427(n)-A025922(n)` -/
def P11668833444752704523.Spec : Prop :=
  ∀ n, P11668833444752704523.a n = A029386 n

theorem P11668833444752704523.correct : P11668833444752704523.Spec := by
  intro n
  simp only [A029386, Nat.add_sub_cancel, A029386.P11668833444752704523.a, A029386.P9736784195507492677.a, A025922, A025922.P6708222772634296198.a, A029285, A029285.P11066880582987186294.a, A029408, A029408.P16904419876965662283.a, A029427, A029427.P7393202542857614358.a, A029225, A029225.P16486130044195142611.a, A029238, A029238.P16766028808299643663.a, A029240, A029240.P15289134274771874386.a, A029444, A029444.P3494668632536997832.a, A025925, A025925.P1140353279712905302.a, A025926, A025926.P18037225688025791001.a, A029057, A029057.P12806209273119762580.a, A029059, A029059.P2593322934177589198.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029129, A029129.P9138012199681895200.f1, A029129.P9138012199681895200.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A025920, A025920.P15830034220356691648.a, A029102, A029102.P10098960513258729900.a, A029104, A029104.P9884099918142540300.a, A029114, A029114.P4067577314729886120.a, A029115, A029115.P11935386197220723866.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029411, A029411.P3027199765007840635.a, A029412, A029412.P8218405848832406386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029386

/-! ## A029386.P17092051048553816878

`A029395(n)+A029427(n)-A029437(n)`
-/

namespace A029386.P17092051048553816878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n + (A029427 n - A029437 n)

end

end A029386.P17092051048553816878

namespace A029386

/-- `A029395(n)+A029427(n)-A029437(n)` -/
def P17092051048553816878.Spec : Prop :=
  ∀ n, P17092051048553816878.a n = A029386 n

theorem P17092051048553816878.correct : P17092051048553816878.Spec := by
  intro n
  simp only [A029386, Nat.add_sub_cancel, A029386.P17092051048553816878.a, A029386.P9736784195507492677.a, A029285, A029285.P11066880582987186294.a, A029395, A029395.P2989943382135778260.a, A029427, A029427.P7393202542857614358.a, A029437, A029437.P16437964794762885094.a, A025922, A025922.P6708222772634296198.a, A029225, A029225.P16486130044195142611.a, A029238, A029238.P16766028808299643663.a, A029362, A029362.P11804372412846034763.a, A029373, A029373.P15134939405955312355.a, A029408, A029408.P16904419876965662283.a, A029444, A029444.P3494668632536997832.a, A025925, A025925.P1140353279712905302.a, A029057, A029057.P12806209273119762580.a, A029059, A029059.P2593322934177589198.a, A029079, A029079.P14680622646069132485.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029129, A029129.P9138012199681895200.f1, A029129.P9138012199681895200.a, A029229, A029229.P7840999330443593408.a, A029240, A029240.P15289134274771874386.a, A029265, A029265.P2700836718253899269.a, A025907, A025907.P12793639154697755668.a, A025920, A025920.P15830034220356691648.a, A025926, A025926.P18037225688025791001.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029120, A029120.P7548353213827858419.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029411, A029411.P3027199765007840635.a, A029445, A029445.P17442222994120643145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029386

/-!
# A029387: Expansion of g.f. 1/((1 - x^5)*(1 - x^6)*(1 - x^9)*(1 - x^10)).

The programs for A029387, the canonical program `A029387.P14372817239229268115` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029387 has offset 0).

The definition of A029387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029387.P14372817239229268115

`A029286(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029387

/-- `A029286(n)-a(n-3)` -/
def P14372817239229268115.Spec : Prop :=
  ∀ n, P14372817239229268115.a n = A029387 n

theorem P14372817239229268115.correct : P14372817239229268115.Spec := by
  intro n
  simp only [A029387]

end A029387

/-! ## A029387.P9635210291781256947

`A029355(n)+A029409(n)-A029374(n)`
-/

namespace A029387.P9635210291781256947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029355 n + (A029409 n - A029374 n)

end

end A029387.P9635210291781256947

namespace A029387

/-- `A029355(n)+A029409(n)-A029374(n)` -/
def P9635210291781256947.Spec : Prop :=
  ∀ n, P9635210291781256947.a n = A029387 n

theorem P9635210291781256947.correct : P9635210291781256947.Spec := by
  intro n
  simp only [A029387, Nat.add_sub_cancel, A029387.P9635210291781256947.a, A029387.P14372817239229268115.a, A029286, A029286.P7325490354402353084.a, A029355, A029355.P10567033194552355608.a, A029374, A029374.P16522389890125630689.a, A029409, A029409.P7184523161704019906.a, A029222, A029222.P13450996779978871818.a, A029241, A029241.P4809283722259501140.a, A029133, A029133.P2070420607738981676.f1, A029133.P2070420607738981676.a, A029134, A029134.P1779727754259986526.f1, A029134.P1779727754259986526.a, A029243, A029243.P10472737080434967019.a, A025924, A025924.P6419062361051786323.a, A025925, A025925.P1140353279712905302.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029387

/-! ## A029387.P11868218038483283543

`A025904(n)+∑[A025862(n)-A025865(n)]`
-/

namespace A029387.P11868218038483283543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 n - A025865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029387.P11868218038483283543

namespace A029387

/-- `A025904(n)+∑[A025862(n)-A025865(n)]` -/
def P11868218038483283543.Spec : Prop :=
  ∀ n, P11868218038483283543.a n = A029387 n

end A029387

/-! ## A029387.P14990495308470549161

`A029422(round(A028751(n+1)/12)+n)`
-/

namespace A029387.P14990495308470549161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 (SequenceMachineLib.roundAway ((A028751 (n + 1) : ℚ) / 12) + (n : ℤ)).toNat

end

end A029387.P14990495308470549161

namespace A029387

/-- `A029422(round(A028751(n+1)/12)+n)` -/
def P14990495308470549161.Spec : Prop :=
  ∀ n, P14990495308470549161.a n = A029387 n

end A029387

/-! ## A029387.P7796658001343578671

`A029422(A047263(n+1)%A029873(n))`
-/

namespace A029387.P7796658001343578671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 (Int.tmod (A047263 (n + 1)) (A029873 n)).toNat

end

end A029387.P7796658001343578671

namespace A029387

/-- `A029422(A047263(n+1)%A029873(n))` -/
def P7796658001343578671.Spec : Prop :=
  ∀ n, P7796658001343578671.a n = A029387 n

end A029387

/-!
# A029388: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)*(1-x^11)).

The programs for A029388, the canonical program `A029388.P9068945981374300045` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029388 has offset 0).

The definition of A029388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029388.P9068945981374300045

`A029287(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029388

/-- `A029287(n)-a(n-3)` -/
def P9068945981374300045.Spec : Prop :=
  ∀ n, P9068945981374300045.a n = A029388 n

theorem P9068945981374300045.correct : P9068945981374300045.Spec := by
  intro n
  simp only [A029388]

end A029388

/-! ## A029388.P4323974135535555215

`A029411(n)+A029428(n)-A025924(n)`
-/

namespace A029388.P4323974135535555215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + (A029428 n - A025924 n)

end

end A029388.P4323974135535555215

namespace A029388

/-- `A029411(n)+A029428(n)-A025924(n)` -/
def P4323974135535555215.Spec : Prop :=
  ∀ n, P4323974135535555215.a n = A029388 n

end A029388

/-! ## A029388.P11144774348810232806

`A025878(n)*A285572(A304713(3*(n+1)))`
-/

namespace A029388.P11144774348810232806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025878 n * A285572 (A304713 (3 * (n + 1))).toNat

end

end A029388.P11144774348810232806

namespace A029388

/-- `A025878(n)*A285572(A304713(3*(n+1)))` -/
def P11144774348810232806.Spec : Prop :=
  ∀ n, P11144774348810232806.a n = A029388 n

end A029388

/-! ## A029388.P12384584219936340163

`A025897(eq[A065883(n+1), A348553(n)])`
-/

namespace A029388.P12384584219936340163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029388.P12384584219936340163

namespace A029388

/-- `A025897(eq[A065883(n+1), A348553(n)])` -/
def P12384584219936340163.Spec : Prop :=
  ∀ n, P12384584219936340163.a n = A029388 n

end A029388

/-! ## A029388.P1641380900411687582

`A269248(A017914(n+1))`
-/

namespace A029388.P1641380900411687582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269248 (A017914 (n + 1)).toNat

end

end A029388.P1641380900411687582

namespace A029388

/-- `A269248(A017914(n+1))` -/
def P1641380900411687582.Spec : Prop :=
  ∀ n, P1641380900411687582.a n = A029388 n

end A029388

/-!
# A029389: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)*(1-x^12)).

The programs for A029389, the canonical program `A029389.P6952618262700460227` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029389 has offset 0).

The definition of A029389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029389.P6952618262700460227

`A029288(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029389

/-- `A029288(n)-a(n-3)` -/
def P6952618262700460227.Spec : Prop :=
  ∀ n, P6952618262700460227.a n = A029389 n

theorem P6952618262700460227.correct : P6952618262700460227.Spec := by
  intro n
  simp only [A029389]

end A029389

/-! ## A029389.P3244985497906621775

`A029429(abs(5-n))+A029429(n)`
-/

namespace A029389.P3244985497906621775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 |5 - (n : ℤ)|.toNat + A029429 n

end

end A029389.P3244985497906621775

namespace A029389

/-- `A029429(abs(5-n))+A029429(n)` -/
def P3244985497906621775.Spec : Prop :=
  ∀ n, P3244985497906621775.a n = A029389 n

end A029389

/-! ## A029389.P17940658179340779384

`A029327(A047469(n+1)%A004277(n))`
-/

namespace A029389.P17940658179340779384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (Int.tmod (A047469 (n + 1)) (A004277 n)).toNat

end

end A029389.P17940658179340779384

namespace A029389

/-- `A029327(A047469(n+1)%A004277(n))` -/
def P17940658179340779384.Spec : Prop :=
  ∀ n, P17940658179340779384.a n = A029389 n

end A029389

/-! ## A029389.P15177914232731594125

`A025881(n)+A029274(n)-A029277(n)`
-/

namespace A029389.P15177914232731594125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n + (A029274 n - A029277 n)

end

end A029389.P15177914232731594125

namespace A029389

/-- `A025881(n)+A029274(n)-A029277(n)` -/
def P15177914232731594125.Spec : Prop :=
  ∀ n, P15177914232731594125.a n = A029389 n

end A029389

/-! ## A029389.P15384439886683198938

`A029411(n)+A029430(n)-A025925(n)`
-/

namespace A029389.P15384439886683198938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + (A029430 n - A025925 n)

end

end A029389.P15384439886683198938

namespace A029389

/-- `A029411(n)+A029430(n)-A025925(n)` -/
def P15384439886683198938.Spec : Prop :=
  ∀ n, P15384439886683198938.a n = A029389 n

theorem P15384439886683198938.correct : P15384439886683198938.Spec := by
  intro n
  simp only [A029389, Nat.add_sub_cancel, A029389.P15384439886683198938.a, A029389.P6952618262700460227.a, A025925, A025925.P1140353279712905302.a, A029288, A029288.P10411134377989181800.a, A029411, A029411.P3027199765007840635.a, A029430, A029430.P1090642862795637503.a, A025893, A025893.P10661404492981031019.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029365, A029365.P2100240297090772745.a, A029376, A029376.P16706943438829377810.a, A029398, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029232, A029232.P16177588645430596473.a, A029346, A029346.P15441236893995981458.a, A025875, A025875.P6817867275474269582.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029389

/-!
# A029390: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^11)).

The programs for A029390, the canonical program `A029390.P9870324197793234391` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029390 has offset 0).

The definition of A029390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029390.P9870324197793234391

`A029289(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029390

/-- `A029289(n)-a(n-3)` -/
def P9870324197793234391.Spec : Prop :=
  ∀ n, P9870324197793234391.a n = A029390 n

theorem P9870324197793234391.correct : P9870324197793234391.Spec := by
  intro n
  simp only [A029390]

end A029390

/-! ## A029390.P1221169372227731106

`A025906(n)+A029103(n)-A029115(n)`
-/

namespace A029390.P1221169372227731106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n + (A029103 n - A029115 n)

end

end A029390.P1221169372227731106

namespace A029390

/-- `A025906(n)+A029103(n)-A029115(n)` -/
def P1221169372227731106.Spec : Prop :=
  ∀ n, P1221169372227731106.a n = A029390 n

end A029390

/-! ## A029390.P10669190011668211543

`A029103(n)+A029428(n)-A029114(n)`
-/

namespace A029390.P10669190011668211543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029428 n - A029114 n)

end

end A029390.P10669190011668211543

namespace A029390

/-- `A029103(n)+A029428(n)-A029114(n)` -/
def P10669190011668211543.Spec : Prop :=
  ∀ n, P10669190011668211543.a n = A029390 n

end A029390

/-! ## A029390.P9274472512413432598

`A029103(n+5)-A029115(n+5)`
-/

namespace A029390.P9274472512413432598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 (n + 5) - A029115 (n + 5)

end

end A029390.P9274472512413432598

namespace A029390

/-- `A029103(n+5)-A029115(n+5)` -/
def P9274472512413432598.Spec : Prop :=
  ∀ n, P9274472512413432598.a n = A029390 n

end A029390

/-! ## A029390.P16206245323955175750

`A259361(A048766(A074062(n)²))`
-/

namespace A029390.P16206245323955175750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A048766 (A074062 n ^ 2).toNat).toNat

end

end A029390.P16206245323955175750

namespace A029390

/-- `A259361(A048766(A074062(n)²))` -/
def P16206245323955175750.Spec : Prop :=
  ∀ n, P16206245323955175750.a n = A029390 n

end A029390

/-!
# A029391: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^12)).

The programs for A029391, the canonical program `A029391.P12825542684118861897` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029391 has offset 0).

The definition of A029391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029391.P12825542684118861897

`A029290(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029391

/-- `A029290(n)-a(n-3)` -/
def P12825542684118861897.Spec : Prop :=
  ∀ n, P12825542684118861897.a n = A029391 n

theorem P12825542684118861897.correct : P12825542684118861897.Spec := by
  intro n
  simp only [A029391]

end A029391

/-! ## A029391.P17772786549790236087

`A029104(n)-A029169(xor(1, n))`
-/

namespace A029391.P17772786549790236087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n - A029169 (Nat.xor 1 n)

end

end A029391.P17772786549790236087

namespace A029391

/-- `A029104(n)-A029169(xor(1, n))` -/
def P17772786549790236087.Spec : Prop :=
  ∀ n, P17772786549790236087.a n = A029391 n

end A029391

/-! ## A029391.P6420610153489453560

`A029104(n)-A029169(A004442(n))`
-/

namespace A029391.P6420610153489453560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n - A029169 (A004442 n).toNat

end

end A029391.P6420610153489453560

namespace A029391

/-- `A029104(n)-A029169(A004442(n))` -/
def P6420610153489453560.Spec : Prop :=
  ∀ n, P6420610153489453560.a n = A029391 n

end A029391

/-! ## A029391.P15391907635960680183

`A029412(n)+A029431(n)-A025926(n)`
-/

namespace A029391.P15391907635960680183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029412 n + (A029431 n - A025926 n)

end

end A029391.P15391907635960680183

namespace A029391

/-- `A029412(n)+A029431(n)-A025926(n)` -/
def P15391907635960680183.Spec : Prop :=
  ∀ n, P15391907635960680183.a n = A029391 n

end A029391

/-! ## A029391.P14918026482109995204

`A029104(n)+A029431(n)-A029115(n)`
-/

namespace A029391.P14918026482109995204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n + (A029431 n - A029115 n)

end

end A029391.P14918026482109995204

namespace A029391

/-- `A029104(n)+A029431(n)-A029115(n)` -/
def P14918026482109995204.Spec : Prop :=
  ∀ n, P14918026482109995204.a n = A029391 n

end A029391

/-! ## A029391.P16158710094436479633

`A029358(n)+A029400(n)-A029367(n)`
-/

namespace A029391.P16158710094436479633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029400 n - A029367 n)

end

end A029391.P16158710094436479633

namespace A029391

/-- `A029358(n)+A029400(n)-A029367(n)` -/
def P16158710094436479633.Spec : Prop :=
  ∀ n, P16158710094436479633.a n = A029391 n

theorem P16158710094436479633.correct : P16158710094436479633.Spec := by
  intro n
  simp only [A029391, Nat.add_sub_cancel, A029391.P16158710094436479633.a, A029391.P12825542684118861897.a, A029290, A029290.P16762149366517590486.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029367, A029367.P16821808984905599140.a, A029400, A029400.P16034242247368147644.a, A025796, A025796.P17123033237818759149.a, A025895, A025895.P11568081359664457230.a, A029072, A029072.P16720113097825012275.a, A029350, A029350.P16656462126632644310.a, A029366, A029366.P2484932440147699760.a, A029380, A029380.P4667319608210398714.a, A057979, A057979.P16537735927241777837.a, A029233, A029233.P3941505614629625210.a, A029180, A029180.P8611761229927778945.a, A029183, A029183.P16537780647789427942.a, A029224, A029224.P11078861318480278839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029391

/-! ## A029391.P8097843782372792991

`A029358(n)+A029412(n)-A029377(n)`
-/

namespace A029391.P8097843782372792991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029412 n - A029377 n)

end

end A029391.P8097843782372792991

namespace A029391

/-- `A029358(n)+A029412(n)-A029377(n)` -/
def P8097843782372792991.Spec : Prop :=
  ∀ n, P8097843782372792991.a n = A029391 n

theorem P8097843782372792991.correct : P8097843782372792991.Spec := by
  intro n
  simp only [A029391, Nat.add_sub_cancel, A029391.P8097843782372792991.a, A029391.P12825542684118861897.a, A029290, A029290.P16762149366517590486.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A029377, A029377.P9082731251158770194.a, A029412, A029412.P8218405848832406386.a, A025796, A025796.P17123033237818759149.a, A025895, A025895.P11568081359664457230.a, A029072, A029072.P16720113097825012275.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A057979, A057979.P16537735927241777837.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A025827, A025827.P17085874073192218021.a, A029198, A029198.P503402576151086867.a, A029225, A029225.P16486130044195142611.a, A029357, A029357.P1479724606091517717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029391

/-!
# A029392: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^11)*(1-x^12)).

The programs for A029392, the canonical program `A029392.P14960122586233052703` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029392 has offset 0).

The definition of A029392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029392.P14960122586233052703

`A029291(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029392

/-- `A029291(n)-a(n-3)` -/
def P14960122586233052703.Spec : Prop :=
  ∀ n, P14960122586233052703.a n = A029392 n

theorem P14960122586233052703.correct : P14960122586233052703.Spec := by
  intro n
  simp only [A029392]

end A029392

/-! ## A029392.P43235037542571931

`A029431(abs(4-(Δ[(n-1)²]-n)))+A029431(n)`
-/

namespace A029392.P43235037542571931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 |4 - (f1 (n + 1) - f1 n - (n : ℤ))|.toNat + A029431 n

end

end A029392.P43235037542571931

namespace A029392

/-- `A029431(abs(4-(Δ[(n-1)²]-n)))+A029431(n)` -/
def P43235037542571931.Spec : Prop :=
  ∀ n, P43235037542571931.a n = A029392 n

end A029392

/-! ## A029392.P3804491364617607180

`A029431(n+1)+A029431(n)-A025926(n+1)`
-/

namespace A029392.P3804491364617607180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (n + 1) + (A029431 n - A025926 (n + 1))

end

end A029392.P3804491364617607180

namespace A029392

/-- `A029431(n+1)+A029431(n)-A025926(n+1)` -/
def P3804491364617607180.Spec : Prop :=
  ∀ n, P3804491364617607180.a n = A029392 n

end A029392

/-! ## A029392.P2605793266888004263

`A230415(A002061(A053644(n))*A226369(n))`
-/

namespace A029392.P2605793266888004263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230415 (A002061 (A053644 n).toNat * A226369 n).toNat

end

end A029392.P2605793266888004263

namespace A029392

/-- `A230415(A002061(A053644(n))*A226369(n))` -/
def P2605793266888004263.Spec : Prop :=
  ∀ n, P2605793266888004263.a n = A029392 n

end A029392

/-! ## A029392.P3807144301228090724

`A326702(A017837(n)*A090182(n))`
-/

namespace A029392.P3807144301228090724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A017837 n * A090182 n).toNat

end

end A029392.P3807144301228090724

namespace A029392

/-- `A326702(A017837(n)*A090182(n))` -/
def P3807144301228090724.Spec : Prop :=
  ∀ n, P3807144301228090724.a n = A029392 n

end A029392

/-!
# A029393: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^9)).

The programs for A029393, the canonical program `A029393.P17295125386475700853` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029393 has offset 0).

The definition of A029393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029393.P17295125386475700853

`A025883(n)+A029091(n)-A029092(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029393

/-- `A025883(n)+A029091(n)-A029092(n)` -/
def P17295125386475700853.Spec : Prop :=
  ∀ n, P17295125386475700853.a n = A029393 n

theorem P17295125386475700853.correct : P17295125386475700853.Spec := by
  intro n
  simp only [A029393]

end A029393

/-! ## A029393.P3600796041990368891

`A025887(n)+A029092(n)-A029096(n)`
-/

namespace A029393.P3600796041990368891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 n + (A029092 n - A029096 n)

end

end A029393.P3600796041990368891

namespace A029393

/-- `A025887(n)+A029092(n)-A029096(n)` -/
def P3600796041990368891.Spec : Prop :=
  ∀ n, P3600796041990368891.a n = A029393 n

end A029393

/-! ## A029393.P10227781860743190449

`A029092(n)+A029337(n)-A029078(n)`
-/

namespace A029393.P10227781860743190449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 n + (A029337 n - A029078 n)

end

end A029393.P10227781860743190449

namespace A029393

/-- `A029092(n)+A029337(n)-A029078(n)` -/
def P10227781860743190449.Spec : Prop :=
  ∀ n, P10227781860743190449.a n = A029393 n

end A029393

/-!
# A029394: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^10)).

The programs for A029394, there is no canonical definition to state claims against.
-/

/-! ## A029394.P354895218435405037

`A045778(A186020(n))*A304273(A305497(n+2))`
-/

namespace A029394.P354895218435405037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A186020 n).toNat * A304273 (A305497 (n + 2)).toNat

end

end A029394.P354895218435405037

/-! ## A029394.P14815450939628065313

`A342910(A156312(n+1))+A025882(n)`
-/

namespace A029394.P14815450939628065313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A156312 (n + 1)).toNat + A025882 n

end

end A029394.P14815450939628065313

/-! ## A029394.P13503847243644311023

`A188371(∑[A173828(n+1)])+A025882(n)`
-/

namespace A029394.P13503847243644311023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025882 n

end

end A029394.P13503847243644311023

/-! ## A029394.P13931674545712006816

`∑{e}[3*a(n-1), A024996(#)]` with `a(0)=5, a(1)=1, a(2)=0, a(3)=1, a(4)=4`
-/

namespace A029394.P13931674545712006816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 0, 1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A024996 (Nat.factorization (f1 n) p)

end

end A029394.P13931674545712006816

/-!
# A029395: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^11)).

The programs for A029395, the canonical program `A029395.P2989943382135778260` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029395 has offset 0).

The definition of A029395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029395.P9045565962159938604

`A025910(n)+A029378(n)-A029415(n)`
-/

namespace A029395.P9045565962159938604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029378 n - A029415 n)

end

end A029395.P9045565962159938604

namespace A029395

/-- `A025910(n)+A029378(n)-A029415(n)` -/
def P9045565962159938604.Spec : Prop :=
  ∀ n, P9045565962159938604.a n = A029395 n

end A029395

/-! ## A029395.P2989943382135778260

`A029408(n)+A029437(n)-A025922(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029395

/-- `A029408(n)+A029437(n)-A025922(n)` -/
def P2989943382135778260.Spec : Prop :=
  ∀ n, P2989943382135778260.a n = A029395 n

theorem P2989943382135778260.correct : P2989943382135778260.Spec := by
  intro n
  simp only [A029395]

end A029395

/-! ## A029395.P9138866243890254632

`A029119(n)+A029378(n)-A029112(n)`
-/

namespace A029395.P9138866243890254632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029119 n + (A029378 n - A029112 n)

end

end A029395.P9138866243890254632

namespace A029395

/-- `A029119(n)+A029378(n)-A029112(n)` -/
def P9138866243890254632.Spec : Prop :=
  ∀ n, P9138866243890254632.a n = A029395 n

end A029395

/-! ## A029395.P16444547467686219656

`A029386(n)+A029437(n)-A029427(n)`
-/

namespace A029395.P16444547467686219656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 n + (A029437 n - A029427 n)

end

end A029395.P16444547467686219656

namespace A029395

/-- `A029386(n)+A029437(n)-A029427(n)` -/
def P16444547467686219656.Spec : Prop :=
  ∀ n, P16444547467686219656.a n = A029395 n

theorem P16444547467686219656.correct : P16444547467686219656.Spec := by
  intro n
  simp only [A029395, Nat.add_sub_cancel, A029395.P16444547467686219656.a, A029395.P2989943382135778260.a, A025922, A025922.P6708222772634296198.a, A029386, A029386.P9736784195507492677.a, A029408, A029408.P16904419876965662283.a, A029427, A029427.P7393202542857614358.a, A029437, A029437.P16437964794762885094.a, A029225, A029225.P16486130044195142611.a, A029238, A029238.P16766028808299643663.a, A029240, A029240.P15289134274771874386.a, A029285, A029285.P11066880582987186294.a, A029362, A029362.P11804372412846034763.a, A029373, A029373.P15134939405955312355.a, A029444, A029444.P3494668632536997832.a, A025925, A025925.P1140353279712905302.a, A025926, A025926.P18037225688025791001.a, A029057, A029057.P12806209273119762580.a, A029059, A029059.P2593322934177589198.a, A029079, A029079.P14680622646069132485.a, A029116, A029116.P2286183440171770193.f1, A029116.P2286183440171770193.a, A029129, A029129.P9138012199681895200.f1, A029129.P9138012199681895200.a, A029229, A029229.P7840999330443593408.a, A029244, A029244.P8059623005878958167.f1, A029244.P8059623005878958167.a, A029265, A029265.P2700836718253899269.a, A029445, A029445.P17442222994120643145.a, A025907, A025907.P12793639154697755668.a, A025920, A025920.P15830034220356691648.a, A029102, A029102.P10098960513258729900.a, A029104, A029104.P9884099918142540300.a, A029114, A029114.P4067577314729886120.a, A029115, A029115.P11935386197220723866.a, A029120, A029120.P7548353213827858419.a, A029213, A029213.P5201621740032638678.a, A029224, A029224.P11078861318480278839.a, A029372, A029372.P2672987048635236464.a, A029377, A029377.P9082731251158770194.a, A029411, A029411.P3027199765007840635.a, A029412, A029412.P8218405848832406386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029395

/-! ## A029395.P799213197429223266

`A029378(n+5)-A029415(n+5)`
-/

namespace A029395.P799213197429223266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029378 (n + 5) - A029415 (n + 5)

end

end A029395.P799213197429223266

namespace A029395

/-- `A029378(n+5)-A029415(n+5)` -/
def P799213197429223266.Spec : Prop :=
  ∀ n, P799213197429223266.a n = A029395 n

end A029395

/-!
# A029396: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^12)).

The programs for A029396, the canonical program `A029396.P16962163078031394161` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029396 has offset 0).

The definition of A029396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029396.P3453744849194002044

`Δ[∑[A029414(n)]-A029436(n)]`
-/

namespace A029396.P3453744849194002044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029396.P3453744849194002044

namespace A029396

/-- `Δ[∑[A029414(n)]-A029436(n)]` -/
def P3453744849194002044.Spec : Prop :=
  ∀ n, P3453744849194002044.a n = A029396 n

end A029396

/-! ## A029396.P1514355919371597971

`A029414(n+1)-Δ[A029436(n)]`
-/

namespace A029396.P1514355919371597971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029396.P1514355919371597971

namespace A029396

/-- `A029414(n+1)-Δ[A029436(n)]` -/
def P1514355919371597971.Spec : Prop :=
  ∀ n, P1514355919371597971.a n = A029396 n

end A029396

/-! ## A029396.P16962163078031394161

`A029207(n+5)-A029229(n+5)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029396

/-- `A029207(n+5)-A029229(n+5)` -/
def P16962163078031394161.Spec : Prop :=
  ∀ n, P16962163078031394161.a n = A029396 n

theorem P16962163078031394161.correct : P16962163078031394161.Spec := by
  intro n
  simp only [A029396]

end A029396

/-! ## A029396.P9265964869078511005

`A029440(lt[A356602(2*(n+1)), A004016(n)])`
-/

namespace A029396.P9265964869078511005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356602 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029440 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029396.P9265964869078511005

namespace A029396

/-- `A029440(lt[A356602(2*(n+1)), A004016(n)])` -/
def P9265964869078511005.Spec : Prop :=
  ∀ n, P9265964869078511005.a n = A029396 n

end A029396

/-! ## A029396.P10065706010096470112

`A008616(n)-A260394(A052952(n))`
-/

namespace A029396.P10065706010096470112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n - A260394 (A052952 n).toNat

end

end A029396.P10065706010096470112

namespace A029396

/-- `A008616(n)-A260394(A052952(n))` -/
def P10065706010096470112.Spec : Prop :=
  ∀ n, P10065706010096470112.a n = A029396 n

end A029396

/-!
# A029397: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^10)).

The programs for A029397, the canonical program `A029397.P14796845233603817795` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029397 has offset 0).

The definition of A029397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029397.P14796845233603817795

`A025912(n)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029397

/-- `A025912(n)+a(n-5)` -/
def P14796845233603817795.Spec : Prop :=
  ∀ n, P14796845233603817795.a n = A029397 n

theorem P14796845233603817795.correct : P14796845233603817795.Spec := by
  intro n
  simp only [A029397]

end A029397

/-! ## A029397.P9230169472573888874

`A000002(A172288(n))*A025883(n)`
-/

namespace A029397.P9230169472573888874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A172288 n).toNat * A025883 n

end

end A029397.P9230169472573888874

namespace A029397

/-- `A000002(A172288(n))*A025883(n)` -/
def P9230169472573888874.Spec : Prop :=
  ∀ n, P9230169472573888874.a n = A029397 n

end A029397

/-! ## A029397.P16900981069375542553

`A336356(A018081(n))+A025884(n)`
-/

namespace A029397.P16900981069375542553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A018081 n).toNat + A025884 n

end

end A029397.P16900981069375542553

namespace A029397

/-- `A336356(A018081(n))+A025884(n)` -/
def P16900981069375542553.Spec : Prop :=
  ∀ n, P16900981069375542553.a n = A029397 n

end A029397

/-! ## A029397.P15644818173804432357

`A025886(lt[A025843(n+4), 3])`
-/

namespace A029397.P15644818173804432357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029397.P15644818173804432357

namespace A029397

/-- `A025886(lt[A025843(n+4), 3])` -/
def P15644818173804432357.Spec : Prop :=
  ∀ n, P15644818173804432357.a n = A029397 n

end A029397

/-! ## A029397.P7143166427587262666

`A328028(A005179(n+1))%A004736(n+2)`
-/

namespace A029397.P7143166427587262666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328028 (A005179 (n + 1)).toNat) (A004736 (n + 2))

end

end A029397.P7143166427587262666

namespace A029397

/-- `A328028(A005179(n+1))%A004736(n+2)` -/
def P7143166427587262666.Spec : Prop :=
  ∀ n, P7143166427587262666.a n = A029397 n

end A029397

/-!
# A029398: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^11)).

The programs for A029398, the canonical program `A029398.P4533888177158712386` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029398 has offset 0).

The definition of A029398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029398.P4533888177158712386

`A025913(n)+A029209(n)-A029231(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029398

/-- `A025913(n)+A029209(n)-A029231(n)` -/
def P4533888177158712386.Spec : Prop :=
  ∀ n, P4533888177158712386.a n = A029398 n

theorem P4533888177158712386.correct : P4533888177158712386.Spec := by
  intro n
  simp only [A029398]

end A029398

/-! ## A029398.P8166934160215214066

`A029411(n)+A029440(n)-A025925(n)`
-/

namespace A029398.P8166934160215214066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + (A029440 n - A025925 n)

end

end A029398.P8166934160215214066

namespace A029398

/-- `A029411(n)+A029440(n)-A025925(n)` -/
def P8166934160215214066.Spec : Prop :=
  ∀ n, P8166934160215214066.a n = A029398 n

theorem P8166934160215214066.correct : P8166934160215214066.Spec := by
  intro n
  simp only [A029398, Nat.add_sub_cancel, A029398.P8166934160215214066.a, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A025925, A025925.P1140353279712905302.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029411, A029411.P3027199765007840635.a, A029440, A029440.P14008336459079568971.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029365, A029365.P2100240297090772745.a, A029376, A029376.P16706943438829377810.a, A029232, A029232.P16177588645430596473.a, A029346, A029346.P15441236893995981458.a, A025875, A025875.P6817867275474269582.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029398

/-! ## A029398.P8873333043231687709

`A029102(n)+A029440(n)-A029114(n)`
-/

namespace A029398.P8873333043231687709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029102 n + (A029440 n - A029114 n)

end

end A029398.P8873333043231687709

namespace A029398

/-- `A029102(n)+A029440(n)-A029114(n)` -/
def P8873333043231687709.Spec : Prop :=
  ∀ n, P8873333043231687709.a n = A029398 n

theorem P8873333043231687709.correct : P8873333043231687709.Spec := by
  intro n
  simp only [A029398, Nat.add_sub_cancel, A029398.P8873333043231687709.a, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029440, A029440.P14008336459079568971.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029398

/-! ## A029398.P10845357569901989463

`A029365(n)+A029411(n)-A029376(n)`
-/

namespace A029398.P10845357569901989463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 n + (A029411 n - A029376 n)

end

end A029398.P10845357569901989463

namespace A029398

/-- `A029365(n)+A029411(n)-A029376(n)` -/
def P10845357569901989463.Spec : Prop :=
  ∀ n, P10845357569901989463.a n = A029398 n

theorem P10845357569901989463.correct : P10845357569901989463.Spec := by
  intro n
  simp only [A029398, Nat.add_sub_cancel, A029398.P10845357569901989463.a, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029365, A029365.P2100240297090772745.a, A029376, A029376.P16706943438829377810.a, A029411, A029411.P3027199765007840635.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029232, A029232.P16177588645430596473.a, A029346, A029346.P15441236893995981458.a, A025875, A025875.P6817867275474269582.a, A029123, A029123.P5153650302212498034.f1, A029123.P5153650302212498034.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A025914, A025914.P10374659836394469038.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029398

/-! ## A029398.P10094681831879729964

`A029346(n)+A029440(n)-A029376(n)`
-/

namespace A029398.P10094681831879729964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029346 n + (A029440 n - A029376 n)

end

end A029398.P10094681831879729964

namespace A029398

/-- `A029346(n)+A029440(n)-A029376(n)` -/
def P10094681831879729964.Spec : Prop :=
  ∀ n, P10094681831879729964.a n = A029398 n

theorem P10094681831879729964.correct : P10094681831879729964.Spec := by
  intro n
  simp only [A029398, Nat.add_sub_cancel, A029398.P10094681831879729964.a, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029346, A029346.P15441236893995981458.a, A029376, A029376.P16706943438829377810.a, A029440, A029440.P14008336459079568971.a, A025875, A025875.P6817867275474269582.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029331, A029331.P16509172661417459008.a, A029358, A029358.P6065047460035336274.f1, A029358.P6065047460035336274.a, A025796, A025796.P17123033237818759149.a, A029072, A029072.P16720113097825012275.a, A057979, A057979.P16537735927241777837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029398

/-! ## A029398.P617306468459321260

`A029389(n)+A029440(n)-A029430(n)`
-/

namespace A029398.P617306468459321260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029389 n + (A029440 n - A029430 n)

end

end A029398.P617306468459321260

namespace A029398

/-- `A029389(n)+A029440(n)-A029430(n)` -/
def P617306468459321260.Spec : Prop :=
  ∀ n, P617306468459321260.a n = A029398 n

theorem P617306468459321260.correct : P617306468459321260.Spec := by
  intro n
  simp only [A029398, Nat.add_sub_cancel, A029398.P617306468459321260.a, A029398.P4533888177158712386.a, A025913, A025913.P6872223754574144002.a, A029209, A029209.P1341891452107396336.a, A029231, A029231.P839251406571888672.a, A029389, A029389.P6952618262700460227.a, A029430, A029430.P1090642862795637503.a, A029440, A029440.P14008336459079568971.a, A029102, A029102.P10098960513258729900.a, A029114, A029114.P4067577314729886120.a, A029176, A029176.P13308542210357868413.a, A029182, A029182.P10652830424038977819.a, A029288, A029288.P10411134377989181800.a, A025893, A025893.P10661404492981031019.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A029398

/-!
# A029399: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^12)).

The programs for A029399, the canonical program `A029399.P14652591475323631026` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029399 has offset 0).

The definition of A029399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029399.P14652591475323631026

`Δ[∑[A029417(n)]-A029439(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029399

/-- `Δ[∑[A029417(n)]-A029439(n)]` -/
def P14652591475323631026.Spec : Prop :=
  ∀ n, P14652591475323631026.a n = A029399 n

theorem P14652591475323631026.correct : P14652591475323631026.Spec := by
  intro n
  simp only [A029399]

end A029399

/-! ## A029399.P13518647346943881993

`A029417(n+1)-Δ[A029439(n)]`
-/

namespace A029399.P13518647346943881993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029417 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029399.P13518647346943881993

namespace A029399

/-- `A029417(n+1)-Δ[A029439(n)]` -/
def P13518647346943881993.Spec : Prop :=
  ∀ n, P13518647346943881993.a n = A029399 n

end A029399

/-! ## A029399.P797827184386995089

`A025883(n)*A121997(A143632(n))`
-/

namespace A029399.P797827184386995089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n * A121997 (A143632 n).toNat

end

end A029399.P797827184386995089

namespace A029399

/-- `A025883(n)*A121997(A143632(n))` -/
def P797827184386995089.Spec : Prop :=
  ∀ n, P797827184386995089.a n = A029399 n

end A029399

/-! ## A029399.P5315704396446609590

`A025883(n)*A300380(A293724(n))`
-/

namespace A029399.P5315704396446609590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n * A300380 (A293724 n).toNat

end

end A029399.P5315704396446609590

namespace A029399

/-- `A025883(n)*A300380(A293724(n))` -/
def P5315704396446609590.Spec : Prop :=
  ∀ n, P5315704396446609590.a n = A029399 n

end A029399

/-! ## A029399.P13953113469963689599

`A083892(A000204(n+1))+A025883(n)`
-/

namespace A029399.P13953113469963689599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (A000204 (n + 1)).toNat + A025883 n

end

end A029399.P13953113469963689599

namespace A029399

/-- `A083892(A000204(n+1))+A025883(n)` -/
def P13953113469963689599.Spec : Prop :=
  ∀ n, P13953113469963689599.a n = A029399 n

end A029399

