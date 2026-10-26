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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
# A066001: Sum of digits of 5^n.

The programs for A066001, there is no canonical definition to state claims against.
-/

/-! ## A066001.P16430284692368431515

`A354618(n)+A001370(n)`
-/

namespace A066001.P16430284692368431515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354618 n + A001370 n

end

end A066001.P16430284692368431515

/-! ## A066001.P4629797316404800242

`∑{digits}[5^n, #]`
-/

namespace A066001.P4629797316404800242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066001.P4629797316404800242

/-! ## A066001.P1664886208291642319

`∑{digits}[A024049(n), #]+1`
-/

namespace A066001.P1664886208291642319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A066001.P1664886208291642319

/-! ## A066001.P16405103726598255744

`∑{digits}[A000351(n), #]%(n+2)²`
-/

namespace A066001.P16405103726598255744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % (n + 2) ^ 2

end

end A066001.P16405103726598255744

/-! ## A066001.P196924202401090509

`∑{digits}[A024051(n)+n²+1, #]-1`
-/

namespace A066001.P196924202401090509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024051 n + (n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066001.P196924202401090509

/-! ## A066001.P707581535606219475

`A000027(∑{digits}[A000351(n), #])`
-/

namespace A066001.P707581535606219475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066001.P707581535606219475

/-! ## A066001.P5446660456746040474

`A014682(2*∑{digits}[A000351(n), #])`
-/

namespace A066001.P5446660456746040474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A066001.P5446660456746040474

/-! ## A066001.P9178847598632686161

`A065033(2*∑{digits}[A000351(n), #])`
-/

namespace A066001.P9178847598632686161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A066001.P9178847598632686161

/-! ## A066001.P4142229125189539647

`A005843(∑{digits}[A000351(n), #])/2`
-/

namespace A066001.P4142229125189539647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A066001.P4142229125189539647

/-! ## A066001.P1100559069298354049

`A112467(∑[n])²*∑{digits}[A000351(n), #]`
-/

namespace A066001.P1100559069298354049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A066001.P1100559069298354049

/-! ## A066001.P9763658856710221943

`A001221(A140513(n))*∑{digits}[A000351(n), #]`
-/

namespace A066001.P9763658856710221943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140513 n).toNat * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A066001.P9763658856710221943

/-!
# A066002: Sum of digits of 6^n.

The programs for A066002, the canonical program `A066002.P9776452134976924755` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066002 has offset 0).

The definition of A066002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066002.P9776452134976924755

`∑{digits}[6^n, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066002

/-- `∑{digits}[6^n, #]` -/
def P9776452134976924755.Spec : Prop :=
  ∀ n, (P9776452134976924755.a n : ℤ) = A066002 n

theorem P9776452134976924755.correct : P9776452134976924755.Spec := by
  intro n
  simp only [A066002]

end A066002

/-! ## A066002.P8742869258894667655

`∑{digits}[A024062(n), #]+1`
-/

namespace A066002.P8742869258894667655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A066002.P8742869258894667655

namespace A066002

/-- `∑{digits}[A024062(n), #]+1` -/
def P8742869258894667655.Spec : Prop :=
  ∀ n, (P8742869258894667655.a n : ℤ) = A066002 n

end A066002

/-! ## A066002.P8828093899301565151

`∑{digits}[A000400(n)+1, #]-1`
-/

namespace A066002.P8828093899301565151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066002.P8828093899301565151

namespace A066002

/-- `∑{digits}[A000400(n)+1, #]-1` -/
def P8828093899301565151.Spec : Prop :=
  ∀ n, P8828093899301565151.a n = A066002 n

end A066002

/-! ## A066002.P10617600987692103348

`A000027(∑{digits}[6*a(n-1), #])` with `a(0)=1`
-/

namespace A066002.P10617600987692103348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066002.P10617600987692103348

namespace A066002

/-- `A000027(∑{digits}[6*a(n-1), #])` -/
def P10617600987692103348.Spec : Prop :=
  ∀ n, P10617600987692103348.a n = A066002 n

end A066002

/-! ## A066002.P15937344811673399219

`A000027(∑{digits}[A000400(n), #])`
-/

namespace A066002.P15937344811673399219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066002.P15937344811673399219

namespace A066002

/-- `A000027(∑{digits}[A000400(n), #])` -/
def P15937344811673399219.Spec : Prop :=
  ∀ n, P15937344811673399219.a n = A066002 n

end A066002

/-! ## A066002.P4376202517336087886

`A028310(∑{digits}[A000400(n), #])`
-/

namespace A066002.P4376202517336087886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066002.P4376202517336087886

namespace A066002

/-- `A028310(∑{digits}[A000400(n), #])` -/
def P4376202517336087886.Spec : Prop :=
  ∀ n, P4376202517336087886.a n = A066002 n

end A066002

/-! ## A066002.P6869044854271551816

`A008619(2*∑{digits}[A024062(n), #])`
-/

namespace A066002.P6869044854271551816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A066002.P6869044854271551816

namespace A066002

/-- `A008619(2*∑{digits}[A024062(n), #])` -/
def P6869044854271551816.Spec : Prop :=
  ∀ n, P6869044854271551816.a n = A066002 n

end A066002

/-!
# A066003: Sum of digits of 7^n.

The programs for A066003, the canonical program `A066003.P3015355534772267401` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066003 has offset 0).

The definition of A066003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066003.P3015355534772267401

`∑{digits}[7^n, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066003

/-- `∑{digits}[7^n, #]` -/
def P3015355534772267401.Spec : Prop :=
  ∀ n, (P3015355534772267401.a n : ℤ) = A066003 n

theorem P3015355534772267401.correct : P3015355534772267401.Spec := by
  intro n
  simp only [A066003]

end A066003

/-! ## A066003.P1676321610959143129

`1+∑{digits}[A024075(n), #]`
-/

namespace A066003.P1676321610959143129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066003.P1676321610959143129

namespace A066003

/-- `1+∑{digits}[A024075(n), #]` -/
def P1676321610959143129.Spec : Prop :=
  ∀ n, (P1676321610959143129.a n : ℤ) = A066003 n

end A066003

/-! ## A066003.P3713110376204212395

`∑{digits}[A000420(n)+10, #]-1`
-/

namespace A066003.P3713110376204212395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066003.P3713110376204212395

namespace A066003

/-- `∑{digits}[A000420(n)+10, #]-1` -/
def P3713110376204212395.Spec : Prop :=
  ∀ n, P3713110376204212395.a n = A066003 n

end A066003

/-! ## A066003.P5558584298775510958

`A000027(∑{digits}[A000420(n), #])`
-/

namespace A066003.P5558584298775510958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066003.P5558584298775510958

namespace A066003

/-- `A000027(∑{digits}[A000420(n), #])` -/
def P5558584298775510958.Spec : Prop :=
  ∀ n, P5558584298775510958.a n = A066003 n

end A066003

/-! ## A066003.P10334886805220315791

`A236348(∑{digits}[A024075(n), #])`
-/

namespace A066003.P10334886805220315791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066003.P10334886805220315791

namespace A066003

/-- `A236348(∑{digits}[A024075(n), #])` -/
def P10334886805220315791.Spec : Prop :=
  ∀ n, P10334886805220315791.a n = A066003 n

end A066003

/-! ## A066003.P13800172802420110379

`A008619(2*∑{digits}[A024075(n), #])`
-/

namespace A066003.P13800172802420110379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A066003.P13800172802420110379

namespace A066003

/-- `A008619(2*∑{digits}[A024075(n), #])` -/
def P13800172802420110379.Spec : Prop :=
  ∀ n, P13800172802420110379.a n = A066003 n

end A066003

/-! ## A066003.P17586710701153530514

`A008619(A005843(∑{digits}[A024075(n), #]))`
-/

namespace A066003.P17586710701153530514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum).toNat

end

end A066003.P17586710701153530514

namespace A066003

/-- `A008619(A005843(∑{digits}[A024075(n), #]))` -/
def P17586710701153530514.Spec : Prop :=
  ∀ n, P17586710701153530514.a n = A066003 n

end A066003

/-!
# A066004: Sum of digits of 8^n.

The programs for A066004, the canonical program `A066004.P14525788820147274037` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066004 has offset 0).

The definition of A066004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066004.P14525788820147274037

`A001370(3*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066004

/-- `A001370(3*n)` -/
def P14525788820147274037.Spec : Prop :=
  ∀ n, P14525788820147274037.a n = A066004 n

theorem P14525788820147274037.correct : P14525788820147274037.Spec := by
  intro n
  simp only [A066004]

end A066004

/-! ## A066004.P2971873862078072165

`A000027(A001370(n+n+n))`
-/

namespace A066004.P2971873862078072165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001370 (n + n + n)).toNat

end

end A066004.P2971873862078072165

namespace A066004

/-- `A000027(A001370(n+n+n))` -/
def P2971873862078072165.Spec : Prop :=
  ∀ n, P2971873862078072165.a n = A066004 n

end A066004

/-! ## A066004.P13991629178360786794

`A001370(A008585(n))%record[xor(7, n)]`
-/

namespace A066004.P13991629178360786794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (A008585 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A066004.P13991629178360786794

namespace A066004

/-- `A001370(A008585(n))%record[xor(7, n)]` -/
def P13991629178360786794.Spec : Prop :=
  ∀ n, P13991629178360786794.a n = A066004 n

end A066004

/-! ## A066004.P14447044280136057476

`A001370(A008486(n))-A000007(n)`
-/

namespace A066004.P14447044280136057476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (A008486 n).toNat - A000007 n

end

end A066004.P14447044280136057476

namespace A066004

/-- `A001370(A008486(n))-A000007(n)` -/
def P14447044280136057476.Spec : Prop :=
  ∀ n, P14447044280136057476.a n = A066004 n

end A066004

/-! ## A066004.P18021676817543064222

`A001370(record[A071045(n)])%A006507(n+1)`
-/

namespace A066004.P18021676817543064222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A006507 (n + 1))

end

end A066004.P18021676817543064222

namespace A066004

/-- `A001370(record[A071045(n)])%A006507(n+1)` -/
def P18021676817543064222.Spec : Prop :=
  ∀ n, P18021676817543064222.a n = A066004 n

end A066004

/-! ## A066004.P16329201154572619404

`A001370(A005843(n)+n)%Δ[A008514(n)]`
-/

namespace A066004.P16329201154572619404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (A005843 n + (n : ℤ)).toNat) (f1 (n + 1) - f1 n)

end

end A066004.P16329201154572619404

namespace A066004

/-- `A001370(A005843(n)+n)%Δ[A008514(n)]` -/
def P16329201154572619404.Spec : Prop :=
  ∀ n, P16329201154572619404.a n = A066004 n

end A066004

/-! ## A066004.P7300423956853529643

`A175676(A054995(n+1))+A001370(A005843(n)+n)`
-/

namespace A066004.P7300423956853529643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A054995 (n + 1)).toNat + A001370 (A005843 n + (n : ℤ)).toNat

end

end A066004.P7300423956853529643

namespace A066004

/-- `A175676(A054995(n+1))+A001370(A005843(n)+n)` -/
def P7300423956853529643.Spec : Prop :=
  ∀ n, P7300423956853529643.a n = A066004 n

end A066004

/-! ## A066004.P13293033849486780719

`A005843(A001370(A005843(n)+n))/2`
-/

namespace A066004.P13293033849486780719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A001370 (A005843 n + (n : ℤ)).toNat).toNat : ℚ) / 2

end

end A066004.P13293033849486780719

namespace A066004

/-- `A005843(A001370(A005843(n)+n))/2` -/
def P13293033849486780719.Spec : Prop :=
  ∀ n, P13293033849486780719.a n = (A066004 n : ℚ)

end A066004

/-! ## A066004.P2254536314926430220

`∑{digits}[8^n, #]`
-/

namespace A066004.P2254536314926430220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066004.P2254536314926430220

namespace A066004

/-- `∑{digits}[8^n, #]` -/
def P2254536314926430220.Spec : Prop :=
  ∀ n, (P2254536314926430220.a n : ℤ) = A066004 n

end A066004

/-!
# A066005: Sum of digits of 11^n.

The programs for A066005, there is no canonical definition to state claims against.
-/

/-! ## A066005.P12827766030743680670

`∑{digits}[11^n, #]`
-/

namespace A066005.P12827766030743680670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066005.P12827766030743680670

/-! ## A066005.P3314399043230363119

`∑{digits}[A034524(n), #]-1`
-/

namespace A066005.P3314399043230363119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066005.P3314399043230363119

/-! ## A066005.P16496109662277367218

`∑{digits}[A001020(n)+1, #]-1`
-/

namespace A066005.P16496109662277367218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066005.P16496109662277367218

/-! ## A066005.P3575318950185134816

`A000027(∑{digits}[A001020(n), #])`
-/

namespace A066005.P3575318950185134816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066005.P3575318950185134816

/-! ## A066005.P16988516483104009928

`∑{digits}[A001020(n), #]%A000051(n)`
-/

namespace A066005.P16988516483104009928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000051 n)

end

end A066005.P16988516483104009928

/-! ## A066005.P12681411249987982581

`∑{digits}[A001020(n), #]*A038712(A038712(n+1))`
-/

namespace A066005.P12681411249987982581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A038712 (A038712 (n + 1)).toNat

end

end A066005.P12681411249987982581

/-!
# A066006: Sum of digits of 12^n.

The programs for A066006, there is no canonical definition to state claims against.
-/

/-! ## A066006.P15744242263294103905

`∑{digits}[12^n, #]`
-/

namespace A066006.P15744242263294103905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066006.P15744242263294103905

/-! ## A066006.P10337756274294747909

`∑{digits}[A178248(n), #]-1`
-/

namespace A066006.P10337756274294747909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A066006.P10337756274294747909

/-! ## A066006.P16319933634070300530

`A000027(∑{digits}[3*4*a(n-1), #])` with `a(0)=1`
-/

namespace A066006.P16319933634070300530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066006.P16319933634070300530

/-! ## A066006.P8885814332536032042

`A000027(∑{digits}[A001021(n), #])`
-/

namespace A066006.P8885814332536032042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066006.P8885814332536032042

/-! ## A066006.P9442100705615403894

`∑{digits}[A282022(2*n), #]%A282022(2*n+1)`
-/

namespace A066006.P9442100705615403894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282022 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A282022 (2 * n + 1))

end

end A066006.P9442100705615403894

/-!
# A066007: a(n) is that n-digit number m which minimizes m/(sum of digits of m); in case of a tie pick the smallest.

The programs for A066007, there is no canonical definition to state claims against.
-/

/-! ## A066007.P17816389567086746689

`A165831(A008984(2*n))+A002283(n)`
-/

namespace A066007.P17816389567086746689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A008984 (2 * n)).toNat + A002283 n

end

end A066007.P17816389567086746689

/-!
# A066010: Triangle of covering numbers T(n,k) = C(n,k,k-1), n >= 2, 2 <= k <= n.

The programs for A066010, there is no canonical definition to state claims against.
-/

/-! ## A066010.P5246079334016428260

`A295884(A335471(n))+A036838(n)`
-/

namespace A066010.P5246079334016428260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A335471 n).toNat + A036838 n

end

end A066010.P5246079334016428260

/-! ## A066010.P12513230787966416917

`A036838(n)-A240348(A272929(n+1))`
-/

namespace A066010.P12513230787966416917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 n - A240348 (A272929 (n + 1)).toNat

end

end A066010.P12513230787966416917

/-! ## A066010.P6374425351800918621

`A067898(A324849(A199832(n+1)))+A036838(n)`
-/

namespace A066010.P6374425351800918621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A324849 (A199832 (n + 1)).toNat).toNat + A036838 n

end

end A066010.P6374425351800918621

/-! ## A066010.P14969050986385312003

`A036838(n)+A010054(A241964(n+1))`
-/

namespace A066010.P14969050986385312003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 n + A010054 (A241964 (n + 1)).toNat

end

end A066010.P14969050986385312003

/-!
# A066011: Covering numbers C(n,8,7).

The programs for A066011, there is no canonical definition to state claims against.
-/

/-! ## A066011.P10498634556717468146

`ogf((1+6x)/(1-2x-4x^2+9x^3+8x^4))`
-/

namespace A066011.P10498634556717468146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -2, -4, 9, 8] n

end

end A066011.P10498634556717468146

/-!
# A066012: Highest minimal Lee distance of any Type 4^Z self-dual code of length n over Z/4Z which does not have all Euclidean norms divisible by 8, that is, is strictly Type I. Compare A105681.

The programs for A066012, there is no canonical definition to state claims against.
-/

/-! ## A066012.P642379065341075659

`A105681(A132350(n+2)+n)`
-/

namespace A066012.P642379065341075659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (A132350 (n + 2) + (n : ℤ)).toNat

end

end A066012.P642379065341075659

/-! ## A066012.P14327778946816499394

`A105681(n+1-A295662(n+1))`
-/

namespace A066012.P14327778946816499394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 ((n + 1 : ℤ) - A295662 (n + 1)).toNat

end

end A066012.P14327778946816499394

/-! ## A066012.P10746162566387470564

`A105681(2-A055229(n+1)+n)`
-/

namespace A066012.P10746162566387470564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (2 - A055229 (n + 1) + (n : ℤ)).toNat

end

end A066012.P10746162566387470564

/-! ## A066012.P9763322380677808202

`A105681(n+1-A010060(3*n))`
-/

namespace A066012.P9763322380677808202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 ((n + 1 : ℤ) - A010060 (3 * n)).toNat

end

end A066012.P9763322380677808202

/-! ## A066012.P8509947066645813592

`A105681(A049403((n+1)/∏{p}[n+1, #])+n)`
-/

namespace A066012.P8509947066645813592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (A049403 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + (n : ℤ)).toNat

end

end A066012.P8509947066645813592

/-!
# A066013: Number of codes having highest minimal Lee distance of any Type 4^Z self-dual code of length n over Z/4Z which does not have all Euclidean norms divisible by 8, that is, is strictly Type I. Compare A105688.

The programs for A066013, there is no canonical definition to state claims against.
-/

/-! ## A066013.P12702511845914703322

`or(∑{e}[n+1, #-1], A105688(n+1))`
-/

namespace A066013.P12702511845914703322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) (A105688 (n + 1))

end

end A066013.P12702511845914703322

/-! ## A066013.P10346834727439057904

`A066715(n)*A105688(n+1)`
-/

namespace A066013.P10346834727439057904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066715 n * A105688 (n + 1)

end

end A066013.P10346834727439057904

/-! ## A066013.P3304694946653930547

`lcm(A105688(n+1), A202150(n))`
-/

namespace A066013.P3304694946653930547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105688 (n + 1)) (A202150 n)

end

end A066013.P3304694946653930547

/-! ## A066013.P1618055259103049170

`or(A073346(n), A105688(n+1))`
-/

namespace A066013.P1618055259103049170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073346 n) (A105688 (n + 1))

end

end A066013.P1618055259103049170

/-! ## A066013.P10559186489827399952

`A105688(n+1)*A133721(n+5)`
-/

namespace A066013.P10559186489827399952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105688 (n + 1) * A133721 (n + 5)

end

end A066013.P10559186489827399952

/-!
# A066015: Number of codes having highest minimal Euclidean norm of any Type 4^Z self-dual code of length n over Z/4Z which does not have all Euclidean norms divisible by 8, that is, is strictly Type I. Compare A105682.

The programs for A066015, there is no canonical definition to state claims against.
-/

/-! ## A066015.P3673483917498649321

`xor(Δ[A261225(n)], A105689(n+1))`
-/

namespace A066015.P3673483917498649321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A105689 (n + 1))

end

end A066015.P3673483917498649321

/-! ## A066015.P13140904106237799853

`A111263(n+1)+2*A339170(n)`
-/

namespace A066015.P13140904106237799853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111263 (n + 1) + 2 * A339170 n

end

end A066015.P13140904106237799853

/-! ## A066015.P17668094749350689102

`C(A111263(n+1), A055229(n+1))`
-/

namespace A066015.P17668094749350689102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111263 (n + 1)).toNat (A055229 (n + 1)).toNat

end

end A066015.P17668094749350689102

/-! ## A066015.P18133817063938686806

`C(A111263(n+1), A000010(∏{e}[n+1, #]))`
-/

namespace A066015.P18133817063938686806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111263 (n + 1)).toNat (A000010 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A066015.P18133817063938686806

/-! ## A066015.P16759809042817667730

`C(A111263(n+1), A000045(∏{e}[n+1, #]))`
-/

namespace A066015.P16759809042817667730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111263 (n + 1)).toNat (A000045 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A066015.P16759809042817667730

/-!
# A066016: Highest minimal Hamming distance of any Type 4^Z self-dual code of length n over Z/4Z.

The programs for A066016, there is no canonical definition to state claims against.
-/

/-! ## A066016.P15511708307552346615

`A098069(A143265(n+1))/2`
-/

namespace A066016.P15511708307552346615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098069 (A143265 (n + 1)).toNat : ℚ) / 2

end

end A066016.P15511708307552346615

/-! ## A066016.P12331039089616756947

`A098069(A249817(n+1))/2`
-/

namespace A066016.P12331039089616756947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098069 (A249817 (n + 1)).toNat : ℚ) / 2

end

end A066016.P12331039089616756947

/-! ## A066016.P9382235935032190240

`A098069(n+1)/A000005(A083185(n+1))`
-/

namespace A066016.P9382235935032190240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098069 (n + 1) : ℚ) / (A000005 (A083185 (n + 1)).toNat : ℚ)

end

end A066016.P9382235935032190240

/-! ## A066016.P10406923506095563146

`A098069(n+1)/A053669(A098062(n+1))`
-/

namespace A066016.P10406923506095563146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098069 (n + 1) : ℚ) / (A053669 (A098062 (n + 1)).toNat : ℚ)

end

end A066016.P10406923506095563146

/-! ## A066016.P7857853609228890520

`A252463(A098069(n+1)%A351470(2*(n+2)))`
-/

namespace A066016.P7857853609228890520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.tmod (A098069 (n + 1)) (A351470 (2 * (n + 2)))).toNat

end

end A066016.P7857853609228890520

/-!
# A066017: Number of inequivalent codes attaining highest minimal Hamming distance of any Type 4^Z self-dual code of length n over Z/4Z.

The programs for A066017, there is no canonical definition to state claims against.
-/

/-! ## A066017.P2347787746497950029

`A111259(n+1)-char[7]`
-/

namespace A066017.P2347787746497950029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111259 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A066017.P2347787746497950029

/-! ## A066017.P11577607361385201507

`A111259(∏{e}[n+1, round(1/#)]+n)`
-/

namespace A066017.P11577607361385201507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111259 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)) + (n : ℤ)).toNat

end

end A066017.P11577607361385201507

/-! ## A066017.P11174471748523674456

`A111259(ceil((n+1)/∏{p}[n+1, (n+1)/#])%2+n)`
-/

namespace A066017.P11174471748523674456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111259 (Int.tmod ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ 2 + (n : ℤ)).toNat

end

end A066017.P11174471748523674456

/-! ## A066017.P1565910624521806103

`A111259(A004182(n)+1)`
-/

namespace A066017.P1565910624521806103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111259 (A004182 n + 1).toNat

end

end A066017.P1565910624521806103

/-! ## A066017.P15285869164187150924

`A111259(A007948(n+1))`
-/

namespace A066017.P15285869164187150924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111259 (A007948 (n + 1)).toNat

end

end A066017.P15285869164187150924

/-!
# A066019: Triangle of covering numbers T(n,k) = C(n,k,k-2), n >= 3, 3 <= k <= n.

The programs for A066019, there is no canonical definition to state claims against.
-/

/-! ## A066019.P9319330217835094224

`A000120(or(A004736(n+1)², A022172(n)))`
-/

namespace A066019.P9319330217835094224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A004736 (n + 1) ^ 2) (A022172 n)).toNat

end

end A066019.P9319330217835094224

/-! ## A066019.P4256693617982455321

`A122922(A266131(n+1))+1`
-/

namespace A066019.P4256693617982455321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A266131 (n + 1)).toNat + 1

end

end A066019.P4256693617982455321

/-! ## A066019.P16535392236884298537

`A068063(or(A145905(n), A297224(n+1)))`
-/

namespace A066019.P16535392236884298537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (Int.lor (A145905 n) (A297224 (n + 1))).toNat

end

end A066019.P16535392236884298537

/-! ## A066019.P8033097569164589462

`or(A057427(A036424(n)), A066040(n+4))`
-/

namespace A066019.P8033097569164589462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A036424 n).toNat) (A066040 (n + 4))

end

end A066019.P8033097569164589462

/-!
# A066020: a(n) is the smallest k such that (k^5 + 1)/(n^5 + 1) is an integer > 1.

The programs for A066020, there is no canonical definition to state claims against.
-/

/-! ## A066020.P9437596994278744174

`A066021(n+1)-A008683(A065982(n+3))`
-/

namespace A066020.P9437596994278744174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066021 (n + 1) - A008683 (A065982 (n + 3)).toNat

end

end A066020.P9437596994278744174

/-! ## A066020.P16068218726589892947

`A175182(A293522(2*(n+1))+A076540(n+1))+n+1`
-/

namespace A066020.P16068218726589892947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (A293522 (2 * (n + 1)) + A076540 (n + 1)).toNat + (n + 1 : ℤ)

end

end A066020.P16068218726589892947

/-!
# A066021: (a(n)^6+1)/(n^6+1) is the smallest integer > 1.

The programs for A066021, there is no canonical definition to state claims against.
-/

/-! ## A066021.P10639419804721565787

`A066020(n+1)+A008683(A065982(n+3))`
-/

namespace A066021.P10639419804721565787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066020 (n + 1) + A008683 (A065982 (n + 3)).toNat

end

end A066021.P10639419804721565787

/-!
# A066022: Number of digits in n^n.

The programs for A066022, the canonical program `A066022.P2529544976254576572` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066022 has offset 1).

The definition of A066022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066022.P2529544976254576572

`floor((n+1)*log(n+1)/log(10))+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066022

/-- `floor((n+1)*log(n+1)/log(10))+1` -/
def P2529544976254576572.Spec : Prop :=
  ∀ n, P2529544976254576572.a n = A066022 (n + 1)

theorem P2529544976254576572.correct : P2529544976254576572.Spec := by
  intro n
  simp only [A066022, Nat.add_sub_cancel]

end A066022

/-! ## A066022.P15819364738614820172

`∑{digits}[(n+1)^(n+1), and(1, #)!]`
-/

namespace A066022.P15819364738614820172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum

end

end A066022.P15819364738614820172

namespace A066022

/-- `∑{digits}[(n+1)^(n+1), and(1, #)!]` -/
def P15819364738614820172.Spec : Prop :=
  ∀ n, (P15819364738614820172.a n : ℤ) = A066022 (n + 1)

end A066022

/-! ## A066022.P14736888570069106299

`∑{digits}[(n+1)^(n+1), A152845(#)]`
-/

namespace A066022.P14736888570069106299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A152845 x).sum

end

end A066022.P14736888570069106299

namespace A066022

/-- `∑{digits}[(n+1)^(n+1), A152845(#)]` -/
def P14736888570069106299.Spec : Prop :=
  ∀ n, P14736888570069106299.a n = A066022 (n + 1)

end A066022

/-! ## A066022.P2035353107321655707

`∑{digits}[(n+1)^(n+1), A318191(#)]`
-/

namespace A066022.P2035353107321655707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A318191 x).sum

end

end A066022.P2035353107321655707

namespace A066022

/-- `∑{digits}[(n+1)^(n+1), A318191(#)]` -/
def P2035353107321655707.Spec : Prop :=
  ∀ n, P2035353107321655707.a n = A066022 (n + 1)

end A066022

/-! ## A066022.P4776453079898574337

`∑{digits}[A062796(n+1), A014802(#)]`
-/

namespace A066022.P4776453079898574337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014802 x).sum

end

end A066022.P4776453079898574337

namespace A066022

/-- `∑{digits}[A062796(n+1), A014802(#)]` -/
def P4776453079898574337.Spec : Prop :=
  ∀ n, P4776453079898574337.a n = A066022 (n + 1)

end A066022

/-! ## A066022.P17436932113166560342

`∑{digits}[A062796(n+1), A014860(#)]`
-/

namespace A066022.P17436932113166560342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014860 x).sum

end

end A066022.P17436932113166560342

namespace A066022

/-- `∑{digits}[A062796(n+1), A014860(#)]` -/
def P17436932113166560342.Spec : Prop :=
  ∀ n, P17436932113166560342.a n = A066022 (n + 1)

end A066022

/-! ## A066022.P6735438073036743866

