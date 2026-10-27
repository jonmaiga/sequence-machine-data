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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110001: n followed by n^2 followed by n^3 followed by n^4.

The programs for A110001, the canonical program `A110001.P16280007747613036978` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110001 has offset 1).

The definition of A110001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110001.P16280007747613036978

`A008621(n)^(and(3, n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110001

/-- `A008621(n)^(and(3, n)+1)` -/
def P16280007747613036978.Spec : Prop :=
  ∀ n, P16280007747613036978.a n = A110001 (n + 1)

theorem P16280007747613036978.correct : P16280007747613036978.Spec := by
  intro n
  simp only [A110001, Nat.add_sub_cancel]

end A110001

/-! ## A110001.P8821501506701067611

`(A002265(n)+1)^(n%4+1)`
-/

namespace A110001.P8821501506701067611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) ^ (n % 4 + 1)

end

end A110001.P8821501506701067611

namespace A110001

/-- `(A002265(n)+1)^(n%4+1)` -/
def P8821501506701067611.Spec : Prop :=
  ∀ n, P8821501506701067611.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P11507723140232742903

`A110003(A116966(n))`
-/

namespace A110001.P11507723140232742903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A116966 n).toNat

end

end A110001.P11507723140232742903

namespace A110001

/-- `A110003(A116966(n))` -/
def P11507723140232742903.Spec : Prop :=
  ∀ n, P11507723140232742903.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P17857902120678424992

`A110008(A263449(n))`
-/

namespace A110001.P17857902120678424992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A263449 n).toNat

end

end A110001.P17857902120678424992

namespace A110001

/-- `A110008(A263449(n))` -/
def P17857902120678424992.Spec : Prop :=
  ∀ n, P17857902120678424992.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P15573718487053726161

`A110485(A014681(n+1))`
-/

namespace A110001.P15573718487053726161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A014681 (n + 1)).toNat

end

end A110001.P15573718487053726161

namespace A110001

/-- `A110485(A014681(n+1))` -/
def P15573718487053726161.Spec : Prop :=
  ∀ n, P15573718487053726161.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P6529165978976312478

`A110009(A056699(n+1))`
-/

namespace A110001.P6529165978976312478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A056699 (n + 1)).toNat

end

end A110001.P6529165978976312478

namespace A110001

/-- `A110009(A056699(n+1))` -/
def P6529165978976312478.Spec : Prop :=
  ∀ n, P6529165978976312478.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P5769958197240989636

`A110650(A067060(n+1))`
-/

namespace A110001.P5769958197240989636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A067060 (n + 1)).toNat

end

end A110001.P5769958197240989636

namespace A110001

/-- `A110650(A067060(n+1))` -/
def P5769958197240989636.Spec : Prop :=
  ∀ n, P5769958197240989636.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P14107594662613696085

`A110485(A103889(n+1))`
-/

namespace A110001.P14107594662613696085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A103889 (n + 1)).toNat

end

end A110001.P14107594662613696085

namespace A110001

/-- `A110485(A103889(n+1))` -/
def P14107594662613696085.Spec : Prop :=
  ∀ n, P14107594662613696085.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P453848316360382339

`A110485(A114112(n+1))`
-/

namespace A110001.P453848316360382339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A114112 (n + 1)).toNat

end

end A110001.P453848316360382339

namespace A110001

/-- `A110485(A114112(n+1))` -/
def P453848316360382339.Spec : Prop :=
  ∀ n, P453848316360382339.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P11023650357162048880

`A110005(A133256(n+1))`
-/

namespace A110001.P11023650357162048880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A133256 (n + 1)).toNat

end

end A110001.P11023650357162048880

namespace A110001

/-- `A110005(A133256(n+1))` -/
def P11023650357162048880.Spec : Prop :=
  ∀ n, P11023650357162048880.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P2279508104539630337

`A110004(A284307(n+1))`
-/

namespace A110001.P2279508104539630337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A284307 (n + 1)).toNat

end

end A110001.P2279508104539630337

namespace A110001

/-- `A110004(A284307(n+1))` -/
def P2279508104539630337.Spec : Prop :=
  ∀ n, P2279508104539630337.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P3931508132447290711

`A110653(A292576(n+1))`
-/

namespace A110001.P3931508132447290711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A292576 (n + 1)).toNat

end

end A110001.P3931508132447290711

namespace A110001

/-- `A110653(A292576(n+1))` -/
def P3931508132447290711.Spec : Prop :=
  ∀ n, P3931508132447290711.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P11313993498368395104

`A110003(n+1)*A110004(n+1)/A110008(n+1)`
-/

namespace A110001.P11313993498368395104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) * A110004 (n + 1) : ℚ) / (A110008 (n + 1) : ℚ)

end

end A110001.P11313993498368395104

namespace A110001

/-- `A110003(n+1)*A110004(n+1)/A110008(n+1)` -/
def P11313993498368395104.Spec : Prop :=
  ∀ n, P11313993498368395104.a n = (A110001 (n + 1) : ℚ)

end A110001

/-! ## A110001.P9582507095304293816

`A110005(n+1)/A110008(n+1)*A110009(n+1)`
-/

namespace A110001.P9582507095304293816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110008 (n + 1) : ℚ) * (A110009 (n + 1) : ℚ)

end

end A110001.P9582507095304293816

namespace A110001

/-- `A110005(n+1)/A110008(n+1)*A110009(n+1)` -/
def P9582507095304293816.Spec : Prop :=
  ∀ n, P9582507095304293816.a n = (A110001 (n + 1) : ℚ)

end A110001

/-! ## A110001.P7311875046334184800

`(A110003(n+1)/A110009(n+1))²*A110008(n+1)`
-/

namespace A110001.P7311875046334184800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110003 (n + 1) : ℚ) / (A110009 (n + 1) : ℚ)) ^ 2 * (A110008 (n + 1) : ℚ)

end

end A110001.P7311875046334184800

namespace A110001

/-- `(A110003(n+1)/A110009(n+1))²*A110008(n+1)` -/
def P7311875046334184800.Spec : Prop :=
  ∀ n, P7311875046334184800.a n = (A110001 (n + 1) : ℚ)

end A110001

/-! ## A110001.P7615661181252263653

`(A110005(n+1)/A110004(n+1))²*A110008(n+1)`
-/

namespace A110001.P7615661181252263653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110005 (n + 1) : ℚ) / (A110004 (n + 1) : ℚ)) ^ 2 * (A110008 (n + 1) : ℚ)

end

end A110001.P7615661181252263653

namespace A110001

/-- `(A110005(n+1)/A110004(n+1))²*A110008(n+1)` -/
def P7615661181252263653.Spec : Prop :=
  ∀ n, P7615661181252263653.a n = (A110001 (n + 1) : ℚ)

end A110001

/-! ## A110001.P15948342653479186823

`A110622(A080412(n+1))`
-/

namespace A110001.P15948342653479186823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A080412 (n + 1)).toNat

end

end A110001.P15948342653479186823

namespace A110001

/-- `A110622(A080412(n+1))` -/
def P15948342653479186823.Spec : Prop :=
  ∀ n, P15948342653479186823.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P12648782312194549081

`A110650(A115659(n+2))`
-/

namespace A110001.P12648782312194549081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A115659 (n + 2)).toNat

end

end A110001.P12648782312194549081

namespace A110001

/-- `A110650(A115659(n+2))` -/
def P12648782312194549081.Spec : Prop :=
  ∀ n, P12648782312194549081.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P6382360456035922367

`A110622(A116966(n+1)-1)`
-/

namespace A110001.P6382360456035922367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A116966 (n + 1) - 1).toNat

end

end A110001.P6382360456035922367

namespace A110001

/-- `A110622(A116966(n+1)-1)` -/
def P6382360456035922367.Spec : Prop :=
  ∀ n, P6382360456035922367.a n = A110001 (n + 1)

end A110001

/-! ## A110001.P6350019034293510074

`A110003(A133256(n+2)-1)`
-/

namespace A110001.P6350019034293510074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A133256 (n + 2) - 1).toNat

end

end A110001.P6350019034293510074

namespace A110001

/-- `A110003(A133256(n+2)-1)` -/
def P6350019034293510074.Spec : Prop :=
  ∀ n, P6350019034293510074.a n = A110001 (n + 1)

end A110001

/-!
# A110002: Palindromes whose perfect deficiency (A109883) is also palindromic.

The programs for A110002, there is no canonical definition to state claims against.
-/

/-! ## A110002.P918699825421524134

`A083434(A286126(n+1))`
-/

namespace A110002.P918699825421524134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A286126 (n + 1)).toNat

end

end A110002.P918699825421524134

/-! ## A110002.P7989265010399567479

`∩[A201061(n+1), A324022(n+1)]`
-/

namespace A110002.P7989265010399567479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110002.P7989265010399567479

/-! ## A110002.P2494089575254876548

`A010785(lt[A064428(n), A370567(n+1)])`
-/

namespace A110002.P2494089575254876548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A110002.P2494089575254876548

/-! ## A110002.P2982252092477932862

`A055640(n+2)*A096106(A322283(n)+n)`
-/

namespace A110002.P2982252092477932862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 2) * A096106 (A322283 n + (n : ℤ)).toNat

end

end A110002.P2982252092477932862

/-! ## A110002.P11462975143134373216

`A064775(A342341(n))*A096106(A322283(n)+n)`
-/

namespace A110002.P11462975143134373216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A342341 n).toNat * A096106 (A322283 n + (n : ℤ)).toNat

end

end A110002.P11462975143134373216

/-!
# A110003: n followed by n^3 followed by n^2 followed by n^4.

The programs for A110003, the canonical program `A110003.P13048558525306348465` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110003 has offset 1).

The definition of A110003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110003.P3484824348939085675

`A110650(xor(2, n)+1)`
-/

namespace A110003.P3484824348939085675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (Nat.xor 2 n + 1)

end

end A110003.P3484824348939085675

namespace A110003

/-- `A110650(xor(2, n)+1)` -/
def P3484824348939085675.Spec : Prop :=
  ∀ n, P3484824348939085675.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P11593962287658494986

`A110653(A092486(n))`
-/

namespace A110003.P11593962287658494986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A092486 n).toNat

end

end A110003.P11593962287658494986

namespace A110003

/-- `A110653(A092486(n))` -/
def P11593962287658494986.Spec : Prop :=
  ∀ n, P11593962287658494986.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P13048558525306348465

`A110001(A116966(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110003

/-- `A110001(A116966(n))` -/
def P13048558525306348465.Spec : Prop :=
  ∀ n, P13048558525306348465.a n = A110003 (n + 1)

theorem P13048558525306348465.correct : P13048558525306348465.Spec := by
  intro n
  simp only [A110003, Nat.add_sub_cancel]

end A110003

/-! ## A110003.P2133808987274463053

`A110009(A263449(n))`
-/

namespace A110003.P2133808987274463053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A263449 n).toNat

end

end A110003.P2133808987274463053

namespace A110003

/-- `A110009(A263449(n))` -/
def P2133808987274463053.Spec : Prop :=
  ∀ n, P2133808987274463053.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P2007111950643718270

`A110650(A004443(n)+1)`
-/

namespace A110003.P2007111950643718270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A004443 n + 1).toNat

end

end A110003.P2007111950643718270

namespace A110003

/-- `A110650(A004443(n)+1)` -/
def P2007111950643718270.Spec : Prop :=
  ∀ n, P2007111950643718270.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P12971918109531164839

`A110008(A056699(n+1))`
-/

namespace A110003.P12971918109531164839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A056699 (n + 1)).toNat

end

end A110003.P12971918109531164839

namespace A110003

/-- `A110008(A056699(n+1))` -/
def P12971918109531164839.Spec : Prop :=
  ∀ n, P12971918109531164839.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P17307233919717299232

`A110001(A080412(n)+1)`
-/

namespace A110003.P17307233919717299232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A080412 n + 1).toNat

end

end A110003.P17307233919717299232

namespace A110003

/-- `A110001(A080412(n)+1)` -/
def P17307233919717299232.Spec : Prop :=
  ∀ n, P17307233919717299232.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P9909328270138891594

`A110004(A133256(n+1))`
-/

namespace A110003.P9909328270138891594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A133256 (n + 1)).toNat

end

end A110003.P9909328270138891594

namespace A110003

/-- `A110004(A133256(n+1))` -/
def P9909328270138891594.Spec : Prop :=
  ∀ n, P9909328270138891594.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P4474648749925665164

`A110009(A159966(n)+1)`
-/

namespace A110003.P4474648749925665164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A159966 n + 1).toNat

end

end A110003.P4474648749925665164

namespace A110003

/-- `A110009(A159966(n)+1)` -/
def P4474648749925665164.Spec : Prop :=
  ∀ n, P4474648749925665164.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P2612359953364209406

`A110653(A159966(n+1))`
-/

namespace A110003.P2612359953364209406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A159966 (n + 1)).toNat

end

end A110003.P2612359953364209406

namespace A110003

/-- `A110653(A159966(n+1))` -/
def P2612359953364209406.Spec : Prop :=
  ∀ n, P2612359953364209406.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P6014090901671778633

`A110650(A256008(n+1))`
-/

namespace A110003.P6014090901671778633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A256008 (n + 1)).toNat

end

end A110003.P6014090901671778633

namespace A110003

/-- `A110650(A256008(n+1))` -/
def P6014090901671778633.Spec : Prop :=
  ∀ n, P6014090901671778633.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P15204433799740421904

`A110005(A284307(n+1))`
-/

namespace A110003.P15204433799740421904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A284307 (n + 1)).toNat

end

end A110003.P15204433799740421904

namespace A110003

/-- `A110005(A284307(n+1))` -/
def P15204433799740421904.Spec : Prop :=
  ∀ n, P15204433799740421904.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P9084779195258147593

`A110622(A298364(n+1))`
-/

namespace A110003.P9084779195258147593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A298364 (n + 1)).toNat

end

end A110003.P9084779195258147593

namespace A110003

/-- `A110622(A298364(n+1))` -/
def P9084779195258147593.Spec : Prop :=
  ∀ n, P9084779195258147593.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P6256325020552293210

`A110001(n+1)/A110004(n+1)*A110008(n+1)`
-/

namespace A110003.P6256325020552293210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110004 (n + 1) : ℚ) * (A110008 (n + 1) : ℚ)

end

end A110003.P6256325020552293210

namespace A110003

/-- `A110001(n+1)/A110004(n+1)*A110008(n+1)` -/
def P6256325020552293210.Spec : Prop :=
  ∀ n, P6256325020552293210.a n = (A110003 (n + 1) : ℚ)

end A110003

/-! ## A110003.P6671604361388812388

`A110005(n+1)/A110004(n+1)*A110009(n+1)`
-/

namespace A110003.P6671604361388812388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110004 (n + 1) : ℚ) * (A110009 (n + 1) : ℚ)

end

end A110003.P6671604361388812388

namespace A110003

/-- `A110005(n+1)/A110004(n+1)*A110009(n+1)` -/
def P6671604361388812388.Spec : Prop :=
  ∀ n, P6671604361388812388.a n = (A110003 (n + 1) : ℚ)

end A110003

/-! ## A110003.P11144654185390816956

`(A110001(n+1)/A110005(n+1))²*A110004(n+1)`
-/

namespace A110003.P11144654185390816956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110001 (n + 1) : ℚ) / (A110005 (n + 1) : ℚ)) ^ 2 * (A110004 (n + 1) : ℚ)

end

end A110003.P11144654185390816956

namespace A110003

/-- `(A110001(n+1)/A110005(n+1))²*A110004(n+1)` -/
def P11144654185390816956.Spec : Prop :=
  ∀ n, P11144654185390816956.a n = (A110003 (n + 1) : ℚ)

end A110003

/-! ## A110003.P17478095487684415671

`A008621(n)^Δ[A187331(n)]`
-/

namespace A110003.P17478095487684415671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A110003.P17478095487684415671

namespace A110003

/-- `A008621(n)^Δ[A187331(n)]` -/
def P17478095487684415671.Spec : Prop :=
  ∀ n, P17478095487684415671.a n = (A110003 (n + 1) : ℚ)

end A110003

/-! ## A110003.P8436173026895235575

`A110653(A263449(n+1)-1)`
-/

namespace A110003.P8436173026895235575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A263449 (n + 1) - 1).toNat

end

end A110003.P8436173026895235575

namespace A110003

/-- `A110653(A263449(n+1)-1)` -/
def P8436173026895235575.Spec : Prop :=
  ∀ n, P8436173026895235575.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P2964469499531089165

`A110622(A056699(n+2)-1)`
-/

namespace A110003.P2964469499531089165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A056699 (n + 2) - 1).toNat

end

end A110003.P2964469499531089165

namespace A110003

/-- `A110622(A056699(n+2)-1)` -/
def P2964469499531089165.Spec : Prop :=
  ∀ n, P2964469499531089165.a n = A110003 (n + 1)

end A110003

/-! ## A110003.P8497418000312085835

`A110001(A133256(n+2)-1)`
-/

namespace A110003.P8497418000312085835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A133256 (n + 2) - 1).toNat

end

end A110003.P8497418000312085835

namespace A110003

/-- `A110001(A133256(n+2)-1)` -/
def P8497418000312085835.Spec : Prop :=
  ∀ n, P8497418000312085835.a n = A110003 (n + 1)

end A110003

/-!
# A110004: n followed by n^3 followed by n^4 followed by n^2.

The programs for A110004, the canonical program `A110004.P6947858922265010117` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110004 has offset 1).

The definition of A110004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110004.P5813917948497959833

`A110651(xor(3, n)+1)`
-/

namespace A110004.P5813917948497959833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (Nat.xor 3 n + 1)

end

end A110004.P5813917948497959833

namespace A110004

/-- `A110651(xor(3, n)+1)` -/
def P5813917948497959833.Spec : Prop :=
  ∀ n, P5813917948497959833.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P18267637212104949110

`A110008(A116966(n))`
-/

namespace A110004.P18267637212104949110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A116966 n).toNat

end

end A110004.P18267637212104949110

namespace A110004

/-- `A110008(A116966(n))` -/
def P18267637212104949110.Spec : Prop :=
  ∀ n, P18267637212104949110.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P4155094853153064157

`A110005(A263449(n))`
-/

namespace A110004.P4155094853153064157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A263449 n).toNat

end

end A110004.P4155094853153064157

namespace A110004

/-- `A110005(A263449(n))` -/
def P4155094853153064157.Spec : Prop :=
  ∀ n, P4155094853153064157.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P12563887380102175139

`A110651(A004444(n)+1)`
-/

namespace A110004.P12563887380102175139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A004444 n + 1).toNat

end

end A110004.P12563887380102175139

namespace A110004

/-- `A110651(A004444(n)+1)` -/
def P12563887380102175139.Spec : Prop :=
  ∀ n, P12563887380102175139.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P6947858922265010117

`A110001(A056699(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110004

/-- `A110001(A056699(n+1))` -/
def P6947858922265010117.Spec : Prop :=
  ∀ n, P6947858922265010117.a n = A110004 (n + 1)

theorem P6947858922265010117.correct : P6947858922265010117.Spec := by
  intro n
  simp only [A110004, Nat.add_sub_cancel]

end A110004

/-! ## A110004.P11147788254498969134

`A110651(A113778(n+1))`
-/

namespace A110004.P11147788254498969134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A113778 (n + 1)).toNat

end

end A110004.P11147788254498969134

namespace A110004

/-- `A110651(A113778(n+1))` -/
def P11147788254498969134.Spec : Prop :=
  ∀ n, P11147788254498969134.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P12780144206773415422

`A110003(A133256(n+1))`
-/

namespace A110004.P12780144206773415422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A133256 (n + 1)).toNat

end

end A110004.P12780144206773415422

namespace A110004

/-- `A110003(A133256(n+1))` -/
def P12780144206773415422.Spec : Prop :=
  ∀ n, P12780144206773415422.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P1962443562107561334

`A110009(A284307(n+1))`
-/

namespace A110004.P1962443562107561334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A284307 (n + 1)).toNat

end

end A110004.P1962443562107561334

namespace A110004

/-- `A110009(A284307(n+1))` -/
def P1962443562107561334.Spec : Prop :=
  ∀ n, P1962443562107561334.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P1331360610481345244

`A110001(n+1)/A110003(n+1)*A110008(n+1)`
-/

namespace A110004.P1331360610481345244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110003 (n + 1) : ℚ) * (A110008 (n + 1) : ℚ)

end

end A110004.P1331360610481345244

namespace A110004

/-- `A110001(n+1)/A110003(n+1)*A110008(n+1)` -/
def P1331360610481345244.Spec : Prop :=
  ∀ n, P1331360610481345244.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P7119574473731092578

`A110005(n+1)/A110003(n+1)*A110009(n+1)`
-/

namespace A110004.P7119574473731092578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110003 (n + 1) : ℚ) * (A110009 (n + 1) : ℚ)

end

end A110004.P7119574473731092578

namespace A110004

/-- `A110005(n+1)/A110003(n+1)*A110009(n+1)` -/
def P7119574473731092578.Spec : Prop :=
  ∀ n, P7119574473731092578.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P15250299627464699073

`(A110005(n+1)/A110001(n+1))²*A110003(n+1)`
-/

namespace A110004.P15250299627464699073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110005 (n + 1) : ℚ) / (A110001 (n + 1) : ℚ)) ^ 2 * (A110003 (n + 1) : ℚ)

end

end A110004.P15250299627464699073

namespace A110004

/-- `(A110005(n+1)/A110001(n+1))²*A110003(n+1)` -/
def P15250299627464699073.Spec : Prop :=
  ∀ n, P15250299627464699073.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P11775476151173912394

`(A110008(n+1)/A110009(n+1))²*A110003(n+1)`
-/

namespace A110004.P11775476151173912394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110008 (n + 1) : ℚ) / (A110009 (n + 1) : ℚ)) ^ 2 * (A110003 (n + 1) : ℚ)

end

end A110004.P11775476151173912394

namespace A110004

/-- `(A110008(n+1)/A110009(n+1))²*A110003(n+1)` -/
def P11775476151173912394.Spec : Prop :=
  ∀ n, P11775476151173912394.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P11335544510667693334

`A110008(A133256(n+2)-1)`
-/

namespace A110004.P11335544510667693334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A133256 (n + 2) - 1).toNat

end

end A110004.P11335544510667693334

namespace A110004

/-- `A110008(A133256(n+2)-1)` -/
def P11335544510667693334.Spec : Prop :=
  ∀ n, P11335544510667693334.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P6837848740462471636

`A110008(n+1)+A110001(n+2)-A110005(n+2)`
-/

namespace A110004.P6837848740462471636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (n + 1) + (A110001 (n + 2) - A110005 (n + 2))

end

end A110004.P6837848740462471636

namespace A110004

/-- `A110008(n+1)+A110001(n+2)-A110005(n+2)` -/
def P6837848740462471636.Spec : Prop :=
  ∀ n, P6837848740462471636.a n = A110004 (n + 1)

end A110004

/-! ## A110004.P17062168784203829274

`A110008(n+1)/A110008(n+2)*A110009(n+2)`
-/

namespace A110004.P17062168784203829274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110008 (n + 1) : ℚ) / (A110008 (n + 2) : ℚ) * (A110009 (n + 2) : ℚ)

end

end A110004.P17062168784203829274

namespace A110004

/-- `A110008(n+1)/A110008(n+2)*A110009(n+2)` -/
def P17062168784203829274.Spec : Prop :=
  ∀ n, P17062168784203829274.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P9822428872421842289

`A110654(A110654(n+1))^A070402(A004442(n+1))`
-/

namespace A110004.P9822428872421842289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A110654 (n + 1)).toNat : ℚ) ^ (A070402 (A004442 (n + 1)).toNat : ℤ)

end

end A110004.P9822428872421842289

namespace A110004

/-- `A110654(A110654(n+1))^A070402(A004442(n+1))` -/
def P9822428872421842289.Spec : Prop :=
  ∀ n, P9822428872421842289.a n = (A110004 (n + 1) : ℚ)

end A110004

/-! ## A110004.P8607762978996999382

`A110654(A110654(n+1))^A070402(3*n)`
-/

namespace A110004.P8607762978996999382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A110654 (n + 1)).toNat : ℚ) ^ (A070402 (3 * n) : ℤ)

end

end A110004.P8607762978996999382

namespace A110004

/-- `A110654(A110654(n+1))^A070402(3*n)` -/
def P8607762978996999382.Spec : Prop :=
  ∀ n, P8607762978996999382.a n = (A110004 (n + 1) : ℚ)

end A110004

/-!
# A110005: n followed by n^2 followed by n^4 followed by n^3.

The programs for A110005, the canonical program `A110005.P16508309867021572198` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110005 has offset 1).

The definition of A110005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110005.P9011461114546388682

`∑[char[4*n]]^((2^(n%4))%5)`
-/

namespace A110005.P9011461114546388682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 ^ (n % 4) % 5)

end

end A110005.P9011461114546388682

namespace A110005

/-- `∑[char[4*n]]^((2^(n%4))%5)` -/
def P9011461114546388682.Spec : Prop :=
  ∀ n, (P9011461114546388682.a n : ℤ) = A110005 (n + 1)

end A110005

/-! ## A110005.P616585736971247501

`A110622((-1)^n+n+1)`
-/

namespace A110005.P616585736971247501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A110005.P616585736971247501

namespace A110005

/-- `A110622((-1)^n+n+1)` -/
def P616585736971247501.Spec : Prop :=
  ∀ n, P616585736971247501.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P15304480872267086283

`A110009(A116966(n))`
-/

namespace A110005.P15304480872267086283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A116966 n).toNat

end

end A110005.P15304480872267086283

namespace A110005

/-- `A110009(A116966(n))` -/
def P15304480872267086283.Spec : Prop :=
  ∀ n, P15304480872267086283.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P16508309867021572198

`A110004(A263449(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110005

/-- `A110004(A263449(n))` -/
def P16508309867021572198.Spec : Prop :=
  ∀ n, P16508309867021572198.a n = A110005 (n + 1)

theorem P16508309867021572198.correct : P16508309867021572198.Spec := by
  intro n
  simp only [A110005, Nat.add_sub_cancel]

end A110005

/-! ## A110005.P16557798821356405058

`A110003(A056699(n+1))`
-/

namespace A110005.P16557798821356405058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A056699 (n + 1)).toNat

end

end A110005.P16557798821356405058

namespace A110005

/-- `A110003(A056699(n+1))` -/
def P16557798821356405058.Spec : Prop :=
  ∀ n, P16557798821356405058.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P12844923268041922984

`A110653(A067060(n+1))`
-/

namespace A110005.P12844923268041922984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A067060 (n + 1)).toNat

