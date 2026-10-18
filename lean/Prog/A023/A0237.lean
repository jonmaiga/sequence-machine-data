import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

/-!
# A023700: Numbers with exactly 2 2's in their ternary expansion.

The programs for A023700, the canonical program `A023700.P15077908504290355889` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023700 has offset 1).

The definition of A023700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023700.P6579319864985594798

`eq[4, abs(A117942(n))]`
-/

namespace A023700.P6579319864985594798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P6579319864985594798

namespace A023700

/-- `eq[4, abs(A117942(n))]` -/
def P6579319864985594798.Spec : Prop :=
  ∀ n, (P6579319864985594798.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P15077908504290355889

`eq[2, val(A006047(n), 3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023700

/-- `eq[2, val(A006047(n), 3)]` -/
def P15077908504290355889.Spec : Prop :=
  ∀ n, (P15077908504290355889.a n : ℤ) = A023700 (n + 1)

theorem P15077908504290355889.correct : P15077908504290355889.Spec := by
  intro n
  simp only [A023700, Nat.add_sub_cancel]

end A023700

/-! ## A023700.P4954109968877179817

`eq[2, A000010(A290092(n))]`
-/

namespace A023700.P4954109968877179817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A290092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P4954109968877179817

namespace A023700

/-- `eq[2, A000010(A290092(n))]` -/
def P4954109968877179817.Spec : Prop :=
  ∀ n, (P4954109968877179817.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P13930361835345295056

`eq[2, A302242(A006047(n))]`
-/

namespace A023700.P13930361835345295056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P13930361835345295056

namespace A023700

/-- `eq[2, A302242(A006047(n))]` -/
def P13930361835345295056.Spec : Prop :=
  ∀ n, (P13930361835345295056.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P2498254966224587125

`eq[5, A006530(A206424(n))]`
-/

namespace A023700.P2498254966224587125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A206424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P2498254966224587125

namespace A023700

/-- `eq[5, A006530(A206424(n))]` -/
def P2498254966224587125.Spec : Prop :=
  ∀ n, (P2498254966224587125.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P5263410328333169787

`eq[2, A081603(n)]`
-/

namespace A023700.P5263410328333169787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P5263410328333169787

namespace A023700

/-- `eq[2, A081603(n)]` -/
def P5263410328333169787.Spec : Prop :=
  ∀ n, (P5263410328333169787.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P17260318822808808640

`eq[4, A117592(n)]`
-/

namespace A023700.P17260318822808808640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P17260318822808808640

namespace A023700

/-- `eq[4, A117592(n)]` -/
def P17260318822808808640.Spec : Prop :=
  ∀ n, (P17260318822808808640.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P5734093236731072056

`eq[2, val(A120879(n), 2)]`
-/

namespace A023700.P5734093236731072056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023700.P5734093236731072056

namespace A023700

/-- `eq[2, val(A120879(n), 2)]` -/
def P5734093236731072056.Spec : Prop :=
  ∀ n, (P5734093236731072056.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P15694798081389422244

`eq[2, A000120(A289814(n))]`
-/

namespace A023700.P15694798081389422244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P15694798081389422244

namespace A023700

/-- `eq[2, A000120(A289814(n))]` -/
def P15694798081389422244.Spec : Prop :=
  ∀ n, (P15694798081389422244.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P12677859723098857362

`eq[9, A120879(A120879(n))]`
-/

namespace A023700.P12677859723098857362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P12677859723098857362

namespace A023700

/-- `eq[9, A120879(A120879(n))]` -/
def P12677859723098857362.Spec : Prop :=
  ∀ n, (P12677859723098857362.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P12520715376769143190

`eq[2, A062756(A004488(n))]`
-/

namespace A023700.P12520715376769143190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P12520715376769143190

namespace A023700

/-- `eq[2, A062756(A004488(n))]` -/
def P12520715376769143190.Spec : Prop :=
  ∀ n, (P12520715376769143190.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P10625910496466268835

`eq[2, A062756(A357616(n))]`
-/

namespace A023700.P10625910496466268835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P10625910496466268835

namespace A023700

/-- `eq[2, A062756(A357616(n))]` -/
def P10625910496466268835.Spec : Prop :=
  ∀ n, (P10625910496466268835.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P8640090595392840421

`eq[A038574(2*A038574(n)), A040042(n)]`
-/

namespace A023700.P8640090595392840421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 (2 * A038574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023700.P8640090595392840421

namespace A023700

/-- `eq[A038574(2*A038574(n)), A040042(n)]` -/
def P8640090595392840421.Spec : Prop :=
  ∀ n, (P8640090595392840421.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P1143073955687789349

`eq[2, A001221(A289816(n))]`
-/

namespace A023700.P1143073955687789349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P1143073955687789349

namespace A023700

/-- `eq[2, A001221(A289816(n))]` -/
def P1143073955687789349.Spec : Prop :=
  ∀ n, (P1143073955687789349.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P11405074679802898188

`A215090(A045143(n+1))`
-/

namespace A023700.P11405074679802898188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045143 (n + 1)).toNat

end

end A023700.P11405074679802898188

namespace A023700

/-- `A215090(A045143(n+1))` -/
def P11405074679802898188.Spec : Prop :=
  ∀ n, P11405074679802898188.a n = A023700 (n + 1)

end A023700

/-! ## A023700.P15824636515108761465

`eq[2, A160382(A023717(n))]`
-/

namespace A023700.P15824636515108761465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P15824636515108761465

namespace A023700

/-- `eq[2, A160382(A023717(n))]` -/
def P15824636515108761465.Spec : Prop :=
  ∀ n, (P15824636515108761465.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P16218449714647161073

`eq[2, A139351(2*A023717(n))]`
-/

namespace A023700.P16218449714647161073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P16218449714647161073

namespace A023700

/-- `eq[2, A139351(2*A023717(n))]` -/
def P16218449714647161073.Spec : Prop :=
  ∀ n, (P16218449714647161073.a n : ℤ) = A023700 (n + 1)

end A023700

/-! ## A023700.P4067097984694528812

`eq[2, A160385(A023709(n+1))-A062756(n)]`
-/

namespace A023700.P4067097984694528812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A023709 (n + 1)).toNat - A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023700.P4067097984694528812

namespace A023700

/-- `eq[2, A160385(A023709(n+1))-A062756(n)]` -/
def P4067097984694528812.Spec : Prop :=
  ∀ n, (P4067097984694528812.a n : ℤ) = A023700 (n + 1)

end A023700

/-!
# A023701: Numbers with exactly 3 2's in their ternary expansion.

The programs for A023701, the canonical program `A023701.P16744175443296012392` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023701 has offset 1).

The definition of A023701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023701.P11678336647024817929

`eq[8, abs(A117942(n))]`
-/

namespace A023701.P11678336647024817929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P11678336647024817929

namespace A023701

/-- `eq[8, abs(A117942(n))]` -/
def P11678336647024817929.Spec : Prop :=
  ∀ n, (P11678336647024817929.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P16744175443296012392

`eq[3, val(A006047(n), 3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023701

/-- `eq[3, val(A006047(n), 3)]` -/
def P16744175443296012392.Spec : Prop :=
  ∀ n, (P16744175443296012392.a n : ℤ) = A023701 (n + 1)

theorem P16744175443296012392.correct : P16744175443296012392.Spec := by
  intro n
  simp only [A023701, Nat.add_sub_cancel]

end A023701

/-! ## A023701.P6521511615160417722

`eq[7, A006530(A206424(n))]`
-/

namespace A023701.P6521511615160417722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A206424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P6521511615160417722

namespace A023701

/-- `eq[7, A006530(A206424(n))]` -/
def P6521511615160417722.Spec : Prop :=
  ∀ n, (P6521511615160417722.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P3255512029421707188

`eq[1, A000120(A227428(n))-2]`
-/

namespace A023701.P3255512029421707188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A227428 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P3255512029421707188

namespace A023701

/-- `eq[1, A000120(A227428(n))-2]` -/
def P3255512029421707188.Spec : Prop :=
  ∀ n, (P3255512029421707188.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P2546278566880983807

`eq[1, A001222(A290092(n))-2]`
-/

namespace A023701.P2546278566880983807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290092 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P2546278566880983807

namespace A023701

/-- `eq[1, A001222(A290092(n))-2]` -/
def P2546278566880983807.Spec : Prop :=
  ∀ n, (P2546278566880983807.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P1456553381537022600

`eq[3, A081603(n)]`
-/

namespace A023701.P1456553381537022600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P1456553381537022600

namespace A023701

/-- `eq[3, A081603(n)]` -/
def P1456553381537022600.Spec : Prop :=
  ∀ n, (P1456553381537022600.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P15273838902399713021

`eq[8, A117592(n)]`
-/

namespace A023701.P15273838902399713021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P15273838902399713021

namespace A023701

/-- `eq[8, A117592(n)]` -/
def P15273838902399713021.Spec : Prop :=
  ∀ n, (P15273838902399713021.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P13957500843827536503

`eq[3, A000120(A289814(n))]`
-/

namespace A023701.P13957500843827536503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P13957500843827536503

namespace A023701

/-- `eq[3, A000120(A289814(n))]` -/
def P13957500843827536503.Spec : Prop :=
  ∀ n, (P13957500843827536503.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P4045295353277148599

`eq[4, A120879(A120879(n))]`
-/

namespace A023701.P4045295353277148599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P4045295353277148599

namespace A023701

/-- `eq[4, A120879(A120879(n))]` -/
def P4045295353277148599.Spec : Prop :=
  ∀ n, (P4045295353277148599.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P14755501627480570535

`eq[1, A062756(A004488(n))-2]`
-/

namespace A023701.P14755501627480570535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P14755501627480570535

namespace A023701

/-- `eq[1, A062756(A004488(n))-2]` -/
def P14755501627480570535.Spec : Prop :=
  ∀ n, (P14755501627480570535.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P15685524989350020706

`eq[1, A062756(A357616(n))-2]`
-/

namespace A023701.P15685524989350020706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P15685524989350020706

namespace A023701

/-- `eq[1, A062756(A357616(n))-2]` -/
def P15685524989350020706.Spec : Prop :=
  ∀ n, (P15685524989350020706.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P13317783107115086654

`eq[1, A001221(A289816(n))-2]`
-/

namespace A023701.P13317783107115086654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289816 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P13317783107115086654

namespace A023701

/-- `eq[1, A001221(A289816(n))-2]` -/
def P13317783107115086654.Spec : Prop :=
  ∀ n, (P13317783107115086654.a n : ℤ) = A023701 (n + 1)

end A023701

/-! ## A023701.P12056588546651158395

`A215090(A045148(n+1))`
-/

namespace A023701.P12056588546651158395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045148 (n + 1)).toNat

end

end A023701.P12056588546651158395

namespace A023701

/-- `A215090(A045148(n+1))` -/
def P12056588546651158395.Spec : Prop :=
  ∀ n, P12056588546651158395.a n = A023701 (n + 1)

end A023701

/-! ## A023701.P9090343196233380130

`eq[3, A160382(A023717(n))]`
-/

namespace A023701.P9090343196233380130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023701.P9090343196233380130

namespace A023701

/-- `eq[3, A160382(A023717(n))]` -/
def P9090343196233380130.Spec : Prop :=
  ∀ n, (P9090343196233380130.a n : ℤ) = A023701 (n + 1)

end A023701

/-!
# A023702: Numbers with exactly 4 2's in their ternary expansion of n.

The programs for A023702, the canonical program `A023702.P11024123370145877327` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023702 has offset 1).

The definition of A023702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023702.P11024123370145877327

`eq[4, val(A006047(n), 3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023702

/-- `eq[4, val(A006047(n), 3)]` -/
def P11024123370145877327.Spec : Prop :=
  ∀ n, (P11024123370145877327.a n : ℤ) = A023702 (n + 1)

theorem P11024123370145877327.correct : P11024123370145877327.Spec := by
  intro n
  simp only [A023702, Nat.add_sub_cancel]

end A023702

/-! ## A023702.P6682372980921406644

`eq[2, A000120(A227428(n))]`
-/

namespace A023702.P6682372980921406644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A227428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P6682372980921406644

namespace A023702

/-- `eq[2, A000120(A227428(n))]` -/
def P6682372980921406644.Spec : Prop :=
  ∀ n, (P6682372980921406644.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P8428807551581080400

`eq[4, A001222(A290092(n))]`
-/

namespace A023702.P8428807551581080400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P8428807551581080400

namespace A023702

/-- `eq[4, A001222(A290092(n))]` -/
def P8428807551581080400.Spec : Prop :=
  ∀ n, (P8428807551581080400.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P13843242575031138994

`eq[8, A001316(A006047(n))]`
-/

namespace A023702.P13843242575031138994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P13843242575031138994

namespace A023702

/-- `eq[8, A001316(A006047(n))]` -/
def P13843242575031138994.Spec : Prop :=
  ∀ n, (P13843242575031138994.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P5470680550125306325

`eq[4, A081603(n)]`
-/

namespace A023702.P5470680550125306325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P5470680550125306325

namespace A023702

/-- `eq[4, A081603(n)]` -/
def P5470680550125306325.Spec : Prop :=
  ∀ n, (P5470680550125306325.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P15506553079538470223

`eq[16, A117592(n)]`
-/

namespace A023702.P15506553079538470223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P15506553079538470223

namespace A023702

/-- `eq[16, A117592(n)]` -/
def P15506553079538470223.Spec : Prop :=
  ∀ n, (P15506553079538470223.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P3572390771417050524

`eq[4, val(A120879(n), 2)]`
-/

namespace A023702.P3572390771417050524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023702.P3572390771417050524

namespace A023702

/-- `eq[4, val(A120879(n), 2)]` -/
def P3572390771417050524.Spec : Prop :=
  ∀ n, (P3572390771417050524.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P12768557843079403950

`eq[11, A006530(A051638(n))]`
-/

namespace A023702.P12768557843079403950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051638 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P12768557843079403950

namespace A023702

/-- `eq[11, A006530(A051638(n))]` -/
def P12768557843079403950.Spec : Prop :=
  ∀ n, (P12768557843079403950.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P18265730430578591229

`eq[2, A000120(A289814(n))-2]`
-/

namespace A023702.P18265730430578591229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P18265730430578591229

namespace A023702

/-- `eq[2, A000120(A289814(n))-2]` -/
def P18265730430578591229.Spec : Prop :=
  ∀ n, (P18265730430578591229.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P10620117574822904921

`eq[2, A062756(A004488(n))-2]`
-/

namespace A023702.P10620117574822904921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P10620117574822904921

namespace A023702

/-- `eq[2, A062756(A004488(n))-2]` -/
def P10620117574822904921.Spec : Prop :=
  ∀ n, (P10620117574822904921.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P5223587987585456028

`eq[2, A062756(A357616(n))-2]`
-/

namespace A023702.P5223587987585456028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A357616 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P5223587987585456028

namespace A023702

/-- `eq[2, A062756(A357616(n))-2]` -/
def P5223587987585456028.Spec : Prop :=
  ∀ n, (P5223587987585456028.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P13446269040760788495

`eq[4, A001221(A289816(n))]`
-/

namespace A023702.P13446269040760788495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P13446269040760788495

namespace A023702

/-- `eq[4, A001221(A289816(n))]` -/
def P13446269040760788495.Spec : Prop :=
  ∀ n, (P13446269040760788495.a n : ℤ) = A023702 (n + 1)

end A023702

/-! ## A023702.P8826012854124103334

`A215090(A045153(n+1))`
-/

namespace A023702.P8826012854124103334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A045153 (n + 1)).toNat

end

end A023702.P8826012854124103334

namespace A023702

/-- `A215090(A045153(n+1))` -/
def P8826012854124103334.Spec : Prop :=
  ∀ n, P8826012854124103334.a n = A023702 (n + 1)

end A023702

/-! ## A023702.P9511503287896664638

`eq[4, A160382(A023717(n))]`
-/

namespace A023702.P9511503287896664638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A023717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023702.P9511503287896664638

namespace A023702

/-- `eq[4, A160382(A023717(n))]` -/
def P9511503287896664638.Spec : Prop :=
  ∀ n, (P9511503287896664638.a n : ℤ) = A023702 (n + 1)

end A023702

/-!
# A023703: Numbers with exactly 5 2's in their ternary expansion.

The programs for A023703, the canonical program `A023703.P2710146166391411195` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023703 has offset 1).

The definition of A023703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023703.P2710146166391411195

`eq[5, dr(A117942(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023703

/-- `eq[5, dr(A117942(n))]` -/
def P2710146166391411195.Spec : Prop :=
  ∀ n, (P2710146166391411195.a n : ℤ) = A023703 (n + 1)

theorem P2710146166391411195.correct : P2710146166391411195.Spec := by
  intro n
  simp only [A023703, Nat.add_sub_cancel]

end A023703

/-! ## A023703.P13450130692965405135

`eq[5, A001222(A290092(n))]`
-/

namespace A023703.P13450130692965405135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P13450130692965405135

namespace A023703

/-- `eq[5, A001222(A290092(n))]` -/
def P13450130692965405135.Spec : Prop :=
  ∀ n, (P13450130692965405135.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P14343497556120344474

`eq[5, A331410(A006047(n))]`
-/

namespace A023703.P14343497556120344474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P14343497556120344474

namespace A023703

/-- `eq[5, A331410(A006047(n))]` -/
def P14343497556120344474.Spec : Prop :=
  ∀ n, (P14343497556120344474.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P11055424069547732762

`eq[5, A081603(n)]`
-/

namespace A023703.P11055424069547732762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P11055424069547732762

namespace A023703

/-- `eq[5, A081603(n)]` -/
def P11055424069547732762.Spec : Prop :=
  ∀ n, (P11055424069547732762.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P14579202541671752749

`eq[32, A117592(n)]`
-/

namespace A023703.P14579202541671752749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P14579202541671752749

namespace A023703

/-- `eq[32, A117592(n)]` -/
def P14579202541671752749.Spec : Prop :=
  ∀ n, (P14579202541671752749.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P15860457507363632288

`eq[5, A000120(A289814(n))]`
-/

namespace A023703.P15860457507363632288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P15860457507363632288

namespace A023703

/-- `eq[5, A000120(A289814(n))]` -/
def P15860457507363632288.Spec : Prop :=
  ∀ n, (P15860457507363632288.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P6650439728887754206

`eq[5, A062756(A004488(n))]`
-/

namespace A023703.P6650439728887754206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P6650439728887754206

namespace A023703

/-- `eq[5, A062756(A004488(n))]` -/
def P6650439728887754206.Spec : Prop :=
  ∀ n, (P6650439728887754206.a n : ℤ) = A023703 (n + 1)

end A023703

/-! ## A023703.P13100164644461136729

`eq[5, A001221(A289816(n))]`
-/

namespace A023703.P13100164644461136729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023703.P13100164644461136729

namespace A023703

/-- `eq[5, A001221(A289816(n))]` -/
def P13100164644461136729.Spec : Prop :=
  ∀ n, (P13100164644461136729.a n : ℤ) = A023703 (n + 1)

end A023703

/-!
# A023704: Numbers with exactly 6 2's in their ternary expansion.

The programs for A023704, the canonical program `A023704.P10335352415820928381` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023704 has offset 1).

The definition of A023704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023704.P10335352415820928381

`eq[8, sqrt(A117592(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023704

/-- `eq[8, sqrt(A117592(n))]` -/
def P10335352415820928381.Spec : Prop :=
  ∀ n, (P10335352415820928381.a n : ℤ) = A023704 (n + 1)

theorem P10335352415820928381.correct : P10335352415820928381.Spec := by
  intro n
  simp only [A023704, Nat.add_sub_cancel]

end A023704

/-!
# A023705: Numbers with no 0's in base-4 expansion.

The programs for A023705, the canonical program `A023705.P247471515550585891` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023705 has offset 1).

The definition of A023705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023705.P247471515550585891

`record[A263132(val(n+1, 4)²+1)+n]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023705

/-- `record[A263132(val(n+1, 4)²+1)+n]` -/
def P247471515550585891.Spec : Prop :=
  ∀ n, P247471515550585891.a n = A023705 (n + 1)

theorem P247471515550585891.correct : P247471515550585891.Spec := by
  intro n
  simp only [A023705, Nat.add_sub_cancel]

end A023705

/-! ## A023705.P5624652759669095681

`lt[n*A292370(n), n]`
-/

namespace A023705.P5624652759669095681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023705.P5624652759669095681

namespace A023705

/-- `lt[n*A292370(n), n]` -/
def P5624652759669095681.Spec : Prop :=
  ∀ n, (P5624652759669095681.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P542161219254947293

`eq[n, n-A292370(n+1)]+1`
-/

namespace A023705.P542161219254947293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023705.P542161219254947293

namespace A023705

/-- `eq[n, n-A292370(n+1)]+1` -/
def P542161219254947293.Spec : Prop :=
  ∀ n, (P542161219254947293.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P9400798968349443098

`eq[1, A292370(2*n)]/2`
-/

namespace A023705.P9400798968349443098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A023705.P9400798968349443098

namespace A023705

/-- `eq[1, A292370(2*n)]/2` -/
def P9400798968349443098.Spec : Prop :=
  ∀ n, P9400798968349443098.a n = (A023705 (n + 1) : ℚ)

end A023705

/-! ## A023705.P12753564764089949745

`eq[A286100(n+1), A292370(n)]`
-/

namespace A023705.P12753564764089949745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P12753564764089949745

namespace A023705

/-- `eq[A286100(n+1), A292370(n)]` -/
def P12753564764089949745.Spec : Prop :=
  ∀ n, (P12753564764089949745.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P9881635003370471868

`lt[0, A309954(n)]`
-/

namespace A023705.P9881635003370471868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023705.P9881635003370471868

namespace A023705

/-- `lt[0, A309954(n)]` -/
def P9881635003370471868.Spec : Prop :=
  ∀ n, (P9881635003370471868.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P17172056167205840845

`lt[n*A160380(n), n]`
-/

namespace A023705.P17172056167205840845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160380 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023705.P17172056167205840845

namespace A023705

/-- `lt[n*A160380(n), n]` -/
def P17172056167205840845.Spec : Prop :=
  ∀ n, (P17172056167205840845.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P7197438158067164148

`eq[A110591(n), A160385(n)]`
-/

namespace A023705.P7197438158067164148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P7197438158067164148

namespace A023705

/-- `eq[A110591(n), A160385(n)]` -/
def P7197438158067164148.Spec : Prop :=
  ∀ n, (P7197438158067164148.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P8687284757184191319

`eq[A110591(n), A215883(n)]`
-/

namespace A023705.P8687284757184191319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P8687284757184191319

namespace A023705

/-- `eq[A110591(n), A215883(n)]` -/
def P8687284757184191319.Spec : Prop :=
  ∀ n, (P8687284757184191319.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P5694665235616611636

`eq[A088440(n), A277872(n)]`
-/

namespace A023705.P5694665235616611636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P5694665235616611636

namespace A023705

/-- `eq[A088440(n), A277872(n)]` -/
def P5694665235616611636.Spec : Prop :=
  ∀ n, (P5694665235616611636.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P6482161539270357528

`eq[A115517(n), A277872(n)]`
-/

namespace A023705.P6482161539270357528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P6482161539270357528

namespace A023705

/-- `eq[A115517(n), A277872(n)]` -/
def P6482161539270357528.Spec : Prop :=
  ∀ n, (P6482161539270357528.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P9866717702325656355

`eq[A309954(n), A338854(n)]`
-/

namespace A023705.P9866717702325656355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P9866717702325656355

namespace A023705

/-- `eq[A309954(n), A338854(n)]` -/
def P9866717702325656355.Spec : Prop :=
  ∀ n, (P9866717702325656355.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P9568527178379484470

`eq[A118112(n+1), A160380(n)]`
-/

namespace A023705.P9568527178379484470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P9568527178379484470

namespace A023705

/-- `eq[A118112(n+1), A160380(n)]` -/
def P9568527178379484470.Spec : Prop :=
  ∀ n, (P9568527178379484470.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P9888618593910487347

`eq[A118112(n+1), A292370(n)]`
-/

namespace A023705.P9888618593910487347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P9888618593910487347

namespace A023705

/-- `eq[A118112(n+1), A292370(n)]` -/
def P9888618593910487347.Spec : Prop :=
  ∀ n, (P9888618593910487347.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P4776320174887139071

`eq[A160380(n), A286100(n+1)]`
-/

namespace A023705.P4776320174887139071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P4776320174887139071

namespace A023705

/-- `eq[A160380(n), A286100(n+1)]` -/
def P4776320174887139071.Spec : Prop :=
  ∀ n, (P4776320174887139071.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P17186243077499532090

`eq[A204118(n+1), A277872(n)]`
-/

namespace A023705.P17186243077499532090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P17186243077499532090

namespace A023705

/-- `eq[A204118(n+1), A277872(n)]` -/
def P17186243077499532090.Spec : Prop :=
  ∀ n, (P17186243077499532090.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P1010029586433422121

`eq[A204120(n+1), A277872(n)]`
-/

namespace A023705.P1010029586433422121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P1010029586433422121

namespace A023705

/-- `eq[A204120(n+1), A277872(n)]` -/
def P1010029586433422121.Spec : Prop :=
  ∀ n, (P1010029586433422121.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P2184983071639385440

`eq[A292370(n), A350872(n+1)]`
-/

namespace A023705.P2184983071639385440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P2184983071639385440

namespace A023705

/-- `eq[A292370(n), A350872(n+1)]` -/
def P2184983071639385440.Spec : Prop :=
  ∀ n, (P2184983071639385440.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P8027199483673964058

`eq[n, A028310(n-A160380(n))]`
-/

namespace A023705.P8027199483673964058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A160380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023705.P8027199483673964058

namespace A023705

/-- `eq[n, A028310(n-A160380(n))]` -/
def P8027199483673964058.Spec : Prop :=
  ∀ n, (P8027199483673964058.a n : ℤ) = A023705 (n + 1)

end A023705

/-! ## A023705.P8846350496958056818

`eq[n*A160380(n), A000007(n)]`
-/

namespace A023705.P8846350496958056818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023705.P8846350496958056818

namespace A023705

/-- `eq[n*A160380(n), A000007(n)]` -/
def P8846350496958056818.Spec : Prop :=
  ∀ n, (P8846350496958056818.a n : ℤ) = A023705 (n + 1)

end A023705

/-!
# A023706: Numbers with a single 0 in their base 4 expansion.

The programs for A023706, the canonical program `A023706.P12195947765526675273` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023706 has offset 1).

The definition of A023706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023706.P18088841206451509112

`∪[A043333(n+1), A004935(n)]`
-/

namespace A023706.P18088841206451509112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023706.P18088841206451509112

namespace A023706

/-- `∪[A043333(n+1), A004935(n)]` -/
def P18088841206451509112.Spec : Prop :=
  ∀ n, (P18088841206451509112.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P18178205949050779494

`∪[A043333(n+1), A115828(n)]`
-/

namespace A023706.P18178205949050779494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023706.P18178205949050779494

namespace A023706

/-- `∪[A043333(n+1), A115828(n)]` -/
def P18178205949050779494.Spec : Prop :=
  ∀ n, (P18178205949050779494.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P6360913845009293287

`eq[n, n*A000120(A292370(n))]`
-/

namespace A023706.P6360913845009293287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 (A292370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P6360913845009293287

namespace A023706

/-- `eq[n, n*A000120(A292370(n))]` -/
def P6360913845009293287.Spec : Prop :=
  ∀ n, (P6360913845009293287.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P12195947765526675273

`eq[n, n*A139352(A334076(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023706

/-- `eq[n, n*A139352(A334076(n))]` -/
def P12195947765526675273.Spec : Prop :=
  ∀ n, (P12195947765526675273.a n : ℤ) = A023706 (n + 1)

theorem P12195947765526675273.correct : P12195947765526675273.Spec := by
  intro n
  simp only [A023706, Nat.add_sub_cancel]

end A023706

/-! ## A023706.P2273815515353661843

`eq[n, n*A160380(n)]`
-/

namespace A023706.P2273815515353661843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P2273815515353661843

namespace A023706

/-- `eq[n, n*A160380(n)]` -/
def P2273815515353661843.Spec : Prop :=
  ∀ n, (P2273815515353661843.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P16677618068690769188

`eq[A160380(n), A294619(n)]`
-/

namespace A023706.P16677618068690769188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P16677618068690769188

namespace A023706

/-- `eq[A160380(n), A294619(n)]` -/
def P16677618068690769188.Spec : Prop :=
  ∀ n, (P16677618068690769188.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P17872622445088985504

`eq[A160385(n)+1, A110591(n)]`
-/

namespace A023706.P17872622445088985504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P17872622445088985504

namespace A023706

/-- `eq[A160385(n)+1, A110591(n)]` -/
def P17872622445088985504.Spec : Prop :=
  ∀ n, (P17872622445088985504.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P9036648157594948542

`eq[A132126(n+1), A160380(n)]`
-/

namespace A023706.P9036648157594948542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P9036648157594948542

namespace A023706

/-- `eq[A132126(n+1), A160380(n)]` -/
def P9036648157594948542.Spec : Prop :=
  ∀ n, (P9036648157594948542.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P2506043268015219352

`eq[A160380(n)+1, A078832(n+1)]`
-/

namespace A023706.P2506043268015219352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P2506043268015219352

namespace A023706

/-- `eq[A160380(n)+1, A078832(n+1)]` -/
def P2506043268015219352.Spec : Prop :=
  ∀ n, (P2506043268015219352.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P5945537512602013249

`eq[1, A160380(n-A160380(a(n-1)))]` with `a(0)=1`
-/

namespace A023706.P5945537512602013249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A160380 ((n : ℤ) - A160380 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P5945537512602013249

namespace A023706

/-- `eq[1, A160380(n-A160380(a(n-1)))]` -/
def P5945537512602013249.Spec : Prop :=
  ∀ n, (P5945537512602013249.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P13924993523242452519

`eq[A016921(n)^A160380(n), A016921(n)]`
-/

namespace A023706.P13924993523242452519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 n : ℚ) ^ (A160380 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A023706.P13924993523242452519

namespace A023706

/-- `eq[A016921(n)^A160380(n), A016921(n)]` -/
def P13924993523242452519.Spec : Prop :=
  ∀ n, (P13924993523242452519.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P3037264126638791722

`eq[A019565(n)^A160380(n), A019565(n)]`
-/

namespace A023706.P3037264126638791722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019565 n : ℚ) ^ (A160380 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A023706.P3037264126638791722

namespace A023706

/-- `eq[A019565(n)^A160380(n), A019565(n)]` -/
def P3037264126638791722.Spec : Prop :=
  ∀ n, (P3037264126638791722.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P17141916283782494439

`eq[A000120(A292370(n))+1, A078832(n+1)]`
-/

namespace A023706.P17141916283782494439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292370 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P17141916283782494439

namespace A023706

/-- `eq[A000120(A292370(n))+1, A078832(n+1)]` -/
def P17141916283782494439.Spec : Prop :=
  ∀ n, (P17141916283782494439.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P11690451221624243086

`eq[A139352(A334076(n))+1, A078832(n+1)]`
-/

namespace A023706.P11690451221624243086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A334076 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023706.P11690451221624243086

namespace A023706

/-- `eq[A139352(A334076(n))+1, A078832(n+1)]` -/
def P11690451221624243086.Spec : Prop :=
  ∀ n, (P11690451221624243086.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P15353139272116707315

`eq[A047791(n+1)^A160380(n), A047791(n+1)]`
-/

namespace A023706.P15353139272116707315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047791 (n + 1) : ℚ) ^ (A160380 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A023706.P15353139272116707315

namespace A023706

/-- `eq[A047791(n+1)^A160380(n), A047791(n+1)]` -/
def P15353139272116707315.Spec : Prop :=
  ∀ n, (P15353139272116707315.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P10210627989180247507

`eq[n, n*A160381(A256294(n))]`
-/

namespace A023706.P10210627989180247507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160381 (A256294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P10210627989180247507

namespace A023706

/-- `eq[n, n*A160381(A256294(n))]` -/
def P10210627989180247507.Spec : Prop :=
  ∀ n, (P10210627989180247507.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P9308621173953233275

`A303787(A045206(n+1))`
-/

namespace A023706.P9308621173953233275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045206 (n + 1)).toNat

end

end A023706.P9308621173953233275

namespace A023706

/-- `A303787(A045206(n+1))` -/
def P9308621173953233275.Spec : Prop :=
  ∀ n, P9308621173953233275.a n = A023706 (n + 1)

end A023706

/-! ## A023706.P8915747637040425819

`eq[n, n*A055641(A007090(n))]`
-/

namespace A023706.P8915747637040425819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P8915747637040425819

namespace A023706

/-- `eq[n, n*A055641(A007090(n))]` -/
def P8915747637040425819.Spec : Prop :=
  ∀ n, (P8915747637040425819.a n : ℤ) = A023706 (n + 1)

end A023706

/-! ## A023706.P8568400686339489758

`eq[n, n*A055641(A007284(n))]`
-/

namespace A023706.P8568400686339489758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (A007284 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023706.P8568400686339489758

namespace A023706

/-- `eq[n, n*A055641(A007284(n))]` -/
def P8568400686339489758.Spec : Prop :=
  ∀ n, (P8568400686339489758.a n : ℤ) = A023706 (n + 1)

end A023706

/-!
# A023707: Numbers with exactly 2 0's in their base 4 expansion.

The programs for A023707, the canonical program `A023707.P12285787741113753776` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023707 has offset 1).

The definition of A023707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023707.P10342177783752442912

`eq[2, A160380(n)]`
-/

namespace A023707.P10342177783752442912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023707.P10342177783752442912

namespace A023707

/-- `eq[2, A160380(n)]` -/
def P10342177783752442912.Spec : Prop :=
  ∀ n, (P10342177783752442912.a n : ℤ) = A023707 (n + 1)

end A023707

/-! ## A023707.P12285787741113753776

`eq[A160385(n)+2, A110591(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023707

/-- `eq[A160385(n)+2, A110591(n)]` -/
def P12285787741113753776.Spec : Prop :=
  ∀ n, (P12285787741113753776.a n : ℤ) = A023707 (n + 1)

theorem P12285787741113753776.correct : P12285787741113753776.Spec := by
  intro n
  simp only [A023707, Nat.add_sub_cancel]

end A023707

/-! ## A023707.P9748064728327751056

`eq[A000120(A292370(n)), A078832(n+1)]`
-/

namespace A023707.P9748064728327751056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023707.P9748064728327751056

namespace A023707

/-- `eq[A000120(A292370(n)), A078832(n+1)]` -/
def P9748064728327751056.Spec : Prop :=
  ∀ n, (P9748064728327751056.a n : ℤ) = A023707 (n + 1)

end A023707

/-! ## A023707.P6541997243099526281

`eq[A078832(n+1), A139352(A334076(n))]`
-/

namespace A023707.P6541997243099526281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A334076 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023707.P6541997243099526281

namespace A023707

/-- `eq[A078832(n+1), A139352(A334076(n))]` -/
def P6541997243099526281.Spec : Prop :=
  ∀ n, (P6541997243099526281.a n : ℤ) = A023707 (n + 1)

end A023707

/-! ## A023707.P1351880623042465082

`eq[A160385(n)+2, A160385(A003817(n))]`
-/

namespace A023707.P1351880623042465082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023707.P1351880623042465082

namespace A023707

/-- `eq[A160385(n)+2, A160385(A003817(n))]` -/
def P1351880623042465082.Spec : Prop :=
  ∀ n, (P1351880623042465082.a n : ℤ) = A023707 (n + 1)

end A023707

/-! ## A023707.P95759364380688023

`A303787(A045210(n+1))`
-/

namespace A023707.P95759364380688023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045210 (n + 1)).toNat

end

end A023707.P95759364380688023

namespace A023707

/-- `A303787(A045210(n+1))` -/
def P95759364380688023.Spec : Prop :=
  ∀ n, P95759364380688023.a n = A023707 (n + 1)

end A023707

/-!
# A023708: Numbers with exactly 3 0's in their base 4 expansion.

The programs for A023708, the canonical program `A023708.P16351005740160143642` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023708 has offset 1).

The definition of A023708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023708.P16351005740160143642

`eq[3, A160380(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023708

/-- `eq[3, A160380(n)]` -/
def P16351005740160143642.Spec : Prop :=
  ∀ n, (P16351005740160143642.a n : ℤ) = A023708 (n + 1)

theorem P16351005740160143642.correct : P16351005740160143642.Spec := by
  intro n
  simp only [A023708, Nat.add_sub_cancel]

end A023708

/-! ## A023708.P6923617500071700232

`eq[3, A160381(A256294(n))]`
-/

namespace A023708.P6923617500071700232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A256294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023708.P6923617500071700232

namespace A023708

/-- `eq[3, A160381(A256294(n))]` -/
def P6923617500071700232.Spec : Prop :=
  ∀ n, (P6923617500071700232.a n : ℤ) = A023708 (n + 1)

end A023708

/-! ## A023708.P13869171481868733238

`A303787(A045214(n+1))`
-/

namespace A023708.P13869171481868733238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045214 (n + 1)).toNat

end

end A023708.P13869171481868733238

namespace A023708

/-- `A303787(A045214(n+1))` -/
def P13869171481868733238.Spec : Prop :=
  ∀ n, P13869171481868733238.a n = A023708 (n + 1)

end A023708

/-! ## A023708.P18021594104486091906

`record[A054576(A043336(n+1))]`
-/

namespace A023708.P18021594104486091906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A043336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023708.P18021594104486091906

namespace A023708

/-- `record[A054576(A043336(n+1))]` -/
def P18021594104486091906.Spec : Prop :=
  ∀ n, P18021594104486091906.a n = A023708 (n + 1)

end A023708

/-!
# A023709: Numbers with no 1's in their base 4 expansion.

The programs for A023709, the canonical program `A023709.P5523862533995795831` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023709 has offset 1).

The definition of A023709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023709.P5523862533995795831

`record[floor(n/2)+2*(n-a(floor(n/2)))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023709

/-- `record[floor(n/2)+2*(n-a(floor(n/2)))]` -/
def P5523862533995795831.Spec : Prop :=
  ∀ n, P5523862533995795831.a n = A023709 (n + 1)

theorem P5523862533995795831.correct : P5523862533995795831.Spec := by
  intro n
  simp only [A023709, Nat.add_sub_cancel]

end A023709

/-! ## A023709.P3638695226453492331

`n²%3+4*a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`
-/

namespace A023709.P3638695226453492331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2 % 3 : ℕ) : ℤ) + (4 * a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋))

end

end A023709.P3638695226453492331

namespace A023709

/-- `n²%3+4*a(floor(n/3))+n-3*floor(n/3)` -/
def P3638695226453492331.Spec : Prop :=
  ∀ n, P3638695226453492331.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P1209329278434211582

`eq[0, A292371(n)]`
-/

namespace A023709.P1209329278434211582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023709.P1209329278434211582

namespace A023709

/-- `eq[0, A292371(n)]` -/
def P1209329278434211582.Spec : Prop :=
  ∀ n, (P1209329278434211582.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P17110500740921556939

`lt[A011540(A292371(n)+1), 1]`
-/

namespace A023709.P17110500740921556939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (A292371 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023709.P17110500740921556939

namespace A023709

/-- `lt[A011540(A292371(n)+1), 1]` -/
def P17110500740921556939.Spec : Prop :=
  ∀ n, (P17110500740921556939.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P8817140125903324181

`lt[A051903(A292371(n)+1), 1]`
-/

namespace A023709.P8817140125903324181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A292371 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023709.P8817140125903324181

namespace A023709

/-- `lt[A051903(A292371(n)+1), 1]` -/
def P8817140125903324181.Spec : Prop :=
  ∀ n, (P8817140125903324181.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P3905458595486489785

`lt[A292371(n), A112970(val(n+1, 2))]`
-/

namespace A023709.P3905458595486489785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023709.P3905458595486489785

namespace A023709

/-- `lt[A292371(n), A112970(val(n+1, 2))]` -/
def P3905458595486489785.Spec : Prop :=
  ∀ n, (P3905458595486489785.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P18313521590058265837

`lt[A292371(n), A210964(val(n+1, 2))]`
-/

namespace A023709.P18313521590058265837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023709.P18313521590058265837

namespace A023709

/-- `lt[A292371(n), A210964(val(n+1, 2))]` -/
def P18313521590058265837.Spec : Prop :=
  ∀ n, (P18313521590058265837.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P14665050799836818057

`lt[A158611(floor((A292371(n)+1)/2)+1), 1]`
-/

namespace A023709.P14665050799836818057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (⌊(A292371 n + 1 : ℚ) / 2⌋ + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023709.P14665050799836818057

namespace A023709

/-- `lt[A158611(floor((A292371(n)+1)/2)+1), 1]` -/
def P14665050799836818057.Spec : Prop :=
  ∀ n, (P14665050799836818057.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P10611741871423788512

`lt[A003071(floor((A292371(n)+1)/2)+2), 2]`
-/

namespace A023709.P10611741871423788512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (⌊(A292371 n + 1 : ℚ) / 2⌋ + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023709.P10611741871423788512

namespace A023709

/-- `lt[A003071(floor((A292371(n)+1)/2)+2), 2]` -/
def P10611741871423788512.Spec : Prop :=
  ∀ n, (P10611741871423788512.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P12056443344205459154

`lt[A292371(n), A336472(A001316(n))]`
-/

namespace A023709.P12056443344205459154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336472 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023709.P12056443344205459154

namespace A023709

/-- `lt[A292371(n), A336472(A001316(n))]` -/
def P12056443344205459154.Spec : Prop :=
  ∀ n, (P12056443344205459154.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P15737604253616226489

`lt[A292371(n), A057427(A061395(2*n+3))]`
-/

namespace A023709.P15737604253616226489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A061395 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023709.P15737604253616226489

namespace A023709

/-- `lt[A292371(n), A057427(A061395(2*n+3))]` -/
def P15737604253616226489.Spec : Prop :=
  ∀ n, (P15737604253616226489.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P10349021415563711532

`record[A006015(n)]`
-/

namespace A023709.P10349021415563711532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023709.P10349021415563711532

namespace A023709

/-- `record[A006015(n)]` -/
def P10349021415563711532.Spec : Prop :=
  ∀ n, P10349021415563711532.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P10324631022033185141

`record[A057300(n)]`
-/

namespace A023709.P10324631022033185141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023709.P10324631022033185141

namespace A023709

/-- `record[A057300(n)]` -/
def P10324631022033185141.Spec : Prop :=
  ∀ n, P10324631022033185141.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P8435094986486172891

`record[xor(n, A004468(n))]`
-/

namespace A023709.P8435094986486172891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023709.P8435094986486172891

namespace A023709

/-- `record[xor(n, A004468(n))]` -/
def P8435094986486172891.Spec : Prop :=
  ∀ n, P8435094986486172891.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P8337467955255169781

`eq[n, or(n, A048647(n))]`
-/

namespace A023709.P8337467955255169781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A048647 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023709.P8337467955255169781

namespace A023709

/-- `eq[n, or(n, A048647(n))]` -/
def P8337467955255169781.Spec : Prop :=
  ∀ n, (P8337467955255169781.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P2810164577267989793

`A006015(A023717(n))`
-/

namespace A023709.P2810164577267989793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A023717 n).toNat

end

end A023709.P2810164577267989793

namespace A023709

/-- `A006015(A023717(n))` -/
def P2810164577267989793.Spec : Prop :=
  ∀ n, P2810164577267989793.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P3889023244937936445

`record[A004468(A004468(n))]`
-/

namespace A023709.P3889023244937936445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A004468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023709.P3889023244937936445

namespace A023709

/-- `record[A004468(A004468(n))]` -/
def P3889023244937936445.Spec : Prop :=
  ∀ n, P3889023244937936445.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P4648727752652425474

`A057300(A023713(n+1))`
-/

namespace A023709.P4648727752652425474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A023713 (n + 1)).toNat

end

end A023709.P4648727752652425474

namespace A023709

/-- `A057300(A023713(n+1))` -/
def P4648727752652425474.Spec : Prop :=
  ∀ n, P4648727752652425474.a n = A023709 (n + 1)

end A023709

/-! ## A023709.P5600380505225324395

`eq[A292372(n), A309952(n)]`
-/

namespace A023709.P5600380505225324395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023709.P5600380505225324395

namespace A023709

/-- `eq[A292372(n), A309952(n)]` -/
def P5600380505225324395.Spec : Prop :=
  ∀ n, (P5600380505225324395.a n : ℤ) = A023709 (n + 1)

end A023709

/-! ## A023709.P5445349072702826392

`eq[0, A160381(n)]`
-/

namespace A023709.P5445349072702826392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023709.P5445349072702826392

namespace A023709

/-- `eq[0, A160381(n)]` -/
def P5445349072702826392.Spec : Prop :=
  ∀ n, (P5445349072702826392.a n : ℤ) = A023709 (n + 1)

end A023709

/-!
# A023710: Numbers with a single 1 in their base 4 expansion.

The programs for A023710, there is no canonical definition to state claims against.
-/

/-! ## A023710.P6976747898836258354

`eq[1, A000120(A292371(n))]`
-/

namespace A023710.P6976747898836258354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P6976747898836258354

/-! ## A023710.P9599558173331554833

`eq[2, A001316(2*A292371(n))]`
-/

namespace A023710.P9599558173331554833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P9599558173331554833

/-! ## A023710.P9292200137854371775

`eq[2, A001316(A292371(n)²)]`
-/

namespace A023710.P9292200137854371775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A292371 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P9292200137854371775

/-! ## A023710.P8272069359126656236

`eq[1, A139351(A292272(n))]`
-/

namespace A023710.P8272069359126656236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P8272069359126656236

/-! ## A023710.P7976326319843891602

`eq[1, A160381(n)]`
-/

namespace A023710.P7976326319843891602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P7976326319843891602

/-! ## A023710.P17531261287187163239

`lt[(1-A160381(n+1))², 1]+1`
-/

namespace A023710.P17531261287187163239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A160381 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023710.P17531261287187163239

/-! ## A023710.P17920887882366466185

`eq[A139352(n)+1, A160385(n)]`
-/

namespace A023710.P17920887882366466185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023710.P17920887882366466185

/-! ## A023710.P9341382774507365715

`eq[A160383(n)+1, A139351(n)]`
-/

namespace A023710.P9341382774507365715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023710.P9341382774507365715

/-! ## A023710.P10314569034310885586

`eq[1, A139351(n-A048735(n))]`
-/

namespace A023710.P10314569034310885586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A048735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P10314569034310885586

/-! ## A023710.P10375178530621493151

`eq[1, A160382(A006015(n))]`
-/

namespace A023710.P10375178530621493151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P10375178530621493151

/-! ## A023710.P17863436593368934296

`eq[1, A139352(A213064(n))]`
-/

namespace A023710.P17863436593368934296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P17863436593368934296

/-! ## A023710.P5852443149913036751

`eq[1, A160385(A292371(n)²)]`
-/

namespace A023710.P5852443149913036751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A292371 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P5852443149913036751

/-! ## A023710.P10877474630506032064

`eq[1, A139352(A229763(n)+n)]`
-/

namespace A023710.P10877474630506032064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P10877474630506032064

/-! ## A023710.P17724349999657841654

`eq[A139351(2*n+1), A160385(n)]`
-/

namespace A023710.P17724349999657841654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023710.P17724349999657841654

/-! ## A023710.P3948658066350509209

`A329180(A023714(n+1))`
-/

namespace A023710.P3948658066350509209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A023714 (n + 1)).toNat

end

end A023710.P3948658066350509209

/-! ## A023710.P17760128660172816571

`eq[1, A160383(A004468(n))]`
-/

namespace A023710.P17760128660172816571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P17760128660172816571

/-! ## A023710.P9464543864457457264

`eq[1, A160383(A048647(n))]`
-/

namespace A023710.P9464543864457457264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P9464543864457457264

/-! ## A023710.P5173098713879913195

`eq[1, A160382(A329101(n))]`
-/

namespace A023710.P5173098713879913195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A329101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P5173098713879913195

/-! ## A023710.P2474102501315731728

`eq[1, A160382(A010078(n+1))]`
-/

namespace A023710.P2474102501315731728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023710.P2474102501315731728

/-! ## A023710.P6060983592503052696

`A303787(A045251(n+1))`
-/

namespace A023710.P6060983592503052696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045251 (n + 1)).toNat

end

end A023710.P6060983592503052696

/-!
# A023711: Numbers with exactly 2 1's in their base 4 expansion.

The programs for A023711, there is no canonical definition to state claims against.
-/

/-! ## A023711.P1492729843880835403

`eq[2, A000120(A292371(n))]`
-/

namespace A023711.P1492729843880835403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P1492729843880835403

/-! ## A023711.P2044466333985163404

`eq[2, A139351(A292272(n))]`
-/

namespace A023711.P2044466333985163404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P2044466333985163404

/-! ## A023711.P16406198723418070736

`eq[A139352(n)+2, A160385(n)]`
-/

namespace A023711.P16406198723418070736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023711.P16406198723418070736

/-! ## A023711.P12590611845171041401

`eq[2, A160381(n)]`
-/

namespace A023711.P12590611845171041401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P12590611845171041401

/-! ## A023711.P17859197266481144286

`eq[A160383(n)+2, A139351(n)]`
-/

namespace A023711.P17859197266481144286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023711.P17859197266481144286

/-! ## A023711.P17021596641388643990

`eq[2, A139351(n-A048735(n))]`
-/

namespace A023711.P17021596641388643990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A048735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P17021596641388643990

/-! ## A023711.P13223012510135282650

`eq[A139351(A048735(n))+2, A139351(n)]`
-/

namespace A023711.P13223012510135282650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048735 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023711.P13223012510135282650

/-! ## A023711.P4902890679809374428

`eq[A139351(A048728(n))+2, A139351(n)]`
-/

namespace A023711.P4902890679809374428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023711.P4902890679809374428

/-! ## A023711.P18081939524537876298

`eq[2, A160382(A006015(n))]`
-/

namespace A023711.P18081939524537876298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P18081939524537876298

/-! ## A023711.P3882725922058162679

`eq[2, A139352(A213064(n))]`
-/

namespace A023711.P3882725922058162679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P3882725922058162679

/-! ## A023711.P2355434089561153612

`eq[2, A139352(A229763(n)+n)]`
-/

namespace A023711.P2355434089561153612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P2355434089561153612

/-! ## A023711.P3311539312713893684

`A329180(A023715(n+1))`
-/

namespace A023711.P3311539312713893684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A023715 (n + 1)).toNat

end

end A023711.P3311539312713893684

/-! ## A023711.P14997379606408369208

`eq[2, A160383(A004468(n))]`
-/

namespace A023711.P14997379606408369208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P14997379606408369208

/-! ## A023711.P12278639519183917931

`eq[2, A160383(A048647(n))]`
-/

namespace A023711.P12278639519183917931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P12278639519183917931

/-! ## A023711.P5571528460400827373

`eq[2, A160382(A329101(n))]`
-/

namespace A023711.P5571528460400827373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A329101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P5571528460400827373

/-! ## A023711.P12493635350106459951

`eq[2, A160382(A010078(n+1))]`
-/

namespace A023711.P12493635350106459951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023711.P12493635350106459951

/-! ## A023711.P17252788479634446616

`A303787(A045255(n+1))`
-/

namespace A023711.P17252788479634446616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045255 (n + 1)).toNat

end

end A023711.P17252788479634446616

/-! ## A023711.P12253756247595382138

`lt[(3-A160381(4*n+1))², 1]`
-/

namespace A023711.P12253756247595382138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A160381 (4 * n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023711.P12253756247595382138

/-!
# A023712: Numbers with exactly 3 1's in their base 4 expansion.

The programs for A023712, there is no canonical definition to state claims against.
-/

/-! ## A023712.P2765386926278102152

`eq[3, A000120(A292371(n))]`
-/

namespace A023712.P2765386926278102152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P2765386926278102152

/-! ## A023712.P12033421645749140787

`eq[3, A139351(A292272(n))]`
-/

namespace A023712.P12033421645749140787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P12033421645749140787

/-! ## A023712.P5249902390161248459

`eq[3, A160381(n)]`
-/

namespace A023712.P5249902390161248459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P5249902390161248459

/-! ## A023712.P1842873480841644884

`lt[(3-A160381(n+1))², 1]+1`
-/

namespace A023712.P1842873480841644884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A160381 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023712.P1842873480841644884

/-! ## A023712.P17900132012727528127

`eq[3, A139351(n-A048735(n))]`
-/

namespace A023712.P17900132012727528127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A048735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P17900132012727528127

/-! ## A023712.P4190759302288849086

`eq[3, A000120(A309952(n))-A160382(n)]`
-/

namespace A023712.P4190759302288849086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat - A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P4190759302288849086

/-! ## A023712.P15538388404901677491

`eq[1, A160382(A006015(n))-2]`
-/

namespace A023712.P15538388404901677491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P15538388404901677491

/-! ## A023712.P13637101936961900795

`eq[1, A139352(A213064(n))-2]`
-/

namespace A023712.P13637101936961900795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P13637101936961900795

/-! ## A023712.P1356814700358857744

`A329180(A023716(n+1))`
-/

namespace A023712.P1356814700358857744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A023716 (n + 1)).toNat

end

end A023712.P1356814700358857744

/-! ## A023712.P5146201365466574963

`eq[3, A160382(A329101(n))]`
-/

namespace A023712.P5146201365466574963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A329101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P5146201365466574963

/-! ## A023712.P9140602842238776411

`eq[1, A160383(A004468(n))-2]`
-/

namespace A023712.P9140602842238776411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A004468 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P9140602842238776411

/-! ## A023712.P3720805283351569286

`eq[1, A160383(A048647(n))-2]`
-/

namespace A023712.P3720805283351569286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P3720805283351569286

/-! ## A023712.P5055894259156792029

`eq[1, A160382(A010078(n+1))-2]`
-/

namespace A023712.P5055894259156792029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A010078 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023712.P5055894259156792029

/-! ## A023712.P18057511508615516517

`A303787(A045259(n+1))`
-/

namespace A023712.P18057511508615516517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045259 (n + 1)).toNat

end

end A023712.P18057511508615516517

/-! ## A023712.P2884737757590033682

`record[A025480(A000265(A043340(n+1)))]`
-/

namespace A023712.P2884737757590033682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000265 (A043340 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023712.P2884737757590033682

/-!
# A023713: Numbers with no 2's in their base 4 expansion.

The programs for A023713, the canonical program `A023713.P11918735792945985696` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023713 has offset 1).

The definition of A023713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023713.P5289569301516076448

`record[gcd(n, A292372(n))]`
-/

namespace A023713.P5289569301516076448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292372 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P5289569301516076448

namespace A023713

/-- `record[gcd(n, A292372(n))]` -/
def P5289569301516076448.Spec : Prop :=
  ∀ n, (P5289569301516076448.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P11918735792945985696

`eq[0, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023713

/-- `eq[0, a(floor(n/4))+and(4, n²)/4]` -/
def P11918735792945985696.Spec : Prop :=
  ∀ n, (P11918735792945985696.a n : ℤ) = A023713 (n + 1)

theorem P11918735792945985696.correct : P11918735792945985696.Spec := by
  intro n
  simp only [A023713, Nat.add_sub_cancel]

end A023713

/-! ## A023713.P7201349688795314511

`lt[a(floor(n/4))+and(4, n²)/4, 1]` with `a(0)=0`
-/

namespace A023713.P7201349688795314511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A023713.P7201349688795314511

namespace A023713

/-- `lt[a(floor(n/4))+and(4, n²)/4, 1]` -/
def P7201349688795314511.Spec : Prop :=
  ∀ n, (P7201349688795314511.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P14589997621725220929

`eq[0, A292372(n)]`
-/

namespace A023713.P14589997621725220929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023713.P14589997621725220929

namespace A023713

/-- `eq[0, A292372(n)]` -/
def P14589997621725220929.Spec : Prop :=
  ∀ n, (P14589997621725220929.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P17909198389305891287

`lt[A292372(n), A000034(A292371(n))]`
-/

namespace A023713.P17909198389305891287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P17909198389305891287

namespace A023713

/-- `lt[A292372(n), A000034(A292371(n))]` -/
def P17909198389305891287.Spec : Prop :=
  ∀ n, (P17909198389305891287.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P16448240630096043690

`lt[A292372(n), A172363(A001222(n+1))]`
-/

namespace A023713.P16448240630096043690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172363 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P16448240630096043690

namespace A023713

/-- `lt[A292372(n), A172363(A001222(n+1))]` -/
def P16448240630096043690.Spec : Prop :=
  ∀ n, (P16448240630096043690.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P4555748570596326355

`lt[A292372(n), A284562(A051903(n+1))]`
-/

namespace A023713.P4555748570596326355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P4555748570596326355

namespace A023713

/-- `lt[A292372(n), A284562(A051903(n+1))]` -/
def P4555748570596326355.Spec : Prop :=
  ∀ n, (P4555748570596326355.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P13346131978218329729

`lt[A292372(n), A336643(A336643(n+1))]`
-/

namespace A023713.P13346131978218329729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A336643 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P13346131978218329729

namespace A023713

/-- `lt[A292372(n), A336643(A336643(n+1))]` -/
def P13346131978218329729.Spec : Prop :=
  ∀ n, (P13346131978218329729.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P7083560427208801947

`lt[A292372(n), A057427(A061395(2*n+3))]`
-/

namespace A023713.P7083560427208801947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A061395 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P7083560427208801947

namespace A023713

/-- `lt[A292372(n), A057427(A061395(2*n+3))]` -/
def P7083560427208801947.Spec : Prop :=
  ∀ n, (P7083560427208801947.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P1328623886850691330

`lt[A292372(n), A046601(A001222(3*n+2))]`
-/

namespace A023713.P1328623886850691330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (A001222 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023713.P1328623886850691330

namespace A023713

/-- `lt[A292372(n), A046601(A001222(3*n+2))]` -/
def P1328623886850691330.Spec : Prop :=
  ∀ n, (P1328623886850691330.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P13870784693117750738

`eq[0, val(A268444(n), 3)]`
-/

namespace A023713.P13870784693117750738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023713.P13870784693117750738

namespace A023713

/-- `eq[0, val(A268444(n), 3)]` -/
def P13870784693117750738.Spec : Prop :=
  ∀ n, (P13870784693117750738.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P18242895221251399662

`eq[2, A001316(A268444(n))]`
-/

namespace A023713.P18242895221251399662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023713.P18242895221251399662

namespace A023713

/-- `eq[2, A001316(A268444(n))]` -/
def P18242895221251399662.Spec : Prop :=
  ∀ n, (P18242895221251399662.a n : ℤ) = A023713 (n + 1)

end A023713

/-! ## A023713.P845609901182030549

`record[2*n-or(n, A004468(n))]`
-/

namespace A023713.P845609901182030549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.lor (n : ℤ) (A004468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P845609901182030549

namespace A023713

/-- `record[2*n-or(n, A004468(n))]` -/
def P845609901182030549.Spec : Prop :=
  ∀ n, P845609901182030549.a n = A023713 (n + 1)

end A023713

/-! ## A023713.P7649139311637379674

`record[or(n, 2*n-A057300(n))]`
-/

namespace A023713.P7649139311637379674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((2 * n : ℤ) - A057300 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P7649139311637379674

namespace A023713

/-- `record[or(n, 2*n-A057300(n))]` -/
def P7649139311637379674.Spec : Prop :=
  ∀ n, P7649139311637379674.a n = A023713 (n + 1)

end A023713

/-! ## A023713.P14679576688699914215

`record[A048647(A004468(n))]`
-/

namespace A023713.P14679576688699914215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A004468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P14679576688699914215

namespace A023713

/-- `record[A048647(A004468(n))]` -/
def P14679576688699914215.Spec : Prop :=
  ∀ n, P14679576688699914215.a n = A023713 (n + 1)

end A023713

/-! ## A023713.P12482362316887000504

`record[A006015(A048647(n))]`
-/

namespace A023713.P12482362316887000504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A048647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P12482362316887000504

namespace A023713

/-- `record[A006015(A048647(n))]` -/
def P12482362316887000504.Spec : Prop :=
  ∀ n, P12482362316887000504.a n = A023713 (n + 1)

end A023713

/-! ## A023713.P16602693321231349748

`record[A004468(A057300(n))]`
-/

namespace A023713.P16602693321231349748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A057300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023713.P16602693321231349748

namespace A023713

/-- `record[A004468(A057300(n))]` -/
def P16602693321231349748.Spec : Prop :=
  ∀ n, P16602693321231349748.a n = A023713 (n + 1)

end A023713

/-! ## A023713.P6368858882129314962

`A057300(record[A057300(n)])`
-/

namespace A023713.P6368858882129314962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023713.P6368858882129314962

namespace A023713

/-- `A057300(record[A057300(n)])` -/
def P6368858882129314962.Spec : Prop :=
  ∀ n, P6368858882129314962.a n = A023713 (n + 1)

end A023713

/-!
# A023714: Numbers with a single 2 in their base 4 expansion.

The programs for A023714, the canonical program `A023714.P15276817644264661264` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023714 has offset 1).

The definition of A023714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023714.P15276817644264661264

`eq[1, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023714

/-- `eq[1, a(floor(n/4))+and(4, n²)/4]` -/
def P15276817644264661264.Spec : Prop :=
  ∀ n, (P15276817644264661264.a n : ℤ) = A023714 (n + 1)

theorem P15276817644264661264.correct : P15276817644264661264.Spec := by
  intro n
  simp only [A023714, Nat.add_sub_cancel]

end A023714

/-! ## A023714.P14870158393908083561

`eq[1, A000120(A292372(n))]`
-/

namespace A023714.P14870158393908083561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P14870158393908083561

namespace A023714

/-- `eq[1, A000120(A292372(n))]` -/
def P14870158393908083561.Spec : Prop :=
  ∀ n, (P14870158393908083561.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P5909709616660814676

`eq[1, val(A268444(n), 3)]`
-/

namespace A023714.P5909709616660814676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023714.P5909709616660814676

namespace A023714

/-- `eq[1, val(A268444(n), 3)]` -/
def P5909709616660814676.Spec : Prop :=
  ∀ n, (P5909709616660814676.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P8233834083544661178

`eq[3, A000265(A268444(n))]`
-/

namespace A023714.P8233834083544661178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P8233834083544661178

namespace A023714

/-- `eq[3, A000265(A268444(n))]` -/
def P8233834083544661178.Spec : Prop :=
  ∀ n, (P8233834083544661178.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P3531881422120226694

`eq[2, A001316(A268444(n)-A001316(n))]`
-/

namespace A023714.P3531881422120226694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A268444 n - A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P3531881422120226694

namespace A023714

/-- `eq[2, A001316(A268444(n)-A001316(n))]` -/
def P3531881422120226694.Spec : Prop :=
  ∀ n, (P3531881422120226694.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P4692741127493494949

`eq[1, A319652(A292372(n)²)]`
-/

namespace A023714.P4692741127493494949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A292372 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P4692741127493494949

namespace A023714

/-- `eq[1, A319652(A292372(n)²)]` -/
def P4692741127493494949.Spec : Prop :=
  ∀ n, (P4692741127493494949.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P11682645707996624198

`eq[1, A160382(n)]`
-/

namespace A023714.P11682645707996624198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P11682645707996624198

namespace A023714

/-- `eq[1, A160382(n)]` -/
def P11682645707996624198.Spec : Prop :=
  ∀ n, (P11682645707996624198.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P5688687146618445618

`eq[A139351(n)+1, A160385(n)]`
-/

namespace A023714.P5688687146618445618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023714.P5688687146618445618

namespace A023714

/-- `eq[A139351(n)+1, A160385(n)]` -/
def P5688687146618445618.Spec : Prop :=
  ∀ n, (P5688687146618445618.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P15808376865811530279

`eq[1, val(A338854(n), 2)]`
-/

namespace A023714.P15808376865811530279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023714.P15808376865811530279

namespace A023714

/-- `eq[1, val(A338854(n), 2)]` -/
def P15808376865811530279.Spec : Prop :=
  ∀ n, (P15808376865811530279.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P13649493182078330351

`eq[1, A007814(A338854(n))]`
-/

namespace A023714.P13649493182078330351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P13649493182078330351

namespace A023714

/-- `eq[1, A007814(A338854(n))]` -/
def P13649493182078330351.Spec : Prop :=
  ∀ n, (P13649493182078330351.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P40178886924226704

`eq[1, A139351(A229762(n))]`
-/

namespace A023714.P40178886924226704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P40178886924226704

namespace A023714

/-- `eq[1, A139351(A229762(n))]` -/
def P40178886924226704.Spec : Prop :=
  ∀ n, (P40178886924226704.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P8121086770990946774

`eq[1, A139352(A229763(n))]`
-/

namespace A023714.P8121086770990946774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P8121086770990946774

namespace A023714

/-- `eq[1, A139352(A229763(n))]` -/
def P8121086770990946774.Spec : Prop :=
  ∀ n, (P8121086770990946774.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P15087704361299768513

`eq[A065359(n)+1, A160381(n)]`
-/

namespace A023714.P15087704361299768513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023714.P15087704361299768513

namespace A023714

/-- `eq[A065359(n)+1, A160381(n)]` -/
def P15087704361299768513.Spec : Prop :=
  ∀ n, (P15087704361299768513.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P15909141840430669723

`eq[A160383(n)+1, A139352(n)]`
-/

namespace A023714.P15909141840430669723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023714.P15909141840430669723

namespace A023714

/-- `eq[A160383(n)+1, A139352(n)]` -/
def P15909141840430669723.Spec : Prop :=
  ∀ n, (P15909141840430669723.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P12812007395283965571

`eq[1, A139352(A213064(n)-n)]`
-/

namespace A023714.P12812007395283965571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P12812007395283965571

namespace A023714

/-- `eq[1, A139352(A213064(n)-n)]` -/
def P12812007395283965571.Spec : Prop :=
  ∀ n, (P12812007395283965571.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P14681094320250494650

`lt[A151669(n), A209229(A292372(n))]`
-/

namespace A023714.P14681094320250494650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023714.P14681094320250494650

namespace A023714

/-- `lt[A151669(n), A209229(A292372(n))]` -/
def P14681094320250494650.Spec : Prop :=
  ∀ n, (P14681094320250494650.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P3115865735290610575

`eq[1, A160383(A006015(n))]`
-/

namespace A023714.P3115865735290610575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P3115865735290610575

namespace A023714

/-- `eq[1, A160383(A006015(n))]` -/
def P3115865735290610575.Spec : Prop :=
  ∀ n, (P3115865735290610575.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P11018669816827447831

`eq[1, A160381(A057300(n))]`
-/

namespace A023714.P11018669816827447831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A057300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023714.P11018669816827447831

namespace A023714

/-- `eq[1, A160381(A057300(n))]` -/
def P11018669816827447831.Spec : Prop :=
  ∀ n, (P11018669816827447831.a n : ℤ) = A023714 (n + 1)

end A023714

/-! ## A023714.P6344003643194989403

`A329101(A023710(n+1))`
-/

namespace A023714.P6344003643194989403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A023710 (n + 1)).toNat

end

end A023714.P6344003643194989403

namespace A023714

/-- `A329101(A023710(n+1))` -/
def P6344003643194989403.Spec : Prop :=
  ∀ n, P6344003643194989403.a n = A023714 (n + 1)

end A023714

/-! ## A023714.P5202358323406113110

`A303787(A045281(n+1))`
-/

namespace A023714.P5202358323406113110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045281 (n + 1)).toNat

end

end A023714.P5202358323406113110

namespace A023714

/-- `A303787(A045281(n+1))` -/
def P5202358323406113110.Spec : Prop :=
  ∀ n, P5202358323406113110.a n = A023714 (n + 1)

end A023714

/-!
# A023715: Numbers with exactly 2 2's in their base 4 expansion.

The programs for A023715, the canonical program `A023715.P16739028071736261977` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023715 has offset 1).

The definition of A023715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023715.P16739028071736261977

`eq[2, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023715

/-- `eq[2, a(floor(n/4))+and(4, n²)/4]` -/
def P16739028071736261977.Spec : Prop :=
  ∀ n, (P16739028071736261977.a n : ℤ) = A023715 (n + 1)

theorem P16739028071736261977.correct : P16739028071736261977.Spec := by
  intro n
  simp only [A023715, Nat.add_sub_cancel]

end A023715

/-! ## A023715.P10128193378016912427

`eq[2, A000120(A292372(n))]`
-/

namespace A023715.P10128193378016912427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P10128193378016912427

namespace A023715

/-- `eq[2, A000120(A292372(n))]` -/
def P10128193378016912427.Spec : Prop :=
  ∀ n, (P10128193378016912427.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P5489713359423306712

`eq[2, val(A268444(n), 3)]`
-/

namespace A023715.P5489713359423306712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023715.P5489713359423306712

namespace A023715

/-- `eq[2, val(A268444(n), 3)]` -/
def P5489713359423306712.Spec : Prop :=
  ∀ n, (P5489713359423306712.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P4612377488913171802

`eq[9, A000265(A268444(n))]`
-/

namespace A023715.P4612377488913171802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P4612377488913171802

namespace A023715

/-- `eq[9, A000265(A268444(n))]` -/
def P4612377488913171802.Spec : Prop :=
  ∀ n, (P4612377488913171802.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P11952433874150110574

`eq[2, A160381(n-A006257(n))]`
-/

namespace A023715.P11952433874150110574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P11952433874150110574

namespace A023715

/-- `eq[2, A160381(n-A006257(n))]` -/
def P11952433874150110574.Spec : Prop :=
  ∀ n, (P11952433874150110574.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P170257723678431911

`eq[2, A139352(n-A213370(n))]`
-/

namespace A023715.P170257723678431911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 ((n : ℤ) - A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P170257723678431911

namespace A023715

/-- `eq[2, A139352(n-A213370(n))]` -/
def P170257723678431911.Spec : Prop :=
  ∀ n, (P170257723678431911.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P5967659783224760343

`eq[2, A160382(n)]`
-/

namespace A023715.P5967659783224760343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P5967659783224760343

namespace A023715

/-- `eq[2, A160382(n)]` -/
def P5967659783224760343.Spec : Prop :=
  ∀ n, (P5967659783224760343.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P17400431439614304014

`eq[2, val(A338854(n), 2)]`
-/

namespace A023715.P17400431439614304014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023715.P17400431439614304014

namespace A023715

/-- `eq[2, val(A338854(n), 2)]` -/
def P17400431439614304014.Spec : Prop :=
  ∀ n, (P17400431439614304014.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P10466139751850084462

`eq[2, A160381(A035327(n))]`
-/

namespace A023715.P10466139751850084462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P10466139751850084462

namespace A023715

/-- `eq[2, A160381(A035327(n))]` -/
def P10466139751850084462.Spec : Prop :=
  ∀ n, (P10466139751850084462.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P4995291904301821935

`eq[2, A007814(A338854(n))]`
-/

namespace A023715.P4995291904301821935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P4995291904301821935

namespace A023715

/-- `eq[2, A007814(A338854(n))]` -/
def P4995291904301821935.Spec : Prop :=
  ∀ n, (P4995291904301821935.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P17213073364142937774

`eq[2, A139351(A229762(n))]`
-/

namespace A023715.P17213073364142937774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A229762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P17213073364142937774

namespace A023715

/-- `eq[2, A139351(A229762(n))]` -/
def P17213073364142937774.Spec : Prop :=
  ∀ n, (P17213073364142937774.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P17390340943558235553

`eq[2, A139352(A229763(n))]`
-/

namespace A023715.P17390340943558235553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P17390340943558235553

namespace A023715

/-- `eq[2, A139352(A229763(n))]` -/
def P17390340943558235553.Spec : Prop :=
  ∀ n, (P17390340943558235553.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P6828711321864343867

`eq[A065359(n)+2, A160381(n)]`
-/

namespace A023715.P6828711321864343867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023715.P6828711321864343867

namespace A023715

/-- `eq[A065359(n)+2, A160381(n)]` -/
def P6828711321864343867.Spec : Prop :=
  ∀ n, (P6828711321864343867.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P622234147681680381

`eq[A139351(n)+2, A160385(n)]`
-/

namespace A023715.P622234147681680381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023715.P622234147681680381

namespace A023715

/-- `eq[A139351(n)+2, A160385(n)]` -/
def P622234147681680381.Spec : Prop :=
  ∀ n, (P622234147681680381.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P9477253107487254900

`eq[A160383(n)+2, A139352(n)]`
-/

namespace A023715.P9477253107487254900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023715.P9477253107487254900

namespace A023715

/-- `eq[A160383(n)+2, A139352(n)]` -/
def P9477253107487254900.Spec : Prop :=
  ∀ n, (P9477253107487254900.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P15001043265435461259

`eq[2, A139352(A213064(n)-n)]`
-/

namespace A023715.P15001043265435461259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P15001043265435461259

namespace A023715

/-- `eq[2, A139352(A213064(n)-n)]` -/
def P15001043265435461259.Spec : Prop :=
  ∀ n, (P15001043265435461259.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P15513739492346607092

`eq[2, A160383(A006015(n))]`
-/

namespace A023715.P15513739492346607092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P15513739492346607092

namespace A023715

/-- `eq[2, A160383(A006015(n))]` -/
def P15513739492346607092.Spec : Prop :=
  ∀ n, (P15513739492346607092.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P17056117547125744990

`eq[2, A160381(A057300(n))]`
-/

namespace A023715.P17056117547125744990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A057300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023715.P17056117547125744990

namespace A023715

/-- `eq[2, A160381(A057300(n))]` -/
def P17056117547125744990.Spec : Prop :=
  ∀ n, (P17056117547125744990.a n : ℤ) = A023715 (n + 1)

end A023715

/-! ## A023715.P10738377459134725287

`A329101(A023711(n+1))`
-/

namespace A023715.P10738377459134725287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A023711 (n + 1)).toNat

end

end A023715.P10738377459134725287

namespace A023715

/-- `A329101(A023711(n+1))` -/
def P10738377459134725287.Spec : Prop :=
  ∀ n, P10738377459134725287.a n = A023715 (n + 1)

end A023715

/-! ## A023715.P11601702609736070409

`A303787(A045285(n+1))`
-/

namespace A023715.P11601702609736070409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045285 (n + 1)).toNat

end

end A023715.P11601702609736070409

namespace A023715

/-- `A303787(A045285(n+1))` -/
def P11601702609736070409.Spec : Prop :=
  ∀ n, P11601702609736070409.a n = A023715 (n + 1)

end A023715

/-!
# A023716: Numbers with exactly 3 2's in their base 4 expansion.

The programs for A023716, there is no canonical definition to state claims against.
-/

/-! ## A023716.P15954094912912458081

`eq[3, A000120(A292372(n))]`
-/

namespace A023716.P15954094912912458081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P15954094912912458081

/-! ## A023716.P10019875116340638188

`eq[3, val(A268444(n), 3)]`
-/

namespace A023716.P10019875116340638188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023716.P10019875116340638188

/-! ## A023716.P16348147806747923018

`eq[24, A268444(A268444(n))]`
-/

namespace A023716.P16348147806747923018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P16348147806747923018

/-! ## A023716.P2281828818176163372

`eq[3, A160382(n)]`
-/

namespace A023716.P2281828818176163372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P2281828818176163372

/-! ## A023716.P17521186075963223437

`eq[3, A139352(A229763(n))]`
-/

namespace A023716.P17521186075963223437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P17521186075963223437

/-! ## A023716.P8069430642916954365

`eq[1, A160381(A035327(n))-2]`
-/

namespace A023716.P8069430642916954365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A035327 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P8069430642916954365

/-! ## A023716.P7538510393926640647

`eq[1, A007814(A338854(n))-2]`
-/

namespace A023716.P7538510393926640647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A338854 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P7538510393926640647

/-! ## A023716.P9320551345954306118

`eq[1, A139351(A229762(n))-2]`
-/

namespace A023716.P9320551345954306118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A229762 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P9320551345954306118

/-! ## A023716.P11892809136556580154

`eq[1, A160383(A006015(n))-2]`
-/

namespace A023716.P11892809136556580154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006015 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P11892809136556580154

/-! ## A023716.P12676665157511721600

`eq[1, A160381(A057300(n))-2]`
-/

namespace A023716.P12676665157511721600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A057300 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023716.P12676665157511721600

/-! ## A023716.P746448875193540559

`A329101(A023712(n+1))`
-/

namespace A023716.P746448875193540559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A023712 (n + 1)).toNat

end

end A023716.P746448875193540559

/-! ## A023716.P13924687845452214039

`A303787(A045289(n+1))`
-/

namespace A023716.P13924687845452214039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045289 (n + 1)).toNat

end

end A023716.P13924687845452214039

/-!
# A023717: Numbers with no 3's in base-4 expansion.

The programs for A023717, the canonical program `A023717.P12198556756819584732` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023717 has offset 0).

The definition of A023717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023717.P12198556756819584732

`4*a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023717

/-- `4*a(floor(n/3))+n-3*floor(n/3)` -/
def P12198556756819584732.Spec : Prop :=
  ∀ n, P12198556756819584732.a n = A023717 n

theorem P12198556756819584732.correct : P12198556756819584732.Spec := by
  intro n
  simp only [A023717]

end A023717

/-! ## A023717.P10822352435399892088

`record[gcd(n, A292373(n))]`
-/

namespace A023717.P10822352435399892088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A292373 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023717.P10822352435399892088

namespace A023717

/-- `record[gcd(n, A292373(n))]` -/
def P10822352435399892088.Spec : Prop :=
  ∀ n, (P10822352435399892088.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P8990256849931961687

`record[n-A000010(n+1)*A292373(n)]`
-/

namespace A023717.P8990256849931961687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1) * A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023717.P8990256849931961687

namespace A023717

/-- `record[n-A000010(n+1)*A292373(n)]` -/
def P8990256849931961687.Spec : Prop :=
  ∀ n, P8990256849931961687.a n = A023717 n

end A023717

/-! ## A023717.P15516430138750495864

`eq[0, A292373(n)]`
-/

namespace A023717.P15516430138750495864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023717.P15516430138750495864

namespace A023717

/-- `eq[0, A292373(n)]` -/
def P15516430138750495864.Spec : Prop :=
  ∀ n, (P15516430138750495864.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P10951981124837092662

`A163355(record[A163356(n)])`
-/

namespace A023717.P10951981124837092662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023717.P10951981124837092662

namespace A023717

/-- `A163355(record[A163356(n)])` -/
def P10951981124837092662.Spec : Prop :=
  ∀ n, P10951981124837092662.a n = A023717 n

end A023717

/-! ## A023717.P15837700350046668236

`record[and(n, A048647(n))]`
-/

namespace A023717.P15837700350046668236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048647 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023717.P15837700350046668236

namespace A023717

/-- `record[and(n, A048647(n))]` -/
def P15837700350046668236.Spec : Prop :=
  ∀ n, P15837700350046668236.a n = A023717 n

end A023717

/-! ## A023717.P3082718974074867498

`lt[and(n, A057300(n)), 1]`
-/

namespace A023717.P3082718974074867498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057300 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023717.P3082718974074867498

namespace A023717

/-- `lt[and(n, A057300(n)), 1]` -/
def P3082718974074867498.Spec : Prop :=
  ∀ n, (P3082718974074867498.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P10263485516194988628

`eq[0, A059906(and(n, 2*n))]`
-/

namespace A023717.P10263485516194988628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023717.P10263485516194988628

namespace A023717

/-- `eq[0, A059906(and(n, 2*n))]` -/
def P10263485516194988628.Spec : Prop :=
  ∀ n, (P10263485516194988628.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P1589296824322567789

`A004468(record[A057300(n)])`
-/

namespace A023717.P1589296824322567789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023717.P1589296824322567789

namespace A023717

/-- `A004468(record[A057300(n)])` -/
def P1589296824322567789.Spec : Prop :=
  ∀ n, P1589296824322567789.a n = A023717 n

end A023717

/-! ## A023717.P128327269541830207

`A004468(A023709(n+1))`
-/

namespace A023717.P128327269541830207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A023709 (n + 1)).toNat

end

end A023717.P128327269541830207

namespace A023717

/-- `A004468(A023709(n+1))` -/
def P128327269541830207.Spec : Prop :=
  ∀ n, P128327269541830207.a n = A023717 n

end A023717

/-! ## A023717.P18104789002964817037

`eq[A318702(n), A348910(n)]`
-/

namespace A023717.P18104789002964817037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P18104789002964817037

namespace A023717

/-- `eq[A318702(n), A348910(n)]` -/
def P18104789002964817037.Spec : Prop :=
  ∀ n, (P18104789002964817037.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P14519512839996668457

`eq[A318703(n), A348911(n)]`
-/

namespace A023717.P14519512839996668457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P14519512839996668457

namespace A023717

/-- `eq[A318703(n), A348911(n)]` -/
def P14519512839996668457.Spec : Prop :=
  ∀ n, (P14519512839996668457.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P1286305719715826095

`A004468(record[xor(n, A004468(n))])`
-/

namespace A023717.P1286305719715826095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023717.P1286305719715826095

namespace A023717

/-- `A004468(record[xor(n, A004468(n))])` -/
def P1286305719715826095.Spec : Prop :=
  ∀ n, P1286305719715826095.a n = A023717 n

end A023717

/-! ## A023717.P9320365482293737789

`eq[1, A139352(A213370(n))+1]`
-/

namespace A023717.P9320365482293737789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213370 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023717.P9320365482293737789

namespace A023717

/-- `eq[1, A139352(A213370(n))+1]` -/
def P9320365482293737789.Spec : Prop :=
  ∀ n, (P9320365482293737789.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P17706417045735615242

`record[n-A037462(A292373(n)²)]`
-/

namespace A023717.P17706417045735615242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A037462 (A292373 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023717.P17706417045735615242

namespace A023717

/-- `record[n-A037462(A292373(n)²)]` -/
def P17706417045735615242.Spec : Prop :=
  ∀ n, P17706417045735615242.a n = A023717 n

end A023717

/-! ## A023717.P1292006638072105417

`eq[A001316(n), A001316(A309952(n))]`
-/

namespace A023717.P1292006638072105417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A309952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P1292006638072105417

namespace A023717

/-- `eq[A001316(n), A001316(A309952(n))]` -/
def P1292006638072105417.Spec : Prop :=
  ∀ n, (P1292006638072105417.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P9338568127818281959

`eq[A005926(n), A056966(n)]`
-/

namespace A023717.P9338568127818281959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P9338568127818281959

namespace A023717

/-- `eq[A005926(n), A056966(n)]` -/
def P9338568127818281959.Spec : Prop :=
  ∀ n, (P9338568127818281959.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P4568699812425566292

`eq[A014083(n), A056966(n)]`
-/

namespace A023717.P4568699812425566292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P4568699812425566292

namespace A023717

/-- `eq[A014083(n), A056966(n)]` -/
def P4568699812425566292.Spec : Prop :=
  ∀ n, (P4568699812425566292.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P6608116485285043146

`eq[A056966(n), A085121(n)]`
-/

namespace A023717.P6608116485285043146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P6608116485285043146

namespace A023717

/-- `eq[A056966(n), A085121(n)]` -/
def P6608116485285043146.Spec : Prop :=
  ∀ n, (P6608116485285043146.a n : ℤ) = A023717 n

end A023717

/-! ## A023717.P16082327638763797561

`eq[A000120(n), A160385(n)]`
-/

namespace A023717.P16082327638763797561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023717.P16082327638763797561

namespace A023717

/-- `eq[A000120(n), A160385(n)]` -/
def P16082327638763797561.Spec : Prop :=
  ∀ n, (P16082327638763797561.a n : ℤ) = A023717 n

end A023717

/-!
# A023718: Numbers with a single 3 in their base 4 expansion.

The programs for A023718, the canonical program `A023718.P12193516711797339017` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023718 has offset 1).

The definition of A023718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023718.P12193516711797339017

`eq[0, a(floor(n/4))-A121262(n+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023718

/-- `eq[0, a(floor(n/4))-A121262(n+1)]` -/
def P12193516711797339017.Spec : Prop :=
  ∀ n, (P12193516711797339017.a n : ℤ) = A023718 (n + 1)

theorem P12193516711797339017.correct : P12193516711797339017.Spec := by
  intro n
  simp only [A023718, Nat.add_sub_cancel]

end A023718

/-! ## A023718.P2248994943311317654

`eq[1, A000120(A292373(n))]`
-/

namespace A023718.P2248994943311317654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P2248994943311317654

namespace A023718

/-- `eq[1, A000120(A292373(n))]` -/
def P2248994943311317654.Spec : Prop :=
  ∀ n, (P2248994943311317654.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P6563405691369471263

`eq[2, A001316(A292373(n)²)]`
-/

namespace A023718.P6563405691369471263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A292373 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P6563405691369471263

namespace A023718

/-- `eq[2, A001316(A292373(n)²)]` -/
def P6563405691369471263.Spec : Prop :=
  ∀ n, (P6563405691369471263.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P14569495912286166374

`eq[2, A001316(2*A292373(n))]`
-/

namespace A023718.P14569495912286166374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P14569495912286166374

namespace A023718

/-- `eq[2, A001316(2*A292373(n))]` -/
def P14569495912286166374.Spec : Prop :=
  ∀ n, (P14569495912286166374.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P17142926535091249991

`lt[A209229(n), A209229(A292373(n))]`
-/

namespace A023718.P17142926535091249991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023718.P17142926535091249991

namespace A023718

/-- `lt[A209229(n), A209229(A292373(n))]` -/
def P17142926535091249991.Spec : Prop :=
  ∀ n, (P17142926535091249991.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P1915974529752254209

`eq[1, A139351(n-A292272(n))]`
-/

namespace A023718.P1915974529752254209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P1915974529752254209

namespace A023718

/-- `eq[1, A139351(n-A292272(n))]` -/
def P1915974529752254209.Spec : Prop :=
  ∀ n, (P1915974529752254209.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P10029330119606958524

`eq[1, A139352(A213370(n))]`
-/

namespace A023718.P10029330119606958524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P10029330119606958524

namespace A023718

/-- `eq[1, A139352(A213370(n))]` -/
def P10029330119606958524.Spec : Prop :=
  ∀ n, (P10029330119606958524.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P1648023779342383895

`eq[A160385(n)+1, A000120(n)]`
-/

namespace A023718.P1648023779342383895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P1648023779342383895

namespace A023718

/-- `eq[A160385(n)+1, A000120(n)]` -/
def P1648023779342383895.Spec : Prop :=
  ∀ n, (P1648023779342383895.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P10339238714106014537

`eq[A160382(n)+1, A139352(n)]`
-/

namespace A023718.P10339238714106014537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P10339238714106014537

namespace A023718

/-- `eq[A160382(n)+1, A139352(n)]` -/
def P10339238714106014537.Spec : Prop :=
  ∀ n, (P10339238714106014537.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P5335013240568976856

`eq[A160383(n), A293668(n)]`
-/

namespace A023718.P5335013240568976856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P5335013240568976856

namespace A023718

/-- `eq[A160383(n), A293668(n)]` -/
def P5335013240568976856.Spec : Prop :=
  ∀ n, (P5335013240568976856.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P4813905134610617782

`eq[A160383(n), A329684(n)]`
-/

namespace A023718.P4813905134610617782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P4813905134610617782

namespace A023718

/-- `eq[A160383(n), A329684(n)]` -/
def P4813905134610617782.Spec : Prop :=
  ∀ n, (P4813905134610617782.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P16391852092960115847

`eq[A160383(n), A373565(n)]`
-/

namespace A023718.P16391852092960115847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P16391852092960115847

namespace A023718

/-- `eq[A160383(n), A373565(n)]` -/
def P16391852092960115847.Spec : Prop :=
  ∀ n, (P16391852092960115847.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P10038093672617316075

`eq[A160381(n)+1, A139351(n)]`
-/

namespace A023718.P10038093672617316075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P10038093672617316075

namespace A023718

/-- `eq[A160381(n)+1, A139351(n)]` -/
def P10038093672617316075.Spec : Prop :=
  ∀ n, (P10038093672617316075.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P7064325417113626578

`eq[A160383(n), A283149(n+1)]`
-/

namespace A023718.P7064325417113626578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P7064325417113626578

namespace A023718

/-- `eq[A160383(n), A283149(n+1)]` -/
def P7064325417113626578.Spec : Prop :=
  ∀ n, (P7064325417113626578.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P5177563979543845620

`eq[A005578(A151669(n)), A160383(n)]`
-/

namespace A023718.P5177563979543845620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A151669 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P5177563979543845620

namespace A023718

/-- `eq[A005578(A151669(n)), A160383(n)]` -/
def P5177563979543845620.Spec : Prop :=
  ∀ n, (P5177563979543845620.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P5261561038295461403

`eq[A040883(n)*A160383(n), A040883(n)]`
-/

namespace A023718.P5261561038295461403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040883 n * A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P5261561038295461403

namespace A023718

/-- `eq[A040883(n)*A160383(n), A040883(n)]` -/
def P5261561038295461403.Spec : Prop :=
  ∀ n, (P5261561038295461403.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P8078791300558805375

`eq[1, A139351(A048728(n))]`
-/

namespace A023718.P8078791300558805375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P8078791300558805375

namespace A023718

/-- `eq[1, A139351(A048728(n))]` -/
def P8078791300558805375.Spec : Prop :=
  ∀ n, (P8078791300558805375.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P15678863998800560038

`eq[1, A160381(A006015(n))]`
-/

namespace A023718.P15678863998800560038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023718.P15678863998800560038

namespace A023718

/-- `eq[1, A160381(A006015(n))]` -/
def P15678863998800560038.Spec : Prop :=
  ∀ n, (P15678863998800560038.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P4968744423503460253

`eq[A267590(2*n+1), A267590(2*n)]`
-/

namespace A023718.P4968744423503460253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267590 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267590 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P4968744423503460253

namespace A023718

/-- `eq[A267590(2*n+1), A267590(2*n)]` -/
def P4968744423503460253.Spec : Prop :=
  ∀ n, (P4968744423503460253.a n : ℤ) = A023718 (n + 1)

end A023718

/-! ## A023718.P17370341826584130908

`eq[A267592(2*n)+2, A267592(2*n+1)]`
-/

namespace A023718.P17370341826584130908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267592 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267592 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023718.P17370341826584130908

namespace A023718

/-- `eq[A267592(2*n)+2, A267592(2*n+1)]` -/
def P17370341826584130908.Spec : Prop :=
  ∀ n, (P17370341826584130908.a n : ℤ) = A023718 (n + 1)

end A023718

/-!
# A023719: Numbers with exactly two 3's in their base 4 expansion.

The programs for A023719, the canonical program `A023719.P8815918029191661790` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023719 has offset 1).

The definition of A023719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023719.P11568460953600030182

`eq[2, A000120(A292373(n))]`
-/

namespace A023719.P11568460953600030182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P11568460953600030182

namespace A023719

/-- `eq[2, A000120(A292373(n))]` -/
def P11568460953600030182.Spec : Prop :=
  ∀ n, (P11568460953600030182.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P8815918029191661790

`eq[2, A139351(n-A292272(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023719

/-- `eq[2, A139351(n-A292272(n))]` -/
def P8815918029191661790.Spec : Prop :=
  ∀ n, (P8815918029191661790.a n : ℤ) = A023719 (n + 1)

theorem P8815918029191661790.correct : P8815918029191661790.Spec := by
  intro n
  simp only [A023719, Nat.add_sub_cancel]

end A023719

/-! ## A023719.P1342727464564623961

`eq[2, A139352(A213370(n))]`
-/

namespace A023719.P1342727464564623961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P1342727464564623961

namespace A023719

/-- `eq[2, A139352(A213370(n))]` -/
def P1342727464564623961.Spec : Prop :=
  ∀ n, (P1342727464564623961.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P17843421304834332286

`eq[A063790(n+1), A160383(n)]`
-/

namespace A023719.P17843421304834332286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P17843421304834332286

namespace A023719

/-- `eq[A063790(n+1), A160383(n)]` -/
def P17843421304834332286.Spec : Prop :=
  ∀ n, (P17843421304834332286.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P8922423268476120238

`eq[A072751(n+1), A160383(n)]`
-/

namespace A023719.P8922423268476120238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P8922423268476120238

namespace A023719

/-- `eq[A072751(n+1), A160383(n)]` -/
def P8922423268476120238.Spec : Prop :=
  ∀ n, (P8922423268476120238.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P10462373730489137745

`eq[A104435(n+1), A160383(n)]`
-/

namespace A023719.P10462373730489137745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P10462373730489137745

namespace A023719

/-- `eq[A104435(n+1), A160383(n)]` -/
def P10462373730489137745.Spec : Prop :=
  ∀ n, (P10462373730489137745.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P7190748385503839303

`eq[A160383(n), A165063(n+1)]`
-/

namespace A023719.P7190748385503839303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P7190748385503839303

namespace A023719

/-- `eq[A160383(n), A165063(n+1)]` -/
def P7190748385503839303.Spec : Prop :=
  ∀ n, (P7190748385503839303.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P16142093059300909077

`eq[A160383(n), A185437(n+1)]`
-/

namespace A023719.P16142093059300909077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P16142093059300909077

namespace A023719

/-- `eq[A160383(n), A185437(n+1)]` -/
def P16142093059300909077.Spec : Prop :=
  ∀ n, (P16142093059300909077.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P17109173283333989606

`eq[A160383(n), A236213(n+1)]`
-/

namespace A023719.P17109173283333989606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P17109173283333989606

namespace A023719

/-- `eq[A160383(n), A236213(n+1)]` -/
def P17109173283333989606.Spec : Prop :=
  ∀ n, (P17109173283333989606.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P12726844668197289967

`eq[A293668(n)+1, A160383(n)]`
-/

namespace A023719.P12726844668197289967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P12726844668197289967

namespace A023719

/-- `eq[A293668(n)+1, A160383(n)]` -/
def P12726844668197289967.Spec : Prop :=
  ∀ n, (P12726844668197289967.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P839867445401128802

`eq[A160385(n)+2, A000120(n)]`
-/

namespace A023719.P839867445401128802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P839867445401128802

namespace A023719

/-- `eq[A160385(n)+2, A000120(n)]` -/
def P839867445401128802.Spec : Prop :=
  ∀ n, (P839867445401128802.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P18046061861573105791

`eq[A034077(n+2), A160383(n)]`
-/

namespace A023719.P18046061861573105791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P18046061861573105791

namespace A023719

/-- `eq[A034077(n+2), A160383(n)]` -/
def P18046061861573105791.Spec : Prop :=
  ∀ n, (P18046061861573105791.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P15224055206043400202

`eq[A160381(n)+2, A139351(n)]`
-/

namespace A023719.P15224055206043400202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P15224055206043400202

namespace A023719

/-- `eq[A160381(n)+2, A139351(n)]` -/
def P15224055206043400202.Spec : Prop :=
  ∀ n, (P15224055206043400202.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P7272137457003076041

`eq[A160382(n)+2, A139352(n)]`
-/

namespace A023719.P7272137457003076041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P7272137457003076041

namespace A023719

/-- `eq[A160382(n)+2, A139352(n)]` -/
def P7272137457003076041.Spec : Prop :=
  ∀ n, (P7272137457003076041.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P1480383794249084777

`eq[2, A160383(A151669(n)+n)]`
-/

namespace A023719.P1480383794249084777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A151669 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P1480383794249084777

namespace A023719

/-- `eq[2, A160383(A151669(n)+n)]` -/
def P1480383794249084777.Spec : Prop :=
  ∀ n, (P1480383794249084777.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P17348610149819306875

`eq[A154068(n+4), A160383(n)]`
-/

namespace A023719.P17348610149819306875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154068 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P17348610149819306875

namespace A023719

/-- `eq[A154068(n+4), A160383(n)]` -/
def P17348610149819306875.Spec : Prop :=
  ∀ n, (P17348610149819306875.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P17041379684818028049

`eq[A140966(A151669(n)), A160383(n)]`
-/

namespace A023719.P17041379684818028049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (A151669 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P17041379684818028049

namespace A023719

/-- `eq[A140966(A151669(n)), A160383(n)]` -/
def P17041379684818028049.Spec : Prop :=
  ∀ n, (P17041379684818028049.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P17649563153449526059

`eq[A160383(n), A338854(A338854(n))]`
-/

namespace A023719.P17649563153449526059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023719.P17649563153449526059

namespace A023719

/-- `eq[A160383(n), A338854(A338854(n))]` -/
def P17649563153449526059.Spec : Prop :=
  ∀ n, (P17649563153449526059.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P4982974705908917578

`eq[2, A139351(A048728(n))]`
-/

namespace A023719.P4982974705908917578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P4982974705908917578

namespace A023719

/-- `eq[2, A139351(A048728(n))]` -/
def P4982974705908917578.Spec : Prop :=
  ∀ n, (P4982974705908917578.a n : ℤ) = A023719 (n + 1)

end A023719

/-! ## A023719.P16028078376127104736

`eq[2, A160381(A006015(n))]`
-/

namespace A023719.P16028078376127104736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023719.P16028078376127104736

namespace A023719

/-- `eq[2, A160381(A006015(n))]` -/
def P16028078376127104736.Spec : Prop :=
  ∀ n, (P16028078376127104736.a n : ℤ) = A023719 (n + 1)

end A023719

/-!
# A023720: Numbers with exactly 3 3's in base 4 expansion.

The programs for A023720, there is no canonical definition to state claims against.
-/

/-! ## A023720.P16655095517904487501

`eq[3, A000120(A292373(n))]`
-/

namespace A023720.P16655095517904487501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P16655095517904487501

/-! ## A023720.P736570684439903977

`eq[3, A139352(A213370(n))]`
-/

namespace A023720.P736570684439903977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P736570684439903977

/-! ## A023720.P13165324130054348264

`eq[1, A323907(A338854(n))]`
-/

namespace A023720.P13165324130054348264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P13165324130054348264

/-! ## A023720.P9830925790920902187

`eq[A060296(n), A160383(n)]`
-/

namespace A023720.P9830925790920902187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060296 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P9830925790920902187

/-! ## A023720.P16002691925638677481

`eq[A293668(n)+2, A160383(n)]`
-/

namespace A023720.P16002691925638677481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P16002691925638677481

/-! ## A023720.P17559086841031355024

`eq[A329684(n)+2, A160383(n)]`
-/

namespace A023720.P17559086841031355024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P17559086841031355024

/-! ## A023720.P2033787404708696621

`eq[A373565(n)+2, A160383(n)]`
-/

namespace A023720.P2033787404708696621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P2033787404708696621

/-! ## A023720.P5015206025647820137

`eq[A063790(n+1)+1, A160383(n)]`
-/

namespace A023720.P5015206025647820137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063790 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P5015206025647820137

/-! ## A023720.P4366455084003769149

`eq[A072751(n+1)+1, A160383(n)]`
-/

namespace A023720.P4366455084003769149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072751 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P4366455084003769149

/-! ## A023720.P14662640172031717197

`eq[A104435(n+1)+1, A160383(n)]`
-/

namespace A023720.P14662640172031717197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P14662640172031717197

/-! ## A023720.P15145736347561175803

`eq[A165063(n+1)+1, A160383(n)]`
-/

namespace A023720.P15145736347561175803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P15145736347561175803

/-! ## A023720.P6676165463654327465

`eq[A185437(n+1)+1, A160383(n)]`
-/

namespace A023720.P6676165463654327465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185437 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P6676165463654327465

/-! ## A023720.P3865863631617212273

`eq[A236213(n+1)+1, A160383(n)]`
-/

namespace A023720.P3865863631617212273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P3865863631617212273

/-! ## A023720.P6429458749436660832

`eq[A034077(n+2)+1, A160383(n)]`
-/

namespace A023720.P6429458749436660832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P6429458749436660832

/-! ## A023720.P5249344800638152128

`eq[A283149(n+1)+2, A160383(n)]`
-/

namespace A023720.P5249344800638152128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P5249344800638152128

/-! ## A023720.P16456158134003449287

`eq[A006530(A338854(n)), A160383(n)]`
-/

namespace A023720.P16456158134003449287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338854 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P16456158134003449287

/-! ## A023720.P15903003945918048955

`eq[A140966(A151669(n))+1, A160383(n)]`
-/

namespace A023720.P15903003945918048955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (A151669 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023720.P15903003945918048955

/-! ## A023720.P5461151310145145914

`eq[1, A139351(A048728(n))-2]`
-/

namespace A023720.P5461151310145145914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P5461151310145145914

/-! ## A023720.P11933620477168320802

`eq[1, A160381(A006015(n))-2]`
-/

namespace A023720.P11933620477168320802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P11933620477168320802

/-! ## A023720.P7638642351704805311

`eq[3, A160383(A255589(n))]`
-/

namespace A023720.P7638642351704805311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A255589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023720.P7638642351704805311

/-!
# A023721: Numbers with no 0's in their base-5 expansion.

The programs for A023721, the canonical program `A023721.P11352913858414916130` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023721 has offset 1).

The definition of A023721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3412 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023721.P11352913858414916130

`lt[0, A309956(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023721

/-- `lt[0, A309956(n)]` -/
def P11352913858414916130.Spec : Prop :=
  ∀ n, (P11352913858414916130.a n : ℤ) = A023721 (n + 1)

theorem P11352913858414916130.correct : P11352913858414916130.Spec := by
  intro n
  simp only [A023721, Nat.add_sub_cancel]

end A023721

/-! ## A023721.P9347153285999504265

`record[(n+1)/A277873(n+1)]`
-/

namespace A023721.P9347153285999504265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277873 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023721.P9347153285999504265

namespace A023721

/-- `record[(n+1)/A277873(n+1)]` -/
def P9347153285999504265.Spec : Prop :=
  ∀ n, P9347153285999504265.a n = (A023721 (n + 1) : ℚ)

end A023721

/-! ## A023721.P3459436305297335555

`record[(n+1)%(A309956(n+1)+n+1)]`
-/

namespace A023721.P3459436305297335555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A309956 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023721.P3459436305297335555

namespace A023721

/-- `record[(n+1)%(A309956(n+1)+n+1)]` -/
def P3459436305297335555.Spec : Prop :=
  ∀ n, P3459436305297335555.a n = A023721 (n + 1)

end A023721

/-! ## A023721.P10036085695402554040

`eq[A110592(n), A215884(n)]`
-/

namespace A023721.P10036085695402554040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023721.P10036085695402554040

namespace A023721

/-- `eq[A110592(n), A215884(n)]` -/
def P10036085695402554040.Spec : Prop :=
  ∀ n, (P10036085695402554040.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P7528865195873143354

`eq[A110592(n), A276134(n)]`
-/

namespace A023721.P7528865195873143354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023721.P7528865195873143354

namespace A023721

/-- `eq[A110592(n), A276134(n)]` -/
def P7528865195873143354.Spec : Prop :=
  ∀ n, (P7528865195873143354.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P9689762362073756598

`eq[A309956(n), A338803(n)]`
-/

namespace A023721.P9689762362073756598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023721.P9689762362073756598

namespace A023721

/-- `eq[A309956(n), A338803(n)]` -/
def P9689762362073756598.Spec : Prop :=
  ∀ n, (P9689762362073756598.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P5500379672575245492

`eq[2, A277873(n)+A040734(n)]`
-/

namespace A023721.P5500379672575245492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 n + A040734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023721.P5500379672575245492

namespace A023721

/-- `eq[2, A277873(n)+A040734(n)]` -/
def P5500379672575245492.Spec : Prop :=
  ∀ n, (P5500379672575245492.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P8069631662485071726

`A028900(A084544(n+1))`
-/

namespace A023721.P8069631662485071726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A084544 (n + 1)).toNat

end

end A023721.P8069631662485071726

namespace A023721

/-- `A028900(A084544(n+1))` -/
def P8069631662485071726.Spec : Prop :=
  ∀ n, P8069631662485071726.a n = A023721 (n + 1)

end A023721

/-! ## A023721.P10367045094006552106

`eq[1, A055641(A007091(n))+1]`
-/

namespace A023721.P10367045094006552106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023721.P10367045094006552106

namespace A023721

/-- `eq[1, A055641(A007091(n))+1]` -/
def P10367045094006552106.Spec : Prop :=
  ∀ n, (P10367045094006552106.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P17620850766795485760

`eq[1, A055641(A054047(n))+1]`
-/

namespace A023721.P17620850766795485760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A054047 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023721.P17620850766795485760

namespace A023721

/-- `eq[1, A055641(A054047(n))+1]` -/
def P17620850766795485760.Spec : Prop :=
  ∀ n, (P17620850766795485760.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P10082263256765954730

`eq[1, A055641(A080228(n+1))+1]`
-/

namespace A023721.P10082263256765954730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023721.P10082263256765954730

namespace A023721

/-- `eq[1, A055641(A080228(n+1))+1]` -/
def P10082263256765954730.Spec : Prop :=
  ∀ n, (P10082263256765954730.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P13406855836850286841

`eq[n, n-A055641(A014263(n+1))]`
-/

namespace A023721.P13406855836850286841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055641 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023721.P13406855836850286841

namespace A023721

/-- `eq[n, n-A055641(A014263(n+1))]` -/
def P13406855836850286841.Spec : Prop :=
  ∀ n, (P13406855836850286841.a n : ℤ) = A023721 (n + 1)

end A023721

/-! ## A023721.P14789979968799562926

`lt[A007091(n), A230099(A007091(n))]`
-/

namespace A023721.P14789979968799562926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023721.P14789979968799562926

namespace A023721

/-- `lt[A007091(n), A230099(A007091(n))]` -/
def P14789979968799562926.Spec : Prop :=
  ∀ n, (P14789979968799562926.a n : ℤ) = A023721 (n + 1)

end A023721

/-!
# A023722: Numbers with a single 0 in their base 5 expansion.

The programs for A023722, there is no canonical definition to state claims against.
-/

/-! ## A023722.P17445520754896755836

`∪[A043349(n+1), A016748(n)]`
-/

namespace A023722.P17445520754896755836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023722.P17445520754896755836

/-! ## A023722.P2265713357428465545

`∪[A043349(n+1), A016913(n)]`
-/

namespace A023722.P2265713357428465545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023722.P2265713357428465545

/-! ## A023722.P7133658093837142492

`∪[A016912(n), A043349(n+1)]`
-/

namespace A023722.P7133658093837142492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023722.P7133658093837142492

/-! ## A023722.P8690886808333575912

`A043349(A028310(n))%(2*n+1)²`
-/

namespace A023722.P8690886808333575912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043349 (A028310 n).toNat) ((2 * n + 1) ^ 2 : ℤ)

end

end A023722.P8690886808333575912

/-! ## A023722.P5322309975285979123

`A043349(A028310(n))*A057427(n)`
-/

namespace A023722.P5322309975285979123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (A028310 n).toNat * A057427 n

end

end A023722.P5322309975285979123

/-! ## A023722.P11233093891876278591

`and(A043349(A028310(n)), A057428(n))`
-/

namespace A023722.P11233093891876278591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043349 (A028310 n).toNat) (A057428 n)

end

end A023722.P11233093891876278591

/-! ## A023722.P6544896599026897630

`eq[A276134(n)+1, A110592(n)]`
-/

namespace A023722.P6544896599026897630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023722.P6544896599026897630

/-! ## A023722.P7801761854172818801

`eq[A110592(n), A276134(A016885(n))]`
-/

namespace A023722.P7801761854172818801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023722.P7801761854172818801

/-! ## A023722.P2704219500605737550

`eq[1, A055641(A007091(n))]`
-/

namespace A023722.P2704219500605737550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023722.P2704219500605737550

/-! ## A023722.P4181788903415376473

`eq[1, A055641(A054047(n))]`
-/

namespace A023722.P4181788903415376473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023722.P4181788903415376473

/-! ## A023722.P9512739997219005555

`eq[1, A055641(A080228(n+1))]`
-/

namespace A023722.P9512739997219005555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023722.P9512739997219005555

/-! ## A023722.P15916856518721978430

`eq[1, A055641(A014263(n+1)/2)]`
-/

namespace A023722.P15916856518721978430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023722.P15916856518721978430

/-!
# A023723: Numbers with exactly 2 0's in their base 5 expansion.

The programs for A023723, the canonical program `A023723.P1447336693853563496` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023723 has offset 1).

The definition of A023723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023723.P1447336693853563496

`eq[A276134(n)+2, A110592(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023723

/-- `eq[A276134(n)+2, A110592(n)]` -/
def P1447336693853563496.Spec : Prop :=
  ∀ n, (P1447336693853563496.a n : ℤ) = A023723 (n + 1)

theorem P1447336693853563496.correct : P1447336693853563496.Spec := by
  intro n
  simp only [A023723, Nat.add_sub_cancel]

end A023723

/-! ## A023723.P6323861697243930988

`eq[2, A055641(A007091(n))]`
-/

namespace A023723.P6323861697243930988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023723.P6323861697243930988

namespace A023723

/-- `eq[2, A055641(A007091(n))]` -/
def P6323861697243930988.Spec : Prop :=
  ∀ n, (P6323861697243930988.a n : ℤ) = A023723 (n + 1)

end A023723

/-! ## A023723.P9420156555956994486

`eq[2, A055641(A054047(n))]`
-/

namespace A023723.P9420156555956994486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023723.P9420156555956994486

namespace A023723

/-- `eq[2, A055641(A054047(n))]` -/
def P9420156555956994486.Spec : Prop :=
  ∀ n, (P9420156555956994486.a n : ℤ) = A023723 (n + 1)

end A023723

/-! ## A023723.P1797162774353756468

`eq[2, A055641(A080228(n+1))]`
-/

namespace A023723.P1797162774353756468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023723.P1797162774353756468

namespace A023723

/-- `eq[2, A055641(A080228(n+1))]` -/
def P1797162774353756468.Spec : Prop :=
  ∀ n, (P1797162774353756468.a n : ℤ) = A023723 (n + 1)

end A023723

/-! ## A023723.P296985854385364682

`eq[2, A055641(A014263(n+1)/2)]`
-/

namespace A023723.P296985854385364682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023723.P296985854385364682

namespace A023723

/-- `eq[2, A055641(A014263(n+1)/2)]` -/
def P296985854385364682.Spec : Prop :=
  ∀ n, (P296985854385364682.a n : ℤ) = A023723 (n + 1)

end A023723

/-!
# A023724: Numbers with exactly 3 0's in their base 5 expansion.

The programs for A023724, there is no canonical definition to state claims against.
-/

/-! ## A023724.P17242028077437766114

`A286997(A100846(2*n+1)-A100846(n))`
-/

namespace A023724.P17242028077437766114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286997 (A100846 (2 * n + 1) - A100846 n).toNat

end

end A023724.P17242028077437766114

/-!
# A023725: Numbers with no 1's in their base-5 expansion.

The programs for A023725, there is no canonical definition to state claims against.
-/

/-! ## A023725.P17308631595374528375

`A023729(2*n+1)-A023733(n+1)`
-/

namespace A023725.P17308631595374528375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (2 * n + 1) - A023733 (n + 1)

end

end A023725.P17308631595374528375

/-! ## A023725.P9758423520583201559

`eq[0, A268643(A007091(n))]`
-/

namespace A023725.P9758423520583201559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023725.P9758423520583201559

/-! ## A023725.P8105796483364819319

`lt[A316863(A256305(n)), 1]`
-/

namespace A023725.P8105796483364819319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256305 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023725.P8105796483364819319

/-! ## A023725.P164081992339407750

`eq[0, A193238(A014263(n+1))]`
-/

namespace A023725.P164081992339407750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023725.P164081992339407750

/-! ## A023725.P14491672267897080908

`eq[1, A268643(A054047(n))+1]`
-/

namespace A023725.P14491672267897080908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A054047 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023725.P14491672267897080908

/-! ## A023725.P9369508639322181902

`eq[1, A193238(A072960(n+1))+1]`
-/

namespace A023725.P9369508639322181902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A072960 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023725.P9369508639322181902

/-! ## A023725.P915685227701241365

`eq[1, A268643(A080228(n+1))+1]`
-/

namespace A023725.P915685227701241365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A080228 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023725.P915685227701241365

/-! ## A023725.P3724890501603158111

`eq[A001744(n+1), A004179(A001744(n+1))]`
-/

namespace A023725.P3724890501603158111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023725.P3724890501603158111

/-!
# A023726: Numbers with a single 1 in their base 5 expansion.

The programs for A023726, the canonical program `A023726.P14118374530120351635` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023726 has offset 1).

The definition of A023726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023726.P14118374530120351635

`eq[1, A268643(A007091(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023726

/-- `eq[1, A268643(A007091(n))]` -/
def P14118374530120351635.Spec : Prop :=
  ∀ n, (P14118374530120351635.a n : ℤ) = A023726 (n + 1)

theorem P14118374530120351635.correct : P14118374530120351635.Spec := by
  intro n
  simp only [A023726, Nat.add_sub_cancel]

end A023726

/-! ## A023726.P10323549760876371063

`eq[1, A268643(A054047(n))]`
-/

namespace A023726.P10323549760876371063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P10323549760876371063

namespace A023726

/-- `eq[1, A268643(A054047(n))]` -/
def P10323549760876371063.Spec : Prop :=
  ∀ n, (P10323549760876371063.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P11512598447169985514

`eq[1, A268643(A080228(n+1))]`
-/

namespace A023726.P11512598447169985514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P11512598447169985514

namespace A023726

/-- `eq[1, A268643(A080228(n+1))]` -/
def P11512598447169985514.Spec : Prop :=
  ∀ n, (P11512598447169985514.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P8929509591457309576

`eq[1, A316863(A256305(n))]`
-/

namespace A023726.P8929509591457309576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P8929509591457309576

namespace A023726

/-- `eq[1, A316863(A256305(n))]` -/
def P8929509591457309576.Spec : Prop :=
  ∀ n, (P8929509591457309576.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P3124922458409537582

`eq[1, A075053(A014263(n+1))]`
-/

namespace A023726.P3124922458409537582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P3124922458409537582

namespace A023726

/-- `eq[1, A075053(A014263(n+1))]` -/
def P3124922458409537582.Spec : Prop :=
  ∀ n, (P3124922458409537582.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P8324964757116632859

`eq[1, A193238(A072960(n+1))]`
-/

namespace A023726.P8324964757116632859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P8324964757116632859

namespace A023726

/-- `eq[1, A193238(A072960(n+1))]` -/
def P8324964757116632859.Spec : Prop :=
  ∀ n, (P8324964757116632859.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P12343965197945378736

`eq[1, A316863(2*A007091(n))]`
-/

namespace A023726.P12343965197945378736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (2 * A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P12343965197945378736

namespace A023726

/-- `eq[1, A316863(2*A007091(n))]` -/
def P12343965197945378736.Spec : Prop :=
  ∀ n, (P12343965197945378736.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P184952340320035674

`eq[1, A075053(eq[n, A001613(n)])]`
-/

namespace A023726.P184952340320035674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P184952340320035674

namespace A023726

/-- `eq[1, A075053(eq[n, A001613(n)])]` -/
def P184952340320035674.Spec : Prop :=
  ∀ n, (P184952340320035674.a n : ℤ) = A023726 (n + 1)

end A023726

/-! ## A023726.P9545702011307864758

`eq[1, A193238(eq[n, A001613(n)])]`
-/

namespace A023726.P9545702011307864758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023726.P9545702011307864758

namespace A023726

/-- `eq[1, A193238(eq[n, A001613(n)])]` -/
def P9545702011307864758.Spec : Prop :=
  ∀ n, (P9545702011307864758.a n : ℤ) = A023726 (n + 1)

end A023726

/-!
# A023727: Numbers with exactly 2 1's in their base 5 expansion.

The programs for A023727, there is no canonical definition to state claims against.
-/

/-! ## A023727.P10598518111502794437

`eq[2, A268643(A007091(n))]`
-/

namespace A023727.P10598518111502794437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P10598518111502794437

/-! ## A023727.P14954884588978438100

`eq[2, A268643(A054047(n))]`
-/

namespace A023727.P14954884588978438100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P14954884588978438100

/-! ## A023727.P6674352998655501404

`eq[2, A316863(A256305(n))]`
-/

namespace A023727.P6674352998655501404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P6674352998655501404

/-! ## A023727.P15921293924323623895

`eq[2, A075053(A014263(n+1))]`
-/

namespace A023727.P15921293924323623895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P15921293924323623895

/-! ## A023727.P9046905924140631403

`eq[2, A193238(A072960(n+1))]`
-/

namespace A023727.P9046905924140631403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P9046905924140631403

/-! ## A023727.P14702581932463274753

`eq[2, A268643(A080228(n+1))]`
-/

namespace A023727.P14702581932463274753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P14702581932463274753

/-! ## A023727.P13221592870349152235

`eq[2, A316863(2*A007091(n))]`
-/

namespace A023727.P13221592870349152235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (2 * A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023727.P13221592870349152235

/-!
# A023728: Numbers with exactly 3 1's in base 5 expansion.

The programs for A023728, there is no canonical definition to state claims against.
-/

/-! ## A023728.P2794547499152402830

`eq[3, A268643(A007091(n))]`
-/

namespace A023728.P2794547499152402830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023728.P2794547499152402830

/-! ## A023728.P16956119713606256993

`eq[3, A268643(A054047(n))]`
-/

namespace A023728.P16956119713606256993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023728.P16956119713606256993

/-! ## A023728.P11869426648463831815

`eq[3, A316863(A256305(n))]`
-/

namespace A023728.P11869426648463831815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023728.P11869426648463831815

/-! ## A023728.P7782160080512897194

`eq[3, A075053(A014263(n+1))]`
-/

namespace A023728.P7782160080512897194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023728.P7782160080512897194

/-! ## A023728.P12165209498381167813

`eq[3, A193238(A072960(n+1))]`
-/

namespace A023728.P12165209498381167813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023728.P12165209498381167813

/-!
# A023729: Numbers with no 2's in their base-5 expansion.

The programs for A023729, there is no canonical definition to state claims against.
-/

/-! ## A023729.P13100254130939110295

`A020654(Δ[n²])-A020654(n+1)`
-/

namespace A023729.P13100254130939110295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A020654 (n + 1)

end

end A023729.P13100254130939110295

/-! ## A023729.P4104688742690716807

`A020655(Δ[n²])-A020655(n+1)`
-/

namespace A023729.P4104688742690716807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A020655 (n + 1)

end

end A023729.P4104688742690716807

/-! ## A023729.P9882077243551311450

`A020654(2*(n+1))-A020655(n+1)`
-/

namespace A023729.P9882077243551311450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (2 * (n + 1)) - A020655 (n + 1)

end

end A023729.P9882077243551311450

/-! ## A023729.P17722269596039057076

`abs(A020654(2*n+1)-A020654(n+1))`
-/

namespace A023729.P17722269596039057076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020654 (2 * n + 1) - A020654 (n + 1)|

end

end A023729.P17722269596039057076

/-! ## A023729.P13219439121875293487

`A020655(2*(n+1))-(A020655(n+1)+1)`
-/

namespace A023729.P13219439121875293487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (2 * (n + 1)) - (A020655 (n + 1) + 1)

end

end A023729.P13219439121875293487

/-! ## A023729.P10511210484872518023

`A020655(2*n+1)-A000027(A020655(n+1))`
-/

namespace A023729.P10511210484872518023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (2 * n + 1) - A000027 (A020655 (n + 1)).toNat

end

end A023729.P10511210484872518023

/-! ## A023729.P12716871740477683462

`lt[1, 2*A194459(n)%3]`
-/

namespace A023729.P12716871740477683462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A194459 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023729.P12716871740477683462

/-! ## A023729.P2264004607206294352

`A303788(A037460(2*n)/2)`
-/

namespace A023729.P2264004607206294352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (SequenceMachineLib.roundAway ((A037460 (2 * n) : ℚ) / 2)).toNat

end

end A023729.P2264004607206294352

/-! ## A023729.P1077530334025073048

`record[A303788(3*n)-A303788(2*n)]`
-/

namespace A023729.P1077530334025073048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (3 * n) - A303788 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023729.P1077530334025073048

/-! ## A023729.P7160946468618239859

`eq[A001744(n+1), A222223(A001744(n+1))]`
-/

namespace A023729.P7160946468618239859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023729.P7160946468618239859

/-!
# A023730: Numbers with a single 2 in their base 5 expansion.

The programs for A023730, the canonical program `A023730.P4010073991563025299` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023730 has offset 1).

The definition of A023730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023730.P4010073991563025299

`eq[0, A007432(A194459(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023730

/-- `eq[0, A007432(A194459(n))]` -/
def P4010073991563025299.Spec : Prop :=
  ∀ n, (P4010073991563025299.a n : ℤ) = A023730 (n + 1)

theorem P4010073991563025299.correct : P4010073991563025299.Spec := by
  intro n
  simp only [A023730, Nat.add_sub_cancel]

end A023730

/-! ## A023730.P1804806460847737772

`eq[n+1, (n+1)*A081603(A037468(n))]`
-/

namespace A023730.P1804806460847737772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081603 (A037468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P1804806460847737772

namespace A023730

/-- `eq[n+1, (n+1)*A081603(A037468(n))]` -/
def P1804806460847737772.Spec : Prop :=
  ∀ n, (P1804806460847737772.a n : ℤ) = A023730 (n + 1)

end A023730

/-! ## A023730.P9179506417517461197

`eq[n*A081603(A037468(n)), A028310(n)]`
-/

namespace A023730.P9179506417517461197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081603 (A037468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023730.P9179506417517461197

namespace A023730

/-- `eq[n*A081603(A037468(n)), A028310(n)]` -/
def P9179506417517461197.Spec : Prop :=
  ∀ n, (P9179506417517461197.a n : ℤ) = A023730 (n + 1)

end A023730

/-! ## A023730.P16128157963261533402

`eq[1, A316863(A007091(n))]`
-/

namespace A023730.P16128157963261533402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P16128157963261533402

namespace A023730

/-- `eq[1, A316863(A007091(n))]` -/
def P16128157963261533402.Spec : Prop :=
  ∀ n, (P16128157963261533402.a n : ℤ) = A023730 (n + 1)

end A023730

/-! ## A023730.P1025496803069831476

`eq[1, A316864(A256305(n))]`
-/

namespace A023730.P1025496803069831476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P1025496803069831476

namespace A023730

/-- `eq[1, A316864(A256305(n))]` -/
def P1025496803069831476.Spec : Prop :=
  ∀ n, (P1025496803069831476.a n : ℤ) = A023730 (n + 1)

end A023730

/-! ## A023730.P235309980081525035

`eq[1, A316863(A080228(n+1))]`
-/

namespace A023730.P235309980081525035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P235309980081525035

namespace A023730

/-- `eq[1, A316863(A080228(n+1))]` -/
def P235309980081525035.Spec : Prop :=
  ∀ n, (P235309980081525035.a n : ℤ) = A023730 (n + 1)

end A023730

/-! ## A023730.P8701372334250840237

`eq[0, A344326(A194459(n)²)]`
-/

namespace A023730.P8701372334250840237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344326 (A194459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023730.P8701372334250840237

namespace A023730

/-- `eq[0, A344326(A194459(n)²)]` -/
def P8701372334250840237.Spec : Prop :=
  ∀ n, (P8701372334250840237.a n : ℤ) = A023730 (n + 1)

end A023730

/-!
# A023731: Numbers with exactly two 2's in base 5 expansion.

The programs for A023731, the canonical program `A023731.P14028755844219420142` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023731 has offset 1).

The definition of A023731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023731.P14028755844219420142

`eq[2, A007949(A194459(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023731

/-- `eq[2, A007949(A194459(n))]` -/
def P14028755844219420142.Spec : Prop :=
  ∀ n, (P14028755844219420142.a n : ℤ) = A023731 (n + 1)

theorem P14028755844219420142.correct : P14028755844219420142.Spec := by
  intro n
  simp only [A023731, Nat.add_sub_cancel]

end A023731

/-! ## A023731.P15492431168723157103

`eq[4, A329683(n)+A081603(A037468(n))]`
-/

namespace A023731.P15492431168723157103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n + A081603 (A037468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P15492431168723157103

namespace A023731

/-- `eq[4, A329683(n)+A081603(A037468(n))]` -/
def P15492431168723157103.Spec : Prop :=
  ∀ n, (P15492431168723157103.a n : ℤ) = A023731 (n + 1)

end A023731

/-! ## A023731.P286749713116713111

`eq[2, A316863(A007091(n))]`
-/

namespace A023731.P286749713116713111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P286749713116713111

namespace A023731

/-- `eq[2, A316863(A007091(n))]` -/
def P286749713116713111.Spec : Prop :=
  ∀ n, (P286749713116713111.a n : ℤ) = A023731 (n + 1)

end A023731

/-! ## A023731.P1811908358556817024

`eq[2, A316864(A256305(n))]`
-/

namespace A023731.P1811908358556817024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P1811908358556817024

namespace A023731

/-- `eq[2, A316864(A256305(n))]` -/
def P1811908358556817024.Spec : Prop :=
  ∀ n, (P1811908358556817024.a n : ℤ) = A023731 (n + 1)

end A023731

/-! ## A023731.P9717170212369823497

`eq[2, A316863(A080228(n+1))]`
-/

namespace A023731.P9717170212369823497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023731.P9717170212369823497

namespace A023731

/-- `eq[2, A316863(A080228(n+1))]` -/
def P9717170212369823497.Spec : Prop :=
  ∀ n, (P9717170212369823497.a n : ℤ) = A023731 (n + 1)

end A023731

/-!
# A023732: Numbers with exactly 3 2's in base 5 expansion.

The programs for A023732, there is no canonical definition to state claims against.
-/

/-! ## A023732.P10559138736725837356

`eq[3, A316863(A007091(n))]`
-/

namespace A023732.P10559138736725837356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023732.P10559138736725837356

/-! ## A023732.P13192424151812169927

`eq[3, A316864(A256305(n))]`
-/

namespace A023732.P13192424151812169927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023732.P13192424151812169927

/-! ## A023732.P17761079426759619519

`eq[3, A316863(A080228(n+1))]`
-/

namespace A023732.P17761079426759619519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023732.P17761079426759619519

/-! ## A023732.P14739459571910137435

`xor(A045289(n+1), A297243(A049614(n)))`
-/

namespace A023732.P14739459571910137435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045289 (n + 1)) (A297243 (A049614 n).toNat)

end

end A023732.P14739459571910137435

/-! ## A023732.P17297535194809178115

`A045289(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A023732.P17297535194809178115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045289 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A023732.P17297535194809178115

/-!
# A023733: Numbers with no 3's in base-5 expansion.

The programs for A023733, the canonical program `A023733.P14761496966563633410` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023733 has offset 1).

The definition of A023733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023733.P3447185921632302481

`A023729(2*n+1)-A023725(n+1)`
-/

namespace A023733.P3447185921632302481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (2 * n + 1) - A023725 (n + 1)

end

end A023733.P3447185921632302481

namespace A023733

/-- `A023729(2*n+1)-A023725(n+1)` -/
def P3447185921632302481.Spec : Prop :=
  ∀ n, P3447185921632302481.a n = A023733 (n + 1)

end A023733

/-! ## A023733.P14761496966563633410

`lt[A006530(A338803(n)), 3]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023733

/-- `lt[A006530(A338803(n)), 3]` -/
def P14761496966563633410.Spec : Prop :=
  ∀ n, (P14761496966563633410.a n : ℤ) = A023733 (n + 1)

theorem P14761496966563633410.correct : P14761496966563633410.Spec := by
  intro n
  simp only [A023733, Nat.add_sub_cancel]

end A023733

/-! ## A023733.P5713050914312066721

`eq[A001222(A194459(n)), A276134(n)]`
-/

namespace A023733.P5713050914312066721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023733.P5713050914312066721

namespace A023733

/-- `eq[A001222(A194459(n)), A276134(n)]` -/
def P5713050914312066721.Spec : Prop :=
  ∀ n, (P5713050914312066721.a n : ℤ) = A023733 (n + 1)

end A023733

/-! ## A023733.P13743849839749751176

`eq[0, A316864(A007091(n))]`
-/

namespace A023733.P13743849839749751176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023733.P13743849839749751176

namespace A023733

/-- `eq[0, A316864(A007091(n))]` -/
def P13743849839749751176.Spec : Prop :=
  ∀ n, (P13743849839749751176.a n : ℤ) = A023733 (n + 1)

end A023733

/-! ## A023733.P15598687880001283881

`eq[A004179(A256305(n)), A256305(n)]`
-/

namespace A023733.P15598687880001283881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A256305 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023733.P15598687880001283881

namespace A023733

/-- `eq[A004179(A256305(n)), A256305(n)]` -/
def P15598687880001283881.Spec : Prop :=
  ∀ n, (P15598687880001283881.a n : ℤ) = A023733 (n + 1)

end A023733

/-! ## A023733.P887473419055543187

`eq[A001744(n+1), A222225(A001744(n+1))]`
-/

namespace A023733.P887473419055543187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023733.P887473419055543187

namespace A023733

/-- `eq[A001744(n+1), A222225(A001744(n+1))]` -/
def P887473419055543187.Spec : Prop :=
  ∀ n, (P887473419055543187.a n : ℤ) = A023733 (n + 1)

end A023733

/-! ## A023733.P1963072606069411607

`eq[A014263(n+1), A222251(A014263(n+1))]`
-/

namespace A023733.P1963072606069411607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023733.P1963072606069411607

namespace A023733

/-- `eq[A014263(n+1), A222251(A014263(n+1))]` -/
def P1963072606069411607.Spec : Prop :=
  ∀ n, (P1963072606069411607.a n : ℤ) = A023733 (n + 1)

end A023733

/-! ## A023733.P4602260017840446797

`eq[A080228(n+1), A222248(A080228(n+1))]`
-/

namespace A023733.P4602260017840446797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023733.P4602260017840446797

namespace A023733

/-- `eq[A080228(n+1), A222248(A080228(n+1))]` -/
def P4602260017840446797.Spec : Prop :=
  ∀ n, (P4602260017840446797.a n : ℤ) = A023733 (n + 1)

end A023733

/-!
# A023734: Numbers with a single 3 in their base-5 expansion.

The programs for A023734, the canonical program `A023734.P2270528785038764700` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023734 has offset 1).

The definition of A023734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023734.P12196196128591243827

`eq[A276134(n)+1, A001222(A194459(n))]`
-/

namespace A023734.P12196196128591243827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023734.P12196196128591243827

namespace A023734

/-- `eq[A276134(n)+1, A001222(A194459(n))]` -/
def P12196196128591243827.Spec : Prop :=
  ∀ n, (P12196196128591243827.a n : ℤ) = A023734 (n + 1)

end A023734

/-! ## A023734.P2270528785038764700

`eq[3, A000265(A338803(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A023734

/-- `eq[3, A000265(A338803(n))]` -/
def P2270528785038764700.Spec : Prop :=
  ∀ n, (P2270528785038764700.a n : ℤ) = A023734 (n + 1)

theorem P2270528785038764700.correct : P2270528785038764700.Spec := by
  intro n
  simp only [A023734, Nat.add_sub_cancel]

end A023734

/-! ## A023734.P15364597768925346955

`lt[A020985(A338803(n)), A336040(n+1)]`
-/

namespace A023734.P15364597768925346955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023734.P15364597768925346955

namespace A023734

/-- `lt[A020985(A338803(n)), A336040(n+1)]` -/
def P15364597768925346955.Spec : Prop :=
  ∀ n, (P15364597768925346955.a n : ℤ) = A023734 (n + 1)

end A023734

/-! ## A023734.P6114472312191703687

`lt[A020985(A338803(n))*A028310(n), 1]`
-/

namespace A023734.P6114472312191703687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A338803 n).toNat * A028310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023734.P6114472312191703687

namespace A023734

/-- `lt[A020985(A338803(n))*A028310(n), 1]` -/
def P6114472312191703687.Spec : Prop :=
  ∀ n, (P6114472312191703687.a n : ℤ) = A023734 (n + 1)

end A023734

/-! ## A023734.P7319797227194318205

`lt[2*A020985(A338803(n)), A020985(n)]`
-/

namespace A023734.P7319797227194318205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020985 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023734.P7319797227194318205

namespace A023734

/-- `lt[2*A020985(A338803(n)), A020985(n)]` -/
def P7319797227194318205.Spec : Prop :=
  ∀ n, (P7319797227194318205.a n : ℤ) = A023734 (n + 1)

end A023734

/-! ## A023734.P5715208076208477307

`eq[1, A316864(A007091(n))]`
-/

namespace A023734.P5715208076208477307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023734.P5715208076208477307

namespace A023734

/-- `eq[1, A316864(A007091(n))]` -/
def P5715208076208477307.Spec : Prop :=
  ∀ n, (P5715208076208477307.a n : ℤ) = A023734 (n + 1)

end A023734

/-! ## A023734.P17909392573643699485

`eq[1, A102673(A256305(n))]`
-/

namespace A023734.P17909392573643699485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023734.P17909392573643699485

namespace A023734

/-- `eq[1, A102673(A256305(n))]` -/
def P17909392573643699485.Spec : Prop :=
  ∀ n, (P17909392573643699485.a n : ℤ) = A023734 (n + 1)

end A023734

/-!
# A023735: Numbers with exactly 2 3's in their base-5 expansion.

The programs for A023735, the canonical program `A023735.P3011601314647701763` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023735 has offset 1).

The definition of A023735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023735.P3011601314647701763

`eq[3, A051064(A338803(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023735

/-- `eq[3, A051064(A338803(n))]` -/
def P3011601314647701763.Spec : Prop :=
  ∀ n, (P3011601314647701763.a n : ℤ) = A023735 (n + 1)

theorem P3011601314647701763.correct : P3011601314647701763.Spec := by
  intro n
  simp only [A023735, Nat.add_sub_cancel]

end A023735

/-! ## A023735.P220178647869103637

`eq[A276134(n)+2, A001222(A194459(n))]`
-/

namespace A023735.P220178647869103637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023735.P220178647869103637

namespace A023735

/-- `eq[A276134(n)+2, A001222(A194459(n))]` -/
def P220178647869103637.Spec : Prop :=
  ∀ n, (P220178647869103637.a n : ℤ) = A023735 (n + 1)

end A023735

/-! ## A023735.P10064394787774951826

`eq[2, A316864(A007091(n))]`
-/

namespace A023735.P10064394787774951826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023735.P10064394787774951826

namespace A023735

/-- `eq[2, A316864(A007091(n))]` -/
def P10064394787774951826.Spec : Prop :=
  ∀ n, (P10064394787774951826.a n : ℤ) = A023735 (n + 1)

end A023735

/-! ## A023735.P10312507780607042055

`eq[2, A102673(A256305(n))]`
-/

namespace A023735.P10312507780607042055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023735.P10312507780607042055

namespace A023735

/-- `eq[2, A102673(A256305(n))]` -/
def P10312507780607042055.Spec : Prop :=
  ∀ n, (P10312507780607042055.a n : ℤ) = A023735 (n + 1)

end A023735

/-! ## A023735.P5031442866878809251

`eq[0, A110568(A072960(n+1))]`
-/

namespace A023735.P5031442866878809251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110568 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023735.P5031442866878809251

namespace A023735

/-- `eq[0, A110568(A072960(n+1))]` -/
def P5031442866878809251.Spec : Prop :=
  ∀ n, (P5031442866878809251.a n : ℤ) = A023735 (n + 1)

end A023735

/-! ## A023735.P17430686782288739241

`eq[A102283(A072960(n+1)), A204162(n+1)]`
-/

namespace A023735.P17430686782288739241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A072960 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023735.P17430686782288739241

namespace A023735

/-- `eq[A102283(A072960(n+1)), A204162(n+1)]` -/
def P17430686782288739241.Spec : Prop :=
  ∀ n, (P17430686782288739241.a n : ℤ) = A023735 (n + 1)

end A023735

/-!
# A023736: Numbers with exactly 3 3's in their base-5 expansion.

The programs for A023736, there is no canonical definition to state claims against.
-/

/-! ## A023736.P13733134219555825639

`eq[3, A051626(A338803(n))]`
-/

namespace A023736.P13733134219555825639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023736.P13733134219555825639

/-! ## A023736.P17087450953470458038

`eq[3, A316864(A007091(n))]`
-/

namespace A023736.P17087450953470458038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023736.P17087450953470458038

/-! ## A023736.P8484576384760211929

`eq[3, A102673(A256305(n))]`
-/

namespace A023736.P8484576384760211929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A256305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023736.P8484576384760211929

/-! ## A023736.P14655252445512710156

`A045304(A084192(∑[n]))`
-/

namespace A023736.P14655252445512710156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045304 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A023736.P14655252445512710156

/-! ## A023736.P11273305761569478964

`A045304(n+1)+val(A027891(n+1), 2)`
-/

namespace A023736.P11273305761569478964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045304 (n + 1) + (SequenceMachineLib.valuation (A027891 (n + 1)).toNat 2 : ℤ)

end

end A023736.P11273305761569478964

/-!
# A023738: Numbers with a single 4 in their base 5 expansion.

The programs for A023738, the canonical program `A023738.P1763036353799315097` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023738 has offset 1).

The definition of A023738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023738.P1763036353799315097

`eq[n+1, val(A194459(n), 5)+n]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023738

/-- `eq[n+1, val(A194459(n), 5)+n]` -/
def P1763036353799315097.Spec : Prop :=
  ∀ n, (P1763036353799315097.a n : ℤ) = A023738 (n + 1)

theorem P1763036353799315097.correct : P1763036353799315097.Spec := by
  intro n
  simp only [A023738, Nat.add_sub_cancel]

end A023738

/-! ## A023738.P338685719289681747

`eq[1, A102673(A007091(n))]`
-/

namespace A023738.P338685719289681747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023738.P338685719289681747

namespace A023738

/-- `eq[1, A102673(A007091(n))]` -/
def P338685719289681747.Spec : Prop :=
  ∀ n, (P338685719289681747.a n : ℤ) = A023738 (n + 1)

end A023738

/-! ## A023738.P6380172425836101568

`eq[1, A102679(A014263(n+1))]`
-/

namespace A023738.P6380172425836101568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023738.P6380172425836101568

namespace A023738

/-- `eq[1, A102679(A014263(n+1))]` -/
def P6380172425836101568.Spec : Prop :=
  ∀ n, (P6380172425836101568.a n : ℤ) = A023738 (n + 1)

end A023738

/-! ## A023738.P11570373762917282168

`eq[1, A102677(A080228(n+1))]`
-/

namespace A023738.P11570373762917282168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023738.P11570373762917282168

namespace A023738

/-- `eq[1, A102677(A080228(n+1))]` -/
def P11570373762917282168.Spec : Prop :=
  ∀ n, (P11570373762917282168.a n : ℤ) = A023738 (n + 1)

end A023738

/-! ## A023738.P4726464084298063769

`eq[1, A196564(A001744(n+1))]`
-/

namespace A023738.P4726464084298063769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023738.P4726464084298063769

namespace A023738

/-- `eq[1, A196564(A001744(n+1))]` -/
def P4726464084298063769.Spec : Prop :=
  ∀ n, (P4726464084298063769.a n : ℤ) = A023738 (n + 1)

end A023738

/-! ## A023738.P25917995294510429

`eq[1, A102681(eq[n, A001613(n)])]`
-/

namespace A023738.P25917995294510429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023738.P25917995294510429

namespace A023738

/-- `eq[1, A102681(eq[n, A001613(n)])]` -/
def P25917995294510429.Spec : Prop :=
  ∀ n, (P25917995294510429.a n : ℤ) = A023738 (n + 1)

end A023738

/-!
# A023739: Numbers with exactly 2 4's in base 5 expansion.

The programs for A023739, the canonical program `A023739.P14727020229572321214` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023739 has offset 1).

The definition of A023739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023739.P14727020229572321214

`eq[n+2, val(A194459(n), 5)+n]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023739

/-- `eq[n+2, val(A194459(n), 5)+n]` -/
def P14727020229572321214.Spec : Prop :=
  ∀ n, (P14727020229572321214.a n : ℤ) = A023739 (n + 1)

theorem P14727020229572321214.correct : P14727020229572321214.Spec := by
  intro n
  simp only [A023739, Nat.add_sub_cancel]

end A023739

/-! ## A023739.P13294656242098067909

`eq[2, A102673(A007091(n))]`
-/

namespace A023739.P13294656242098067909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023739.P13294656242098067909

namespace A023739

/-- `eq[2, A102673(A007091(n))]` -/
def P13294656242098067909.Spec : Prop :=
  ∀ n, (P13294656242098067909.a n : ℤ) = A023739 (n + 1)

end A023739

/-! ## A023739.P12030433362813154939

`eq[2, A196564(A001744(n+1))]`
-/

namespace A023739.P12030433362813154939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023739.P12030433362813154939

namespace A023739

/-- `eq[2, A196564(A001744(n+1))]` -/
def P12030433362813154939.Spec : Prop :=
  ∀ n, (P12030433362813154939.a n : ℤ) = A023739 (n + 1)

end A023739

/-! ## A023739.P15367638697641521953

`eq[n+2, A102679(A014263(n+1))+n]`
-/

namespace A023739.P15367638697641521953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A014263 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023739.P15367638697641521953

namespace A023739

/-- `eq[n+2, A102679(A014263(n+1))+n]` -/
def P15367638697641521953.Spec : Prop :=
  ∀ n, (P15367638697641521953.a n : ℤ) = A023739 (n + 1)

end A023739

/-!
# A023740: Numbers with exactly 3 4's in base 5 expansion.

The programs for A023740, there is no canonical definition to state claims against.
-/

/-! ## A023740.P13223680781840886032

`eq[3, A102673(A007091(n))]`
-/

namespace A023740.P13223680781840886032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023740.P13223680781840886032

/-! ## A023740.P10598771061880255283

`eq[3, A196564(A001744(n+1))]`
-/

namespace A023740.P10598771061880255283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023740.P10598771061880255283

/-! ## A023740.P13331857976555032855

`A002266(A043368(n+1)^A065648(n))`
-/

namespace A023740.P13331857976555032855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (SequenceMachineLib.roundAway ((A043368 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A023740.P13331857976555032855

/-! ## A023740.P12893762632542861094

`A002266(A065648(n)²*A043368(n+1))`
-/

namespace A023740.P12893762632542861094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A065648 n ^ 2 * A043368 (n + 1)).toNat

end

end A023740.P12893762632542861094

/-! ## A023740.P1514267580234626633

`A002266(A043368(n+1)*A065648(n)*A065648(n))`
-/

namespace A023740.P1514267580234626633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A043368 (n + 1) * A065648 n * A065648 n).toNat

end

end A023740.P1514267580234626633

/-!
# A023741: Ternary expansion uses each positive digit just once.

The programs for A023741, the canonical program `A023741.P15770291979762274263` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023741 has offset 1).

The definition of A023741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023741.P15770291979762274263

`∩[A023692(n+1), A226636(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023741

/-- `∩[A023692(n+1), A226636(n+1)]` -/
def P15770291979762274263.Spec : Prop :=
  ∀ n, (P15770291979762274263.a n : ℤ) = A023741 (n + 1)

theorem P15770291979762274263.correct : P15770291979762274263.Spec := by
  intro n
  simp only [A023741, Nat.add_sub_cancel]

end A023741

/-! ## A023741.P787668616676852

`∩[A023692(n+1), A387271(n+1)]`
-/

namespace A023741.P787668616676852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P787668616676852

namespace A023741

/-- `∩[A023692(n+1), A387271(n+1)]` -/
def P787668616676852.Spec : Prop :=
  ∀ n, (P787668616676852.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P2391904915762459937

`∩[A226636(n+1), A387271(n+1)]`
-/

namespace A023741.P2391904915762459937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P2391904915762459937

namespace A023741

/-- `∩[A226636(n+1), A387271(n+1)]` -/
def P2391904915762459937.Spec : Prop :=
  ∀ n, (P2391904915762459937.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P5980700938535329966

`∩[A023692(n+1), A023699(n+1)]`
-/

namespace A023741.P5980700938535329966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P5980700938535329966

namespace A023741

/-- `∩[A023692(n+1), A023699(n+1)]` -/
def P5980700938535329966.Spec : Prop :=
  ∀ n, (P5980700938535329966.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P534098988029106397

`∩[A023699(n+1), A226636(n+1)]`
-/

namespace A023741.P534098988029106397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P534098988029106397

namespace A023741

/-- `∩[A023699(n+1), A226636(n+1)]` -/
def P534098988029106397.Spec : Prop :=
  ∀ n, (P534098988029106397.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P13358138655786442534

`∩[A023699(n+1), A387271(n+1)]`
-/

namespace A023741.P13358138655786442534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P13358138655786442534

namespace A023741

/-- `∩[A023699(n+1), A387271(n+1)]` -/
def P13358138655786442534.Spec : Prop :=
  ∀ n, (P13358138655786442534.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P7769500886997635881

`∩[A023692(n+1), A039001(n+1)]`
-/

namespace A023741.P7769500886997635881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P7769500886997635881

namespace A023741

/-- `∩[A023692(n+1), A039001(n+1)]` -/
def P7769500886997635881.Spec : Prop :=
  ∀ n, (P7769500886997635881.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P2334782400797404198

`∩[A023699(n+1), A039001(n+1)]`
-/

namespace A023741.P2334782400797404198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P2334782400797404198

namespace A023741

/-- `∩[A023699(n+1), A039001(n+1)]` -/
def P2334782400797404198.Spec : Prop :=
  ∀ n, (P2334782400797404198.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P15555060494467011723

`∩[A039001(n+1), A226636(n+1)]`
-/

namespace A023741.P15555060494467011723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023741.P15555060494467011723

namespace A023741

/-- `∩[A039001(n+1), A226636(n+1)]` -/
def P15555060494467011723.Spec : Prop :=
  ∀ n, (P15555060494467011723.a n : ℤ) = A023741 (n + 1)

end A023741

/-! ## A023741.P12876302116188014278

`eq[5, A290094(n)]`
-/

namespace A023741.P12876302116188014278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023741.P12876302116188014278

namespace A023741

/-- `eq[5, A290094(n)]` -/
def P12876302116188014278.Spec : Prop :=
  ∀ n, (P12876302116188014278.a n : ℤ) = A023741 (n + 1)

end A023741

/-!
# A023742: Base 4 expansion uses each positive digit just once.

The programs for A023742, the canonical program `A023742.P9190710118575259042` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023742 has offset 1).

The definition of A023742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023742.P9190710118575259042

`∩[A014312(n+1), A045091(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A023742

/-- `∩[A014312(n+1), A045091(n+1)]` -/
def P9190710118575259042.Spec : Prop :=
  ∀ n, (P9190710118575259042.a n : ℤ) = A023742 (n + 1)

theorem P9190710118575259042.correct : P9190710118575259042.Spec := by
  intro n
  simp only [A023742, Nat.add_sub_cancel]

end A023742

/-! ## A023742.P10499112353532724320

`∩[A014312(n+1), A045115(n+1)]`
-/

namespace A023742.P10499112353532724320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P10499112353532724320

namespace A023742

/-- `∩[A014312(n+1), A045115(n+1)]` -/
def P10499112353532724320.Spec : Prop :=
  ∀ n, (P10499112353532724320.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P16241844679456049817

`∩[A014312(n+1), A039562(n+1)]`
-/

namespace A023742.P16241844679456049817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P16241844679456049817

namespace A023742

/-- `∩[A014312(n+1), A039562(n+1)]` -/
def P16241844679456049817.Spec : Prop :=
  ∀ n, (P16241844679456049817.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P6444993906622238944

`∩[A014312(n+1), A045139(n+1)]`
-/

namespace A023742.P6444993906622238944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P6444993906622238944

namespace A023742

/-- `∩[A014312(n+1), A045139(n+1)]` -/
def P6444993906622238944.Spec : Prop :=
  ∀ n, (P6444993906622238944.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P14344049308792242845

`∩[A039562(n+1), A045115(n+1)]`
-/

namespace A023742.P14344049308792242845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P14344049308792242845

namespace A023742

/-- `∩[A039562(n+1), A045115(n+1)]` -/
def P14344049308792242845.Spec : Prop :=
  ∀ n, (P14344049308792242845.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P8493436722510358820

`∩[A045115(n+1), A045139(n+1)]`
-/

namespace A023742.P8493436722510358820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P8493436722510358820

namespace A023742

/-- `∩[A045115(n+1), A045139(n+1)]` -/
def P8493436722510358820.Spec : Prop :=
  ∀ n, (P8493436722510358820.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P7434564061101072309

`∩[A039004(n+1), A045115(n+1)]`
-/

namespace A023742.P7434564061101072309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P7434564061101072309

namespace A023742

/-- `∩[A039004(n+1), A045115(n+1)]` -/
def P7434564061101072309.Spec : Prop :=
  ∀ n, (P7434564061101072309.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P10822427866368709562

`∩[A045139(n+1), A039004(n+1)]`
-/

namespace A023742.P10822427866368709562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P10822427866368709562

namespace A023742

/-- `∩[A045139(n+1), A039004(n+1)]` -/
def P10822427866368709562.Spec : Prop :=
  ∀ n, (P10822427866368709562.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P11241985744134980566

`∩[A039280(n+1), A045115(n+1)]`
-/

namespace A023742.P11241985744134980566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P11241985744134980566

namespace A023742

/-- `∩[A039280(n+1), A045115(n+1)]` -/
def P11241985744134980566.Spec : Prop :=
  ∀ n, (P11241985744134980566.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P3017292097004648783

`∩[A014312(n+1), A039281(n+1)]`
-/

namespace A023742.P3017292097004648783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P3017292097004648783

namespace A023742

/-- `∩[A014312(n+1), A039281(n+1)]` -/
def P3017292097004648783.Spec : Prop :=
  ∀ n, (P3017292097004648783.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P8667952351915142164

`∩[A014312(n+1), A039282(n+1)]`
-/

namespace A023742.P8667952351915142164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P8667952351915142164

namespace A023742

/-- `∩[A014312(n+1), A039282(n+1)]` -/
def P8667952351915142164.Spec : Prop :=
  ∀ n, (P8667952351915142164.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P10728937936345573527

`∩[A039282(n+1), A045091(n+1)]`
-/

namespace A023742.P10728937936345573527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P10728937936345573527

namespace A023742

/-- `∩[A039282(n+1), A045091(n+1)]` -/
def P10728937936345573527.Spec : Prop :=
  ∀ n, (P10728937936345573527.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P8311348211529554774

`∩[A039282(n+1), A045115(n+1)]`
-/

namespace A023742.P8311348211529554774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P8311348211529554774

namespace A023742

/-- `∩[A039282(n+1), A045115(n+1)]` -/
def P8311348211529554774.Spec : Prop :=
  ∀ n, (P8311348211529554774.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P504889532054369420

`∩[A039006(n+1), A045091(n+1)]`
-/

namespace A023742.P504889532054369420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P504889532054369420

namespace A023742

/-- `∩[A039006(n+1), A045091(n+1)]` -/
def P504889532054369420.Spec : Prop :=
  ∀ n, (P504889532054369420.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P8852757844489940159

`∩[A039005(n+1), A045091(n+1)]`
-/

namespace A023742.P8852757844489940159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P8852757844489940159

namespace A023742

/-- `∩[A039005(n+1), A045091(n+1)]` -/
def P8852757844489940159.Spec : Prop :=
  ∀ n, (P8852757844489940159.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P2883775332109808398

`∩[A023710(n+1), A039562(n+1)]`
-/

namespace A023742.P2883775332109808398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P2883775332109808398

namespace A023742

/-- `∩[A023710(n+1), A039562(n+1)]` -/
def P2883775332109808398.Spec : Prop :=
  ∀ n, (P2883775332109808398.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P5556238729072227808

`∩[A023710(n+1), A045139(n+1)]`
-/

namespace A023742.P5556238729072227808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P5556238729072227808

namespace A023742

/-- `∩[A023710(n+1), A045139(n+1)]` -/
def P5556238729072227808.Spec : Prop :=
  ∀ n, (P5556238729072227808.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P14012089651964467422

`∩[A023714(n+1), A039562(n+1)]`
-/

namespace A023742.P14012089651964467422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P14012089651964467422

namespace A023742

/-- `∩[A023714(n+1), A039562(n+1)]` -/
def P14012089651964467422.Spec : Prop :=
  ∀ n, (P14012089651964467422.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P4101680006515565583

`∩[A023718(n+1), A039562(n+1)]`
-/

namespace A023742.P4101680006515565583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P4101680006515565583

namespace A023742

/-- `∩[A023718(n+1), A039562(n+1)]` -/
def P4101680006515565583.Spec : Prop :=
  ∀ n, (P4101680006515565583.a n : ℤ) = A023742 (n + 1)

end A023742

/-! ## A023742.P3242170609621009999

`∩[A023718(n+1), A045091(n+1)]`
-/

namespace A023742.P3242170609621009999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023742.P3242170609621009999

namespace A023742

/-- `∩[A023718(n+1), A045091(n+1)]` -/
def P3242170609621009999.Spec : Prop :=
  ∀ n, (P3242170609621009999.a n : ℤ) = A023742 (n + 1)

end A023742

/-!
# A023743: Base 5 expansion uses each positive digit just once.

The programs for A023743, the canonical program `A023743.P13743805731837612874` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023743 has offset 1).

The definition of A023743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023743.P12452722791081456325

`∩[A039571(n+1), A045222(n+1)]`
-/

namespace A023743.P12452722791081456325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P12452722791081456325

namespace A023743

/-- `∩[A039571(n+1), A045222(n+1)]` -/
def P12452722791081456325.Spec : Prop :=
  ∀ n, (P12452722791081456325.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P2133938343446255433

`∩[A039572(n+1), A045222(n+1)]`
-/

namespace A023743.P2133938343446255433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P2133938343446255433

namespace A023743

/-- `∩[A039572(n+1), A045222(n+1)]` -/
def P2133938343446255433.Spec : Prop :=
  ∀ n, (P2133938343446255433.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P15523672736228973096

`∩[A039570(n+1), A045237(n+1)]`
-/

namespace A023743.P15523672736228973096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P15523672736228973096

namespace A023743

/-- `∩[A039570(n+1), A045237(n+1)]` -/
def P15523672736228973096.Spec : Prop :=
  ∀ n, (P15523672736228973096.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P12949933664037397459

`∩[A039572(n+1), A045237(n+1)]`
-/

namespace A023743.P12949933664037397459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P12949933664037397459

namespace A023743

/-- `∩[A039572(n+1), A045237(n+1)]` -/
def P12949933664037397459.Spec : Prop :=
  ∀ n, (P12949933664037397459.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P13428922451987151129

`∩[A039570(n+1), A045267(n+1)]`
-/

namespace A023743.P13428922451987151129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P13428922451987151129

namespace A023743

/-- `∩[A039570(n+1), A045267(n+1)]` -/
def P13428922451987151129.Spec : Prop :=
  ∀ n, (P13428922451987151129.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P10280445655600234098

`∩[A039571(n+1), A045267(n+1)]`
-/

namespace A023743.P10280445655600234098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P10280445655600234098

namespace A023743

/-- `∩[A039571(n+1), A045267(n+1)]` -/
def P10280445655600234098.Spec : Prop :=
  ∀ n, (P10280445655600234098.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P951765070816059104

`∩[A039569(n+1), A045252(n+1)]`
-/

namespace A023743.P951765070816059104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P951765070816059104

namespace A023743

/-- `∩[A039569(n+1), A045252(n+1)]` -/
def P951765070816059104.Spec : Prop :=
  ∀ n, (P951765070816059104.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P16892928907766105195

`∩[A039572(n+1), A045252(n+1)]`
-/

namespace A023743.P16892928907766105195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P16892928907766105195

namespace A023743

/-- `∩[A039572(n+1), A045252(n+1)]` -/
def P16892928907766105195.Spec : Prop :=
  ∀ n, (P16892928907766105195.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P3462791731073783638

`∩[A045252(n+1), A045267(n+1)]`
-/

namespace A023743.P3462791731073783638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P3462791731073783638

namespace A023743

/-- `∩[A045252(n+1), A045267(n+1)]` -/
def P3462791731073783638.Spec : Prop :=
  ∀ n, (P3462791731073783638.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P9852272602789926612

`∩[A039569(n+1), A045282(n+1)]`
-/

namespace A023743.P9852272602789926612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P9852272602789926612

namespace A023743

/-- `∩[A039569(n+1), A045282(n+1)]` -/
def P9852272602789926612.Spec : Prop :=
  ∀ n, (P9852272602789926612.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P15504970684290371394

`∩[A039571(n+1), A045282(n+1)]`
-/

namespace A023743.P15504970684290371394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P15504970684290371394

namespace A023743

/-- `∩[A039571(n+1), A045282(n+1)]` -/
def P15504970684290371394.Spec : Prop :=
  ∀ n, (P15504970684290371394.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P13743805731837612874

`∩[A045237(n+1), A045282(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A023743

/-- `∩[A045237(n+1), A045282(n+1)]` -/
def P13743805731837612874.Spec : Prop :=
  ∀ n, (P13743805731837612874.a n : ℤ) = A023743 (n + 1)

theorem P13743805731837612874.correct : P13743805731837612874.Spec := by
  intro n
  simp only [A023743, Nat.add_sub_cancel]

end A023743

/-! ## A023743.P16404680524210927909

`∩[A039569(n+1), A045297(n+1)]`
-/

namespace A023743.P16404680524210927909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P16404680524210927909

namespace A023743

/-- `∩[A039569(n+1), A045297(n+1)]` -/
def P16404680524210927909.Spec : Prop :=
  ∀ n, (P16404680524210927909.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P4207471679564425218

`∩[A039291(n+1), A039569(n+1)]`
-/

namespace A023743.P4207471679564425218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P4207471679564425218

namespace A023743

/-- `∩[A039291(n+1), A039569(n+1)]` -/
def P4207471679564425218.Spec : Prop :=
  ∀ n, (P4207471679564425218.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P8533281443213563144

`∩[A039291(n+1), A039571(n+1)]`
-/

namespace A023743.P8533281443213563144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P8533281443213563144

namespace A023743

/-- `∩[A039291(n+1), A039571(n+1)]` -/
def P8533281443213563144.Spec : Prop :=
  ∀ n, (P8533281443213563144.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P10672907788899731436

`∩[A039289(n+1), A039569(n+1)]`
-/

namespace A023743.P10672907788899731436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P10672907788899731436

namespace A023743

/-- `∩[A039289(n+1), A039569(n+1)]` -/
def P10672907788899731436.Spec : Prop :=
  ∀ n, (P10672907788899731436.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P11317200904939381800

`∩[A039289(n+1), A039572(n+1)]`
-/

namespace A023743.P11317200904939381800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P11317200904939381800

namespace A023743

/-- `∩[A039289(n+1), A039572(n+1)]` -/
def P11317200904939381800.Spec : Prop :=
  ∀ n, (P11317200904939381800.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P12490385441871469041

`∩[A039287(n+1), A039571(n+1)]`
-/

namespace A023743.P12490385441871469041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P12490385441871469041

namespace A023743

/-- `∩[A039287(n+1), A039571(n+1)]` -/
def P12490385441871469041.Spec : Prop :=
  ∀ n, (P12490385441871469041.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P16267836646915513669

`∩[A039287(n+1), A039572(n+1)]`
-/

namespace A023743.P16267836646915513669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P16267836646915513669

namespace A023743

/-- `∩[A039287(n+1), A039572(n+1)]` -/
def P16267836646915513669.Spec : Prop :=
  ∀ n, (P16267836646915513669.a n : ℤ) = A023743 (n + 1)

end A023743

/-! ## A023743.P14269725699039478869

`∩[A039290(n+1), A039570(n+1)]`
-/

namespace A023743.P14269725699039478869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P14269725699039478869

namespace A023743

/-- `∩[A039290(n+1), A039570(n+1)]` -/
def P14269725699039478869.Spec : Prop :=
  ∀ n, (P14269725699039478869.a n : ℤ) = A023743 (n + 1)

end A023743

/-!
# A023744: Base 6 expansion uses each positive digit just once.

The programs for A023744, there is no canonical definition to state claims against.
-/

/-! ## A023744.P671288128341653435

`∩[A039584(n+1), A039590(n+2)]`
-/

namespace A023744.P671288128341653435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039590 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P671288128341653435

/-! ## A023744.P939675580702740359

`∩[A039583(n+1), A039588(n+2)]`
-/

namespace A023744.P939675580702740359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039588 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P939675580702740359

/-! ## A023744.P4022323979919623310

`∩[A039588(n+1), A039589(n+2)]`
-/

namespace A023744.P4022323979919623310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039589 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P4022323979919623310

/-! ## A023744.P5557487498956097950

`∩[A039588(n+1), A039590(n+2)]`
-/

namespace A023744.P5557487498956097950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039590 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P5557487498956097950

/-! ## A023744.P10426831352342346251

`∩[A039584(n+1), A039592(n+2)]`
-/

namespace A023744.P10426831352342346251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P10426831352342346251

/-! ## A023744.P9038682416137512203

`∩[A039585(n+1), A039592(n+2)]`
-/

namespace A023744.P9038682416137512203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023744.P9038682416137512203

/-!
# A023745: Plaindromes: numbers whose digits in base 3 are in nondecreasing order.

The programs for A023745, the canonical program `A023745.P14630683886862311875` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023745 has offset 1).

The definition of A023745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023745.P9272744185223328273

`A073216(n)-1`
-/

namespace A023745.P9272744185223328273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073216 n - 1

end

end A023745.P9272744185223328273

namespace A023745

/-- `A073216(n)-1` -/
def P9272744185223328273.Spec : Prop :=
  ∀ n, P9272744185223328273.a n = A023745 (n + 1)

end A023745

/-! ## A023745.P5597816565136464593

`A055235(n)/2-1`
-/

namespace A023745.P5597816565136464593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055235 n : ℚ) / 2 - 1

end

end A023745.P5597816565136464593

namespace A023745

/-- `A055235(n)/2-1` -/
def P5597816565136464593.Spec : Prop :=
  ∀ n, P5597816565136464593.a n = (A023745 (n + 1) : ℚ)

end A023745

/-! ## A023745.P12896777904146996036

`∑[A135293(n)/2]-1`
-/

namespace A023745.P12896777904146996036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135293 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A023745.P12896777904146996036

namespace A023745

/-- `∑[A135293(n)/2]-1` -/
def P12896777904146996036.Spec : Prop :=
  ∀ n, P12896777904146996036.a n = (A023745 (n + 1) : ℚ)

end A023745

/-! ## A023745.P17189272319061925466

`∑[lcm(A135293(n), A323022(n+1))/2]`
-/

namespace A023745.P17189272319061925466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A135293 n) (A323022 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023745.P17189272319061925466

namespace A023745

/-- `∑[lcm(A135293(n), A323022(n+1))/2]` -/
def P17189272319061925466.Spec : Prop :=
  ∀ n, P17189272319061925466.a n = (A023745 (n + 1) : ℚ)

end A023745

/-! ## A023745.P5055541818051022496

`(A098355(n)+A000244(A002262(n)))/2-1`
-/

namespace A023745.P5055541818051022496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n + A000244 (A002262 n).toNat : ℚ) / 2 - 1

end

end A023745.P5055541818051022496

namespace A023745

/-- `(A098355(n)+A000244(A002262(n)))/2-1` -/
def P5055541818051022496.Spec : Prop :=
  ∀ n, P5055541818051022496.a n = (A023745 (n + 1) : ℚ)

end A023745

/-! ## A023745.P14630683886862311875

`A003462(A002262(n))+A003462(A003056(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023745

/-- `A003462(A002262(n))+A003462(A003056(n))` -/
def P14630683886862311875.Spec : Prop :=
  ∀ n, P14630683886862311875.a n = A023745 (n + 1)

theorem P14630683886862311875.correct : P14630683886862311875.Spec := by
  intro n
  simp only [A023745, Nat.add_sub_cancel]

end A023745

/-! ## A023745.P10156074673039243643

`A057077(4*n+3)+A055235(n)/2`
-/

namespace A023745.P10156074673039243643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 (4 * n + 3) : ℚ) + (A055235 n : ℚ) / 2

end

end A023745.P10156074673039243643

namespace A023745

/-- `A057077(4*n+3)+A055235(n)/2` -/
def P10156074673039243643.Spec : Prop :=
  ∀ n, P10156074673039243643.a n = (A023745 (n + 1) : ℚ)

end A023745

/-! ## A023745.P14051975607989620179

`A153775(A099627(n))-1`
-/

namespace A023745.P14051975607989620179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (A099627 n).toNat - 1

end

end A023745.P14051975607989620179

namespace A023745

/-- `A153775(A099627(n))-1` -/
def P14051975607989620179.Spec : Prop :=
  ∀ n, P14051975607989620179.a n = A023745 (n + 1)

end A023745

/-! ## A023745.P8393585148126703287

`A261393(A089633(n))`
-/

namespace A023745.P8393585148126703287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A089633 n).toNat

end

end A023745.P8393585148126703287

namespace A023745

/-- `A261393(A089633(n))` -/
def P8393585148126703287.Spec : Prop :=
  ∀ n, P8393585148126703287.a n = A023745 (n + 1)

end A023745

/-! ## A023745.P7438258471825945911

`∩[A153775(n+1), A354047(n)]-1`
-/

namespace A023745.P7438258471825945911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A023745.P7438258471825945911

namespace A023745

/-- `∩[A153775(n+1), A354047(n)]-1` -/
def P7438258471825945911.Spec : Prop :=
  ∀ n, P7438258471825945911.a n = A023745 (n + 1)

end A023745

/-!
# A023746: Plaindromes: numbers whose digits in base 4 are in nondecreasing order.

The programs for A023746, there is no canonical definition to state claims against.
-/

/-! ## A023746.P4711278594760558155

`eq[A055949(n-A055949(n)), A165012(n)]`
-/

namespace A023746.P4711278594760558155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 ((n : ℤ) - A055949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P4711278594760558155

/-! ## A023746.P2143934283291217081

`record[A247891(n)]`
-/

namespace A023746.P2143934283291217081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023746.P2143934283291217081

/-! ## A023746.P9467806534839466903

`A087069(eq[A087069(n), A247891(n)])`
-/

namespace A023746.P9467806534839466903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023746.P9467806534839466903

/-! ## A023746.P10450685153969099810

`record[A319652(n)]`
-/

namespace A023746.P10450685153969099810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023746.P10450685153969099810

/-! ## A023746.P12605722791119425144

`eq[0, A037819(A028310(n))]`
-/

namespace A023746.P12605722791119425144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023746.P12605722791119425144

/-! ## A023746.P9501198114752943863

`eq[A030103(n), A319720(n)]`
-/

namespace A023746.P9501198114752943863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P9501198114752943863

/-! ## A023746.P4436421221577944030

`eq[A103205(n), A319652(n)]`
-/

namespace A023746.P4436421221577944030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P4436421221577944030

/-! ## A023746.P17734061945685380660

`eq[A190621(n), A319652(n)]`
-/

namespace A023746.P17734061945685380660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P17734061945685380660

/-! ## A023746.P1949773929874263063

`eq[A222260(n), A319652(n)]`
-/

namespace A023746.P1949773929874263063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P1949773929874263063

/-! ## A023746.P10814348466423615120

`eq[A254109(n), A319652(n)]`
-/

namespace A023746.P10814348466423615120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P10814348466423615120

/-! ## A023746.P9281447819323157710

`eq[A255347(n), A319652(n)]`
-/

namespace A023746.P9281447819323157710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P9281447819323157710

/-! ## A023746.P11708236607852524804

`eq[A319652(n), A322463(n)]`
-/

namespace A023746.P11708236607852524804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P11708236607852524804

/-! ## A023746.P14846644039259646460

`eq[A319652(n), A361676(n)]`
-/

namespace A023746.P14846644039259646460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P14846644039259646460

/-! ## A023746.P944564018990551813

`eq[A165012(n)+n, A319720(n)]`
-/

namespace A023746.P944564018990551813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023746.P944564018990551813

/-!
# A023747: Plaindromes: numbers whose digits in base 5 are in nondecreasing order.

The programs for A023747, there is no canonical definition to state claims against.
-/

/-! ## A023747.P6142115010912577618

`A102861(n+1)/4-1`
-/

namespace A023747.P6142115010912577618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102861 (n + 1) : ℚ) / 4 - 1

end

end A023747.P6142115010912577618

/-! ## A023747.P15349297580474989298

`record[A319653(n)]`
-/

namespace A023747.P15349297580474989298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023747.P15349297580474989298

/-! ## A023747.P3775529386353992601

`eq[0, A037820(A028310(n))]`
-/

namespace A023747.P3775529386353992601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023747.P3775529386353992601

/-! ## A023747.P12103691658078196845

`eq[A030104(n), A319722(n)]`
-/

namespace A023747.P12103691658078196845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023747.P12103691658078196845

/-! ## A023747.P11971754677929739228

`eq[A091703(n), A319653(n)]`
-/

namespace A023747.P11971754677929739228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023747.P11971754677929739228

/-! ## A023747.P9222983929772082636

`A319653(eq[n, A319653(n)])`
-/

namespace A023747.P9222983929772082636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023747.P9222983929772082636

/-! ## A023747.P415435248209761133

`eq[1, A229655(4*n)]-1`
-/

namespace A023747.P415435248209761133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229655 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A023747.P415435248209761133

/-! ## A023747.P9597442837791706846

`record[A030104(A319722(n))]`
-/

namespace A023747.P9597442837791706846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (A319722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023747.P9597442837791706846

/-! ## A023747.P11317827320969830157

`eq[A055951(A165032(n)+n), A165032(n)]`
-/

namespace A023747.P11317827320969830157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 (A165032 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023747.P11317827320969830157

/-! ## A023747.P7360425687290356404

`eq[A055951(n-A055951(n)), A165032(n)]`
-/

namespace A023747.P7360425687290356404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 ((n : ℤ) - A055951 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023747.P7360425687290356404

/-! ## A023747.P13920092658698159924

`eq[4, A053840(4*n)]-1`
-/

namespace A023747.P13920092658698159924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A023747.P13920092658698159924

/-! ## A023747.P10321306970416521702

`eq[A230865(4*n), 4*(n+1)]-1`
-/

namespace A023747.P10321306970416521702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℤ) - 1

end

end A023747.P10321306970416521702

/-! ## A023747.P9452668898503564826

`A027868(A102861(n+1))`
-/

namespace A023747.P9452668898503564826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A102861 (n + 1)).toNat

end

end A023747.P9452668898503564826

/-!
# A023748: Plaindromes: numbers whose digits in base 6 are in nondecreasing order.

The programs for A023748, there is no canonical definition to state claims against.
-/

/-! ## A023748.P7103827220857343417

`record[A319654(n)]`
-/

namespace A023748.P7103827220857343417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023748.P7103827220857343417

/-! ## A023748.P3908223789650742738

`eq[A030105(n), A319723(n)]`
-/

namespace A023748.P3908223789650742738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023748.P3908223789650742738

/-! ## A023748.P9395662157217736730

`A319654(eq[n, A319654(n)])`
-/

namespace A023748.P9395662157217736730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023748.P9395662157217736730

/-! ## A023748.P12317213931263177332

`record[A319723(n)-A165051(n)]`
-/

namespace A023748.P12317213931263177332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - A165051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023748.P12317213931263177332

/-! ## A023748.P3135598846309149921

`record[A319806(n)-A319723(n)]`
-/

namespace A023748.P3135598846309149921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319806 n - A319723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023748.P3135598846309149921

/-! ## A023748.P2224874998697543683

`record[A030105(A319723(n))]`
-/

namespace A023748.P2224874998697543683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A319723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023748.P2224874998697543683

/-! ## A023748.P2356505067124108197

`eq[A055953(n-A055953(n)), A165051(n)]`
-/

namespace A023748.P2356505067124108197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 ((n : ℤ) - A055953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023748.P2356505067124108197

/-! ## A023748.P17142613625716303032

`eq[A055953(A165051(n)+n), A165051(n)]`
-/

namespace A023748.P17142613625716303032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 (A165051 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023748.P17142613625716303032

/-! ## A023748.P6043085037675874392

`lt[2^n, A155559(A319806(n)-A319723(n)+1)]`
-/

namespace A023748.P6043085037675874392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 (A319806 n - A319723 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023748.P6043085037675874392

/-!
# A023749: Plaindromes: numbers whose digits in base 7 are in nondecreasing order.

The programs for A023749, there is no canonical definition to state claims against.
-/

/-! ## A023749.P4220246860039640225

`record[A319655(n)]`
-/

namespace A023749.P4220246860039640225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P4220246860039640225

/-! ## A023749.P9560695993370913237

`eq[0, A037822(A028310(n))]`
-/

namespace A023749.P9560695993370913237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023749.P9560695993370913237

/-! ## A023749.P8923935359349481209

`eq[A030106(n), A319724(n)]`
-/

namespace A023749.P8923935359349481209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023749.P8923935359349481209

/-! ## A023749.P10232408475570317813

`A319655(eq[n, A319655(n)])`
-/

namespace A023749.P10232408475570317813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023749.P10232408475570317813

/-! ## A023749.P7556629466808139991

`record[A030106(n)-A165071(n)]`
-/

namespace A023749.P7556629466808139991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n - A165071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P7556629466808139991

/-! ## A023749.P5913579476745143053

`record[A319724(n)-A165071(n)]`
-/

namespace A023749.P5913579476745143053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - A165071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P5913579476745143053

/-! ## A023749.P12156523315836975916

`record[A319807(n)-A319724(n)]`
-/

namespace A023749.P12156523315836975916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319807 n - A319724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P12156523315836975916

/-! ## A023749.P1887565851717685391

`A319655(lt[n, A319655(n)+1])`
-/

namespace A023749.P1887565851717685391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023749.P1887565851717685391

/-! ## A023749.P12451558831209003746

`A319655(lt[n-1, A319655(n)])`
-/

namespace A023749.P12451558831209003746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023749.P12451558831209003746

/-! ## A023749.P6308891225567644122

`eq[A319724(n)+n, A055954(n)]`
-/

namespace A023749.P6308891225567644122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023749.P6308891225567644122

/-! ## A023749.P6765464209694069494

`record[A030106(A319724(n))]`
-/

namespace A023749.P6765464209694069494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A319724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P6765464209694069494

/-! ## A023749.P4570082763449962988

`record[n-A193581(A007093(n))]`
-/

namespace A023749.P4570082763449962988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A193581 (A007093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023749.P4570082763449962988

/-! ## A023749.P3051362785739466483

`eq[n, A030106(A165071(n)+n)]`
-/

namespace A023749.P3051362785739466483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 (A165071 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023749.P3051362785739466483

/-! ## A023749.P17684065007868394427

`eq[A055955(A165071(n)+n), A165071(n)]`
-/

namespace A023749.P17684065007868394427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 (A165071 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023749.P17684065007868394427

/-! ## A023749.P6589968290579190652

`eq[A055955(n-A055955(n)), A165071(n)]`
-/

namespace A023749.P6589968290579190652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 ((n : ℤ) - A055955 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023749.P6589968290579190652

/-!
# A023750: Plaindromes: numbers whose digits in base 8 are in nondecreasing order.

The programs for A023750, there is no canonical definition to state claims against.
-/

/-! ## A023750.P5751433178372909507

`record[A319656(n)]`
-/

namespace A023750.P5751433178372909507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023750.P5751433178372909507

/-! ## A023750.P798716843018002554

`eq[A030107(n), A319725(n)]`
-/

namespace A023750.P798716843018002554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023750.P798716843018002554

/-! ## A023750.P13455479288336135424

`A319656(eq[n, A319656(n)])`
-/

namespace A023750.P13455479288336135424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023750.P13455479288336135424

/-! ## A023750.P14162425621138146227

`record[A319725(n)-A165090(n)]`
-/

namespace A023750.P14162425621138146227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - A165090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023750.P14162425621138146227

/-! ## A023750.P11328758559999534788

`record[A319808(n)-A319725(n)]`
-/

namespace A023750.P11328758559999534788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n - A319725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023750.P11328758559999534788

/-! ## A023750.P10933600534493961060

`A319656(lt[n, A319656(n)+1])`
-/

namespace A023750.P10933600534493961060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023750.P10933600534493961060

/-! ## A023750.P3220675354596775212

`A319656(lt[n-1, A319656(n)])`
-/

namespace A023750.P3220675354596775212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023750.P3220675354596775212

/-! ## A023750.P14410403843093017177

`eq[A319725(n)+n, A055956(n)]`
-/

namespace A023750.P14410403843093017177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023750.P14410403843093017177

/-! ## A023750.P15096397411302158595

`record[A030107(A319725(n))]`
-/

namespace A023750.P15096397411302158595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A319725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023750.P15096397411302158595

/-! ## A023750.P13842018126541194995

`eq[A055957(A165090(n)+n), A165090(n)]`
-/

namespace A023750.P13842018126541194995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 (A165090 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023750.P13842018126541194995

/-! ## A023750.P16554484116827520992

`eq[A055957(n-A055957(n)), A165090(n)]`
-/

namespace A023750.P16554484116827520992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 ((n : ℤ) - A055957 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023750.P16554484116827520992

/-!
# A023751: Plaindromes: numbers whose digits in base 9 are in nondecreasing order.

The programs for A023751, the canonical program `A023751.P17489473490239162121` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023751 has offset 1).

The definition of A023751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023751.P12529541094858859668

`record[A319657(n)]`
-/

namespace A023751.P12529541094858859668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023751.P12529541094858859668

namespace A023751

/-- `record[A319657(n)]` -/
def P12529541094858859668.Spec : Prop :=
  ∀ n, P12529541094858859668.a n = A023751 (n + 1)

end A023751

/-! ## A023751.P8205226155118065385

`eq[A030108(n), A319726(n)]`
-/

namespace A023751.P8205226155118065385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023751.P8205226155118065385

namespace A023751

/-- `eq[A030108(n), A319726(n)]` -/
def P8205226155118065385.Spec : Prop :=
  ∀ n, (P8205226155118065385.a n : ℤ) = A023751 (n + 1)

end A023751

/-! ## A023751.P9761748716392448067

`A319657(eq[n, A319657(n)])`
-/

namespace A023751.P9761748716392448067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023751.P9761748716392448067

namespace A023751

/-- `A319657(eq[n, A319657(n)])` -/
def P9761748716392448067.Spec : Prop :=
  ∀ n, P9761748716392448067.a n = A023751 (n + 1)

end A023751

/-! ## A023751.P8795606905813776778

`A319657(lt[n, A319657(n)+1])`
-/

namespace A023751.P8795606905813776778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023751.P8795606905813776778

namespace A023751

/-- `A319657(lt[n, A319657(n)+1])` -/
def P8795606905813776778.Spec : Prop :=
  ∀ n, P8795606905813776778.a n = A023751 (n + 1)

end A023751

/-! ## A023751.P17702021625775465246

`lt[A030108(n-A319657(n)), 1]`
-/

namespace A023751.P17702021625775465246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 ((n : ℤ) - A319657 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023751.P17702021625775465246

namespace A023751

/-- `lt[A030108(n-A319657(n)), 1]` -/
def P17702021625775465246.Spec : Prop :=
  ∀ n, (P17702021625775465246.a n : ℤ) = A023751 (n + 1)

end A023751

/-! ## A023751.P12453249868970103086

`A319657(lt[n-1, A319657(n)])`
-/

namespace A023751.P12453249868970103086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023751.P12453249868970103086

namespace A023751

/-- `A319657(lt[n-1, A319657(n)])` -/
def P12453249868970103086.Spec : Prop :=
  ∀ n, P12453249868970103086.a n = A023751 (n + 1)

end A023751

/-! ## A023751.P5614677338789238008

`eq[A319726(n)+n, A055958(n)]`
-/

namespace A023751.P5614677338789238008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023751.P5614677338789238008

namespace A023751

/-- `eq[A319726(n)+n, A055958(n)]` -/
def P5614677338789238008.Spec : Prop :=
  ∀ n, (P5614677338789238008.a n : ℤ) = A023751 (n + 1)

end A023751

/-! ## A023751.P17489473490239162121

`eq[8, A053830(8*(n+1))]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023751

/-- `eq[8, A053830(8*(n+1))]` -/
def P17489473490239162121.Spec : Prop :=
  ∀ n, (P17489473490239162121.a n : ℤ) = A023751 (n + 1)

theorem P17489473490239162121.correct : P17489473490239162121.Spec := by
  intro n
  simp only [A023751, Nat.add_sub_cancel]

end A023751

/-! ## A023751.P15721872592958616991

`record[A030108(A319726(n))]`
-/

namespace A023751.P15721872592958616991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319726 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023751.P15721872592958616991

namespace A023751

/-- `record[A030108(A319726(n))]` -/
def P15721872592958616991.Spec : Prop :=
  ∀ n, P15721872592958616991.a n = A023751 (n + 1)

end A023751

/-! ## A023751.P3033148884122002685

`lt[A193582(lt[A268643(n), 1]), 2]`
-/

namespace A023751.P3033148884122002685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A023751.P3033148884122002685

namespace A023751

/-- `lt[A193582(lt[A268643(n), 1]), 2]` -/
def P3033148884122002685.Spec : Prop :=
  ∀ n, (P3033148884122002685.a n : ℤ) = A023751 (n + 1)

end A023751

/-! ## A023751.P12287009576571342090

`eq[A055959(n-A055959(n)), A165110(n)]`
-/

namespace A023751.P12287009576571342090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 ((n : ℤ) - A055959 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023751.P12287009576571342090

namespace A023751

/-- `eq[A055959(n-A055959(n)), A165110(n)]` -/
def P12287009576571342090.Spec : Prop :=
  ∀ n, (P12287009576571342090.a n : ℤ) = A023751 (n + 1)

end A023751

/-! ## A023751.P17385463687740538727

`eq[A055959(A165110(n)+n), A165110(n)]`
-/

namespace A023751.P17385463687740538727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 (A165110 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023751.P17385463687740538727

namespace A023751

/-- `eq[A055959(A165110(n)+n), A165110(n)]` -/
def P17385463687740538727.Spec : Prop :=
  ∀ n, (P17385463687740538727.a n : ℤ) = A023751 (n + 1)

end A023751

/-!
# A023752: Plaindromes: numbers whose digits in base 11 are in nondecreasing order.

The programs for A023752, there is no canonical definition to state claims against.
-/

/-! ## A023752.P9856096668038773413

`eq[0, A297231(abs(1-n)+1)]`
-/

namespace A023752.P9856096668038773413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023752.P9856096668038773413

/-! ## A023752.P12680353320334357981

`lt[A297231(round(sqrt(n²+1))), 1]`
-/

namespace A023752.P12680353320334357981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023752.P12680353320334357981

/-! ## A023752.P14495631647255204322

`eq[10, A053831(10*(n+1))]`
-/

namespace A023752.P14495631647255204322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 (10 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023752.P14495631647255204322

/-! ## A023752.P8461622448937845463

`record[gcd(n, A064458(2*(n+5)))]`
-/

namespace A023752.P8461622448937845463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A064458 (2 * (n + 5)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023752.P8461622448937845463

/-! ## A023752.P12062102339631306225

`A064458(eq[10, A053831(n)])`
-/

namespace A023752.P12062102339631306225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023752.P12062102339631306225

/-! ## A023752.P17144684068485351576

`eq[0, A064458(n)-A064459(n)]`
-/

namespace A023752.P17144684068485351576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n - A064459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023752.P17144684068485351576

/-! ## A023752.P17341212567817906469

`lt[A064458(n)-A342696(n), 1]`
-/

namespace A023752.P17341212567817906469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n - A342696 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023752.P17341212567817906469

/-! ## A023752.P15784937270140003598

`eq[A004186(A064458(n)), A064459(n)]`
-/

namespace A023752.P15784937270140003598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A064458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023752.P15784937270140003598

/-! ## A023752.P10241117287717571467

`eq[1, A014196(A055649(n)-A049872(n))]`
-/

namespace A023752.P10241117287717571467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014196 (A055649 n - A049872 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023752.P10241117287717571467

/-!
# A023753: Plaindromes: numbers whose digits in base 12 are in nondecreasing order.

The programs for A023753, there is no canonical definition to state claims against.
-/

/-! ## A023753.P185853396915642113

`eq[0, A297234(C(3, n)+n)]`
-/

namespace A023753.P185853396915642113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (Nat.choose 3 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023753.P185853396915642113

/-! ## A023753.P15813809302511462962

`eq[n+1, (n+1)*a(A297234(n))]` with `a(0)=1`
-/

namespace A023753.P15813809302511462962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (A297234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023753.P15813809302511462962

/-! ## A023753.P4153207188263085673

`record[gcd(n, A297234(A028310(n)))]`
-/

namespace A023753.P4153207188263085673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A297234 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023753.P4153207188263085673

/-! ## A023753.P8074017315501343628

`eq[0, A297234(A233583(n+1))]`
-/

namespace A023753.P8074017315501343628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023753.P8074017315501343628

/-! ## A023753.P14106811389676282990

`eq[0, A297234(12*n+11)]`
-/

namespace A023753.P14106811389676282990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023753.P14106811389676282990

/-! ## A023753.P17972994460013079759

`eq[1, A103380(n+2)/A103380(n+1)]`
-/

namespace A023753.P17972994460013079759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103380 (n + 2) : ℚ) / (A103380 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A023753.P17972994460013079759

/-! ## A023753.P878235855204441609

`eq[A004186(A064459(n)), A090620(n)]`
-/

namespace A023753.P878235855204441609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A064459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023753.P878235855204441609

/-! ## A023753.P15085882032412596803

`eq[A001222(A103380(n+1)), A064459(n)]`
-/

namespace A023753.P15085882032412596803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103380 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023753.P15085882032412596803

/-! ## A023753.P3263387549838536857

`eq[A064459(n), A090620(A106614(n+1))]`
-/

namespace A023753.P3263387549838536857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A106614 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023753.P3263387549838536857

/-! ## A023753.P11625603022039140556

`eq[A064459(n-A064459(n)), A064459(n)]`
-/

namespace A023753.P11625603022039140556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 ((n : ℤ) - A064459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023753.P11625603022039140556

/-!
# A023754: Plaindromes: numbers whose digits in base 13 are in nondecreasing order.

The programs for A023754, there is no canonical definition to state claims against.
-/

/-! ## A023754.P14787288184287150616

`eq[0, A297237(abs(1-n)+1)]`
-/

namespace A023754.P14787288184287150616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023754.P14787288184287150616

/-! ## A023754.P13342834667127867534

`lt[A297237(A028310(n)), 1]`
-/

namespace A023754.P13342834667127867534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023754.P13342834667127867534

/-! ## A023754.P10818200509059190847

`lt[A297237(A233583(n+1)), 1]`
-/

namespace A023754.P10818200509059190847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023754.P10818200509059190847

/-! ## A023754.P12248271047423984651

`eq[2*n-A297237(A233583(n+1)), A005843(n)]`
-/

namespace A023754.P12248271047423984651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A297237 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023754.P12248271047423984651

/-! ## A023754.P5653850213086913831

`record[gcd(n, A090620(4*(n+3)))]`
-/

namespace A023754.P5653850213086913831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A090620 (4 * (n + 3)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023754.P5653850213086913831

/-! ## A023754.P13577688901709640349

`eq[A090620(n-A090620(n)), A090620(n)]`
-/

namespace A023754.P13577688901709640349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 ((n : ℤ) - A090620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023754.P13577688901709640349

/-! ## A023754.P10628148474264200303

`eq[A118635(A043318(n+1)), A118635(n+1)]`
-/

namespace A023754.P10628148474264200303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118635 (A043318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023754.P10628148474264200303

/-! ## A023754.P11775395704225769312

`eq[A224317(A043318(n+1)), A224317(n+1)]`
-/

namespace A023754.P11775395704225769312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224317 (A043318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023754.P11775395704225769312

/-! ## A023754.P3605768434351405820

`eq[A308259(A043318(n+1)), A308259(n+1)]`
-/

namespace A023754.P3605768434351405820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308259 (A043318 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023754.P3605768434351405820

/-!
# A023755: Plaindromes: numbers whose digits in base 14 are in nondecreasing order.

The programs for A023755, there is no canonical definition to state claims against.
-/

/-! ## A023755.P8992536018910982437

`lt[A297240(round(acot(n)+n)), 1]`
-/

namespace A023755.P8992536018910982437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023755.P8992536018910982437

/-! ## A023755.P9353705306225702422

`eq[n+1, (n+1)*a(A297240(n))]` with `a(0)=1`
-/

namespace A023755.P9353705306225702422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (A297240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023755.P9353705306225702422

/-! ## A023755.P4062613715134531621

`eq[0, A297240(A028310(n))]`
-/

namespace A023755.P4062613715134531621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P4062613715134531621

/-! ## A023755.P16506339184438756099

`eq[0, A297240(A000038(n)+n)]`
-/

namespace A023755.P16506339184438756099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P16506339184438756099

/-! ## A023755.P8969323436672970927

`eq[0, A297240(A233583(n+1))]`
-/

namespace A023755.P8969323436672970927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P8969323436672970927

/-! ## A023755.P1774557882044963515

`comp[A297282(n+1)]%A067557(n+1)`
-/

namespace A023755.P1774557882044963515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297282 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A067557 (n + 1))

end

end A023755.P1774557882044963515

/-! ## A023755.P4148473802456383964

`eq[0, A297240(n^A178334(n))]`
-/

namespace A023755.P4148473802456383964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P4148473802456383964

/-! ## A023755.P1033867845906941600

`eq[1, A032548(A047358(n+1))]`
-/

namespace A023755.P1033867845906941600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A047358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P1033867845906941600

/-! ## A023755.P9128414861493238942

`eq[1, A032548(A047294(2*n+1))]`
-/

namespace A023755.P9128414861493238942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A047294 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023755.P9128414861493238942

/-! ## A023755.P4487393973094284834

`lt[A043319(n+1), A052470(n+1)+A043320(n+1)]`
-/

namespace A023755.P4487393973094284834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052470 (n + 1) + A043320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023755.P4487393973094284834

/-!
# A023756: Plaindromes: numbers whose digits in base 15 are in nondecreasing order.

The programs for A023756, there is no canonical definition to state claims against.
-/

/-! ## A023756.P8817797907382821818

`eq[n+1, (n+1)*a(A297243(n))]` with `a(0)=1`
-/

namespace A023756.P8817797907382821818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (A297243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023756.P8817797907382821818

/-! ## A023756.P5607565863834173370

`eq[0, A297243(A028310(n))]`
-/

namespace A023756.P5607565863834173370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023756.P5607565863834173370

/-! ## A023756.P5143734808840869751

`eq[0, A297243(A000007(n)+n)]`
-/

namespace A023756.P5143734808840869751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023756.P5143734808840869751

/-! ## A023756.P9171066893596198805

`eq[0, A297243(A065033(2*n))]`
-/

namespace A023756.P9171066893596198805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023756.P9171066893596198805

/-! ## A023756.P5425245665634816366

`eq[0, A297243(A233583(n+1))]`
-/

namespace A023756.P5425245665634816366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023756.P5425245665634816366

/-! ## A023756.P11548860057345183435

`lt[sqrt(sqrt(A043320(n+1)/(n+1))), 2]`
-/

namespace A023756.P11548860057345183435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt ((A043320 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A023756.P11548860057345183435

/-! ## A023756.P2826796833049618190

`lt[n, A217558(A053836(n)+1)]`
-/

namespace A023756.P2826796833049618190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A053836 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023756.P2826796833049618190

/-! ## A023756.P15575020101273678216

`eq[A217558(n)%15, A053836(n)]`
-/

namespace A023756.P15575020101273678216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217558 n) 15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023756.P15575020101273678216

/-!
# A023757: Plaindromes: numbers whose digits in base 16 are in nondecreasing order.

The programs for A023757, there is no canonical definition to state claims against.
-/

/-! ## A023757.P9922816674919473369

`eq[0, A297246((2*n)%(n+1)+1)]`
-/

namespace A023757.P9922816674919473369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (2 * n % (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023757.P9922816674919473369

/-! ## A023757.P14597635046101819027

`eq[0, A297246(A123108(2*n))]`
-/

namespace A023757.P14597635046101819027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023757.P14597635046101819027

/-! ## A023757.P11469955538455143160

`eq[0, A297246(A233583(n+1))]`
-/

namespace A023757.P11469955538455143160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023757.P11469955538455143160

/-! ## A023757.P5370712023064454732

`eq[0, A297246(A125169(n))]`
-/

namespace A023757.P5370712023064454732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A125169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023757.P5370712023064454732

/-! ## A023757.P14744825441832584709

`eq[0, A297246(A004771(2*n+1))]`
-/

namespace A023757.P14744825441832584709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A004771 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023757.P14744825441832584709

/-! ## A023757.P7320326945111374560

`lt[n, A217558(n)+1]`
-/

namespace A023757.P7320326945111374560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023757.P7320326945111374560

/-! ## A023757.P13155934869528503534

`lt[A007090(n)/(abs(1-2*n)+1), 3]`
-/

namespace A023757.P13155934869528503534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007090 n : ℚ) / (|1 - (2 * n : ℤ)| + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A023757.P13155934869528503534

/-! ## A023757.P17615226340940400492

`lt[A007090(n)-A008458(n), 1]`
-/

namespace A023757.P17615226340940400492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n - A008458 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023757.P17615226340940400492

/-!
# A023758: Numbers of the form 2^i - 2^j with i >= j.

The programs for A023758, the canonical program `A023758.P2175844917401416234` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023758 has offset 1).

The definition of A023758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023758.P2175844917401416234

`A057728(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A023758

/-- `A057728(n)+a(n-1)` -/
def P2175844917401416234.Spec : Prop :=
  ∀ n, P2175844917401416234.a n = A023758 (n + 1)

theorem P2175844917401416234.correct : P2175844917401416234.Spec := by
  intro n
  simp only [A023758, Nat.add_sub_cancel]

end A023758

/-! ## A023758.P2245537749600625366

`∑[A057728(A000007(n)+n)]-1`
-/

namespace A023758.P2245537749600625366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A023758.P2245537749600625366

namespace A023758

/-- `∑[A057728(A000007(n)+n)]-1` -/
def P2245537749600625366.Spec : Prop :=
  ∀ n, P2245537749600625366.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P9242318064754480176

`∑[A057728(n+1)]-A057728(n+1)`
-/

namespace A023758.P9242318064754480176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057728 (n + 1)

end

end A023758.P9242318064754480176

namespace A023758

/-- `∑[A057728(n+1)]-A057728(n+1)` -/
def P9242318064754480176.Spec : Prop :=
  ∀ n, P9242318064754480176.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P5613359004948857690

`A089633(n-A023532(n))+A023532(n)`
-/

namespace A023758.P5613359004948857690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 ((n : ℤ) - A023532 n).toNat + A023532 n

end

end A023758.P5613359004948857690

namespace A023758

/-- `A089633(n-A023532(n))+A023532(n)` -/
def P5613359004948857690.Spec : Prop :=
  ∀ n, P5613359004948857690.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P12882059379941887797

`A089633(n-A057427(n))+A057427(n)`
-/

namespace A023758.P12882059379941887797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A023758.P12882059379941887797

namespace A023758

/-- `A089633(n-A057427(n))+A057427(n)` -/
def P12882059379941887797.Spec : Prop :=
  ∀ n, P12882059379941887797.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P17199658433544478920

`record[A137688(n)-A130321(n)]`
-/

namespace A023758.P17199658433544478920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023758.P17199658433544478920

namespace A023758

/-- `record[A137688(n)-A130321(n)]` -/
def P17199658433544478920.Spec : Prop :=
  ∀ n, P17199658433544478920.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P1620063682689597365

`record[A130321(A057944(n))-A130321(n)]`
-/

namespace A023758.P1620063682689597365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A057944 n).toNat - A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023758.P1620063682689597365

namespace A023758

/-- `record[A130321(A057944(n))-A130321(n)]` -/
def P1620063682689597365.Spec : Prop :=
  ∀ n, P1620063682689597365.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P5303869641281185472

`record[A078446(n+1)-1]`
-/

namespace A023758.P5303869641281185472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023758.P5303869641281185472

namespace A023758

/-- `record[A078446(n+1)-1]` -/
def P5303869641281185472.Spec : Prop :=
  ∀ n, P5303869641281185472.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P15567497685451348076

`∩[A077436(n+1), A335042(n+1)]`
-/

namespace A023758.P15567497685451348076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P15567497685451348076

namespace A023758

/-- `∩[A077436(n+1), A335042(n+1)]` -/
def P15567497685451348076.Spec : Prop :=
  ∀ n, (P15567497685451348076.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P10222733373904941203

`∩[A077436(n+1), A335040(n+1)]`
-/

namespace A023758.P10222733373904941203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P10222733373904941203

namespace A023758

/-- `∩[A077436(n+1), A335040(n+1)]` -/
def P10222733373904941203.Spec : Prop :=
  ∀ n, (P10222733373904941203.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P15750304923146848626

`∩[A057890(n+1), A258209(n)]`
-/

namespace A023758.P15750304923146848626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P15750304923146848626

namespace A023758

/-- `∩[A057890(n+1), A258209(n)]` -/
def P15750304923146848626.Spec : Prop :=
  ∀ n, (P15750304923146848626.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P12695320060889911747

`∩[A077436(n+1), A391744(n+1)]`
-/

namespace A023758.P12695320060889911747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P12695320060889911747

namespace A023758

/-- `∩[A077436(n+1), A391744(n+1)]` -/
def P12695320060889911747.Spec : Prop :=
  ∀ n, (P12695320060889911747.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P14078225906584370348

`record[and(A003754(n+1), A175055(n+1))]`
-/

namespace A023758.P14078225906584370348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003754 (n + 1)) (A175055 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023758.P14078225906584370348

namespace A023758

/-- `record[and(A003754(n+1), A175055(n+1))]` -/
def P14078225906584370348.Spec : Prop :=
  ∀ n, P14078225906584370348.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P9245312706942679319

`A336231(A007298(n+2))`
-/

namespace A023758.P9245312706942679319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A007298 (n + 2)).toNat

end

end A023758.P9245312706942679319

namespace A023758

/-- `A336231(A007298(n+2))` -/
def P9245312706942679319.Spec : Prop :=
  ∀ n, P9245312706942679319.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P16301722051531150119

`∩[A057890(n+1), A257250(n)]`
-/

namespace A023758.P16301722051531150119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P16301722051531150119

namespace A023758

/-- `∩[A057890(n+1), A257250(n)]` -/
def P16301722051531150119.Spec : Prop :=
  ∀ n, (P16301722051531150119.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P6106230390713786241

`∩[A004745(n+1), A336231(n+1)]`
-/

namespace A023758.P6106230390713786241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P6106230390713786241

namespace A023758

/-- `∩[A004745(n+1), A336231(n+1)]` -/
def P6106230390713786241.Spec : Prop :=
  ∀ n, (P6106230390713786241.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P9775678724767415295

`∩[A004745(n+1), A391740(n+1)]`
-/

namespace A023758.P9775678724767415295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P9775678724767415295

namespace A023758

/-- `∩[A004745(n+1), A391740(n+1)]` -/
def P9775678724767415295.Spec : Prop :=
  ∀ n, (P9775678724767415295.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P9149709638248767335

`∩[A295235(n+1), A258209(n)]`
-/

namespace A023758.P9149709638248767335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023758.P9149709638248767335

namespace A023758

/-- `∩[A295235(n+1), A258209(n)]` -/
def P9149709638248767335.Spec : Prop :=
  ∀ n, (P9149709638248767335.a n : ℤ) = A023758 (n + 1)

end A023758

/-! ## A023758.P2235066270443932945

`filter[A257250(n), A340375(#)]`
-/

namespace A023758.P2235066270443932945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A023758.P2235066270443932945

namespace A023758

/-- `filter[A257250(n), A340375(#)]` -/
def P2235066270443932945.Spec : Prop :=
  ∀ n, P2235066270443932945.a n = A023758 (n + 1)

end A023758

/-! ## A023758.P10903102342300930563

`filter[A258209(n), A340375(#)]`
-/

namespace A023758.P10903102342300930563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A023758.P10903102342300930563

namespace A023758

/-- `filter[A258209(n), A340375(#)]` -/
def P10903102342300930563.Spec : Prop :=
  ∀ n, P10903102342300930563.a n = A023758 (n + 1)

end A023758

/-!
# A023759: Nialpdromes: digits in base 3 are in nonincreasing order.

The programs for A023759, there is no canonical definition to state claims against.
-/

/-! ## A023759.P14120720933438982775

`eq[A055947(n), A164993(n)]`
-/

namespace A023759.P14120720933438982775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023759.P14120720933438982775

/-! ## A023759.P15181117655574749960

`eq[n, A319651(n)]`
-/

namespace A023759.P15181117655574749960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023759.P15181117655574749960

/-! ## A023759.P3806233492245146077

`eq[0, A037880(A028310(n))]`
-/

namespace A023759.P3806233492245146077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023759.P3806233492245146077

/-! ## A023759.P2236303128643010790

`eq[A030102(n), A038574(n)]`
-/

namespace A023759.P2236303128643010790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023759.P2236303128643010790

/-! ## A023759.P954816115289954044

`eq[A038586(n), A305877(n)]`
-/

namespace A023759.P954816115289954044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023759.P954816115289954044

/-! ## A023759.P8579355240249237431

`A319651(lt[A319651(n), n+1])`
-/

namespace A023759.P8579355240249237431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023759.P8579355240249237431

/-! ## A023759.P6580158646555684998

`A319651(lt[A319651(n)-1, n])`
-/

namespace A023759.P6580158646555684998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023759.P6580158646555684998

/-! ## A023759.P7660960240215481934

`eq[n, A164993(n)+A038574(n)]`
-/

namespace A023759.P7660960240215481934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 n + A038574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023759.P7660960240215481934

/-! ## A023759.P5477038365724142315

`eq[A038574(n)+n, A319803(n)]`
-/

namespace A023759.P5477038365724142315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038574 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023759.P5477038365724142315

/-! ## A023759.P17253897541425598286

`record[gcd(A064680(2*n), A319651(n))]`
-/

namespace A023759.P17253897541425598286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064680 (2 * n)) (A319651 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023759.P17253897541425598286

/-! ## A023759.P16104137055158959523

`record[n-A319651(A064680(n))]`
-/

namespace A023759.P16104137055158959523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A319651 (A064680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023759.P16104137055158959523

/-!
# A023760: Nialpdromes: digits in base 4 are in nonincreasing order.

The programs for A023760, there is no canonical definition to state claims against.
-/

/-! ## A023760.P9285844669351298178

`A031999(A028310(n))-A000007(n)`
-/

namespace A023760.P9285844669351298178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (A028310 n).toNat - A000007 n

end

end A023760.P9285844669351298178

/-! ## A023760.P1546862689919438476

`and(A031999(A028310(n)), A057428(n))`
-/

namespace A023760.P1546862689919438476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031999 (A028310 n).toNat) (A057428 n)

end

end A023760.P1546862689919438476

/-! ## A023760.P16704311772071781598

`A031999(A028310(n))%A031999(n+1)`
-/

namespace A023760.P16704311772071781598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031999 (A028310 n).toNat) (A031999 (n + 1))

end

end A023760.P16704311772071781598

/-! ## A023760.P14187854063991968187

`A031999(A000007(n)+n)-A000007(n)`
-/

namespace A023760.P14187854063991968187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A023760.P14187854063991968187

/-! ## A023760.P4903426448706850696

`A031999(A028310(n))-A049084(2*(n+1))`
-/

namespace A023760.P4903426448706850696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031999 (A028310 n).toNat - A049084 (2 * (n + 1))

end

end A023760.P4903426448706850696

/-! ## A023760.P17943724233531918957

`record[A031999(A087507(n))%A031999(n+1)]`
-/

namespace A023760.P17943724233531918957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031999 (A087507 n).toNat) (A031999 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023760.P17943724233531918957

/-! ## A023760.P12162340518344232391

`eq[A055949(n), A165012(n)]`
-/

namespace A023760.P12162340518344232391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023760.P12162340518344232391

/-! ## A023760.P5747038178440168191

`eq[n, A319720(n)]`
-/

namespace A023760.P5747038178440168191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023760.P5747038178440168191

/-! ## A023760.P1214590390126381142

`eq[A030103(n), A319652(n)]`
-/

namespace A023760.P1214590390126381142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023760.P1214590390126381142

/-! ## A023760.P7099303431830205764

`A319720(lt[A319720(n), n+1])`
-/

namespace A023760.P7099303431830205764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023760.P7099303431830205764

/-! ## A023760.P14132782823418544237

`A319720(lt[A319720(n)-1, n])`
-/

namespace A023760.P14132782823418544237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023760.P14132782823418544237

/-! ## A023760.P13175398449283371246

`eq[n, A319652(n)+A165012(n)]`
-/

namespace A023760.P13175398449283371246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n + A165012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023760.P13175398449283371246

/-! ## A023760.P18339710788036400205

`A319720(record[2*n-A319720(n)])`
-/

namespace A023760.P18339710788036400205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A319720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023760.P18339710788036400205

/-! ## A023760.P6629991930856140556

`eq[A020654(n+1), A319722(A020654(n+1))]`
-/

namespace A023760.P6629991930856140556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 (A020654 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023760.P6629991930856140556

/-! ## A023760.P13720431270444755849

`eq[A165013(n)+n, A165013(A008574(n))]`
-/

namespace A023760.P13720431270444755849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165013 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165013 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023760.P13720431270444755849

/-! ## A023760.P9914625447521823143

`lt[n, char[A319720(n)]*A029749(n)]`
-/

namespace A023760.P9914625447521823143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A029749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023760.P9914625447521823143

/-!
# A023761: Nialpdromes: digits in base 5 are in nonincreasing order.

The programs for A023761, there is no canonical definition to state claims against.
-/

/-! ## A023761.P7178143869194759882

`eq[0, A037803(A028310(n))]`
-/

namespace A023761.P7178143869194759882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023761.P7178143869194759882

/-! ## A023761.P5208658327655995175

`eq[A055951(n), A165032(n)]`
-/

namespace A023761.P5208658327655995175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023761.P5208658327655995175

/-! ## A023761.P8387480163348009435

`eq[n, A319722(n)]`
-/

namespace A023761.P8387480163348009435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023761.P8387480163348009435

/-! ## A023761.P7514437343493228948

`eq[A030104(n), A319653(n)]`
-/

namespace A023761.P7514437343493228948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023761.P7514437343493228948

/-! ## A023761.P14724255182458038635

`lt[A319722(n), A028310(n+1)]`
-/

namespace A023761.P14724255182458038635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023761.P14724255182458038635

/-! ## A023761.P15381199498588544360

`A319722(lt[A319722(n), n+1])`
-/

namespace A023761.P15381199498588544360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023761.P15381199498588544360

/-! ## A023761.P7272353677523193817

`lt[A319722(n)-1, A028310(n)]`
-/

namespace A023761.P7272353677523193817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319722 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023761.P7272353677523193817

/-! ## A023761.P7303795640334384919

`eq[n, A319653(n)+A165032(n)]`
-/

namespace A023761.P7303795640334384919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n + A165032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023761.P7303795640334384919

/-! ## A023761.P11790596218714247002

`record[n-A000096(A319722(n)-n)]`
-/

namespace A023761.P11790596218714247002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000096 (A319722 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023761.P11790596218714247002

/-! ## A023761.P3995023857147793960

`record[n-A077221(A319722(n)-n)]`
-/

namespace A023761.P3995023857147793960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A077221 (A319722 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023761.P3995023857147793960

/-! ## A023761.P17593579398298217454

`eq[A165033(n)+n, A165033(A008706(n))]`
-/

namespace A023761.P17593579398298217454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023761.P17593579398298217454

/-!
# A023762: Nialpdromes: digits in base 6 are in nonincreasing order.

The programs for A023762, there is no canonical definition to state claims against.
-/

/-! ## A023762.P11011887126062703592

`eq[n, A319723(n)]`
-/

namespace A023762.P11011887126062703592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023762.P11011887126062703592

/-! ## A023762.P10608197170154292678

`eq[A055953(n), A165051(n)]`
-/

namespace A023762.P10608197170154292678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023762.P10608197170154292678

/-! ## A023762.P14039218863853296610

`eq[A030105(n), A319654(n)]`
-/

namespace A023762.P14039218863853296610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023762.P14039218863853296610

/-! ## A023762.P14594998561887528330

`record[A005843(n)-A319723(n)]`
-/

namespace A023762.P14594998561887528330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A319723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023762.P14594998561887528330

/-! ## A023762.P18313047220057028552

`lt[A319723(n)², A010000(n)]`
-/

namespace A023762.P18313047220057028552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023762.P18313047220057028552

/-! ## A023762.P16733648596453506159

`lt[A319723(n), A000027(n+1)]`
-/

namespace A023762.P16733648596453506159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023762.P16733648596453506159

/-! ## A023762.P5889009945547418108

`A319723(lt[A319723(n), n+1])`
-/

namespace A023762.P5889009945547418108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023762.P5889009945547418108

/-! ## A023762.P15310542306198925789

`A319723(lt[A319723(n)-1, n])`
-/

namespace A023762.P15310542306198925789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023762.P15310542306198925789

/-! ## A023762.P18382547515117879995

`eq[n, A319654(n)+A165051(n)]`
-/

namespace A023762.P18382547515117879995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 n + A165051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023762.P18382547515117879995

/-! ## A023762.P3504030647580578061

`lt[n, char[A319723(n)]*A025707(n)]`
-/

namespace A023762.P3504030647580578061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319723 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023762.P3504030647580578061

/-! ## A023762.P7615606574796235189

`record[n-A119246(A319723(n)+1-n)]`
-/

namespace A023762.P7615606574796235189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A119246 (A319723 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023762.P7615606574796235189

/-!
# A023763: Nialpdromes: digits in base 7 are in nonincreasing order.

The programs for A023763, there is no canonical definition to state claims against.
-/

/-! ## A023763.P4580355403416242750

`eq[n, A319724(n)]`
-/

namespace A023763.P4580355403416242750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023763.P4580355403416242750

/-! ## A023763.P12066197845130337435

`eq[A055955(n), A165071(n)]`
-/

namespace A023763.P12066197845130337435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023763.P12066197845130337435

/-! ## A023763.P3949546120656135897

`eq[A030106(n), A319655(n)]`
-/

namespace A023763.P3949546120656135897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023763.P3949546120656135897

/-! ## A023763.P15917620253580432229

`record[A005843(n)-A319724(n)]`
-/

namespace A023763.P15917620253580432229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A319724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023763.P15917620253580432229

/-! ## A023763.P15298577337734368384

`lt[A319724(n), A028310(n+1)]`
-/

namespace A023763.P15298577337734368384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023763.P15298577337734368384

/-! ## A023763.P13916164268689158811

`A319724(lt[A319724(n), n+1])`
-/

namespace A023763.P13916164268689158811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023763.P13916164268689158811

/-! ## A023763.P11287230810900603655

`lt[A319724(n)-1, A028310(n)]`
-/

namespace A023763.P11287230810900603655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023763.P11287230810900603655

/-! ## A023763.P16026331848665864780

`A319724(lt[A319724(n)-1, n])`
-/

namespace A023763.P16026331848665864780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319724 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023763.P16026331848665864780

/-! ## A023763.P5317325597127842234

`eq[n, A165071(n)+A030106(n)]`
-/

namespace A023763.P5317325597127842234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n + A030106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023763.P5317325597127842234

/-! ## A023763.P3056128048311205652

`eq[A319655(n)+n, A055954(n)]`
-/

namespace A023763.P3056128048311205652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023763.P3056128048311205652

/-! ## A023763.P15614125503320899534

`eq[n, A319655(n)+A165071(n)]`
-/

namespace A023763.P15614125503320899534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 n + A165071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023763.P15614125503320899534

/-! ## A023763.P8445486908186913391

`record[n-A020756(A319724(n)+1-n)]`
-/

namespace A023763.P8445486908186913391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A020756 (A319724 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023763.P8445486908186913391

/-! ## A023763.P11845042214414226801

`eq[A004186(A007093(n)), A007093(n)]`
-/

namespace A023763.P11845042214414226801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023763.P11845042214414226801

/-!
# A023764: Nialpdromes: digits in base 8 are in nonincreasing order.

The programs for A023764, there is no canonical definition to state claims against.
-/

/-! ## A023764.P12831981824813752723

`eq[n, A319725(n)]`
-/

namespace A023764.P12831981824813752723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023764.P12831981824813752723

/-! ## A023764.P13354797217839308101

`eq[A055957(n), A165090(n)]`
-/

namespace A023764.P13354797217839308101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023764.P13354797217839308101

/-! ## A023764.P17120059025621319686

`eq[A030107(n), A319656(n)]`
-/

namespace A023764.P17120059025621319686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023764.P17120059025621319686

/-! ## A023764.P17032563424931224429

`lt[A319725(n), A000027(n+1)]`
-/

namespace A023764.P17032563424931224429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023764.P17032563424931224429

/-! ## A023764.P12795821110054961108

`lt[A319725(n), A028310(n+1)]`
-/

namespace A023764.P12795821110054961108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023764.P12795821110054961108

/-! ## A023764.P13582422561714177988

`A319725(lt[A319725(n), n+1])`
-/

namespace A023764.P13582422561714177988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023764.P13582422561714177988

/-! ## A023764.P2623490201077757544

`lt[A319725(n)-1, A028310(n)]`
-/

namespace A023764.P2623490201077757544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023764.P2623490201077757544

/-! ## A023764.P12033751312054482443

`eq[n, A319656(n)+A165090(n)]`
-/

namespace A023764.P12033751312054482443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319656 n + A165090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023764.P12033751312054482443

/-! ## A023764.P6028089648137257205

`A319725(record[2*n-A319725(n)])`
-/

namespace A023764.P6028089648137257205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A319725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023764.P6028089648137257205

/-!
# A023765: Nialpdromes: digits in base 9 are in nonincreasing order.

The programs for A023765, there is no canonical definition to state claims against.
-/

/-! ## A023765.P17122779176970824076

`eq[n, A319726(n)]`
-/

namespace A023765.P17122779176970824076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023765.P17122779176970824076

/-! ## A023765.P13191469753788884418

`eq[n+1, a(A037850(n))+n]` with `a(0)=1`
-/

namespace A023765.P13191469753788884418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A037850 n).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023765.P13191469753788884418

/-! ## A023765.P5458728871596116468

`eq[A055959(n), A165110(n)]`
-/

namespace A023765.P5458728871596116468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023765.P5458728871596116468

/-! ## A023765.P8710112259471234129

`eq[A030108(n), A319657(n)]`
-/

namespace A023765.P8710112259471234129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023765.P8710112259471234129

/-! ## A023765.P10085912704325791575

`lt[A319726(n), A000027(n+1)]`
-/

namespace A023765.P10085912704325791575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023765.P10085912704325791575

/-! ## A023765.P15004637939882785978

`A319726(lt[A319726(n), n+1])`
-/

namespace A023765.P15004637939882785978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023765.P15004637939882785978

/-! ## A023765.P9123806883336807617

`lt[A319726(n)-1, A028310(n)]`
-/

namespace A023765.P9123806883336807617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023765.P9123806883336807617

/-! ## A023765.P9624558265070702982

`A319726(lt[A319726(n)-1, n])`
-/

namespace A023765.P9624558265070702982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023765.P9624558265070702982

/-! ## A023765.P9819997681735897126

`A319726(record[2*n-A319726(n)])`
-/

namespace A023765.P9819997681735897126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A319726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023765.P9819997681735897126

/-! ## A023765.P575641273794149185

`A319726(record[n-(A319726(n)-n)])`
-/

namespace A023765.P575641273794149185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A319726 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023765.P575641273794149185

/-!
# A023766: Nialpdromes: digits in base 11 are in nonincreasing order.

The programs for A023766, there is no canonical definition to state claims against.
-/

/-! ## A023766.P731395637639048668

`lt[A297232(round(acot(n)+n)), 1]`
-/

namespace A023766.P731395637639048668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023766.P731395637639048668

/-! ## A023766.P15445415470808049933

`eq[0, A297232(abs(1-n)+1)]`
-/

namespace A023766.P15445415470808049933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023766.P15445415470808049933

/-! ## A023766.P12462923760023629207

`eq[n+1, a(A297232(n))+n]` with `a(0)=1`
-/

namespace A023766.P12462923760023629207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A297232 n).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023766.P12462923760023629207

/-! ## A023766.P13087899684204639445

`eq[1, A297232(round(acot(10*10*n)+n))+1]`
-/

namespace A023766.P13087899684204639445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (10 * (10 * n) : ℝ) + (n : ℝ))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023766.P13087899684204639445

/-! ## A023766.P10047181770451981199

`lt[A297232(A028310(n)), 1]`
-/

namespace A023766.P10047181770451981199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023766.P10047181770451981199

/-! ## A023766.P11764102419312971852

`lt[A297232(A233583(n+1)), 1]`
-/

namespace A023766.P11764102419312971852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023766.P11764102419312971852

/-! ## A023766.P6746976959313526076

`A014963(A008458(n))*eq[0, -A297232(A233583(n+1))]`
-/

namespace A023766.P6746976959313526076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A297232 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A023766.P6746976959313526076

/-! ## A023766.P2865193166751212929

`eq[A000196(A055961(n)²), A055961(n)]`
-/

namespace A023766.P2865193166751212929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A055961 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023766.P2865193166751212929

/-!
# A023767: Nialpdromes: digits in base 12 are in nonincreasing order.

The programs for A023767, there is no canonical definition to state claims against.
-/

/-! ## A023767.P11596382664059225235

`lt[A297235(round(acot(n)+n)), 1]`
-/

namespace A023767.P11596382664059225235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023767.P11596382664059225235

/-! ## A023767.P7275401725647745336

`eq[0, A297235(C(2, n+2)+n)]`
-/

namespace A023767.P7275401725647745336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P7275401725647745336

/-! ## A023767.P11722602305825767474

`eq[0, A297235(A028310(n))]`
-/

namespace A023767.P11722602305825767474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P11722602305825767474

/-! ## A023767.P14630926471650390168

`eq[0, A297235(A000038(n)+n)]`
-/

namespace A023767.P14630926471650390168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P14630926471650390168

/-! ## A023767.P6113980443362692961

`eq[0, A297235(A004273(n)+1-n)]`
-/

namespace A023767.P6113980443362692961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (A004273 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P6113980443362692961

/-! ## A023767.P2676444542175661341

`eq[0, A297235(A233583(n+1))]`
-/

namespace A023767.P2676444542175661341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P2676444542175661341

/-! ## A023767.P5319951762999577482

`eq[0, A297235(n^A178334(n))]`
-/

namespace A023767.P5319951762999577482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023767.P5319951762999577482

/-!
# A023768: Nialpdromes: digits in base 13 are in nonincreasing order.

The programs for A023768, there is no canonical definition to state claims against.
-/

/-! ## A023768.P17259937905551761068

`eq[0, A297238(abs(1-n)+1)]`
-/

namespace A023768.P17259937905551761068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023768.P17259937905551761068

/-! ## A023768.P15833834896217438085

`lt[A297238(A028310(n)), 1]`
-/

namespace A023768.P15833834896217438085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023768.P15833834896217438085

/-! ## A023768.P9475179225696174958

`comp[A296751(n+1)]%A254220(2*n+3)`
-/

namespace A023768.P9475179225696174958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296751 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A254220 (2 * n + 3))

end

end A023768.P9475179225696174958

/-! ## A023768.P17383490479326930770

`comp[A297281(n+1)]%A254220(2*n+3)`
-/

namespace A023768.P17383490479326930770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A254220 (2 * n + 3))

end

end A023768.P17383490479326930770

/-! ## A023768.P6401863457289338031

`comp[A296751(n+1)]%A058362(n+1)`
-/

namespace A023768.P6401863457289338031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296751 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A058362 (n + 1))

end

end A023768.P6401863457289338031

/-! ## A023768.P12409759863364012379

`comp[A297281(n+1)]%A326490(n)`
-/

namespace A023768.P12409759863364012379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297281 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A326490 n)

end

end A023768.P12409759863364012379

/-! ## A023768.P6331493882191153120

`comp[A296751(n+1)]%A084969(A254269(n))`
-/

namespace A023768.P6331493882191153120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296751 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A084969 (A254269 n).toNat)

end

end A023768.P6331493882191153120

/-!
# A023769: Nialpdromes: digits in base 14 are in nonincreasing order.

The programs for A023769, there is no canonical definition to state claims against.
-/

/-! ## A023769.P8834442165297792767

`lt[A297241(round(acot(n)+n)), 1]`
-/

namespace A023769.P8834442165297792767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023769.P8834442165297792767

/-! ## A023769.P7615210208633371214

`eq[0, A297241(A028310(n))]`
-/

namespace A023769.P7615210208633371214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P7615210208633371214

/-! ## A023769.P10660747065234556784

`eq[0, A297241(A000007(n)+n)]`
-/

namespace A023769.P10660747065234556784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P10660747065234556784

/-! ## A023769.P6397766220890814759

`eq[0, A297241(A000038(n)+n)]`
-/

namespace A023769.P6397766220890814759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P6397766220890814759

/-! ## A023769.P7460600111746493973

`eq[0, A297241(A123108(2*n))]`
-/

namespace A023769.P7460600111746493973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P7460600111746493973

/-! ## A023769.P6219760988538863756

`eq[0, A297241(A233583(n+1))]`
-/

namespace A023769.P6219760988538863756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P6219760988538863756

/-! ## A023769.P3317473193370657052

`comp[A297284(n+1)]%A210594(n+1)`
-/

namespace A023769.P3317473193370657052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297284 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A210594 (n + 1))

end

end A023769.P3317473193370657052

/-! ## A023769.P5576744679788169068

`eq[0, A297241(n^A178334(n))]`
-/

namespace A023769.P5576744679788169068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023769.P5576744679788169068

/-!
# A023770: Nialpdromes: digits in base 15 are in nonincreasing order.

The programs for A023770, there is no canonical definition to state claims against.
-/

/-! ## A023770.P11037518522629396607

`lt[a(A297244(n))+2, 4]` with `a(0)=1`
-/

namespace A023770.P11037518522629396607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A297244 n).toNat + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023770.P11037518522629396607

/-! ## A023770.P7912330412074591922

`eq[0, A297244(abs(1-n)+1)]`
-/

namespace A023770.P7912330412074591922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023770.P7912330412074591922

/-! ## A023770.P4953730020728815627

`lt[A297244(abs(n-1)+1), 1]`
-/

namespace A023770.P4953730020728815627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (|(n : ℤ) - 1| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023770.P4953730020728815627

/-! ## A023770.P6632050320055127079

`eq[1, A297244(A028310(n))+1]`
-/

namespace A023770.P6632050320055127079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023770.P6632050320055127079

/-! ## A023770.P16241385668678493222

`comp[A296757(n+1)]%A238673(A028310(n))`
-/

namespace A023770.P16241385668678493222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296757 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A238673 (A028310 n).toNat)

end

end A023770.P16241385668678493222

/-! ## A023770.P8872377339680948039

`comp[A297287(n+1)]%A238673(n+1)`
-/

namespace A023770.P8872377339680948039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297287 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A238673 (n + 1))

end

end A023770.P8872377339680948039

/-!
# A023771: Nialpdromes: digits in base 16 are in nonincreasing order.

The programs for A023771, there is no canonical definition to state claims against.
-/

/-! ## A023771.P8435420317163529548

`lt[A297247(round(acot(n)+n)), 1]`
-/

namespace A023771.P8435420317163529548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023771.P8435420317163529548

/-! ## A023771.P15314643281331342076

`eq[0, A297247(abs(1-n)+1)]`
-/

namespace A023771.P15314643281331342076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023771.P15314643281331342076

/-! ## A023771.P5807503906005388145

`eq[n+1, a(A297247(n))+n]` with `a(0)=1`
-/

namespace A023771.P5807503906005388145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A297247 n).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023771.P5807503906005388145

/-! ## A023771.P15052839131860877148

`eq[1, A297247(round(acot(n+1)+n))+1]`
-/

namespace A023771.P15052839131860877148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ))).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023771.P15052839131860877148

/-! ## A023771.P6606528460093573311

`lt[A297247(A028310(n)), 1]`
-/

namespace A023771.P6606528460093573311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023771.P6606528460093573311

/-! ## A023771.P2650323760255446277

`lt[A297247(A233583(n+1)), 1]`
-/

namespace A023771.P2650323760255446277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023771.P2650323760255446277

/-! ## A023771.P1806412307675735141

`A056926(comp[A296760(n+1)]²)`
-/

namespace A023771.P1806412307675735141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A023771.P1806412307675735141

/-! ## A023771.P10354072120006656756

`A056926(comp[A297290(n+1)]²)`
-/

namespace A023771.P10354072120006656756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A023771.P10354072120006656756

/-! ## A023771.P9705897826332432371

`A262689(comp[A297290(n+1)]²)`
-/

namespace A023771.P9705897826332432371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A023771.P9705897826332432371

/-! ## A023771.P17183938445341793026

`lt[A056962(n)-1, A056962(A217558(n))]`
-/

namespace A023771.P17183938445341793026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A217558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023771.P17183938445341793026

/-!
# A023772: Expansion of 1/((1-x)(1-5x)(1-9x)(1-12x)).

The programs for A023772, there is no canonical definition to state claims against.
-/

/-! ## A023772.P18379339102647703536

`∑[A020566(n)]`
-/

namespace A023772.P18379339102647703536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023772.P18379339102647703536

/-! ## A023772.P8069470020683012029

`∑[2*A016263(n)-A016239(n)]`
-/

namespace A023772.P8069470020683012029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016263 n - A016239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023772.P8069470020683012029

/-! ## A023772.P9171823872029225149

`∑[2*A019869(n)-A019793(n)]`
-/

namespace A023772.P9171823872029225149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019869 n - A019793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023772.P9171823872029225149

/-! ## A023772.P5765870731144679306

`A020566(n-C((A270003(n+1)-2)², 2))+a(n-1)` with `a(0)=1`
-/

namespace A023772.P5765870731144679306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020566 (n - Nat.choose ((A270003 (n + 1) - 2) ^ 2).toNat 2) + a (n - 1)

end

end A023772.P5765870731144679306

/-! ## A023772.P2818896108280070115

`A021164(n)+A021304(n)-A021134(n)`
-/

namespace A023772.P2818896108280070115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n + (A021304 n - A021134 n)

end

end A023772.P2818896108280070115

/-! ## A023772.P7348187865541919270

`∑[A016302(n)+A016324(n)-A016298(n)]`
-/

namespace A023772.P7348187865541919270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 n + (A016324 n - A016298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023772.P7348187865541919270

/-!
# A023774: Metadromes: numbers whose digits in base 5 are in strict ascending order.

The programs for A023774, there is no canonical definition to state claims against.
-/

/-! ## A023774.P7635939680014288089

`lt[A037828(abs(1-n)+1), 1]`
-/

namespace A023774.P7635939680014288089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023774.P7635939680014288089

/-! ## A023774.P18266475871866144038

`eq[0, A037828(round(sqrt(n²+1)))]`
-/

namespace A023774.P18266475871866144038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023774.P18266475871866144038

/-! ## A023774.P2829219150414490096

`A028900(A119260(n+1)/2)`
-/

namespace A023774.P2829219150414490096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.roundAway ((A119260 (n + 1) : ℚ) / 2)).toNat

end

end A023774.P2829219150414490096

/-! ## A023774.P7245961177509663885

`∩[A023747(n+1), A043091(n)]`
-/

namespace A023774.P7245961177509663885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023774.P7245961177509663885

/-! ## A023774.P5481983403285374184

`∩[A023747(n+1), A023800(n+1)]`
-/

namespace A023774.P5481983403285374184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023774.P5481983403285374184

/-!
# A023775: Metadromes: digits in base 6 are in strict ascending order.

The programs for A023775, there is no canonical definition to state claims against.
-/

/-! ## A023775.P17806006946067053968

`eq[0, A037829(A028310(n))]`
-/

namespace A023775.P17806006946067053968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023775.P17806006946067053968

/-! ## A023775.P12833879452735013576

`eq[0, A037829(A123108(2*n))]`
-/

namespace A023775.P12833879452735013576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023775.P12833879452735013576

/-! ## A023775.P2333695551544544476

`eq[0, A037829(A000038(n)+n)]`
-/

namespace A023775.P2333695551544544476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023775.P2333695551544544476

/-! ## A023775.P14093663656353186577

`eq[0, A037829(A008486(n)-2*n)]`
-/

namespace A023775.P14093663656353186577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023775.P14093663656353186577

/-! ## A023775.P12785851079715925585

`∩[A023748(n+1), A023801(n+1)]`
-/

namespace A023775.P12785851079715925585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023775.P12785851079715925585

/-!
# A023776: Metadromes: digits in base 7 are in strict ascending order.

The programs for A023776, there is no canonical definition to state claims against.
-/

/-! ## A023776.P4876704771766978063

`∩[A023749(n+1), A023802(n+1)]`
-/

namespace A023776.P4876704771766978063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023776.P4876704771766978063

/-! ## A023776.P9195370029530825954

`eq[n+1, (n+1)*a(A037830(n))]` with `a(0)=1`
-/

namespace A023776.P9195370029530825954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (A037830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023776.P9195370029530825954

/-! ## A023776.P3193382019981489502

`eq[0, A037830(A028310(n))]`
-/

namespace A023776.P3193382019981489502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023776.P3193382019981489502

/-! ## A023776.P13268776822642558385

`record[A319655(A023802(n+1))]`
-/

namespace A023776.P13268776822642558385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319655 (A023802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023776.P13268776822642558385

/-! ## A023776.P5768552626419951053

`∩[A023749(n+1), A043093(n)]`
-/

namespace A023776.P5768552626419951053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023776.P5768552626419951053

/-! ## A023776.P5775830866516953064

`eq[0, A037830(A123108(2*n))]`
-/

namespace A023776.P5775830866516953064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023776.P5775830866516953064

/-! ## A023776.P8474322845237455034

`eq[0, A037830(A233583(n+1))]`
-/

namespace A023776.P8474322845237455034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023776.P8474322845237455034

/-!
# A023777: Metadromes: digits in base 8 are in strict ascending order.

The programs for A023777, there is no canonical definition to state claims against.
-/

/-! ## A023777.P4142364279672735118

`∩[A023750(n+1), A023803(n+1)]`
-/

namespace A023777.P4142364279672735118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023777.P4142364279672735118

/-! ## A023777.P2142725632039540825

`∩[A023750(n+1), A043094(n)]`
-/

namespace A023777.P2142725632039540825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023777.P2142725632039540825

/-! ## A023777.P15566102188712554212

`eq[0, A037831(abs(1-n)+1)]`
-/

namespace A023777.P15566102188712554212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023777.P15566102188712554212

/-! ## A023777.P16093975171296733724

`lt[A037831(abs(n-1)+1), 1]`
-/

namespace A023777.P16093975171296733724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (|(n : ℤ) - 1| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023777.P16093975171296733724

/-! ## A023777.P4571471882886045980

`lt[A017867(n), acot(n)]`
-/

namespace A023777.P4571471882886045980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A023777.P4571471882886045980

/-!
# A023778: Metadromes: digits in base 9 are in strict ascending order.

The programs for A023778, the canonical program `A023778.P17019708267845593248` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023778 has offset 1).

The definition of A023778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023778.P2903462885975821254

`∩[A023751(n+1), A023804(n+1)]`
-/

namespace A023778.P2903462885975821254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023778.P2903462885975821254

namespace A023778

/-- `∩[A023751(n+1), A023804(n+1)]` -/
def P2903462885975821254.Spec : Prop :=
  ∀ n, (P2903462885975821254.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P14017582830659029751

`∩[A023751(n+1), A043095(n+1)]`
-/

namespace A023778.P14017582830659029751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023778.P14017582830659029751

namespace A023778

/-- `∩[A023751(n+1), A043095(n+1)]` -/
def P14017582830659029751.Spec : Prop :=
  ∀ n, (P14017582830659029751.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P6964912936898752391

`eq[0, A037832(A028310(n))]`
-/

namespace A023778.P6964912936898752391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023778.P6964912936898752391

namespace A023778

/-- `eq[0, A037832(A028310(n))]` -/
def P6964912936898752391.Spec : Prop :=
  ∀ n, (P6964912936898752391.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P17019708267845593248

`eq[0, A043096(n+1)-A007095(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023778

/-- `eq[0, A043096(n+1)-A007095(n)]` -/
def P17019708267845593248.Spec : Prop :=
  ∀ n, (P17019708267845593248.a n : ℤ) = A023778 (n + 1)

theorem P17019708267845593248.correct : P17019708267845593248.Spec := by
  intro n
  simp only [A023778, Nat.add_sub_cancel]

end A023778

/-! ## A023778.P4457765509046261158

`eq[1, A052382(n+1)-A043096(n+1)]`
-/

namespace A023778.P4457765509046261158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1) - A043096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023778.P4457765509046261158

namespace A023778

/-- `eq[1, A052382(n+1)-A043096(n+1)]` -/
def P4457765509046261158.Spec : Prop :=
  ∀ n, (P4457765509046261158.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P10746835717461525008

`eq[A007095(A103205(n)), A043096(n+1)]`
-/

namespace A023778.P10746835717461525008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A103205 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023778.P10746835717461525008

namespace A023778

/-- `eq[A007095(A103205(n)), A043096(n+1)]` -/
def P10746835717461525008.Spec : Prop :=
  ∀ n, (P10746835717461525008.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P14423926738511728991

`eq[A007095(n)%A052382(n+1), A043096(n+1)]`
-/

namespace A023778.P14423926738511728991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 n) (A052382 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023778.P14423926738511728991

namespace A023778

/-- `eq[A007095(n)%A052382(n+1), A043096(n+1)]` -/
def P14423926738511728991.Spec : Prop :=
  ∀ n, (P14423926738511728991.a n : ℤ) = A023778 (n + 1)

end A023778

/-! ## A023778.P11694583635452756450

`eq[A007953(A043096(n+1)), A053830(n)]`
-/

namespace A023778.P11694583635452756450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A043096 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023778.P11694583635452756450

namespace A023778

/-- `eq[A007953(A043096(n+1)), A053830(n)]` -/
def P11694583635452756450.Spec : Prop :=
  ∀ n, (P11694583635452756450.a n : ℤ) = A023778 (n + 1)

end A023778

/-!
# A023779: Metadromes: digits in base 11 are in strict ascending order.

The programs for A023779, there is no canonical definition to state claims against.
-/

/-! ## A023779.P5900253492932046770

`∩[A023752(n+1), A023805(n+1)]`
-/

namespace A023779.P5900253492932046770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023779.P5900253492932046770

/-! ## A023779.P17738383530126530582

`comp[10*(n+1)%12+n+1]`
-/

namespace A023779.P17738383530126530582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1) % 12) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023779.P17738383530126530582

/-! ## A023779.P13629079413955317810

`lt[n, A008458(A053831(n))]`
-/

namespace A023779.P13629079413955317810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A053831 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023779.P13629079413955317810

/-! ## A023779.P16289386788727621815

`eq[0, A314253(n)-A314254(n)]`
-/

namespace A023779.P16289386788727621815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314253 n - A314254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023779.P16289386788727621815

/-! ## A023779.P6930992129913498989

`eq[0, A314668(n)-A314669(n)]`
-/

namespace A023779.P6930992129913498989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n - A314669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023779.P6930992129913498989

/-! ## A023779.P9418235508376036343

`eq[A025827(abs(2-n)), A025827(n)]`
-/

namespace A023779.P9418235508376036343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 |2 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023779.P9418235508376036343

/-! ## A023779.P1088068994100329022

`eq[A025875(abs(4-n)), A025875(n)]`
-/

namespace A023779.P1088068994100329022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 |4 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023779.P1088068994100329022

/-! ## A023779.P18166315997793413586

`lt[n+1, A141214(a(A297232(n)))]` with `a(0)=2`
-/

namespace A023779.P18166315997793413586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A141214 (f2 (A297232 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023779.P18166315997793413586

/-! ## A023779.P3929690928976669847

`eq[A000265(A314253(n)), A314254(n)]`
-/

namespace A023779.P3929690928976669847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A314253 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023779.P3929690928976669847

/-! ## A023779.P9586598632186145303

`eq[A000265(A314668(n)), A314669(n)]`
-/

namespace A023779.P9586598632186145303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A314668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023779.P9586598632186145303

/-!
# A023780: Metadromes: digits in base 12 are in strict ascending order.

The programs for A023780, there is no canonical definition to state claims against.
-/

/-! ## A023780.P12346030355588153625

`∩[A023753(n+1), A023806(n+1)]`
-/

namespace A023780.P12346030355588153625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023780.P12346030355588153625

/-! ## A023780.P15992441907637238489

`comp[11*(n+1)%13+n+1]`
-/

namespace A023780.P15992441907637238489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * ((n + 1) % 13) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023780.P15992441907637238489

/-! ## A023780.P15860077221193865933

`eq[A064459(n), A090620(A106614(n))]`
-/

namespace A023780.P15860077221193865933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023780.P15860077221193865933

/-! ## A023780.P12970017012634478712

`lt[A064459(n), A190600(A028310(n))]`
-/

namespace A023780.P12970017012634478712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023780.P12970017012634478712

/-! ## A023780.P14637660116532734368

`lt[A342696(n), A190600(A028310(n))]`
-/

namespace A023780.P14637660116532734368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023780.P14637660116532734368

/-! ## A023780.P159642448162366107

`lt[A023443(A064459(12*n)), 13*A053832(n)-n]`
-/

namespace A023780.P159642448162366107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A064459 (12 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A053832 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023780.P159642448162366107

/-! ## A023780.P5460743125906445762

`lt[A023443(A010881(n)+n), 13*A053832(n)-n]`
-/

namespace A023780.P5460743125906445762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A010881 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A053832 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023780.P5460743125906445762

/-! ## A023780.P11428430632073329173

`lt[comp[12*A176484(n)], A056961(n)+1]`
-/

namespace A023780.P11428430632073329173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A176484 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A023780.P11428430632073329173

/-! ## A023780.P7698635355600700711

`eq[A180409(A210062(n)), A210062(n)]`
-/

namespace A023780.P7698635355600700711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A210062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023780.P7698635355600700711

/-!
# A023781: Metadromes: digits in base 13 are in strict ascending order.

The programs for A023781, there is no canonical definition to state claims against.
-/

/-! ## A023781.P5026993613754895060

`∩[A023754(n+1), A023807(n+1)]`
-/

namespace A023781.P5026993613754895060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023781.P5026993613754895060

/-! ## A023781.P1538181794084680449

`comp[13*(n+1)%13+n+1]`
-/

namespace A023781.P1538181794084680449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * ((n + 1) % 13) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023781.P1538181794084680449

/-! ## A023781.P17692402731181640725

`lt[log(A087640(n)), A330084(n)]`
-/

namespace A023781.P17692402731181640725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A087640 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330084 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A023781.P17692402731181640725

/-! ## A023781.P151509341680886389

`lt[A241448(n), A032443(A053833(n))]`
-/

namespace A023781.P151509341680886389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 (A053833 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023781.P151509341680886389

/-! ## A023781.P16856513466635999507

`lt[A110728(A060151(n+3)), A134862(n+1)]`
-/

namespace A023781.P16856513466635999507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110728 (A060151 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023781.P16856513466635999507

/-!
# A023782: Metadromes: digits in base 14 are in strict ascending order.

The programs for A023782, there is no canonical definition to state claims against.
-/

/-! ## A023782.P4216363039685001177

`∩[A023755(n+1), A023808(n+1)]`
-/

namespace A023782.P4216363039685001177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023782.P4216363039685001177

/-! ## A023782.P12620703425874375578

`comp[14*(n+1)%14+n+1]`
-/

namespace A023782.P12620703425874375578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * ((n + 1) % 14) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023782.P12620703425874375578

/-! ## A023782.P379301411639715749

`lt[A001358(A305081(n+1)), A140754(n+1)]`
-/

namespace A023782.P379301411639715749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A305081 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023782.P379301411639715749

/-! ## A023782.P7496370786456403023

`lt[A056232(A318978(n+1)), A140754(n+1)]`
-/

namespace A023782.P7496370786456403023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056232 (A318978 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023782.P7496370786456403023

/-! ## A023782.P10514230497159092513

`lt[A140549(n+1), A140754(n+1)]`
-/

namespace A023782.P10514230497159092513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023782.P10514230497159092513

/-!
# A023783: Metadromes: digits in base 15 are in strict ascending order.

The programs for A023783, there is no canonical definition to state claims against.
-/

/-! ## A023783.P4426875915557346215

`∩[A023756(n+1), A023809(n+1)]`
-/

namespace A023783.P4426875915557346215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023783.P4426875915557346215

/-! ## A023783.P3687345869580968534

`comp[15*(n+1)%15+n+1]`
-/

namespace A023783.P3687345869580968534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * ((n + 1) % 15) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023783.P3687345869580968534

/-! ## A023783.P3229267325237968896

`lt[A002265(n), A053438(A053835(n))]`
-/

namespace A023783.P3229267325237968896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A053835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023783.P3229267325237968896

/-! ## A023783.P11210122116780924894

`eq[1, A046100(n+1)-A023810(n+1)]`
-/

namespace A023783.P11210122116780924894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1) - A023810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023783.P11210122116780924894

/-! ## A023783.P15931422520527136713

`lt[A287272(n), A002377(A002377(n+1))]`
-/

namespace A023783.P15931422520527136713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A002377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023783.P15931422520527136713

/-! ## A023783.P17427576823329192222

`lt[A328594(n+1), A056962(A043675(n+1))]`
-/

namespace A023783.P17427576823329192222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A043675 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023783.P17427576823329192222

/-! ## A023783.P13316037912781725710

`lt[A259225(n), A056962(A043675(n+1))]`
-/

namespace A023783.P13316037912781725710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A043675 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023783.P13316037912781725710

/-!
# A023784: Metadromes: digits in base 16 are in strict ascending order.

The programs for A023784, there is no canonical definition to state claims against.
-/

/-! ## A023784.P12395845491472957476

`∩[A023757(n+1), A023810(n+1)]`
-/

namespace A023784.P12395845491472957476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023784.P12395845491472957476

/-! ## A023784.P15653952344364641133

`comp[16*(n+1)%16+n+1]`
-/

namespace A023784.P15653952344364641133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * ((n + 1) % 16) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023784.P15653952344364641133

/-! ## A023784.P15123576103512059797

`lt[C(2, C(3, n²))+n, (a(n-1)+16)%255]` with `a(0)=255`
-/

namespace A023784.P15123576103512059797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [255] fun n f2 =>
  (f2 (n - 1) + 16) % 255

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023784.P15123576103512059797

/-! ## A023784.P10653623017141233252

`lt[n, abs(1-A217558(n))]`
-/

namespace A023784.P10653623017141233252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A217558 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P10653623017141233252

/-! ## A023784.P7958027824463496022

`lt[n, A217558(round(acot(n)+n))]`
-/

namespace A023784.P7958027824463496022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P7958027824463496022

/-! ## A023784.P16669391787914518754

`lt[n, A217558(round(sqrt(n²+1)))]`
-/

namespace A023784.P16669391787914518754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P16669391787914518754

/-! ## A023784.P12774838085806003797

`lt[n, A028310(A217558(n))]`
-/

namespace A023784.P12774838085806003797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A217558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P12774838085806003797

/-! ## A023784.P1176125337787838923

`lt[n, A217558(A106618(n))+1]`
-/

namespace A023784.P1176125337787838923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A106618 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P1176125337787838923

/-! ## A023784.P11977358763399330778

`lt[n, A065033(A217558(n)+n)]`
-/

namespace A023784.P11977358763399330778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A217558 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023784.P11977358763399330778

/-! ## A023784.P18353594099865828347

`lt[A002522(n), (2-A217558(n))²]`
-/

namespace A023784.P18353594099865828347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A217558 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023784.P18353594099865828347

/-! ## A023784.P3931226059214164251

`lt[A054900(n), A065033(A053836(n))]`
-/

namespace A023784.P3931226059214164251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A053836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023784.P3931226059214164251

/-! ## A023784.P12983163803836059443

`lt[A000096(n), A000124(A217558(n))]`
-/

namespace A023784.P12983163803836059443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A217558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023784.P12983163803836059443

/-! ## A023784.P1513894723525097679

`lt[A054900(n), A065033(n-15*A054900(n))]`
-/

namespace A023784.P1513894723525097679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) - 15 * A054900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023784.P1513894723525097679

/-!
# A023786: Katadromes: digits in base 4 are in strict descending order.

The programs for A023786, there is no canonical definition to state claims against.
-/

/-! ## A023786.P16796160458023018740

`eq[0, A037811(round(acot(n)+n))]`
-/

namespace A023786.P16796160458023018740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023786.P16796160458023018740

/-! ## A023786.P13424067908033209303

`eq[0, A037811(round(sqrt(n²+1)))]`
-/

namespace A023786.P13424067908033209303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023786.P13424067908033209303

/-! ## A023786.P12152124072603559222

`lt[A037811(A028310(n)), 1]`
-/

namespace A023786.P12152124072603559222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023786.P12152124072603559222

/-! ## A023786.P15531417633756701503

`lt[A037811(A233583(n+1)), 1]`
-/

namespace A023786.P15531417633756701503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023786.P15531417633756701503

/-! ## A023786.P7304381951079959099

`∩[A023760(n+1), A043090(n)]`
-/

namespace A023786.P7304381951079959099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023786.P7304381951079959099

/-!
# A023787: Katadromes: digits in base 5 are in strict descending order.

The programs for A023787, there is no canonical definition to state claims against.
-/

/-! ## A023787.P13009302398164490277

`eq[0, A037812(A028310(n))]`
-/

namespace A023787.P13009302398164490277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023787.P13009302398164490277

/-! ## A023787.P2946091903022100626

`∩[A023761(n+1), A043091(n)]`
-/

namespace A023787.P2946091903022100626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023787.P2946091903022100626

/-! ## A023787.P1937046796000180692

`∩[A023761(n+1), A023800(n+1)]`
-/

namespace A023787.P1937046796000180692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023787.P1937046796000180692

/-! ## A023787.P13341374974635750118

`A028900(A119261(n+1)/2)`
-/

namespace A023787.P13341374974635750118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.roundAway ((A119261 (n + 1) : ℚ) / 2)).toNat

end

end A023787.P13341374974635750118

/-! ## A023787.P4054670782907911159

`eq[0, A037812(A233583(n+1))]`
-/

namespace A023787.P4054670782907911159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023787.P4054670782907911159

/-!
# A023788: Katadromes: digits in base 6 are in strict descending order.

The programs for A023788, there is no canonical definition to state claims against.
-/

/-! ## A023788.P6264059532952193162

`∩[A023762(n+1), A023801(n+1)]`
-/

namespace A023788.P6264059532952193162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023788.P6264059532952193162

/-! ## A023788.P16452398820216555244

`eq[0, A037813(A028310(n))]`
-/

namespace A023788.P16452398820216555244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023788.P16452398820216555244

/-! ## A023788.P13096820374362708346

`∩[A023762(n+1), A043092(n+1)]`
-/

namespace A023788.P13096820374362708346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023788.P13096820374362708346

/-! ## A023788.P18293846402580550824

`eq[A007092(n), A227362(A007092(n))]`
-/

namespace A023788.P18293846402580550824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023788.P18293846402580550824

/-! ## A023788.P14225329736046890606

`eq[A084984(n+1), A227362(A084984(n+1))]`
-/

namespace A023788.P14225329736046890606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023788.P14225329736046890606

/-! ## A023788.P8307304959896635993

`eq[A202267(n+1), A227362(A202267(n+1))]`
-/

namespace A023788.P8307304959896635993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023788.P8307304959896635993

/-! ## A023788.P10686319280255410895

`eq[A227362(A276138(n+1)), A276138(n+1)]`
-/

namespace A023788.P10686319280255410895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A276138 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023788.P10686319280255410895

/-!
# A023789: Katadromes: digits in base 7 are in strict descending order.

The programs for A023789, there is no canonical definition to state claims against.
-/

/-! ## A023789.P5290052601946350535

`∩[A023763(n+1), A023802(n+1)]`
-/

namespace A023789.P5290052601946350535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023789.P5290052601946350535

/-! ## A023789.P8520588343036268652

`∩[A023763(n+1), A043093(n)]`
-/

namespace A023789.P8520588343036268652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023789.P8520588343036268652

/-! ## A023789.P17143582913243659068

`eq[0, A037814(A028310(n))]`
-/

namespace A023789.P17143582913243659068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023789.P17143582913243659068

/-! ## A023789.P9738559123210393924

`eq[A007093(n), A227362(A007093(n))]`
-/

namespace A023789.P9738559123210393924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023789.P9738559123210393924

/-! ## A023789.P2119490703818279172

`eq[A028374(n+1), A227362(A028374(n+1))]`
-/

namespace A023789.P2119490703818279172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023789.P2119490703818279172

/-! ## A023789.P1287945228255573851

`eq[A168501(n+1), A227362(A168501(n+1))]`
-/

namespace A023789.P1287945228255573851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023789.P1287945228255573851

/-! ## A023789.P8369329974768379038

`eq[A227362(A307913(n+1)), A307913(n+1)]`
-/

namespace A023789.P8369329974768379038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A307913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023789.P8369329974768379038

/-! ## A023789.P16473606381048716517

`eq[0, A037814(A233583(n+1))]`
-/

namespace A023789.P16473606381048716517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023789.P16473606381048716517

/-!
# A023790: Katadromes: digits in base 8 are in strict descending order.

The programs for A023790, there is no canonical definition to state claims against.
-/

/-! ## A023790.P10437697392345428910

`∩[A023764(n+1), A023803(n+1)]`
-/

namespace A023790.P10437697392345428910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023790.P10437697392345428910

/-! ## A023790.P6099440819684369227

`eq[0, A037815(round(acot(n)+n))]`
-/

namespace A023790.P6099440819684369227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023790.P6099440819684369227

/-! ## A023790.P8215901728593329199

`eq[0, A037815(A028310(n))]`
-/

namespace A023790.P8215901728593329199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023790.P8215901728593329199

/-! ## A023790.P13386561467202286295

`eq[0, A037815(A000038(n)+n)]`
-/

namespace A023790.P13386561467202286295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023790.P13386561467202286295

/-! ## A023790.P17339612971885707909

`∩[A023764(n+1), A043094(n)]`
-/

namespace A023790.P17339612971885707909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023790.P17339612971885707909

/-! ## A023790.P13790352900439201844

`eq[A007094(n), A227362(A007094(n))]`
-/

namespace A023790.P13790352900439201844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023790.P13790352900439201844

/-! ## A023790.P3545078599638067860

`eq[0, A037815(A233583(n+1))]`
-/

namespace A023790.P3545078599638067860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023790.P3545078599638067860

/-!
# A023791: Katadromes: digits in base 9 are in strict descending order.

The programs for A023791, there is no canonical definition to state claims against.
-/

/-! ## A023791.P4403591843171292136

`∩[A023765(n+1), A023804(n+1)]`
-/

namespace A023791.P4403591843171292136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023791.P4403591843171292136

/-! ## A023791.P16560669474239315955

`lt[A037816(A000007(n)+n), 1]`
-/

namespace A023791.P16560669474239315955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023791.P16560669474239315955

/-! ## A023791.P10318166494180462133

`∩[A023765(n+1), A043095(n+1)]`
-/

namespace A023791.P10318166494180462133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023791.P10318166494180462133

/-! ## A023791.P10020866616158239805

`eq[A007095(n), A227362(A007095(n))]`
-/

namespace A023791.P10020866616158239805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P10020866616158239805

/-! ## A023791.P1191192583869609839

`eq[A052383(n+1), A227362(A052383(n+1))]`
-/

namespace A023791.P1191192583869609839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P1191192583869609839

/-! ## A023791.P2189195662400150198

`eq[A052405(n+1), A227362(A052405(n+1))]`
-/

namespace A023791.P2189195662400150198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P2189195662400150198

/-! ## A023791.P14085329318531940051

`eq[A052406(n+1), A227362(A052406(n+1))]`
-/

namespace A023791.P14085329318531940051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052406 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P14085329318531940051

/-! ## A023791.P7781974739017229592

`eq[A052414(n+1), A227362(A052414(n+1))]`
-/

namespace A023791.P7781974739017229592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P7781974739017229592

/-! ## A023791.P14569611938579980551

`eq[A052419(n+1), A227362(A052419(n+1))]`
-/

namespace A023791.P14569611938579980551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052419 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P14569611938579980551

/-! ## A023791.P7175233579100900315

`eq[A052421(n+1), A227362(A052421(n+1))]`
-/

namespace A023791.P7175233579100900315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023791.P7175233579100900315

/-!
# A023792: Katadromes: digits in base 11 are in strict descending order.

The programs for A023792, there is no canonical definition to state claims against.
-/

/-! ## A023792.P12756413119654576303

`∩[A023766(n+1), A023805(n+1)]`
-/

namespace A023792.P12756413119654576303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023792.P12756413119654576303

/-! ## A023792.P9816039535744259083

`eq[A190599(n+1)%A053831(n+1), A064458(n)]`
-/

namespace A023792.P9816039535744259083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190599 (n + 1)) (A053831 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023792.P9816039535744259083

/-! ## A023792.P11824109364709733098

`lt[n, A049872(A053832(n)+1)]`
-/

namespace A023792.P11824109364709733098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 (A053832 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023792.P11824109364709733098

/-! ## A023792.P8134677289041716456

`lt[n, 12*A000030(A044807(n+1))]`
-/

namespace A023792.P8134677289041716456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000030 (A044807 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023792.P8134677289041716456

/-! ## A023792.P2660483720786586926

`lt[A342696(n), A033930(A064458(n))]`
-/

namespace A023792.P2660483720786586926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A064458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023792.P2660483720786586926

/-!
# A023793: Katadromes: digits in base 12 are in strict descending order.

The programs for A023793, there is no canonical definition to state claims against.
-/

/-! ## A023793.P16318612150567484628

`∩[A023767(n+1), A023806(n+1)]`
-/

namespace A023793.P16318612150567484628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023793.P16318612150567484628

/-! ## A023793.P4403667772770480091

`eq[A297235(n+1), A297235(n^A178334(n))]`
-/

namespace A023793.P4403667772770480091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023793.P4403667772770480091

/-! ## A023793.P1375316828400669744

`eq[0, Δ[A297235(n^A178334(n))]]`
-/

namespace A023793.P1375316828400669744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023793.P1375316828400669744

/-! ## A023793.P8229957680105758676

`eq[A090620(n), A235049(A064459(n))]`
-/

namespace A023793.P8229957680105758676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A064459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023793.P8229957680105758676

/-! ## A023793.P4698320936189278183

`lt[n, A002144(a(A297234(n))+1)]` with `a(0)=1`
-/

namespace A023793.P4698320936189278183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002144 (f2 (A297234 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023793.P4698320936189278183

/-!
# A023794: Katadromes: digits in base 13 are in strict descending order.

The programs for A023794, there is no canonical definition to state claims against.
-/

/-! ## A023794.P11443856725040511364

`∩[A023768(n+1), A023807(n+1)]`
-/

namespace A023794.P11443856725040511364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023794.P11443856725040511364

/-! ## A023794.P10578420185766197882

`lt[A044915(n+1), A116188(n)+A043318(n+1)]`
-/

namespace A023794.P10578420185766197882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116188 n + A043318 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023794.P10578420185766197882

/-! ## A023794.P12878267442947234205

`lt[A297241(A033012(n+1)), 1]`
-/

namespace A023794.P12878267442947234205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A033012 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023794.P12878267442947234205

/-! ## A023794.P12698740505181350815

`lt[A129648(3*n+4), A087705(A136153(2*(n+2)))]`
-/

namespace A023794.P12698740505181350815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129648 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087705 (A136153 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023794.P12698740505181350815

/-!
# A023795: Katadromes: digits in base 14 are in strict descending order.

The programs for A023795, there is no canonical definition to state claims against.
-/

/-! ## A023795.P9302913636163440350

`∩[A023769(n+1), A023808(n+1)]`
-/

namespace A023795.P9302913636163440350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023795.P9302913636163440350

/-! ## A023795.P16887196855801627154

`eq[0, Δ[A297241(n^A178334(n))]]`
-/

namespace A023795.P16887196855801627154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023795.P16887196855801627154

/-! ## A023795.P13707876828241248433

`eq[A297241(n+1), A297241(n^A178334(n))]`
-/

namespace A023795.P13707876828241248433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023795.P13707876828241248433

/-! ## A023795.P2298160750665202396

`lt[A043320(n+1), A052470(n+1)+A043319(n+1)]`
-/

namespace A023795.P2298160750665202396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052470 (n + 1) + A043319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023795.P2298160750665202396

/-! ## A023795.P12798047398161667359

`eq[A297241(n+1), A297241(A137734(n²))]`
-/

namespace A023795.P12798047398161667359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023795.P12798047398161667359

/-!
# A023796: Katadromes: digits in base 15 are in strict descending order.

The programs for A023796, there is no canonical definition to state claims against.
-/

/-! ## A023796.P17483020296766759498

`∩[A023770(n+1), A023809(n+1)]`
-/

namespace A023796.P17483020296766759498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023796.P17483020296766759498

/-! ## A023796.P9064723178795169712

`lt[n, A055645(A053836(n)+1)]`
-/

namespace A023796.P9064723178795169712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 (A053836 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023796.P9064723178795169712

/-! ## A023796.P8912653091616198171

`lt[A044917(n+1), A052470(n+1)+A043320(n+1)]`
-/

namespace A023796.P8912653091616198171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052470 (n + 1) + A043320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023796.P8912653091616198171

/-! ## A023796.P5106156393091426116

`lt[n, A161326(a(A297243(n)))]` with `a(0)=3`
-/

namespace A023796.P5106156393091426116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A161326 (f2 (A297243 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023796.P5106156393091426116

/-! ## A023796.P15595836566098241205

`lt[A056962(A046100(n+1)), A134407(n+1)]`
-/

namespace A023796.P15595836566098241205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A046100 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023796.P15595836566098241205

/-!
# A023797: Katadromes: digits in base 16 are in strict descending order.

The programs for A023797, there is no canonical definition to state claims against.
-/

/-! ## A023797.P7398147726525737117

`∩[A023771(n+1), A023810(n+1)]`
-/

namespace A023797.P7398147726525737117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023797.P7398147726525737117

/-! ## A023797.P14725819610863017841

`eq[A000038(A347785(n)), A297247(n+1)]`
-/

namespace A023797.P14725819610863017841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A347785 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023797.P14725819610863017841

/-! ## A023797.P10273339902602687268

`lt[A342720(n+3), A055965(n)+3]`
-/

namespace A023797.P10273339902602687268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342720 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023797.P10273339902602687268

/-! ## A023797.P9227896210996901385

`eq[A160987(n+1), A297244(n+1)]`
-/

namespace A023797.P9227896210996901385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023797.P9227896210996901385

/-! ## A023797.P9964906010624862427

`A017857(A306752(A017817(n+1)))+n`
-/

namespace A023797.P9964906010624862427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A306752 (A017817 (n + 1)).toNat).toNat + (n : ℤ)

end

end A023797.P9964906010624862427

/-!
# A023799: Xenodromes: all digits in base 4 are different.

The programs for A023799, there is no canonical definition to state claims against.
-/

/-! ## A023799.P4740185188988696597

`eq[0, A107846(A007090(n))]`
-/

namespace A023799.P4740185188988696597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023799.P4740185188988696597

/-! ## A023799.P5421561464468428876

`eq[0, A107846(A007284(n))]`
-/

namespace A023799.P5421561464468428876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007284 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023799.P5421561464468428876

/-! ## A023799.P1780027490654530202

`eq[0, A107846(A001743(n+1))]`
-/

namespace A023799.P1780027490654530202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A001743 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023799.P1780027490654530202

/-! ## A023799.P6401807416998171937

`lt[A107846(A046030(n+1)), 1]`
-/

namespace A023799.P6401807416998171937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A046030 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023799.P6401807416998171937

/-! ## A023799.P5273477517263186301

`eq[0, A107846(A024644(2*n))]`
-/

namespace A023799.P5273477517263186301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A024644 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023799.P5273477517263186301