`∑{digits}[A062796(n+1), A014902(#)]`
-/

namespace A066022.P6735438073036743866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014902 x).sum

end

end A066022.P6735438073036743866

namespace A066022

/-- `∑{digits}[A062796(n+1), A014902(#)]` -/
def P6735438073036743866.Spec : Prop :=
  ∀ n, P6735438073036743866.a n = A066022 (n + 1)

end A066022

/-! ## A066022.P9751438878555940304

`∑{digits}[(n+1)^(n+1), A007318(A007318(#))]`
-/

namespace A066022.P9751438878555940304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A066022.P9751438878555940304

namespace A066022

/-- `∑{digits}[(n+1)^(n+1), A007318(A007318(#))]` -/
def P9751438878555940304.Spec : Prop :=
  ∀ n, P9751438878555940304.a n = A066022 (n + 1)

end A066022

/-!
# A066023: (a(n)^7+1)/(n^7+1) is the smallest integer > 1.

The programs for A066023, the canonical program `A066023.P17444100916662004751` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066023 has offset 1).

The definition of A066023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066023.P8563949444657567254

`round(record[sqrt(xor(7, n^6))])`
-/

namespace A066023.P8563949444657567254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 (n ^ 6) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A066023.P8563949444657567254

namespace A066023

/-- `round(record[sqrt(xor(7, n^6))])` -/
def P8563949444657567254.Spec : Prop :=
  ∀ n, P8563949444657567254.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P8207594875830125778

`record[n^a(floor(acot(n)))]` with `a(0)=3`
-/

namespace A066023.P8207594875830125778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ f1 ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066023.P8207594875830125778

namespace A066023

/-- `record[n^a(floor(acot(n)))]` -/
def P8207594875830125778.Spec : Prop :=
  ∀ n, (P8207594875830125778.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P11170037895479284644

`round(sqrt((n+1)^6+6))`
-/

namespace A066023.P11170037895479284644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1) ^ 6 + 6 : ℝ))

end

end A066023.P11170037895479284644

namespace A066023

/-- `round(sqrt((n+1)^6+6))` -/
def P11170037895479284644.Spec : Prop :=
  ∀ n, P11170037895479284644.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P17444100916662004751

`floor(sqrt(or(8, (n+1)^6)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066023

/-- `floor(sqrt(or(8, (n+1)^6)))` -/
def P17444100916662004751.Spec : Prop :=
  ∀ n, (P17444100916662004751.a n : ℤ) = A066023 (n + 1)

theorem P17444100916662004751.correct : P17444100916662004751.Spec := by
  intro n
  simp only [A066023, Nat.add_sub_cancel]

end A066023

/-! ## A066023.P6109303626095233747

`ceil(sqrt(record[abs(6-n^6)]))`
-/

namespace A066023.P6109303626095233747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - (n ^ 6 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌉

end

end A066023.P6109303626095233747

namespace A066023

/-- `ceil(sqrt(record[abs(6-n^6)]))` -/
def P6109303626095233747.Spec : Prop :=
  ∀ n, P6109303626095233747.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P1526245062750040629

`record[n^a(and(2, n²))]` with `a(0)=3`
-/

namespace A066023.P1526245062750040629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ f1 (Nat.land 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066023.P1526245062750040629

namespace A066023

/-- `record[n^a(and(2, n²))]` -/
def P1526245062750040629.Spec : Prop :=
  ∀ n, (P1526245062750040629.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P8483843364220864084

`(n+1)^a(floor(acot(n)))` with `a(0)=3`
-/

namespace A066023.P8483843364220864084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A066023.P8483843364220864084

namespace A066023

/-- `(n+1)^a(floor(acot(n)))` -/
def P8483843364220864084.Spec : Prop :=
  ∀ n, (P8483843364220864084.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P16440950115598472525

`(n+1)^a(n%(-1))` with `a(0)=3`
-/

namespace A066023.P16440950115598472525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ a (Int.tmod (n : ℤ) (-1)).toNat

end

end A066023.P16440950115598472525

namespace A066023

/-- `(n+1)^a(n%(-1))` -/
def P16440950115598472525.Spec : Prop :=
  ∀ n, (P16440950115598472525.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P15827645626322618821

`(n+1)^a(and(2, char[1]))` with `a(0)=3`
-/

namespace A066023.P15827645626322618821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ a (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0))

end

end A066023.P15827645626322618821

namespace A066023

/-- `(n+1)^a(and(2, char[1]))` -/
def P15827645626322618821.Spec : Prop :=
  ∀ n, (P15827645626322618821.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P10442060284883324157

`record[C(3, n+2)+n^3]`
-/

namespace A066023.P10442060284883324157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n + 2) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066023.P10442060284883324157

namespace A066023

/-- `record[C(3, n+2)+n^3]` -/
def P10442060284883324157.Spec : Prop :=
  ∀ n, (P10442060284883324157.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P16861705228301682405

`floor((n+1)^3+acot(n)²)`
-/

namespace A066023.P16861705228301682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 3 : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A066023.P16861705228301682405

namespace A066023

/-- `floor((n+1)^3+acot(n)²)` -/
def P16861705228301682405.Spec : Prop :=
  ∀ n, P16861705228301682405.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P11405746866891236854

`(n+1)^3*ceil(acot(n)²)`
-/

namespace A066023.P11405746866891236854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A066023.P11405746866891236854

namespace A066023

/-- `(n+1)^3*ceil(acot(n)²)` -/
def P11405746866891236854.Spec : Prop :=
  ∀ n, P11405746866891236854.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P1185739016179767595

`(gcd(n, a(n-1))+1)^3` with `a(0)=3`
-/

namespace A066023.P1185739016179767595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.gcd n (a (n - 1)) + 1) ^ 3

end

end A066023.P1185739016179767595

namespace A066023

/-- `(gcd(n, a(n-1))+1)^3` -/
def P1185739016179767595.Spec : Prop :=
  ∀ n, (P1185739016179767595.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P2996756861217489438

`(n+1)^a(C(2, n+2))` with `a(0)=3`
-/

namespace A066023.P2996756861217489438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  (n + 1) ^ a (Nat.choose 2 (n + 2))

end

end A066023.P2996756861217489438

namespace A066023

/-- `(n+1)^a(C(2, n+2))` -/
def P2996756861217489438.Spec : Prop :=
  ∀ n, (P2996756861217489438.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P7505980985149098498

`(n+1)^a(floor(1/n))` with `a(0)=3, a(1)=8`
-/

namespace A066023.P7505980985149098498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  (n + 1) ^ a ⌊1 / (n : ℚ)⌋.toNat

end

end A066023.P7505980985149098498

namespace A066023

/-- `(n+1)^a(floor(1/n))` -/
def P7505980985149098498.Spec : Prop :=
  ∀ n, (P7505980985149098498.a n : ℤ) = A066023 (n + 1)

end A066023

/-! ## A066023.P1117879389994163121

`Δ[a(n-1)+n^3]` with `a(0)=0, a(1)=3`
-/

namespace A066023.P1117879389994163121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066023.P1117879389994163121

namespace A066023

/-- `Δ[a(n-1)+n^3]` -/
def P1117879389994163121.Spec : Prop :=
  ∀ n, P1117879389994163121.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P9693062770837634177

`record[abs((n-3)^(3%(n+2)))]`
-/

namespace A066023.P9693062770837634177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 3) ^ (3 % (n + 2))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066023.P9693062770837634177

namespace A066023

/-- `record[abs((n-3)^(3%(n+2)))]` -/
def P9693062770837634177.Spec : Prop :=
  ∀ n, P9693062770837634177.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P7653855292678763872

`round(acot(2*n))+(n+1)^3`
-/

namespace A066023.P7653855292678763872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 * n : ℝ)) + ((n + 1) ^ 3 : ℤ)

end

end A066023.P7653855292678763872

namespace A066023

/-- `round(acot(2*n))+(n+1)^3` -/
def P7653855292678763872.Spec : Prop :=
  ∀ n, P7653855292678763872.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P16401234348279151489

`Δ[∑[n]²]+C(2, (n+1)²)`
-/

namespace A066023.P16401234348279151489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)

end

end A066023.P16401234348279151489

namespace A066023

/-- `Δ[∑[n]²]+C(2, (n+1)²)` -/
def P16401234348279151489.Spec : Prop :=
  ∀ n, P16401234348279151489.a n = A066023 (n + 1)

end A066023

/-! ## A066023.P5832761587899522555

`lcm(abs(1-n)+2, (n+1)^3)`
-/

namespace A066023.P5832761587899522555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (|1 - (n : ℤ)| + 2) ((n + 1) ^ 3 : ℤ)

end

end A066023.P5832761587899522555

namespace A066023

/-- `lcm(abs(1-n)+2, (n+1)^3)` -/
def P5832761587899522555.Spec : Prop :=
  ∀ n, (P5832761587899522555.a n : ℤ) = A066023 (n + 1)

end A066023

/-!
# A066024: Numbers k such that the product of the digits of k minus the sum of the digits of k is prime.

The programs for A066024, there is no canonical definition to state claims against.
-/

/-! ## A066024.P9304807753656423355

`∩[A062999(n+1), A117737(n+1)]`
-/

namespace A066024.P9304807753656423355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066024.P9304807753656423355

/-! ## A066024.P6010843566477483186

`∩[A062998(n+1), A117737(n+1)]`
-/

namespace A066024.P6010843566477483186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066024.P6010843566477483186

/-! ## A066024.P142924794943604546

`∩[comp[A066027(n+1)], A117737(n+1)]`
-/

namespace A066024.P142924794943604546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066027 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A066024.P142924794943604546

/-! ## A066024.P12487706764181878212

`∩[A117737(n+1), A344543(n+1)]`
-/

namespace A066024.P12487706764181878212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066024.P12487706764181878212

/-! ## A066024.P2185149059812066244

`lt[9, A087825(A202342(n+1))]`
-/

namespace A066024.P2185149059812066244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087825 (A202342 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066024.P2185149059812066244

/-!
# A066025: Numbers k such that gcd(sigma(k), sigma(k+1)) > k.

The programs for A066025, there is no canonical definition to state claims against.
-/

/-! ## A066025.P13803701313407971815

`∪[A058073(n+1), A058072(n+2)]`
-/

namespace A066025.P13803701313407971815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066025.P13803701313407971815

/-! ## A066025.P14077658715074457436

`lt[A083538(n+2), 4]+2`
-/

namespace A066025.P14077658715074457436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A066025.P14077658715074457436

/-! ## A066025.P1025287323070360652

`lt[n+1, A060780(n+1)]+1`
-/

namespace A066025.P1025287323070360652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A066025.P1025287323070360652

/-! ## A066025.P17407855896349107654

`lt[A028310(n), A060780(A028310(n))]`
-/

namespace A066025.P17407855896349107654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066025.P17407855896349107654

/-!
# A066026: a(n) = ceiling(log(n!)).

The programs for A066026, the canonical program `A066026.P3977274256426755055` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066026 has offset 1).

The definition of A066026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log((n+1)!))` (program `A066026.P3977274256426755055`, by `A066026.P3977274256426755055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066026.P3977274256426755055

`ceil(log((n+1)!))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066026

/-- `ceil(log((n+1)!))` -/
def P3977274256426755055.Spec : Prop :=
  ∀ n, P3977274256426755055.a n = A066026 (n + 1)

theorem P3977274256426755055.correct : P3977274256426755055.Spec := by
  intro n
  simp only [A066026, Nat.add_sub_cancel]

end A066026

/-! ## A066026.P15996331799693424512

`ceil(∑[log(n+1)])`
-/

namespace A066026.P15996331799693424512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A066026.P15996331799693424512

namespace A066026

/-- `ceil(∑[log(n+1)])` -/
def P15996331799693424512.Spec : Prop :=
  ∀ n, P15996331799693424512.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P14199692659441626374

`(floor(∑[log(n+1)])+1)%(n+1)²`
-/

namespace A066026.P14199692659441626374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1) ((n + 1) ^ 2 : ℤ)

end

end A066026.P14199692659441626374

namespace A066026

/-- `(floor(∑[log(n+1)])+1)%(n+1)²` -/
def P14199692659441626374.Spec : Prop :=
  ∀ n, P14199692659441626374.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P17670298955193830513

`A057427(n)+A025201(n+1)`
-/

namespace A066026.P17670298955193830513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A025201 (n + 1)

end

end A066026.P17670298955193830513

namespace A066026

/-- `A057427(n)+A025201(n+1)` -/
def P17670298955193830513.Spec : Prop :=
  ∀ n, P17670298955193830513.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P11035733516894506543

`A025201(n+1)-A057428(n)`
-/

namespace A066026.P11035733516894506543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) - A057428 n

end

end A066026.P11035733516894506543

namespace A066026

/-- `A025201(n+1)-A057428(n)` -/
def P11035733516894506543.Spec : Prop :=
  ∀ n, P11035733516894506543.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P11196673444469891140

`A025201(n+1)+ceil(n/A072831(n))`
-/

namespace A066026.P11196673444469891140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) + ⌈(n : ℚ) / (A072831 n : ℚ)⌉

end

end A066026.P11196673444469891140

namespace A066026

/-- `A025201(n+1)+ceil(n/A072831(n))` -/
def P11196673444469891140.Spec : Prop :=
  ∀ n, P11196673444469891140.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P6884153865013268079

`A025201(n+1)+A000040(n+1)%2`
-/

namespace A066026.P6884153865013268079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A066026.P6884153865013268079

namespace A066026

/-- `A025201(n+1)+A000040(n+1)%2` -/
def P6884153865013268079.Spec : Prop :=
  ∀ n, P6884153865013268079.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P6163841959225393348

`A025201(n+1)+A001221(A000961(n+1))`
-/

namespace A066026.P6163841959225393348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025201 (n + 1) + A001221 (A000961 (n + 1)).toNat

end

end A066026.P6163841959225393348

namespace A066026

/-- `A025201(n+1)+A001221(A000961(n+1))` -/
def P6163841959225393348.Spec : Prop :=
  ∀ n, P6163841959225393348.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P8429432163898281971

`round(log(floor(sqrt(e)*(n+1)!)))`
-/

namespace A066026.P8429432163898281971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (⌊Real.sqrt (Real.exp 1) * (Nat.factorial (n + 1) : ℝ)⌋ : ℝ))

end

end A066026.P8429432163898281971

namespace A066026

/-- `round(log(floor(sqrt(e)*(n+1)!)))` -/
def P8429432163898281971.Spec : Prop :=
  ∀ n, P8429432163898281971.a n = A066026 (n + 1)

end A066026

/-! ## A066026.P13964476580607443538

`round(log(A397776(n)))`
-/

namespace A066026.P13964476580607443538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A397776 n : ℝ))

end

end A066026.P13964476580607443538

namespace A066026

/-- `round(log(A397776(n)))` -/
def P13964476580607443538.Spec : Prop :=
  ∀ n, P13964476580607443538.a n = A066026 (n + 1)

end A066026

/-!
# A066027: Numbers k such that the sum of digits of k minus the product of digits of k is prime.

The programs for A066027, there is no canonical definition to state claims against.
-/

/-! ## A066027.P4616858475902897039

`∩[A062997(n+1), A117737(n+1)]`
-/

namespace A066027.P4616858475902897039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066027.P4616858475902897039

/-! ## A066027.P11979160282181103159

`∩[A062996(n+1), A117737(n+1)]`
-/

namespace A066027.P11979160282181103159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066027.P11979160282181103159

/-! ## A066027.P471345702466005840

`A187234(n+5)-A188011(A108761(n+1))`
-/

namespace A066027.P471345702466005840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187234 (n + 5) - A188011 (A108761 (n + 1)).toNat

end

end A066027.P471345702466005840

/-! ## A066027.P8503756260839101979

`A187234(n+5)-A188011(A304792(2*n+1))`
-/

namespace A066027.P8503756260839101979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187234 (n + 5) - A188011 (A304792 (2 * n + 1)).toNat

end

end A066027.P8503756260839101979

/-!
# A066028: Largest prime which can be written as a sum of distinct primes <= prime(n).

The programs for A066028, there is no canonical definition to state claims against.
-/

/-! ## A066028.P4280878852541598683

`A256015(∑[A108018(n+1)])`
-/

namespace A066028.P4280878852541598683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066028.P4280878852541598683

/-! ## A066028.P15072822347224858181

`A256015(eq[3, A256015(n+2)])`
-/

namespace A066028.P15072822347224858181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066028.P15072822347224858181

/-! ## A066028.P7634769048712418632

`record[p?[A343809(A151991(n+1))]]`
-/

namespace A066028.P7634769048712418632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343809 (A151991 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066028.P7634769048712418632

/-! ## A066028.P8573725459784444598

`∩[A307452(n+1), A320230(n+1)]`
-/

namespace A066028.P8573725459784444598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066028.P8573725459784444598

/-! ## A066028.P7488696830270306467

`∩[A307452(n+1), A392969(n+1)]`
-/

namespace A066028.P7488696830270306467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066028.P7488696830270306467

/-!
# A066031: Composite numbers n the sum of whose prime factors divides n, but which are not themselves powers of primes.

The programs for A066031, the canonical program `A066031.P13040772480677313754` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066031 has offset 1).

The definition of A066031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066031.P13040772480677313754

`∩[A027854(n+1), A089352(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A066031

/-- `∩[A027854(n+1), A089352(n+1)]` -/
def P13040772480677313754.Spec : Prop :=
  ∀ n, (P13040772480677313754.a n : ℤ) = A066031 (n + 1)

theorem P13040772480677313754.correct : P13040772480677313754.Spec := by
  intro n
  simp only [A066031, Nat.add_sub_cancel]

end A066031

/-! ## A066031.P9691053238286111288

`∩[A027854(n+1), A158804(n+1)]`
-/

namespace A066031.P9691053238286111288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P9691053238286111288

namespace A066031

/-- `∩[A027854(n+1), A158804(n+1)]` -/
def P9691053238286111288.Spec : Prop :=
  ∀ n, (P9691053238286111288.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P14021871302694887820

`∩[A089352(n+1), A289484(n+1)]`
-/

namespace A066031.P14021871302694887820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P14021871302694887820

namespace A066031

/-- `∩[A089352(n+1), A289484(n+1)]` -/
def P14021871302694887820.Spec : Prop :=
  ∀ n, (P14021871302694887820.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P5747524938392445468

`∩[A158804(n+1), A289484(n+1)]`
-/

namespace A066031.P5747524938392445468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P5747524938392445468

namespace A066031

/-- `∩[A158804(n+1), A289484(n+1)]` -/
def P5747524938392445468.Spec : Prop :=
  ∀ n, (P5747524938392445468.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P1624650516226459613

`∩[A089352(n+1), A119357(n+1)]`
-/

namespace A066031.P1624650516226459613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P1624650516226459613

namespace A066031

/-- `∩[A089352(n+1), A119357(n+1)]` -/
def P1624650516226459613.Spec : Prop :=
  ∀ n, (P1624650516226459613.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P4841917822306867218

`∩[A119357(n+1), A158804(n+1)]`
-/

namespace A066031.P4841917822306867218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P4841917822306867218

namespace A066031

/-- `∩[A119357(n+1), A158804(n+1)]` -/
def P4841917822306867218.Spec : Prop :=
  ∀ n, (P4841917822306867218.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P5773696067712392201

`∩[A051774(n+1), A089352(n+1)]`
-/

namespace A066031.P5773696067712392201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P5773696067712392201

namespace A066031

/-- `∩[A051774(n+1), A089352(n+1)]` -/
def P5773696067712392201.Spec : Prop :=
  ∀ n, (P5773696067712392201.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P6193514394572591009

`∩[A051774(n+1), A158804(n+1)]`
-/

namespace A066031.P6193514394572591009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P6193514394572591009

namespace A066031

/-- `∩[A051774(n+1), A158804(n+1)]` -/
def P6193514394572591009.Spec : Prop :=
  ∀ n, (P6193514394572591009.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P11013037782134055860

`∩[A005279(n+1), A089352(n+1)]`
-/

namespace A066031.P11013037782134055860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P11013037782134055860

namespace A066031

/-- `∩[A005279(n+1), A089352(n+1)]` -/
def P11013037782134055860.Spec : Prop :=
  ∀ n, (P11013037782134055860.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P7961551746155398674

`∩[A005279(n+1), A158804(n+1)]`
-/

namespace A066031.P7961551746155398674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P7961551746155398674

namespace A066031

/-- `∩[A005279(n+1), A158804(n+1)]` -/
def P7961551746155398674.Spec : Prop :=
  ∀ n, (P7961551746155398674.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P8819803221237868547

`∩[A000977(n+1), A089352(n+1)]`
-/

namespace A066031.P8819803221237868547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P8819803221237868547

namespace A066031

/-- `∩[A000977(n+1), A089352(n+1)]` -/
def P8819803221237868547.Spec : Prop :=
  ∀ n, (P8819803221237868547.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P6558118381018883138

`∩[A000977(n+1), A158804(n+1)]`
-/

namespace A066031.P6558118381018883138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P6558118381018883138

namespace A066031

/-- `∩[A000977(n+1), A158804(n+1)]` -/
def P6558118381018883138.Spec : Prop :=
  ∀ n, (P6558118381018883138.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P5778804908046905887

`∩[A089352(n+1), A376384(n+1)]`
-/

namespace A066031.P5778804908046905887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P5778804908046905887

namespace A066031

/-- `∩[A089352(n+1), A376384(n+1)]` -/
def P5778804908046905887.Spec : Prop :=
  ∀ n, (P5778804908046905887.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P117753637646383193

`∩[A158804(n+1), A376384(n+1)]`
-/

namespace A066031.P117753637646383193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P117753637646383193

namespace A066031

/-- `∩[A158804(n+1), A376384(n+1)]` -/
def P117753637646383193.Spec : Prop :=
  ∀ n, (P117753637646383193.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P13607041888257873759

`∩[A089352(n+1), A307517(n+1)]`
-/

namespace A066031.P13607041888257873759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P13607041888257873759

namespace A066031

/-- `∩[A089352(n+1), A307517(n+1)]` -/
def P13607041888257873759.Spec : Prop :=
  ∀ n, (P13607041888257873759.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P6766291382152023815

`∩[A158804(n+1), A307517(n+1)]`
-/

namespace A066031.P6766291382152023815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P6766291382152023815

namespace A066031

/-- `∩[A158804(n+1), A307517(n+1)]` -/
def P6766291382152023815.Spec : Prop :=
  ∀ n, (P6766291382152023815.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P12500773668930211147

`∩[A089352(n+1), A092671(n+1)]`
-/

namespace A066031.P12500773668930211147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P12500773668930211147

namespace A066031

/-- `∩[A089352(n+1), A092671(n+1)]` -/
def P12500773668930211147.Spec : Prop :=
  ∀ n, (P12500773668930211147.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P6089963827724614652

`∩[A092671(n+1), A158804(n+1)]`
-/

namespace A066031.P6089963827724614652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P6089963827724614652

namespace A066031

/-- `∩[A092671(n+1), A158804(n+1)]` -/
def P6089963827724614652.Spec : Prop :=
  ∀ n, (P6089963827724614652.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P13735951079116179055

`∩[A089352(n+1), A253235(n+1)]`
-/

namespace A066031.P13735951079116179055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P13735951079116179055

namespace A066031

/-- `∩[A089352(n+1), A253235(n+1)]` -/
def P13735951079116179055.Spec : Prop :=
  ∀ n, (P13735951079116179055.a n : ℤ) = A066031 (n + 1)

end A066031

/-! ## A066031.P16629651982866177489

`∩[A158804(n+1), A253235(n+1)]`
-/

namespace A066031.P16629651982866177489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066031.P16629651982866177489

namespace A066031

/-- `∩[A158804(n+1), A253235(n+1)]` -/
def P16629651982866177489.Spec : Prop :=
  ∀ n, (P16629651982866177489.a n : ℤ) = A066031 (n + 1)

end A066031

/-!
# A066032: Number of ways to write n as a product with no factor larger than m (1 <= m <=n, written row by row).

The programs for A066032, there is no canonical definition to state claims against.
-/

/-! ## A066032.P3329386098280384479

`gcd(A000038(A289481(n)), A320167(n+1))`
-/

namespace A066032.P3329386098280384479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A289481 n).toNat) (A320167 (n + 1))

end

end A066032.P3329386098280384479

/-! ## A066032.P15339768824768385308

`A087049(A347034(n+1))+Δ[A010054(n)]`
-/

namespace A066032.P15339768824768385308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A347034 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A066032.P15339768824768385308

/-! ## A066032.P448304775551107174

`A087049(A347034(n+1))+Δ[A035214(n)]`
-/

namespace A066032.P448304775551107174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A347034 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A066032.P448304775551107174

/-! ## A066032.P9694063295436126213

`floor(A002260(n+1)/A006530(A075363(n+1)))`
-/

namespace A066032.P9694063295436126213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A006530 (A075363 (n + 1)).toNat : ℚ)⌋

end

end A066032.P9694063295436126213

/-! ## A066032.P10121272652931820502

`A320167(n+1)+A000038(A289481(n)²)`
-/

namespace A066032.P10121272652931820502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320167 (n + 1) + A000038 (A289481 n ^ 2).toNat

end

end A066032.P10121272652931820502

/-!
# A066033: Alternating sum of primes: a(1) = A000040(1) = 2 and a(n) = a(n-1) + A000040(n)*(-1)^n for n > 1.

The programs for A066033, the canonical program `A066033.P8853775670846094508` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066033 has offset 1).

The definition of A066033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n+1)*(-1)^(n+1)` (program `A066033.P8853775670846094508`, by `A066033.P8853775670846094508.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066033.P13205354276384534733

`4+(-1)^(n+1)*A008347(n+1)`
-/

namespace A066033.P13205354276384534733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (-1) ^ (n + 1) * A008347 (n + 1)

end

end A066033.P13205354276384534733

namespace A066033

/-- `4+(-1)^(n+1)*A008347(n+1)` -/
def P13205354276384534733.Spec : Prop :=
  ∀ n, P13205354276384534733.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P8853775670846094508

`a(n-1)+A000040(n+1)*(-1)^(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066033

/-- `a(n-1)+A000040(n+1)*(-1)^(n+1)` -/
def P8853775670846094508.Spec : Prop :=
  ∀ n, P8853775670846094508.a n = A066033 (n + 1)

theorem P8853775670846094508.correct : P8853775670846094508.Spec := by
  intro n
  simp only [A066033, Nat.add_sub_cancel]

end A066033

/-! ## A066033.P145365760330796703

`∑[A273960(n+1)]+4`
-/

namespace A066033.P145365760330796703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A066033.P145365760330796703

namespace A066033

/-- `∑[A273960(n+1)]+4` -/
def P145365760330796703.Spec : Prop :=
  ∀ n, P145365760330796703.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P9102555403782553375

`∑[A000040(n+1)*A165326(n)]`
-/

namespace A066033.P9102555403782553375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P9102555403782553375

namespace A066033

/-- `∑[A000040(n+1)*A165326(n)]` -/
def P9102555403782553375.Spec : Prop :=
  ∀ n, P9102555403782553375.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P4664950383989071868

`∑[A000040(n+1)*A062157(n)]+2`
-/

namespace A066033.P4664950383989071868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A066033.P4664950383989071868

namespace A066033

/-- `∑[A000040(n+1)*A062157(n)]+2` -/
def P4664950383989071868.Spec : Prop :=
  ∀ n, P4664950383989071868.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P15662757402710599272

`A033999(n+1)*A083236(n+1)+2`
-/

namespace A066033.P15662757402710599272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A083236 (n + 1) + 2

end

end A066033.P15662757402710599272

namespace A066033

/-- `A033999(n+1)*A083236(n+1)+2` -/
def P15662757402710599272.Spec : Prop :=
  ∀ n, P15662757402710599272.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P5903484265589461881

`∑[(2-A153284(n+1))*A000040(n+1)]`
-/

namespace A066033.P5903484265589461881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153284 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P5903484265589461881

namespace A066033

/-- `∑[(2-A153284(n+1))*A000040(n+1)]` -/
def P5903484265589461881.Spec : Prop :=
  ∀ n, P5903484265589461881.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P12306190284230200004

`∑[A000040(n+1)*A033999(n+1)]+4`
-/

namespace A066033.P12306190284230200004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A066033.P12306190284230200004

namespace A066033

/-- `∑[A000040(n+1)*A033999(n+1)]+4` -/
def P12306190284230200004.Spec : Prop :=
  ∀ n, P12306190284230200004.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P1043494091202327318

`a(n-1)+A196421(n+1)/A089594(n+1)` with `a(0)=2`
-/

namespace A066033.P1043494091202327318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A196421 (n + 1) : ℚ) / (A089594 (n + 1) : ℚ)

end

end A066033.P1043494091202327318

namespace A066033

/-- `a(n-1)+A196421(n+1)/A089594(n+1)` -/
def P1043494091202327318.Spec : Prop :=
  ∀ n, P1043494091202327318.a n = (A066033 (n + 1) : ℚ)

end A066033

/-! ## A066033.P327265942355081788

`∑[A008578(n+2)*A165326(n)]`
-/

namespace A066033.P327265942355081788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P327265942355081788

namespace A066033

/-- `∑[A008578(n+2)*A165326(n)]` -/
def P327265942355081788.Spec : Prop :=
  ∀ n, P327265942355081788.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P2160657296804805269

`(A083237(n+1)+A033999(n))*A033999(n+1)`
-/

namespace A066033.P2160657296804805269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083237 (n + 1) + A033999 n) * A033999 (n + 1)