end

end A110005.P12844923268041922984

namespace A110005

/-- `A110653(A067060(n+1))` -/
def P12844923268041922984.Spec : Prop :=
  ∀ n, P12844923268041922984.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P15567032773775431326

`A110009(A080412(n)+1)`
-/

namespace A110005.P15567032773775431326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A080412 n + 1).toNat

end

end A110005.P15567032773775431326

namespace A110005

/-- `A110009(A080412(n)+1)` -/
def P15567032773775431326.Spec : Prop :=
  ∀ n, P15567032773775431326.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P5356756645024023289

`A110001(A133256(n+1))`
-/

namespace A110005.P5356756645024023289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A133256 (n + 1)).toNat

end

end A110005.P5356756645024023289

namespace A110005

/-- `A110001(A133256(n+1))` -/
def P5356756645024023289.Spec : Prop :=
  ∀ n, P5356756645024023289.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P5678104913592800400

`A110008(A284307(n+1))`
-/

namespace A110005.P5678104913592800400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A284307 (n + 1)).toNat

end

end A110005.P5678104913592800400

namespace A110005

/-- `A110008(A284307(n+1))` -/
def P5678104913592800400.Spec : Prop :=
  ∀ n, P5678104913592800400.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P5222984846172062771

`A110650(A292576(n+1))`
-/

namespace A110005.P5222984846172062771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A292576 (n + 1)).toNat

end

end A110005.P5222984846172062771

namespace A110005

/-- `A110650(A292576(n+1))` -/
def P5222984846172062771.Spec : Prop :=
  ∀ n, P5222984846172062771.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P6820788203059220829

`A008621(n)^A070402(n)`
-/

namespace A110005.P6820788203059220829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 n : ℚ) ^ (A070402 n : ℤ)

end

end A110005.P6820788203059220829

namespace A110005

/-- `A008621(n)^A070402(n)` -/
def P6820788203059220829.Spec : Prop :=
  ∀ n, P6820788203059220829.a n = (A110005 (n + 1) : ℚ)

end A110005

/-! ## A110005.P3370679044205075287

`A110001(n+1)*A110008(n+1)/A110009(n+1)`
-/

namespace A110005.P3370679044205075287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) * A110008 (n + 1) : ℚ) / (A110009 (n + 1) : ℚ)

end

end A110005.P3370679044205075287

namespace A110005

/-- `A110001(n+1)*A110008(n+1)/A110009(n+1)` -/
def P3370679044205075287.Spec : Prop :=
  ∀ n, P3370679044205075287.a n = (A110005 (n + 1) : ℚ)

end A110005

/-! ## A110005.P5179348683340361185

`A110003(n+1)*A110004(n+1)/A110009(n+1)`
-/

namespace A110005.P5179348683340361185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) * A110004 (n + 1) : ℚ) / (A110009 (n + 1) : ℚ)

end

end A110005.P5179348683340361185

namespace A110005

/-- `A110003(n+1)*A110004(n+1)/A110009(n+1)` -/
def P5179348683340361185.Spec : Prop :=
  ∀ n, P5179348683340361185.a n = (A110005 (n + 1) : ℚ)

end A110005

/-! ## A110005.P10599512599800649212

`A110485(A080412(n+1))`
-/

namespace A110005.P10599512599800649212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A080412 (n + 1)).toNat

end

end A110005.P10599512599800649212

namespace A110005

/-- `A110485(A080412(n+1))` -/
def P10599512599800649212.Spec : Prop :=
  ∀ n, P10599512599800649212.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P2431428287115164679

`A110653(A115659(n+2))`
-/

namespace A110005.P2431428287115164679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A115659 (n + 2)).toNat

end

end A110005.P2431428287115164679

namespace A110005

/-- `A110653(A115659(n+2))` -/
def P2431428287115164679.Spec : Prop :=
  ∀ n, P2431428287115164679.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P11374402533693623238

`A110485(A116966(n+1)-1)`
-/

namespace A110005.P11374402533693623238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A116966 (n + 1) - 1).toNat

end

end A110005.P11374402533693623238

namespace A110005

/-- `A110485(A116966(n+1)-1)` -/
def P11374402533693623238.Spec : Prop :=
  ∀ n, P11374402533693623238.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P12283351877085530089

`A110009(A133256(n+2)-1)`
-/

namespace A110005.P12283351877085530089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A133256 (n + 2) - 1).toNat

end

end A110005.P12283351877085530089

namespace A110005

/-- `A110009(A133256(n+2)-1)` -/
def P12283351877085530089.Spec : Prop :=
  ∀ n, P12283351877085530089.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P3036358948551932670

`A110650(A284307(n+2)-1)`
-/

namespace A110005.P3036358948551932670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A284307 (n + 2) - 1).toNat

end

end A110005.P3036358948551932670

namespace A110005

/-- `A110650(A284307(n+2)-1)` -/
def P3036358948551932670.Spec : Prop :=
  ∀ n, P3036358948551932670.a n = A110005 (n + 1)

end A110005

/-! ## A110005.P12724817982802799256

`A110009(n+1)+A110003(n+2)-A110004(n+2)`
-/

namespace A110005.P12724817982802799256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (n + 1) + (A110003 (n + 2) - A110004 (n + 2))

end

end A110005.P12724817982802799256

namespace A110005

/-- `A110009(n+1)+A110003(n+2)-A110004(n+2)` -/
def P12724817982802799256.Spec : Prop :=
  ∀ n, P12724817982802799256.a n = A110005 (n + 1)

end A110005

/-!
# A110006: a(n) = n-F(F(n)) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

The programs for A110006, the canonical program `A110006.P5526033503692058386` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110006 has offset 1).

The definition of A110006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110006.P5526033503692058386

`n+1-A066096(A003622(n+1)%(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110006

/-- `n+1-A066096(A003622(n+1)%(n+1))` -/
def P5526033503692058386.Spec : Prop :=
  ∀ n, P5526033503692058386.a n = A110006 (n + 1)

theorem P5526033503692058386.correct : P5526033503692058386.Spec := by
  intro n
  simp only [A110006, Nat.add_sub_cancel]

end A110006

/-! ## A110006.P4264557384566936447

`n+1-A066096(A022342(n+1)%(n+1))`
-/

namespace A110006.P4264557384566936447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066096 (Int.tmod (A022342 (n + 1)) (n + 1 : ℤ)).toNat

end

end A110006.P4264557384566936447

namespace A110006

/-- `n+1-A066096(A022342(n+1)%(n+1))` -/
def P4264557384566936447.Spec : Prop :=
  ∀ n, P4264557384566936447.a n = A110006 (n + 1)

end A110006

/-! ## A110006.P4218178000324463922

`A110007(A001468(n)+1+n)-A001468(n)`
-/

namespace A110006.P4218178000324463922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A001468 n + 1 + (n : ℤ)).toNat - A001468 n

end

end A110006.P4218178000324463922

namespace A110006

/-- `A110007(A001468(n)+1+n)-A001468(n)` -/
def P4218178000324463922.Spec : Prop :=
  ∀ n, P4218178000324463922.a n = A110006 (n + 1)

end A110006

/-! ## A110006.P7016293758926457188

`A110007(A003842(n)+1+n)-A003842(n)`
-/

namespace A110006.P7016293758926457188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110007 (A003842 n + 1 + (n : ℤ)).toNat - A003842 n

end

end A110006.P7016293758926457188

namespace A110006

/-- `A110007(A003842(n)+1+n)-A003842(n)` -/
def P7016293758926457188.Spec : Prop :=
  ∀ n, P7016293758926457188.a n = A110006 (n + 1)

end A110006

/-! ## A110006.P6856062625679824696

`A000010(a(n-1))+2-A242082(n)` with `a(0)=1`
-/

namespace A110006.P6856062625679824696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (a (n - 1)).toNat + (2 - A242082 n)

end

end A110006.P6856062625679824696

namespace A110006

/-- `A000010(a(n-1))+2-A242082(n)` -/
def P6856062625679824696.Spec : Prop :=
  ∀ n, P6856062625679824696.a n = A110006 (n + 1)

end A110006

/-!
# A110007: a(n) = n-F(F(F(n))) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

The programs for A110007, the canonical program `A110007.P13703026918754341120` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110007 has offset 1).

The definition of A110007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110007.P13703026918754341120

`A188467(n+1)+a(2%n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110007

/-- `A188467(n+1)+a(2%n)+1` -/
def P13703026918754341120.Spec : Prop :=
  ∀ n, P13703026918754341120.a n = A110007 (n + 1)

theorem P13703026918754341120.correct : P13703026918754341120.Spec := by
  intro n
  simp only [A110007, Nat.add_sub_cancel]

end A110007

/-! ## A110007.P10597029192317021395

`A188467(n+1)+A057944(a(n-1))+1` with `a(0)=1`
-/

namespace A110007.P10597029192317021395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188467 (n + 1) + (A057944 (a (n - 1)).toNat + 1)

end

end A110007.P10597029192317021395

namespace A110007

/-- `A188467(n+1)+A057944(a(n-1))+1` -/
def P10597029192317021395.Spec : Prop :=
  ∀ n, P10597029192317021395.a n = A110007 (n + 1)

end A110007

/-! ## A110007.P2442194388398426625

`A304604(a(n-1)+1)+A188467(n+1)` with `a(0)=1`
-/

namespace A110007.P2442194388398426625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304604 (a (n - 1) + 1).toNat + A188467 (n + 1)

end

end A110007.P2442194388398426625

namespace A110007

/-- `A304604(a(n-1)+1)+A188467(n+1)` -/
def P2442194388398426625.Spec : Prop :=
  ∀ n, P2442194388398426625.a n = A110007 (n + 1)

end A110007

/-! ## A110007.P4490270276029814215

`A188467(n+1)+2*A003056(a(n-1))` with `a(0)=1`
-/

namespace A110007.P4490270276029814215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188467 (n + 1) + 2 * A003056 (a (n - 1)).toNat

end

end A110007.P4490270276029814215

namespace A110007

/-- `A188467(n+1)+2*A003056(a(n-1))` -/
def P4490270276029814215.Spec : Prop :=
  ∀ n, P4490270276029814215.a n = A110007 (n + 1)

end A110007

/-! ## A110007.P13286676889614694204

`A110010(A001468(n)+1+n)-A001468(n)`
-/

namespace A110007.P13286676889614694204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110010 (A001468 n + 1 + (n : ℤ)).toNat - A001468 n

end

end A110007.P13286676889614694204

namespace A110007

/-- `A110010(A001468(n)+1+n)-A001468(n)` -/
def P13286676889614694204.Spec : Prop :=
  ∀ n, P13286676889614694204.a n = A110007 (n + 1)

end A110007

/-! ## A110007.P746245251482300549

`A110010(A003842(n)+1+n)-A003842(n)`
-/

namespace A110007.P746245251482300549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110010 (A003842 n + 1 + (n : ℤ)).toNat - A003842 n

end

end A110007.P746245251482300549

namespace A110007

/-- `A110010(A003842(n)+1+n)-A003842(n)` -/
def P746245251482300549.Spec : Prop :=
  ∀ n, P746245251482300549.a n = A110007 (n + 1)

end A110007

/-!
# A110008: n followed by n^4 followed by n^3 followed by n^2.

The programs for A110008, the canonical program `A110008.P14974880625639452016` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110008 has offset 1).

The definition of A110008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110008.P14974880625639452016

`A110004(A116966(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110008

/-- `A110004(A116966(n))` -/
def P14974880625639452016.Spec : Prop :=
  ∀ n, P14974880625639452016.a n = A110008 (n + 1)

theorem P14974880625639452016.correct : P14974880625639452016.Spec := by
  intro n
  simp only [A110008, Nat.add_sub_cancel]

end A110008

/-! ## A110008.P4978147379505475506

`A110001(A263449(n))`
-/

namespace A110008.P4978147379505475506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A263449 n).toNat

end

end A110008.P4978147379505475506

namespace A110008

/-- `A110001(A263449(n))` -/
def P4978147379505475506.Spec : Prop :=
  ∀ n, P4978147379505475506.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P14676951536105741395

`A110652(A004444(n)+1)`
-/

namespace A110008.P14676951536105741395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A004444 n + 1).toNat

end

end A110008.P14676951536105741395

namespace A110008

/-- `A110652(A004444(n)+1)` -/
def P14676951536105741395.Spec : Prop :=
  ∀ n, P14676951536105741395.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P10378964486828072985

`A110005(A056699(n+1))`
-/

namespace A110008.P10378964486828072985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A056699 (n + 1)).toNat

end

end A110008.P10378964486828072985

namespace A110008

/-- `A110005(A056699(n+1))` -/
def P10378964486828072985.Spec : Prop :=
  ∀ n, P10378964486828072985.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P1933483547503785227

`A110004(A080412(n)+1)`
-/

namespace A110008.P1933483547503785227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A080412 n + 1).toNat

end

end A110008.P1933483547503785227

namespace A110008

/-- `A110004(A080412(n)+1)` -/
def P1933483547503785227.Spec : Prop :=
  ∀ n, P1933483547503785227.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P14755570558521521200

`A110652(A113778(n+1))`
-/

namespace A110008.P14755570558521521200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A113778 (n + 1)).toNat

end

end A110008.P14755570558521521200

namespace A110008

/-- `A110652(A113778(n+1))` -/
def P14755570558521521200.Spec : Prop :=
  ∀ n, P14755570558521521200.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P4580564013191143899

`A110009(A133256(n+1))`
-/

namespace A110008.P4580564013191143899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A133256 (n + 1)).toNat

end

end A110008.P4580564013191143899

namespace A110008

/-- `A110009(A133256(n+1))` -/
def P4580564013191143899.Spec : Prop :=
  ∀ n, P4580564013191143899.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P15353551647184084064

`A110003(A284307(n+1))`
-/

namespace A110008.P15353551647184084064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A284307 (n + 1)).toNat

end

end A110008.P15353551647184084064

namespace A110008

/-- `A110003(A284307(n+1))` -/
def P15353551647184084064.Spec : Prop :=
  ∀ n, P15353551647184084064.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P3796059275469346399

`A110003(n+1)/A110001(n+1)*A110004(n+1)`
-/

namespace A110008.P3796059275469346399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) : ℚ) / (A110001 (n + 1) : ℚ) * (A110004 (n + 1) : ℚ)

end

end A110008.P3796059275469346399

namespace A110008

/-- `A110003(n+1)/A110001(n+1)*A110004(n+1)` -/
def P3796059275469346399.Spec : Prop :=
  ∀ n, P3796059275469346399.a n = (A110008 (n + 1) : ℚ)

end A110008

/-! ## A110008.P2342522978351464770

`A110005(n+1)/A110001(n+1)*A110009(n+1)`
-/

namespace A110008.P2342522978351464770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110001 (n + 1) : ℚ) * (A110009 (n + 1) : ℚ)

end

end A110008.P2342522978351464770

namespace A110008

/-- `A110005(n+1)/A110001(n+1)*A110009(n+1)` -/
def P2342522978351464770.Spec : Prop :=
  ∀ n, P2342522978351464770.a n = (A110008 (n + 1) : ℚ)

end A110008

/-! ## A110008.P6663985906918318624

`(A110004(n+1)/A110005(n+1))²*A110001(n+1)`
-/

namespace A110008.P6663985906918318624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110004 (n + 1) : ℚ) / (A110005 (n + 1) : ℚ)) ^ 2 * (A110001 (n + 1) : ℚ)

end

end A110008.P6663985906918318624

namespace A110008

/-- `(A110004(n+1)/A110005(n+1))²*A110001(n+1)` -/
def P6663985906918318624.Spec : Prop :=
  ∀ n, P6663985906918318624.a n = (A110008 (n + 1) : ℚ)

end A110008

/-! ## A110008.P16774937094237982217

`A110004(A133256(n+2)-1)`
-/

namespace A110008.P16774937094237982217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A133256 (n + 2) - 1).toNat

end

end A110008.P16774937094237982217

namespace A110008

/-- `A110004(A133256(n+2)-1)` -/
def P16774937094237982217.Spec : Prop :=
  ∀ n, P16774937094237982217.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P15217344714993902226

`A110004(n+1)+A110005(n+2)-A110001(n+2)`
-/

namespace A110008.P15217344714993902226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (n + 1) + (A110005 (n + 2) - A110001 (n + 2))

end

end A110008.P15217344714993902226

namespace A110008

/-- `A110004(n+1)+A110005(n+2)-A110001(n+2)` -/
def P15217344714993902226.Spec : Prop :=
  ∀ n, P15217344714993902226.a n = A110008 (n + 1)

end A110008

/-! ## A110008.P18352370590791228944

`A008621(n)^A110549(2*n)`
-/

namespace A110008.P18352370590791228944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008621 n : ℚ) ^ (A110549 (2 * n) : ℤ)

end

end A110008.P18352370590791228944

namespace A110008

/-- `A008621(n)^A110549(2*n)` -/
def P18352370590791228944.Spec : Prop :=
  ∀ n, P18352370590791228944.a n = (A110008 (n + 1) : ℚ)

end A110008

/-!
# A110009: n followed by n^4 followed by n^2 followed by n^3.

The programs for A110009, the canonical program `A110009.P234597410290863382` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110009 has offset 1).

The definition of A110009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110009.P5757609868144700069

`A110653(xor(2, n)+1)`
-/

namespace A110009.P5757609868144700069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (Nat.xor 2 n + 1)

end

end A110009.P5757609868144700069

namespace A110009

/-- `A110653(xor(2, n)+1)` -/
def P5757609868144700069.Spec : Prop :=
  ∀ n, P5757609868144700069.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P4271467405223209090

`A110650(A092486(n))`
-/

namespace A110009.P4271467405223209090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A092486 n).toNat

end

end A110009.P4271467405223209090

namespace A110009

/-- `A110650(A092486(n))` -/
def P4271467405223209090.Spec : Prop :=
  ∀ n, P4271467405223209090.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P234597410290863382

`A110005(A116966(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110009

/-- `A110005(A116966(n))` -/
def P234597410290863382.Spec : Prop :=
  ∀ n, P234597410290863382.a n = A110009 (n + 1)

theorem P234597410290863382.correct : P234597410290863382.Spec := by
  intro n
  simp only [A110009, Nat.add_sub_cancel]

end A110009

/-! ## A110009.P16957298224536774576

`A110003(A263449(n))`
-/

namespace A110009.P16957298224536774576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A263449 n).toNat

end

end A110009.P16957298224536774576

namespace A110009

/-- `A110003(A263449(n))` -/
def P16957298224536774576.Spec : Prop :=
  ∀ n, P16957298224536774576.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P10656751699783230720

`A110653(A004443(n)+1)`
-/

namespace A110009.P10656751699783230720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A004443 n + 1).toNat

end

end A110009.P10656751699783230720

namespace A110009

/-- `A110653(A004443(n)+1)` -/
def P10656751699783230720.Spec : Prop :=
  ∀ n, P10656751699783230720.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P5476578384808524336

`A110004(A056699(n+1))`
-/

namespace A110009.P5476578384808524336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A056699 (n + 1)).toNat

end

end A110009.P5476578384808524336

namespace A110009

/-- `A110004(A056699(n+1))` -/
def P5476578384808524336.Spec : Prop :=
  ∀ n, P5476578384808524336.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P9404568397294396165

`A110005(A080412(n)+1)`
-/

namespace A110009.P9404568397294396165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A080412 n + 1).toNat

end

end A110009.P9404568397294396165

namespace A110009

/-- `A110005(A080412(n)+1)` -/
def P9404568397294396165.Spec : Prop :=
  ∀ n, P9404568397294396165.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P13561556332991281431

`A110008(A133256(n+1))`
-/

namespace A110009.P13561556332991281431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (A133256 (n + 1)).toNat

end

end A110009.P13561556332991281431

namespace A110009

/-- `A110008(A133256(n+1))` -/
def P13561556332991281431.Spec : Prop :=
  ∀ n, P13561556332991281431.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P17482910721252215055

`A110003(A159966(n)+1)`
-/

namespace A110009.P17482910721252215055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A159966 n + 1).toNat

end

end A110009.P17482910721252215055

namespace A110009

/-- `A110003(A159966(n)+1)` -/
def P17482910721252215055.Spec : Prop :=
  ∀ n, P17482910721252215055.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P17365811015045962396

`A110650(A159966(n+1))`
-/

namespace A110009.P17365811015045962396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A159966 (n + 1)).toNat

end

end A110009.P17365811015045962396

namespace A110009

/-- `A110650(A159966(n+1))` -/
def P17365811015045962396.Spec : Prop :=
  ∀ n, P17365811015045962396.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P6163077715657593492