end

end A066033.P2160657296804805269

namespace A066033

/-- `(A083237(n+1)+A033999(n))*A033999(n+1)` -/
def P2160657296804805269.Spec : Prop :=
  ∀ n, P2160657296804805269.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P10361396744957928481

`∑[xor(n-xor(1, n), record[A000010(n+1)])]+4`
-/

namespace A066033.P10361396744957928481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (Nat.xor 1 n : ℤ)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A066033.P10361396744957928481

namespace A066033

/-- `∑[xor(n-xor(1, n), record[A000010(n+1)])]+4` -/
def P10361396744957928481.Spec : Prop :=
  ∀ n, P10361396744957928481.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P13085133033788486318

`∑[A000040(n+1)*A057077(A004277(n)-1)]`
-/

namespace A066033.P13085133033788486318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A057077 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P13085133033788486318

namespace A066033

/-- `∑[A000040(n+1)*A057077(A004277(n)-1)]` -/
def P13085133033788486318.Spec : Prop :=
  ∀ n, P13085133033788486318.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P8072636440905449969

`∑[A073846(2*(n+1))*A165326(n)]`
-/

namespace A066033.P8072636440905449969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1)) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P8072636440905449969

namespace A066033

/-- `∑[A073846(2*(n+1))*A165326(n)]` -/
def P8072636440905449969.Spec : Prop :=
  ∀ n, P8072636440905449969.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P769388709653346368

`∑[record[A051698(n)]*A165326(n)]`
-/

namespace A066033.P769388709653346368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066033.P769388709653346368

namespace A066033

/-- `∑[record[A051698(n)]*A165326(n)]` -/
def P769388709653346368.Spec : Prop :=
  ∀ n, P769388709653346368.a n = A066033 (n + 1)

end A066033

/-! ## A066033.P16872797569664774476

`∏[-ratio[record[A014963(n+1)]]]+a(n-1)` with `a(0)=2`
-/

namespace A066033.P16872797569664774476
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A066033.P16872797569664774476

namespace A066033

/-- `∏[-ratio[record[A014963(n+1)]]]+a(n-1)` -/
def P16872797569664774476.Spec : Prop :=
  ∀ n, P16872797569664774476.a n = (A066033 (n + 1) : ℚ)

end A066033

/-!
# A066035: First term in the continued fraction expansion of StieltjesGamma[n].

The programs for A066035, there is no canonical definition to state claims against.
-/

/-! ## A066035.P387473833549412706

`A335877(A076303(n+1)+7)`
-/

namespace A066035.P387473833549412706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (A076303 (n + 1) + 7).toNat

end

end A066035.P387473833549412706

/-! ## A066035.P14467542386761426863

`-A117371(Δ[A190900(n+1)])`
-/

namespace A066035.P14467542386761426863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A117371 (f1 (n + 1) - f1 n).toNat

end

end A066035.P14467542386761426863

/-! ## A066035.P9303388889450386599

`n-lt[A053260(A053261(n)), 2]`
-/

namespace A066035.P9303388889450386599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (A053261 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A066035.P9303388889450386599

/-! ## A066035.P10316123562865684451

`A062329(n)%A028310(C(n, 41))`
-/

namespace A066035.P10316123562865684451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062329 n) (A028310 (Nat.choose n 41))

end

end A066035.P10316123562865684451

/-! ## A066035.P16997195901751368008

`∑[A002819(n)%A028310(C(n, 41))]`
-/

namespace A066035.P16997195901751368008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002819 n) (A028310 (Nat.choose n 41))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066035.P16997195901751368008

/-!
# A066037: Number of (undirected) Hamiltonian cycles in the binary n-cube, or the number of cyclic n-bit Gray codes.

The programs for A066037, there is no canonical definition to state claims against.
-/

/-! ## A066037.P2569769233490889127

`ceil(A003042(n+1)/2)`
-/

namespace A066037.P2569769233490889127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003042 (n + 1) : ℚ) / 2⌉

end

end A066037.P2569769233490889127

/-!
# A066038: Numbers with at least two prime factors such that the sum of the prime factors is prime.

The programs for A066038, the canonical program `A066038.P15086675894489846112` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066038 has offset 1).

The definition of A066038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066038.P10590126683103769035

`∩[A114522(n+1), A176587(n+1)]`
-/

namespace A066038.P10590126683103769035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P10590126683103769035

namespace A066038

/-- `∩[A114522(n+1), A176587(n+1)]` -/
def P10590126683103769035.Spec : Prop :=
  ∀ n, (P10590126683103769035.a n : ℤ) = A066038 (n + 1)

end A066038

/-! ## A066038.P15086675894489846112

`∩[A114522(n+1), A275665(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A066038

/-- `∩[A114522(n+1), A275665(n+1)]` -/
def P15086675894489846112.Spec : Prop :=
  ∀ n, (P15086675894489846112.a n : ℤ) = A066038 (n + 1)

theorem P15086675894489846112.correct : P15086675894489846112.Spec := by
  intro n
  simp only [A066038, Nat.add_sub_cancel]

end A066038

/-! ## A066038.P5487021428330034091

`∩[A024619(n+1), A114522(n+1)]`
-/

namespace A066038.P5487021428330034091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P5487021428330034091

namespace A066038

/-- `∩[A024619(n+1), A114522(n+1)]` -/
def P5487021428330034091.Spec : Prop :=
  ∀ n, (P5487021428330034091.a n : ℤ) = A066038 (n + 1)

end A066038

/-! ## A066038.P7154464080450835478

`∩[A114522(n+1), A361102(n+1)]`
-/

namespace A066038.P7154464080450835478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P7154464080450835478

namespace A066038

/-- `∩[A114522(n+1), A361102(n+1)]` -/
def P7154464080450835478.Spec : Prop :=
  ∀ n, (P7154464080450835478.a n : ℤ) = A066038 (n + 1)

end A066038

/-! ## A066038.P9563272893315384928

`∩[A080765(n+1)+1, A114522(n+1)]`
-/

namespace A066038.P9563272893315384928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P9563272893315384928

namespace A066038

/-- `∩[A080765(n+1)+1, A114522(n+1)]` -/
def P9563272893315384928.Spec : Prop :=
  ∀ n, (P9563272893315384928.a n : ℤ) = A066038 (n + 1)

end A066038

/-! ## A066038.P13573047337738043438

`filter[A047820(n+1), A143731(#)]`
-/

namespace A066038.P13573047337738043438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A066038.P13573047337738043438

namespace A066038

/-- `filter[A047820(n+1), A143731(#)]` -/
def P13573047337738043438.Spec : Prop :=
  ∀ n, P13573047337738043438.a n = A066038 (n + 1)

end A066038

/-! ## A066038.P1779049670857113375

`filter[A114522(n+1), A143731(#)]`
-/

namespace A066038.P1779049670857113375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A066038.P1779049670857113375

namespace A066038

/-- `filter[A114522(n+1), A143731(#)]` -/
def P1779049670857113375.Spec : Prop :=
  ∀ n, P1779049670857113375.a n = A066038 (n + 1)

end A066038

/-! ## A066038.P15464095883733927800

`eq[A003415(A008472(n+1)), A014963(n+1)]+1`
-/

namespace A066038.P15464095883733927800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008472 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066038.P15464095883733927800

namespace A066038

/-- `eq[A003415(A008472(n+1)), A014963(n+1)]+1` -/
def P15464095883733927800.Spec : Prop :=
  ∀ n, (P15464095883733927800.a n : ℤ) = A066038 (n + 1)

end A066038

/-! ## A066038.P338252223726158828

`∩[A114522(n+1), A324455(n+1)]`
-/

namespace A066038.P338252223726158828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P338252223726158828

namespace A066038

/-- `∩[A114522(n+1), A324455(n+1)]` -/
def P338252223726158828.Spec : Prop :=
  ∀ n, (P338252223726158828.a n : ℤ) = A066038 (n + 1)

end A066038

/-!
# A066039: Largest prime less than or equal to the sum of first n primes (A007504).

The programs for A066039, the canonical program `A066039.P1848661495712138601` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066039 has offset 1).

The definition of A066039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066039.P1848661495712138601

`A202301(n+1)-A001223(A061568(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066039

/-- `A202301(n+1)-A001223(A061568(n+1))` -/
def P1848661495712138601.Spec : Prop :=
  ∀ n, P1848661495712138601.a n = A066039 (n + 1)

theorem P1848661495712138601.correct : P1848661495712138601.Spec := by
  intro n
  simp only [A066039, Nat.add_sub_cancel]

end A066039

/-! ## A066039.P3764838412424804235

`A202301(n+1)-A001223(∑[A225854(n+1)])`
-/

namespace A066039.P3764838412424804235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202301 (n + 1) - A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066039.P3764838412424804235

namespace A066039

/-- `A202301(n+1)-A001223(∑[A225854(n+1)])` -/
def P3764838412424804235.Spec : Prop :=
  ∀ n, P3764838412424804235.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P5554634225403004898

`A001748(∑[A225854(n+1)])/3`
-/

namespace A066039.P5554634225403004898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A066039.P5554634225403004898

namespace A066039

/-- `A001748(∑[A225854(n+1)])/3` -/
def P5554634225403004898.Spec : Prop :=
  ∀ n, P5554634225403004898.a n = (A066039 (n + 1) : ℚ)

end A066039

/-! ## A066039.P656814360391487178

`A156037(A061568(n+1))+1`
-/

namespace A066039.P656814360391487178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A061568 (n + 1)).toNat + 1

end

end A066039.P656814360391487178

namespace A066039

/-- `A156037(A061568(n+1))+1` -/
def P656814360391487178.Spec : Prop :=
  ∀ n, P656814360391487178.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P2823141029822462332

`A156037(∑[A225854(n+1)])+1`
-/

namespace A066039.P2823141029822462332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A066039.P2823141029822462332

namespace A066039

/-- `A156037(∑[A225854(n+1)])+1` -/
def P2823141029822462332.Spec : Prop :=
  ∀ n, P2823141029822462332.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P11324693009397922759

`A000040(A061568(n+1))`
-/

namespace A066039.P11324693009397922759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061568 (n + 1)).toNat

end

end A066039.P11324693009397922759

namespace A066039

/-- `A000040(A061568(n+1))` -/
def P11324693009397922759.Spec : Prop :=
  ∀ n, P11324693009397922759.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P1270652243929418687

`A000040(∑[A225854(n+1)])`
-/

namespace A066039.P1270652243929418687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066039.P1270652243929418687

namespace A066039

/-- `A000040(∑[A225854(n+1)])` -/
def P1270652243929418687.Spec : Prop :=
  ∀ n, P1270652243929418687.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P10712521483205652348

`A008578(A061568(n+1)+1)`
-/

namespace A066039.P10712521483205652348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061568 (n + 1) + 1).toNat

end

end A066039.P10712521483205652348

namespace A066039

/-- `A008578(A061568(n+1)+1)` -/
def P10712521483205652348.Spec : Prop :=
  ∀ n, P10712521483205652348.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P13503126080831326504

`∑{d}[A061568(n+1), A007444(#)]`
-/

namespace A066039.P13503126080831326504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A066039.P13503126080831326504

namespace A066039

/-- `∑{d}[A061568(n+1), A007444(#)]` -/
def P13503126080831326504.Spec : Prop :=
  ∀ n, P13503126080831326504.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P15498423699400401731

`A006093(∑[A225854(n+1)])+1`
-/

namespace A066039.P15498423699400401731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A066039.P15498423699400401731

namespace A066039

/-- `A006093(∑[A225854(n+1)])+1` -/
def P15498423699400401731.Spec : Prop :=
  ∀ n, P15498423699400401731.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P4164758556989654112

`A008578(∑[A225854(n+1)]+1)`
-/

namespace A066039.P4164758556989654112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A066039.P4164758556989654112

namespace A066039

/-- `A008578(∑[A225854(n+1)]+1)` -/
def P4164758556989654112.Spec : Prop :=
  ∀ n, P4164758556989654112.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P9982322486763704597

`A000040(A000720(A007504(n+1)))`
-/

namespace A066039.P9982322486763704597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A007504 (n + 1)).toNat).toNat

end

end A066039.P9982322486763704597

namespace A066039

/-- `A000040(A000720(A007504(n+1)))` -/
def P9982322486763704597.Spec : Prop :=
  ∀ n, P9982322486763704597.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P12309347408301129515

`A000040(A000720(∑[A000040(n+1)]))`
-/

namespace A066039.P12309347408301129515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A066039.P12309347408301129515

namespace A066039

/-- `A000040(A000720(∑[A000040(n+1)]))` -/
def P12309347408301129515.Spec : Prop :=
  ∀ n, P12309347408301129515.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P623496913897149712

`A000040(A000720(A160793(2*(n+1))))`
-/

namespace A066039.P623496913897149712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A160793 (2 * (n + 1))).toNat).toNat

end

end A066039.P623496913897149712

namespace A066039

/-- `A000040(A000720(A160793(2*(n+1))))` -/
def P623496913897149712.Spec : Prop :=
  ∀ n, P623496913897149712.a n = A066039 (n + 1)

end A066039

/-! ## A066039.P15152244589334108352

`A000040(A000720(A066911(A000040(n+2))))`
-/

namespace A066039.P15152244589334108352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A066911 (A000040 (n + 2)).toNat).toNat).toNat

end

end A066039.P15152244589334108352

namespace A066039

/-- `A000040(A000720(A066911(A000040(n+2))))` -/
def P15152244589334108352.Spec : Prop :=
  ∀ n, P15152244589334108352.a n = A066039 (n + 1)

end A066039

/-!
# A066040: Triangle of covering numbers T(n,k) = C(n,k,k-3), n >= 4, 4 <= k <= n.

The programs for A066040, there is no canonical definition to state claims against.
-/

/-! ## A066040.P13607393326853908425

`A118668(lcm(8, A221200(n+1)))`
-/

namespace A066040.P13607393326853908425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (Int.lcm 8 (A221200 (n + 1)))

end

end A066040.P13607393326853908425

/-! ## A066040.P10309165178747302726

`A340862(A284861(n+1)+1)`
-/

namespace A066040.P10309165178747302726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (A284861 (n + 1) + 1).toNat

end

end A066040.P10309165178747302726

/-! ## A066040.P11829665216393118360

`A185284(A038207(n))+A002260(n+2)`
-/

namespace A066040.P11829665216393118360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A038207 n).toNat + A002260 (n + 2)

end

end A066040.P11829665216393118360

/-! ## A066040.P16633249146590165170

`A302110(A004148(n))+A002260(n+2)`
-/

namespace A066040.P16633249146590165170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A004148 n).toNat + A002260 (n + 2)

end

end A066040.P16633249146590165170

/-! ## A066040.P18115805763732757097

`A365721(A339258(3*n+2)+A221723(n+1))`
-/

namespace A066040.P18115805763732757097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (A339258 (3 * n + 2) + A221723 (n + 1)).toNat

end

end A066040.P18115805763732757097

/-!
# A066041: Triangle of covering numbers T(n,k) = C(n,k,k-4), n >= 5, 5 <= k <= n.

The programs for A066041, there is no canonical definition to state claims against.
-/

/-! ## A066041.P13442041938490716077

`A376181(A387466(n+1))`
-/

namespace A066041.P13442041938490716077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A387466 (n + 1)).toNat

end

end A066041.P13442041938490716077

/-! ## A066041.P13135343892126401047

`A002260(lt[A008820(n), n])`
-/

namespace A066041.P13135343892126401047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A066041.P13135343892126401047

/-! ## A066041.P17645414830880939965

`A002260(lt[A341916(n), 18]+2)`
-/

namespace A066041.P17645414830880939965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A066041.P17645414830880939965

/-! ## A066041.P17130420601832565419

`A391214(A013623(n+1))`
-/

namespace A066041.P17130420601832565419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391214 (A013623 (n + 1)).toNat

end

end A066041.P17130420601832565419

/-!
# A066043: a(1) = 1; for m > 0, a(2m) = 2m, a(2m+1) = 4m+2.

The programs for A066043, the canonical program `A066043.P5799595598134881763` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066043 has offset 1).

The definition of A066043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066043.P5799595598134881763

`(n+1)*gcd(2, ∏{p}[n, #])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066043

/-- `(n+1)*gcd(2, ∏{p}[n, #])` -/
def P5799595598134881763.Spec : Prop :=
  ∀ n, (P5799595598134881763.a n : ℤ) = A066043 (n + 1)

theorem P5799595598134881763.correct : P5799595598134881763.Spec := by
  intro n
  simp only [A066043, Nat.add_sub_cancel]

end A066043

/-! ## A066043.P14065779323320038705

`lcm(n+1, 2-C(3, n²))`
-/

namespace A066043.P14065779323320038705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (2 - (Nat.choose 3 (n ^ 2) : ℤ))

end

end A066043.P14065779323320038705

namespace A066043

/-- `lcm(n+1, 2-C(3, n²))` -/
def P14065779323320038705.Spec : Prop :=
  ∀ n, (P14065779323320038705.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P11072863947149823046

`(n+1)*∏{p}[n, ceil(3/#)]`
-/

namespace A066043.P11072863947149823046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ⌈3 / (p : ℚ)⌉)

end

end A066043.P11072863947149823046

namespace A066043

/-- `(n+1)*∏{p}[n, ceil(3/#)]` -/
def P11072863947149823046.Spec : Prop :=
  ∀ n, P11072863947149823046.a n = A066043 (n + 1)

end A066043

/-! ## A066043.P15237010711836291682

`(n+1)*a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A066043.P15237010711836291682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066043.P15237010711836291682

namespace A066043

/-- `(n+1)*a(∑[(-1)^n])` -/
def P15237010711836291682.Spec : Prop :=
  ∀ n, (P15237010711836291682.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P10342620475087331207

`lcm(2, gcd(n, a(n-1))+1)` with `a(0)=1`
-/

namespace A066043.P10342620475087331207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (Nat.gcd n (a (n - 1)) + 1)

end

end A066043.P10342620475087331207

namespace A066043

/-- `lcm(2, gcd(n, a(n-1))+1)` -/
def P10342620475087331207.Spec : Prop :=
  ∀ n, (P10342620475087331207.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P12785393887470747314

`4/a(n-1)*∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A066043.P12785393887470747314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A066043.P12785393887470747314

namespace A066043

/-- `4/a(n-1)*∑[n]` -/
def P12785393887470747314.Spec : Prop :=
  ∀ n, P12785393887470747314.a n = (A066043 (n + 1) : ℚ)

end A066043

/-! ## A066043.P5253611843521003764

`2*(n+1)/a(n%2)` with `a(0)=1, a(1)=2`
-/

namespace A066043.P5253611843521003764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((n + 1 : ℚ) / a (n % 2))

end

end A066043.P5253611843521003764

namespace A066043

/-- `2*(n+1)/a(n%2)` -/
def P5253611843521003764.Spec : Prop :=
  ∀ n, P5253611843521003764.a n = (A066043 (n + 1) : ℚ)

end A066043

/-! ## A066043.P5166511566757412768

`(char[2*(n+1)]+1)*(n+1)`
-/

namespace A066043.P5166511566757412768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1)

end

end A066043.P5166511566757412768

namespace A066043

/-- `(char[2*(n+1)]+1)*(n+1)` -/
def P5166511566757412768.Spec : Prop :=
  ∀ n, (P5166511566757412768.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P1605366248829472148

`floor((n+1)*a((n+1)%2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066043.P1605366248829472148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ((n + 1) % 2)

end

end A066043.P1605366248829472148

namespace A066043

/-- `floor((n+1)*a((n+1)%2))` -/
def P1605366248829472148.Spec : Prop :=
  ∀ n, (P1605366248829472148.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P2347785909034162439

`∏{d}[n, round((n+1)/(n+1-#))]`
-/

namespace A066043.P2347785909034162439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (d : ℤ) : ℚ))

end

end A066043.P2347785909034162439

namespace A066043

/-- `∏{d}[n, round((n+1)/(n+1-#))]` -/
def P2347785909034162439.Spec : Prop :=
  ∀ n, P2347785909034162439.a n = A066043 (n + 1)

end A066043

/-! ## A066043.P10444948091147297334

`(n+1)/a(∑[(-1)^n])^(-1)` with `a(0)=1`
-/

namespace A066043.P10444948091147297334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ (-1 : ℤ)

end

end A066043.P10444948091147297334

namespace A066043

/-- `(n+1)/a(∑[(-1)^n])^(-1)` -/
def P10444948091147297334.Spec : Prop :=
  ∀ n, P10444948091147297334.a n = (A066043 (n + 1) : ℚ)

end A066043

/-! ## A066043.P12051505416781079450

`lcm(2-C(2, n+2), C(n+1, n))`
-/

namespace A066043.P12051505416781079450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (Nat.choose 2 (n + 2) : ℤ)) (Nat.choose (n + 1) n : ℤ)

end

end A066043.P12051505416781079450

namespace A066043

/-- `lcm(2-C(2, n+2), C(n+1, n))` -/
def P12051505416781079450.Spec : Prop :=
  ∀ n, (P12051505416781079450.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P2903356634360424827

`gcd(a(n-1)+2, n+2)+n` with `a(0)=1, a(1)=2`
-/

namespace A066043.P2903356634360424827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd (a (n - 1) + 2) (n + 2) + n

end

end A066043.P2903356634360424827

namespace A066043

/-- `gcd(a(n-1)+2, n+2)+n` -/
def P2903356634360424827.Spec : Prop :=
  ∀ n, (P2903356634360424827.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P13643048717916390148

`C(n+1, a(n-1))+1+n` with `a(0)=1, a(1)=2`
-/

namespace A066043.P13643048717916390148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (n + 1) (a (n - 1)) + 1 + n

end

end A066043.P13643048717916390148

namespace A066043

/-- `C(n+1, a(n-1))+1+n` -/
def P13643048717916390148.Spec : Prop :=
  ∀ n, (P13643048717916390148.a n : ℤ) = A066043 (n + 1)

end A066043

/-! ## A066043.P15113039549226903436

`2*(n+1)/floor(a(n-1)/n)` with `a(0)=1, a(1)=2`
-/

namespace A066043.P15113039549226903436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * (n + 1) : ℚ) / (⌊a (n - 1) / (n : ℚ)⌋ : ℚ)

end

end A066043.P15113039549226903436

namespace A066043

/-- `2*(n+1)/floor(a(n-1)/n)` -/
def P15113039549226903436.Spec : Prop :=
  ∀ n, P15113039549226903436.a n = (A066043 (n + 1) : ℚ)

end A066043

/-! ## A066043.P14131166296439182470

`floor(((n+1)²+n²)/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A066043.P14131166296439182470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊((n + 1) ^ 2 + n ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A066043.P14131166296439182470

namespace A066043

/-- `floor(((n+1)²+n²)/a(n-1))` -/
def P14131166296439182470.Spec : Prop :=
  ∀ n, P14131166296439182470.a n = A066043 (n + 1)

end A066043

/-! ## A066043.P15291380356342877683

`floor((n+1)^(n+1-a(n-1))+n+1)` with `a(0)=1, a(1)=2`
-/

namespace A066043.P15291380356342877683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(n + 1 : ℚ) ^ ((n + 1 : ℤ) - a (n - 1) : ℤ) + (n + 1 : ℚ)⌋

end

end A066043.P15291380356342877683

namespace A066043

/-- `floor((n+1)^(n+1-a(n-1))+n+1)` -/
def P15291380356342877683.Spec : Prop :=
  ∀ n, P15291380356342877683.a n = A066043 (n + 1)

end A066043

/-! ## A066043.P18197982740939982400

`(n+1)*A040003(n)/2`
-/

namespace A066043.P18197982740939982400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A040003 n : ℚ) / 2

end

end A066043.P18197982740939982400

namespace A066043

/-- `(n+1)*A040003(n)/2` -/
def P18197982740939982400.Spec : Prop :=
  ∀ n, P18197982740939982400.a n = (A066043 (n + 1) : ℚ)

end A066043

/-!
# A066044: Numbers k that are repdigits in more bases (smaller than k) than any smaller number.

The programs for A066044, there is no canonical definition to state claims against.
-/

/-! ## A066044.P8401410698846125912

`A066460(A037474(n))%A329383(8*n+13)`
-/

namespace A066044.P8401410698846125912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066460 (A037474 n).toNat) (A329383 (8 * n + 13))

end

end A066044.P8401410698846125912

/-! ## A066044.P12604745348050994000

`A066460(lt[A308823(n), A144215(n+4)+1])`
-/

namespace A066044.P12604745348050994000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066460 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066044.P12604745348050994000

/-! ## A066044.P4672712369017346135

`A066460(A029964(n+1))`
-/

namespace A066044.P4672712369017346135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066460 (A029964 (n + 1)).toNat

end

end A066044.P4672712369017346135

/-!
# A066045: Triangle T(n,k) defined by Sum_{1<=k<=n} T(n,k)*u^k*t^n/n! = exp(((1-t)*(1-t^2)*(1-t^3)...)^(-u)-1).

The programs for A066045, there is no canonical definition to state claims against.
-/

/-! ## A066045.P9273337330575634696

`A000110(A002260(n+1))*A008298(n+1)`
-/

namespace A066045.P9273337330575634696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A008298 (n + 1)

end

end A066045.P9273337330575634696

/-! ## A066045.P4322775529852669214

`lcm(A018892(A217233(n)), A039692(n+1))`
-/

namespace A066045.P4322775529852669214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018892 (A217233 n).toNat) (A039692 (n + 1))

end

end A066045.P4322775529852669214

/-!
# A066046: a(1) = 1; a(2) = 2; a(3) = 3; a(n+3) = a(n+2)*a(n+1) + a(n+1)*a(n) + a(n)*a(n+2).

The programs for A066046, the canonical program `A066046.P10854942693831817038` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066046 has offset 1).

The definition of A066046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066046.P10854942693831817038

`a(n-1)*a(n-2)+a(n-2)*a(n-3)+a(n-1)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066046

/-- `a(n-1)*a(n-2)+a(n-2)*a(n-3)+a(n-1)*a(n-3)` -/
def P10854942693831817038.Spec : Prop :=
  ∀ n, (P10854942693831817038.a n : ℤ) = A066046 (n + 1)

theorem P10854942693831817038.correct : P10854942693831817038.Spec := by
  intro n
  simp only [A066046, Nat.add_sub_cancel]

end A066046

/-! ## A066046.P16446194158955367335

`record[A006530(∑[A195924(n)²])]`
-/

namespace A066046.P16446194158955367335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195924 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066046.P16446194158955367335

namespace A066046

/-- `record[A006530(∑[A195924(n)²])]` -/
def P16446194158955367335.Spec : Prop :=
  ∀ n, P16446194158955367335.a n = A066046 (n + 1)

end A066046

/-!
# A066047: Numbers k that divide A001045(k-1).

The programs for A066047, the canonical program `A066047.P375633196085682392` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066047 has offset 1).

The definition of A066047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066047.P375633196085682392

`A175212(n+2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A066047

/-- `A175212(n+2)` -/
def P375633196085682392.Spec : Prop :=
  ∀ n, P375633196085682392.a n = A066047 (n + 1)

theorem P375633196085682392.correct : P375633196085682392.Spec := by
  intro n
  simp only [A066047, Nat.add_sub_cancel]

end A066047

/-! ## A066047.P14461032851473754757

`filter[A069040(n+1), A257531(#)]`
-/

namespace A066047.P14461032851473754757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A066047.P14461032851473754757

namespace A066047

/-- `filter[A069040(n+1), A257531(#)]` -/
def P14461032851473754757.Spec : Prop :=
  ∀ n, P14461032851473754757.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P2204855521341637789

`filter[A007310(n+1), A257531(#)]`
-/

namespace A066047.P2204855521341637789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A066047.P2204855521341637789

namespace A066047

/-- `filter[A007310(n+1), A257531(#)]` -/
def P2204855521341637789.Spec : Prop :=
  ∀ n, P2204855521341637789.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P17142741989798461375

`filter[A166517(n), A257531(#)]`
-/

namespace A066047.P17142741989798461375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A066047.P17142741989798461375

namespace A066047

/-- `filter[A166517(n), A257531(#)]` -/
def P17142741989798461375.Spec : Prop :=
  ∀ n, P17142741989798461375.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P1465523055982398403

`A141310(eq[A038500(n+1), A257531(n+1)])`
-/

namespace A066047.P1465523055982398403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066047.P1465523055982398403

namespace A066047

/-- `A141310(eq[A038500(n+1), A257531(n+1)])` -/
def P1465523055982398403.Spec : Prop :=
  ∀ n, P1465523055982398403.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P7476313791913318637

`A153152(eq[A257531(n+1), A322026(n+1)])`
-/

namespace A066047.P7476313791913318637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066047.P7476313791913318637

namespace A066047

/-- `A153152(eq[A257531(n+1), A322026(n+1)])` -/
def P7476313791913318637.Spec : Prop :=
  ∀ n, P7476313791913318637.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P10138555149500707851

`eq[2, A015910(A257174(n))]`
-/

namespace A066047.P10138555149500707851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066047.P10138555149500707851

namespace A066047

/-- `eq[2, A015910(A257174(n))]` -/
def P10138555149500707851.Spec : Prop :=
  ∀ n, (P10138555149500707851.a n : ℤ) = A066047 (n + 1)

end A066047

/-! ## A066047.P9562956440690649171

`eq[1, n%A003558(A032766(n))]`
-/

namespace A066047.P9562956440690649171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A003558 (A032766 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066047.P9562956440690649171

namespace A066047

/-- `eq[1, n%A003558(A032766(n))]` -/
def P9562956440690649171.Spec : Prop :=
  ∀ n, (P9562956440690649171.a n : ℤ) = A066047 (n + 1)

end A066047

/-! ## A066047.P14032281610767764255

`∏{p}[∏{d}[A176997(n+3), #], #]`
-/

namespace A066047.P14032281610767764255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A066047.P14032281610767764255

namespace A066047

/-- `∏{p}[∏{d}[A176997(n+3), #], #]` -/
def P14032281610767764255.Spec : Prop :=
  ∀ n, (P14032281610767764255.a n : ℤ) = A066047 (n + 1)

end A066047

/-! ## A066047.P10950979462459137437

`A176997(n+3)%A215610(n+2)`
-/

namespace A066047.P10950979462459137437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176997 (n + 3)) (A215610 (n + 2))

end

end A066047.P10950979462459137437

namespace A066047

/-- `A176997(n+3)%A215610(n+2)` -/
def P10950979462459137437.Spec : Prop :=
  ∀ n, P10950979462459137437.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P472763882373272778

`A176997(A079643((n+1)²)+2)`
-/

namespace A066047.P472763882373272778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (A079643 ((n + 1) ^ 2) + 2).toNat

end

end A066047.P472763882373272778

namespace A066047

/-- `A176997(A079643((n+1)²)+2)` -/
def P472763882373272778.Spec : Prop :=
  ∀ n, P472763882373272778.a n = A066047 (n + 1)

end A066047

/-! ## A066047.P12542919061523169094

`A176997(and(2, A048630((n+1)²))+n+1)`
-/

namespace A066047.P12542919061523169094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (Int.land 2 (A048630 ((n + 1) ^ 2)) + (n + 1 : ℤ)).toNat

end

end A066047.P12542919061523169094

namespace A066047

/-- `A176997(and(2, A048630((n+1)²))+n+1)` -/
def P12542919061523169094.Spec : Prop :=
  ∀ n, P12542919061523169094.a n = A066047 (n + 1)

end A066047

/-!
# A066048: Product of smallest and greatest prime factors of n.

The programs for A066048, there is no canonical definition to state claims against.
-/

/-! ## A066048.P15683228549779351307

`A020639(n+1)*A006530(n+1)`
-/

namespace A066048.P15683228549779351307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A006530 (n + 1)

end

end A066048.P15683228549779351307

/-! ## A066048.P15953862352239636012

`A304233(∏{p}[n+1, #])`
-/

namespace A066048.P15953862352239636012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066048.P15953862352239636012

/-! ## A066048.P10899813205483114799

`A064505(A088835(n+1))`
-/

namespace A066048.P10899813205483114799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064505 (A088835 (n + 1)).toNat

end

end A066048.P10899813205483114799

/-! ## A066048.P17785496568202202970

`A304233(A007947(n+1))`
-/

namespace A066048.P17785496568202202970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (A007947 (n + 1)).toNat

end

end A066048.P17785496568202202970

/-! ## A066048.P12476443149179975004

`A014963(n+1)*A088835(n+1)`
-/

namespace A066048.P12476443149179975004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A088835 (n + 1)

end

end A066048.P12476443149179975004

/-! ## A066048.P13373346533837564822

`A140580(n+1)/A073752(n+1)`
-/

namespace A066048.P13373346533837564822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140580 (n + 1) : ℚ) / (A073752 (n + 1) : ℚ)

end

end A066048.P13373346533837564822

/-! ## A066048.P15402083066821593230

`A253560(n+1)/A032742(n+1)`
-/

namespace A066048.P15402083066821593230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A066048.P15402083066821593230

/-! ## A066048.P9382255398744166029

`A285109(n+1)/A052126(n+1)`
-/

namespace A066048.P9382255398744166029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A066048.P9382255398744166029

/-! ## A066048.P2323224695908707042

`sqrt(A088377(n+1))*A006530(n+1)`
-/

namespace A066048.P2323224695908707042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ) * (A006530 (n + 1) : ℝ)

end

end A066048.P2323224695908707042

/-! ## A066048.P16452020261855980956

`∏{p}[A053585(n+1), #*A020639(n+1)]`
-/

namespace A066048.P16452020261855980956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A020639 (n + 1)

end

end A066048.P16452020261855980956

/-! ## A066048.P7741926899447924615

`∏{p}[A068794(n+1), #*A006530(n+1)]`
-/

namespace A066048.P7741926899447924615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A006530 (n + 1)

end

end A066048.P7741926899447924615

/-! ## A066048.P14946761028439850665

`(n+1)/A032742(n+1)*A006530(n+1)`
-/

namespace A066048.P14946761028439850665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A006530 (n + 1) : ℚ)

end

end A066048.P14946761028439850665

/-! ## A066048.P402842380319132153

`(n+1)/gcd(n+1, A060681(n+1))*A006530(n+1)`
-/

namespace A066048.P402842380319132153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ) * (A006530 (n + 1) : ℚ)

end

end A066048.P402842380319132153

/-! ## A066048.P3264620488281589213

`A006530(n+1)*A006530(A028233(n+1))`
-/

namespace A066048.P3264620488281589213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (A028233 (n + 1)).toNat

end

end A066048.P3264620488281589213

/-! ## A066048.P12574623332202160820

`A006530(n+1)*A006530(A068794(n+1))`
-/

namespace A066048.P12574623332202160820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (A068794 (n + 1)).toNat

end

end A066048.P12574623332202160820

/-! ## A066048.P10664023131690974178

`A006530(n+1)*A006530(A074828(n+1))`
-/

namespace A066048.P10664023131690974178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (A074828 (n + 1)).toNat

end

end A066048.P10664023131690974178

/-! ## A066048.P10389701139168155672

`A020639(n+1)*A020639(A053585(n+1))`
-/

namespace A066048.P10389701139168155672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (A053585 (n + 1)).toNat

end

end A066048.P10389701139168155672

/-! ## A066048.P2188999173029156169

`A008578(A159081(n+1))*A020639(n+1)`
-/

namespace A066048.P2188999173029156169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A159081 (n + 1)).toNat * A020639 (n + 1)

end

end A066048.P2188999173029156169

/-! ## A066048.P15278621085643880181

`A006530(n+1)*A079068(A117367(n+1))`
-/

namespace A066048.P15278621085643880181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A079068 (A117367 (n + 1)).toNat

end

end A066048.P15278621085643880181

/-! ## A066048.P2701399938261019657

`A006530(n+1)*A006530(A304181(n+1))`
-/

namespace A066048.P2701399938261019657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A006530 (A304181 (n + 1)).toNat

end

end A066048.P2701399938261019657

/-!
# A066049: Numbers n such that 2*n^2 - 1 is a prime.

The programs for A066049, there is no canonical definition to state claims against.
-/

/-! ## A066049.P17547133286263443205

`A090697(n+1)/2`
-/

namespace A066049.P17547133286263443205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090697 (n + 1) : ℚ) / 2

end

end A066049.P17547133286263443205

/-! ## A066049.P3409271183715781062

`A110558(n+1)/4`
-/

namespace A066049.P3409271183715781062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110558 (n + 1) : ℚ) / 4

end

end A066049.P3409271183715781062

/-! ## A066049.P10553894766557076843

`A160697(n+2)`
-/

namespace A066049.P10553894766557076843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160697 (n + 2)

end

end A066049.P10553894766557076843

/-! ## A066049.P13939578864096748652

`A066436(n+1)%(A090697(n+1)+1)`
-/

namespace A066049.P13939578864096748652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066436 (n + 1)) (A090697 (n + 1) + 1)

end

end A066049.P13939578864096748652

/-! ## A066049.P8039316325525974109

`eq[2, A359438(n)]`
-/

namespace A066049.P8039316325525974109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066049.P8039316325525974109

/-! ## A066049.P5887014418275898253

`eq[2, A230362(n+2)]`
-/

namespace A066049.P5887014418275898253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066049.P5887014418275898253

/-! ## A066049.P4181613848098376929

`A246425(A090697(n+1)-1)`
-/

namespace A066049.P4181613848098376929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A090697 (n + 1) - 1).toNat

end

end A066049.P4181613848098376929

/-! ## A066049.P18184603035919490507

`A001281(A090697(n+1))`
-/

namespace A066049.P18184603035919490507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A090697 (n + 1)).toNat

end

end A066049.P18184603035919490507

/-! ## A066049.P12664168693193976735

`A000463(A090697(n+1)-1)`
-/

namespace A066049.P12664168693193976735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A090697 (n + 1) - 1).toNat

end

end A066049.P12664168693193976735

/-! ## A066049.P12337560653150573720

`A008619(A090697(n+1)-1)`
-/

namespace A066049.P12337560653150573720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A090697 (n + 1) - 1).toNat

end

end A066049.P12337560653150573720

/-! ## A066049.P1390347140881800455

`A246425(2*A090697(n+1))+A090697(n+1)`
-/

namespace A066049.P1390347140881800455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (2 * A090697 (n + 1)).toNat + A090697 (n + 1)

end

end A066049.P1390347140881800455

/-! ## A066049.P7394568202027997103

`A330492(A090697(n+1)+2)`
-/

namespace A066049.P7394568202027997103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (A090697 (n + 1) + 2).toNat

end

end A066049.P7394568202027997103

/-! ## A066049.P10686225240020825031

`A002265(A110558(n+1))`
-/

namespace A066049.P10686225240020825031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A110558 (n + 1)).toNat

end

end A066049.P10686225240020825031

/-! ## A066049.P5383195069235880356

`A076536(2*A110558(n+1))`
-/

namespace A066049.P5383195069235880356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (2 * A110558 (n + 1)).toNat

end

end A066049.P5383195069235880356

/-! ## A066049.P1946773260022878198

`eq[n, A008620(A239970(n))]`
-/

namespace A066049.P1946773260022878198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A239970 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066049.P1946773260022878198

/-! ## A066049.P18038068161673767262

`A008611(record[A239970(n+1)])`
-/

namespace A066049.P18038068161673767262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066049.P18038068161673767262

/-! ## A066049.P925034465315085265

`A008620(record[A239970(n+1)])`
-/

namespace A066049.P925034465315085265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066049.P925034465315085265

/-! ## A066049.P5404494252664649219

`eq[1, ∑{e}[2*n²-1, #]]`
-/

namespace A066049.P5404494252664649219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066049.P5404494252664649219

/-! ## A066049.P17979116958116071988

`eq[2, ∏{e}[n+1-A000217(2*n), #+1]]`
-/

namespace A066049.P17979116958116071988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066049.P17979116958116071988

/-!
# A066050: Average of divisors of n (sigma(n)/d(n)) is greater than average of divisors for all k < n.

The programs for A066050, there is no canonical definition to state claims against.
-/

/-! ## A066050.P17885703561834336503

`∪[A054964(n+1), A067126(n+1)]`
-/

namespace A066050.P17885703561834336503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066050.P17885703561834336503

/-! ## A066050.P12140142305632730518

`lt[A082023(n), A010875(n)]`
-/

namespace A066050.P12140142305632730518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066050.P12140142305632730518

/-! ## A066050.P3165218793348516535

`lt[A167865(n)², A141425(n+1)]`
-/

namespace A066050.P3165218793348516535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066050.P3165218793348516535

/-! ## A066050.P2184884279899501614

`eq[A000038(n), A003165(A343371(n))]`
-/

namespace A066050.P2184884279899501614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A343371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066050.P2184884279899501614

/-! ## A066050.P11464209185170186675

`eq[A026811(A005127(n)), A069531(n+1)]`
-/

namespace A066050.P11464209185170186675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (A005127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066050.P11464209185170186675

/-! ## A066050.P5008844475939170524

`eq[A242062(n)*A295520(n), A295520(n)]`
-/

namespace A066050.P5008844475939170524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n * A295520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066050.P5008844475939170524

/-! ## A066050.P15594434207500607379

`eq[A026810(A072480(n+1)), A089233(n+1)]+1`
-/

namespace A066050.P15594434207500607379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A072480 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066050.P15594434207500607379

/-! ## A066050.P12435782932279811739

`eq[A232992(A014963(n+1)), A232992(n+1)]+1`
-/

namespace A066050.P12435782932279811739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232992 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066050.P12435782932279811739

/-! ## A066050.P5207445953942582164

`eq[A027349(A006530(n+1)+1), A027349(n+2)]+1`
-/

namespace A066050.P5207445953942582164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (A006530 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027349 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066050.P5207445953942582164

/-! ## A066050.P276203919547816021

`eq[A139712(n+1), A139712(A139712(n+1))]+1`
-/

namespace A066050.P276203919547816021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139712 (A139712 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066050.P276203919547816021

/-! ## A066050.P4111589194412887038

`eq[A046772(A014963(n+1)), A046772(n+1)]+1`
-/

namespace A066050.P4111589194412887038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066050.P4111589194412887038

/-! ## A066050.P2813740285460637509

`lt[A279787(n), ∑[A184639(n)]]`
-/

namespace A066050.P2813740285460637509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279787 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066050.P2813740285460637509

/-!
# A066051: Maximal degree of an irreducible representation of the group of n X n signed permutation matrices.

The programs for A066051, there is no canonical definition to state claims against.
-/

/-! ## A066051.P1749713995978070344

`A056971(n+2)%p?[∑[2^n]]`
-/

namespace A066051.P1749713995978070344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056971 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A066051.P1749713995978070344

/-! ## A066051.P14856148085056098972

`A056971(A059442(∑[n]))`
-/

namespace A066051.P14856148085056098972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 (A059442 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A066051.P14856148085056098972

/-! ## A066051.P3453247444740969244

`A056971(A392618(n+1))`
-/

namespace A066051.P3453247444740969244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056971 (A392618 (n + 1)).toNat

end

end A066051.P3453247444740969244

/-!
# A066052: Number of permutations in the symmetric group S_n with order >= 3.

The programs for A066052, the canonical program `A066052.P12493848751313193473` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066052 has offset 1).

The definition of A066052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066052.P12493848751313193473

`(n+1)!-A000085(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066052

/-- `(n+1)!-A000085(n+1)` -/
def P12493848751313193473.Spec : Prop :=
  ∀ n, P12493848751313193473.a n = A066052 (n + 1)

theorem P12493848751313193473.correct : P12493848751313193473.Spec := by
  intro n
  simp only [A066052, Nat.add_sub_cancel]

end A066052

/-! ## A066052.P9198770676882464631

`(n+1)!-record[A293808(n)]`
-/

namespace A066052.P9198770676882464631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066052.P9198770676882464631

namespace A066052

/-- `(n+1)!-record[A293808(n)]` -/
def P9198770676882464631.Spec : Prop :=
  ∀ n, P9198770676882464631.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P3857211130589334453

`(n+1)!-A099020(∑[n+1])`
-/

namespace A066052.P3857211130589334453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066052.P3857211130589334453

namespace A066052

/-- `(n+1)!-A099020(∑[n+1])` -/
def P3857211130589334453.Spec : Prop :=
  ∀ n, P3857211130589334453.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P1865877524657391742

`record[A047920(n)]-record[A099020(n)]`
-/

namespace A066052.P1865877524657391742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A066052.P1865877524657391742

namespace A066052

/-- `record[A047920(n)]-record[A099020(n)]` -/
def P1865877524657391742.Spec : Prop :=
  ∀ n, P1865877524657391742.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P7960198687740115368

`A000142(n+1)-record[A099020(n)]`
-/

namespace A066052.P7960198687740115368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066052.P7960198687740115368

namespace A066052

/-- `A000142(n+1)-record[A099020(n)]` -/
def P7960198687740115368.Spec : Prop :=
  ∀ n, P7960198687740115368.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P13042062704522535928

`A000142(n+1)-A000085(n+1)`
-/

namespace A066052.P13042062704522535928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000085 (n + 1)

end

end A066052.P13042062704522535928

namespace A066052

/-- `A000142(n+1)-A000085(n+1)` -/
def P13042062704522535928.Spec : Prop :=
  ∀ n, P13042062704522535928.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P9708628993448813039

`A038507(n+1)-(A000085(n+1)+1)`
-/

namespace A066052.P9708628993448813039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 (n + 1) - (A000085 (n + 1) + 1)

end

end A066052.P9708628993448813039

namespace A066052

/-- `A038507(n+1)-(A000085(n+1)+1)` -/
def P9708628993448813039.Spec : Prop :=
  ∀ n, P9708628993448813039.a n = A066052 (n + 1)

theorem P9708628993448813039.correct : P9708628993448813039.Spec := by
  intro n
  simp only [A066052, Nat.add_sub_cancel, A066052.P9708628993448813039.a, A066052.P12493848751313193473.a, A000085, A000085.P6317799103021482191.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066052

/-! ## A066052.P17344439856937820833

`A007489(n+1)-(A007489(n)+A000085(n+1))`
-/

namespace A066052.P17344439856937820833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (n + 1) - (A007489 n + A000085 (n + 1))

end

end A066052.P17344439856937820833

namespace A066052

/-- `A007489(n+1)-(A007489(n)+A000085(n+1))` -/
def P17344439856937820833.Spec : Prop :=
  ∀ n, P17344439856937820833.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P14883165121638521813

`A006882(n+1)*A006882(n)-A000085(n+1)`
-/

namespace A066052.P14883165121638521813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A006882 n - A000085 (n + 1)

end

end A066052.P14883165121638521813

namespace A066052

/-- `A006882(n+1)*A006882(n)-A000085(n+1)` -/
def P14883165121638521813.Spec : Prop :=
  ∀ n, P14883165121638521813.a n = A066052 (n + 1)

end A066052

/-! ## A066052.P16659886561785193832

`A000166(n+1)+A002467(n+1)-A000085(n+1)`
-/

namespace A066052.P16659886561785193832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A002467 (n + 1) - A000085 (n + 1))

end

end A066052.P16659886561785193832

namespace A066052

/-- `A000166(n+1)+A002467(n+1)-A000085(n+1)` -/
def P16659886561785193832.Spec : Prop :=
  ∀ n, P16659886561785193832.a n = A066052 (n + 1)

end A066052

/-!
# A066053: Stirling transform of A002457.

The programs for A066053, there is no canonical definition to state claims against.
-/

/-! ## A066053.P13302623411827835948

`∑[A331141(∑[A092566(n)])]`
-/

namespace A066053.P13302623411827835948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331141 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066053.P13302623411827835948

/-!
# A066056: Number of 'Reverse and Add!' operations that have to be applied to the n-th term of A066055 in order to obtain a term in the trajectory of 10583.

The programs for A066056, there is no canonical definition to state claims against.
-/

/-! ## A066056.P10538929969172575922

`gcd(3, Δ[A307419(A265188(n+1))])`
-/

namespace A066056.P10538929969172575922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307419 (A265188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (f1 (n + 1) - f1 n)

end

end A066056.P10538929969172575922

/-! ## A066056.P3498315241132823469

`gcd(A068997(n+1), A125556(A288972(n)))`
-/

namespace A066056.P3498315241132823469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068997 (n + 1)) (A125556 (A288972 n).toNat)

end

end A066056.P3498315241132823469

/-! ## A066056.P15731104450435336805

`gcd(A096915(3*n+2), A365349(A113745(2*n+5)))`
-/

namespace A066056.P15731104450435336805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096915 (3 * n + 2)) (A365349 (A113745 (2 * n + 5)).toNat)

end

end A066056.P15731104450435336805

/-! ## A066056.P14235981848894073262

`gcd(A005408(A231997(n+1)), A183100(n+1))`
-/

namespace A066056.P14235981848894073262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (A231997 (n + 1)).toNat) (A183100 (n + 1))

end

end A066056.P14235981848894073262

/-! ## A066056.P10649558321966441319

`A353516(A318772(3*n+4)%A153746(n+1))`
-/

namespace A066056.P10649558321966441319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (Int.tmod (A318772 (3 * n + 4)) (A153746 (n + 1))).toNat

end

end A066056.P10649558321966441319

/-!
# A066057: 'Reverse and Add' carried out in base 2 (cf. A062128); number of steps needed to reach a palindrome, or -1 if no palindrome is ever reached.

The programs for A066057, there is no canonical definition to state claims against.
-/

/-! ## A066057.P17945910847968549004

`A096370(floor(acot(n)+n))-1`
-/

namespace A066057.P17945910847968549004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

end

end A066057.P17945910847968549004

/-! ## A066057.P16964236245739442362

`A096370(n^floor(atan(n)))-1`
-/

namespace A066057.P16964236245739442362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat - 1

end

end A066057.P16964236245739442362

/-! ## A066057.P15842332267249528834

`A096370(round(sqrt(n²+1)))-1`
-/

namespace A066057.P15842332267249528834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

end

end A066057.P15842332267249528834

/-! ## A066057.P12069279795407964451

`A023444(A096370(n^floor(atan(n)))+1)`
-/

namespace A066057.P12069279795407964451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A096370 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + 1).toNat

end

end A066057.P12069279795407964451

/-! ## A066057.P1199567925261850272

`A096370(A004273(n)-A023443(n))+1-4/2`
-/

namespace A066057.P1199567925261850272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096370 (A004273 n - A023443 n).toNat + 1 : ℚ) - (4 : ℚ) / 2

end

end A066057.P1199567925261850272

/-! ## A066057.P17962325208552317945

`A023443(A096370(A004273(n)-A023443(n)))`
-/

namespace A066057.P17962325208552317945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A096370 (A004273 n - A023443 n).toNat).toNat

end

end A066057.P17962325208552317945

/-!
# A066059: Integers such that the 'Reverse and Add!' algorithm in base 2 (cf. A062128) does not lead to a palindrome.

The programs for A066059, there is no canonical definition to state claims against.
-/

/-! ## A066059.P697646331233562582

`lt[A062128(n), 0]`
-/

namespace A066059.P697646331233562582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066059.P697646331233562582

/-! ## A066059.P1034355123769035990

`lt[A062130(n), 0]`
-/

namespace A066059.P1034355123769035990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066059.P1034355123769035990

/-! ## A066059.P5224003051029212877

`eq[1, A066057(n)+2]`
-/

namespace A066059.P5224003051029212877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066059.P5224003051029212877

/-! ## A066059.P4718034302539702293

`eq[A062128(n), A077594(n)]`
-/

namespace A066059.P4718034302539702293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P4718034302539702293

/-! ## A066059.P2104812971720770279

`eq[A062130(n), A077594(n)]`
-/

namespace A066059.P2104812971720770279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P2104812971720770279

/-! ## A066059.P14893530737558238361

`eq[A066057(n), A077594(n)]`
-/

namespace A066059.P14893530737558238361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P14893530737558238361

/-! ## A066059.P2335413087170994934

`eq[A062128(n), A260196(n)]`
-/

namespace A066059.P2335413087170994934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P2335413087170994934

/-! ## A066059.P8897956289664813977

`eq[A062130(n), A260196(n)]`
-/

namespace A066059.P8897956289664813977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P8897956289664813977

/-! ## A066059.P10851475238695166698

`eq[A066057(n), A260196(n)]`
-/

namespace A066059.P10851475238695166698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P10851475238695166698

/-! ## A066059.P1352270365924394680

`eq[A062130(n)², A141044(n)]`
-/

namespace A066059.P1352270365924394680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P1352270365924394680

/-! ## A066059.P5581455368335729496

`eq[A062128(n)+1, A048298(n)]`
-/

namespace A066059.P5581455368335729496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P5581455368335729496

/-! ## A066059.P12566396844226604154

`eq[A062130(n)+1, A048298(n)]`
-/

namespace A066059.P12566396844226604154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P12566396844226604154

/-! ## A066059.P1879993094637749365

`eq[A062128(n), A153881(n+1)]`
-/

namespace A066059.P1879993094637749365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P1879993094637749365

/-! ## A066059.P14489644695682580

`eq[A062130(n), A153881(n+1)]`
-/

namespace A066059.P14489644695682580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P14489644695682580

/-! ## A066059.P1696288011463230453

`eq[A046691(A048298(n)), A062128(n)]`
-/

namespace A066059.P1696288011463230453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A048298 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P1696288011463230453

/-! ## A066059.P16681103294844821842

`eq[A046691(A048298(n)), A062130(n)]`
-/

namespace A066059.P16681103294844821842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A048298 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P16681103294844821842

/-! ## A066059.P8968350149353025937

`eq[A062130(n), A328455(n+1)]`
-/

namespace A066059.P8968350149353025937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P8968350149353025937

/-! ## A066059.P7223426750457469297

`eq[A060376(n), A062128(n)]`
-/

namespace A066059.P7223426750457469297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P7223426750457469297

/-! ## A066059.P3034020197776368967

`eq[A060376(n), A062130(n)]`
-/

namespace A066059.P3034020197776368967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P3034020197776368967

/-! ## A066059.P11025686118997477855

`eq[A060376(n), A066057(n)]`
-/

namespace A066059.P11025686118997477855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066059.P11025686118997477855

/-!
# A066060: Number of nilpotent groups of order n.

The programs for A066060, there is no canonical definition to state claims against.
-/

/-! ## A066060.P7392699385650970561

`A088806(n+1)+A000688(n+1)`
-/

namespace A066060.P7392699385650970561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A000688 (n + 1)

end

end A066060.P7392699385650970561

/-! ## A066060.P14954025682710548122

`A088806(n+1)+∏{e}[n+1, A000041(#)]`
-/

namespace A066060.P14954025682710548122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A066060.P14954025682710548122

/-! ## A066060.P5642651929650489170

`A088806(n+1)+∏{e}[n+1, A242699(#)]`
-/

namespace A066060.P5642651929650489170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A066060.P5642651929650489170

/-! ## A066060.P4305991269915765208

`A088806(n+1)+∏{e}[n+1, A332746(#)]`
-/

namespace A066060.P4305991269915765208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A332746 (Nat.factorization (f1 n) p)

end

end A066060.P4305991269915765208

/-! ## A066060.P8939648338244006228

`A088806(n+1)+A050360(A101296(n+1))`
-/

namespace A066060.P8939648338244006228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A050360 (A101296 (n + 1)).toNat

end

end A066060.P8939648338244006228

/-! ## A066060.P7635256198907898245

`A238877(Δ[n²])+A088806(n+1)`
-/

namespace A066060.P7635256198907898245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A088806 (n + 1)

end

end A066060.P7635256198907898245

/-! ## A066060.P1138544731142493192

`A101872(A003961(n+1))+A088806(n+1)`
-/

namespace A066060.P1138544731142493192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A003961 (n + 1)).toNat + A088806 (n + 1)

end

end A066060.P1138544731142493192

/-! ## A066060.P3312704733725215489

`A101872(A064988(n+1))+A088806(n+1)`
-/

namespace A066060.P3312704733725215489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A064988 (n + 1)).toNat + A088806 (n + 1)

end

end A066060.P3312704733725215489

/-! ## A066060.P17924872314557615854

`A088806(n+1)+A035263(A008288(n))*A295879(n+1)`
-/

namespace A066060.P17924872314557615854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A035263 (A008288 n).toNat * A295879 (n + 1)

end

end A066060.P17924872314557615854

/-! ## A066060.P6862956725433660035

`A088806(n+1)+A057427(A285112(n))*A295879(n+1)`
-/

namespace A066060.P6862956725433660035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A057427 (A285112 n).toNat * A295879 (n + 1)

end

end A066060.P6862956725433660035

/-! ## A066060.P17483738735184981721

`A088806(n+1)+A057427(A007434(n+1))*A295879(n+1)`
-/

namespace A066060.P17483738735184981721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A057427 (A007434 (n + 1)).toNat * A295879 (n + 1)

end

end A066060.P17483738735184981721

/-! ## A066060.P5422506346942088900

`A088806(n+1)+A057427(A248891(n+1))*A295879(n+1)`
-/

namespace A066060.P5422506346942088900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (n + 1) + A057427 (A248891 (n + 1)).toNat * A295879 (n + 1)

end

end A066060.P5422506346942088900

/-!
# A066061: 

The programs for A066061, there is no canonical definition to state claims against.
-/

/-! ## A066061.P1810066252723087993

`(∑[2*n]+1)!`
-/

namespace A066061.P1810066252723087993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066061.P1810066252723087993

/-! ## A066061.P11471524629576167132

`∑{digits}[n+1, (n²+#)!]`
-/

namespace A066061.P11471524629576167132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n ^ 2 + x)).sum

end

end A066061.P11471524629576167132

/-! ## A066061.P15747762227482996854

`lcm((n²+n+1)!, n!)`
-/

namespace A066061.P15747762227482996854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial (n ^ 2 + (n + 1))) (Nat.factorial n)