`A110653(A256008(n+1))`
-/

namespace A110009.P6163077715657593492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A256008 (n + 1)).toNat

end

end A110009.P6163077715657593492

namespace A110009

/-- `A110653(A256008(n+1))` -/
def P6163077715657593492.Spec : Prop :=
  ∀ n, P6163077715657593492.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P12082708573637852846

`A110001(A284307(n+1))`
-/

namespace A110009.P12082708573637852846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A284307 (n + 1)).toNat

end

end A110009.P12082708573637852846

namespace A110009

/-- `A110001(A284307(n+1))` -/
def P12082708573637852846.Spec : Prop :=
  ∀ n, P12082708573637852846.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P18055775646863593439

`A110485(A298364(n+1))`
-/

namespace A110009.P18055775646863593439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A298364 (n + 1)).toNat

end

end A110009.P18055775646863593439

namespace A110009

/-- `A110485(A298364(n+1))` -/
def P18055775646863593439.Spec : Prop :=
  ∀ n, P18055775646863593439.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P18203339417941338626

`A110001(n+1)/A110005(n+1)*A110008(n+1)`
-/

namespace A110009.P18203339417941338626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110001 (n + 1) : ℚ) / (A110005 (n + 1) : ℚ) * (A110008 (n + 1) : ℚ)

end

end A110009.P18203339417941338626

namespace A110009

/-- `A110001(n+1)/A110005(n+1)*A110008(n+1)` -/
def P18203339417941338626.Spec : Prop :=
  ∀ n, P18203339417941338626.a n = (A110009 (n + 1) : ℚ)

end A110009

/-! ## A110009.P14469697955522862596

`A110003(n+1)*A110004(n+1)/A110005(n+1)`
-/

namespace A110009.P14469697955522862596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (n + 1) * A110004 (n + 1) : ℚ) / (A110005 (n + 1) : ℚ)

end

end A110009.P14469697955522862596

namespace A110009

/-- `A110003(n+1)*A110004(n+1)/A110005(n+1)` -/
def P14469697955522862596.Spec : Prop :=
  ∀ n, P14469697955522862596.a n = (A110009 (n + 1) : ℚ)

end A110009

/-! ## A110009.P8579529230870501579

`(A110003(n+1)/A110001(n+1))²*A110005(n+1)`
-/

namespace A110009.P8579529230870501579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110003 (n + 1) : ℚ) / (A110001 (n + 1) : ℚ)) ^ 2 * (A110005 (n + 1) : ℚ)

end

end A110009.P8579529230870501579

namespace A110009

/-- `(A110003(n+1)/A110001(n+1))²*A110005(n+1)` -/
def P8579529230870501579.Spec : Prop :=
  ∀ n, P8579529230870501579.a n = (A110009 (n + 1) : ℚ)

end A110009

/-! ## A110009.P4124562244863753485

`(A110008(n+1)/A110004(n+1))²*A110005(n+1)`
-/

namespace A110009.P4124562244863753485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A110008 (n + 1) : ℚ) / (A110004 (n + 1) : ℚ)) ^ 2 * (A110005 (n + 1) : ℚ)

end

end A110009.P4124562244863753485

namespace A110009

/-- `(A110008(n+1)/A110004(n+1))²*A110005(n+1)` -/
def P4124562244863753485.Spec : Prop :=
  ∀ n, P4124562244863753485.a n = (A110009 (n + 1) : ℚ)

end A110009

/-! ## A110009.P772585355745761849

`A110650(A263449(n+1)-1)`
-/

namespace A110009.P772585355745761849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A263449 (n + 1) - 1).toNat

end

end A110009.P772585355745761849

namespace A110009

/-- `A110650(A263449(n+1)-1)` -/
def P772585355745761849.Spec : Prop :=
  ∀ n, P772585355745761849.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P4462563367787977556

`A110485(A056699(n+2)-1)`
-/

namespace A110009.P4462563367787977556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110485 (A056699 (n + 2) - 1).toNat

end

end A110009.P4462563367787977556

namespace A110009

/-- `A110485(A056699(n+2)-1)` -/
def P4462563367787977556.Spec : Prop :=
  ∀ n, P4462563367787977556.a n = A110009 (n + 1)

end A110009

/-! ## A110009.P9995931201503963060

`A110005(A133256(n+2)-1)`
-/

namespace A110009.P9995931201503963060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A133256 (n + 2) - 1).toNat

end

end A110009.P9995931201503963060

namespace A110009

/-- `A110005(A133256(n+2)-1)` -/
def P9995931201503963060.Spec : Prop :=
  ∀ n, P9995931201503963060.a n = A110009 (n + 1)

end A110009

/-!
# A110010: a(n) = n-F(F(F(F(n)))) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

The programs for A110010, there is no canonical definition to state claims against.
-/

/-! ## A110010.P5186372731273620700

`A110011(A001468(n)+1+n)-A001468(n)`
-/

namespace A110010.P5186372731273620700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110011 (A001468 n + 1 + (n : ℤ)).toNat - A001468 n

end

end A110010.P5186372731273620700

/-! ## A110010.P15725924476007154578

`A110011(A003842(n)+1+n)-A003842(n)`
-/

namespace A110010.P15725924476007154578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110011 (A003842 n + 1 + (n : ℤ)).toNat - A003842 n

end

end A110010.P15725924476007154578

/-!
# A110012: a(n) = n - F(F(n)) where F(x)=floor(sqrt(2)*floor(x/sqrt(2))).

The programs for A110012, there is no canonical definition to state claims against.
-/

/-! ## A110012.P15595406748227932341

`A158799(n)-A188297(n+1)`
-/

namespace A110012.P15595406748227932341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n - A188297 (n + 1)

end

end A110012.P15595406748227932341

/-! ## A110012.P11480892804222472887

`Δ[A074232(2*n+3)]%A034313(n)`
-/

namespace A110012.P11480892804222472887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A034313 n)

end

end A110012.P11480892804222472887

/-! ## A110012.P11825067203019639514

`A020639(A006882(ceil((n+1)/sqrt(3))))`
-/

namespace A110012.P11825067203019639514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006882 ⌈(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌉.toNat).toNat

end

end A110012.P11825067203019639514

/-! ## A110012.P8810637318045577358

`A005086(∪[A279375(3*n+1), A072653(n+1)])`
-/

namespace A110012.P8810637318045577358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279375 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072653 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A110012.P8810637318045577358

/-! ## A110012.P6810512379372360853

`A126433(A079467(n+1)+A003052(2*n+1))`
-/

namespace A110012.P6810512379372360853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (A079467 (n + 1) + A003052 (2 * n + 1)).toNat

end

end A110012.P6810512379372360853

/-!
# A110013: Squares of the form 4p + 5, where p is a prime.

The programs for A110013, there is no canonical definition to state claims against.
-/

/-! ## A110013.P6814261471043669653

`A088502(n+1)²`
-/

namespace A110013.P6814261471043669653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1) ^ 2

end

end A110013.P6814261471043669653

/-! ## A110013.P10918245566195556638

`4*A002327(n+1)+5`
-/

namespace A110013.P10918245566195556638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002327 (n + 1) + 5

end

end A110013.P10918245566195556638

/-! ## A110013.P8257226273502102952

`(2*A045546(n+1)+1)²`
-/

namespace A110013.P8257226273502102952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A045546 (n + 1) + 1) ^ 2

end

end A110013.P8257226273502102952

/-! ## A110013.P17354142744797345603

`(1-2*A002328(n+1))²`
-/

namespace A110013.P17354142744797345603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A002328 (n + 1)) ^ 2

end

end A110013.P17354142744797345603

/-! ## A110013.P10827806637063542465

`(A045546(n+1)+A002328(n+1))²`
-/

namespace A110013.P10827806637063542465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045546 (n + 1) + A002328 (n + 1)) ^ 2

end

end A110013.P10827806637063542465

/-! ## A110013.P108760979956299543

`(A094210(n+1)+A076597(n+1))²`
-/

namespace A110013.P108760979956299543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094210 (n + 1) + A076597 (n + 1)) ^ 2

end

end A110013.P108760979956299543

/-! ## A110013.P14618507374191592039

`(A002328(n+1)+A094210(n+1)+1)²`
-/

namespace A110013.P14618507374191592039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002328 (n + 1) + (A094210 (n + 1) + 1)) ^ 2

end

end A110013.P14618507374191592039

/-! ## A110013.P15654212734659910812

`(A045546(n+1)+A094210(n+1)+2)²`
-/

namespace A110013.P15654212734659910812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045546 (n + 1) + (A094210 (n + 1) + 2)) ^ 2

end

end A110013.P15654212734659910812

/-! ## A110013.P11999599059493724310

`(1-(A094210(n+1)+A089362(n+1)))²`
-/

namespace A110013.P11999599059493724310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A094210 (n + 1) + A089362 (n + 1))) ^ 2

end

end A110013.P11999599059493724310

/-! ## A110013.P10279633736576742565

`(2-(A076597(n+1)+A002328(n+1)))²`
-/

namespace A110013.P10279633736576742565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (A076597 (n + 1) + A002328 (n + 1))) ^ 2

end

end A110013.P10279633736576742565

/-! ## A110013.P3699951350013963642

`(2-(A089362(n+1)+A045546(n+1)))²`
-/

namespace A110013.P3699951350013963642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (A089362 (n + 1) + A045546 (n + 1))) ^ 2

end

end A110013.P3699951350013963642

/-! ## A110013.P13443379096033465447

`A088502(n+1)^A000005(record[A000010(n+1)+1])`
-/

namespace A110013.P13443379096033465447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A110013.P13443379096033465447

/-! ## A110013.P14203606668693272374

`A088502(n+1)^A000005(eq[2, A000005(n+1)]+1)`
-/

namespace A110013.P14203606668693272374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088502 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A110013.P14203606668693272374

/-! ## A110013.P15564912265268330955

`A088502(A008619(2*n+1))*A088502(n+1)`
-/

namespace A110013.P15564912265268330955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (A008619 (2 * n + 1)).toNat * A088502 (n + 1)

end

end A110013.P15564912265268330955

/-! ## A110013.P7610836735816267948

`A020735(A094210(n+1))²`
-/

namespace A110013.P7610836735816267948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A094210 (n + 1)).toNat ^ 2

end

end A110013.P7610836735816267948

/-! ## A110013.P4828323091840712531

`A016754(A045546(n+1))`
-/

namespace A110013.P4828323091840712531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A045546 (n + 1)).toNat

end

end A110013.P4828323091840712531

/-! ## A110013.P1081402903079727082

`A004273(A002328(n+1))²`
-/

namespace A110013.P1081402903079727082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002328 (n + 1)).toNat ^ 2

end

end A110013.P1081402903079727082

/-! ## A110013.P7852232325742911881

`A004274(A076597(n+1))²`
-/

namespace A110013.P7852232325742911881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A076597 (n + 1)).toNat ^ 2

end

end A110013.P7852232325742911881

/-! ## A110013.P1937025515089532461

`A004276(A089362(n+1))²`
-/

namespace A110013.P1937025515089532461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (A089362 (n + 1)).toNat ^ 2

end

end A110013.P1937025515089532461

/-! ## A110013.P3913130395985117612

`(A002327(n+1)-A028552(A045546(n+1)))²`
-/

namespace A110013.P3913130395985117612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002327 (n + 1) - A028552 (A045546 (n + 1)).toNat) ^ 2

end

end A110013.P3913130395985117612

/-!
# A110014: Primes p such that 6p + 7 is a square.

The programs for A110014, there is no canonical definition to state claims against.
-/

/-! ## A110014.P1300888280794075029

`(A110015(n+1)-7)/6`
-/

namespace A110014.P1300888280794075029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110015 (n + 1) - 7 : ℚ) / 6

end

end A110014.P1300888280794075029

/-! ## A110014.P3616436492738972092

`A069813(A110016(n+1))`
-/

namespace A110014.P3616436492738972092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (A110016 (n + 1)).toNat

end

end A110014.P3616436492738972092

/-! ## A110014.P11954499145600694823

`p?[∑[comp[4*n]+2]]`
-/

namespace A110014.P11954499145600694823
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A110014.P11954499145600694823

/-! ## A110014.P14766701937561211600

`record[p?[a(n-3)+or(1, n+1)]]` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A110014.P14766701937561211600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n f2 =>
  f2 (n - 3) + Nat.lor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110014.P14766701937561211600

/-! ## A110014.P17962686838568504748

`abs(1-p?[round(n*2*(n+3)/3)])+1`
-/

namespace A110014.P17962686838568504748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((2 * (n + 3) : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A110014.P17962686838568504748

/-! ## A110014.P8213980409166853699

`or(1, p?[A164097(n+1)])`
-/

namespace A110014.P8213980409166853699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A110014.P8213980409166853699

/-! ## A110014.P9108717180796601095

`∩[A141173(n+1), A164097(n+1)]`
-/

namespace A110014.P9108717180796601095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P9108717180796601095

/-! ## A110014.P10550188301010175737

`∩[A141173(n+1), A069813(n+3)]`
-/

namespace A110014.P10550188301010175737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P10550188301010175737

/-! ## A110014.P10072052470360939228

`∩[A040112(n+1), A164097(n+1)]`
-/

namespace A110014.P10072052470360939228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P10072052470360939228

/-! ## A110014.P8055745757933517712

`∩[A002145(n+1), A164097(n+1)]`
-/

namespace A110014.P8055745757933517712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P8055745757933517712

/-! ## A110014.P5583374964900301428

`∩[A015919(n+1), A164097(n+1)]`
-/

namespace A110014.P5583374964900301428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P5583374964900301428

/-! ## A110014.P12796422872200269558

`∩[A038878(n+1), A164097(n+1)]`
-/

namespace A110014.P12796422872200269558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P12796422872200269558

/-! ## A110014.P7794711450615532756

`∩[A045326(n+1), A164097(n+1)]`
-/

namespace A110014.P7794711450615532756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P7794711450615532756

/-! ## A110014.P7236464221219518997

`∩[A045399(n+1), A164097(n+1)]`
-/

namespace A110014.P7236464221219518997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P7236464221219518997

/-! ## A110014.P14668144051608634222

`∩[A002145(n+1), A069813(n+3)]`
-/

namespace A110014.P14668144051608634222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P14668144051608634222

/-! ## A110014.P16092991068636913981

`∩[A066720(n+1), A164097(n+1)]`
-/

namespace A110014.P16092991068636913981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P16092991068636913981

/-! ## A110014.P13732164151680432194

`∩[A164097(n+1), A285015(n+1)]`
-/

namespace A110014.P13732164151680432194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P13732164151680432194

/-! ## A110014.P2050149265065813716

`∩[A285015(n+1), A069813(n+3)]`
-/

namespace A110014.P2050149265065813716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069813 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P2050149265065813716

/-! ## A110014.P13898148642807093387

`∩[A049098(n+1), A164097(n+1)]`
-/

namespace A110014.P13898148642807093387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P13898148642807093387

/-! ## A110014.P13290748176042466939

`∩[A164097(n+1), A385221(n+1)]`
-/

namespace A110014.P13290748176042466939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110014.P13290748176042466939

/-!
# A110015: Squares of the form 6p + 7, where p is a prime.

The programs for A110015, there is no canonical definition to state claims against.
-/

/-! ## A110015.P9093429772142552951

`A110016(n+1)²`
-/

namespace A110015.P9093429772142552951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (n + 1) ^ 2

end

end A110015.P9093429772142552951

/-! ## A110015.P1685286874460176335

`6*A110014(n+1)+7`
-/

namespace A110015.P1685286874460176335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A110014 (n + 1) + 7

end

end A110015.P1685286874460176335

/-! ## A110015.P3940561654564452471

`A110016(n+1)^A020639(2*(n+1))`
-/

namespace A110015.P3940561654564452471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A110015.P3940561654564452471

/-! ## A110015.P12900424619827967313

`A110016(A000027(n+1))*A110016(n+1)`
-/

namespace A110015.P12900424619827967313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (A000027 (n + 1)).toNat * A110016 (n + 1)

end

end A110015.P12900424619827967313

/-! ## A110015.P3671162425035777375

`A110016(n+1)^A101296(p?[xor(1, n)])`
-/

namespace A110015.P3671162425035777375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A101296 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A110015.P3671162425035777375

/-! ## A110015.P16020475600657025168

`A110016(n+1)^A000034(2*n+1)`
-/

namespace A110015.P16020475600657025168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A110015.P16020475600657025168

/-! ## A110015.P10883634132994345260

`A110016(A008619(2*n+1))*A110016(n+1)`
-/

namespace A110015.P10883634132994345260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110016 (A008619 (2 * n + 1)).toNat * A110016 (n + 1)

end

end A110015.P10883634132994345260

/-! ## A110015.P13953120230311505045

`A110016(n+1)^A000005(A007528(n+1))`
-/

namespace A110015.P13953120230311505045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000005 (A007528 (n + 1)).toNat : ℤ)

end

end A110015.P13953120230311505045

/-! ## A110015.P10469707292739438048

`A110016(n+1)^A000005(A060192(n))`
-/

namespace A110015.P10469707292739438048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000005 (A060192 n).toNat : ℤ)

end

end A110015.P10469707292739438048

/-! ## A110015.P9346796390668903774

`A110016(n+1)%A260553(n+1)*A110016(n+1)`
-/

namespace A110015.P9346796390668903774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110016 (n + 1)) (A260553 (n + 1)) * A110016 (n + 1)

end

end A110015.P9346796390668903774

/-! ## A110015.P7675540178696938204

`A110016(n+1)^A000005(A015916(n+1))`
-/

namespace A110015.P7675540178696938204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000005 (A015916 (n + 1)).toNat : ℤ)

end

end A110015.P7675540178696938204

/-! ## A110015.P7396839946116866192

`A110016(n+1)^A000005(A109996(n+1))`
-/

namespace A110015.P7396839946116866192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000005 (A109996 (n + 1)).toNat : ℤ)

end

end A110015.P7396839946116866192

/-! ## A110015.P2339845240733445317

`A110016(n+1)^A000005(A109997(n+1))`
-/

namespace A110015.P2339845240733445317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110016 (n + 1) : ℚ) ^ (A000005 (A109997 (n + 1)).toNat : ℤ)

end

end A110015.P2339845240733445317

/-! ## A110015.P18120322860824463538

`A007590(2*A110016(n+1))/2`
-/

namespace A110015.P18120322860824463538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 (2 * A110016 (n + 1)).toNat : ℚ) / 2

end

end A110015.P18120322860824463538

/-! ## A110015.P6319495630435249747

`A110008(4*A110016(n+1))`
-/

namespace A110015.P6319495630435249747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110008 (4 * A110016 (n + 1)).toNat

end

end A110015.P6319495630435249747

/-!
# A110016: Numbers n such that (n^2-7)/6 is prime.

The programs for A110016, there is no canonical definition to state claims against.
-/

/-! ## A110016.P8193272761225815370

`sqrt(A110015(n+1))`
-/

namespace A110016.P8193272761225815370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110015 (n + 1) : ℝ)

end

end A110016.P8193272761225815370

/-! ## A110016.P16953580572400988320

`root(A110015(n+1), A001316(A001316(n)))`
-/

namespace A110016.P16953580572400988320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110015 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A110016.P16953580572400988320

/-! ## A110016.P13419207268921374843

`A110015(n+1)^(A008835(A000040(n+1))/2)`
-/