end

end A066061.P15747762227482996854

/-!
# A066062: Number of subsets S of T={0,1,2,...,n} such that each element of T is the sum of two (not necessarily distinct) elements of S.

The programs for A066062, there is no canonical definition to state claims against.
-/

/-! ## A066062.P438264172273651661

`2*a(n-1)-A158449(n)` with `a(0)=1`
-/

namespace A066062.P438264172273651661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A158449 n

end

end A066062.P438264172273651661

/-! ## A066062.P17047862054177403057

`A008929(n+2)`
-/

namespace A066062.P17047862054177403057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008929 (n + 2)

end

end A066062.P17047862054177403057

/-! ## A066062.P11881093141825521798

`A002024(A148417(n))`
-/

namespace A066062.P11881093141825521798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148417 n).toNat

end

end A066062.P11881093141825521798

/-! ## A066062.P9461847548228292496

`A293606(n)+A171966(A055151(n))`
-/

namespace A066062.P9461847548228292496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 n + A171966 (A055151 n).toNat

end

end A066062.P9461847548228292496

/-! ## A066062.P8707304252878443366

`A329702(n)+A014082(A363881(n))`
-/

namespace A066062.P8707304252878443366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329702 n + A014082 (A363881 n).toNat

end

end A066062.P8707304252878443366

/-!
# A066063: Size of the smallest subset S of T={0,1,2,...,n} such that each element of T is the sum of two elements of S.

The programs for A066063, there is no canonical definition to state claims against.
-/

/-! ## A066063.P10950208069987646670

`A135662(A168213(n+1))`
-/

namespace A066063.P10950208069987646670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A168213 (n + 1)).toNat

end

end A066063.P10950208069987646670

/-! ## A066063.P10237237476961711618

`A135662(A168418(n+2))`
-/

namespace A066063.P10237237476961711618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A168418 (n + 2)).toNat

end

end A066063.P10237237476961711618

/-! ## A066063.P13316219988317913421

`A135662(A168414(n+2)-1)`
-/

namespace A066063.P13316219988317913421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A168414 (n + 2) - 1).toNat

end

end A066063.P13316219988317913421

/-! ## A066063.P9419640786822958128

`A070939(A003586(n+1)-(-1)^n)`
-/

namespace A066063.P9419640786822958128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A003586 (n + 1) - (-1) ^ n).toNat

end

end A066063.P9419640786822958128

/-! ## A066063.P9916691829100051658

`A029837(A003586(n+1)+(n%2)^n)`
-/

namespace A066063.P9916691829100051658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A003586 (n + 1) + (((n % 2) ^ n : ℕ) : ℤ)).toNat

end

end A066063.P9916691829100051658

/-! ## A066063.P15364484330628258237

`A070939(A033999(n+1)+A003586(n+1))`
-/

namespace A066063.P15364484330628258237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A033999 (n + 1) + A003586 (n + 1)).toNat

end

end A066063.P15364484330628258237

/-! ## A066063.P4226025270910525250

`A070939(A087960(2*n+1)+A003586(n+1))`
-/

namespace A066063.P4226025270910525250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A087960 (2 * n + 1) + A003586 (n + 1)).toNat

end

end A066063.P4226025270910525250

/-!
# A066064: a(n) = p.q in decimal notation where p = prime(n) and q is the smallest prime (A066065(n)) such that the concatenation p.q is a prime.

The programs for A066064, there is no canonical definition to state claims against.
-/

/-! ## A066064.P11398408270122831449

`A089777(p?[comp[n²]])`
-/

namespace A066064.P11398408270122831449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A066064.P11398408270122831449

/-! ## A066064.P12252361060457979659

`A089777(A000040(n+1))`
-/

namespace A066064.P12252361060457979659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (A000040 (n + 1)).toNat

end

end A066064.P12252361060457979659

/-! ## A066064.P15402939065929071369

`A089777(A008578(n+2))`
-/

namespace A066064.P15402939065929071369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (A008578 (n + 2)).toNat

end

end A066064.P15402939065929071369

/-! ## A066064.P2183131532143531816

`A089777(A182986(n+2))`
-/

namespace A066064.P2183131532143531816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (A182986 (n + 2)).toNat

end

end A066064.P2183131532143531816

/-! ## A066064.P5239994896496573455

`A089777(record[A006530(n+2)])`
-/

namespace A066064.P5239994896496573455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066064.P5239994896496573455

/-! ## A066064.P9171096789006469939

`A089777(record[A014963(n+2)])`
-/

namespace A066064.P9171096789006469939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066064.P9171096789006469939

/-! ## A066064.P12062103819990308769

`A089777(record[A020639(n+2)])`
-/

namespace A066064.P12062103819990308769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066064.P12062103819990308769

/-! ## A066064.P17268849426079976369

`A089777(record[A000010(n+1)+1])`
-/

namespace A066064.P17268849426079976369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066064.P17268849426079976369

/-! ## A066064.P6122883930512700491

`A089777(record[p?[A089792(n)]])`
-/

namespace A066064.P6122883930512700491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089777 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066064.P6122883930512700491

/-!
# A066065: a(n) = smallest prime q such that in decimal notation the concatenation prime(n)q yields a prime ( = A066064(n)).

The programs for A066065, there is no canonical definition to state claims against.
-/

/-! ## A066065.P10155805073774642531

`A066064(n+1)%A001750(n+1)`
-/

namespace A066065.P10155805073774642531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066064 (n + 1)) (A001750 (n + 1))

end

end A066065.P10155805073774642531

/-! ## A066065.P15696773743422809029

`A096915(A000040(n+1))`
-/

namespace A066065.P15696773743422809029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A000040 (n + 1)).toNat

end

end A066065.P15696773743422809029

/-! ## A066065.P8455497439809370959

`A096915(A006005(n+1))`
-/

namespace A066065.P8455497439809370959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A006005 (n + 1)).toNat

end

end A066065.P8455497439809370959

/-! ## A066065.P1534385969540872269

`A096915(A063884(n+1))`
-/

namespace A066065.P1534385969540872269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A063884 (n + 1)).toNat

end

end A066065.P1534385969540872269

/-! ## A066065.P12433379139057217718

`A096915(A063904(n+1))`
-/

namespace A066065.P12433379139057217718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A063904 (n + 1)).toNat

end

end A066065.P12433379139057217718

/-! ## A066065.P10868505723103406733

`A096915(A161847(n+1))`
-/

namespace A066065.P10868505723103406733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A161847 (n + 1)).toNat

end

end A066065.P10868505723103406733

/-! ## A066065.P14082483561779092214

`A096915(A008578(n+2))`
-/

namespace A066065.P14082483561779092214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A008578 (n + 2)).toNat

end

end A066065.P14082483561779092214

/-! ## A066065.P12641665427015035799

`A096915(A075643(n+2))`
-/

namespace A066065.P12641665427015035799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A075643 (n + 2)).toNat

end

end A066065.P12641665427015035799

/-! ## A066065.P18319860884755720227

`A096915(A161428(n+2))`
-/

namespace A066065.P18319860884755720227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A161428 (n + 2)).toNat

end

end A066065.P18319860884755720227

/-! ## A066065.P3966201531751752663

`A096915(A182986(n+2))`
-/

namespace A066065.P3966201531751752663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A182986 (n + 2)).toNat

end

end A066065.P3966201531751752663

/-! ## A066065.P17293547923804469631

`A096915(record[A006530(n+2)])`
-/

namespace A066065.P17293547923804469631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066065.P17293547923804469631

/-! ## A066065.P8733585708709222165

`A096915(record[A014963(n+2)])`
-/

namespace A066065.P8733585708709222165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066065.P8733585708709222165

/-! ## A066065.P13114454078791145385

`A096915(record[A020639(n+2)])`
-/

namespace A066065.P13114454078791145385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066065.P13114454078791145385

/-! ## A066065.P6615094433744704989

`A096915(A006093(n+1)+1)`
-/

namespace A066065.P6615094433744704989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A006093 (n + 1) + 1).toNat

end

end A066065.P6615094433744704989

/-!
# A066066: a(n) = prime(2*n) - 2*prime(n).

The programs for A066066, the canonical program `A066066.P16664765326660587690` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066066 has offset 1).

The definition of A066066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))-2*A000040(n+1)` (program `A066066.P16664765326660587690`, by `A066066.P16664765326660587690.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066066.P16664765326660587690

`A000040(2*(n+1))-2*A000040(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066066

/-- `A000040(2*(n+1))-2*A000040(n+1)` -/
def P16664765326660587690.Spec : Prop :=
  ∀ n, P16664765326660587690.a n = A066066 (n + 1)

theorem P16664765326660587690.correct : P16664765326660587690.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel]

end A066066

/-! ## A066066.P17733114946358593164

`A074766(n+1)+1+n`
-/

namespace A066066.P17733114946358593164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074766 (n + 1) + 1 + (n : ℤ)

end

end A066066.P17733114946358593164

namespace A066066

/-- `A074766(n+1)+1+n` -/
def P17733114946358593164.Spec : Prop :=
  ∀ n, P17733114946358593164.a n = A066066 (n + 1)

theorem P17733114946358593164.correct : P17733114946358593164.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P17733114946358593164.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A074766, A074766.P7109472300547683338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P2143926684625596290

`A022457(n+1)-A000038(n)`
-/

namespace A066066.P2143926684625596290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (n + 1) - A000038 n

end

end A066066.P2143926684625596290

namespace A066066

/-- `A022457(n+1)-A000038(n)` -/
def P2143926684625596290.Spec : Prop :=
  ∀ n, P2143926684625596290.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P12766684325841195387

`A022457(n+1)*A158388(n)`
-/

namespace A066066.P12766684325841195387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (n + 1) * A158388 n

end

end A066066.P12766684325841195387

namespace A066066

/-- `A022457(n+1)*A158388(n)` -/
def P12766684325841195387.Spec : Prop :=
  ∀ n, P12766684325841195387.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P9692326442623211529

`A072473(n+1)-Δ[A007504(n)]`
-/

namespace A066066.P9692326442623211529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - (f1 (n + 1) - f1 n)

end

end A066066.P9692326442623211529

namespace A066066

/-- `A072473(n+1)-Δ[A007504(n)]` -/
def P9692326442623211529.Spec : Prop :=
  ∀ n, P9692326442623211529.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P16932551635124372153

`A072473(n+1)-A000040(n+1)`
-/

namespace A066066.P16932551635124372153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A000040 (n + 1)

end

end A066066.P16932551635124372153

namespace A066066

/-- `A072473(n+1)-A000040(n+1)` -/
def P16932551635124372153.Spec : Prop :=
  ∀ n, P16932551635124372153.a n = A066066 (n + 1)

theorem P16932551635124372153.correct : P16932551635124372153.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P16932551635124372153.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P11585399840041140735

`A031215(n+1)-A100484(n+1)`
-/

namespace A066066.P11585399840041140735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A100484 (n + 1)

end

end A066066.P11585399840041140735

namespace A066066

/-- `A031215(n+1)-A100484(n+1)` -/
def P11585399840041140735.Spec : Prop :=
  ∀ n, P11585399840041140735.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P9562633167898005803

`A022457(n+1)-2*A000007(n)`
-/

namespace A066066.P9562633167898005803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (n + 1) - 2 * A000007 n

end

end A066066.P9562633167898005803

namespace A066066

/-- `A022457(n+1)-2*A000007(n)` -/
def P9562633167898005803.Spec : Prop :=
  ∀ n, P9562633167898005803.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P7211299231860878344

`A072473(n+1)-(A006093(n+1)+1)`
-/

namespace A066066.P7211299231860878344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - (A006093 (n + 1) + 1)

end

end A066066.P7211299231860878344

namespace A066066

/-- `A072473(n+1)-(A006093(n+1)+1)` -/
def P7211299231860878344.Spec : Prop :=
  ∀ n, P7211299231860878344.a n = A066066 (n + 1)

theorem P7211299231860878344.correct : P7211299231860878344.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P7211299231860878344.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P773965898814112404

`A072473(n+1)+1-A008864(n+1)`
-/

namespace A066066.P773965898814112404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (1 - A008864 (n + 1))

end

end A066066.P773965898814112404

namespace A066066

/-- `A072473(n+1)+1-A008864(n+1)` -/
def P773965898814112404.Spec : Prop :=
  ∀ n, P773965898814112404.a n = A066066 (n + 1)

theorem P773965898814112404.correct : P773965898814112404.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P773965898814112404.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P17533230572501600901

`A031215(n+1)-2*A000040(n+1)`
-/

namespace A066066.P17533230572501600901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - 2 * A000040 (n + 1)

end

end A066066.P17533230572501600901

namespace A066066

/-- `A031215(n+1)-2*A000040(n+1)` -/
def P17533230572501600901.Spec : Prop :=
  ∀ n, P17533230572501600901.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P15356787643531504470

`2*A072473(n+1)-A031215(n+1)`
-/

namespace A066066.P15356787643531504470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072473 (n + 1) - A031215 (n + 1)

end

end A066066.P15356787643531504470

namespace A066066

/-- `2*A072473(n+1)-A031215(n+1)` -/
def P15356787643531504470.Spec : Prop :=
  ∀ n, P15356787643531504470.a n = A066066 (n + 1)

theorem P15356787643531504470.correct : P15356787643531504470.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P15356787643531504470.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P11627196482086082936

`A072473(n+1)-A100484(n+1)/2`
-/

namespace A066066.P11627196482086082936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072473 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A066066.P11627196482086082936

namespace A066066

/-- `A072473(n+1)-A100484(n+1)/2` -/
def P11627196482086082936.Spec : Prop :=
  ∀ n, P11627196482086082936.a n = (A066066 (n + 1) : ℚ)

theorem P11627196482086082936.correct : P11627196482086082936.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P11627196482086082936.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072473, A072473.P11303799734713741739.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P18266022805393319945

`A072473(n+1)+A275988(n+1)-A031336(n+1)`
-/

namespace A066066.P18266022805393319945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + (A275988 (n + 1) - A031336 (n + 1))

end

end A066066.P18266022805393319945

namespace A066066

/-- `A072473(n+1)+A275988(n+1)-A031336(n+1)` -/
def P18266022805393319945.Spec : Prop :=
  ∀ n, P18266022805393319945.a n = A066066 (n + 1)

theorem P18266022805393319945.correct : P18266022805393319945.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P18266022805393319945.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031336, A031336.P4665773882426171462.a, A072473, A072473.P11303799734713741739.a, A275988, A275988.P10341730878342561824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P14748349562243272935

`A031215(n+1)+A230329(n+1)-A217622(n+1)`
-/

namespace A066066.P14748349562243272935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (A230329 (n + 1) - A217622 (n + 1))

end

end A066066.P14748349562243272935

namespace A066066

/-- `A031215(n+1)+A230329(n+1)-A217622(n+1)` -/
def P14748349562243272935.Spec : Prop :=
  ∀ n, P14748349562243272935.a n = A066066 (n + 1)

theorem P14748349562243272935.correct : P14748349562243272935.Spec := by
  intro n
  simp only [A066066, Nat.add_sub_cancel, A066066.P14748349562243272935.a, A066066.P16664765326660587690.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A217622, A217622.P13107653143399971552.a, A230329, A230329.P11921175631725488359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066066

/-! ## A066066.P3285434578094584365

`A031215(n+1)-A001747(n+2)`
-/

namespace A066066.P3285434578094584365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A001747 (n + 2)

end

end A066066.P3285434578094584365

namespace A066066

/-- `A031215(n+1)-A001747(n+2)` -/
def P3285434578094584365.Spec : Prop :=
  ∀ n, P3285434578094584365.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P3319960844538405625

`A031215(n+1)-A008578(n+2)-A008578(n+2)`
-/

namespace A066066.P3319960844538405625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A008578 (n + 2) - A008578 (n + 2)

end

end A066066.P3319960844538405625

namespace A066066

/-- `A031215(n+1)-A008578(n+2)-A008578(n+2)` -/
def P3319960844538405625.Spec : Prop :=
  ∀ n, P3319960844538405625.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P9386018804703092272

`A072473(n+1)-record[A020639(n+2)]`
-/

namespace A066066.P9386018804703092272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066066.P9386018804703092272

namespace A066066

/-- `A072473(n+1)-record[A020639(n+2)]` -/
def P9386018804703092272.Spec : Prop :=
  ∀ n, P9386018804703092272.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P17867419824235663516

`A072473(n+1)-record[A000010(n+1)+1]`
-/

namespace A066066.P17867419824235663516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066066.P17867419824235663516

namespace A066066

/-- `A072473(n+1)-record[A000010(n+1)+1]` -/
def P17867419824235663516.Spec : Prop :=
  ∀ n, P17867419824235663516.a n = A066066 (n + 1)

end A066066

/-! ## A066066.P7597548443869628872

`A000040(2*(n+1))-A100484(n+1)`
-/

namespace A066066.P7597548443869628872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A100484 (n + 1)

end

end A066066.P7597548443869628872

namespace A066066

/-- `A000040(2*(n+1))-A100484(n+1)` -/
def P7597548443869628872.Spec : Prop :=
  ∀ n, P7597548443869628872.a n = A066066 (n + 1)

end A066066

/-!
# A066067: Number of binary strings u of any length with property that length(u) + number of 0's in u <= n (only one of a string and its reversal are counted).

The programs for A066067, the canonical program `A066067.P14584696473161266079` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066067 has offset 1).

The definition of A066067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066067.P14584696473161266079

`∑[A068928(n+1)-1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066067

/-- `∑[A068928(n+1)-1]` -/
def P14584696473161266079.Spec : Prop :=
  ∀ n, P14584696473161266079.a n = A066067 (n + 1)

theorem P14584696473161266079.correct : P14584696473161266079.Spec := by
  intro n
  simp only [A066067, Nat.add_sub_cancel]

end A066067

/-! ## A066067.P16995583862900270246

`∑[A001224(n+1)]-n`
-/

namespace A066067.P16995583862900270246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A066067.P16995583862900270246

namespace A066067

/-- `∑[A001224(n+1)]-n` -/
def P16995583862900270246.Spec : Prop :=
  ∀ n, P16995583862900270246.a n = A066067 (n + 1)

end A066067

/-! ## A066067.P1876942200233542668

`∑[A102526(n+1)]-n`
-/

namespace A066067.P1876942200233542668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A066067.P1876942200233542668

namespace A066067

/-- `∑[A102526(n+1)]-n` -/
def P1876942200233542668.Spec : Prop :=
  ∀ n, P1876942200233542668.a n = A066067 (n + 1)

end A066067

/-! ## A066067.P9022893135723273967

`A001489(n)+∑[A001224(n+1)]`
-/

namespace A066067.P9022893135723273967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066067.P9022893135723273967

namespace A066067

/-- `A001489(n)+∑[A001224(n+1)]` -/
def P9022893135723273967.Spec : Prop :=
  ∀ n, P9022893135723273967.a n = A066067 (n + 1)

end A066067

/-! ## A066067.P3611591144220575049

`∑[A057428(n)+A001224(n+1)]`
-/

namespace A066067.P3611591144220575049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066067.P3611591144220575049

namespace A066067

/-- `∑[A057428(n)+A001224(n+1)]` -/
def P3611591144220575049.Spec : Prop :=
  ∀ n, P3611591144220575049.a n = A066067 (n + 1)

end A066067

/-!
# A066068: a(n) = n^n + n.

The programs for A066068, the canonical program `A066068.P5452189247178737058` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066068 has offset 0).

The definition of A066068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n` (program `A066068.P5452189247178737058`, by `A066068.P5452189247178737058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066068.P5452189247178737058

`n^n+n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066068

/-- `n^n+n` -/
def P5452189247178737058.Spec : Prop :=
  ∀ n, (P5452189247178737058.a n : ℤ) = A066068 n

theorem P5452189247178737058.correct : P5452189247178737058.Spec := by
  intro n
  simp only [A066068]

end A066068

/-!
# A066069: a(n) is the smallest positive integer m such that n divides (n + m)^m.

The programs for A066069, there is no canonical definition to state claims against.
-/

/-! ## A066069.P12693640954720858998

`A019530(n+1)+C(2, n+2)`
-/

namespace A066069.P12693640954720858998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A066069.P12693640954720858998

/-! ## A066069.P740728871119829273

`A019530(n-(abs(a(n-1))-a(n-1))+1)` with `a(0)=1`
-/

namespace A066069.P740728871119829273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019530 ((n : ℤ) - (|a (n - 1)| - a (n - 1)) + 1).toNat

end

end A066069.P740728871119829273

/-! ## A066069.P7613089800341669922

`A028310(A019530(n+1))`
-/

namespace A066069.P7613089800341669922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A019530 (n + 1)).toNat

end

end A066069.P7613089800341669922

/-! ## A066069.P240522499029624580

`A019530(n+1)+A000007(n)`
-/

namespace A066069.P240522499029624580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (n + 1) + A000007 n

end

end A066069.P240522499029624580

/-! ## A066069.P3053871937998955858

`A327170(2*n+1)+A019530(n+1)`
-/

namespace A066069.P3053871937998955858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327170 (2 * n + 1) + A019530 (n + 1)

end

end A066069.P3053871937998955858

/-! ## A066069.P10798826314073019008

`A019530(n+1)+A010051(A073353(n+1))`
-/

namespace A066069.P10798826314073019008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (n + 1) + A010051 (A073353 (n + 1)).toNat

end

end A066069.P10798826314073019008

/-! ## A066069.P6241807108382023471

`A364988(A007947(n+1))+A019530(n+1)`
-/

namespace A066069.P6241807108382023471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (A007947 (n + 1)).toNat + A019530 (n + 1)

end

end A066069.P6241807108382023471

/-! ## A066069.P4249144207925683809

`A019530(n+1)^A051903(A076618(n+1)-1)`
-/

namespace A066069.P4249144207925683809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019530 (n + 1) : ℚ) ^ (A051903 (A076618 (n + 1) - 1).toNat : ℤ)

end

end A066069.P4249144207925683809

/-! ## A066069.P6220054724629601224

`gcd(A002444(n), A019530(n+1))`
-/

namespace A066069.P6220054724629601224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002444 n) (A019530 (n + 1))

end

end A066069.P6220054724629601224

/-! ## A066069.P2849037662581019505

`A276035(A390755(n+1))`
-/

namespace A066069.P2849037662581019505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276035 (A390755 (n + 1)).toNat

end

end A066069.P2849037662581019505

/-! ## A066069.P14256783656738944319

`A364988(n²+1)+A019530(n+1)`
-/

namespace A066069.P14256783656738944319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364988 (n ^ 2 + 1) + A019530 (n + 1)

end

end A066069.P14256783656738944319

/-!
# A066070: a(1) = 1; for m > 0, a(2m) = 2(2m+1), a(2m+1) = 2m+1.

The programs for A066070, the canonical program `A066070.P577212344033438367` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066070 has offset 1).

The definition of A066070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066070.P577212344033438367

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=3, a(3)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066070

/-- `2*a(n-2)-a(n-4)` -/
def P577212344033438367.Spec : Prop :=
  ∀ n, P577212344033438367.a n = A066070 (n + 1)

theorem P577212344033438367.correct : P577212344033438367.Spec := by
  intro n
  simp only [A066070, Nat.add_sub_cancel]

end A066070

/-! ## A066070.P9851532279913635488

`(n+4)^(n%2)+n`
-/

namespace A066070.P9851532279913635488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ (n % 2) + n

end

end A066070.P9851532279913635488

namespace A066070

/-- `(n+4)^(n%2)+n` -/
def P9851532279913635488.Spec : Prop :=
  ∀ n, (P9851532279913635488.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P11304104804995225762

`xor(1, a(n-2))+3` with `a(0)=1, a(1)=6`
-/

namespace A066070.P11304104804995225762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.xor 1 (a (n - 2)) + 3

end

end A066070.P11304104804995225762

namespace A066070

/-- `xor(1, a(n-2))+3` -/
def P11304104804995225762.Spec : Prop :=
  ∀ n, (P11304104804995225762.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P9882603025767555322

`lcm(2, n)+gcd(2, n+1)²`
-/

namespace A066070.P9882603025767555322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + Nat.gcd 2 (n + 1) ^ 2

end

end A066070.P9882603025767555322

namespace A066070

/-- `lcm(2, n)+gcd(2, n+1)²` -/
def P9882603025767555322.Spec : Prop :=
  ∀ n, (P9882603025767555322.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P10941152238143987319

`(and(1, n)+1)*(n+3)-2`
-/

namespace A066070.P10941152238143987319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + 1) * (n + 3) : ℤ) - 2

end

end A066070.P10941152238143987319

namespace A066070

/-- `(and(1, n)+1)*(n+3)-2` -/
def P10941152238143987319.Spec : Prop :=
  ∀ n, P10941152238143987319.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P17624322326870518888

`(and(1, n)+1)*or(1, n+1)`
-/

namespace A066070.P17624322326870518888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * Nat.lor 1 (n + 1)

end

end A066070.P17624322326870518888

namespace A066070

/-- `(and(1, n)+1)*or(1, n+1)` -/
def P17624322326870518888.Spec : Prop :=
  ∀ n, (P17624322326870518888.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P1133963615345790844

`(n+3)*and(1, n)+1+n`
-/

namespace A066070.P1133963615345790844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.land 1 n + 1 + n

end

end A066070.P1133963615345790844

namespace A066070

/-- `(n+3)*and(1, n)+1+n` -/
def P1133963615345790844.Spec : Prop :=
  ∀ n, (P1133963615345790844.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P6469232404383868251

`gcd(n+4, (n+1)%2)+n`
-/

namespace A066070.P6469232404383868251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 4) ((n + 1) % 2) + n

end

end A066070.P6469232404383868251

namespace A066070

/-- `gcd(n+4, (n+1)%2)+n` -/
def P6469232404383868251.Spec : Prop :=
  ∀ n, (P6469232404383868251.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P8941311448699284001

`lcm(n+3, and(1, n))+1+n`
-/

namespace A066070.P8941311448699284001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 3) (Nat.land 1 n) + 1 + n

end

end A066070.P8941311448699284001

namespace A066070

/-- `lcm(n+3, and(1, n))+1+n` -/
def P8941311448699284001.Spec : Prop :=
  ∀ n, (P8941311448699284001.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P17137355166336792595

`C(or(1, n+3), n+3)+n`
-/

namespace A066070.P17137355166336792595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 (n + 3)) (n + 3) + n

end

end A066070.P17137355166336792595

namespace A066070

/-- `C(or(1, n+3), n+3)+n` -/
def P17137355166336792595.Spec : Prop :=
  ∀ n, (P17137355166336792595.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P10832254781792914946

`∑{d}[4-a(n-1), #+n]` with `a(0)=1`
-/

namespace A066070.P10832254781792914946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + n)

end

end A066070.P10832254781792914946

namespace A066070

/-- `∑{d}[4-a(n-1), #+n]` -/
def P10832254781792914946.Spec : Prop :=
  ∀ n, (P10832254781792914946.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P16789242168498980293

`gcd(2*(n+3), (n+3)²)-2`
-/

namespace A066070.P16789242168498980293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (n + 3)) ((n + 3) ^ 2) : ℤ) - 2

end

end A066070.P16789242168498980293

namespace A066070

/-- `gcd(2*(n+3), (n+3)²)-2` -/
def P16789242168498980293.Spec : Prop :=
  ∀ n, P16789242168498980293.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P4758315004455170149

`n+2-(-(n+2))^and(1, n)`
-/

namespace A066070.P4758315004455170149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (-(n + 2 : ℤ)) ^ Nat.land 1 n

end

end A066070.P4758315004455170149

namespace A066070

/-- `n+2-(-(n+2))^and(1, n)` -/
def P4758315004455170149.Spec : Prop :=
  ∀ n, P4758315004455170149.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P766537095440275668

`and(n+3, -and(1, n))+n+1`
-/

namespace A066070.P766537095440275668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-(Nat.land 1 n : ℤ)) + (n + 1 : ℤ)

end

end A066070.P766537095440275668

namespace A066070

/-- `and(n+3, -and(1, n))+n+1` -/
def P766537095440275668.Spec : Prop :=
  ∀ n, P766537095440275668.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P9274553240659810661