namespace A110016.P13419207268921374843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A110015 (n + 1) : ℝ) ^ ((A008835 (A000040 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A110016.P13419207268921374843

/-! ## A110016.P11897749060043630796

`A040026(root(A110015(n+1), 2))`
-/

namespace A110016.P11897749060043630796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (SequenceMachineLib.roundAway ((A110015 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A110016.P11897749060043630796

/-!
# A110020: Final term of the simple continued fraction for H(n), where H(n) = Sum_{k=1..n} 1/k.

The programs for A110020, there is no canonical definition to state claims against.
-/

/-! ## A110020.P12406520082876327075

`A100398(A139001(n+1))`
-/

namespace A110020.P12406520082876327075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100398 (A139001 (n + 1)).toNat

end

end A110020.P12406520082876327075

/-! ## A110020.P1703898434655389699

`A100398(∑[A055573(n+1)])`
-/

namespace A110020.P1703898434655389699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110020.P1703898434655389699

/-!
# A110021: Final term of the simple continued fraction for prime(n+1)/prime(n).

The programs for A110021, there is no canonical definition to state claims against.
-/

/-! ## A110021.P2834296247744440916

`A109374(∑[A071866(n+1)])`
-/

namespace A110021.P2834296247744440916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110021.P2834296247744440916

/-! ## A110021.P15438404522155198484

`A109374(∑[A049843(∑[n+1]+1)+1])`
-/

namespace A110021.P15438404522155198484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049843 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110021.P15438404522155198484

/-! ## A110021.P3637160863642869598

`A109374(∑[A278744(n+1)+1])`
-/

namespace A110021.P3637160863642869598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278744 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110021.P3637160863642869598

/-! ## A110021.P15097109277887301531

`A130255(p?[A079398(A000265(n+1))])`
-/

namespace A110021.P15097109277887301531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130255 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A110021.P15097109277887301531

/-! ## A110021.P3384748584894234091

`A274225(n+1)+A261029(A062709(n))`
-/

namespace A110021.P3384748584894234091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (n + 1) + A261029 (A062709 n).toNat

end

end A110021.P3384748584894234091

/-!
# A110022: Primes starting a Cunningham chain of the second kind of length 5.

The programs for A110022, there is no canonical definition to state claims against.
-/

/-! ## A110022.P8402494126780592527

`∩[A057327(n+1), A110027(n+1)]`
-/

namespace A110022.P8402494126780592527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110022.P8402494126780592527

/-! ## A110022.P5869139761728173854

`∩[A057328(n+1), A110027(n+1)]`
-/

namespace A110022.P5869139761728173854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110022.P5869139761728173854

/-! ## A110022.P17584067148723410095

`filter[A110027(n+1), A070563(#)]`
-/

namespace A110022.P17584067148723410095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A110022.P17584067148723410095

/-!
# A110023: A triangle of coefficients based on A000931 and Pascal's triangle: a(n)=a(n-2)+a(n-3); t(n,m)=a(n - m + 1)*a(m + 1)*Binomial[n, m].

The programs for A110023, there is no canonical definition to state claims against.
-/

/-! ## A110023.P687782032534702751

`A007318(n)*A110102(n+1)`
-/

namespace A110023.P687782032534702751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A110102 (n + 1)

end

end A110023.P687782032534702751

/-! ## A110023.P16249759457599027418

`abs(A108086(n)*A110102(n+1))`
-/

namespace A110023.P16249759457599027418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A110102 (n + 1)|

end

end A110023.P16249759457599027418

/-! ## A110023.P9192571223234973185

`abs(A110102(n+1)*A117440(n))`
-/

namespace A110023.P9192571223234973185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110102 (n + 1) * A117440 n|

end

end A110023.P9192571223234973185

/-! ## A110023.P16054968938056132423

`abs(A110102(n+1)*A130595(n))`
-/

namespace A110023.P16054968938056132423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110102 (n + 1) * A130595 n|

end

end A110023.P16054968938056132423

/-! ## A110023.P5187407689799267757

`sqrt(A008459(n))*A110102(n+1)`
-/

namespace A110023.P5187407689799267757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A110102 (n + 1) : ℝ)

end

end A110023.P5187407689799267757

/-! ## A110023.P14157720838644346297

`Δ[A102363(n)]*A110102(n+1)`
-/

namespace A110023.P14157720838644346297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110102 (n + 1)

end

end A110023.P14157720838644346297

/-! ## A110023.P9032694492889317720

`(A014473(n)+1)*A110102(n+1)`
-/

namespace A110023.P9032694492889317720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A110102 (n + 1)

end

end A110023.P9032694492889317720

/-! ## A110023.P11985140264467506946

`A110102(n+1)/2*A028326(n)`
-/

namespace A110023.P11985140264467506946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110102 (n + 1) : ℚ) / 2 * (A028326 n : ℚ)

end

end A110023.P11985140264467506946

/-! ## A110023.P13345996108450705043

`A004525(A028326(n))*A110102(n+1)`
-/

namespace A110023.P13345996108450705043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A110102 (n + 1)

end

end A110023.P13345996108450705043

/-!
# A110024: Smallest primes starting a complete three iterations Cunningham chain of the second kind.

The programs for A110024, there is no canonical definition to state claims against.
-/

/-! ## A110024.P17106763337392789134

`filter[A110025(n+1), A070563(#)]`
-/

namespace A110024.P17106763337392789134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A110024.P17106763337392789134

/-! ## A110024.P6556959508222425046

`filter[A110025(n+1), A135461(#)]`
-/

namespace A110024.P6556959508222425046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A110024.P6556959508222425046

/-! ## A110024.P13419887796756942392

`filter[A110025(n+1), A185705(#)]`
-/

namespace A110024.P13419887796756942392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A110024.P13419887796756942392

/-! ## A110024.P18095991127823286527

`filter[A110025(n+1), A319691(#)]`
-/

namespace A110024.P18095991127823286527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A110024.P18095991127823286527

/-! ## A110024.P15652391671245429868

`filter[A110025(n+1), A353815(#)]`
-/

namespace A110024.P15652391671245429868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A110024.P15652391671245429868

/-!
# A110025: Smallest primes starting a complete three iterations Cunningham chain of the first or second kind.

The programs for A110025, there is no canonical definition to state claims against.
-/

/-! ## A110025.P16339092668819816979

`∪[A059763(n+1), A110024(n+1)]`
-/

namespace A110025.P16339092668819816979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110025.P16339092668819816979

/-!
# A110026: Minimal number of times a rectangular grid of n X n+1 elements can be slid along a 45-degree line before a rotated version of the initial grid appears.

The programs for A110026, the canonical program `A110026.P5424055908854298612` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110026 has offset 0).

The definition of A110026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110026.P5424055908854298612

`a(n-2)*(2*n-1)/gcd(a(n-2), 2*n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110026

/-- `a(n-2)*(2*n-1)/gcd(a(n-2), 2*n-1)` -/
def P5424055908854298612.Spec : Prop :=
  ∀ n, P5424055908854298612.a n = (A110026 n : ℚ)

end A110026

/-! ## A110026.P12168503684613522328

`lcm(1-2*n, abs(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A110026.P12168503684613522328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (1 - (2 * n : ℤ)) (a (n - 2) : ℤ)

end

end A110026.P12168503684613522328

namespace A110026

/-- `lcm(1-2*n, abs(a(n-2)))` -/
def P12168503684613522328.Spec : Prop :=
  ∀ n, (P12168503684613522328.a n : ℤ) = A110026 n

end A110026

/-! ## A110026.P661709123470697848

`lcm(2*n-1, -a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A110026.P661709123470697848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm ((2 * n : ℤ) - 1) (-(a (n - 2) : ℤ))

end

end A110026.P661709123470697848

namespace A110026

/-- `lcm(2*n-1, -a(n-2))` -/
def P661709123470697848.Spec : Prop :=
  ∀ n, (P661709123470697848.a n : ℤ) = A110026 n

end A110026

/-! ## A110026.P9947616308885612976

`lcm(1-n-n, floor(a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A110026.P9947616308885612976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (1 - (n : ℤ) - (n : ℤ)) (a (n - 2) : ℤ)

end

end A110026.P9947616308885612976

namespace A110026

/-- `lcm(1-n-n, floor(a(n-2)))` -/
def P9947616308885612976.Spec : Prop :=
  ∀ n, (P9947616308885612976.a n : ℤ) = A110026 n

end A110026

/-!
# A110027: Smallest primes starting a complete four iterations Cunningham chain of the first or second kind.

The programs for A110027, there is no canonical definition to state claims against.
-/

/-! ## A110027.P4913360285626958509

`∪[A059764(n+1), A110022(n+1)]`
-/

namespace A110027.P4913360285626958509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110027.P4913360285626958509

/-!
# A110028: Primes with a prime number of digits, all of them prime, that add up to a prime.

The programs for A110028, there is no canonical definition to state claims against.
-/

/-! ## A110028.P15810370936822910472

`∩[A062088(n+1), A124888(n+1)]`
-/

namespace A110028.P15810370936822910472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P15810370936822910472

/-! ## A110028.P4852720300406796116

`∩[A019546(n+1), A109981(n+1)]`
-/

namespace A110028.P4852720300406796116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P4852720300406796116

/-! ## A110028.P6506844387244542875

`∩[A028834(n+1), A124888(n+1)]`
-/

namespace A110028.P6506844387244542875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P6506844387244542875

/-! ## A110028.P13187322378407572320

`∩[A046034(n+1), A109981(n+1)]`
-/

namespace A110028.P13187322378407572320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P13187322378407572320

/-! ## A110028.P13309650800893737635

`∩[A046704(n+1), A124888(n+1)]`
-/

namespace A110028.P13309650800893737635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P13309650800893737635

/-! ## A110028.P18008045218171540629

`∩[A062087(n+1), A109981(n+1)]`
-/

namespace A110028.P18008045218171540629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P18008045218171540629

/-! ## A110028.P8246959014491530098

`∩[A062088(n+1), A109981(n+1)]`
-/

namespace A110028.P8246959014491530098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P8246959014491530098

/-! ## A110028.P9584325765633259152

`∩[A062088(n+1), A120533(n+1)]`
-/

namespace A110028.P9584325765633259152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110028.P9584325765633259152

/-!
# A110029: a(n) is the minimal c >= n such that the sum of consecutive integers from n to c is a Niven number.

The programs for A110029, there is no canonical definition to state claims against.
-/

/-! ## A110029.P8852638484325642084

`A110030(n+1)+n`
-/

namespace A110029.P8852638484325642084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110030 (n + 1) + (n : ℤ)

end

end A110029.P8852638484325642084

/-!
# A110030: Number of consecutive integers starting with n needed to sum to a Niven number.

The programs for A110030, there is no canonical definition to state claims against.
-/

/-! ## A110030.P11449866235794768342

`A110029(n+1)-n`
-/

namespace A110030.P11449866235794768342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (n + 1) - (n : ℤ)

end

end A110030.P11449866235794768342

/-! ## A110030.P13408185454361957745

`A110029(or(n, char[3])+1)%(n+1)+1`
-/

namespace A110030.P13408185454361957745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110029 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1)) (n + 1 : ℤ) + 1

end

end A110030.P13408185454361957745

/-! ## A110030.P13013857831082565307

`A110029(n%(n+1)+1)%(n+1)+1`
-/

namespace A110030.P13013857831082565307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110029 (n % (n + 1) + 1)) (n + 1 : ℤ) + 1

end

end A110030.P13013857831082565307

/-! ## A110030.P11082794040108121834

`A005940(A110029(n+1)%(n+1)+1)`
-/

namespace A110030.P11082794040108121834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A110029 (n + 1)) (n + 1 : ℤ) + 1).toNat

end

end A110030.P11082794040108121834

/-! ## A110030.P7075278275260396145

`A002260(A110029(n+1)+A000124(n))`
-/

namespace A110030.P7075278275260396145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A110029 (n + 1) + A000124 n).toNat

end

end A110030.P7075278275260396145

/-! ## A110030.P14844521906043801419

`A114327(A000096(n))+A110029(n+1)`
-/

namespace A110030.P14844521906043801419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + A110029 (n + 1)

end

end A110030.P14844521906043801419

/-! ## A110030.P7245315043682506631

`A002260(A161680(n)+A110029(n+1))`
-/

namespace A110030.P7245315043682506631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A161680 n + A110029 (n + 1)).toNat

end

end A110030.P7245315043682506631

/-! ## A110030.P7316931730521209510

`A001637(A110029(n+1))%A020723(n)`
-/

namespace A110030.P7316931730521209510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001637 (A110029 (n + 1)).toNat) (A020723 n)

end

end A110030.P7316931730521209510

/-! ## A110030.P8329006932029451360

`A028310(A110029(n+1)%A028310(n))`
-/

namespace A110030.P8329006932029451360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A110029 (n + 1)) (A028310 n)).toNat

end

end A110030.P8329006932029451360

/-!
# A110034: Row sums of a characteristic triangle for the Fibonacci numbers.

The programs for A110034, the canonical program `A110034.P960095815749513573` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110034 has offset 0).

The definition of A110034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110034.P960095815749513573

`(5+(-1)^n-4*(-1)^n*A098149(n))/10`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110034

/-- `(5+(-1)^n-4*(-1)^n*A098149(n))/10` -/
def P960095815749513573.Spec : Prop :=
  ∀ n, P960095815749513573.a n = (A110034 n : ℚ)

end A110034

/-! ## A110034.P1499386322616092355

`ogf((1-3x-x^2+2x^3)/(1-3x+3x^3-x^4))`
-/

namespace A110034.P1499386322616092355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1, 2] [1, -3, 0, 3, -1] n

end

end A110034.P1499386322616092355

namespace A110034

/-- `ogf((1-3x-x^2+2x^3)/(1-3x+3x^3-x^4))` -/
def P1499386322616092355.Spec : Prop :=
  ∀ n, P1499386322616092355.a n = A110034 n

end A110034

/-! ## A110034.P3963688090143724380

`3*a(n-1)-or(1, a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A110034.P3963688090143724380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * a (n - 1) - Int.lor 1 (a (n - 2))

end

end A110034.P3963688090143724380

namespace A110034

/-- `3*a(n-1)-or(1, a(n-2))` -/
def P3963688090143724380.Spec : Prop :=
  ∀ n, P3963688090143724380.a n = A110034 n

end A110034

/-! ## A110034.P15932779079586370267

`3*a(n-1)-(a(n-2)+n%2)` with `a(0)=1, a(1)=0`
-/

namespace A110034.P15932779079586370267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * a (n - 1) - (a (n - 2) + ((n % 2 : ℕ) : ℤ))

end

end A110034.P15932779079586370267

namespace A110034

/-- `3*a(n-1)-(a(n-2)+n%2)` -/
def P15932779079586370267.Spec : Prop :=
  ∀ n, P15932779079586370267.a n = A110034 n

end A110034

/-! ## A110034.P3385178936015836752

`3*a(n-1)-(a(n-2)+and(1, n))` with `a(0)=1, a(1)=0`
-/

namespace A110034.P3385178936015836752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * a (n - 1) - (a (n - 2) + (Nat.land 1 n : ℤ))

end

end A110034.P3385178936015836752

namespace A110034

/-- `3*a(n-1)-(a(n-2)+and(1, n))` -/
def P3385178936015836752.Spec : Prop :=
  ∀ n, P3385178936015836752.a n = A110034 n

end A110034

/-! ## A110034.P11759215467149245442

`3*a(n-1)-and(1, n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A110034.P11759215467149245442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  3 * a (n - 1) - (Nat.land 1 n : ℤ) - a (n - 2)

end

end A110034.P11759215467149245442

namespace A110034

/-- `3*a(n-1)-and(1, n)-a(n-2)` -/
def P11759215467149245442.Spec : Prop :=
  ∀ n, P11759215467149245442.a n = A110034 n

end A110034

/-! ## A110034.P13813712289315260100

`2-∑[2*(a(n-1)+a(n-2))-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A110034.P13813712289315260100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110034.P13813712289315260100

namespace A110034

/-- `2-∑[2*(a(n-1)+a(n-2))-a(n-3)]` -/
def P13813712289315260100.Spec : Prop :=
  ∀ n, P13813712289315260100.a n = A110034 n

end A110034

/-! ## A110034.P8853325399600072961

`xor(1, 1-A192872(n))`
-/

namespace A110034.P8853325399600072961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A192872 n)

end

end A110034.P8853325399600072961

namespace A110034

/-- `xor(1, 1-A192872(n))` -/
def P8853325399600072961.Spec : Prop :=
  ∀ n, P8853325399600072961.a n = A110034 n

end A110034

/-! ## A110034.P294036134137617883

`2-∑[A295671(2*n)]`
-/

namespace A110034.P294036134137617883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110034.P294036134137617883

namespace A110034

/-- `2-∑[A295671(2*n)]` -/
def P294036134137617883.Spec : Prop :=
  ∀ n, P294036134137617883.a n = A110034 n

end A110034

/-! ## A110034.P12255920247419870487

`A128587(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A110034.P12255920247419870487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128587 (2 * n) - a (n - 1)

end

end A110034.P12255920247419870487

namespace A110034

/-- `A128587(2*n)-a(n-1)` -/
def P12255920247419870487.Spec : Prop :=
  ∀ n, P12255920247419870487.a n = A110034 n

end A110034

/-! ## A110034.P12949020383834821272

`a(n-1)-A295671(n+n)` with `a(0)=1`
-/

namespace A110034.P12949020383834821272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A295671 (n + n)

end

end A110034.P12949020383834821272

namespace A110034

/-- `a(n-1)-A295671(n+n)` -/
def P12949020383834821272.Spec : Prop :=
  ∀ n, P12949020383834821272.a n = A110034 n

end A110034

/-! ## A110034.P10962711845458935769

`A001519(n)-A064831(n)`
-/

namespace A110034.P10962711845458935769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A064831 n

end

end A110034.P10962711845458935769

namespace A110034

/-- `A001519(n)-A064831(n)` -/
def P10962711845458935769.Spec : Prop :=
  ∀ n, P10962711845458935769.a n = A110034 n

end A110034

/-! ## A110034.P7318827786318961856

`A166516(n)-A001906(n)`
-/

namespace A110034.P7318827786318961856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n - A001906 n

end

end A110034.P7318827786318961856

namespace A110034

/-- `A166516(n)-A001906(n)` -/
def P7318827786318961856.Spec : Prop :=
  ∀ n, P7318827786318961856.a n = A110034 n

end A110034

/-! ## A110034.P11131844227709725820

`A001519(n)-∑[A001654(n)]`
-/

namespace A110034.P11131844227709725820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110034.P11131844227709725820

namespace A110034

/-- `A001519(n)-∑[A001654(n)]` -/
def P11131844227709725820.Spec : Prop :=
  ∀ n, P11131844227709725820.a n = A110034 n

end A110034

/-! ## A110034.P15980227711031102244

`A129905(n)-A192068(n+1)`
-/

namespace A110034.P15980227711031102244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n - A192068 (n + 1)

end

end A110034.P15980227711031102244

namespace A110034

/-- `A129905(n)-A192068(n+1)` -/
def P15980227711031102244.Spec : Prop :=
  ∀ n, P15980227711031102244.a n = A110034 n

end A110034

/-! ## A110034.P1940189986025082224

`A099016(n)-A059840(n+2)`
-/

namespace A110034.P1940189986025082224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n - A059840 (n + 2)

end

end A110034.P1940189986025082224

namespace A110034

/-- `A099016(n)-A059840(n+2)` -/
def P1940189986025082224.Spec : Prop :=
  ∀ n, P1940189986025082224.a n = A110034 n

end A110034

/-! ## A110034.P14822146162763462363

`2*A001519(n)-A038990(n)`
-/

namespace A110034.P14822146162763462363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001519 n - A038990 n

end

end A110034.P14822146162763462363

namespace A110034

/-- `2*A001519(n)-A038990(n)` -/
def P14822146162763462363.Spec : Prop :=
  ∀ n, P14822146162763462363.a n = A110034 n

end A110034

/-! ## A110034.P2325027779278006698

`A166516(n)-A000045(2*n)`
-/

namespace A110034.P2325027779278006698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n - A000045 (2 * n)

end

end A110034.P2325027779278006698

namespace A110034

/-- `A166516(n)-A000045(2*n)` -/
def P2325027779278006698.Spec : Prop :=
  ∀ n, P2325027779278006698.a n = A110034 n

end A110034

/-!
# A110035: Row sums of an unsigned characteristic triangle for the Fibonacci numbers.

The programs for A110035, the canonical program `A110035.P9369736835517794963` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110035 has offset 0).

The definition of A110035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110035.P9369736835517794963

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110035

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P9369736835517794963.Spec : Prop :=
  ∀ n, P9369736835517794963.a n = A110035 n

theorem P9369736835517794963.correct : P9369736835517794963.Spec := by
  intro n
  simp only [A110035]

end A110035

/-! ## A110035.P4119685397286284629

`1-A110034(1+n)`
-/

namespace A110035.P4119685397286284629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110034 (1 + n)

end

end A110035.P4119685397286284629

namespace A110035

/-- `1-A110034(1+n)` -/
def P4119685397286284629.Spec : Prop :=
  ∀ n, P4119685397286284629.a n = A110035 n

end A110035

/-! ## A110035.P3527570186296922205

`(1+A000045(n+1)*A000045(n+2)+A000045(2*n))/2`
-/

namespace A110035.P3527570186296922205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A000045 (n + 1) * A000045 (n + 2) + A000045 (2 * n) : ℚ) / 2

end

end A110035.P3527570186296922205

namespace A110035

/-- `(1+A000045(n+1)*A000045(n+2)+A000045(2*n))/2` -/
def P3527570186296922205.Spec : Prop :=
  ∀ n, P3527570186296922205.a n = (A110035 n : ℚ)

end A110035

/-! ## A110035.P8967186417762376366

`(5+(-1)^n+4*A002878(n))/10`
-/

namespace A110035.P8967186417762376366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + (-1) ^ n + 4 * A002878 n : ℚ) / 10

end

end A110035.P8967186417762376366

namespace A110035

/-- `(5+(-1)^n+4*A002878(n))/10` -/
def P8967186417762376366.Spec : Prop :=
  ∀ n, P8967186417762376366.a n = (A110035 n : ℚ)

end A110035

/-! ## A110035.P18333373903991911336

`ogf((-1+x+x^2)/(-1+3x-3x^3+x^4))`
-/

namespace A110035.P18333373903991911336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 0, 3, -1] n

end

end A110035.P18333373903991911336

namespace A110035

/-- `ogf((-1+x+x^2)/(-1+3x-3x^3+x^4))` -/
def P18333373903991911336.Spec : Prop :=
  ∀ n, P18333373903991911336.a n = A110035 n

end A110035

/-! ## A110035.P7366829529288577451

`∑[or(1, floor(ϕ²*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A110035.P7366829529288577451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.lor 1 ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P7366829529288577451

namespace A110035

/-- `∑[or(1, floor(ϕ²*a(n-1)))]` -/
def P7366829529288577451.Spec : Prop :=
  ∀ n, P7366829529288577451.a n = A110035 n

end A110035

/-! ## A110035.P2911196609899161187

`∑[or(1, floor(ϕ*ϕ*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A110035.P2911196609899161187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.lor 1 ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P2911196609899161187

namespace A110035

/-- `∑[or(1, floor(ϕ*ϕ*a(n-1)))]` -/
def P2911196609899161187.Spec : Prop :=
  ∀ n, P2911196609899161187.a n = A110035 n

end A110035

/-! ## A110035.P8481559576241477108

`3*a(n-1)-(a(n-2)+n%2)` with `a(0)=1, a(1)=2`
-/

namespace A110035.P8481559576241477108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 2) + ((n % 2 : ℕ) : ℤ))

end

end A110035.P8481559576241477108

namespace A110035

/-- `3*a(n-1)-(a(n-2)+n%2)` -/
def P8481559576241477108.Spec : Prop :=
  ∀ n, P8481559576241477108.a n = A110035 n

end A110035

/-! ## A110035.P1250708484292356199

`3*a(n-1)-a(n-1)%2-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A110035.P1250708484292356199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - Int.tmod (a (n - 1)) 2 - a (n - 2)

end

end A110035.P1250708484292356199

namespace A110035

/-- `3*a(n-1)-a(n-1)%2-a(n-2)` -/
def P1250708484292356199.Spec : Prop :=
  ∀ n, P1250708484292356199.a n = A110035 n

end A110035

/-! ## A110035.P4419056916106680074

`∑[A126116(2*n)]`
-/

namespace A110035.P4419056916106680074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P4419056916106680074

namespace A110035

/-- `∑[A126116(2*n)]` -/
def P4419056916106680074.Spec : Prop :=
  ∀ n, P4419056916106680074.a n = A110035 n

end A110035

/-! ## A110035.P3840627586750985926

`∑[or(1, A192873(n))]`
-/

namespace A110035.P3840627586750985926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192873 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P3840627586750985926

namespace A110035

/-- `∑[or(1, A192873(n))]` -/
def P3840627586750985926.Spec : Prop :=
  ∀ n, P3840627586750985926.a n = A110035 n

end A110035

/-! ## A110035.P15479443504492241224

`xor(1, A192872(n+1))`
-/

namespace A110035.P15479443504492241224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A192872 (n + 1))

end

end A110035.P15479443504492241224

namespace A110035

/-- `xor(1, A192872(n+1))` -/
def P15479443504492241224.Spec : Prop :=
  ∀ n, P15479443504492241224.a n = A110035 n

end A110035

/-! ## A110035.P7850329750633758387

`A236428(n)+and(1, n)`
-/

namespace A110035.P7850329750633758387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + (Nat.land 1 n : ℤ)

end

end A110035.P7850329750633758387

namespace A110035

/-- `A236428(n)+and(1, n)` -/
def P7850329750633758387.Spec : Prop :=
  ∀ n, P7850329750633758387.a n = A110035 n

end A110035

/-! ## A110035.P13442961478309782124

`∑[A295671(2*(n+1))]`
-/

namespace A110035.P13442961478309782124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P13442961478309782124

namespace A110035

/-- `∑[A295671(2*(n+1))]` -/
def P13442961478309782124.Spec : Prop :=
  ∀ n, P13442961478309782124.a n = A110035 n

end A110035

/-! ## A110035.P14106125914582743760

`∑[2*A166516(n)-1]`
-/

namespace A110035.P14106125914582743760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166516 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P14106125914582743760

namespace A110035

/-- `∑[2*A166516(n)-1]` -/
def P14106125914582743760.Spec : Prop :=
  ∀ n, P14106125914582743760.a n = A110035 n

end A110035

/-! ## A110035.P7145864931261732673

`∑[∑[A295680(2*n)]+1]`
-/

namespace A110035.P7145864931261732673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110035.P7145864931261732673

namespace A110035

/-- `∑[∑[A295680(2*n)]+1]` -/
def P7145864931261732673.Spec : Prop :=
  ∀ n, P7145864931261732673.a n = A110035 n

end A110035

/-! ## A110035.P5690602490216691560

`A192908(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A110035.P5690602490216691560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192908 (n + 1) - a (n - 1)

end

end A110035.P5690602490216691560

namespace A110035

/-- `A192908(n+1)-a(n-1)` -/
def P5690602490216691560.Spec : Prop :=
  ∀ n, P5690602490216691560.a n = A110035 n

end A110035

/-! ## A110035.P656217278925262579

`2*A000045(2*n)+1-a(n-1)` with `a(0)=1`
-/

namespace A110035.P656217278925262579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000045 (2 * n) + (1 - a (n - 1))

end

end A110035.P656217278925262579

namespace A110035

/-- `2*A000045(2*n)+1-a(n-1)` -/
def P656217278925262579.Spec : Prop :=
  ∀ n, P656217278925262579.a n = A110035 n

end A110035

/-! ## A110035.P13075116216900240553

`A166516(n)+A001906(n)`
-/

namespace A110035.P13075116216900240553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 n + A001906 n

end

end A110035.P13075116216900240553

namespace A110035

/-- `A166516(n)+A001906(n)` -/
def P13075116216900240553.Spec : Prop :=
  ∀ n, P13075116216900240553.a n = A110035 n

end A110035

/-!
# A110036: Constant terms of the partial quotients of the continued fraction expansion of 1 + Sum_{n>=0} 1/x^(2^n), where each partial quotient has the form {x + a(n)} after the initial constant term of 1.

The programs for A110036, there is no canonical definition to state claims against.
-/

/-! ## A110036.P5592838029312326065

`(A006464(n)-5)%5+1`
-/

namespace A110036.P5592838029312326065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006464 n - 5) 5 + 1

end

end A110036.P5592838029312326065

/-! ## A110036.P10931326618482304303

`A004200(n*a(floor(acot(n))))-3` with `a(0)=1`
-/

namespace A110036.P10931326618482304303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004200 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat - 3

end

end A110036.P10931326618482304303

/-! ## A110036.P10441997178629208652

`A006464(n*a(floor(acot(n))))-4` with `a(0)=1`
-/

namespace A110036.P10441997178629208652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006464 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat - 4

end

end A110036.P10441997178629208652

/-! ## A110036.P3096685906186687775

`A006464(n^a(floor(acot(n))))-4` with `a(0)=1`
-/

namespace A110036.P3096685906186687775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006464 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ))).toNat - 4