`or(1, 3*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A066070.P9274553240659810661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.lor 1 (3 * (n + 1)) : ℤ) - a (n - 1)

end

end A066070.P9274553240659810661

namespace A066070

/-- `or(1, 3*(n+1))-a(n-1)` -/
def P9274553240659810661.Spec : Prop :=
  ∀ n, P9274553240659810661.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P13400575528989013067

`2*((n+3)/gcd(n, n+2)-1)`
-/

namespace A066070.P13400575528989013067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℚ) / (Nat.gcd n (n + 2) : ℚ) - 1)

end

end A066070.P13400575528989013067

namespace A066070

/-- `2*((n+3)/gcd(n, n+2)-1)` -/
def P13400575528989013067.Spec : Prop :=
  ∀ n, P13400575528989013067.a n = (A066070 (n + 1) : ℚ)

end A066070

/-! ## A066070.P16840295753573728219

`(n+3)*gcd(1-n, 2*n)-2`
-/

namespace A066070.P16840295753573728219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Int.gcd (1 - (n : ℤ)) (2 * n : ℤ) : ℤ) - 2

end

end A066070.P16840295753573728219

namespace A066070

/-- `(n+3)*gcd(1-n, 2*n)-2` -/
def P16840295753573728219.Spec : Prop :=
  ∀ n, P16840295753573728219.a n = A066070 (n + 1)

end A066070

/-! ## A066070.P9669199548246212384

`(n+3)%or(1, n+3)+n+1`
-/

namespace A066070.P9669199548246212384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % Nat.lor 1 (n + 3) + (n + 1)

end

end A066070.P9669199548246212384

namespace A066070

/-- `(n+3)%or(1, n+3)+n+1` -/
def P9669199548246212384.Spec : Prop :=
  ∀ n, (P9669199548246212384.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P12644670226839213705

`C(and(1, n)+n+3, n+3)+n`
-/

namespace A066070.P12644670226839213705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 n + (n + 3)) (n + 3) + n

end

end A066070.P12644670226839213705

namespace A066070

/-- `C(and(1, n)+n+3, n+3)+n` -/
def P12644670226839213705.Spec : Prop :=
  ∀ n, (P12644670226839213705.a n : ℤ) = A066070 (n + 1)

end A066070

/-! ## A066070.P9180862963258831934

`(n+3)*Δ[floor(n/2)]+n+1`
-/

namespace A066070.P9180862963258831934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A066070.P9180862963258831934

namespace A066070

/-- `(n+3)*Δ[floor(n/2)]+n+1` -/
def P9180862963258831934.Spec : Prop :=
  ∀ n, P9180862963258831934.a n = A066070 (n + 1)

end A066070

/-!
# A066071: Nonprime numbers k such that phi(k) + 1 is prime.

The programs for A066071, the canonical program `A066071.P14748689608797232704` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066071 has offset 1).

The definition of A066071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066071.P8947505045548000261

`filter[A039698(n+1), A005171(#)]`
-/

namespace A066071.P8947505045548000261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066071.P8947505045548000261

namespace A066071

/-- `filter[A039698(n+1), A005171(#)]` -/
def P8947505045548000261.Spec : Prop :=
  ∀ n, P8947505045548000261.a n = A066071 (n + 1)

end A066071

/-! ## A066071.P14748689608797232704

`lt[A010051(n+1), A296079(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066071

/-- `lt[A010051(n+1), A296079(n+1)]+1` -/
def P14748689608797232704.Spec : Prop :=
  ∀ n, (P14748689608797232704.a n : ℤ) = A066071 (n + 1)

theorem P14748689608797232704.correct : P14748689608797232704.Spec := by
  intro n
  simp only [A066071, Nat.add_sub_cancel]

end A066071

/-! ## A066071.P3122779249147454358

`eq[A001222(A000010(n+1)+1), A005171(n+1)]+1`
-/

namespace A066071.P3122779249147454358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066071.P3122779249147454358

namespace A066071

/-- `eq[A001222(A000010(n+1)+1), A005171(n+1)]+1` -/
def P3122779249147454358.Spec : Prop :=
  ∀ n, (P3122779249147454358.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P5653066501353665199

`filter[A018252(n+1), A296079(#)]`
-/

namespace A066071.P5653066501353665199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A066071.P5653066501353665199

namespace A066071

/-- `filter[A018252(n+1), A296079(#)]` -/
def P5653066501353665199.Spec : Prop :=
  ∀ n, P5653066501353665199.a n = A066071 (n + 1)

end A066071

/-! ## A066071.P914903321700427789

`filter[A141468(n+2), A296079(#)]`
-/

namespace A066071.P914903321700427789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A066071.P914903321700427789

namespace A066071

/-- `filter[A141468(n+2), A296079(#)]` -/
def P914903321700427789.Spec : Prop :=
  ∀ n, P914903321700427789.a n = A066071 (n + 1)

end A066071

/-! ## A066071.P15509074950422212675

`∩[A018252(n+1), A039698(n+1)]`
-/

namespace A066071.P15509074950422212675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066071.P15509074950422212675

namespace A066071

/-- `∩[A018252(n+1), A039698(n+1)]` -/
def P15509074950422212675.Spec : Prop :=
  ∀ n, (P15509074950422212675.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P11254531401647716908

`∩[A039698(n+1), A141468(n+1)]`
-/

namespace A066071.P11254531401647716908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066071.P11254531401647716908

namespace A066071

/-- `∩[A039698(n+1), A141468(n+1)]` -/
def P11254531401647716908.Spec : Prop :=
  ∀ n, (P11254531401647716908.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P6605643354749414312

`filter[A222307(2*n+1), A296079(#)]`
-/

namespace A066071.P6605643354749414312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A066071.P6605643354749414312

namespace A066071

/-- `filter[A222307(2*n+1), A296079(#)]` -/
def P6605643354749414312.Spec : Prop :=
  ∀ n, P6605643354749414312.a n = A066071 (n + 1)

end A066071

/-! ## A066071.P16846767194407751825

`eq[A001055(A000010(n+1)+1), A005171(n+1)]+1`
-/

namespace A066071.P16846767194407751825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000010 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066071.P16846767194407751825

namespace A066071

/-- `eq[A001055(A000010(n+1)+1), A005171(n+1)]+1` -/
def P16846767194407751825.Spec : Prop :=
  ∀ n, (P16846767194407751825.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P15516669230901417217

`eq[A010051(n+1), A087624(A000010(n+1)+1)]+1`
-/

namespace A066071.P15516669230901417217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066071.P15516669230901417217

namespace A066071

/-- `eq[A010051(n+1), A087624(A000010(n+1)+1)]+1` -/
def P15516669230901417217.Spec : Prop :=
  ∀ n, (P15516669230901417217.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P11307361627562495070

`eq[1, A039651(n+1)]+1`
-/

namespace A066071.P11307361627562495070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066071.P11307361627562495070

namespace A066071

/-- `eq[1, A039651(n+1)]+1` -/
def P11307361627562495070.Spec : Prop :=
  ∀ n, (P11307361627562495070.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P17267550408598266781

`eq[2, A000005(A074987(n+1))]+1`
-/

namespace A066071.P17267550408598266781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074987 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066071.P17267550408598266781

namespace A066071

/-- `eq[2, A000005(A074987(n+1))]+1` -/
def P17267550408598266781.Spec : Prop :=
  ∀ n, (P17267550408598266781.a n : ℤ) = A066071 (n + 1)

end A066071

/-! ## A066071.P5396428222537801137

`filter[A073846(2*n+1), A296079(#)]`
-/

namespace A066071.P5396428222537801137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A066071.P5396428222537801137

namespace A066071

/-- `filter[A073846(2*n+1), A296079(#)]` -/
def P5396428222537801137.Spec : Prop :=
  ∀ n, P5396428222537801137.a n = A066071 (n + 1)

end A066071

/-!
# A066072: Prime numbers arising in A066071.

The programs for A066072, the canonical program `A066072.P4556049328202150443` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066072 has offset 1).

The definition of A066072 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A066071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066072.P4556049328202150443

`1+A000010(A066071(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A066072

/-- `1+A000010(A066071(n+1))` -/
def P4556049328202150443.Spec : Prop :=
  ∀ n, P4556049328202150443.a n = A066072 (n + 1)

theorem P4556049328202150443.correct : P4556049328202150443.Spec := by
  intro n
  simp only [A066072, Nat.add_sub_cancel]

end A066072

/-! ## A066072.P14731661300919294653

`p?[A000010(A018252(n+1))+1]`
-/

namespace A066072.P14731661300919294653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A018252 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P14731661300919294653

namespace A066072

/-- `p?[A000010(A018252(n+1))+1]` -/
def P14731661300919294653.Spec : Prop :=
  ∀ n, P14731661300919294653.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P3715891319252170260

`p?[A000010(A141468(n+2))+1]`
-/

namespace A066072.P3715891319252170260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141468 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P3715891319252170260

namespace A066072

/-- `p?[A000010(A141468(n+2))+1]` -/
def P3715891319252170260.Spec : Prop :=
  ∀ n, P3715891319252170260.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P9064893201888552568

`A000010(∩[A018252(n+1), A039698(n+1)])+1`
-/

namespace A066072.P9064893201888552568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A066072.P9064893201888552568

namespace A066072

/-- `A000010(∩[A018252(n+1), A039698(n+1)])+1` -/
def P9064893201888552568.Spec : Prop :=
  ∀ n, P9064893201888552568.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P7833944955289177082

`p?[A166362(n+1)+1]`
-/

namespace A066072.P7833944955289177082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166362 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P7833944955289177082

namespace A066072

/-- `p?[A166362(n+1)+1]` -/
def P7833944955289177082.Spec : Prop :=
  ∀ n, P7833944955289177082.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P12038087171331737686

`p?[A074987(n+1)]`
-/

namespace A066072.P12038087171331737686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P12038087171331737686

namespace A066072

/-- `p?[A074987(n+1)]` -/
def P12038087171331737686.Spec : Prop :=
  ∀ n, P12038087171331737686.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P5046325163571492154

`A039649(A066071(n+1))`
-/

namespace A066072.P5046325163571492154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A066071 (n + 1)).toNat

end

end A066072.P5046325163571492154

namespace A066072

/-- `A039649(A066071(n+1))` -/
def P5046325163571492154.Spec : Prop :=
  ∀ n, P5046325163571492154.a n = A066072 (n + 1)

theorem P5046325163571492154.correct : P5046325163571492154.Spec := by
  intro n
  simp only [A066072, Nat.add_sub_cancel, A066072.P5046325163571492154.a, A066072.P4556049328202150443.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A066071, A066071.P14748689608797232704.f1, A066071.P14748689608797232704.f2, A066071.P14748689608797232704.a, A003557, A003557.P6364735403900941810.a, A010051, A010051.P15078252821583414300.a, A173557, A173557.P15666735857375843373.a, A296079, A296079.P15018280529446540256.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066072

/-! ## A066072.P11215923584450683375

`p?[A039649(A018252(n+1))]`
-/

namespace A066072.P11215923584450683375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P11215923584450683375

namespace A066072

/-- `p?[A039649(A018252(n+1))]` -/
def P11215923584450683375.Spec : Prop :=
  ∀ n, P11215923584450683375.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P18374466403606399480

`filter[A074987(n+1), A010051(#)]`
-/

namespace A066072.P18374466403606399480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066072.P18374466403606399480

namespace A066072

/-- `filter[A074987(n+1), A010051(#)]` -/
def P18374466403606399480.Spec : Prop :=
  ∀ n, P18374466403606399480.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P8397358259983323015

`filter[A074987(n+1), A323153(#)]`
-/

namespace A066072.P8397358259983323015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066072.P8397358259983323015

namespace A066072

/-- `filter[A074987(n+1), A323153(#)]` -/
def P8397358259983323015.Spec : Prop :=
  ∀ n, P8397358259983323015.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P14758119729314771647

`p?[A039649(∑[A054546(n+1)])]`
-/

namespace A066072.P14758119729314771647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P14758119729314771647

namespace A066072

/-- `p?[A039649(∑[A054546(n+1)])]` -/
def P14758119729314771647.Spec : Prop :=
  ∀ n, P14758119729314771647.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P2740166894587576390

`A039650(A066071(2*n+1-n))`
-/

namespace A066072.P2740166894587576390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (A066071 (2 * n + 1 - n)).toNat

end

end A066072.P2740166894587576390

namespace A066072

/-- `A039650(A066071(2*n+1-n))` -/
def P2740166894587576390.Spec : Prop :=
  ∀ n, P2740166894587576390.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P9128337425157481228

`p?[A039649(comp[A006093(n+1)]+1)]`
-/

namespace A066072.P9128337425157481228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P9128337425157481228

namespace A066072

/-- `p?[A039649(comp[A006093(n+1)]+1)]` -/
def P9128337425157481228.Spec : Prop :=
  ∀ n, P9128337425157481228.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P3926024150281412607

`p?[A039650(n+1)*A039651(n+1)]`
-/

namespace A066072.P3926024150281412607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1) * A039651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P3926024150281412607

namespace A066072

/-- `p?[A039650(n+1)*A039651(n+1)]` -/
def P3926024150281412607.Spec : Prop :=
  ∀ n, P3926024150281412607.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P6366802878965464085

`p?[A000010(n+1)+A061397(n+1)+1]`
-/

namespace A066072.P6366802878965464085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A061397 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P6366802878965464085

namespace A066072

/-- `p?[A000010(n+1)+A061397(n+1)+1]` -/
def P6366802878965464085.Spec : Prop :=
  ∀ n, P6366802878965464085.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P3053549759686102250

`p?[A000010(n+1)+1-A055671(n+1)]`
-/

namespace A066072.P3053549759686102250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A055671 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P3053549759686102250

namespace A066072

/-- `p?[A000010(n+1)+1-A055671(n+1)]` -/
def P3053549759686102250.Spec : Prop :=
  ∀ n, P3053549759686102250.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P15060221882134200449

`p?[A000010(n+1)+A191558(n+1)-n]`
-/

namespace A066072.P15060221882134200449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A191558 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P15060221882134200449

namespace A066072

/-- `p?[A000010(n+1)+A191558(n+1)-n]` -/
def P15060221882134200449.Spec : Prop :=
  ∀ n, P15060221882134200449.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P17691983019658251053

`p?[A000010(n+1)+gcd(n, A182936(n+1))]`
-/

namespace A066072.P17691983019658251053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (Int.gcd (n : ℤ) (A182936 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P17691983019658251053

namespace A066072

/-- `p?[A000010(n+1)+gcd(n, A182936(n+1))]` -/
def P17691983019658251053.Spec : Prop :=
  ∀ n, P17691983019658251053.a n = A066072 (n + 1)

end A066072

/-! ## A066072.P15810894668064788030

`p?[A000010(n+2)+A000010(A089026(n+2))]`
-/

namespace A066072.P15810894668064788030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + A000010 (A089026 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066072.P15810894668064788030

namespace A066072

/-- `p?[A000010(n+2)+A000010(A089026(n+2))]` -/
def P15810894668064788030.Spec : Prop :=
  ∀ n, P15810894668064788030.a n = A066072 (n + 1)

end A066072

/-!
# A066073: Composite numbers k such that sigma(k) - 1 is prime.

The programs for A066073, the canonical program `A066073.P15506222458200392670` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066073 has offset 1).

The definition of A066073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066073.P15506222458200392670

`filter[A248792(n+1), A005171(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066073

/-- `filter[A248792(n+1), A005171(#)]` -/
def P15506222458200392670.Spec : Prop :=
  ∀ n, P15506222458200392670.a n = A066073 (n + 1)

theorem P15506222458200392670.correct : P15506222458200392670.Spec := by
  intro n
  simp only [A066073, Nat.add_sub_cancel]

end A066073

/-! ## A066073.P11840200981245507430

`filter[A248792(n+1), A066247(#)]`
-/

namespace A066073.P11840200981245507430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066073.P11840200981245507430

namespace A066073

/-- `filter[A248792(n+1), A066247(#)]` -/
def P11840200981245507430.Spec : Prop :=
  ∀ n, P11840200981245507430.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P9593840860321052725

`filter[A248792(n+1), A202238(#)]`
-/

namespace A066073.P9593840860321052725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A066073.P9593840860321052725

namespace A066073

/-- `filter[A248792(n+1), A202238(#)]` -/
def P9593840860321052725.Spec : Prop :=
  ∀ n, P9593840860321052725.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P5498105073768431587

`filter[A248792(n+1), A174898(#)]`
-/

namespace A066073.P5498105073768431587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A066073.P5498105073768431587

namespace A066073

/-- `filter[A248792(n+1), A174898(#)]` -/
def P5498105073768431587.Spec : Prop :=
  ∀ n, P5498105073768431587.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P16756193512049566253

`∩[A002808(n+1), A248792(n+1)]`
-/

namespace A066073.P16756193512049566253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P16756193512049566253

namespace A066073

/-- `∩[A002808(n+1), A248792(n+1)]` -/
def P16756193512049566253.Spec : Prop :=
  ∀ n, (P16756193512049566253.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P8307100320621986919

`∩[A018252(n+1), A248792(n+1)]`
-/

namespace A066073.P8307100320621986919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P8307100320621986919

namespace A066073

/-- `∩[A018252(n+1), A248792(n+1)]` -/
def P8307100320621986919.Spec : Prop :=
  ∀ n, (P8307100320621986919.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P6112532777042996766

`∩[A141468(n+1), A248792(n+1)]`
-/

namespace A066073.P6112532777042996766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P6112532777042996766

namespace A066073

/-- `∩[A141468(n+1), A248792(n+1)]` -/
def P6112532777042996766.Spec : Prop :=
  ∀ n, (P6112532777042996766.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P12053872151983845999

`filter[A089229(n+1), A296211(#)]`
-/

namespace A066073.P12053872151983845999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P12053872151983845999

namespace A066073

/-- `filter[A089229(n+1), A296211(#)]` -/
def P12053872151983845999.Spec : Prop :=
  ∀ n, P12053872151983845999.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P9981282239188137541

`∩[A089229(n+1), A248792(n+1)]`
-/

namespace A066073.P9981282239188137541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P9981282239188137541

namespace A066073

/-- `∩[A089229(n+1), A248792(n+1)]` -/
def P9981282239188137541.Spec : Prop :=
  ∀ n, (P9981282239188137541.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P13125866301073873222

`filter[A024619(n+1), A296211(#)]`
-/

namespace A066073.P13125866301073873222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P13125866301073873222

namespace A066073

/-- `filter[A024619(n+1), A296211(#)]` -/
def P13125866301073873222.Spec : Prop :=
  ∀ n, P13125866301073873222.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P9559172369588108810

`filter[A361102(n+1), A296211(#)]`
-/

namespace A066073.P9559172369588108810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P9559172369588108810

namespace A066073

/-- `filter[A361102(n+1), A296211(#)]` -/
def P9559172369588108810.Spec : Prop :=
  ∀ n, P9559172369588108810.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P15702969206224218365

`filter[A387335(n+3), A296211(#)]`
-/

namespace A066073.P15702969206224218365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P15702969206224218365

namespace A066073

/-- `filter[A387335(n+3), A296211(#)]` -/
def P15702969206224218365.Spec : Prop :=
  ∀ n, P15702969206224218365.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P5734532869425102561

`∩[A024619(n+1), A248792(n+1)]`
-/

namespace A066073.P5734532869425102561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P5734532869425102561

namespace A066073

/-- `∩[A024619(n+1), A248792(n+1)]` -/
def P5734532869425102561.Spec : Prop :=
  ∀ n, (P5734532869425102561.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P11626026486706910619

`∩[A248792(n+1), A361102(n+1)]`
-/

namespace A066073.P11626026486706910619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P11626026486706910619

namespace A066073

/-- `∩[A248792(n+1), A361102(n+1)]` -/
def P11626026486706910619.Spec : Prop :=
  ∀ n, (P11626026486706910619.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P9983917251838970976

`filter[A139118(n+1), A296211(#)]`
-/

namespace A066073.P9983917251838970976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P9983917251838970976

namespace A066073

/-- `filter[A139118(n+1), A296211(#)]` -/
def P9983917251838970976.Spec : Prop :=
  ∀ n, P9983917251838970976.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P5280954594949195503

`filter[A268388(n+1), A296211(#)]`
-/

namespace A066073.P5280954594949195503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P5280954594949195503

namespace A066073

/-- `filter[A268388(n+1), A296211(#)]` -/
def P5280954594949195503.Spec : Prop :=
  ∀ n, P5280954594949195503.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P10323679273294417771

`∩[A139118(n+1), A248792(n+1)]`
-/

namespace A066073.P10323679273294417771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P10323679273294417771

namespace A066073

/-- `∩[A139118(n+1), A248792(n+1)]` -/
def P10323679273294417771.Spec : Prop :=
  ∀ n, (P10323679273294417771.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P12612098655762877307

`∩[A248792(n+1), A268388(n+1)]`
-/

namespace A066073.P12612098655762877307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P12612098655762877307

namespace A066073

/-- `∩[A248792(n+1), A268388(n+1)]` -/
def P12612098655762877307.Spec : Prop :=
  ∀ n, (P12612098655762877307.a n : ℤ) = A066073 (n + 1)

end A066073

/-! ## A066073.P8669319613667440214

`filter[A080257(n+1), A296211(#)]`
-/

namespace A066073.P8669319613667440214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066073.P8669319613667440214

namespace A066073

/-- `filter[A080257(n+1), A296211(#)]` -/
def P8669319613667440214.Spec : Prop :=
  ∀ n, P8669319613667440214.a n = A066073 (n + 1)

end A066073

/-! ## A066073.P9754883003367098900

`∩[A080257(n+1), A248792(n+1)]`
-/

namespace A066073.P9754883003367098900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066073.P9754883003367098900

namespace A066073

/-- `∩[A080257(n+1), A248792(n+1)]` -/
def P9754883003367098900.Spec : Prop :=
  ∀ n, (P9754883003367098900.a n : ℤ) = A066073 (n + 1)

end A066073

/-!
# A066074: Primes arising in A066073.

The programs for A066074, the canonical program `A066074.P14598573141439101236` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066074 has offset 1).

The definition of A066074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066074.P11825808526912494434

`p?[A000203(A141468(n+2))-1]`
-/

namespace A066074.P11825808526912494434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A141468 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P11825808526912494434

namespace A066074

/-- `p?[A000203(A141468(n+2))-1]` -/
def P11825808526912494434.Spec : Prop :=
  ∀ n, P11825808526912494434.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P6414447172637025922

`A000203(∩[A018252(n+1), A248792(n+1)])-1`
-/

namespace A066074.P6414447172637025922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A066074.P6414447172637025922

namespace A066074

/-- `A000203(∩[A018252(n+1), A248792(n+1)])-1` -/
def P6414447172637025922.Spec : Prop :=
  ∀ n, P6414447172637025922.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P14598573141439101236

`p?[A163871(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066074

/-- `p?[A163871(n+1)]` -/
def P14598573141439101236.Spec : Prop :=
  ∀ n, P14598573141439101236.a n = A066074 (n + 1)

theorem P14598573141439101236.correct : P14598573141439101236.Spec := by
  intro n
  simp only [A066074, Nat.add_sub_cancel]

end A066074

/-! ## A066074.P15265342891039934007

`p?[A073255(n+1)-1]`
-/

namespace A066074.P15265342891039934007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P15265342891039934007

namespace A066074

/-- `p?[A073255(n+1)-1]` -/
def P15265342891039934007.Spec : Prop :=
  ∀ n, P15265342891039934007.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P10924697632936708283

`filter[A163871(n+1), A010051(#)]`
-/

namespace A066074.P10924697632936708283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066074.P10924697632936708283

namespace A066074

/-- `filter[A163871(n+1), A010051(#)]` -/
def P10924697632936708283.Spec : Prop :=
  ∀ n, P10924697632936708283.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P10331520465927833285

`filter[A163871(n+2), A323153(#)]`
-/

namespace A066074.P10331520465927833285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066074.P10331520465927833285

namespace A066074

/-- `filter[A163871(n+2), A323153(#)]` -/
def P10331520465927833285.Spec : Prop :=
  ∀ n, P10331520465927833285.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P7906407613042655941

`A000203(A095702(eq[n+1, A095702(n)]))-1`
-/

namespace A066074.P7906407613042655941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A095702 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat - 1

end

end A066074.P7906407613042655941

namespace A066074

/-- `A000203(A095702(eq[n+1, A095702(n)]))-1` -/
def P7906407613042655941.Spec : Prop :=
  ∀ n, P7906407613042655941.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P12514426376238803351

`p?[∑{d}[(n+1)%A151800(n), #]-1]`
-/

namespace A066074.P12514426376238803351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A151800 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P12514426376238803351

namespace A066074

/-- `p?[∑{d}[(n+1)%A151800(n), #]-1]` -/
def P12514426376238803351.Spec : Prop :=
  ∀ n, P12514426376238803351.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P13875030945866037776

`A039653(A066073(n+1))`
-/

namespace A066074.P13875030945866037776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A066073 (n + 1)).toNat

end

end A066074.P13875030945866037776

namespace A066074

/-- `A039653(A066073(n+1))` -/
def P13875030945866037776.Spec : Prop :=
  ∀ n, P13875030945866037776.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P9866641052107816187

`p?[A039653(A002808(n+1))]`
-/

namespace A066074.P9866641052107816187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P9866641052107816187

namespace A066074

/-- `p?[A039653(A002808(n+1))]` -/
def P9866641052107816187.Spec : Prop :=
  ∀ n, P9866641052107816187.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P10135623374968249839

`p?[A039653(A018252(n+1))]`
-/

namespace A066074.P10135623374968249839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P10135623374968249839

namespace A066074

/-- `p?[A039653(A018252(n+1))]` -/
def P10135623374968249839.Spec : Prop :=
  ∀ n, P10135623374968249839.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P678707241640191556

`p?[A000203(n+1)-A089026(n+1)]`
-/

namespace A066074.P678707241640191556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P678707241640191556

namespace A066074

/-- `p?[A000203(n+1)-A089026(n+1)]` -/
def P678707241640191556.Spec : Prop :=
  ∀ n, P678707241640191556.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P2827478725305745416

`p?[A155085(n+1)-(n+1)-A089026(n+1)]`
-/

namespace A066074.P2827478725305745416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P2827478725305745416

namespace A066074

/-- `p?[A155085(n+1)-(n+1)-A089026(n+1)]` -/
def P2827478725305745416.Spec : Prop :=
  ∀ n, P2827478725305745416.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P1186718417906935060

`p?[A000203(n+1)-A000203(A014963(n+1))]`
-/

namespace A066074.P1186718417906935060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P1186718417906935060

namespace A066074

/-- `p?[A000203(n+1)-A000203(A014963(n+1))]` -/
def P1186718417906935060.Spec : Prop :=
  ∀ n, P1186718417906935060.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P14053336931121428236

`p?[A039654(n+2)*A039655(n+2)]`
-/

namespace A066074.P14053336931121428236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (n + 2) * A039655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14053336931121428236

namespace A066074

/-- `p?[A039654(n+2)*A039655(n+2)]` -/
def P14053336931121428236.Spec : Prop :=
  ∀ n, P14053336931121428236.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P3782403848270199766

`p?[A039653(comp[A039654(n+2)])]`
-/

namespace A066074.P3782403848270199766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P3782403848270199766

namespace A066074

/-- `p?[A039653(comp[A039654(n+2)])]` -/
def P3782403848270199766.Spec : Prop :=
  ∀ n, P3782403848270199766.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P14531082055301265008

`p?[A039653(comp[A039650(n+1)])]`
-/

namespace A066074.P14531082055301265008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066074.P14531082055301265008

namespace A066074

/-- `p?[A039653(comp[A039650(n+1)])]` -/
def P14531082055301265008.Spec : Prop :=
  ∀ n, P14531082055301265008.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P12751116380637658887

`filter[A163871(n+1), A080339(#)]`
-/

namespace A066074.P12751116380637658887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A066074.P12751116380637658887

namespace A066074

/-- `filter[A163871(n+1), A080339(#)]` -/
def P12751116380637658887.Spec : Prop :=
  ∀ n, P12751116380637658887.a n = A066074 (n + 1)

end A066074

/-! ## A066074.P4395230880141138494

`filter[A163871(n+1), A080545(#)]`
-/

namespace A066074.P4395230880141138494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A066074.P4395230880141138494

namespace A066074

/-- `filter[A163871(n+1), A080545(#)]` -/
def P4395230880141138494.Spec : Prop :=
  ∀ n, P4395230880141138494.a n = A066074 (n + 1)

end A066074

/-!
# A066075: Number of solutions x to prime(n) = sigma(x) - 1, where prime(n) is the n-th prime.

The programs for A066075, there is no canonical definition to state claims against.
-/

/-! ## A066075.P4707012747119274055

`A054973(A000040(n+1)+1)`
-/

namespace A066075.P4707012747119274055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A000040 (n + 1) + 1).toNat

end

end A066075.P4707012747119274055

/-! ## A066075.P10961695803191278309

`Δ[A066077(n+1)]`
-/

namespace A066075.P10961695803191278309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066075.P10961695803191278309

/-! ## A066075.P2194451235184073241

`A066077(n+2)-A066077(n+1)`
-/

namespace A066075.P2194451235184073241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066077 (n + 2) - A066077 (n + 1)

end

end A066075.P2194451235184073241

/-! ## A066075.P12345142738495270639

`A263025(Δ[A007504(n)])`
-/

namespace A066075.P12345142738495270639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (f1 (n + 1) - f1 n).toNat

end

end A066075.P12345142738495270639

/-! ## A066075.P10122794538535038282

`A263025(A116974(n+2))`
-/

namespace A066075.P10122794538535038282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (A116974 (n + 2)).toNat

end

end A066075.P10122794538535038282

/-! ## A066075.P5155965015273675194

`A263025(A162786(n+2))`
-/

namespace A066075.P5155965015273675194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (A162786 (n + 2)).toNat

end

end A066075.P5155965015273675194

/-! ## A066075.P1508675781384876348

`A263025(record[A006530(n+2)])`
-/

namespace A066075.P1508675781384876348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066075.P1508675781384876348

/-! ## A066075.P14250232861442389051

`A263025(record[A020639(n+2)])`
-/

namespace A066075.P14250232861442389051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066075.P14250232861442389051

/-! ## A066075.P9892246839686031761

`A283486(A130291(n+1))`
-/

namespace A066075.P9892246839686031761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (A130291 (n + 1)).toNat

end

end A066075.P9892246839686031761

/-! ## A066075.P3403671316478537586

`A070242(A000040(n+1))`
-/

namespace A066075.P3403671316478537586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A000040 (n + 1)).toNat

end

end A066075.P3403671316478537586

/-! ## A066075.P1056903865029472760

`A070242(A006005(n+1))`
-/

namespace A066075.P1056903865029472760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A006005 (n + 1)).toNat

end

end A066075.P1056903865029472760

/-! ## A066075.P15362757011322299775

`A070242(A161847(n+1))`
-/

namespace A066075.P15362757011322299775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A161847 (n + 1)).toNat

end

end A066075.P15362757011322299775

/-! ## A066075.P1884774049751636503

`A070242(A296375(n+1))`
-/

namespace A066075.P1884774049751636503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A296375 (n + 1)).toNat

end

end A066075.P1884774049751636503

/-! ## A066075.P8127339915396566321

`A070242(A008578(n+2))`
-/

namespace A066075.P8127339915396566321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A008578 (n + 2)).toNat

end

end A066075.P8127339915396566321

/-! ## A066075.P7591446684753261480

`A070242(A075643(n+2))`
-/

namespace A066075.P7591446684753261480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A075643 (n + 2)).toNat

end

end A066075.P7591446684753261480

/-! ## A066075.P2232360867473178455

`A070242(A171525(n+2))`
-/

namespace A066075.P2232360867473178455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A171525 (n + 2)).toNat

end

end A066075.P2232360867473178455

/-! ## A066075.P4162871293818029154

`A070242(A175787(n+2))`
-/

namespace A066075.P4162871293818029154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A175787 (n + 2)).toNat

end

end A066075.P4162871293818029154

/-! ## A066075.P17114497655061108571

`A070242(record[A006530(n+2)])`
-/

namespace A066075.P17114497655061108571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066075.P17114497655061108571

/-! ## A066075.P14192161800279793510

`A070242(record[A020639(n+2)])`
-/

namespace A066075.P14192161800279793510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066075.P14192161800279793510

/-! ## A066075.P11900964599480899209

`A070242(p?[comp[n²]])`
-/

namespace A066075.P11900964599480899209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A066075.P11900964599480899209

/-!
# A066076: Primes p such that there is a unique solution to p = sigma(x) - 1.

The programs for A066076, there is no canonical definition to state claims against.
-/

/-! ## A066076.P4085233415318204063

`record[A296375(n+1)]`
-/

namespace A066076.P4085233415318204063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066076.P4085233415318204063

/-! ## A066076.P9983838199099509048

`filter[A296375(n+1), A010051(#)]`
-/

namespace A066076.P9983838199099509048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066076.P9983838199099509048

/-! ## A066076.P3695101624289580555

`filter[A296375(n+1), A069513(#)]`
-/

namespace A066076.P3695101624289580555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A066076.P3695101624289580555

/-! ## A066076.P3306779076490752995

`p?[A308098(n+1)]`
-/

namespace A066076.P3306779076490752995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066076.P3306779076490752995

/-! ## A066076.P3718972365714396510

`p?[A007370(n+1)-1]`
-/

namespace A066076.P3718972365714396510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007370 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066076.P3718972365714396510

/-! ## A066076.P79597554134382496

`record[A006530(A308098(n+2))]`
-/

namespace A066076.P79597554134382496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308098 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066076.P79597554134382496

/-! ## A066076.P6436795589899460659

`filter[A308098(n+1), A010051(#)]`
-/

namespace A066076.P6436795589899460659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066076.P6436795589899460659

/-! ## A066076.P10693173998749537504

`p?[A211656(n+1)]`
-/

namespace A066076.P10693173998749537504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066076.P10693173998749537504

/-! ## A066076.P15960239428100989847

`p?[A211657(n+1)-1]`
-/

namespace A066076.P15960239428100989847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211657 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066076.P15960239428100989847

/-! ## A066076.P17199026867232159442

`record[A006530(A211656(n+2))]`
-/

namespace A066076.P17199026867232159442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A211656 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066076.P17199026867232159442

/-! ## A066076.P6926545500024660333

`filter[A211656(n+1), A010051(#)]`
-/

namespace A066076.P6926545500024660333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066076.P6926545500024660333

/-! ## A066076.P13425830562617815898

`∩[A000040(n+1), A211656(n+1)]`
-/

namespace A066076.P13425830562617815898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P13425830562617815898

/-! ## A066076.P17972360012297813187

`∩[A053813(n+1), A211656(n+1)]`
-/

namespace A066076.P17972360012297813187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P17972360012297813187

/-! ## A066076.P14472982225058300005

`∩[A116974(n+1), A211656(n+1)]`
-/

namespace A066076.P14472982225058300005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P14472982225058300005

/-! ## A066076.P10175592690687896414

`∩[A182140(n+1), A211656(n+1)]`
-/

namespace A066076.P10175592690687896414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P10175592690687896414

/-! ## A066076.P4934361321307756272

`∩[A182986(n+1), A211656(n+1)]`
-/

namespace A066076.P4934361321307756272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P4934361321307756272

/-! ## A066076.P2891086240480023489

`∩[A187711(n+1), A211656(n+1)]`
-/

namespace A066076.P2891086240480023489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P2891086240480023489

/-! ## A066076.P16408620324009803483

`∩[A198273(n+1), A211656(n+1)]`
-/

namespace A066076.P16408620324009803483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066076.P16408620324009803483

/-! ## A066076.P17053984047225329987

`filter[A296375(n+1), A174897(#)]`
-/

namespace A066076.P17053984047225329987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A066076.P17053984047225329987

/-! ## A066076.P13842025838809038001

`filter[A211656(n+1), A296211(#)]`
-/

namespace A066076.P13842025838809038001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A066076.P13842025838809038001

/-!
# A066077: a(n) is the number of x such that sigma(x)-1 is 0 or one of the first n-1 primes.

The programs for A066077, there is no canonical definition to state claims against.
-/

/-! ## A066077.P17456819099526645903

`A066075(n)+a(n-1)` with `a(0)=1`
-/

namespace A066077.P17456819099526645903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066075 n + a (n - 1)

end

end A066077.P17456819099526645903

/-! ## A066077.P2004976641094818264

`∑[A066075(n+1)]+1-A066075(n+1)`
-/

namespace A066077.P2004976641094818264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A066075 (n + 1))

end

end A066077.P2004976641094818264

/-! ## A066077.P7232113376327464229

`∑[A070242(A008578(n+1))]`
-/

namespace A066077.P7232113376327464229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P7232113376327464229

/-! ## A066077.P13772911672704300238

`∑[A070242(A075643(n+1))]`
-/

namespace A066077.P13772911672704300238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A075643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P13772911672704300238

/-! ## A066077.P10765236872679121596

`∑[A070242(A175787(n+1))]`
-/

namespace A066077.P10765236872679121596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (A175787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P10765236872679121596

/-! ## A066077.P14418206357409662799

`∑[A054973(A299763(n+1))]`
-/

namespace A066077.P14418206357409662799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A299763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P14418206357409662799

/-! ## A066077.P18317516354374727607

`A054973(A000040(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A066077.P18317516354374727607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054973 (A000040 n + 1).toNat + a (n - 1)

end

end A066077.P18317516354374727607

/-! ## A066077.P5413694165425590608

`∑[A054973(A000040(abs(1-n)+1)+1)]`
-/

namespace A066077.P5413694165425590608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A000040 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P5413694165425590608

/-! ## A066077.P3804417131430392580

`∑[A263025(record[A252463(n+1)])]`
-/

namespace A066077.P3804417131430392580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066077.P3804417131430392580

/-!
# A066079: Arises in detailed black hole state counting in loop quantum gravity.

The programs for A066079, there is no canonical definition to state claims against.
-/

/-! ## A066079.P12524431480977163817

`eq[A033996(n), A212651(n)]`
-/

namespace A066079.P12524431480977163817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066079.P12524431480977163817

/-! ## A066079.P6227560644633118972

`A005563(lt[A342447(n), A289283(n+1)])`
-/

namespace A066079.P6227560644633118972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066079.P6227560644633118972

/-! ## A066079.P5129475706967921152

`eq[A090740(A003973(n+1)), A257680(n)]`
-/

namespace A066079.P5129475706967921152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A003973 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066079.P5129475706967921152

/-! ## A066079.P10943106526290189818

`eq[A028597(n), A383898(n+1)]`
-/

namespace A066079.P10943106526290189818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066079.P10943106526290189818

/-! ## A066079.P2090513667952602619

`eq[A028613(n), A383898(n+1)]`
-/

namespace A066079.P2090513667952602619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066079.P2090513667952602619

/-!
# A066080: Largest solution x to phi(x) + 1 = prime(n).

The programs for A066080, there is no canonical definition to state claims against.
-/

/-! ## A066080.P16553601284802068423

`A319048(A039915(n+1))`
-/

namespace A066080.P16553601284802068423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A039915 (n + 1)).toNat

end

end A066080.P16553601284802068423

/-! ## A066080.P8057523271520297619

`A319048(record[A000010(n+1)])`
-/

namespace A066080.P8057523271520297619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066080.P8057523271520297619

/-! ## A066080.P1327006857349055014

`A319048(A000040(n+1)-1)`
-/

namespace A066080.P1327006857349055014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A000040 (n + 1) - 1).toNat

end

end A066080.P1327006857349055014

/-! ## A066080.P3879288467231368615

`A319048(A008578(n+2)-1)`
-/

namespace A066080.P3879288467231368615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A008578 (n + 2) - 1).toNat

end

end A066080.P3879288467231368615

/-! ## A066080.P13364289388836560886

`A319048(eq[1, A318996(n+1)])`
-/

namespace A066080.P13364289388836560886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066080.P13364289388836560886

/-! ## A066080.P3664055700240844794

`A319048(eq[2, A000005(n+1)])`
-/

namespace A066080.P3664055700240844794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066080.P3664055700240844794

/-! ## A066080.P2630711743559275563

`A319048(eq[n, A000010(n+1)])`
-/

namespace A066080.P2630711743559275563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066080.P2630711743559275563

/-! ## A066080.P11398623632541154699

`filter[A006511(n+1), A296079(#)]`
-/

namespace A066080.P11398623632541154699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A066080.P11398623632541154699

/-! ## A066080.P3116863326536277072

`A028476(p?[comp[n²]])`
-/

namespace A066080.P3116863326536277072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A066080.P3116863326536277072

/-! ## A066080.P3455100075888947598

`A028476(A000040(n+1))`
-/

namespace A066080.P3455100075888947598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A000040 (n + 1)).toNat

end

end A066080.P3455100075888947598

/-! ## A066080.P5204177373088651034

`A028476(A006005(n+1))`
-/

namespace A066080.P5204177373088651034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A006005 (n + 1)).toNat

end

end A066080.P5204177373088651034

/-! ## A066080.P8395703550767609183

`A057635(A006093(n+1))`
-/

namespace A066080.P8395703550767609183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A006093 (n + 1)).toNat

end

end A066080.P8395703550767609183

/-! ## A066080.P16723386129676302270

`A028476(A008578(n+2))`
-/

namespace A066080.P16723386129676302270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A008578 (n + 2)).toNat

end

end A066080.P16723386129676302270

/-! ## A066080.P15265001909771439798

`A028476(A075643(n+2))`
-/

namespace A066080.P15265001909771439798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A075643 (n + 2)).toNat

end

end A066080.P15265001909771439798

/-! ## A066080.P15135056419996180025

`A028476(A182986(n+2))`
-/

namespace A066080.P15135056419996180025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A182986 (n + 2)).toNat

end

end A066080.P15135056419996180025

/-! ## A066080.P8129354897565555691

`A057635(record[A000010(n+1)])`
-/

namespace A066080.P8129354897565555691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066080.P8129354897565555691

/-! ## A066080.P13042749698605336198

`A028476(record[A006530(n+2)])`
-/

namespace A066080.P13042749698605336198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066080.P13042749698605336198

/-! ## A066080.P17626716152727075441

`A028476(record[A014963(n+2)])`
-/

namespace A066080.P17626716152727075441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066080.P17626716152727075441

/-! ## A066080.P9655054651316063196

`A028476(record[A020639(n+2)])`
-/

namespace A066080.P9655054651316063196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066080.P9655054651316063196

/-! ## A066080.P17821706501572186986

`A057635(A000040(n+1)-1)`
-/

namespace A066080.P17821706501572186986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A000040 (n + 1) - 1).toNat

end

end A066080.P17821706501572186986

/-!
# A066083: Number of supersolvable groups of order n.

The programs for A066083, there is no canonical definition to state claims against.
-/

/-! ## A066083.P10164464596053705652

`Δ[A173666(A028310(n))]+floor(acot(n))`
-/

namespace A066083.P10164464596053705652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A066083.P10164464596053705652

/-! ## A066083.P9771143610753351269

`A000007(n)+Δ[A173666(A028310(n))]`
-/

namespace A066083.P9771143610753351269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A066083.P9771143610753351269

/-! ## A066083.P10141134293774503841

`Δ[A173666(A028310(n))+A057427(n)]`
-/

namespace A066083.P10141134293774503841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066083.P10141134293774503841

/-! ## A066083.P5132963514319594404

`Δ[A173666(A028310(n))-A054977(n)]`
-/

namespace A066083.P5132963514319594404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066083.P5132963514319594404

/-! ## A066083.P11400789636230974529

`Δ[A173666(A028310(n))-A057428(n)]`
-/

namespace A066083.P11400789636230974529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066083.P11400789636230974529

/-! ## A066083.P17543318477809532420

`Δ[A173666(A028310(n))-A208645(2*n)]`
-/

namespace A066083.P17543318477809532420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat - A208645 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066083.P17543318477809532420

/-! ## A066083.P9344403690188241426

`A010051(2*(n+1))+Δ[A173666(A028310(n))]`
-/

namespace A066083.P9344403690188241426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A066083.P9344403690188241426

/-! ## A066083.P15913437588759293911

`Δ[A173666(A028310(n))+A000040(n+1)%2]`
-/

namespace A066083.P15913437588759293911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066083.P15913437588759293911

/-! ## A066083.P9169482494080609123

`A254667(n+1)+Δ[A173666(A028310(n))]-(n+1)`
-/

namespace A066083.P9169482494080609123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (n + 1) + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A066083.P9169482494080609123

/-!
# A066084: a(n) = (n!)^2 + n! + n.

The programs for A066084, the canonical program `A066084.P5628382183890451674` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066084 has offset 0).

The definition of A066084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+n` (program `A066084.P5628382183890451674`, by `A066084.P5628382183890451674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066084.P5628382183890451674

`n!²+n!+n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066084

/-- `n!²+n!+n` -/
def P5628382183890451674.Spec : Prop :=
  ∀ n, (P5628382183890451674.a n : ℤ) = A066084 n

theorem P5628382183890451674.correct : P5628382183890451674.Spec := by
  intro n
  simp only [A066084]

end A066084

/-! ## A066084.P6140109372197007408

`(n!+1)*n!+n`
-/

namespace A066084.P6140109372197007408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1) * Nat.factorial n + n

end

end A066084.P6140109372197007408

namespace A066084

/-- `(n!+1)*n!+n` -/
def P6140109372197007408.Spec : Prop :=
  ∀ n, (P6140109372197007408.a n : ℤ) = A066084 n

theorem P6140109372197007408.correct : P6140109372197007408.Spec := by
  intro n
  simp only [A066084, Nat.add_sub_cancel, A066084.P6140109372197007408.a, A066084.P5628382183890451674.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066084

/-! ## A066084.P11177548354685614078

`A066142(n)-1+n`
-/

namespace A066084.P11177548354685614078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066142 n - 1 + (n : ℤ)

end

end A066084.P11177548354685614078

namespace A066084

/-- `A066142(n)-1+n` -/
def P11177548354685614078.Spec : Prop :=
  ∀ n, P11177548354685614078.a n = A066084 n

theorem P11177548354685614078.correct : P11177548354685614078.Spec := by
  intro n
  simp only [A066084, Nat.add_sub_cancel, A066084.P11177548354685614078.a, A066084.P5628382183890451674.a, A066142, A066142.P17327499882956603005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066084

/-! ## A066084.P8136804539035449319

`2*A055555(n)+n`
-/

namespace A066084.P8136804539035449319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055555 n + (n : ℤ)

end

end A066084.P8136804539035449319

namespace A066084

/-- `2*A055555(n)+n` -/
def P8136804539035449319.Spec : Prop :=
  ∀ n, P8136804539035449319.a n = A066084 n

end A066084

/-! ## A066084.P16249798859463961523

`n!*A038507(n)+n`
-/

namespace A066084.P16249798859463961523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A038507 n + (n : ℤ)

end

end A066084.P16249798859463961523

namespace A066084

/-- `n!*A038507(n)+n` -/
def P16249798859463961523.Spec : Prop :=
  ∀ n, P16249798859463961523.a n = A066084 n

theorem P16249798859463961523.correct : P16249798859463961523.Spec := by
  intro n
  simp only [A066084, Nat.add_sub_cancel, A066084.P16249798859463961523.a, A066084.P5628382183890451674.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066084

/-!
# A066085: Orders of non-supersolvable groups.

The programs for A066085, there is no canonical definition to state claims against.
-/

/-! ## A066085.P14315273054029737399

`∪[A015048(n+1), A340511(n+1)]`
-/

namespace A066085.P14315273054029737399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P14315273054029737399

/-! ## A066085.P12768608186171757351

`∪[A156813(n+1), A340511(n+1)]`
-/

namespace A066085.P12768608186171757351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P12768608186171757351

/-! ## A066085.P9692416018675129267

`∪[A158227(n+1), A340511(n+1)]`
-/

namespace A066085.P9692416018675129267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P9692416018675129267

/-! ## A066085.P6125452509588922360

`∪[A172424(n+1), A340511(n+1)]`
-/

namespace A066085.P6125452509588922360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P6125452509588922360

/-! ## A066085.P4657063262045723056

`∪[A240529(n+1), A340511(n+1)]`
-/

namespace A066085.P4657063262045723056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P4657063262045723056

/-! ## A066085.P15638198249728632026

`∪[A331371(n+1), A340511(n+1)]`
-/

namespace A066085.P15638198249728632026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P15638198249728632026

/-! ## A066085.P4226077419111913698

`∪[A339994(n+1), A340511(n+1)]`
-/

namespace A066085.P4226077419111913698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P4226077419111913698

/-! ## A066085.P17872218309405293255

`∪[A340511(n+1), A395671(n+1)]`
-/

namespace A066085.P17872218309405293255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P17872218309405293255

/-! ## A066085.P586998645969080623

`∪[A340511(n+1), A061524(n+2)]`
-/

namespace A066085.P586998645969080623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061524 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066085.P586998645969080623

/-!
# A066086: Greatest common divisor of product (p-1) and product (p+1), where p ranges over distinct prime divisors of n; a(n) = gcd(A048250(n), A173557(n)).

The programs for A066086, the canonical program `A066086.P8501771591660618369` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066086 has offset 1).

The definition of A066086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066086.P9256643665589531631

`A322360(n+1)/A322359(n+1)`
-/

namespace A066086.P9256643665589531631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322360 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A066086.P9256643665589531631

namespace A066086

/-- `A322360(n+1)/A322359(n+1)` -/
def P9256643665589531631.Spec : Prop :=
  ∀ n, P9256643665589531631.a n = (A066086 (n + 1) : ℚ)

end A066086

/-! ## A066086.P18330955237690908019

`gcd(A048250(n+1), A023900(n+1))`
-/

namespace A066086.P18330955237690908019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A023900 (n + 1))

end

end A066086.P18330955237690908019

namespace A066086

/-- `gcd(A048250(n+1), A023900(n+1))` -/
def P18330955237690908019.Spec : Prop :=
  ∀ n, (P18330955237690908019.a n : ℤ) = A066086 (n + 1)

end A066086

/-! ## A066086.P8501771591660618369

`gcd(A048250(n+1), A173557(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066086

/-- `gcd(A048250(n+1), A173557(n+1))` -/
def P8501771591660618369.Spec : Prop :=
  ∀ n, (P8501771591660618369.a n : ℤ) = A066086 (n + 1)

theorem P8501771591660618369.correct : P8501771591660618369.Spec := by
  intro n
  simp only [A066086, Nat.add_sub_cancel]

end A066086

/-! ## A066086.P16829276538758776668

`gcd(A000203(A007947(n+1)), A000010(A007947(n+1)))`
-/

namespace A066086.P16829276538758776668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A007947 (n + 1)).toNat) (A000010 (A007947 (n + 1)).toNat)

end

end A066086.P16829276538758776668

namespace A066086

/-- `gcd(A000203(A007947(n+1)), A000010(A007947(n+1)))` -/
def P16829276538758776668.Spec : Prop :=
  ∀ n, (P16829276538758776668.a n : ℤ) = A066086 (n + 1)

end A066086

/-! ## A066086.P3642084083206421906

`A009223(∏{p}[n+1, #])`
-/

namespace A066086.P3642084083206421906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066086.P3642084083206421906

namespace A066086

/-- `A009223(∏{p}[n+1, #])` -/
def P3642084083206421906.Spec : Prop :=
  ∀ n, P3642084083206421906.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P5715544239210816967

`A126865(∏{p}[n+1, #])`
-/

namespace A066086.P5715544239210816967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126865 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066086.P5715544239210816967

namespace A066086

/-- `A126865(∏{p}[n+1, #])` -/
def P5715544239210816967.Spec : Prop :=
  ∀ n, P5715544239210816967.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P11405321804638516908

`A175732(∏{p}[n+1, #])`
-/

namespace A066086.P11405321804638516908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066086.P11405321804638516908

namespace A066086

/-- `A175732(∏{p}[n+1, #])` -/
def P11405321804638516908.Spec : Prop :=
  ∀ n, P11405321804638516908.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P12791452781759629134

`A323406(∏{p}[n+1, #])`
-/

namespace A066086.P12791452781759629134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323406 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066086.P12791452781759629134

namespace A066086

/-- `A323406(∏{p}[n+1, #])` -/
def P12791452781759629134.Spec : Prop :=
  ∀ n, P12791452781759629134.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P8934553899345021139

`gcd(A000010(∏{p}[n+1, #]), ∏{p}[n+1, #+1])`
-/

namespace A066086.P8934553899345021139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)) ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A066086.P8934553899345021139

namespace A066086

/-- `gcd(A000010(∏{p}[n+1, #]), ∏{p}[n+1, #+1])` -/
def P8934553899345021139.Spec : Prop :=
  ∀ n, (P8934553899345021139.a n : ℤ) = A066086 (n + 1)

end A066086

/-! ## A066086.P11908981202530298480

`gcd(A000203(∏{p}[n+1, #]), ∏{p}[n+1, #-1])`
-/

namespace A066086.P11908981202530298480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (∏ p ∈ Nat.primeFactors (f1 n), p)) (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A066086.P11908981202530298480

namespace A066086

/-- `gcd(A000203(∏{p}[n+1, #]), ∏{p}[n+1, #-1])` -/
def P11908981202530298480.Spec : Prop :=
  ∀ n, (P11908981202530298480.a n : ℤ) = A066086 (n + 1)

end A066086

/-! ## A066086.P1252772225631017962

`A009223(A007947(n+1))`
-/

namespace A066086.P1252772225631017962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (A007947 (n + 1)).toNat

end

end A066086.P1252772225631017962

namespace A066086

/-- `A009223(A007947(n+1))` -/
def P1252772225631017962.Spec : Prop :=
  ∀ n, P1252772225631017962.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P4167133322759702270

`A009223(n+1)-A066087(n+1)`
-/

namespace A066086.P4167133322759702270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1) - A066087 (n + 1)

end

end A066086.P4167133322759702270

namespace A066086

/-- `A009223(n+1)-A066087(n+1)` -/
def P4167133322759702270.Spec : Prop :=
  ∀ n, P4167133322759702270.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P16809378962592494905

`A009223((n+1)/A003557(n+1))`
-/

namespace A066086.P16809378962592494905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A066086.P16809378962592494905

namespace A066086

/-- `A009223((n+1)/A003557(n+1))` -/
def P16809378962592494905.Spec : Prop :=
  ∀ n, P16809378962592494905.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P9209660326233144859

`A126865((n+1)/A003557(n+1))`
-/

namespace A066086.P9209660326233144859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A066086.P9209660326233144859

namespace A066086

/-- `A126865((n+1)/A003557(n+1))` -/
def P9209660326233144859.Spec : Prop :=
  ∀ n, P9209660326233144859.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P7756376833213326714

`A175732((n+1)/A003557(n+1))`
-/

namespace A066086.P7756376833213326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A066086.P7756376833213326714

namespace A066086

/-- `A175732((n+1)/A003557(n+1))` -/
def P7756376833213326714.Spec : Prop :=
  ∀ n, P7756376833213326714.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P3471571204557312776

`A126865(A064549(n+1)/(n+1))`
-/

namespace A066086.P3471571204557312776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126865 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A066086.P3471571204557312776

namespace A066086

/-- `A126865(A064549(n+1)/(n+1))` -/
def P3471571204557312776.Spec : Prop :=
  ∀ n, P3471571204557312776.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P11043773750677065005

`A323406(A007947(2*n+1-n))`
-/

namespace A066086.P11043773750677065005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323406 (A007947 (2 * n + 1 - n)).toNat

end

end A066086.P11043773750677065005

namespace A066086

/-- `A323406(A007947(2*n+1-n))` -/
def P11043773750677065005.Spec : Prop :=
  ∀ n, P11043773750677065005.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P1071342653483364436

`A126865(A019555(A019555(n+1)))`
-/

namespace A066086.P1071342653483364436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126865 (A019555 (A019555 (n + 1)).toNat).toNat

end

end A066086.P1071342653483364436

namespace A066086

/-- `A126865(A019555(A019555(n+1)))` -/
def P1071342653483364436.Spec : Prop :=
  ∀ n, P1071342653483364436.a n = A066086 (n + 1)

end A066086

/-! ## A066086.P18306650379676716114

`A007434(A007947(n+1))/A322359(n+1)`
-/

namespace A066086.P18306650379676716114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (A007947 (n + 1)).toNat : ℚ) / (A322359 (n + 1) : ℚ)

end

end A066086.P18306650379676716114

namespace A066086

/-- `A007434(A007947(n+1))/A322359(n+1)` -/
def P18306650379676716114.Spec : Prop :=
  ∀ n, P18306650379676716114.a n = (A066086 (n + 1) : ℚ)

end A066086

/-! ## A066086.P9741932335545665096

`A048250(n+1)*A173557(n+1)/A322359(n+1)`
-/

namespace A066086.P9741932335545665096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) * A173557 (n + 1) : ℚ) / (A322359 (n + 1) : ℚ)

end

end A066086.P9741932335545665096

namespace A066086

/-- `A048250(n+1)*A173557(n+1)/A322359(n+1)` -/
def P9741932335545665096.Spec : Prop :=
  ∀ n, P9741932335545665096.a n = (A066086 (n + 1) : ℚ)

end A066086

/-!
# A066087: a(n) = gcd(sigma(n), phi(n)) - gcd(sigma(rad(n)), phi(rad(n))); rad = A007947.

The programs for A066087, the canonical program `A066087.P10137650563605415100` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066087 has offset 1).

The definition of A066087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066087.P5805459573522421648

`A009223(n+1)-A066086(n+1)`
-/

namespace A066087.P5805459573522421648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1) - A066086 (n + 1)

end

end A066087.P5805459573522421648

namespace A066087

/-- `A009223(n+1)-A066086(n+1)` -/
def P5805459573522421648.Spec : Prop :=
  ∀ n, P5805459573522421648.a n = A066087 (n + 1)

end A066087

/-! ## A066087.P10137650563605415100

`gcd(A000203(n+1), A000010(n+1))-gcd(A000203(A007947(n+1)), A000010(A007947(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066087

/-- `gcd(A000203(n+1), A000010(n+1))-gcd(A000203(A007947(n+1)), A000010(A007947(n+1)))` -/
def P10137650563605415100.Spec : Prop :=
  ∀ n, P10137650563605415100.a n = A066087 (n + 1)

theorem P10137650563605415100.correct : P10137650563605415100.Spec := by
  intro n
  simp only [A066087, Nat.add_sub_cancel]

end A066087

/-! ## A066087.P11151154710333140262

`A009223(n+1)-A009223(A007947(n+1))`
-/

namespace A066087.P11151154710333140262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1) - A009223 (A007947 (n + 1)).toNat

end

end A066087.P11151154710333140262

namespace A066087

/-- `A009223(n+1)-A009223(A007947(n+1))` -/
def P11151154710333140262.Spec : Prop :=
  ∀ n, P11151154710333140262.a n = A066087 (n + 1)

end A066087

/-! ## A066087.P14758304088819732215

`A062354(n+1)/A009286(n+1)-A066086(n+1)`
-/

namespace A066087.P14758304088819732215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ) - (A066086 (n + 1) : ℚ)

end

end A066087.P14758304088819732215

namespace A066087

/-- `A062354(n+1)/A009286(n+1)-A066086(n+1)` -/
def P14758304088819732215.Spec : Prop :=
  ∀ n, P14758304088819732215.a n = (A066087 (n + 1) : ℚ)

end A066087

/-! ## A066087.P10173036356652630870

`gcd(A009286(n+1), A051612(n+1))-A066086(n+1)`
-/

namespace A066087.P10173036356652630870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A009286 (n + 1)) (A051612 (n + 1)) : ℤ) - A066086 (n + 1)

end

end A066087.P10173036356652630870

namespace A066087

/-- `gcd(A009286(n+1), A051612(n+1))-A066086(n+1)` -/
def P10173036356652630870.Spec : Prop :=
  ∀ n, P10173036356652630870.a n = A066087 (n + 1)

end A066087

/-! ## A066087.P17599900727498165258

`A062354(n+1)/A009286(n+1)-A323406(1-A066503(n+1)+n)`
-/

namespace A066087.P17599900727498165258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ) - (A323406 (1 - A066503 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A066087.P17599900727498165258

namespace A066087

/-- `A062354(n+1)/A009286(n+1)-A323406(1-A066503(n+1)+n)` -/
def P17599900727498165258.Spec : Prop :=
  ∀ n, P17599900727498165258.a n = (A066087 (n + 1) : ℚ)

end A066087

/-! ## A066087.P12855026378636161913

`A062354(n+1)/A009286(n+1)-A009223((n+1)/A003557(n+1))`
-/

namespace A066087.P12855026378636161913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ) - (A009223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat : ℚ)

end

end A066087.P12855026378636161913

namespace A066087

/-- `A062354(n+1)/A009286(n+1)-A009223((n+1)/A003557(n+1))` -/
def P12855026378636161913.Spec : Prop :=
  ∀ n, P12855026378636161913.a n = (A066087 (n + 1) : ℚ)

end A066087

/-!
# A066088: Number of distinct prime factors of sigma_2(n), where sigma_2(n) = A001157(n).

The programs for A066088, the canonical program `A066088.P18408062941437000967` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066088 has offset 1).

The definition of A066088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066088.P18408062941437000967

`A001221(A001157(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066088

/-- `A001221(A001157(n+1))` -/
def P18408062941437000967.Spec : Prop :=
  ∀ n, P18408062941437000967.a n = A066088 (n + 1)

theorem P18408062941437000967.correct : P18408062941437000967.Spec := by
  intro n
  simp only [A066088, Nat.add_sub_cancel]

end A066088

/-! ## A066088.P15854574234992455139

`∑{e}[A080399(n+1), #]`
-/

namespace A066088.P15854574234992455139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A066088.P15854574234992455139

namespace A066088

/-- `∑{e}[A080399(n+1), #]` -/
def P15854574234992455139.Spec : Prop :=
  ∀ n, (P15854574234992455139.a n : ℤ) = A066088 (n + 1)

end A066088

/-! ## A066088.P14327509985061197010

`∑{p}[∑{d}[n+1, #²], A001222(#)]`
-/

namespace A066088.P14327509985061197010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A066088.P14327509985061197010

namespace A066088

/-- `∑{p}[∑{d}[n+1, #²], A001222(#)]` -/
def P14327509985061197010.Spec : Prop :=
  ∀ n, P14327509985061197010.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P17890881211994601276

`∑{p}[A001157(n+1), A001222(#)]`
-/

namespace A066088.P17890881211994601276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A066088.P17890881211994601276

namespace A066088

/-- `∑{p}[A001157(n+1), A001222(#)]` -/
def P17890881211994601276.Spec : Prop :=
  ∀ n, P17890881211994601276.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P9358750862213759427

`A001222(∏{p}[∑{d}[n+1, #²], #])`
-/

namespace A066088.P9358750862213759427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066088.P9358750862213759427

namespace A066088

/-- `A001222(∏{p}[∑{d}[n+1, #²], #])` -/
def P9358750862213759427.Spec : Prop :=
  ∀ n, P9358750862213759427.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P7272490024208381733

`A001221(A080399(n+1))`
-/

namespace A066088.P7272490024208381733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080399 (n + 1)).toNat

end

end A066088.P7272490024208381733

namespace A066088

/-- `A001221(A080399(n+1))` -/
def P7272490024208381733.Spec : Prop :=
  ∀ n, P7272490024208381733.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P6030954376357686541

`A001222(∏{p}[A001157(n+1), #])`
-/

namespace A066088.P6030954376357686541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A066088.P6030954376357686541

namespace A066088

/-- `A001222(∏{p}[A001157(n+1), #])` -/
def P6030954376357686541.Spec : Prop :=
  ∀ n, P6030954376357686541.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P6010256812345250859

`A001221(∑{d}[n+1, #²])`
-/

namespace A066088.P6010256812345250859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A066088.P6010256812345250859

namespace A066088

/-- `A001221(∑{d}[n+1, #²])` -/
def P6010256812345250859.Spec : Prop :=
  ∀ n, P6010256812345250859.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P15782832385188672208

`A001221(sqrt(A356533(n+1)))`
-/

namespace A066088.P15782832385188672208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A356533 (n + 1) : ℝ))).toNat

end

end A066088.P15782832385188672208

namespace A066088

/-- `A001221(sqrt(A356533(n+1)))` -/
def P15782832385188672208.Spec : Prop :=
  ∀ n, P15782832385188672208.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P13112876153440448782

`∑{p}[A001157(n+1), A032741(#)]`
-/

namespace A066088.P13112876153440448782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032741 p

end

end A066088.P13112876153440448782

namespace A066088

/-- `∑{p}[A001157(n+1), A032741(#)]` -/
def P13112876153440448782.Spec : Prop :=
  ∀ n, P13112876153440448782.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P9069832217301368101

`A001221(A035316((n+1)²))`
-/

namespace A066088.P9069832217301368101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A035316 ((n + 1) ^ 2)).toNat

end

end A066088.P9069832217301368101

namespace A066088

/-- `A001221(A035316((n+1)²))` -/
def P9069832217301368101.Spec : Prop :=
  ∀ n, P9069832217301368101.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P11008710503708826070

`A001221(A076752((n+1)²))`
-/

namespace A066088.P11008710503708826070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076752 ((n + 1) ^ 2)).toNat

end

end A066088.P11008710503708826070

namespace A066088

/-- `A001221(A076752((n+1)²))` -/
def P11008710503708826070.Spec : Prop :=
  ∀ n, P11008710503708826070.a n = A066088 (n + 1)

end A066088

/-! ## A066088.P15910587883643977325

`A001221(A367989((n+1)²))`
-/

namespace A066088.P15910587883643977325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367989 ((n + 1) ^ 2)).toNat

end

end A066088.P15910587883643977325

namespace A066088

/-- `A001221(A367989((n+1)²))` -/
def P15910587883643977325.Spec : Prop :=
  ∀ n, P15910587883643977325.a n = A066088 (n + 1)

end A066088

/-!
# A066089: Smallest m such that A066088(m) = A001221(A001157(m)) = n.

The programs for A066089, there is no canonical definition to state claims against.
-/

/-! ## A066089.P2067896239139495979

`A115630(A149457(n))+A000267(n)`
-/

namespace A066089.P2067896239139495979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115630 (A149457 n).toNat + A000267 n

end

end A066089.P2067896239139495979

/-! ## A066089.P6030340317853012242

`A086188(A228564(n))+A005117(n+1)`
-/

namespace A066089.P6030340317853012242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086188 (A228564 n).toNat + A005117 (n + 1)

end

end A066089.P6030340317853012242

/-!
# A066090: a(n) = binomial(sigma(n), n).

The programs for A066090, the canonical program `A066090.P2653853344159924608` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066090 has offset 1).

The definition of A066090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), n+1)` (program `A066090.P2653853344159924608`, by `A066090.P2653853344159924608.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066090.P2653853344159924608

`C(A000203(n+1), n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066090

/-- `C(A000203(n+1), n+1)` -/
def P2653853344159924608.Spec : Prop :=
  ∀ n, (P2653853344159924608.a n : ℤ) = A066090 (n + 1)

theorem P2653853344159924608.correct : P2653853344159924608.Spec := by
  intro n
  simp only [A066090, Nat.add_sub_cancel]

end A066090

/-! ## A066090.P15207848368937467409

`C(∑{d}[n+1, #], n+1)`
-/

namespace A066090.P15207848368937467409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (n + 1)

end

end A066090.P15207848368937467409

namespace A066090

/-- `C(∑{d}[n+1, #], n+1)` -/
def P15207848368937467409.Spec : Prop :=
  ∀ n, (P15207848368937467409.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P10873946704562069759

`C(Δ[A160664(n)], n+1)`
-/

namespace A066090.P10873946704562069759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat (n + 1)

end

end A066090.P10873946704562069759

namespace A066090

/-- `C(Δ[A160664(n)], n+1)` -/
def P10873946704562069759.Spec : Prop :=
  ∀ n, (P10873946704562069759.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P9889353670792336078

`C(abs(Δ[A330725(n)]), n+1)`
-/

namespace A066090.P9889353670792336078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |f1 (n + 1) - f1 n|.toNat (n + 1)

end

end A066090.P9889353670792336078

namespace A066090

/-- `C(abs(Δ[A330725(n)]), n+1)` -/
def P9889353670792336078.Spec : Prop :=
  ∀ n, (P9889353670792336078.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P8369347577978308849

`C(A245092(Δ[n²]), n+1)`
-/

namespace A066090.P8369347577978308849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat (n + 1)

end

end A066090.P8369347577978308849

namespace A066090

/-- `C(A245092(Δ[n²]), n+1)` -/
def P8369347577978308849.Spec : Prop :=
  ∀ n, (P8369347577978308849.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P11208907048278140590

`C(abs(A143348(n+1)), n+1)`
-/

namespace A066090.P11208907048278140590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A143348 (n + 1)|.toNat (n + 1)

end

end A066090.P11208907048278140590

namespace A066090

/-- `C(abs(A143348(n+1)), n+1)` -/
def P11208907048278140590.Spec : Prop :=
  ∀ n, (P11208907048278140590.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P3744114974915503810

`C(sqrt(A072861(n+1)), n+1)`
-/

namespace A066090.P3744114974915503810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat (n + 1)

end

end A066090.P3744114974915503810

namespace A066090

/-- `C(sqrt(A072861(n+1)), n+1)` -/
def P3744114974915503810.Spec : Prop :=
  ∀ n, (P3744114974915503810.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P8636195266827948422

`C(A245093(∑[n+1]), n+1)`
-/

namespace A066090.P8636195266827948422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245093 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat (n + 1)

end

end A066090.P8636195266827948422

namespace A066090

/-- `C(A245093(∑[n+1]), n+1)` -/
def P8636195266827948422.Spec : Prop :=
  ∀ n, (P8636195266827948422.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P9766828338927913527

`C(∑[A340793(n+1)], n+1)`
-/

namespace A066090.P9766828338927913527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (n + 1)

end

end A066090.P9766828338927913527

namespace A066090

/-- `C(∑[A340793(n+1)], n+1)` -/
def P9766828338927913527.Spec : Prop :=
  ∀ n, (P9766828338927913527.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P11074193844286813170

`C(A039653(n+1)+1, n+1)`
-/

namespace A066090.P11074193844286813170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039653 (n + 1) + 1).toNat (n + 1)

end

end A066090.P11074193844286813170

namespace A066090

/-- `C(A039653(n+1)+1, n+1)` -/
def P11074193844286813170.Spec : Prop :=
  ∀ n, (P11074193844286813170.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P3354021375347387980

`C(A088580(n+1)-1, n+1)`
-/

namespace A066090.P3354021375347387980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088580 (n + 1) - 1).toNat (n + 1)

end

end A066090.P3354021375347387980

namespace A066090

/-- `C(A088580(n+1)-1, n+1)` -/
def P3354021375347387980.Spec : Prop :=
  ∀ n, (P3354021375347387980.a n : ℤ) = A066090 (n + 1)

theorem P3354021375347387980.correct : P3354021375347387980.Spec := by
  intro n
  simp only [A066090, Nat.add_sub_cancel, A066090.P3354021375347387980.a, A066090.P2653853344159924608.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066090

/-! ## A066090.P7032981463059257437

`C(A262610(2*n+1), n+1)`
-/

namespace A066090.P7032981463059257437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262610 (2 * n + 1)).toNat (n + 1)

end

end A066090.P7032981463059257437

namespace A066090

/-- `C(A262610(2*n+1), n+1)` -/
def P7032981463059257437.Spec : Prop :=
  ∀ n, (P7032981463059257437.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P11920323843881050704

`C(A326065(2*(n+1)), n+1)`
-/

namespace A066090.P11920323843881050704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326065 (2 * (n + 1))).toNat (n + 1)

end

end A066090.P11920323843881050704

namespace A066090

/-- `C(A326065(2*(n+1)), n+1)` -/
def P11920323843881050704.Spec : Prop :=
  ∀ n, (P11920323843881050704.a n : ℤ) = A066090 (n + 1)

end A066090

/-! ## A066090.P12358183435227072175

`C(A155085(n+1)-(n+1), n+1)`
-/

namespace A066090.P12358183435227072175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A155085 (n + 1) - (n + 1 : ℤ)).toNat (n + 1)

end

end A066090.P12358183435227072175

namespace A066090

/-- `C(A155085(n+1)-(n+1), n+1)` -/
def P12358183435227072175.Spec : Prop :=
  ∀ n, (P12358183435227072175.a n : ℤ) = A066090 (n + 1)

theorem P12358183435227072175.correct : P12358183435227072175.Spec := by
  intro n
  simp only [A066090, Nat.add_sub_cancel, A066090.P12358183435227072175.a, A066090.P2653853344159924608.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A066090

/-! ## A066090.P8402613628398543727

`C(A064987(n+1)/(n+1), n+1)`
-/

namespace A066090.P8402613628398543727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat (n + 1)

end

end A066090.P8402613628398543727

namespace A066090

/-- `C(A064987(n+1)/(n+1), n+1)` -/
def P8402613628398543727.Spec : Prop :=
  ∀ n, (P8402613628398543727.a n : ℤ) = A066090 (n + 1)

end A066090

/-!
# A066091: a(n+2) = a(n+1)*a(n)*(a(n+1)+a(n)).

The programs for A066091, there is no canonical definition to state claims against.
-/

/-! ## A066091.P6623628112056219974

`(a(n-1)+a(n-2))*a(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A066091.P6623628112056219974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * (a (n - 1) * a (n - 2))

end

end A066091.P6623628112056219974

/-! ## A066091.P3044808706483546996

`A100704(n+1)`
-/

namespace A066091.P3044808706483546996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100704 (n + 1)

end

end A066091.P3044808706483546996

/-!
# A066094: Type D Eulerian triangle.

The programs for A066094, there is no canonical definition to state claims against.
-/

/-! ## A066094.P11747530894560022607

`gcd(A103452(n), A284272(A194563(n)))`
-/

namespace A066094.P11747530894560022607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A284272 (A194563 n).toNat)

end

end A066094.P11747530894560022607

/-! ## A066094.P5345232321613884548

`A140137(A008300(n))`
-/

namespace A066094.P5345232321613884548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (A008300 n).toNat

end

end A066094.P5345232321613884548

/-! ## A066094.P16073664423869849213

`A140137(A009963(n))`
-/

namespace A066094.P16073664423869849213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (A009963 n).toNat

end

end A066094.P16073664423869849213

/-! ## A066094.P10070762333529874767

`A079933(A091378(n))`
-/

namespace A066094.P10070762333529874767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079933 (A091378 n).toNat

end

end A066094.P10070762333529874767

/-! ## A066094.P7339414273479172007

`A161995(A045912(n))`
-/

namespace A066094.P7339414273479172007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161995 (A045912 n).toNat

end

end A066094.P7339414273479172007

/-!
# A066096: a(n) = floor(n*phi), where phi = (1 + sqrt(5))/2.

The programs for A066096, the canonical program `A066096.P2651506377198414293` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066096 has offset 0).

The definition of A066096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)` (program `A066096.P1717811907399992909`, by `A066096.P1717811907399992909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066096.P1717811907399992909

`floor(n*ϕ)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066096.P1717811907399992909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio⌋

end

end A066096.P1717811907399992909

namespace A066096

/-- `floor(n*ϕ)` -/
def P1717811907399992909.Spec : Prop :=
  ∀ n, P1717811907399992909.a n = A066096 n

theorem P1717811907399992909.correct : P1717811907399992909.Spec := by
  intro n
  simp only [A066096, Nat.add_sub_cancel, A066096.P1717811907399992909.a, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066096

/-! ## A066096.P2651506377198414293

`A026351(n)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066096

/-- `A026351(n)-1` -/
def P2651506377198414293.Spec : Prop :=
  ∀ n, P2651506377198414293.a n = A066096 n

theorem P2651506377198414293.correct : P2651506377198414293.Spec := by
  intro n
  simp only [A066096]

end A066096

/-! ## A066096.P990333879348193413

`ceil(n*(ϕ-acot(n)))`
-/

namespace A066096.P990333879348193413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (n : ℝ))⌉

end

end A066096.P990333879348193413

namespace A066096

/-- `ceil(n*(ϕ-acot(n)))` -/
def P990333879348193413.Spec : Prop :=
  ∀ n, P990333879348193413.a n = A066096 n

end A066096

/-! ## A066096.P3163326457050848551

`abs(floor(cot(acot(n)/ϕ)))`
-/

namespace A066096.P3163326457050848551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cot (SequenceMachineLib.acot (n : ℝ) / Real.goldenRatio)⌋|

end

end A066096.P3163326457050848551

namespace A066096

/-- `abs(floor(cot(acot(n)/ϕ)))` -/
def P3163326457050848551.Spec : Prop :=
  ∀ n, P3163326457050848551.a n = A066096 n

end A066096

/-! ## A066096.P184586727751516206

`floor(Δ[C(n, 2)/ϕ])+n`
-/

namespace A066096.P184586727751516206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + (n : ℤ)

end

end A066096.P184586727751516206

namespace A066096

/-- `floor(Δ[C(n, 2)/ϕ])+n` -/
def P184586727751516206.Spec : Prop :=
  ∀ n, P184586727751516206.a n = A066096 n

end A066096

/-! ## A066096.P7979426026899267969

`round(n*(ϕ-acot(2*n)))`
-/

namespace A066096.P7979426026899267969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (2 * n : ℝ)))

end

end A066096.P7979426026899267969

namespace A066096

/-- `round(n*(ϕ-acot(2*n)))` -/
def P7979426026899267969.Spec : Prop :=
  ∀ n, P7979426026899267969.a n = A066096 n

end A066096

/-! ## A066096.P11983189182438444509

`-ceil(ϕ*xor(n-1, -1))`
-/

namespace A066096.P11983189182438444509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.goldenRatio * (Int.xor ((n : ℤ) - 1) (-1) : ℝ)⌉

end

end A066096.P11983189182438444509

namespace A066096

/-- `-ceil(ϕ*xor(n-1, -1))` -/
def P11983189182438444509.Spec : Prop :=
  ∀ n, P11983189182438444509.a n = A066096 n

end A066096

/-! ## A066096.P3089455067503819762

`n+floor(n/(2*cos(π/5)))`
-/

namespace A066096.P3089455067503819762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n : ℝ) / (2 * Real.cos (Real.pi / 5))⌋

end

end A066096.P3089455067503819762

namespace A066096

/-- `n+floor(n/(2*cos(π/5)))` -/
def P3089455067503819762.Spec : Prop :=
  ∀ n, P3089455067503819762.a n = A066096 n

end A066096

/-! ## A066096.P9306546340868080726

`floor(n²/(a(n-1)+2))+n` with `a(0)=0`
-/

namespace A066096.P9306546340868080726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 2 : ℚ) / (a (n - 1) + 2 : ℚ)⌋ + (n : ℤ)

end

end A066096.P9306546340868080726

namespace A066096

/-- `floor(n²/(a(n-1)+2))+n` -/
def P9306546340868080726.Spec : Prop :=
  ∀ n, P9306546340868080726.a n = A066096 n

end A066096

/-! ## A066096.P3500704310955319316

`floor(n*n/(a(n-1)+2))+n` with `a(0)=0`
-/

namespace A066096.P3500704310955319316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) / (a (n - 1) + 2 : ℚ))⌋ + (n : ℤ)

end

end A066096.P3500704310955319316

namespace A066096

/-- `floor(n*n/(a(n-1)+2))+n` -/
def P3500704310955319316.Spec : Prop :=
  ∀ n, P3500704310955319316.a n = A066096 n

end A066096

/-! ## A066096.P10776720264981428975

`A060143(n)+n`
-/

namespace A066096.P10776720264981428975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + (n : ℤ)

end

end A066096.P10776720264981428975

namespace A066096

/-- `A060143(n)+n` -/
def P10776720264981428975.Spec : Prop :=
  ∀ n, P10776720264981428975.a n = A066096 n

theorem P10776720264981428975.correct : P10776720264981428975.Spec := by
  intro n
  simp only [A066096, Nat.add_sub_cancel, A066096.P10776720264981428975.a, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, A060143, A060143.P4349736368293734599.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066096

/-! ## A066096.P2680882596670165242

`comp[A001950(n+1)]`
-/

namespace A066096.P2680882596670165242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A066096.P2680882596670165242

namespace A066096

/-- `comp[A001950(n+1)]` -/
def P2680882596670165242.Spec : Prop :=
  ∀ n, (P2680882596670165242.a n : ℤ) = A066096 n

end A066096

/-! ## A066096.P5863813639757388633

`comp[A004957(n)-1]`
-/

namespace A066096.P5863813639757388633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A066096.P5863813639757388633

namespace A066096

/-- `comp[A004957(n)-1]` -/
def P5863813639757388633.Spec : Prop :=
  ∀ n, (P5863813639757388633.a n : ℤ) = A066096 n

end A066096

/-! ## A066096.P1606567715519089069

`record[n*A096270(n)]`
-/

namespace A066096.P1606567715519089069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066096.P1606567715519089069

namespace A066096

/-- `record[n*A096270(n)]` -/
def P1606567715519089069.Spec : Prop :=
  ∀ n, P1606567715519089069.a n = A066096 n

end A066096

/-!
# A066098: Sum of digits of primorial(n).

The programs for A066098, there is no canonical definition to state claims against.
-/

/-! ## A066098.P4823359813400114616

`∑{digits}[∏[eq[n, ∏{d}[n, #]]], #]`
-/

namespace A066098.P4823359813400114616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066098.P4823359813400114616

/-! ## A066098.P3893018293224819206

`∑{digits}[∏[lt[∏{d}[n, #], n+1]], #]`
-/

namespace A066098.P3893018293224819206
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066098.P3893018293224819206

/-! ## A066098.P4598425897732535611

`∑{digits}[A002110(n), #]`
-/

namespace A066098.P4598425897732535611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P4598425897732535611

/-! ## A066098.P12182378911282309669

`∑{digits}[A070918(∑[n]), #]`
-/

namespace A066098.P12182378911282309669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070918 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P12182378911282309669

/-! ## A066098.P5941812103685397179

`∑{digits}[A096334(∑[n]), #]`
-/

namespace A066098.P5941812103685397179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P5941812103685397179

/-! ## A066098.P3142523090860610368

`∑{digits}[A246868(∑[n]), #]`
-/

namespace A066098.P3142523090860610368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P3142523090860610368

/-! ## A066098.P4843011051704120218

`∑{digits}[record[A096334(n)], #]`
-/

namespace A066098.P4843011051704120218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P4843011051704120218

/-! ## A066098.P17573430749416312435

`∑{digits}[1-A006862(n), #]`
-/

namespace A066098.P17573430749416312435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P17573430749416312435

/-! ## A066098.P849156701826802382

`∑{digits}[record[A108951(n+1)], #]`
-/

namespace A066098.P849156701826802382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A066098.P849156701826802382

/-!
# A066099: Triangle read by rows, in which row n lists the compositions of n in reverse lexicographic order.

The programs for A066099, there is no canonical definition to state claims against.
-/

/-! ## A066099.P3355547687883155943

`A030303(n+2)-A030303(n+1)`
-/

namespace A066099.P3355547687883155943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 2) - A030303 (n + 1)

end

end A066099.P3355547687883155943

/-! ## A066099.P4370181126296039124

`Δ[comp[A003607(n)]]`
-/

namespace A066099.P4370181126296039124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066099.P4370181126296039124

/-! ## A066099.P10219410370781875511

`Δ[A030303(n+1)]`
-/

namespace A066099.P10219410370781875511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066099.P10219410370781875511

/-! ## A066099.P6845931442467101140

`Δ[lt[0, A319954(n)]]`
-/

namespace A066099.P6845931442467101140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066099.P6845931442467101140

/-! ## A066099.P11536049739664184125

`Δ[lt[0, A030190(n)]]`
-/

namespace A066099.P11536049739664184125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A066099.P11536049739664184125

/-! ## A066099.P8369107118055833777

`A108730(n+1)+1`
-/

namespace A066099.P8369107118055833777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108730 (n + 1) + 1

end

end A066099.P8369107118055833777