end

end A110036.P3096685906186687775

/-! ## A110036.P14194703820341470371

`abs(2-(A004200(n)+n))-(n+1)`
-/

namespace A110036.P14194703820341470371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A004200 n + (n : ℤ))| - (n + 1 : ℤ)

end

end A110036.P14194703820341470371

/-! ## A110036.P2219099017980331230

`Δ[A073097(record[A029579(n)])]`
-/

namespace A110036.P2219099017980331230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P2219099017980331230

/-! ## A110036.P12912965712404002354

`Δ[A073097(record[A141310(n)])]`
-/

namespace A110036.P12912965712404002354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P12912965712404002354

/-! ## A110036.P13699390349116243223

`Δ[A073097(A004274(n+1))]`
-/

namespace A110036.P13699390349116243223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A004274 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P13699390349116243223

/-! ## A110036.P7419042874735759624

`Δ[A073097(A004280(n+1))]`
-/

namespace A110036.P7419042874735759624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P7419042874735759624

/-! ## A110036.P12732197593275032121

`Δ[A073097(A004275(n)+1)]`
-/

namespace A110036.P12732197593275032121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A004275 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P12732197593275032121

/-! ## A110036.P11927692301877745647

`Δ[A073097(A016861(A004275(n)))]`
-/

namespace A110036.P11927692301877745647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A016861 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P11927692301877745647

/-! ## A110036.P7971378819198136015

`Δ[A073097(A065033(A113127(n)))]`
-/

namespace A110036.P7971378819198136015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A065033 (A113127 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110036.P7971378819198136015

/-! ## A110036.P16708223999673498113

`A000005(A001747(n+1))-Δ[A073088(n+1)]`
-/

namespace A110036.P16708223999673498113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001747 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A110036.P16708223999673498113

/-!
# A110037: Signed version of A090678 and congruent to A088567 mod 2.

The programs for A110037, the canonical program `A110037.P11994965284015990983` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110037 has offset 0).

The definition of A110037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110037.P13467978402945237860

`round(cos(1-A004200(n)))`
-/

namespace A110037.P13467978402945237860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 - A004200 n : ℝ))

end

end A110037.P13467978402945237860

namespace A110037

/-- `round(cos(1-A004200(n)))` -/
def P13467978402945237860.Spec : Prop :=
  ∀ n, P13467978402945237860.a n = A110037 n

end A110037

/-! ## A110037.P2685335858775317020

`floor(atan(5-A006464(n)))`
-/

namespace A110037.P2685335858775317020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (5 - A006464 n : ℝ)⌋

end

end A110037.P2685335858775317020

namespace A110037

/-- `floor(atan(5-A006464(n)))` -/
def P2685335858775317020.Spec : Prop :=
  ∀ n, P2685335858775317020.a n = A110037 n

end A110037

/-! ## A110037.P11994965284015990983

`(-(A088567(n)%2))^C(n, 2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110037

/-- `(-(A088567(n)%2))^C(n, 2)` -/
def P11994965284015990983.Spec : Prop :=
  ∀ n, P11994965284015990983.a n = A110037 n

theorem P11994965284015990983.correct : P11994965284015990983.Spec := by
  intro n
  simp only [A110037]

end A110037

/-! ## A110037.P8650197775547582675

`1-A007400(n+1)%(2%(n+1)+1)`
-/

namespace A110037.P8650197775547582675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A007400 (n + 1)) ((2 % (n + 1) + 1 : ℕ) : ℤ)

end

end A110037.P8650197775547582675

namespace A110037

/-- `1-A007400(n+1)%(2%(n+1)+1)` -/
def P8650197775547582675.Spec : Prop :=
  ∀ n, P8650197775547582675.a n = A110037 n

end A110037

/-! ## A110037.P1399342276253007365

`A057077(n)*A090678(n)`
-/

namespace A110037.P1399342276253007365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A090678 n

end

end A110037.P1399342276253007365

namespace A110037

/-- `A057077(n)*A090678(n)` -/
def P1399342276253007365.Spec : Prop :=
  ∀ n, P1399342276253007365.a n = A110037 n

end A110037

/-! ## A110037.P5302078129794135662

`(-(A088567(n)%2))^A000096(n)`
-/

namespace A110037.P5302078129794135662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A088567 n) 2 : ℚ) ^ (A000096 n : ℤ)

end

end A110037.P5302078129794135662

namespace A110037

/-- `(-(A088567(n)%2))^A000096(n)` -/
def P5302078129794135662.Spec : Prop :=
  ∀ n, P5302078129794135662.a n = (A110037 n : ℚ)

end A110037

/-! ## A110037.P13991132846559734904

`A011650(A004200(n)/(C(2, n+1)+1))`
-/

namespace A110037.P13991132846559734904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011650 (SequenceMachineLib.roundAway ((A004200 n : ℚ) / (Nat.choose 2 (n + 1) + 1 : ℚ))).toNat

end

end A110037.P13991132846559734904

namespace A110037

/-- `A011650(A004200(n)/(C(2, n+1)+1))` -/
def P13991132846559734904.Spec : Prop :=
  ∀ n, P13991132846559734904.a n = A110037 n

end A110037

/-! ## A110037.P5620601534691336088

`A011650(lcm(C(2, n+1)+1, A004200(n)))`
-/

namespace A110037.P5620601534691336088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011650 (Int.lcm (Nat.choose 2 (n + 1) + 1 : ℤ) (A004200 n))

end

end A110037.P5620601534691336088

namespace A110037

/-- `A011650(lcm(C(2, n+1)+1, A004200(n)))` -/
def P5620601534691336088.Spec : Prop :=
  ∀ n, P5620601534691336088.a n = A110037 n

end A110037

/-! ## A110037.P15653786500126337699

`A033999(A004526(n))*A090678(n)`
-/

namespace A110037.P15653786500126337699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A090678 n

end

end A110037.P15653786500126337699

namespace A110037

/-- `A033999(A004526(n))*A090678(n)` -/
def P15653786500126337699.Spec : Prop :=
  ∀ n, P15653786500126337699.a n = A110037 n

end A110037

/-! ## A110037.P671539973177183113

`A253414(A004273(xor(1, n)))`
-/

namespace A110037.P671539973177183113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (A004273 (Nat.xor 1 n)).toNat

end

end A110037.P671539973177183113

namespace A110037

/-- `A253414(A004273(xor(1, n)))` -/
def P671539973177183113.Spec : Prop :=
  ∀ n, P671539973177183113.a n = A110037 n

end A110037

/-! ## A110037.P8295366085806715380

`A090678(n)*A121241(2*n)`
-/

namespace A110037.P8295366085806715380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n * A121241 (2 * n)

end

end A110037.P8295366085806715380

namespace A110037

/-- `A090678(n)*A121241(2*n)` -/
def P8295366085806715380.Spec : Prop :=
  ∀ n, P8295366085806715380.a n = A110037 n

end A110037

/-! ## A110037.P8543863040527650795

`A253414(A004273(A004442(n)))`
-/

namespace A110037.P8543863040527650795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (A004273 (A004442 n).toNat).toNat

end

end A110037.P8543863040527650795

namespace A110037

/-- `A253414(A004273(A004442(n)))` -/
def P8543863040527650795.Spec : Prop :=
  ∀ n, P8543863040527650795.a n = A110037 n

end A110037

/-! ## A110037.P10562504425230519753

`A090678(n)-A073089(n+1)*A110036(n)`
-/

namespace A110037.P10562504425230519753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n - A073089 (n + 1) * A110036 n

end

end A110037.P10562504425230519753

namespace A110037

/-- `A090678(n)-A073089(n+1)*A110036(n)` -/
def P10562504425230519753.Spec : Prop :=
  ∀ n, P10562504425230519753.a n = A110037 n

end A110037

/-! ## A110037.P14745210400194948247

`floor(atan(6-A122165(n)))`
-/

namespace A110037.P14745210400194948247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (6 - A122165 n : ℝ)⌋

end

end A110037.P14745210400194948247

namespace A110037

/-- `floor(atan(6-A122165(n)))` -/
def P14745210400194948247.Spec : Prop :=
  ∀ n, P14745210400194948247.a n = A110037 n

end A110037

/-!
# A110038: The partition function G(n,5).

The programs for A110038, there is no canonical definition to state claims against.
-/

/-! ## A110038.P427503892615340749

`A108947(A167499(n+4))`
-/

namespace A110038.P427503892615340749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A167499 (n + 4)).toNat

end

end A110038.P427503892615340749

/-! ## A110038.P15661978364133187657

`A108947(eq[5, A002262(n)])`
-/

namespace A110038.P15661978364133187657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110038.P15661978364133187657

/-! ## A110038.P2925103185312415050

`A108947(A000124(n+5)+4)`
-/

namespace A110038.P2925103185312415050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000124 (n + 5) + 4).toNat

end

end A110038.P2925103185312415050

/-! ## A110038.P6836816285741567385

`A108947(A000217(n+5)+5)`
-/

namespace A110038.P6836816285741567385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A000217 (n + 5) + 5).toNat

end

end A110038.P6836816285741567385

/-! ## A110038.P17415212884435270395

`A108947(A046691(n+3)+9)`
-/

namespace A110038.P17415212884435270395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A046691 (n + 3) + 9).toNat

end

end A110038.P17415212884435270395

/-! ## A110038.P7292652839111325186

`A108947(eq[5, A144328(n+1)])`
-/

namespace A110038.P7292652839111325186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110038.P7292652839111325186

/-! ## A110038.P9616143203091981220

`A108947(eq[6, A002260(n+1)])`
-/

namespace A110038.P9616143203091981220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110038.P9616143203091981220

/-! ## A110038.P2516129668925330443

`A108947(eq[6, A134868(n+1)])`
-/

namespace A110038.P2516129668925330443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110038.P2516129668925330443

/-! ## A110038.P7529773718404944075

`A108947(Δ[A023545(n+1)]+9)`
-/

namespace A110038.P7529773718404944075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (f1 (n + 1) - f1 n + 9).toNat

end

end A110038.P7529773718404944075

/-!
# A110039: Number of 3-regular labeled graphs on 2n vertices with no multiple edges, but loops are allowed. (3-regular = trivalent and a loop incident on a vertex counts as two edges.)

The programs for A110039, there is no canonical definition to state claims against.
-/

/-! ## A110039.P840851809913534130

`A333158((n+3)*abs(1-2*n))`
-/

namespace A110039.P840851809913534130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333158 ((n + 3 : ℤ) * |1 - (2 * n : ℤ)|).toNat

end

end A110039.P840851809913534130

/-!
# A110040: Number of {2,3}-regular graphs; i.e., labeled simple graphs (no multi-edges or loops) on n vertices, each of degree 2 or 3.

The programs for A110040, there is no canonical definition to state claims against.
-/

/-! ## A110040.P5297896281591306675

`A179184(n)*A333157(A152950(n+1))`
-/

namespace A110040.P5297896281591306675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n * A333157 (A152950 (n + 1)).toNat

end

end A110040.P5297896281591306675

/-! ## A110040.P12022986742913668853

`A188448(∑[A159075(n)+1+n]+4)`
-/

namespace A110040.P12022986742913668853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188448 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A110040.P12022986742913668853

/-! ## A110040.P4118733819011268628

`A188448(or(1, A068194(n+1)))`
-/

namespace A110040.P4118733819011268628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188448 (Int.lor 1 (A068194 (n + 1))).toNat

end

end A110040.P4118733819011268628

/-!
# A110041: a(n) = number of labeled graphs on n vertices (with no isolated vertices, multi-edges or loops) such that the degree of every vertex is at most 3.

The programs for A110041, there is no canonical definition to state claims against.
-/

/-! ## A110041.P6115599060435672566

`A004525((n-1)^n)`
-/

namespace A110041.P6115599060435672566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (((n : ℤ) - 1) ^ n).toNat

end

end A110041.P6115599060435672566

/-! ## A110041.P17905260647647852015

`A110654((n-1)^n)`
-/

namespace A110041.P17905260647647852015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (((n : ℤ) - 1) ^ n).toNat

end

end A110041.P17905260647647852015

/-!
# A110043: a(0) = 1, a(1) = 2; for n>1, a(n) = n*a(n-1) + (-1)^n.

The programs for A110043, the canonical program `A110043.P14167068675977287555` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110043 has offset 0).

The definition of A110043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(-1)^n` (program `A110043.P14167068675977287555`, by `A110043.P14167068675977287555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110043.P14167068675977287555

`n*a(n-1)+(-1)^n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110043

/-- `n*a(n-1)+(-1)^n` -/
def P14167068675977287555.Spec : Prop :=
  ∀ n, P14167068675977287555.a n = A110043 n

theorem P14167068675977287555.correct : P14167068675977287555.Spec := by
  intro n
  simp only [A110043]

end A110043

/-! ## A110043.P11458929656137354781

`(n-1)*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A110043.P11458929656137354781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2))

end

end A110043.P11458929656137354781

namespace A110043

/-- `(n-1)*(a(n-1)+a(n-2))` -/
def P11458929656137354781.Spec : Prop :=
  ∀ n, P11458929656137354781.a n = A110043 n

end A110043

/-! ## A110043.P8341132317863380363

`xor(1, n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A110043.P8341132317863380363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (n * a (n - 1))

end

end A110043.P8341132317863380363

namespace A110043

/-- `xor(1, n*a(n-1))` -/
def P8341132317863380363.Spec : Prop :=
  ∀ n, (P8341132317863380363.a n : ℤ) = A110043 n

end A110043

/-! ## A110043.P7051848259601974992

`xor(1, a(n-1)/tan(acot(n)))` with `a(0)=1, a(1)=2`
-/

namespace A110043.P7051848259601974992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A110043.P7051848259601974992

namespace A110043

/-- `xor(1, a(n-1)/tan(acot(n)))` -/
def P7051848259601974992.Spec : Prop :=
  ∀ n, P7051848259601974992.a n = A110043 n

end A110043

/-! ## A110043.P14210638917070333082

`xor(1, a(n-1)/cot(atan(n)))` with `a(0)=1, a(1)=2`
-/

namespace A110043.P14210638917070333082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A110043.P14210638917070333082

namespace A110043

/-- `xor(1, a(n-1)/cot(atan(n)))` -/
def P14210638917070333082.Spec : Prop :=
  ∀ n, P14210638917070333082.a n = A110043 n

end A110043

/-! ## A110043.P17231235554498176216

`xor(1, a(n-1)/n^(-1))` with `a(0)=1, a(1)=2`
-/

namespace A110043.P17231235554498176216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A110043.P17231235554498176216

namespace A110043

/-- `xor(1, a(n-1)/n^(-1))` -/
def P17231235554498176216.Spec : Prop :=
  ∀ n, P17231235554498176216.a n = A110043 n

end A110043

/-! ## A110043.P12072132067373972255

`(-1)^n+n*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A110043.P12072132067373972255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-1) ^ n + (n : ℤ) * a (n - 1)

end

end A110043.P12072132067373972255

namespace A110043

/-- `(-1)^n+n*a(n-1)` -/
def P12072132067373972255.Spec : Prop :=
  ∀ n, P12072132067373972255.a n = A110043 n

theorem P12072132067373972255.correct : P12072132067373972255.Spec := by
  intro n
  simp only [A110043, Nat.add_sub_cancel, A110043.P12072132067373972255.a, A110043.P14167068675977287555.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110043

/-! ## A110043.P8385646221272975971

`xor(1, floor(n*a(floor(n²/(n+1)))))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A110043.P8385646221272975971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A110043.P8385646221272975971

namespace A110043

/-- `xor(1, floor(n*a(floor(n²/(n+1)))))` -/
def P8385646221272975971.Spec : Prop :=
  ∀ n, (P8385646221272975971.a n : ℤ) = A110043 n

end A110043

/-! ## A110043.P15183973772226774919

`A334715(∑[n+3])`
-/

namespace A110043.P15183973772226774919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110043.P15183973772226774919

namespace A110043

/-- `A334715(∑[n+3])` -/
def P15183973772226774919.Spec : Prop :=
  ∀ n, P15183973772226774919.a n = A110043 n

end A110043

/-! ## A110043.P4693720733122005902

`A001120(n)+A001120(n)-A000166(n)`
-/

namespace A110043.P4693720733122005902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001120 n + (A001120 n - A000166 n)

end

end A110043.P4693720733122005902

namespace A110043

/-- `A001120(n)+A001120(n)-A000166(n)` -/
def P4693720733122005902.Spec : Prop :=
  ∀ n, P4693720733122005902.a n = A110043 n

end A110043

/-!
# A110044: a(0) = 11, a(1) = 23; for n > 1, a(n) = |a(n-1) - a(n-2)|.

The programs for A110044, the canonical program `A110044.P15173151549958434994` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110044 has offset 0).

The definition of A110044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110044.P15173151549958434994

`abs(a(n-1)-a(n-2))` with `a(0)=11, a(1)=23`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110044

/-- `abs(a(n-1)-a(n-2))` -/
def P15173151549958434994.Spec : Prop :=
  ∀ n, P15173151549958434994.a n = A110044 n

theorem P15173151549958434994.correct : P15173151549958434994.Spec := by
  intro n
  simp only [A110044]

end A110044

/-!
# A110045: Number of hierarchical orderings ("societies") of n unlabeled elements ("individuals") with at least two occupied levels.

The programs for A110045, there is no canonical definition to state claims against.
-/

/-! ## A110045.P11024610779493113052

`A166155(A011782(n))-ceil(sin(n)²)`
-/

namespace A110045.P11024610779493113052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (A011782 n).toNat - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A110045.P11024610779493113052

/-! ## A110045.P10143035757453264805

`A308874(A006218(a(n-2)))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A110045.P10143035757453264805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  A308874 (A006218 (a (n - 2)).toNat).toNat

end

end A110045.P10143035757453264805

/-! ## A110045.P10041713055067813898

`A320698(A006330(n))-A000040(n+1)`
-/

namespace A110045.P10041713055067813898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320698 (A006330 n).toNat - A000040 (n + 1)

end

end A110045.P10041713055067813898

/-!
# A110046: Expansion of (1+4*x-12*x^2-16*x^3)/((2*x+1)*(2*x-1)*(4*x^2+4*x-1)).

The programs for A110046, the canonical program `A110046.P4147137251499255707` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110046 has offset 0).

The definition of A110046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-12x^2-16x^3)/(1-4x-8x^2+16x^3+16x^4))` (program `A110046.P4147137251499255707`, by `A110046.P4147137251499255707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110046.P4147137251499255707

`ogf((1+4x-12x^2-16x^3)/(1-4x-8x^2+16x^3+16x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110046

/-- `ogf((1+4x-12x^2-16x^3)/(1-4x-8x^2+16x^3+16x^4))` -/
def P4147137251499255707.Spec : Prop :=
  ∀ n, P4147137251499255707.a n = A110046 n

theorem P4147137251499255707.correct : P4147137251499255707.Spec := by
  intro n
  simp only [A110046]

end A110046

/-! ## A110046.P580958927723467370

`4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=8, a(2)=28, a(3)=144`
-/

namespace A110046.P580958927723467370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 28, 144] fun n a =>
  4 * a (n - 1) + 8 * a (n - 2) - 16 * a (n - 3) - 16 * a (n - 4)

end

end A110046.P580958927723467370

namespace A110046

/-- `4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` -/
def P580958927723467370.Spec : Prop :=
  ∀ n, P580958927723467370.a n = A110046 n

end A110046

/-! ## A110046.P5850206610246030514

`2^n*A100828(n)`
-/

namespace A110046.P5850206610246030514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A100828 n

end

end A110046.P5850206610246030514

namespace A110046

/-- `2^n*A100828(n)` -/
def P5850206610246030514.Spec : Prop :=
  ∀ n, P5850206610246030514.a n = A110046 n

end A110046

/-! ## A110046.P8805164804716150000

`2^(n-1)*A162484(n+1)`
-/

namespace A110046.P8805164804716150000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A162484 (n + 1) : ℚ)

end

end A110046.P8805164804716150000

namespace A110046

/-- `2^(n-1)*A162484(n+1)` -/
def P8805164804716150000.Spec : Prop :=
  ∀ n, P8805164804716150000.a n = (A110046 n : ℚ)

end A110046

/-! ## A110046.P6071093405290173422

`(A001333(n+1)+and(1, n))*2^n`
-/

namespace A110046.P6071093405290173422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 (n + 1) + (Nat.land 1 n : ℤ)) * (2 ^ n : ℤ)

end

end A110046.P6071093405290173422

namespace A110046

/-- `(A001333(n+1)+and(1, n))*2^n` -/
def P6071093405290173422.Spec : Prop :=
  ∀ n, P6071093405290173422.a n = A110046 n

end A110046

/-! ## A110046.P9604590733178328844

`A100828(n)*A131577(n+1)`
-/

namespace A110046.P9604590733178328844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n * A131577 (n + 1)

end

end A110046.P9604590733178328844

namespace A110046

/-- `A100828(n)*A131577(n+1)` -/
def P9604590733178328844.Spec : Prop :=
  ∀ n, P9604590733178328844.a n = A110046 n

end A110046

/-! ## A110046.P6772802124998808270

`A100828(n)*A135530(2*n+1)`
-/

namespace A110046.P6772802124998808270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n * A135530 (2 * n + 1)

end

end A110046.P6772802124998808270

namespace A110046

/-- `A100828(n)*A135530(2*n+1)` -/
def P6772802124998808270.Spec : Prop :=
  ∀ n, P6772802124998808270.a n = A110046 n

end A110046

/-! ## A110046.P5600918210009762878

`(A078057(n)+A000035(n))*2^n`
-/

namespace A110046.P5600918210009762878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078057 n + A000035 n) * (2 ^ n : ℤ)

end

end A110046.P5600918210009762878

namespace A110046

/-- `(A078057(n)+A000035(n))*2^n` -/
def P5600918210009762878.Spec : Prop :=
  ∀ n, P5600918210009762878.a n = A110046 n

end A110046

/-! ## A110046.P9989148841108295049

`A007283(n)/3*A162484(n+1)/2`
-/

namespace A110046.P9989148841108295049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / 3 * ((A162484 (n + 1) : ℚ) / 2)

end

end A110046.P9989148841108295049

namespace A110046

/-- `A007283(n)/3*A162484(n+1)/2` -/
def P9989148841108295049.Spec : Prop :=
  ∀ n, P9989148841108295049.a n = (A110046 n : ℚ)

end A110046

/-! ## A110046.P6606049022442732577

`A100828(n)*A181821(A008578(n+1))`
-/

namespace A110046.P6606049022442732577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n * A181821 (A008578 (n + 1)).toNat

end

end A110046.P6606049022442732577

namespace A110046

/-- `A100828(n)*A181821(A008578(n+1))` -/
def P6606049022442732577.Spec : Prop :=
  ∀ n, P6606049022442732577.a n = A110046 n

end A110046

/-! ## A110046.P10487294601257978159

`A088013(n+1)/A000129(n+1)*A007070(n)`
-/

namespace A110046.P10487294601257978159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088013 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ) * (A007070 n : ℚ)

end

end A110046.P10487294601257978159

namespace A110046

/-- `A088013(n+1)/A000129(n+1)*A007070(n)` -/
def P10487294601257978159.Spec : Prop :=
  ∀ n, P10487294601257978159.a n = (A110046 n : ℚ)

end A110046

/-! ## A110046.P81150726035694188

`A002203(n+1)/A162485(n+1)*A084137(n+1)`
-/

namespace A110046.P81150726035694188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) : ℚ) / (A162485 (n + 1) : ℚ) * (A084137 (n + 1) : ℚ)

end

end A110046.P81150726035694188

namespace A110046

/-- `A002203(n+1)/A162485(n+1)*A084137(n+1)` -/
def P81150726035694188.Spec : Prop :=
  ∀ n, P81150726035694188.a n = (A110046 n : ℚ)

end A110046

/-! ## A110046.P11294121681821787860

`A100828(n)*A137688(A000217(n))`
-/

namespace A110046.P11294121681821787860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n * A137688 (A000217 n).toNat

end

end A110046.P11294121681821787860

namespace A110046

/-- `A100828(n)*A137688(A000217(n))` -/
def P11294121681821787860.Spec : Prop :=
  ∀ n, P11294121681821787860.a n = A110046 n

end A110046

/-!
# A110047: Expansion of (1+2*x-4*x^2)/((2*x+1)*(2*x-1)*(4*x^2+4*x-1)).

The programs for A110047, the canonical program `A110047.P3705021509712115831` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110047 has offset 0).

The definition of A110047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-4x^2)/(1-4x-8x^2+16x^3+16x^4))` (program `A110047.P3705021509712115831`, by `A110047.P3705021509712115831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110047.P3705021509712115831

`ogf((1+2x-4x^2)/(1-4x-8x^2+16x^3+16x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110047

/-- `ogf((1+2x-4x^2)/(1-4x-8x^2+16x^3+16x^4))` -/
def P3705021509712115831.Spec : Prop :=
  ∀ n, P3705021509712115831.a n = A110047 n

theorem P3705021509712115831.correct : P3705021509712115831.Spec := by
  intro n
  simp only [A110047]

end A110047

/-! ## A110047.P2479974022688168991

`4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=6, a(2)=28, a(3)=144`
-/

namespace A110047.P2479974022688168991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 28, 144] fun n a =>
  4 * a (n - 1) + 8 * a (n - 2) - 16 * a (n - 3) - 16 * a (n - 4)

end

end A110047.P2479974022688168991

namespace A110047

/-- `4*a(n-1)+8*a(n-2)-16*a(n-3)-16*a(n-4)` -/
def P2479974022688168991.Spec : Prop :=
  ∀ n, P2479974022688168991.a n = A110047 n

end A110047

/-! ## A110047.P10128582212943911636

`A099582(n+1)+A099582(n+1)+A057087(n)`
-/

namespace A110047.P10128582212943911636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099582 (n + 1) + (A099582 (n + 1) + A057087 n)

end

end A110047.P10128582212943911636

namespace A110047

/-- `A099582(n+1)+A099582(n+1)+A057087(n)` -/
def P10128582212943911636.Spec : Prop :=
  ∀ n, P10128582212943911636.a n = A110047 n

end A110047

/-! ## A110047.P6009620400658598227

`2^n*A032766(A000129(n+1))`
-/

namespace A110047.P6009620400658598227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A032766 (A000129 (n + 1)).toNat

end

end A110047.P6009620400658598227

namespace A110047

/-- `2^n*A032766(A000129(n+1))` -/
def P6009620400658598227.Spec : Prop :=
  ∀ n, P6009620400658598227.a n = A110047 n

end A110047

/-! ## A110047.P15466855386211876683

`2^n*A004525(A114689(n))`
-/

namespace A110047.P15466855386211876683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A004525 (A114689 n).toNat

end

end A110047.P15466855386211876683

namespace A110047

/-- `2^n*A004525(A114689(n))` -/
def P15466855386211876683.Spec : Prop :=
  ∀ n, P15466855386211876683.a n = A110047 n

end A110047

/-!
# A110048: Expansion of 1/((1+2*x)*(1-4*x-4*x^2)).

The programs for A110048, the canonical program `A110048.P10683443753341816381` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110048 has offset 0).

The definition of A110048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-12x^2-8x^3))` (program `A110048.P10683443753341816381`, by `A110048.P10683443753341816381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110048.P10683443753341816381

`ogf(1/(1-2x-12x^2-8x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110048

/-- `ogf(1/(1-2x-12x^2-8x^3))` -/
def P10683443753341816381.Spec : Prop :=
  ∀ n, P10683443753341816381.a n = A110048 n

theorem P10683443753341816381.correct : P10683443753341816381.Spec := by
  intro n
  simp only [A110048]

end A110048

/-! ## A110048.P5224019417905477733

`2*a(n-1)+12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=16`
-/

namespace A110048.P5224019417905477733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 16] fun n a =>
  2 * a (n - 1) + 12 * a (n - 2) + 8 * a (n - 3)

end

end A110048.P5224019417905477733

namespace A110048

/-- `2*a(n-1)+12*a(n-2)+8*a(n-3)` -/
def P5224019417905477733.Spec : Prop :=
  ∀ n, (P5224019417905477733.a n : ℤ) = A110048 n

end A110048

/-! ## A110048.P9871774727329923598

`2^n*A097076(n+1)`
-/

namespace A110048.P9871774727329923598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A097076 (n + 1)

end

end A110048.P9871774727329923598

namespace A110048

/-- `2^n*A097076(n+1)` -/
def P9871774727329923598.Spec : Prop :=
  ∀ n, P9871774727329923598.a n = A110048 n

end A110048

/-! ## A110048.P6728966183398957640

`abs(2^n*A077921(n))`
-/

namespace A110048.P6728966183398957640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) * A077921 n|

end

end A110048.P6728966183398957640

namespace A110048

/-- `abs(2^n*A077921(n))` -/
def P6728966183398957640.Spec : Prop :=
  ∀ n, P6728966183398957640.a n = A110048 n

end A110048

/-! ## A110048.P5750970446722972265

`2^n*∑[A111954(n)]`
-/

namespace A110048.P5750970446722972265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110048.P5750970446722972265

namespace A110048

/-- `2^n*∑[A111954(n)]` -/
def P5750970446722972265.Spec : Prop :=
  ∀ n, P5750970446722972265.a n = A110048 n

end A110048

/-! ## A110048.P14064148580636854452

`2^n*Δ[A105635(n)]`
-/

namespace A110048.P14064148580636854452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A110048.P14064148580636854452

namespace A110048

/-- `2^n*Δ[A105635(n)]` -/
def P14064148580636854452.Spec : Prop :=
  ∀ n, P14064148580636854452.a n = A110048 n

end A110048

/-! ## A110048.P10629273772811018346

`A086346(n)-a(n-1)` with `a(0)=1`
-/

namespace A110048.P10629273772811018346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086346 n - a (n - 1)

end

end A110048.P10629273772811018346

namespace A110048

/-- `A086346(n)-a(n-1)` -/
def P10629273772811018346.Spec : Prop :=
  ∀ n, P10629273772811018346.a n = A110048 n

end A110048

/-! ## A110048.P14162106010223729073

`2^(n-1)*A228797(n+1)`
-/

namespace A110048.P14162106010223729073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A228797 (n + 1) : ℚ)

end

end A110048.P14162106010223729073

namespace A110048

/-- `2^(n-1)*A228797(n+1)` -/
def P14162106010223729073.Spec : Prop :=
  ∀ n, P14162106010223729073.a n = (A110048 n : ℚ)

end A110048

/-! ## A110048.P18199382106713971747

`A057087(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A110048.P18199382106713971747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057087 n - (a (n - 1) + a (n - 1))

end

end A110048.P18199382106713971747

namespace A110048

/-- `A057087(n)-(a(n-1)+a(n-1))` -/
def P18199382106713971747.Spec : Prop :=
  ∀ n, P18199382106713971747.a n = A110048 n

end A110048

/-! ## A110048.P11057412733869072293

`A077921(n)*A122803(n)`
-/

namespace A110048.P11057412733869072293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 n * A122803 n

end

end A110048.P11057412733869072293

namespace A110048

/-- `A077921(n)*A122803(n)` -/
def P11057412733869072293.Spec : Prop :=
  ∀ n, P11057412733869072293.a n = A110048 n

end A110048

/-! ## A110048.P16079773000828721038

`2*A086346(n)-A057087(n)`
-/

namespace A110048.P16079773000828721038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086346 n - A057087 n

end

end A110048.P16079773000828721038

namespace A110048

/-- `2*A086346(n)-A057087(n)` -/
def P16079773000828721038.Spec : Prop :=
  ∀ n, P16079773000828721038.a n = A110048 n

end A110048

/-! ## A110048.P2329523895822517284

`Δ[Δ[A099582(n)]]-A099582(n)`
-/

namespace A110048.P2329523895822517284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099582 n

end

end A110048.P2329523895822517284

namespace A110048

/-- `Δ[Δ[A099582(n)]]-A099582(n)` -/
def P2329523895822517284.Spec : Prop :=
  ∀ n, P2329523895822517284.a n = A110048 n

end A110048

/-! ## A110048.P10998535637429974582

`∑[xor(1, A000129(n))]*A000079(n)`
-/

namespace A110048.P10998535637429974582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000129 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A110048.P10998535637429974582

namespace A110048

/-- `∑[xor(1, A000129(n))]*A000079(n)` -/
def P10998535637429974582.Spec : Prop :=
  ∀ n, P10998535637429974582.a n = A110048 n

end A110048

/-! ## A110048.P16753194154619191407

`A086347(n)+A086347(n)-A086348(n)`
-/

namespace A110048.P16753194154619191407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n + (A086347 n - A086348 n)

end

end A110048.P16753194154619191407

namespace A110048

/-- `A086347(n)+A086347(n)-A086348(n)` -/
def P16753194154619191407.Spec : Prop :=
  ∀ n, P16753194154619191407.a n = A110048 n

end A110048

/-! ## A110048.P11552227817502386329

`(A105635(n+1)-A105635(n))*A000079(n)`
-/

namespace A110048.P11552227817502386329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105635 (n + 1) - A105635 n) * A000079 n

end

end A110048.P11552227817502386329

namespace A110048

/-- `(A105635(n+1)-A105635(n))*A000079(n)` -/
def P11552227817502386329.Spec : Prop :=
  ∀ n, P11552227817502386329.a n = A110048 n

end A110048

/-! ## A110048.P13414287759689773544

`2*A086347(n)-A086348(n)`
-/

namespace A110048.P13414287759689773544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086347 n - A086348 n

end

end A110048.P13414287759689773544

namespace A110048

/-- `2*A086347(n)-A086348(n)` -/
def P13414287759689773544.Spec : Prop :=
  ∀ n, P13414287759689773544.a n = A110048 n

end A110048

/-! ## A110048.P17801627548254967076

`A057087(n+1)-A086346(n+1)`
-/

namespace A110048.P17801627548254967076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 (n + 1) - A086346 (n + 1)

end

end A110048.P17801627548254967076

namespace A110048

/-- `A057087(n+1)-A086346(n+1)` -/
def P17801627548254967076.Spec : Prop :=
  ∀ n, P17801627548254967076.a n = A110048 n

end A110048

/-! ## A110048.P7724799964524819241

`A086346(n+1)-2*A086348(n)`
-/

namespace A110048.P7724799964524819241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086346 (n + 1) - 2 * A086348 n

end

end A110048.P7724799964524819241

namespace A110048

/-- `A086346(n+1)-2*A086348(n)` -/
def P7724799964524819241.Spec : Prop :=
  ∀ n, P7724799964524819241.a n = A110048 n

end A110048

/-! ## A110048.P17844723252432870166

`A086349(n+1)%Δ[A086347(n)]`
-/

namespace A110048.P17844723252432870166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086349 (n + 1)) (f1 (n + 1) - f1 n)

end

end A110048.P17844723252432870166

namespace A110048

/-- `A086349(n+1)%Δ[A086347(n)]` -/
def P17844723252432870166.Spec : Prop :=
  ∀ n, P17844723252432870166.a n = A110048 n

end A110048

/-! ## A110048.P12032361791716648712

`A011782(2*n+1)*A097076(n+1)/A011782(n+1)`
-/

namespace A110048.P12032361791716648712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n + 1) * A097076 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A110048.P12032361791716648712

namespace A110048

/-- `A011782(2*n+1)*A097076(n+1)/A011782(n+1)` -/
def P12032361791716648712.Spec : Prop :=
  ∀ n, P12032361791716648712.a n = (A110048 n : ℚ)

end A110048

/-!
# A110050: Expansion of (2+9*x-24*x^3+16*x^4-30*x^2) / ((1-x)*(2*x+1)*(2*x-1)*(4*x^2+4*x-1)).

The programs for A110050, the canonical program `A110050.P1650902708715439077` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110050 has offset 0).

The definition of A110050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+9x-30x^2-24x^3+16x^4)/(1-5x-4x^2+24x^3-16x^5))` (program `A110050.P1650902708715439077`, by `A110050.P1650902708715439077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110050.P1650902708715439077

`ogf((2+9x-30x^2-24x^3+16x^4)/(1-5x-4x^2+24x^3-16x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110050

/-- `ogf((2+9x-30x^2-24x^3+16x^4)/(1-5x-4x^2+24x^3-16x^5))` -/
def P1650902708715439077.Spec : Prop :=
  ∀ n, P1650902708715439077.a n = A110050 n

theorem P1650902708715439077.correct : P1650902708715439077.Spec := by
  intro n
  simp only [A110050]

end A110050

/-!
# A110051: Expansion of (1-x+2*x^3+x^2)/((1-x)*(2*x+1)*(2*x-1)*(4*x^2+4*x-1)).

The programs for A110051, the canonical program `A110051.P6846733334063730897` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110051 has offset 0).

The definition of A110051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+2x^3)/(1-5x-4x^2+24x^3-16x^5))` (program `A110051.P6846733334063730897`, by `A110051.P6846733334063730897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110051.P6846733334063730897

`ogf((1-x+x^2+2x^3)/(1-5x-4x^2+24x^3-16x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110051

/-- `ogf((1-x+x^2+2x^3)/(1-5x-4x^2+24x^3-16x^5))` -/
def P6846733334063730897.Spec : Prop :=
  ∀ n, P6846733334063730897.a n = A110051 n

theorem P6846733334063730897.correct : P6846733334063730897.Spec := by
  intro n
  simp only [A110051]

end A110051

/-! ## A110051.P7280924210631386282

`5*a(n-1)+4*a(n-2)-24*a(n-3)+16*a(n-5)` with `a(0)=1, a(1)=4, a(2)=25, a(3)=119, a(4)=599`
-/

namespace A110051.P7280924210631386282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 25, 119, 599] fun n a =>
  5 * a (n - 1) + 4 * a (n - 2) - 24 * a (n - 3) + 16 * a (n - 5)

end

end A110051.P7280924210631386282

namespace A110051

/-- `5*a(n-1)+4*a(n-2)-24*a(n-3)+16*a(n-5)` -/
def P7280924210631386282.Spec : Prop :=
  ∀ n, P7280924210631386282.a n = A110051 n

end A110051

/-!
# A110052: Expansion of x*(-1+4*x)/((x-1)*(2*x-1)*(4*x^2+4*x-1)).

The programs for A110052, the canonical program `A110052.P1281284306083634321` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110052 has offset 0).

The definition of A110052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-4x^2)/(1-7x+10x^2+4x^3-8x^4))` (program `A110052.P1281284306083634321`, by `A110052.P1281284306083634321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110052.P1281284306083634321

`ogf((x-4x^2)/(1-7x+10x^2+4x^3-8x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110052

/-- `ogf((x-4x^2)/(1-7x+10x^2+4x^3-8x^4))` -/
def P1281284306083634321.Spec : Prop :=
  ∀ n, P1281284306083634321.a n = A110052 n

theorem P1281284306083634321.correct : P1281284306083634321.Spec := by
  intro n
  simp only [A110052]

end A110052

/-! ## A110052.P8603894684055870013

`7*a(n-1)-10*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=11`
-/

namespace A110052.P8603894684055870013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 11] fun n a =>
  7 * a (n - 1) - 10 * a (n - 2) - 4 * a (n - 3) + 8 * a (n - 4)

end

end A110052.P8603894684055870013

namespace A110052

/-- `7*a(n-1)-10*a(n-2)-4*a(n-3)+8*a(n-4)` -/
def P8603894684055870013.Spec : Prop :=
  ∀ n, P8603894684055870013.a n = A110052 n

end A110052

/-! ## A110052.P15496186213361264509

`∑[4*(a(n-1)+a(n-2))]+floor(2^(n-1))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A110052.P15496186213361264509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 6] fun n f1 =>
  4 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A110052.P15496186213361264509

namespace A110052

/-- `∑[4*(a(n-1)+a(n-2))]+floor(2^(n-1))` -/
def P15496186213361264509.Spec : Prop :=
  ∀ n, P15496186213361264509.a n = A110052 n

end A110052

/-! ## A110052.P8534155582960816553

`∑[A084137(A028310(n)-1)]-1`
-/

namespace A110052.P8534155582960816553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084137 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A110052.P8534155582960816553

namespace A110052

/-- `∑[A084137(A028310(n)-1)]-1` -/
def P8534155582960816553.Spec : Prop :=
  ∀ n, P8534155582960816553.a n = A110052 n

end A110052

/-! ## A110052.P3051174809199644622

`∑[A084137(n)]-A084137(n)`
-/

namespace A110052.P3051174809199644622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084137 n

end

end A110052.P3051174809199644622

namespace A110052

/-- `∑[A084137(n)]-A084137(n)` -/
def P3051174809199644622.Spec : Prop :=
  ∀ n, P3051174809199644622.a n = A110052 n

end A110052

/-! ## A110052.P2920080065391213506

`A110050(n)%A086348(n)/3`
-/

namespace A110052.P2920080065391213506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A110050 n) (A086348 n) : ℚ) / 3

end

end A110052.P2920080065391213506

namespace A110052

/-- `A110050(n)%A086348(n)/3` -/
def P2920080065391213506.Spec : Prop :=
  ∀ n, P2920080065391213506.a n = (A110052 n : ℚ)

end A110052

/-! ## A110052.P1617919580985923345

`∑[A108051(n+1)]-A006668(n+2)`
-/

namespace A110052.P1617919580985923345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006668 (n + 2)

end

end A110052.P1617919580985923345

namespace A110052

/-- `∑[A108051(n+1)]-A006668(n+2)` -/
def P1617919580985923345.Spec : Prop :=
  ∀ n, P1617919580985923345.a n = A110052 n

end A110052

/-!
# A110053: Numbers k such that the string 111k is the decimal expansion of a prime number.

The programs for A110053, there is no canonical definition to state claims against.
-/

/-! ## A110053.P13446688064251582788

`lt[A002445(n)*A131816(n), A033950(n+1)]`
-/

namespace A110053.P13446688064251582788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A131816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110053.P13446688064251582788

/-!
# A110056: Least prime that ends a complete Cunningham chain (of the first kind) of length n.

The programs for A110056, there is no canonical definition to state claims against.
-/

/-! ## A110056.P2241628809876709291

`(A005602(n+1)+1)*2^n-1`
-/

namespace A110056.P2241628809876709291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005602 (n + 1) + 1) * (2 ^ n : ℤ) - 1

end

end A110056.P2241628809876709291

/-!
# A110058: Number of nonnegative integer matrices of order n for which all row and column sums equal n.

The programs for A110058, there is no canonical definition to state claims against.
-/

/-! ## A110058.P11364457347016367816

`A333901(∑[4*n])`
-/

namespace A110058.P11364457347016367816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110058.P11364457347016367816

/-! ## A110058.P13371886891367748993

`or(1, A333901(A046092(n)))`
-/

namespace A110058.P13371886891367748993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333901 (A046092 n).toNat)

end

end A110058.P13371886891367748993

/-! ## A110058.P10085363248588911695

`A333901(A046092(n))^A014963(∑[n+1])`
-/

namespace A110058.P10085363248588911695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333901 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A110058.P10085363248588911695

/-! ## A110058.P2243164153189752122

`A000045(gcd(n, n+1))*A333901(A046092(n))`
-/

namespace A110058.P2243164153189752122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A333901 (A046092 n).toNat

end

end A110058.P2243164153189752122

/-! ## A110058.P11594458452900081957

`A000203(((-1)^n)²)*A333901(A046092(n))`
-/

namespace A110058.P11594458452900081957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A333901 (A046092 n).toNat

end

end A110058.P11594458452900081957

/-!
# A110059: Smallest prime ending a complete Cunningham chain of the second kind (2x-1) of length n.

The programs for A110059, there is no canonical definition to state claims against.
-/

/-! ## A110059.P2374999278801320650

`A000010(A005603(n+1)*A006933(n+1))+1`
-/

namespace A110059.P2374999278801320650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005603 (n + 1) * A006933 (n + 1)).toNat + 1

end

end A110059.P2374999278801320650

/-!
# A110061: Expansion of x^2*(-3+4*x)/(1-x^3+x^4).

The programs for A110061, the canonical program `A110061.P16880570805843604324` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110061 has offset 0).

The definition of A110061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-3x^2+4x^3)/(1-x^3+x^4))` (program `A110061.P16880570805843604324`, by `A110061.P16880570805843604324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110061.P16880570805843604324

`ogf((-3x^2+4x^3)/(1-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110061

/-- `ogf((-3x^2+4x^3)/(1-x^3+x^4))` -/
def P16880570805843604324.Spec : Prop :=
  ∀ n, P16880570805843604324.a n = A110061 n

theorem P16880570805843604324.correct : P16880570805843604324.Spec := by
  intro n
  simp only [A110061]

end A110061

/-! ## A110061.P4183133201766397222

`a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=-3, a(3)=4`
-/

namespace A110061.P4183133201766397222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -3, 4] fun n a =>
  a (n - 3) - a (n - 4)

end

end A110061.P4183133201766397222

namespace A110061

/-- `a(n-3)-a(n-4)` -/
def P4183133201766397222.Spec : Prop :=
  ∀ n, P4183133201766397222.a n = A110061 n

end A110061

/-!
# A110062: Expansion of (1 - x + 2*x^2) / (1 - x^3 + x^4).

The programs for A110062, the canonical program `A110062.P3819539069970326827` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110062 has offset 0).

The definition of A110062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2)/(1-x^3+x^4))` (program `A110062.P3819539069970326827`, by `A110062.P3819539069970326827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110062.P3819539069970326827

`ogf((1-x+2x^2)/(1-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110062

/-- `ogf((1-x+2x^2)/(1-x^3+x^4))` -/
def P3819539069970326827.Spec : Prop :=
  ∀ n, P3819539069970326827.a n = A110062 n

theorem P3819539069970326827.correct : P3819539069970326827.Spec := by
  intro n
  simp only [A110062]

end A110062

/-! ## A110062.P2566694735189738935

`a(n-3)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=1`
-/

namespace A110062.P2566694735189738935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 1] fun n a =>
  a (n - 3) - a (n - 4)

end

end A110062.P2566694735189738935

namespace A110062

/-- `a(n-3)-a(n-4)` -/
def P2566694735189738935.Spec : Prop :=
  ∀ n, P2566694735189738935.a n = A110062 n

end A110062

/-! ## A110062.P7245951691853392727

`A124750(n+6)+A124750(n+9)+A124750(n)`
-/

namespace A110062.P7245951691853392727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124750 (n + 6) + (A124750 (n + 9) + A124750 n)

end

end A110062.P7245951691853392727

namespace A110062

/-- `A124750(n+6)+A124750(n+9)+A124750(n)` -/
def P7245951691853392727.Spec : Prop :=
  ∀ n, P7245951691853392727.a n = A110062 n

end A110062

/-!
# A110063: Expansion of -(3 - x + 2*x^2) / (1 - x^3 + x^4).

The programs for A110063, the canonical program `A110063.P6744861323725502099` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110063 has offset 0).

The definition of A110063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-3+x-2x^2)/(1-x^3+x^4))` (program `A110063.P6744861323725502099`, by `A110063.P6744861323725502099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110063.P6744861323725502099

`ogf((-3+x-2x^2)/(1-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110063

/-- `ogf((-3+x-2x^2)/(1-x^3+x^4))` -/
def P6744861323725502099.Spec : Prop :=
  ∀ n, P6744861323725502099.a n = A110063 n

theorem P6744861323725502099.correct : P6744861323725502099.Spec := by
  intro n
  simp only [A110063]

end A110063

/-! ## A110063.P12653240494090746269

`a(n-3)-a(n-4)` with `a(0)=-3, a(1)=1, a(2)=-2, a(3)=-3`
-/

namespace A110063.P12653240494090746269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-3, 1, -2, -3] fun n a =>
  a (n - 3) - a (n - 4)

end

end A110063.P12653240494090746269

namespace A110063

/-- `a(n-3)-a(n-4)` -/
def P12653240494090746269.Spec : Prop :=
  ∀ n, P12653240494090746269.a n = A110063 n

end A110063

/-!
# A110064: a(n+4) = a(n+1) - a(n), a(0) = 1, a(1) = -4, a(2) = 0, a(3) = 1.

The programs for A110064, the canonical program `A110064.P11217823402440874810` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110064 has offset 0).

The definition of A110064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110064.P6231881875952719210

`ogf((1-4x)/(1-x^3+x^4))`
-/

namespace A110064.P6231881875952719210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, 0, 0, -1, 1] n

end

end A110064.P6231881875952719210

namespace A110064

/-- `ogf((1-4x)/(1-x^3+x^4))` -/
def P6231881875952719210.Spec : Prop :=
  ∀ n, P6231881875952719210.a n = A110064 n

end A110064

/-! ## A110064.P11217823402440874810

`a(n-3)-a(n-4)` with `a(0)=1, a(1)=-4, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110064

/-- `a(n-3)-a(n-4)` -/
def P11217823402440874810.Spec : Prop :=
  ∀ n, P11217823402440874810.a n = A110064 n

theorem P11217823402440874810.correct : P11217823402440874810.Spec := by
  intro n
  simp only [A110064]

end A110064

/-!
# A110066: Numbers k such that 10^k - prime(k) is prime.

The programs for A110066, there is no canonical definition to state claims against.
-/

/-! ## A110066.P3442768279273118566

`A334593(A115625(2*n))+A180116(n+1)`
-/

namespace A110066.P3442768279273118566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334593 (A115625 (2 * n)).toNat + A180116 (n + 1)

end

end A110066.P3442768279273118566

/-!
# A110068: Numbers k such that 10^(k-1) + pi(k) is the smallest k-digit prime.

The programs for A110068, there is no canonical definition to state claims against.
-/

/-! ## A110068.P145699202982130950

`xor(A025239(A169606(n+1)), A230878(n))`
-/

namespace A110068.P145699202982130950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025239 (A169606 (n + 1)).toNat) (A230878 n)

end

end A110068.P145699202982130950

/-!
# A110073: Numbers n such that sigma(n)=2n-phi(phi(n)).

The programs for A110073, there is no canonical definition to state claims against.
-/

/-! ## A110073.P11002220059053817275

`A194529(Δ[A002592(n)])`
-/

namespace A110073.P11002220059053817275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194529 (f1 (n + 1) - f1 n).toNat

end

end A110073.P11002220059053817275

/-! ## A110073.P306233054199191138

`A287929(∑[∏[A042473(n)]])`
-/

namespace A110073.P306233054199191138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110073.P306233054199191138

/-!
# A110075: Numbers of the form 3*2^p*(2^p-1) where 2^p-1 is a (Mersenne) prime greater than 3.

The programs for A110075, there is no canonical definition to state claims against.
-/

/-! ## A110075.P10333849968845235524

`3*A139256(n+2)`
-/

namespace A110075.P10333849968845235524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139256 (n + 2)

end

end A110075.P10333849968845235524

/-! ## A110075.P17910062219243199617

`3*A065125(n+3)`
-/

namespace A110075.P17910062219243199617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A065125 (n + 3)

end

end A110075.P17910062219243199617

/-! ## A110075.P15687623901303568440

`6*A000396(n+2)`
-/

namespace A110075.P15687623901303568440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000396 (n + 2)

end

end A110075.P15687623901303568440

/-! ## A110075.P14624458960869171100

`2*A103897(A000043(n+2))`
-/

namespace A110075.P14624458960869171100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103897 (A000043 (n + 2)).toNat

end

end A110075.P14624458960869171100

/-!
# A110076: a(n) is the largest number m such that sigma(m)=10^n, or if there is no such m a(n)=0.

The programs for A110076, there is no canonical definition to state claims against.
-/

/-! ## A110076.P1813722175977720475

`A057637(10^n)`
-/

namespace A110076.P1813722175977720475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (10 ^ n)

end

end A110076.P1813722175977720475

/-!
# A110077: a(n) is the smallest number m such that sigma(m)=10^n and if there is no such m, a(n)=0.

The programs for A110077, there is no canonical definition to state claims against.
-/

/-! ## A110077.P5579729359886763057

`A051444(10^n)`
-/

namespace A110077.P5579729359886763057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (10 ^ n)

end

end A110077.P5579729359886763057

/-!
# A110082: Numbers of the form 2^(m-1)*(4^m+2^m-1) where 4^m+2^m-1 is prime.

The programs for A110082, there is no canonical definition to state claims against.
-/

/-! ## A110082.P2547622137439203570

`filter[A110079(n+1), A179761(#)]`
-/

namespace A110082.P2547622137439203570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179761 (f1 j).toNat = 1) n)

end

end A110082.P2547622137439203570

/-!
# A110083: a(n+1) = Sum_{k=0..n} (n!/k!)*binomial(n,k)*a(k).

The programs for A110083, there is no canonical definition to state claims against.
-/

/-! ## A110083.P10094719977903719065

`A132007(∑[n-char[1]])`
-/

namespace A110083.P10094719977903719065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110083.P10094719977903719065

/-! ## A110083.P11963696639933292280

`or(A132007(∑[n]), A151933(n))`
-/

namespace A110083.P11963696639933292280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132007 (∑ j ∈ Finset.range (n + 1), f1 j)) (A151933 n)

end

end A110083.P11963696639933292280

/-! ## A110083.P7723133526647691357

`gcd(A132007(A000217(n)), A151933(n))`
-/

namespace A110083.P7723133526647691357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132007 (A000217 n).toNat) (A151933 n)

end

end A110083.P7723133526647691357

/-! ## A110083.P11254711209955518907

`A151933(n+1)+A132007(A000217(n))`
-/

namespace A110083.P11254711209955518907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (n + 1) + A132007 (A000217 n).toNat

end

end A110083.P11254711209955518907

/-! ## A110083.P7890519152432733091

`A132007(A000217(n))-A121607(n+1)%2`
-/

namespace A110083.P7890519152432733091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132007 (A000217 n).toNat - Int.tmod (A121607 (n + 1)) 2

end

end A110083.P7890519152432733091

/-! ## A110083.P11588502171229403612

`A026820(A000124(n))*A132007(A000217(n))`
-/

namespace A110083.P11588502171229403612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A000124 n).toNat * A132007 (A000217 n).toNat

end

end A110083.P11588502171229403612

/-! ## A110083.P2691697314053944383

`A132007(A000217(n))*A132007(A151933(n)²)`
-/

namespace A110083.P2691697314053944383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132007 (A000217 n).toNat * A132007 (A151933 n ^ 2).toNat

end

end A110083.P2691697314053944383

/-!
# A110085: Numbers k such that sigma(k) - phi(k) < tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

The programs for A110085, the canonical program `A110085.P1056097740182562448` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110085 has offset 1).

The definition of A110085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110085.P1056097740182562448

`lt[0, A353276(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110085

/-- `lt[0, A353276(n+1)]+1` -/
def P1056097740182562448.Spec : Prop :=
  ∀ n, (P1056097740182562448.a n : ℤ) = A110085 (n + 1)

theorem P1056097740182562448.correct : P1056097740182562448.Spec := by
  intro n
  simp only [A110085, Nat.add_sub_cancel]

end A110085

/-! ## A110085.P10322071982023109307

`lt[0, A353276(A000038(n)+n)]`
-/

namespace A110085.P10322071982023109307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110085.P10322071982023109307

namespace A110085

/-- `lt[0, A353276(A000038(n)+n)]` -/
def P10322071982023109307.Spec : Prop :=
  ∀ n, (P10322071982023109307.a n : ℤ) = A110085 (n + 1)

end A110085

/-! ## A110085.P9258553946721036657

`lt[0, A353276(or(n, A000038(n)))]`
-/

namespace A110085.P9258553946721036657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110085.P9258553946721036657

namespace A110085

/-- `lt[0, A353276(or(n, A000038(n)))]` -/
def P9258553946721036657.Spec : Prop :=
  ∀ n, (P9258553946721036657.a n : ℤ) = A110085 (n + 1)

end A110085

/-! ## A110085.P8778248047630020837

`lt[A051612(n+1), A110088(n+1)]+1`
-/

namespace A110085.P8778248047630020837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110085.P8778248047630020837

namespace A110085

/-- `lt[A051612(n+1), A110088(n+1)]+1` -/
def P8778248047630020837.Spec : Prop :=
  ∀ n, (P8778248047630020837.a n : ℤ) = A110085 (n + 1)

end A110085

/-! ## A110085.P14182903687061263271

`lt[A000038(n), A353276(A028310(n))]`
-/

namespace A110085.P14182903687061263271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110085.P14182903687061263271

namespace A110085

/-- `lt[A000038(n), A353276(A028310(n))]` -/
def P14182903687061263271.Spec : Prop :=
  ∀ n, (P14182903687061263271.a n : ℤ) = A110085 (n + 1)

end A110085

/-!
# A110086: Numbers k such that sigma(k) - phi(k) <= tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

The programs for A110086, the canonical program `A110086.P3945987733214712058` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110086 has offset 1).

The definition of A110086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110086.P3945987733214712058

`lt[-1, A353276(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110086

/-- `lt[-1, A353276(n+1)]+1` -/
def P3945987733214712058.Spec : Prop :=
  ∀ n, (P3945987733214712058.a n : ℤ) = A110086 (n + 1)

theorem P3945987733214712058.correct : P3945987733214712058.Spec := by
  intro n
  simp only [A110086, Nat.add_sub_cancel]

end A110086

/-! ## A110086.P7062052505389645023

`A028310(lt[log2(1/2), A353276(n+1)]+1)`
-/

namespace A110086.P7062052505389645023
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1)

end

end A110086.P7062052505389645023

namespace A110086

/-- `A028310(lt[log2(1/2), A353276(n+1)]+1)` -/
def P7062052505389645023.Spec : Prop :=
  ∀ n, P7062052505389645023.a n = A110086 (n + 1)

end A110086

/-! ## A110086.P14931963838790964145

`(lt[1-sqrt(3), A353276(n+1)]+1)%A154106(n)`
-/

namespace A110086.P14931963838790964145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1 : ℤ) (A154106 n)

end

end A110086.P14931963838790964145

namespace A110086

/-- `(lt[1-sqrt(3), A353276(n+1)]+1)%A154106(n)` -/
def P14931963838790964145.Spec : Prop :=
  ∀ n, P14931963838790964145.a n = A110086 (n + 1)

end A110086

/-! ## A110086.P10423147363369748666

`(lt[A260196(n+2), A353276(n+1)]+1)%A022884(n+1)`
-/

namespace A110086.P10423147363369748666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1 : ℤ) (A022884 (n + 1))

end

end A110086.P10423147363369748666

namespace A110086

/-- `(lt[A260196(n+2), A353276(n+1)]+1)%A022884(n+1)` -/
def P10423147363369748666.Spec : Prop :=
  ∀ n, P10423147363369748666.a n = A110086 (n + 1)

end A110086

/-! ## A110086.P15998490108787597156

`∪[A110085(n+1), A240960(n+1)]`
-/

namespace A110086.P15998490108787597156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110086.P15998490108787597156

namespace A110086

/-- `∪[A110085(n+1), A240960(n+1)]` -/
def P15998490108787597156.Spec : Prop :=
  ∀ n, (P15998490108787597156.a n : ℤ) = A110086 (n + 1)

end A110086

/-! ## A110086.P596855064330489736

`lt[A057428(n), A353276(A233583(n+1))]`
-/

namespace A110086.P596855064330489736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110086.P596855064330489736

namespace A110086

/-- `lt[A057428(n), A353276(A233583(n+1))]` -/
def P596855064330489736.Spec : Prop :=
  ∀ n, (P596855064330489736.a n : ℤ) = A110086 (n + 1)

end A110086

/-!
# A110087: Numbers k such that sigma(k) - phi(k) > tau(k)^omega(k), where sigma = A000203, phi = A000010, tau = A000005 and omega = A001221.

The programs for A110087, the canonical program `A110087.P11443064098674198962` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110087 has offset 1).

The definition of A110087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110087.P11443064098674198962

`lt[A353276(n+2), 0]+2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110087

/-- `lt[A353276(n+2), 0]+2` -/
def P11443064098674198962.Spec : Prop :=
  ∀ n, (P11443064098674198962.a n : ℤ) = A110087 (n + 1)

theorem P11443064098674198962.correct : P11443064098674198962.Spec := by
  intro n
  simp only [A110087, Nat.add_sub_cancel]

end A110087

/-! ## A110087.P249098525632822976

`lt[A353276(A028310(n))+1, 1]`
-/

namespace A110087.P249098525632822976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110087.P249098525632822976

namespace A110087

/-- `lt[A353276(A028310(n))+1, 1]` -/
def P249098525632822976.Spec : Prop :=
  ∀ n, (P249098525632822976.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P12143793558409319440

`lt[A110088(n+1), A051612(n+1)]+1`
-/

namespace A110087.P12143793558409319440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A110087.P12143793558409319440

namespace A110087

/-- `lt[A110088(n+1), A051612(n+1)]+1` -/
def P12143793558409319440.Spec : Prop :=
  ∀ n, (P12143793558409319440.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P7786096153924223771

`eq[char[A110086(n+1)], A000007(n)]`
-/

namespace A110087.P7786096153924223771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110087.P7786096153924223771

namespace A110087

/-- `eq[char[A110086(n+1)], A000007(n)]` -/
def P7786096153924223771.Spec : Prop :=
  ∀ n, (P7786096153924223771.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P3208523110193881687

`eq[char[A110086(n+1)], A000038(n)]`
-/

namespace A110087.P3208523110193881687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110087.P3208523110193881687

namespace A110087

/-- `eq[char[A110086(n+1)], A000038(n)]` -/
def P3208523110193881687.Spec : Prop :=
  ∀ n, (P3208523110193881687.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P1295096414082772961

`eq[char[A110086(n+1)], A130706(n)]`
-/

namespace A110087.P1295096414082772961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110087.P1295096414082772961

namespace A110087

/-- `eq[char[A110086(n+1)], A130706(n)]` -/
def P1295096414082772961.Spec : Prop :=
  ∀ n, (P1295096414082772961.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P4566298764625641701

`eq[char[A110086(n+1)], A285476(n)]`
-/

namespace A110087.P4566298764625641701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110087.P4566298764625641701

namespace A110087

/-- `eq[char[A110086(n+1)], A285476(n)]` -/
def P4566298764625641701.Spec : Prop :=
  ∀ n, (P4566298764625641701.a n : ℤ) = A110087 (n + 1)

end A110087

/-! ## A110087.P12765426224366072435

`eq[char[A110086(n+1)], A266220(2*n)]`
-/

namespace A110087.P12765426224366072435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A110087.P12765426224366072435

namespace A110087

/-- `eq[char[A110086(n+1)], A266220(2*n)]` -/
def P12765426224366072435.Spec : Prop :=
  ∀ n, (P12765426224366072435.a n : ℤ) = A110087 (n + 1)

end A110087

/-!
# A110088: a(n) = tau(n)^omega(n), where tau = A000005 and omega = A001221.

The programs for A110088, the canonical program `A110088.P8337879305070338118` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110088 has offset 1).

The definition of A110088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110088.P8337879305070338118

`A000005(n+1)^A001221(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110088

/-- `A000005(n+1)^A001221(n+1)` -/
def P8337879305070338118.Spec : Prop :=
  ∀ n, P8337879305070338118.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P8801500574055345268

`∏{p}[n+1, A000005(lcm(#, n+1))]`
-/

namespace A110088.P8801500574055345268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.lcm p (n + 1))

end

end A110088.P8801500574055345268

namespace A110088

/-- `∏{p}[n+1, A000005(lcm(#, n+1))]` -/
def P8801500574055345268.Spec : Prop :=
  ∀ n, P8801500574055345268.a n = A110088 (n + 1)

end A110088

/-! ## A110088.P3499963008206036609

`∏{e}[n+1, #+1]^A001222(∏{p}[n+1, #])`
-/

namespace A110088.P3499963008206036609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℤ)

end

end A110088.P3499963008206036609

namespace A110088

/-- `∏{e}[n+1, #+1]^A001222(∏{p}[n+1, #])` -/
def P3499963008206036609.Spec : Prop :=
  ∀ n, P3499963008206036609.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P8063108168690802581

`Δ[A006218(n)]^A001221(n+1)`
-/

namespace A110088.P8063108168690802581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P8063108168690802581

namespace A110088

/-- `Δ[A006218(n)]^A001221(n+1)` -/
def P8063108168690802581.Spec : Prop :=
  ∀ n, P8063108168690802581.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P4900299022031974098

`Δ[A054519(n)]^A001221(n+1)`
-/

namespace A110088.P4900299022031974098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P4900299022031974098

namespace A110088

/-- `Δ[A054519(n)]^A001221(n+1)` -/
def P4900299022031974098.Spec : Prop :=
  ∀ n, P4900299022031974098.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P7526793740154883885

`A353276(n+1)+A051612(n+1)`
-/

namespace A110088.P7526793740154883885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353276 (n + 1) + A051612 (n + 1)

end

end A110088.P7526793740154883885

namespace A110088

/-- `A353276(n+1)+A051612(n+1)` -/
def P7526793740154883885.Spec : Prop :=
  ∀ n, P7526793740154883885.a n = A110088 (n + 1)

end A110088

/-! ## A110088.P4616164690934744392

`sqrt(A000005(n+1)^∑{p}[n+1, A000005(#)])`
-/

namespace A110088.P4616164690934744392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A000005 (n + 1) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A000005 p : ℤ) : ℝ)

end

end A110088.P4616164690934744392

namespace A110088

/-- `sqrt(A000005(n+1)^∑{p}[n+1, A000005(#)])` -/
def P4616164690934744392.Spec : Prop :=
  ∀ n, P4616164690934744392.a n = (A110088 (n + 1) : ℝ)

end A110088

/-! ## A110088.P17847129483859852599

`(A038040(n+1)/(n+1))^A001221(n+1)`
-/

namespace A110088.P17847129483859852599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P17847129483859852599

namespace A110088

/-- `(A038040(n+1)/(n+1))^A001221(n+1)` -/
def P17847129483859852599.Spec : Prop :=
  ∀ n, P17847129483859852599.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P11826064083589001940

`A000203(n+1)+A353276(n+1)-A000010(n+1)`
-/

namespace A110088.P11826064083589001940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A353276 (n + 1) - A000010 (n + 1))

end

end A110088.P11826064083589001940

namespace A110088

/-- `A000203(n+1)+A353276(n+1)-A000010(n+1)` -/
def P11826064083589001940.Spec : Prop :=
  ∀ n, P11826064083589001940.a n = A110088 (n + 1)

end A110088

/-! ## A110088.P12232722294692927560

`∑{d}[n+1, A057427(#)]^A001221(n+1)`
-/

namespace A110088.P12232722294692927560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P12232722294692927560

namespace A110088

/-- `∑{d}[n+1, A057427(#)]^A001221(n+1)` -/
def P12232722294692927560.Spec : Prop :=
  ∀ n, P12232722294692927560.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P687337706670718053

`A000005(n+1)^A106404(2*(n+1))`
-/

namespace A110088.P687337706670718053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A106404 (2 * (n + 1)) : ℤ)

end

end A110088.P687337706670718053

namespace A110088

/-- `A000005(n+1)^A106404(2*(n+1))` -/
def P687337706670718053.Spec : Prop :=
  ∀ n, P687337706670718053.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P14693740717532129726

`A000005(n+1)^A087802(n+1)`
-/

namespace A110088.P14693740717532129726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A087802 (n + 1) : ℤ)

end

end A110088.P14693740717532129726

namespace A110088

/-- `A000005(n+1)^A087802(n+1)` -/
def P14693740717532129726.Spec : Prop :=
  ∀ n, P14693740717532129726.a n = (A110088 (n + 1) : ℚ)

end A110088

/-! ## A110088.P11824954667223703617

`A001222(A100587(n+1)+1)^A001221(n+1)`
-/

namespace A110088.P11824954667223703617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A100587 (n + 1) + 1).toNat : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A110088.P11824954667223703617

namespace A110088

/-- `A001222(A100587(n+1)+1)^A001221(n+1)` -/
def P11824954667223703617.Spec : Prop :=
  ∀ n, P11824954667223703617.a n = (A110088 (n + 1) : ℚ)

end A110088

/-!
# A110090: Numerators of sequence of rationals defined by r(n) = n for n<=1 and for n>1: r(n) = (sum of denominators of r(n-1) and r(n-2))/(sum of numerators of r(n-1) and r(n-2)).

The programs for A110090, the canonical program `A110090.P13418503851196200808` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110090 has offset 0).

The definition of A110090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110090.P13418503851196200808

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=1, a(5)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110090

/-- `2*a(n-3)-a(n-6)` -/
def P13418503851196200808.Spec : Prop :=
  ∀ n, P13418503851196200808.a n = A110090 n

theorem P13418503851196200808.correct : P13418503851196200808.Spec := by
  intro n
  simp only [A110090]

end A110090

/-! ## A110090.P6732180854851396120

`gcd(∑[4*n], ∑[n²%3])`
-/

namespace A110090.P6732180854851396120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A110090.P6732180854851396120

namespace A110090

/-- `gcd(∑[4*n], ∑[n²%3])` -/
def P6732180854851396120.Spec : Prop :=
  ∀ n, (P6732180854851396120.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P9665081209925735679

`xor(1, a(n-3))+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P9665081209925735679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.xor 1 (a (n - 3)) + 1

end

end A110090.P9665081209925735679

namespace A110090

/-- `xor(1, a(n-3))+1` -/
def P9665081209925735679.Spec : Prop :=
  ∀ n, (P9665081209925735679.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P4292504812603519286

`abs(xor(-2, a(n-3)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P4292504812603519286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  |Int.xor (-2) (a (n - 3))|

end

end A110090.P4292504812603519286

namespace A110090

/-- `abs(xor(-2, a(n-3)))` -/
def P4292504812603519286.Spec : Prop :=
  ∀ n, P4292504812603519286.a n = A110090 n

end A110090

/-! ## A110090.P12202421262570720153

`-xor(-2, a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P12202421262570720153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  -Int.xor (-2) (a (n - 3))

end

end A110090.P12202421262570720153

namespace A110090

/-- `-xor(-2, a(n-3))` -/
def P12202421262570720153.Spec : Prop :=
  ∀ n, P12202421262570720153.a n = A110090 n

end A110090

/-! ## A110090.P3571129408568794709

`(2*ceil(n/3))^(1-n%3)²`
-/

namespace A110090.P3571129408568794709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ⌈(n : ℚ) / 3⌉ : ℚ) ^ ((1 - ((n % 3 : ℕ) : ℤ)) ^ 2 : ℤ)

end

end A110090.P3571129408568794709

namespace A110090

/-- `(2*ceil(n/3))^(1-n%3)²` -/
def P3571129408568794709.Spec : Prop :=
  ∀ n, P3571129408568794709.a n = (A110090 n : ℚ)

end A110090

/-! ## A110090.P10538653311832810275

`gcd(2*(n²+n), ceil(2*n/3))`
-/

namespace A110090.P10538653311832810275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n ^ 2 + n) : ℤ) ⌈2 * ((n : ℚ) / 3)⌉

end

end A110090.P10538653311832810275

namespace A110090

/-- `gcd(2*(n²+n), ceil(2*n/3))` -/
def P10538653311832810275.Spec : Prop :=
  ∀ n, (P10538653311832810275.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P13294953666165180343

`∑[∑[a(n-3)+3]]%(n+1)` with `a(0)=2, a(1)=5, a(2)=1`
-/

namespace A110090.P13294953666165180343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 1] fun n f2 =>
  f2 (n - 3) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A110090.P13294953666165180343

namespace A110090

/-- `∑[∑[a(n-3)+3]]%(n+1)` -/
def P13294953666165180343.Spec : Prop :=
  ∀ n, (P13294953666165180343.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P9480049481050771413

`a(n-3)+2%a(n-3)²` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A110090.P9480049481050771413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n a =>
  a (n - 3) + 2 % a (n - 3) ^ 2

end

end A110090.P9480049481050771413

namespace A110090

/-- `a(n-3)+2%a(n-3)²` -/
def P9480049481050771413.Spec : Prop :=
  ∀ n, (P9480049481050771413.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P11479560481919701581

`a(n-3)+(-1)^a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P11479560481919701581
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 3)) + 1)

end

end A110090.P11479560481919701581

namespace A110090

/-- `a(n-3)+(-1)^a(n-3)+1` -/
def P11479560481919701581.Spec : Prop :=
  ∀ n, P11479560481919701581.a n = (A110090 n : ℝ)

end A110090

/-! ## A110090.P4195020792735531992

`lcm(2*n+1, ceil(2*n/3))/(2*n+1)`
-/

namespace A110090.P4195020792735531992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n + 1 : ℤ) ⌈2 * ((n : ℚ) / 3)⌉ : ℚ) / (2 * n + 1 : ℚ)

end

end A110090.P4195020792735531992

namespace A110090

/-- `lcm(2*n+1, ceil(2*n/3))/(2*n+1)` -/
def P4195020792735531992.Spec : Prop :=
  ∀ n, P4195020792735531992.a n = (A110090 n : ℚ)

end A110090

/-! ## A110090.P16396068979563498995

`C(A302402(n), (1-n%3)²)`
-/

namespace A110090.P16396068979563498995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302402 n).toNat ((1 - ((n % 3 : ℕ) : ℤ)) ^ 2).toNat

end

end A110090.P16396068979563498995

namespace A110090

/-- `C(A302402(n), (1-n%3)²)` -/
def P16396068979563498995.Spec : Prop :=
  ∀ n, (P16396068979563498995.a n : ℤ) = A110090 n

end A110090

/-! ## A110090.P4850383906836471983

`A004442(a(n-3))+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P4850383906836471983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A004442 (a (n - 3)).toNat + 1

end

end A110090.P4850383906836471983

namespace A110090

/-- `A004442(a(n-3))+1` -/
def P4850383906836471983.Spec : Prop :=
  ∀ n, P4850383906836471983.a n = A110090 n

end A110090

/-! ## A110090.P2647639749698292726

`A014681(a(n-3)+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P2647639749698292726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A014681 (a (n - 3) + 1).toNat

end

end A110090.P2647639749698292726

namespace A110090

/-- `A014681(a(n-3)+1)` -/
def P2647639749698292726.Spec : Prop :=
  ∀ n, P2647639749698292726.a n = A110090 n

end A110090

/-! ## A110090.P11772081239159542303

`A159966(a(n-3)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P11772081239159542303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A159966 (a (n - 3) + 2).toNat

end

end A110090.P11772081239159542303

namespace A110090

/-- `A159966(a(n-3)+2)` -/
def P11772081239159542303.Spec : Prop :=
  ∀ n, P11772081239159542303.a n = A110090 n

end A110090

/-! ## A110090.P17503635459951008468

`A186421(a(n-3)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A110090.P17503635459951008468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A186421 (a (n - 3) + 2).toNat

end

end A110090.P17503635459951008468

namespace A110090

/-- `A186421(a(n-3)+2)` -/
def P17503635459951008468.Spec : Prop :=
  ∀ n, P17503635459951008468.a n = A110090 n

end A110090

/-! ## A110090.P12955294860540343467

`A110091(n)-A057078(n)`
-/

namespace A110090.P12955294860540343467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 n - A057078 n

end

end A110090.P12955294860540343467

namespace A110090

/-- `A110091(n)-A057078(n)` -/
def P12955294860540343467.Spec : Prop :=
  ∀ n, P12955294860540343467.a n = A110090 n

end A110090

/-! ## A110090.P1336703652290930006

`A222657(n)-A226122(n)`
-/

namespace A110090.P1336703652290930006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222657 n - A226122 n

end

end A110090.P1336703652290930006

namespace A110090

/-- `A222657(n)-A226122(n)` -/
def P1336703652290930006.Spec : Prop :=
  ∀ n, P1336703652290930006.a n = A110090 n

end A110090

/-! ## A110090.P5841973942366266781

`A124625(A322042(n+1)+1)`
-/

namespace A110090.P5841973942366266781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A322042 (n + 1) + 1).toNat

end

end A110090.P5841973942366266781

namespace A110090

/-- `A124625(A322042(n+1)+1)` -/
def P5841973942366266781.Spec : Prop :=
  ∀ n, P5841973942366266781.a n = A110090 n

end A110090

/-! ## A110090.P17704448628731876394

`A141310(n-A002264(n))-1`
-/

namespace A110090.P17704448628731876394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n : ℤ) - A002264 n).toNat - 1

end

end A110090.P17704448628731876394

namespace A110090

/-- `A141310(n-A002264(n))-1` -/
def P17704448628731876394.Spec : Prop :=
  ∀ n, P17704448628731876394.a n = A110090 n

end A110090

/-!
# A110091: Denominators of sequence of rationals defined by r(n) = n for n<=1 and for n>1: r(n) = (sum of denominators of r(n-1) and r(n-2))/(sum of numerators of r(n-1) and r(n-2)).

The programs for A110091, the canonical program `A110091.P12833351089411166957` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110091 has offset 0).

The definition of A110091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110091.P12833351089411166957

`1+2*floor(n/3)*(1-floor((n-1)/3)+floor((n-2)/3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110091

/-- `1+2*floor(n/3)*(1-floor((n-1)/3)+floor((n-2)/3))` -/
def P12833351089411166957.Spec : Prop :=
  ∀ n, P12833351089411166957.a n = A110091 n

theorem P12833351089411166957.correct : P12833351089411166957.Spec := by
  intro n
  simp only [A110091]

end A110091

/-! ## A110091.P7627955568491805914

`(A110090(n-1)+A110090(n-2))/gcd(a(n-1)+a(n-2), A110090(n-1)+A110090(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A110091.P7627955568491805914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A110090 (n - 1) + A110090 (n - 2) : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) (A110090 (n - 1) + A110090 (n - 2)) : ℚ)

end

end A110091.P7627955568491805914

namespace A110091

/-- `(A110090(n-1)+A110090(n-2))/gcd(a(n-1)+a(n-2), A110090(n-1)+A110090(n-2))` -/
def P7627955568491805914.Spec : Prop :=
  ∀ n, P7627955568491805914.a n = (A110091 n : ℚ)

end A110091

/-! ## A110091.P8044673117155882984

`abs(Δ[lcm(3, n)/3])`
-/

namespace A110091.P8044673117155882984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110091.P8044673117155882984

namespace A110091

/-- `abs(Δ[lcm(3, n)/3])` -/
def P8044673117155882984.Spec : Prop :=
  ∀ n, P8044673117155882984.a n = (A110091 n : ℚ)

end A110091

/-! ## A110091.P12180197973636918308

`abs(Δ[n/gcd(3, n)])`
-/

namespace A110091.P12180197973636918308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110091.P12180197973636918308

namespace A110091

/-- `abs(Δ[n/gcd(3, n)])` -/
def P12180197973636918308.Spec : Prop :=
  ∀ n, P12180197973636918308.a n = (A110091 n : ℚ)

end A110091

/-! ## A110091.P13111339284407238550

`or(1, C(round(2*n/3), a(n-1)))` with `a(0)=1`
-/

namespace A110091.P13111339284407238550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat (a (n - 1)))

end

end A110091.P13111339284407238550

namespace A110091

/-- `or(1, C(round(2*n/3), a(n-1)))` -/
def P13111339284407238550.Spec : Prop :=
  ∀ n, (P13111339284407238550.a n : ℤ) = A110091 n

end A110091

/-! ## A110091.P6792353586143794608

`gcd(a(n-3)+2, a(n-3)%a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A110091.P6792353586143794608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Nat.gcd (a (n - 3) + 2) (a (n - 3) % a (n - 1))

end

end A110091.P6792353586143794608

namespace A110091

/-- `gcd(a(n-3)+2, a(n-3)%a(n-1))` -/
def P6792353586143794608.Spec : Prop :=
  ∀ n, (P6792353586143794608.a n : ℤ) = A110091 n

end A110091

/-! ## A110091.P3997321449094083895

`A005408((n+2)%ceil((n+2)/3))`
-/

namespace A110091.P3997321449094083895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (n + 2 : ℤ) ⌈(n + 2 : ℚ) / 3⌉).toNat

end

end A110091.P3997321449094083895

namespace A110091

/-- `A005408((n+2)%ceil((n+2)/3))` -/
def P3997321449094083895.Spec : Prop :=
  ∀ n, P3997321449094083895.a n = A110091 n

end A110091

/-! ## A110091.P16907573769770383297

`A093178(A133310(n))`
-/

namespace A110091.P16907573769770383297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A133310 n).toNat

end

end A110091.P16907573769770383297

namespace A110091

/-- `A093178(A133310(n))` -/
def P16907573769770383297.Spec : Prop :=
  ∀ n, P16907573769770383297.a n = A110091 n

end A110091

/-! ## A110091.P7176014088735949570

`A093178(A226122(n))`
-/

namespace A110091.P7176014088735949570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A226122 n).toNat

end

end A110091.P7176014088735949570

namespace A110091

/-- `A093178(A226122(n))` -/
def P7176014088735949570.Spec : Prop :=
  ∀ n, P7176014088735949570.a n = A110091 n

end A110091

/-! ## A110091.P2748061841211413202

`gcd(A102899(n), A117909(n))`
-/

namespace A110091.P2748061841211413202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102899 n) (A117909 n)

end

end A110091.P2748061841211413202

namespace A110091

/-- `gcd(A102899(n), A117909(n))` -/
def P2748061841211413202.Spec : Prop :=
  ∀ n, (P2748061841211413202.a n : ℤ) = A110091 n

end A110091

/-! ## A110091.P16407457118849640237

`gcd(A133310(n), A138188(n))`
-/

namespace A110091.P16407457118849640237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133310 n) (A138188 n)

end

end A110091.P16407457118849640237

namespace A110091

/-- `gcd(A133310(n), A138188(n))` -/
def P16407457118849640237.Spec : Prop :=
  ∀ n, (P16407457118849640237.a n : ℤ) = A110091 n

end A110091

/-! ## A110091.P14453215207339164966

`gcd(A030440(n), A130823(n+1))`
-/

namespace A110091.P14453215207339164966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030440 n) (A130823 (n + 1))

end

end A110091.P14453215207339164966

namespace A110091

/-- `gcd(A030440(n), A130823(n+1))` -/
def P14453215207339164966.Spec : Prop :=
  ∀ n, (P14453215207339164966.a n : ℤ) = A110091 n

end A110091

/-! ## A110091.P4761359147443955719

`abs(Δ[A051176(n)])`
-/

namespace A110091.P4761359147443955719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A110091.P4761359147443955719

namespace A110091

/-- `abs(Δ[A051176(n)])` -/
def P4761359147443955719.Spec : Prop :=
  ∀ n, P4761359147443955719.a n = A110091 n

end A110091

/-! ## A110091.P10587188950749533152

`or(1, A092942(n+1)-1)`
-/

namespace A110091.P10587188950749533152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A092942 (n + 1) - 1)

end

end A110091.P10587188950749533152

namespace A110091

/-- `or(1, A092942(n+1)-1)` -/
def P10587188950749533152.Spec : Prop :=
  ∀ n, P10587188950749533152.a n = A110091 n

end A110091

/-! ## A110091.P14581583099737679306

`A267458(A117909(n+1))`
-/

namespace A110091.P14581583099737679306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A117909 (n + 1)).toNat

end

end A110091.P14581583099737679306

namespace A110091

/-- `A267458(A117909(n+1))` -/
def P14581583099737679306.Spec : Prop :=
  ∀ n, P14581583099737679306.a n = A110091 n

end A110091

/-! ## A110091.P12486298692442810836

`A006083(A047271(n+2))`
-/

namespace A110091.P12486298692442810836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A047271 (n + 2)).toNat

end

end A110091.P12486298692442810836

namespace A110091

/-- `A006083(A047271(n+2))` -/
def P12486298692442810836.Spec : Prop :=
  ∀ n, P12486298692442810836.a n = A110091 n

end A110091

/-! ## A110091.P432614393288090694

`A092942(A131561(n)+n)`
-/

namespace A110091.P432614393288090694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A131561 n + (n : ℤ)).toNat

end

end A110091.P432614393288090694

namespace A110091

/-- `A092942(A131561(n)+n)` -/
def P432614393288090694.Spec : Prop :=
  ∀ n, P432614393288090694.a n = A110091 n

end A110091

/-! ## A110091.P7035488765078208255

`(A011655(n+1)+A004396(n))/A003417(n+1)`
-/

namespace A110091.P7035488765078208255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011655 (n + 1) + A004396 n : ℚ) / (A003417 (n + 1) : ℚ)

end

end A110091.P7035488765078208255

namespace A110091

/-- `(A011655(n+1)+A004396(n))/A003417(n+1)` -/
def P7035488765078208255.Spec : Prop :=
  ∀ n, P7035488765078208255.a n = (A110091 n : ℚ)

end A110091

/-! ## A110091.P1838883695058326821

`A103627(A047249(n+1))`
-/

namespace A110091.P1838883695058326821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A047249 (n + 1)).toNat

end

end A110091.P1838883695058326821

namespace A110091

/-- `A103627(A047249(n+1))` -/
def P1838883695058326821.Spec : Prop :=
  ∀ n, P1838883695058326821.a n = A110091 n

end A110091

/-! ## A110091.P6688280704462436530

`A122918(2*n*A204418(n))`
-/

namespace A110091.P6688280704462436530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 ((2 * n : ℤ) * A204418 n).toNat

end

end A110091.P6688280704462436530

namespace A110091

/-- `A122918(2*n*A204418(n))` -/
def P6688280704462436530.Spec : Prop :=
  ∀ n, P6688280704462436530.a n = A110091 n

end A110091

/-!
# A110095: Least increasing sequence of nonprimes whose first differences are also nonprime.

The programs for A110095, there is no canonical definition to state claims against.
-/

/-! ## A110095.P15057541922886280034

`A110194(n)+a(n-1)` with `a(0)=0`
-/

namespace A110095.P15057541922886280034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A110194 n + a (n - 1)

end

end A110095.P15057541922886280034

/-! ## A110095.P15983157709411359377

`∑[A110194(floor(acot(n)+n))]-1`
-/

namespace A110095.P15983157709411359377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110194 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A110095.P15983157709411359377

/-! ## A110095.P12759345017741014311

`∑[A110194(round(sqrt(n²+1)))]-1`
-/

namespace A110095.P12759345017741014311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110194 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A110095.P12759345017741014311

/-! ## A110095.P4886425383014037254

`eq[n, C(A014683(n), a(n-1))]` with `a(0)=0`
-/

namespace A110095.P4886425383014037254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose (A014683 n).toNat (f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110095.P4886425383014037254

/-! ## A110095.P13020941852970951771

`abs(∑[A110194(A028310(n))]-1)`
-/

namespace A110095.P13020941852970951771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110194 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A110095.P13020941852970951771

/-! ## A110095.P11792860623778064398

`∑[A110194(n)-a(A000038(n))]` with `a(0)=0`
-/

namespace A110095.P11792860623778064398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A110194 n - f1 (A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110095.P11792860623778064398

/-! ## A110095.P3461540004075104305

`∑[A057427(n)*A110194(A028310(n))]`
-/

namespace A110095.P3461540004075104305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110194 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110095.P3461540004075104305

/-! ## A110095.P2864112765971176571

`∑[A057427(n)*A110194(A000007(n)+n)]`
-/

namespace A110095.P2864112765971176571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110194 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110095.P2864112765971176571

/-! ## A110095.P15639418047241340882

`∑[A062157(n)²*A110194(A000007(n)+n)]`
-/

namespace A110095.P15639418047241340882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * A110194 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110095.P15639418047241340882

/-!
# A110096: Least positive integer which, when added to each of 2^1, ..., 2^n, yields all primes; or 0 if none exists.

The programs for A110096, there is no canonical definition to state claims against.
-/

/-! ## A110096.P17779139854313307254

`A165235(round(sqrt(n²+1)))-2`
-/

namespace A110096.P17779139854313307254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165235 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 2

end

end A110096.P17779139854313307254

/-! ## A110096.P3715364789754444666

`A000027(A193109(or(1, n)+1))`
-/

namespace A110096.P3715364789754444666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A193109 (Nat.lor 1 n + 1)).toNat

end

end A110096.P3715364789754444666

/-! ## A110096.P2073434429816736887

`∏[A008965(A325676(a(n-2)))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A110096.P2073434429816736887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A008965 (A325676 (f1 (n - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110096.P2073434429816736887

/-! ## A110096.P7915968348307067179

`A193109(A250476(n+1)+log2(gcd(2, n)))`
-/

namespace A110096.P7915968348307067179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193109 (SequenceMachineLib.roundAway ((A250476 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A110096.P7915968348307067179

/-!
# A110098: Triangle read by rows: T(n,k) (0 <= k <= n) is the number of Delannoy paths of length n, having k return steps to the line y = x from the line y = x+1 (i.e., E steps from the line y=x+1 to the line y = x).

The programs for A110098, there is no canonical definition to state claims against.
-/

/-! ## A110098.P11426452494293359928

`A080247(A245300(n)+A002262(n))`
-/

namespace A110098.P11426452494293359928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A245300 n + A002262 n).toNat

end

end A110098.P11426452494293359928

/-! ## A110098.P3355111914889590023

`A110109(A117707(n)²+2*n)`
-/

namespace A110098.P3355111914889590023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110109 (A117707 n ^ 2 + (2 * n : ℤ)).toNat

end

end A110098.P3355111914889590023

/-!
# A110099: Number of return steps to the line y = x from the line y = x+1 (i.e., E steps from the line y = x+1 to the line y = x) in all Delannoy paths of length n.

The programs for A110099, the canonical program `A110099.P9542804570626657309` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110099 has offset 0).

The definition of A110099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110099.P9542804570626657309

`A053141(n)-A047665(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110099

/-- `A053141(n)-A047665(n)` -/
def P9542804570626657309.Spec : Prop :=
  ∀ n, P9542804570626657309.a n = A110099 n

theorem P9542804570626657309.correct : P9542804570626657309.Spec := by
  intro n
  simp only [A110099]

end A110099

/-! ## A110099.P6695104183674944937

`∑[A110127(n)+A001109(n)]`
-/

namespace A110099.P6695104183674944937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n + A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P6695104183674944937

namespace A110099

/-- `∑[A110127(n)+A001109(n)]` -/
def P6695104183674944937.Spec : Prop :=
  ∀ n, P6695104183674944937.a n = A110099 n

end A110099

/-! ## A110099.P16745514474271233194

`A053142(n)+∑[A110127(n)]`
-/

namespace A110099.P16745514474271233194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P16745514474271233194

namespace A110099

/-- `A053142(n)+∑[A110127(n)]` -/
def P16745514474271233194.Spec : Prop :=
  ∀ n, P16745514474271233194.a n = A110099 n

end A110099

/-! ## A110099.P14898271928748325269

`A053141(n)-∑[A002002(n)]`
-/

namespace A110099.P14898271928748325269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P14898271928748325269

namespace A110099

/-- `A053141(n)-∑[A002002(n)]` -/
def P14898271928748325269.Spec : Prop :=
  ∀ n, P14898271928748325269.a n = A110099 n

end A110099

/-! ## A110099.P13252490380418751146

`∑[A110184(n)-A110127(n)]`
-/

namespace A110099.P13252490380418751146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110184 n - A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P13252490380418751146

namespace A110099

/-- `∑[A110184(n)-A110127(n)]` -/
def P13252490380418751146.Spec : Prop :=
  ∀ n, P13252490380418751146.a n = A110099 n

end A110099

/-! ## A110099.P16292944931262104848

`A105635(2*n)-A047665(n)`
-/

namespace A110099.P16292944931262104848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (2 * n) - A047665 n

end

end A110099.P16292944931262104848

namespace A110099

/-- `A105635(2*n)-A047665(n)` -/
def P16292944931262104848.Spec : Prop :=
  ∀ n, P16292944931262104848.a n = A110099 n

end A110099

/-! ## A110099.P13190419879721815781

`∑[A110127(n)+A001542(n)/2]`
-/

namespace A110099.P13190419879721815781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110127 n : ℚ) + (A001542 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P13190419879721815781

namespace A110099

/-- `∑[A110127(n)+A001542(n)/2]` -/
def P13190419879721815781.Spec : Prop :=
  ∀ n, P13190419879721815781.a n = (A110099 n : ℚ)

end A110099

/-! ## A110099.P5719023358092562281

`∑[A204512(2*(n+1))+A110127(n)]`
-/

namespace A110099.P5719023358092562281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1)) + A110127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110099.P5719023358092562281

namespace A110099

/-- `∑[A204512(2*(n+1))+A110127(n)]` -/
def P5719023358092562281.Spec : Prop :=
  ∀ n, P5719023358092562281.a n = A110099 n

end A110099

