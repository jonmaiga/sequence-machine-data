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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A039000: Numbers whose base-3 representation has the same number of 0's and 1's.

The programs for A039000, the canonical program `A039000.P9830512540759238437` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039000 has offset 1).

The definition of A039000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039000.P5704773532484781675

`eq[A062756(n), A077267(n)]`
-/

namespace A039000.P5704773532484781675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P5704773532484781675

namespace A039000

/-- `eq[A062756(n), A077267(n)]` -/
def P5704773532484781675.Spec : Prop :=
  ∀ n, (P5704773532484781675.a n : ℤ) = A039000 (n + 1)

end A039000

/-! ## A039000.P12294849391186113174

`eq[A081604(n), A120855(n)]`
-/

namespace A039000.P12294849391186113174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P12294849391186113174

namespace A039000

/-- `eq[A081604(n), A120855(n)]` -/
def P12294849391186113174.Spec : Prop :=
  ∀ n, (P12294849391186113174.a n : ℤ) = A039000 (n + 1)

end A039000

/-! ## A039000.P9830512540759238437

`eq[A007814(A006047(n)), A077267(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039000

/-- `eq[A007814(A006047(n)), A077267(n)]` -/
def P9830512540759238437.Spec : Prop :=
  ∀ n, (P9830512540759238437.a n : ℤ) = A039000 (n + 1)

theorem P9830512540759238437.correct : P9830512540759238437.Spec := by
  intro n
  simp only [A039000, Nat.add_sub_cancel]

end A039000

/-! ## A039000.P12807320456561227363

`eq[A055460(A120880(n)), A077267(n)]`
-/

namespace A039000.P12807320456561227363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (A120880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P12807320456561227363

namespace A039000

/-- `eq[A055460(A120880(n)), A077267(n)]` -/
def P12807320456561227363.Spec : Prop :=
  ∀ n, (P12807320456561227363.a n : ℤ) = A039000 (n + 1)

end A039000

/-! ## A039000.P5380221881944903132

`eq[A000120(A289813(n)), A077267(n)]`
-/

namespace A039000.P5380221881944903132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P5380221881944903132

namespace A039000

/-- `eq[A000120(A289813(n)), A077267(n)]` -/
def P5380221881944903132.Spec : Prop :=
  ∀ n, (P5380221881944903132.a n : ℤ) = A039000 (n + 1)

end A039000

/-! ## A039000.P3403013820609902457

`eq[A001222(A290091(n)), A077267(n)]`
-/

namespace A039000.P3403013820609902457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P3403013820609902457

namespace A039000

/-- `eq[A001222(A290091(n)), A077267(n)]` -/
def P3403013820609902457.Spec : Prop :=
  ∀ n, (P3403013820609902457.a n : ℤ) = A039000 (n + 1)

end A039000

/-! ## A039000.P11230405855852561818

`eq[A001221(A289815(n)), A077267(n)]`
-/

namespace A039000.P11230405855852561818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289815 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039000.P11230405855852561818

namespace A039000

/-- `eq[A001221(A289815(n)), A077267(n)]` -/
def P11230405855852561818.Spec : Prop :=
  ∀ n, (P11230405855852561818.a n : ℤ) = A039000 (n + 1)

end A039000

/-!
# A039001: Numbers whose base-3 representation has the same number of 1's and 2's.

The programs for A039001, the canonical program `A039001.P18379001257663398601` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039001 has offset 1).

The definition of A039001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039001.P3983407888796154866

`eq[1, A348516(n)]`
-/

namespace A039001.P3983407888796154866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039001.P3983407888796154866

namespace A039001

/-- `eq[1, A348516(n)]` -/
def P3983407888796154866.Spec : Prop :=
  ∀ n, (P3983407888796154866.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P8638649974770952153

`eq[A006047(A004488(n)), A006047(n)]`
-/

namespace A039001.P8638649974770952153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P8638649974770952153

namespace A039001

/-- `eq[A006047(A004488(n)), A006047(n)]` -/
def P8638649974770952153.Spec : Prop :=
  ∀ n, (P8638649974770952153.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P15231237035958550879

`eq[A117942(A004488(n)), A117942(n)]`
-/

namespace A039001.P15231237035958550879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P15231237035958550879

namespace A039001

/-- `eq[A117942(A004488(n)), A117942(n)]` -/
def P15231237035958550879.Spec : Prop :=
  ∀ n, (P15231237035958550879.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P5781764678987969324

`eq[A227428(A004488(n)), A227428(n)]`
-/

namespace A039001.P5781764678987969324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P5781764678987969324

namespace A039001

/-- `eq[A227428(A004488(n)), A227428(n)]` -/
def P5781764678987969324.Spec : Prop :=
  ∀ n, (P5781764678987969324.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P18379001257663398601

`eq[A006047(n), A120879(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039001

/-- `eq[A006047(n), A120879(n)]` -/
def P18379001257663398601.Spec : Prop :=
  ∀ n, (P18379001257663398601.a n : ℤ) = A039001 (n + 1)

theorem P18379001257663398601.correct : P18379001257663398601.Spec := by
  intro n
  simp only [A039001, Nat.add_sub_cancel]

end A039001

/-! ## A039001.P16824493093417385070

`eq[A062756(n), A081603(n)]`
-/

namespace A039001.P16824493093417385070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P16824493093417385070

namespace A039001

/-- `eq[A062756(n), A081603(n)]` -/
def P16824493093417385070.Spec : Prop :=
  ∀ n, (P16824493093417385070.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P17802757370836753618

`eq[A053735(n), A120855(n)]`
-/

namespace A039001.P17802757370836753618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P17802757370836753618

namespace A039001

/-- `eq[A053735(n), A120855(n)]` -/
def P17802757370836753618.Spec : Prop :=
  ∀ n, (P17802757370836753618.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P289048930864772097

`eq[A117592(n), A120880(n)]`
-/

namespace A039001.P289048930864772097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P289048930864772097

namespace A039001

/-- `eq[A117592(n), A120880(n)]` -/
def P289048930864772097.Spec : Prop :=
  ∀ n, (P289048930864772097.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P8747213803059199510

`eq[A117942(n), A120880(n)]`
-/

namespace A039001.P8747213803059199510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P8747213803059199510

namespace A039001

/-- `eq[A117942(n), A120880(n)]` -/
def P8747213803059199510.Spec : Prop :=
  ∀ n, (P8747213803059199510.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P6028840546154524684

`eq[n, A352760(n)]`
-/

namespace A039001.P6028840546154524684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039001.P6028840546154524684

namespace A039001

/-- `eq[n, A352760(n)]` -/
def P6028840546154524684.Spec : Prop :=
  ∀ n, (P6028840546154524684.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P13397992694532911927

`eq[n, A357616(n)]`
-/

namespace A039001.P13397992694532911927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039001.P13397992694532911927

namespace A039001

/-- `eq[n, A357616(n)]` -/
def P13397992694532911927.Spec : Prop :=
  ∀ n, (P13397992694532911927.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P9889560188533865526

`eq[A053735(A004488(n)), A053735(n)]`
-/

namespace A039001.P9889560188533865526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P9889560188533865526

namespace A039001

/-- `eq[A053735(A004488(n)), A053735(n)]` -/
def P9889560188533865526.Spec : Prop :=
  ∀ n, (P9889560188533865526.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P10478510164633399963

`eq[A062756(A004488(n)), A062756(n)]`
-/

namespace A039001.P10478510164633399963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P10478510164633399963

namespace A039001

/-- `eq[A062756(A004488(n)), A062756(n)]` -/
def P10478510164633399963.Spec : Prop :=
  ∀ n, (P10478510164633399963.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P2576987992855026786

`eq[A081603(A004488(n)), A081603(n)]`
-/

namespace A039001.P2576987992855026786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A004488 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P2576987992855026786

namespace A039001

/-- `eq[A081603(A004488(n)), A081603(n)]` -/
def P2576987992855026786.Spec : Prop :=
  ∀ n, (P2576987992855026786.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P6036096943543057920

`eq[A081603(n), A081603(A137305(n))]`
-/

namespace A039001.P6036096943543057920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P6036096943543057920

namespace A039001

/-- `eq[A081603(n), A081603(A137305(n))]` -/
def P6036096943543057920.Spec : Prop :=
  ∀ n, (P6036096943543057920.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P6863856750389886341

`eq[1, dr(A046031(3*n+1))]`
-/

namespace A039001.P6863856750389886341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046031 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P6863856750389886341

namespace A039001

/-- `eq[1, dr(A046031(3*n+1))]` -/
def P6863856750389886341.Spec : Prop :=
  ∀ n, (P6863856750389886341.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P17785093452576560998

`lt[dr(A046031(3*n+1)), A090239(n)]`
-/

namespace A039001.P17785093452576560998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046031 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039001.P17785093452576560998

namespace A039001

/-- `lt[dr(A046031(3*n+1)), A090239(n)]` -/
def P17785093452576560998.Spec : Prop :=
  ∀ n, (P17785093452576560998.a n : ℤ) = A039001 (n + 1)

end A039001

/-! ## A039001.P4242025719589623612

`eq[2*A062756(n), A160385(A023709(n+1))]`
-/

namespace A039001.P4242025719589623612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A023709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P4242025719589623612

namespace A039001

/-- `eq[2*A062756(n), A160385(A023709(n+1))]` -/
def P4242025719589623612.Spec : Prop :=
  ∀ n, (P4242025719589623612.a n : ℤ) = A039001 (n + 1)

end A039001

/-!
# A039002: Numbers whose base-4 representation has the same number of 0's and 1's.

The programs for A039002, there is no canonical definition to state claims against.
-/

/-! ## A039002.P14019454376100611449

`∪[A032804(n+1), A039277(n+1)]`
-/

namespace A039002.P14019454376100611449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039002.P14019454376100611449

/-! ## A039002.P16266714113810021330

`eq[A160380(n+1), A160381(n+1)]+1`
-/

namespace A039002.P16266714113810021330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039002.P16266714113810021330

/-! ## A039002.P1451260524987606087

`eq[A160380(n), A160381(A028310(n))]`
-/

namespace A039002.P1451260524987606087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P1451260524987606087

/-! ## A039002.P14162490126773502550

`eq[A160380(n), A160381(A123108(2*n))]`
-/

namespace A039002.P14162490126773502550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P14162490126773502550

/-! ## A039002.P11350176660438718116

`eq[A160381(n), A160381(A256294(n))]`
-/

namespace A039002.P11350176660438718116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A256294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P11350176660438718116

/-! ## A039002.P17589005918341080836

`eq[A000120(A004468(n)), A110591(n)]`
-/

namespace A039002.P17589005918341080836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P17589005918341080836

/-! ## A039002.P4788365513304350648

`eq[A000120(A048647(n)), A110591(n)]`
-/

namespace A039002.P4788365513304350648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P4788365513304350648

/-! ## A039002.P5145901112751555831

`eq[A160381(n)+1, A160380(A008574(n))]`
-/

namespace A039002.P5145901112751555831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P5145901112751555831

/-! ## A039002.P3459851431305150558

`eq[A160380(n), A160381(A008574(n))]`
-/

namespace A039002.P3459851431305150558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P3459851431305150558

/-! ## A039002.P2884190561616320286

`eq[A064692(A046030(n+1)), A160385(n)]`
-/

namespace A039002.P2884190561616320286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A046030 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039002.P2884190561616320286

/-!
# A039003: Numbers whose base-4 representation has the same number of 0's and 2's.

The programs for A039003, there is no canonical definition to state claims against.
-/

/-! ## A039003.P9603007144507192492

`∪[A032911(n+1), A039278(n+1)]`
-/

namespace A039003.P9603007144507192492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039003.P9603007144507192492

/-! ## A039003.P2971612011007198997

`eq[A160380(n), A160382(abs(1-n)+1)]`
-/

namespace A039003.P2971612011007198997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P2971612011007198997

/-! ## A039003.P9612285681098247949

`eq[A160380(n+1), A160382(n+1)]+1`
-/

namespace A039003.P9612285681098247949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039003.P9612285681098247949

/-! ## A039003.P5603810393735381592

`eq[A160380(n), A160381(A035327(n))]`
-/

namespace A039003.P5603810393735381592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P5603810393735381592

/-! ## A039003.P10111323080325232923

`eq[A000120(A163241(n)), A110591(n)]`
-/

namespace A039003.P10111323080325232923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163241 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P10111323080325232923

/-! ## A039003.P9075107465647740707

`eq[A000120(A006015(n)), A110591(n)]`
-/

namespace A039003.P9075107465647740707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P9075107465647740707

/-! ## A039003.P11772591026430581468

`eq[A005812(A037463(n)), A110591(n)]`
-/

namespace A039003.P11772591026430581468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A037463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P11772591026430581468

/-! ## A039003.P15859633133793608997

`eq[A055641(A007090(n)), A160382(n)]`
-/

namespace A039003.P15859633133793608997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007090 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039003.P15859633133793608997

/-!
# A039004: Numbers whose base-4 representation has the same number of 1's and 2's.

The programs for A039004, the canonical program `A039004.P5132444084553213874` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039004 has offset 1).

The definition of A039004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9644 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039004.P11396032735755614161

`∪[A039280(n+1), A001196(n)]`
-/

namespace A039004.P11396032735755614161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039004.P11396032735755614161

namespace A039004

/-- `∪[A039280(n+1), A001196(n)]` -/
def P11396032735755614161.Spec : Prop :=
  ∀ n, (P11396032735755614161.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P21294481662678184

`∪[A039280(n+1), A277335(n)]`
-/

namespace A039004.P21294481662678184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039004.P21294481662678184

namespace A039004

/-- `∪[A039280(n+1), A277335(n)]` -/
def P21294481662678184.Spec : Prop :=
  ∀ n, (P21294481662678184.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P12796867879675230784

`∪[A039280(n+1), A333441(n+1)]`
-/

namespace A039004.P12796867879675230784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039004.P12796867879675230784

namespace A039004

/-- `∪[A039280(n+1), A333441(n+1)]` -/
def P12796867879675230784.Spec : Prop :=
  ∀ n, (P12796867879675230784.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P5132444084553213874

`eq[0, n%2-a(floor(n/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A039004

/-- `eq[0, n%2-a(floor(n/2))]` -/
def P5132444084553213874.Spec : Prop :=
  ∀ n, (P5132444084553213874.a n : ℤ) = A039004 (n + 1)

theorem P5132444084553213874.correct : P5132444084553213874.Spec := by
  intro n
  simp only [A039004, Nat.add_sub_cancel]

end A039004

/-! ## A039004.P10354442864159756596

`eq[1, 2/(gcd(2, n)*a(floor(n/2)))]` with `a(0)=1`
-/

namespace A039004.P10354442864159756596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / ((Nat.gcd 2 n : ℚ) * f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A039004.P10354442864159756596

namespace A039004

/-- `eq[1, 2/(gcd(2, n)*a(floor(n/2)))]` -/
def P10354442864159756596.Spec : Prop :=
  ∀ n, (P10354442864159756596.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P8008910089682291971

`eq[0, A065359(n)]`
-/

namespace A039004.P8008910089682291971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039004.P8008910089682291971

namespace A039004

/-- `eq[0, A065359(n)]` -/
def P8008910089682291971.Spec : Prop :=
  ∀ n, (P8008910089682291971.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P11344656200790798527

`lt[A059905(A065359(n)²), 1]`
-/

namespace A039004.P11344656200790798527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A065359 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039004.P11344656200790798527

namespace A039004

/-- `lt[A059905(A065359(n)²), 1]` -/
def P11344656200790798527.Spec : Prop :=
  ∀ n, (P11344656200790798527.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P9110825919328000524

`lt[A065359(2*n)², 1]`
-/

namespace A039004.P9110825919328000524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039004.P9110825919328000524

namespace A039004

/-- `lt[A065359(2*n)², 1]` -/
def P9110825919328000524.Spec : Prop :=
  ∀ n, (P9110825919328000524.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P18178345894668805375

`eq[1, (A007088(n)+1)%11]`
-/

namespace A039004.P18178345894668805375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n + 1) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039004.P18178345894668805375

namespace A039004

/-- `eq[1, (A007088(n)+1)%11]` -/
def P18178345894668805375.Spec : Prop :=
  ∀ n, (P18178345894668805375.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P1430314419935673230

`∩[A139371(n+1), A139372(n+1)]`
-/

namespace A039004.P1430314419935673230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039004.P1430314419935673230

namespace A039004

/-- `∩[A139371(n+1), A139372(n+1)]` -/
def P1430314419935673230.Spec : Prop :=
  ∀ n, (P1430314419935673230.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P18014362473036363060

`eq[n, A302544(n)]`
-/

namespace A039004.P18014362473036363060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039004.P18014362473036363060

namespace A039004

/-- `eq[n, A302544(n)]` -/
def P18014362473036363060.Spec : Prop :=
  ∀ n, (P18014362473036363060.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P17856092585990059660

`eq[0, A345927(n)]`
-/

namespace A039004.P17856092585990059660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039004.P17856092585990059660

namespace A039004

/-- `eq[0, A345927(n)]` -/
def P17856092585990059660.Spec : Prop :=
  ∀ n, (P17856092585990059660.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P13224529712875877709

`eq[1, dr(A033045(n)+1)]`
-/

namespace A039004.P13224529712875877709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033045 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P13224529712875877709

namespace A039004

/-- `eq[1, dr(A033045(n)+1)]` -/
def P13224529712875877709.Spec : Prop :=
  ∀ n, (P13224529712875877709.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P11065207957333313066

`eq[A050292(n), A138002(n)]`
-/

namespace A039004.P11065207957333313066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P11065207957333313066

namespace A039004

/-- `eq[A050292(n), A138002(n)]` -/
def P11065207957333313066.Spec : Prop :=
  ∀ n, (P11065207957333313066.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P14973064986319058207

`eq[A139351(n), A139352(n)]`
-/

namespace A039004.P14973064986319058207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P14973064986319058207

namespace A039004

/-- `eq[A139351(n), A139352(n)]` -/
def P14973064986319058207.Spec : Prop :=
  ∀ n, (P14973064986319058207.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P14675887557329273785

`eq[A160381(n), A160382(n)]`
-/

namespace A039004.P14675887557329273785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P14675887557329273785

namespace A039004

/-- `eq[A160381(n), A160382(n)]` -/
def P14675887557329273785.Spec : Prop :=
  ∀ n, (P14675887557329273785.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P7788413279973951339

`eq[A123087(n), A255588(n)]`
-/

namespace A039004.P7788413279973951339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P7788413279973951339

namespace A039004

/-- `eq[A123087(n), A255588(n)]` -/
def P7788413279973951339.Spec : Prop :=
  ∀ n, (P7788413279973951339.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P5517879771030149854

`eq[A123087(n), A271497(n)]`
-/

namespace A039004.P5517879771030149854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271497 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P5517879771030149854

namespace A039004

/-- `eq[A123087(n), A271497(n)]` -/
def P5517879771030149854.Spec : Prop :=
  ∀ n, (P5517879771030149854.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P2730654940845561064

`eq[A000120(A292371(n)), A160382(n)]`
-/

namespace A039004.P2730654940845561064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P2730654940845561064

namespace A039004

/-- `eq[A000120(A292371(n)), A160382(n)]` -/
def P2730654940845561064.Spec : Prop :=
  ∀ n, (P2730654940845561064.a n : ℤ) = A039004 (n + 1)

end A039004

/-! ## A039004.P15347145640023492975

`eq[A000120(A292372(n)), A160381(n)]`
-/

namespace A039004.P15347145640023492975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039004.P15347145640023492975

namespace A039004

/-- `eq[A000120(A292372(n)), A160381(n)]` -/
def P15347145640023492975.Spec : Prop :=
  ∀ n, (P15347145640023492975.a n : ℤ) = A039004 (n + 1)

end A039004

/-!
# A039005: Numbers whose base-4 representation has the same number of 1's and 3's.

The programs for A039005, there is no canonical definition to state claims against.
-/

/-! ## A039005.P1481416132639308362

`∪[A039281(n+1), A062880(n)]`
-/

namespace A039005.P1481416132639308362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039005.P1481416132639308362

/-! ## A039005.P16355466815508790173

`eq[A001316(n), A001316(A048647(n))]`
-/

namespace A039005.P16355466815508790173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P16355466815508790173

/-! ## A039005.P3017308849984962735

`eq[A160381(n), A160383(n)]`
-/

namespace A039005.P3017308849984962735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P3017308849984962735

/-! ## A039005.P8624997580405509470

`eq[1, A065359(A163241(n))+1]`
-/

namespace A039005.P8624997580405509470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A163241 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039005.P8624997580405509470

/-! ## A039005.P15673005168483591223

`eq[2*A160381(n), A139351(n)]`
-/

namespace A039005.P15673005168483591223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P15673005168483591223

/-! ## A039005.P9145848768075333371

`eq[2*A160383(n), A139351(n)]`
-/

namespace A039005.P9145848768075333371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P9145848768075333371

/-! ## A039005.P11952049766976303414

`eq[2*A139351(A048735(n)), A139351(n)]`
-/

namespace A039005.P11952049766976303414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139351 (A048735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P11952049766976303414

/-! ## A039005.P16088964964677105314

`eq[2*A139351(A048728(n)), A139351(n)]`
-/

namespace A039005.P16088964964677105314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139351 (A048728 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P16088964964677105314

/-! ## A039005.P1164278289396885553

`eq[A160381(A006015(n)), A160381(n)]`
-/

namespace A039005.P1164278289396885553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P1164278289396885553

/-! ## A039005.P8180313586172071359

`eq[A160382(A006015(n)), A160383(n)]`
-/

namespace A039005.P8180313586172071359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P8180313586172071359

/-! ## A039005.P16955834462175346675

`eq[A139351(2*n), A139351(A003188(n))]`
-/

namespace A039005.P16955834462175346675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P16955834462175346675

/-! ## A039005.P9358519805000920122

`eq[A000120(n), A000120(A004468(n))]`
-/

namespace A039005.P9358519805000920122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P9358519805000920122

/-! ## A039005.P14696733315318225157

`eq[A000120(n), A000120(A048647(n))]`
-/

namespace A039005.P14696733315318225157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P14696733315318225157

/-! ## A039005.P291445730880880955

`eq[A038573(A004468(n)), A038573(n)]`
-/

namespace A039005.P291445730880880955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P291445730880880955

/-! ## A039005.P1838613269890309543

`eq[A048883(A048647(n)), A048883(n)]`
-/

namespace A039005.P1838613269890309543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P1838613269890309543

/-! ## A039005.P3764392248334022527

`eq[A071044(A048647(n)), A071044(n)]`
-/

namespace A039005.P3764392248334022527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P3764392248334022527

/-! ## A039005.P5200982994196054356

`eq[A160383(A004468(n)), A160383(n)]`
-/

namespace A039005.P5200982994196054356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P5200982994196054356

/-! ## A039005.P4262329997969165947

`eq[A160381(A048647(n)), A160381(n)]`
-/

namespace A039005.P4262329997969165947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P4262329997969165947

/-! ## A039005.P11040429124946345077

`eq[A160383(A048647(n)), A160383(n)]`
-/

namespace A039005.P11040429124946345077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P11040429124946345077

/-! ## A039005.P13524891729990609653

`eq[A338854(A048647(n)), A338854(n)]`
-/

namespace A039005.P13524891729990609653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039005.P13524891729990609653

/-!
# A039006: Numbers whose base-4 representation has the same number of 2's and 3's.

The programs for A039006, there is no canonical definition to state claims against.
-/

/-! ## A039006.P5103686652471045972

`∪[A039282(n+1), A000695(n)]`
-/

namespace A039006.P5103686652471045972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039006.P5103686652471045972

/-! ## A039006.P1949407876564522135

`eq[A001316(n), A001316(A006015(n))]`
-/

namespace A039006.P1949407876564522135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P1949407876564522135

/-! ## A039006.P18388262338195343299

`eq[2*A160382(n), A139352(n)]`
-/

namespace A039006.P18388262338195343299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P18388262338195343299

/-! ## A039006.P10217183265966611087

`eq[2*A139352(A213370(n)), A139352(n)]`
-/

namespace A039006.P10217183265966611087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139352 (A213370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P10217183265966611087

/-! ## A039006.P8907853724739279062

`lt[A338863(A338854(n)), 2]`
-/

namespace A039006.P8907853724739279062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A338854 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039006.P8907853724739279062

/-! ## A039006.P2106057942979999509

`eq[A160382(n), A160383(n)]`
-/

namespace A039006.P2106057942979999509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P2106057942979999509

/-! ## A039006.P6950446235813831044

`eq[2*A160383(n), A139352(n)]`
-/

namespace A039006.P6950446235813831044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P6950446235813831044

/-! ## A039006.P688062495018608722

`eq[A065359(n), A065359(A163241(n))]`
-/

namespace A039006.P688062495018608722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A163241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P688062495018608722

/-! ## A039006.P6837981966546273133

`eq[A000120(A292372(n)), A160383(n)]`
-/

namespace A039006.P6837981966546273133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P6837981966546273133

/-! ## A039006.P3878258317028767078

`eq[2*A139352(A229763(n)), A139352(n)]`
-/

namespace A039006.P3878258317028767078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139352 (A229763 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P3878258317028767078

/-! ## A039006.P8165359015889202223

`eq[A000120(n), A000120(A163241(n))]`
-/

namespace A039006.P8165359015889202223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A163241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P8165359015889202223

/-! ## A039006.P7622173079328186556

`eq[A139351(A003188(n)), A139351(n)]`
-/

namespace A039006.P7622173079328186556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A003188 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P7622173079328186556

/-! ## A039006.P6215068299945409243

`eq[A319720(A163241(n)), A319720(n)]`
-/

namespace A039006.P6215068299945409243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A163241 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P6215068299945409243

/-! ## A039006.P14476430716541995460

`eq[A000120(n), A000120(A006015(n))]`
-/

namespace A039006.P14476430716541995460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P14476430716541995460

/-! ## A039006.P355389580409479546

`eq[A048883(A006015(n)), A048883(n)]`
-/

namespace A039006.P355389580409479546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P355389580409479546

/-! ## A039006.P17999069564998227990

`eq[A160381(A006015(n)), A160382(n)]`
-/

namespace A039006.P17999069564998227990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P17999069564998227990

/-! ## A039006.P10938187484054600566

`eq[A160383(A006015(n)), A160383(n)]`
-/

namespace A039006.P10938187484054600566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P10938187484054600566

/-! ## A039006.P6486980227092863265

`eq[A139351(A004468(n)), A139351(n)]`
-/

namespace A039006.P6486980227092863265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039006.P6486980227092863265

/-!
# A039009: Numbers whose base-5 representation has the same number of 0's and 3's.

The programs for A039009, the canonical program `A039009.P10161671281358653149` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039009 has offset 1).

The definition of A039009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2887 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039009.P10161671281358653149

`eq[A001222(A194459(n)), A110592(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A039009

/-- `eq[A001222(A194459(n)), A110592(n)]` -/
def P10161671281358653149.Spec : Prop :=
  ∀ n, (P10161671281358653149.a n : ℤ) = A039009 (n + 1)

theorem P10161671281358653149.correct : P10161671281358653149.Spec := by
  intro n
  simp only [A039009, Nat.add_sub_cancel]

end A039009

/-! ## A039009.P6674400932252311251

`eq[A000120(A037467(n)), A110592(n)]`
-/

namespace A039009.P6674400932252311251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037467 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039009.P6674400932252311251

namespace A039009

/-- `eq[A000120(A037467(n)), A110592(n)]` -/
def P6674400932252311251.Spec : Prop :=
  ∀ n, (P6674400932252311251.a n : ℤ) = A039009 (n + 1)

end A039009

/-! ## A039009.P3274157826404290516

`A068125(n+1)+A062157(A287021(n))`
-/

namespace A039009.P3274157826404290516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068125 (n + 1) + A062157 (A287021 n).toNat

end

end A039009.P3274157826404290516

namespace A039009

/-- `A068125(n+1)+A062157(A287021(n))` -/
def P3274157826404290516.Spec : Prop :=
  ∀ n, P3274157826404290516.a n = A039009 (n + 1)

end A039009

/-! ## A039009.P4384720671371292536

`A324697(n+1)-A358371(A297442(n+1))`
-/

namespace A039009.P4384720671371292536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1) - A358371 (A297442 (n + 1)).toNat

end

end A039009.P4384720671371292536

namespace A039009

/-- `A324697(n+1)-A358371(A297442(n+1))` -/
def P4384720671371292536.Spec : Prop :=
  ∀ n, P4384720671371292536.a n = A039009 (n + 1)

end A039009

/-!
# A039011: Numbers whose base-5 representation has the same number of 1's and 3's.

The programs for A039011, the canonical program `A039011.P18413047402145941160` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039011 has offset 1).

The definition of A039011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039011.P9483622900884710194

`eq[A064532(A054047(n)), A110592(n)]`
-/

namespace A039011.P9483622900884710194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A054047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P9483622900884710194

namespace A039011

/-- `eq[A064532(A054047(n)), A110592(n)]` -/
def P9483622900884710194.Spec : Prop :=
  ∀ n, (P9483622900884710194.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P13878026468314295505

`eq[A064532(A001744(n+1)), A110592(n)]`
-/

namespace A039011.P13878026468314295505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A001744 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P13878026468314295505

namespace A039011

/-- `eq[A064532(A001744(n+1)), A110592(n)]` -/
def P13878026468314295505.Spec : Prop :=
  ∀ n, (P13878026468314295505.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P18413047402145941160

`eq[A064692(A072960(n+1)), A110592(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A039011

/-- `eq[A064692(A072960(n+1)), A110592(n)]` -/
def P18413047402145941160.Spec : Prop :=
  ∀ n, (P18413047402145941160.a n : ℤ) = A039011 (n + 1)

theorem P18413047402145941160.correct : P18413047402145941160.Spec := by
  intro n
  simp only [A039011, Nat.add_sub_cancel]

end A039011

/-! ## A039011.P5743002435086645102

`eq[A000034(n), A130793(A054047(n))]`
-/

namespace A039011.P5743002435086645102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130793 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P5743002435086645102

namespace A039011

/-- `eq[A000034(n), A130793(A054047(n))]` -/
def P5743002435086645102.Spec : Prop :=
  ∀ n, (P5743002435086645102.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P340794243592114167

`eq[A010685(n), A130784(A054047(n))]`
-/

namespace A039011.P340794243592114167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P340794243592114167

namespace A039011

/-- `eq[A010685(n), A130784(A054047(n))]` -/
def P340794243592114167.Spec : Prop :=
  ∀ n, (P340794243592114167.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P4629535212321494497

`eq[A033999(n), A130784(A054047(n))]`
-/

namespace A039011.P4629535212321494497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P4629535212321494497

namespace A039011

/-- `eq[A033999(n), A130784(A054047(n))]` -/
def P4629535212321494497.Spec : Prop :=
  ∀ n, (P4629535212321494497.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P6098877807857101207

`eq[A084099(n), A084103(A054047(n))]`
-/

namespace A039011.P6098877807857101207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084103 (A054047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P6098877807857101207

namespace A039011

/-- `eq[A084099(n), A084103(A054047(n))]` -/
def P6098877807857101207.Spec : Prop :=
  ∀ n, (P6098877807857101207.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P7455507228057031322

`eq[A000035(n), A091684(A001744(n+1))]`
-/

namespace A039011.P7455507228057031322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P7455507228057031322

namespace A039011

/-- `eq[A000035(n), A091684(A001744(n+1))]` -/
def P7455507228057031322.Spec : Prop :=
  ∀ n, (P7455507228057031322.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P6540233713545497531

`eq[A059841(n), A153727(A001744(n+1))]`
-/

namespace A039011.P6540233713545497531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P6540233713545497531

namespace A039011

/-- `eq[A059841(n), A153727(A001744(n+1))]` -/
def P6540233713545497531.Spec : Prop :=
  ∀ n, (P6540233713545497531.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P14961441505739617585

`record[A038608(n)-A091684(A001744(n+1))]`
-/

namespace A039011.P14961441505739617585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n - A091684 (A001744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039011.P14961441505739617585

namespace A039011

/-- `record[A038608(n)-A091684(A001744(n+1))]` -/
def P14961441505739617585.Spec : Prop :=
  ∀ n, P14961441505739617585.a n = A039011 (n + 1)

end A039011

/-! ## A039011.P150162822436094383

`eq[A007814(n+1), A091684(A001744(n+1))]`
-/

namespace A039011.P150162822436094383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001744 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P150162822436094383

namespace A039011

/-- `eq[A007814(n+1), A091684(A001744(n+1))]` -/
def P150162822436094383.Spec : Prop :=
  ∀ n, (P150162822436094383.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P5998237393105436264

`eq[1, A091684(A001744(n+1))+A033999(n)]`
-/

namespace A039011.P5998237393105436264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001744 (n + 1)).toNat + A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039011.P5998237393105436264

namespace A039011

/-- `eq[1, A091684(A001744(n+1))+A033999(n)]` -/
def P5998237393105436264.Spec : Prop :=
  ∀ n, (P5998237393105436264.a n : ℤ) = A039011 (n + 1)

end A039011

/-! ## A039011.P5855160636642256042

`eq[A091684(A001744(n+1)), A129308(n+1)]`
-/

namespace A039011.P5855160636642256042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A001744 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P5855160636642256042

namespace A039011

/-- `eq[A091684(A001744(n+1)), A129308(n+1)]` -/
def P5855160636642256042.Spec : Prop :=
  ∀ n, (P5855160636642256042.a n : ℤ) = A039011 (n + 1)

end A039011

/-!
# A039012: Numbers whose base-5 representation has the same number of 1's and 4's.

The programs for A039012, the canonical program `A039012.P2916768435992472855` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039012 has offset 1).

The definition of A039012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039012.P2916768435992472855

`eq[A001222(A338803(n)), A276134(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A039012

/-- `eq[A001222(A338803(n)), A276134(n)]` -/
def P2916768435992472855.Spec : Prop :=
  ∀ n, (P2916768435992472855.a n : ℤ) = A039012 (n + 1)

theorem P2916768435992472855.correct : P2916768435992472855.Spec := by
  intro n
  simp only [A039012, Nat.add_sub_cancel]

end A039012

/-! ## A039012.P1573775974423527741

`eq[A064692(A014263(n+1)), A110592(n)]`
-/

namespace A039012.P1573775974423527741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A014263 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039012.P1573775974423527741

namespace A039012

/-- `eq[A064692(A014263(n+1)), A110592(n)]` -/
def P1573775974423527741.Spec : Prop :=
  ∀ n, (P1573775974423527741.a n : ℤ) = A039012 (n + 1)

end A039012

/-! ## A039012.P15995267420843347850

`eq[A275024(A224511(n+1)), A275024(n+1)]`
-/

namespace A039012.P15995267420843347850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A224511 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039012.P15995267420843347850

namespace A039012

/-- `eq[A275024(A224511(n+1)), A275024(n+1)]` -/
def P15995267420843347850.Spec : Prop :=
  ∀ n, (P15995267420843347850.a n : ℤ) = A039012 (n + 1)

end A039012

/-!
# A039013: Numbers whose base-5 representation has the same number of 2's and 3's.

The programs for A039013, there is no canonical definition to state claims against.
-/

/-! ## A039013.P13264709681407352353

`lt[A300219(3*n+5), A001222(A141214(n+2))]`
-/

namespace A039013.P13264709681407352353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300219 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141214 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039013.P13264709681407352353

/-!
# A039014: Numbers whose base-5 representation has the same number of 2's and 4's.

The programs for A039014, there is no canonical definition to state claims against.
-/

/-! ## A039014.P3297283982845466674

`eq[0, A076341(A194459(n))]`
-/

namespace A039014.P3297283982845466674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039014.P3297283982845466674

/-! ## A039014.P12915661675832330195

`eq[3, A079635(A194459(n))*A314894(n)+3]`
-/

namespace A039014.P12915661675832330195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A194459 n).toNat * A314894 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039014.P12915661675832330195

/-! ## A039014.P18292942637514279886

`eq[A248640(n), A248640(A348354(n))]`
-/

namespace A039014.P18292942637514279886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 (A348354 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039014.P18292942637514279886

/-!
# A039015: Numbers whose base-5 representation has the same number of 3's and 4's.

The programs for A039015, there is no canonical definition to state claims against.
-/

/-! ## A039015.P16986370436293961112

`eq[A053824(n), A280913(A080228(n+1))]`
-/

namespace A039015.P16986370436293961112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 (A080228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039015.P16986370436293961112

/-!
# A039017: Numbers whose base-6 representation has the same number of 0's and 2's.

The programs for A039017, there is no canonical definition to state claims against.
-/

/-! ## A039017.P14212553445303864695

`eq[A014021(n), A329308(A329311(n+1))]`
-/

namespace A039017.P14212553445303864695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329308 (A329311 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039017.P14212553445303864695

/-!
# A039018: Numbers whose base-6 representation has the same number of 0's and 3's.

The programs for A039018, there is no canonical definition to state claims against.
-/

/-! ## A039018.P5675783888624724373

`eq[A079978(n), A302931(A322058(n))]`
-/

namespace A039018.P5675783888624724373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302931 (A322058 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039018.P5675783888624724373

/-! ## A039018.P8044441948612054007

`∑[gcd(A010001(n), A079452(n+1))]`
-/

namespace A039018.P8044441948612054007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010001 n) (A079452 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039018.P8044441948612054007

/-! ## A039018.P2880189252283992299

`eq[3, Δ[A261160(3*n+2)]]`
-/

namespace A039018.P2880189252283992299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261160 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039018.P2880189252283992299

/-! ## A039018.P1158736678788029909

`A246095(xor(comp[3*n], A185213(n)))`
-/

namespace A039018.P1158736678788029909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246095 (Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A185213 n)).toNat

end

end A039018.P1158736678788029909

/-! ## A039018.P11963435931001140163

`A246103(xor(comp[3*n], A185213(n)))`
-/

namespace A039018.P11963435931001140163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246103 (Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A185213 n)).toNat

end

end A039018.P11963435931001140163

/-!
# A039019: Numbers whose base-6 representation has the same number of 0's and 4's.

The programs for A039019, there is no canonical definition to state claims against.
-/

/-! ## A039019.P6222904885685363842

`lt[A336979(A000196(n)), A300231(n+1)]`
-/

namespace A039019.P6222904885685363842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336979 (A000196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039019.P6222904885685363842

/-! ## A039019.P2845606513328002475

`lt[A326685(A027907(n+3)), A352822(3*(n+1))]`
-/

namespace A039019.P2845606513328002475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 (A027907 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039019.P2845606513328002475

/-! ## A039019.P859489833812325674

`lt[A058524(n+1), A304969(A305793(n+1))]`
-/

namespace A039019.P859489833812325674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304969 (A305793 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039019.P859489833812325674

/-! ## A039019.P14897196527618017082

`lt[A062353(n+1), (n+1)*2^∑{e}[n+1, #]]`
-/

namespace A039019.P14897196527618017082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039019.P14897196527618017082

/-! ## A039019.P10548068785688957491

`lt[A069677(n+1), (n+1)*2^∑{e}[n+1, #]]`
-/

namespace A039019.P10548068785688957491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069677 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039019.P10548068785688957491

/-!
# A039022: Numbers whose base-6 representation has the same number of 1's and 4's.

The programs for A039022, there is no canonical definition to state claims against.
-/

/-! ## A039022.P17980203335159825388

`eq[A078688(n), A078688(A284803(n))]`
-/

namespace A039022.P17980203335159825388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 (A284803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039022.P17980203335159825388

/-! ## A039022.P8136829035764813478

`eq[A078689(n), A078689(A284803(n))]`
-/

namespace A039022.P8136829035764813478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A284803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039022.P8136829035764813478

/-! ## A039022.P3419144564856448866

`lt[A004218(3*(n+1)), gcd(3, A137386(n+1))]`
-/

namespace A039022.P3419144564856448866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A137386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039022.P3419144564856448866

/-! ## A039022.P15305270503603716134

`eq[A011655(A137386(n+1)), A034562(n+1)]`
-/

namespace A039022.P15305270503603716134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A137386 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039022.P15305270503603716134

/-! ## A039022.P2306071309835982435

`floor(lt[A007921(n+1), A358153(2*n+1)]/2)+n`
-/

namespace A039022.P2306071309835982435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358153 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2⌋ + (n : ℤ)

end

end A039022.P2306071309835982435

/-!
# A039023: Numbers whose base-6 representation has the same number of 1's and 5's.

The programs for A039023, there is no canonical definition to state claims against.
-/

/-! ## A039023.P16407169667136652142

`lt[A263327(n), A190813(A298422(n+1))]`
-/

namespace A039023.P16407169667136652142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190813 (A298422 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039023.P16407169667136652142

/-!
# A039024: Numbers whose base-6 representation has the same number of 2's and 3's.

The programs for A039024, there is no canonical definition to state claims against.
-/

/-! ## A039024.P8670495738723996137

`eq[A053735(A037472(n)), A089293(n)]`
-/

namespace A039024.P8670495738723996137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A037472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039024.P8670495738723996137

/-! ## A039024.P13907286757604360802

`eq[A089293(2*n), A089293(n)]`
-/

namespace A039024.P13907286757604360802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039024.P13907286757604360802

/-! ## A039024.P4329916213831235699

`lt[2*n+3, A125650(A056792(3*(n+1)))]`
-/

namespace A039024.P4329916213831235699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125650 (A056792 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039024.P4329916213831235699

/-!
# A039026: Numbers whose base-6 representation has the same number of 2's and 5's.

The programs for A039026, there is no canonical definition to state claims against.
-/

/-! ## A039026.P5190232047410553199

`eq[A083019(A083024(n+1)), A083040(4*n+1)]`
-/

namespace A039026.P5190232047410553199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083019 (A083024 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083040 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039026.P5190232047410553199

/-! ## A039026.P13704101861937579790

`lt[A329312(A074305(2*n+3)), A333229(n+1)]`
-/

namespace A039026.P13704101861937579790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (A074305 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039026.P13704101861937579790

/-! ## A039026.P9689365272134878634

`lt[A029634(2*n+1), A139321(A029633(n+3))]`
-/

namespace A039026.P9689365272134878634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029634 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 (A029633 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039026.P9689365272134878634

/-! ## A039026.P3899192589099788936

`∑[C(A359240(A001317(n)+1), 2)]+n`
-/

namespace A039026.P3899192589099788936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A359240 (A001317 n + 1).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A039026.P3899192589099788936

/-! ## A039026.P6784975259362135845

`eq[A151902(n), A289831(A002264(n))]`
-/

namespace A039026.P6784975259362135845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A002264 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039026.P6784975259362135845

/-!
# A039028: Numbers whose base-6 representation has the same number of 3's and 5's.

The programs for A039028, there is no canonical definition to state claims against.
-/

/-! ## A039028.P11273057357855240170

`eq[A267099(A338863(n)), A338863(n)]`
-/

namespace A039028.P11273057357855240170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A338863 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039028.P11273057357855240170

/-!
# A039029: Numbers whose base-6 representation has the same number of 4's and 5's.

The programs for A039029, there is no canonical definition to state claims against.
-/

/-! ## A039029.P12599592628675187416

`∪[A039307(n+1), A037460(n)]`
-/

namespace A039029.P12599592628675187416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039029.P12599592628675187416

/-! ## A039029.P13503885452013155605

`record[gcd(A034571(n+1)², A147795(n))]`
-/

namespace A039029.P13503885452013155605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034571 (n + 1) ^ 2) (A147795 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039029.P13503885452013155605

/-! ## A039029.P5154578896098432812

`record[gcd(A034571(n+1), A147795(n))]`
-/

namespace A039029.P5154578896098432812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034571 (n + 1)) (A147795 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039029.P5154578896098432812

/-!
# A039030: Numbers whose base-7 representation has the same number of 0's and 1's.

The programs for A039030, there is no canonical definition to state claims against.
-/

/-! ## A039030.P10968197865711725067

`∪[A037341(n+1), A039308(n+1)]`
-/

namespace A039030.P10968197865711725067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039030.P10968197865711725067

/-! ## A039030.P11946278020671147427

`eq[A016428(n), A108907(A017981(n))]`
-/

namespace A039030.P11946278020671147427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108907 (A017981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039030.P11946278020671147427

/-!
# A039032: Numbers whose base-7 representation has the same number of 0's and 3's.

The programs for A039032, there is no canonical definition to state claims against.
-/

/-! ## A039032.P13324012513451831783

`record[A032742(A031482(n+1)²)/A031482(n+1)]`
-/

namespace A039032.P13324012513451831783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (A031482 (n + 1) ^ 2).toNat : ℚ) / (A031482 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039032.P13324012513451831783

/-! ## A039032.P17137503484476314868

`A261101(A018164(n))`
-/

namespace A039032.P17137503484476314868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261101 (A018164 n).toNat

end

end A039032.P17137503484476314868

/-! ## A039032.P10942590636797840801

`∑[A014709(A288235(n))]`
-/

namespace A039032.P10942590636797840801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A288235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039032.P10942590636797840801

/-! ## A039032.P11191877459180050388

`∑[A022303(A325862(n)²)]`
-/

namespace A039032.P11191877459180050388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A325862 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039032.P11191877459180050388

/-! ## A039032.P13998219726540871366

`∑[A049710(A106523(n)+1)]`
-/

namespace A039032.P13998219726540871366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A106523 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039032.P13998219726540871366

/-!
# A039033: Numbers whose base-7 representation has the same number of 0's and 4's.

The programs for A039033, there is no canonical definition to state claims against.
-/

/-! ## A039033.P730005139006963556

`eq[A014023(A323048(2*n+1)), A088157(2*(n+2))]`
-/

namespace A039033.P730005139006963556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014023 (A323048 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039033.P730005139006963556

/-! ## A039033.P342315548271896462

`lt[ratio[A132725(3*n+4)], 2]`
-/

namespace A039033.P342315548271896462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132725 (3 * n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A039033.P342315548271896462

/-! ## A039033.P15563932918237230311

`record[floor(7*n/5)+1-A326688(n)]`
-/

namespace A039033.P15563932918237230311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 5)⌋ + 1 - A326688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039033.P15563932918237230311

/-! ## A039033.P4920000577279952917

`A366721(A326495(n))+n`
-/

namespace A039033.P4920000577279952917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366721 (A326495 n).toNat + (n : ℤ)

end

end A039033.P4920000577279952917

/-! ## A039033.P14232568094272019847

`∑[A088569(A335235(3*n+5)²)]`
-/

namespace A039033.P14232568094272019847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A335235 (3 * n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039033.P14232568094272019847

/-!
# A039034: Numbers whose base-7 representation has the same number of 0's and 5's.

The programs for A039034, there is no canonical definition to state claims against.
-/

/-! ## A039034.P15550334198253617559

`A047302(n+1)-A011737(A005135(n))`
-/

namespace A039034.P15550334198253617559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047302 (n + 1) - A011737 (A005135 n).toNat

end

end A039034.P15550334198253617559

/-! ## A039034.P6589120815364484384

`A047363(n+2)-A183017(A008574(n))`
-/

namespace A039034.P6589120815364484384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 2) - A183017 (A008574 n).toNat

end

end A039034.P6589120815364484384

/-! ## A039034.P12914471335780268203

`eq[A034510(n+1), A190224(A022806(n+1))]`
-/

namespace A039034.P12914471335780268203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190224 (A022806 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039034.P12914471335780268203

/-! ## A039034.P15101000151184710343

`lt[A000712(3*n+2)*A037909(n+1), A339617(n)²]`
-/

namespace A039034.P15101000151184710343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (3 * n + 2) * A037909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339617 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039034.P15101000151184710343

/-! ## A039034.P15681238430267565245

`comp[a(n-2)+7]%A059801(n+1)` with `a(0)=0, a(1)=5`
-/

namespace A039034.P15681238430267565245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A059801 (n + 1))

end

end A039034.P15681238430267565245

/-!
# A039036: Numbers whose base-7 representation has the same number of 1's and 3's.

The programs for A039036, there is no canonical definition to state claims against.
-/

/-! ## A039036.P8904734636771499527

`eq[A234045(A233999(2*n+1)), A234045(n)]`
-/

namespace A039036.P8904734636771499527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A233999 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039036.P8904734636771499527

/-! ## A039036.P7438142936460636417

`eq[A066087(n+1), A066087(A221855(n+1))]`
-/

namespace A039036.P7438142936460636417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066087 (A221855 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039036.P7438142936460636417

/-!
# A039037: Numbers whose base-7 representation has the same number of 1's and 4's.

The programs for A039037, there is no canonical definition to state claims against.
-/

/-! ## A039037.P1072728827169572984

`lt[A378282(2*n+5), A288724(A000041(n))]`
-/

namespace A039037.P1072728827169572984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378282 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288724 (A000041 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039037.P1072728827169572984

/-! ## A039037.P1375816058870076842

`lt[n, A027052(A327446(3*n+1))]`
-/

namespace A039037.P1375816058870076842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A327446 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039037.P1375816058870076842

/-! ## A039037.P12112408196068255900

`lt[A110529(A136699(n)), A102369(n+3)]`
-/

namespace A039037.P12112408196068255900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110529 (A136699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102369 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039037.P12112408196068255900

/-! ## A039037.P7122235163958273030

`lt[A292154(n+1), A362191(A178878(n+1))]`
-/

namespace A039037.P7122235163958273030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362191 (A178878 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039037.P7122235163958273030

/-! ## A039037.P7161052403612373980

`lt[A102353(n+1), A102338(A102369(n+3))]`
-/

namespace A039037.P7161052403612373980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (A102369 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039037.P7161052403612373980

/-!
# A039038: Numbers whose base-7 representation has the same number of 1's and 5's.

The programs for A039038, there is no canonical definition to state claims against.
-/

/-! ## A039038.P60928252584056151

`eq[A010060(A122843(n+1)), A035263(n+1)]`
-/

namespace A039038.P60928252584056151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A122843 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039038.P60928252584056151

/-!
# A039042: Numbers whose base-7 representation has the same number of 2's and 5's.

The programs for A039042, there is no canonical definition to state claims against.
-/

/-! ## A039042.P1326496635761752709

`floor(A039047(2*A187829(n+1))/2)`
-/

namespace A039042.P1326496635761752709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039047 (2 * A187829 (n + 1)).toNat : ℚ) / 2⌋

end

end A039042.P1326496635761752709

/-! ## A039042.P9325518951962764659

`A004526(A039047(2*A187829(n+1)))`
-/

namespace A039042.P9325518951962764659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A039047 (2 * A187829 (n + 1)).toNat).toNat

end

end A039042.P9325518951962764659

/-! ## A039042.P17899154169182048729

`eq[A007318(A308920(n)), A226873(n)]`
-/

namespace A039042.P17899154169182048729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A308920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039042.P17899154169182048729

/-! ## A039042.P7179612816820735713

`eq[A007318(A308920(n)), A305161(n)]`
-/

namespace A039042.P7179612816820735713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A308920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039042.P7179612816820735713

/-! ## A039042.P2483025653794641023

`eq[A008679(A039653(n)), A153683(n+1)]`
-/

namespace A039042.P2483025653794641023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039042.P2483025653794641023

/-!
# A039043: Numbers whose base-7 representation has the same number of 2's and 6's.

The programs for A039043, there is no canonical definition to state claims against.
-/

/-! ## A039043.P7749376541413029334

`∑[A294875(A186237(n+1))%A113514(n+1)]`
-/

namespace A039043.P7749376541413029334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294875 (A186237 (n + 1)).toNat) (A113514 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039043.P7749376541413029334

/-! ## A039043.P4688771386064487666

`lt[A272851(3*n+1), A207442(A016564(2*(n+2)))]`
-/

namespace A039043.P4688771386064487666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272851 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207442 (A016564 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039043.P4688771386064487666

/-! ## A039043.P12646404413330575237

`A102489(n)+A057360(A187829(n+1))`
-/

namespace A039043.P12646404413330575237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n + A057360 (A187829 (n + 1)).toNat

end

end A039043.P12646404413330575237

/-! ## A039043.P3250069583680294543

`eq[A031076(A176591(n)), A325599(n+1)]`
-/

namespace A039043.P3250069583680294543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (A176591 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039043.P3250069583680294543

/-!
# A039044: Numbers whose base-7 representation has the same number of 3's and 4's.

The programs for A039044, there is no canonical definition to state claims against.
-/

/-! ## A039044.P12948697676353047240

`A047326(n+1)+dr(A184955(n))`
-/

namespace A039044.P12948697676353047240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (n + 1) + (SequenceMachineLib.digitalRoot (A184955 n) : ℤ)

end

end A039044.P12948697676353047240

/-! ## A039044.P1049829174194587478

`(A076314(A184955(n))+A047326(n+1))%A000079(n)`
-/

namespace A039044.P1049829174194587478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076314 (A184955 n).toNat + A047326 (n + 1)) (A000079 n)

end

end A039044.P1049829174194587478

/-! ## A039044.P7317109733291940868

`(A076314(A184955(n))+A047326(n+1))*A102679(n)!`
-/

namespace A039044.P7317109733291940868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076314 (A184955 n).toNat + A047326 (n + 1)) * (Nat.factorial (A102679 n).toNat : ℤ)

end

end A039044.P7317109733291940868

/-! ## A039044.P7510265377132211971

`(A076314(A184955(n))+A047326(n+1))*A007318(A029380(n))`
-/

namespace A039044.P7510265377132211971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076314 (A184955 n).toNat + A047326 (n + 1)) * A007318 (A029380 n).toNat

end

end A039044.P7510265377132211971

/-! ## A039044.P3190185552519413032

`(A076314(A184955(n))+A047326(n+1))*A007318(A046816(n))`
-/

namespace A039044.P3190185552519413032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076314 (A184955 n).toNat + A047326 (n + 1)) * A007318 (A046816 n).toNat

end

end A039044.P3190185552519413032

/-!
# A039046: Numbers whose base-7 representation has the same number of 3's and 6's.

The programs for A039046, there is no canonical definition to state claims against.
-/

/-! ## A039046.P1392605551854352247

`record[A327193(A031482(n+1)*A137688(n))]`
-/

namespace A039046.P1392605551854352247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A031482 (n + 1) * A137688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039046.P1392605551854352247

/-! ## A039046.P8336985210889272942

`A248910(2*n+1)-A000005(2^n)`
-/

namespace A039046.P8336985210889272942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (2 * n + 1) - A000005 (2 ^ n)

end

end A039046.P8336985210889272942

/-! ## A039046.P10279045310476915530

`A341936(A055645(n)+floor(2*n/5))`
-/

namespace A039046.P10279045310476915530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A055645 n + ⌊2 * ((n : ℚ) / 5)⌋).toNat

end

end A039046.P10279045310476915530

/-! ## A039046.P12340002418002735979

`A104150(A184955(n))+A001951(n)`
-/

namespace A039046.P12340002418002735979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (A184955 n).toNat + A001951 n

end

end A039046.P12340002418002735979

/-! ## A039046.P8965413897926527791

`xor(A001951(n), A185284(A072154(n)))`
-/

namespace A039046.P8965413897926527791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001951 n) (A185284 (A072154 n).toNat)

end

end A039046.P8965413897926527791

/-!
# A039047: Numbers whose base-7 representation has the same number of 4's and 5's.

The programs for A039047, there is no canonical definition to state claims against.
-/

/-! ## A039047.P6388674688134075051

`eq[A242442(A061653(n+1)), A285403(n+1)]`
-/

namespace A039047.P6388674688134075051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242442 (A061653 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039047.P6388674688134075051

/-! ## A039047.P14229202931143056576

`eq[A262681(5*n), A285403(n+1)]`
-/

namespace A039047.P14229202931143056576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039047.P14229202931143056576

/-! ## A039047.P14926743722809281055

`eq[A000055(A008616(n)), A285403(n+1)]`
-/

namespace A039047.P14926743722809281055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A008616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039047.P14926743722809281055

/-! ## A039047.P16487066163881285616

`eq[A000055(A025866(n)), A285403(n+1)]`
-/

namespace A039047.P16487066163881285616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A025866 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039047.P16487066163881285616

/-! ## A039047.P17484009422347431748

`eq[A007318(A058348(n)), A285403(n+1)]`
-/

namespace A039047.P17484009422347431748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A058348 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039047.P17484009422347431748

/-!
# A039049: Numbers whose base-7 representation has the same number of 5's and 6's.

The programs for A039049, there is no canonical definition to state claims against.
-/

/-! ## A039049.P6444133525640210260

`∪[A039328(n+1), A037466(n)]`
-/

namespace A039049.P6444133525640210260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039049.P6444133525640210260

/-! ## A039049.P13211264001540400351

`record[A037466(n)%A179774(n+1)]`
-/

namespace A039049.P13211264001540400351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037466 n) (A179774 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039049.P13211264001540400351

/-!
# A039050: Numbers whose base-8 representation has the same number of 0's and 1's.

The programs for A039050, there is no canonical definition to state claims against.
-/

/-! ## A039050.P7464389742322492214

`∪[A037342(n+1), A039329(n+1)]`
-/

namespace A039050.P7464389742322492214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039050.P7464389742322492214

/-!
# A039051: Numbers whose base-8 representation has the same number of 0's and 2's.

The programs for A039051, there is no canonical definition to state claims against.
-/

/-! ## A039051.P5189730750734640250

`∑[∏{e}[A057300(A000045(n+3))+1, #]]`
-/

namespace A039051.P5189730750734640250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A000045 (n + 3)).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039051.P5189730750734640250

/-!
# A039052: Numbers whose base-8 representation has the same number of 0's and 3's.

The programs for A039052, there is no canonical definition to state claims against.
-/

/-! ## A039052.P12453573289556013646

`floor(A325129(3*n+5)/6)`
-/

namespace A039052.P12453573289556013646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325129 (3 * n + 5) : ℚ) / 6⌋

end

end A039052.P12453573289556013646

/-! ## A039052.P16630789367570451287

`lt[A278216(A005900(n)), 2]`
-/

namespace A039052.P16630789367570451287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278216 (A005900 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039052.P16630789367570451287

/-! ## A039052.P2108044431175663011

`∑[A088569(A301710(n)²)]`
-/

namespace A039052.P2108044431175663011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A301710 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039052.P2108044431175663011

/-! ## A039052.P1553007816026176981

`∑[A353489(A045925(n))+1]`
-/

namespace A039052.P1553007816026176981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353489 (A045925 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039052.P1553007816026176981

/-! ## A039052.P4568181486668509349

`eq[n*A185037(n), A005925(n)]`
-/

namespace A039052.P4568181486668509349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A185037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039052.P4568181486668509349

/-!
# A039053: Numbers whose base-8 representation has the same number of 0's and 4's.

The programs for A039053, there is no canonical definition to state claims against.
-/

/-! ## A039053.P6580962654375492155

`A028310(A296357(n+1)+A135381(n))`
-/

namespace A039053.P6580962654375492155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A296357 (n + 1) + A135381 n).toNat

end

end A039053.P6580962654375492155

/-! ## A039053.P5245049219477375179

`A028310(A296357(n+1)+A135382(n+1))`
-/

namespace A039053.P5245049219477375179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A296357 (n + 1) + A135382 (n + 1)).toNat

end

end A039053.P5245049219477375179

/-!
# A039054: Numbers whose base-8 representation has the same number of 0's and 5's.

The programs for A039054, there is no canonical definition to state claims against.
-/

/-! ## A039054.P7554825477257910857

`round(sqrt(A168380(n+1)-A320657(2*n+3)))`
-/

namespace A039054.P7554825477257910857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A168380 (n + 1) - A320657 (2 * n + 3) : ℝ))

end

end A039054.P7554825477257910857

/-! ## A039054.P682608969744237263

`A158122(A185255(n))+A047450(n+1)`
-/

namespace A039054.P682608969744237263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158122 (A185255 n).toNat + A047450 (n + 1)

end

end A039054.P682608969744237263

/-! ## A039054.P13724105307651348318

`A047519(n+1)-A124764(A185255(n))`
-/

namespace A039054.P13724105307651348318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047519 (n + 1) - A124764 (A185255 n).toNat

end

end A039054.P13724105307651348318

/-! ## A039054.P8158629386568885293

`A047519(n+1)-A025439(A185255(n)²)`
-/

namespace A039054.P8158629386568885293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047519 (n + 1) - A025439 (A185255 n ^ 2).toNat

end

end A039054.P8158629386568885293

/-!
# A039055: Numbers whose base-8 representation has the same number of 0's and 6's.

The programs for A039055, there is no canonical definition to state claims against.
-/

/-! ## A039055.P14838135985241921460

`eq[2, A227196(A270975(n+3))]`
-/

namespace A039055.P14838135985241921460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A270975 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039055.P14838135985241921460

/-! ## A039055.P11307163729937327814

`eq[A000007(A008459(n)), A248394(3*n+1)]`
-/

namespace A039055.P11307163729937327814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039055.P11307163729937327814

/-! ## A039055.P5667331343354096000

`lt[A071035(A180979(n+1)), A143485(3*n+5)]`
-/

namespace A039055.P5667331343354096000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (A180979 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143485 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039055.P5667331343354096000

/-! ## A039055.P10056992929566895307

`eq[A248394(A002522(2*n+3)), A248394(3*n+1)]`
-/

namespace A039055.P10056992929566895307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (A002522 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039055.P10056992929566895307

/-!
# A039058: Numbers whose base-8 representation has the same number of 1's and 4's.

The programs for A039058, there is no canonical definition to state claims against.
-/

/-! ## A039058.P14593347370050574737

`eq[A031214(n+5), A293630(A300888(2*n+1))]`
-/

namespace A039058.P14593347370050574737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031214 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (A300888 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039058.P14593347370050574737

/-! ## A039058.P6386871537163035008

`eq[A092782(n+3), A092782(A093694(n))]`
-/

namespace A039058.P6386871537163035008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A093694 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039058.P6386871537163035008

/-! ## A039058.P5724325970167712955

`eq[A251092(A034807(3*n)), A368753(3*n+4)]`
-/

namespace A039058.P5724325970167712955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (A034807 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368753 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039058.P5724325970167712955

/-! ## A039058.P6787786884890616064

`eq[0, A010059(A055328(n+6))]`
-/

namespace A039058.P6787786884890616064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A055328 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039058.P6787786884890616064

/-! ## A039058.P12366143992911435729

`eq[A035698(n+1), A278514(n)]`
-/

namespace A039058.P12366143992911435729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039058.P12366143992911435729

/-!
# A039059: Numbers whose base-8 representation has the same number of 1's and 5's.

The programs for A039059, there is no canonical definition to state claims against.
-/

/-! ## A039059.P1120213284471657732

`eq[A368413(3*n+5), A368413(A069623(n+1))]`
-/

namespace A039059.P1120213284471657732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A069623 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039059.P1120213284471657732

/-! ## A039059.P12141485954127729210

`eq[A104566(A117142(n+1)), A338854(n)]`
-/

namespace A039059.P12141485954127729210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104566 (A117142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039059.P12141485954127729210

/-! ## A039059.P8615176265756000654

`lt[A047212(n+1), A141269(A098504(n))]`
-/

namespace A039059.P8615176265756000654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141269 (A098504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039059.P8615176265756000654

/-!
# A039062: Numbers whose base-8 representation has the same number of 2's and 3's.

The programs for A039062, there is no canonical definition to state claims against.
-/

/-! ## A039062.P4761344923792533899

`lt[A158303(n+2), A179878(A181802(3*(n+1)))]`
-/

namespace A039062.P4761344923792533899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158303 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179878 (A181802 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039062.P4761344923792533899

/-!
# A039064: Numbers whose base-8 representation has the same number of 2's and 5's.

The programs for A039064, there is no canonical definition to state claims against.
-/

/-! ## A039064.P977568505114544689

`eq[A054900(n), A156729(A099627(n))]`
-/

namespace A039064.P977568505114544689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156729 (A099627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039064.P977568505114544689

/-! ## A039064.P11448849412752504005

`lt[A173673(A302515(n+2)), A280514(n+1)]`
-/

namespace A039064.P11448849412752504005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A302515 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039064.P11448849412752504005

/-! ## A039064.P13126584888094191966

`lt[A327671(A329439(n+3)), A241900(3*n+1)]`
-/

namespace A039064.P13126584888094191966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327671 (A329439 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241900 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039064.P13126584888094191966

/-! ## A039064.P9819173932698136747

`A349294(A284534(n+1))-(n+1)`
-/

namespace A039064.P9819173932698136747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A284534 (n + 1)).toNat - (n + 1 : ℤ)

end

end A039064.P9819173932698136747

/-! ## A039064.P16806304845041003980

`eq[A261612(n+4), A305936(A289585(n+1))]`
-/

namespace A039064.P16806304845041003980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261612 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A289585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039064.P16806304845041003980

/-!
# A039065: Numbers whose base-8 representation has the same number of 2's and 6's.

The programs for A039065, there is no canonical definition to state claims against.
-/

/-! ## A039065.P15535379506351627457

`eq[A124773(A124773(n)), A204988(3*n+2)]`
-/

namespace A039065.P15535379506351627457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A124773 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039065.P15535379506351627457

/-! ## A039065.P16435742263720931134

`eq[A176046(A176041(n+1)), A176047(3*n)]`
-/

namespace A039065.P16435742263720931134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176046 (A176041 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176047 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039065.P16435742263720931134

/-! ## A039065.P4075851244000128383

`lt[A001971(n), A002015(A001965(2*(n+2)))]`
-/

namespace A039065.P4075851244000128383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002015 (A001965 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039065.P4075851244000128383

/-! ## A039065.P4939660742604776454

`lt[A342126(2*n+3), A286557(A098849(3*n+2))]`
-/

namespace A039065.P4939660742604776454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A098849 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039065.P4939660742604776454

/-!
# A039066: Numbers whose base-8 representation has the same number of 2's and 7's.

The programs for A039066, there is no canonical definition to state claims against.
-/

/-! ## A039066.P7555479921108088356

`lt[A211269(n+4), A211315(A211302(n+2))]`
-/

namespace A039066.P7555479921108088356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211269 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211315 (A211302 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039066.P7555479921108088356

/-!
# A039069: Numbers whose base-8 representation has the same number of 3's and 6's.

The programs for A039069, there is no canonical definition to state claims against.
-/

/-! ## A039069.P10190474349212343946

`or(A047498(n+1), A185284(2*n))`
-/

namespace A039069.P10190474349212343946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047498 (n + 1)) (A185284 (2 * n))

end

end A039069.P10190474349212343946

/-! ## A039069.P16565962673322264261

`eq[A136640(n+1), A202480(and(n, 2*n))]`
-/

namespace A039069.P16565962673322264261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202480 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039069.P16565962673322264261

/-! ## A039069.P639734334395018217

`A285465(n+1)-A000035(A221364(n))`
-/

namespace A039069.P639734334395018217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285465 (n + 1) - A000035 (A221364 n).toNat

end

end A039069.P639734334395018217

/-!
# A039070: Numbers whose base-8 representation has the same number of 3's and 7's.

The programs for A039070, there is no canonical definition to state claims against.
-/

/-! ## A039070.P17176959708137703243

`A285465(n+1)-A219486(A185294(n))`
-/

namespace A039070.P17176959708137703243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285465 (n + 1) - A219486 (A185294 n).toNat

end

end A039070.P17176959708137703243

/-! ## A039070.P13598998649852935107

`A285465(n+1)-A178788(A275075(n))`
-/

namespace A039070.P13598998649852935107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285465 (n + 1) - A178788 (A275075 n).toNat

end

end A039070.P13598998649852935107

/-! ## A039070.P346401320203902045

`A285465(n+1)-A340988(∑[A185294(n)])`
-/

namespace A039070.P346401320203902045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285465 (n + 1) - A340988 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 91)

end

end A039070.P346401320203902045

/-! ## A039070.P12094682858045662709

`lt[A028721(n+1), A028721(A034489(n+1))]`
-/

namespace A039070.P12094682858045662709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028721 (A034489 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039070.P12094682858045662709

/-! ## A039070.P8281336673584110757

`A285465(n+1)-A185238(n)^A185294(n)`
-/

namespace A039070.P8281336673584110757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285465 (n + 1) : ℚ) - (A185238 n : ℚ) ^ (A185294 n : ℤ)

end

end A039070.P8281336673584110757

/-!
# A039071: Numbers whose base-8 representation has the same number of 4's and 5's.

The programs for A039071, there is no canonical definition to state claims against.
-/

/-! ## A039071.P8154828056664657601

`comp[or(6, n)-2]%A002982(n+4)`
-/

namespace A039071.P8154828056664657601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A002982 (n + 4))

end

end A039071.P8154828056664657601

/-! ## A039071.P16181339701698321733

`lt[floor(n/4), A059253(2^floor(n/2))]`
-/

namespace A039071.P16181339701698321733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039071.P16181339701698321733

/-! ## A039071.P559146910369983354

`eq[1, ∏{e}[(C(n, 2)+2)%A036884(n+2), #]]`
-/

namespace A039071.P559146910369983354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose n 2 + 2 : ℤ) (A036884 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039071.P559146910369983354

/-! ## A039071.P372646950768363996

`lt[1, A269970(A124773(n))]`
-/

namespace A039071.P372646950768363996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269970 (A124773 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039071.P372646950768363996

/-! ## A039071.P5523479837816430219

`lt[A356731(n+1), A100484(A006562(2*n+3))]`
-/

namespace A039071.P5523479837816430219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (A006562 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039071.P5523479837816430219

/-!
# A039075: Numbers whose base-8 representation has the same number of 5's and 7's.

The programs for A039075, there is no canonical definition to state claims against.
-/

/-! ## A039075.P618385075485166541

`eq[A332213(A338881(n)), A338881(n)]`
-/

namespace A039075.P618385075485166541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A338881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039075.P618385075485166541

/-! ## A039075.P2276814113274809789

`eq[A153675(n+2)², A227195(3*n+2)]`
-/

namespace A039075.P2276814113274809789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039075.P2276814113274809789

/-! ## A039075.P7647053162533787796

`eq[A153675(n+1), A286465(A227195(n+2))]`
-/

namespace A039075.P7647053162533787796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286465 (A227195 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039075.P7647053162533787796

/-! ## A039075.P12635054069950233793

`eq[A100616(A153675(n+1)!), A227195(n+2)]`
-/

namespace A039075.P12635054069950233793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (Nat.factorial (A153675 (n + 1)).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039075.P12635054069950233793

/-! ## A039075.P5888030480456480191

`eq[A178334(A256562(4*n+1)), A227195(3*n+2)]`
-/

namespace A039075.P5888030480456480191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A256562 (4 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039075.P5888030480456480191

/-!
# A039076: Numbers whose base-8 representation has the same number of 6's and 7's.

The programs for A039076, there is no canonical definition to state claims against.
-/

/-! ## A039076.P3942155578196131249

`∪[A039356(n+1), A037471(n)]`
-/

namespace A039076.P3942155578196131249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A039076.P3942155578196131249

/-! ## A039076.P3855213867717667901

`eq[A001147(A050605(n)), A214956(n+1)]`
-/

namespace A039076.P3855213867717667901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A050605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039076.P3855213867717667901

/-!
# A039077: Numbers whose base-9 representation has the same number of 0's and 1's.

The programs for A039077, there is no canonical definition to state claims against.
-/

/-! ## A039077.P5214857702317492270

`eq[A114099(n), A268643(A171717(n))]`
-/

namespace A039077.P5214857702317492270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039077.P5214857702317492270

/-! ## A039077.P8045326323026191021

`lt[A061579(A243831(3*n+4))+1, A000030(n)]`
-/

namespace A039077.P8045326323026191021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A243831 (3 * n + 4)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039077.P8045326323026191021

/-! ## A039077.P103909671432078043

`lt[A215810(n+1), A045673(A222210(n))]`
-/

namespace A039077.P103909671432078043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045673 (A222210 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039077.P103909671432078043

/-! ## A039077.P10257190321872941601

`lt[A032574(2*(n+2)), A056960(A343524(n+1))]`
-/

namespace A039077.P10257190321872941601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032574 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A343524 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039077.P10257190321872941601

/-! ## A039077.P15104634088368044407

`lt[A160094(A000837(n)), A000030(n)]`
-/

namespace A039077.P15104634088368044407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A000837 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039077.P15104634088368044407

/-!
# A039078: Numbers whose base-9 representation has the same number of 0's and 2's.

The programs for A039078, there is no canonical definition to state claims against.
-/

/-! ## A039078.P15739272924865906556

`lt[A328109(A093466(n+3)), A034699(n+1)]`
-/

namespace A039078.P15739272924865906556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328109 (A093466 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039078.P15739272924865906556

/-!
# A039079: Numbers whose base-9 representation has the same number of 0's and 3's.

The programs for A039079, there is no canonical definition to state claims against.
-/

/-! ## A039079.P14640340898937889209

`comp[21-(n-1)^val(n+1, 3)]+1`
-/

namespace A039079.P14640340898937889209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 - ((n : ℤ) - 1) ^ SequenceMachineLib.valuation (n + 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A039079.P14640340898937889209

/-! ## A039079.P4825515236407991650

`eq[1, gcd(n, A119253(n+4))]`
-/

namespace A039079.P4825515236407991650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A119253 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039079.P4825515236407991650

/-! ## A039079.P2094954870367988984

`comp[21-A143804(n+1)]+1`
-/

namespace A039079.P2094954870367988984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 - A143804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A039079.P2094954870367988984

/-! ## A039079.P15257251071056552087

`comp[25-A253195(n+1)]+1`
-/

namespace A039079.P15257251071056552087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 - A253195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A039079.P15257251071056552087

/-! ## A039079.P13987352787841242552

`comp[3*n-1-A174708(3*(n+1))]+1`
-/

namespace A039079.P13987352787841242552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1 - A174708 (3 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A039079.P13987352787841242552

/-!
# A039080: Numbers whose base-9 representation has the same number of 0's and 4's.

The programs for A039080, there is no canonical definition to state claims against.
-/

/-! ## A039080.P7070010804163545178

`lt[1, A113018(A001844(2*n))]`
-/

namespace A039080.P7070010804163545178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113018 (A001844 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039080.P7070010804163545178

/-! ## A039080.P10710665007429574942

`comp[A242660(2*n+1)]%A229595(n)`
-/

namespace A039080.P10710665007429574942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A229595 n)

end

end A039080.P10710665007429574942

/-! ## A039080.P7136402697109400391

`comp[A032766(3*n)]%A238225(n+1)`
-/

namespace A039080.P7136402697109400391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A238225 (n + 1))

end

end A039080.P7136402697109400391

/-! ## A039080.P9287928352161202793

`lt[A010231(A010785(n+4)), A046897(n+1)]`
-/

namespace A039080.P9287928352161202793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010231 (A010785 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039080.P9287928352161202793

/-!
# A039081: Numbers whose base-9 representation has the same number of 0's and 5's.

The programs for A039081, there is no canonical definition to state claims against.
-/

/-! ## A039081.P13738534248013901678

`∑[A278971(2*n+1)%7]`
-/

namespace A039081.P13738534248013901678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278971 (2 * n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039081.P13738534248013901678

/-! ## A039081.P18295279009629625417

`A002265(A330173(n+1))%A330165(n+1)`
-/

namespace A039081.P18295279009629625417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A330173 (n + 1)).toNat) (A330165 (n + 1))

end

end A039081.P18295279009629625417

/-! ## A039081.P2378518778029513478

`A057360(A001952(n+1)%A236657(n+5))`
-/

namespace A039081.P2378518778029513478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (Int.tmod (A001952 (n + 1)) (A236657 (n + 5))).toNat

end

end A039081.P2378518778029513478

/-! ## A039081.P14897951667428562575

`round(sqrt(∑[A244644(2*n)]+1))`
-/

namespace A039081.P14897951667428562575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℝ))

end

end A039081.P14897951667428562575

/-! ## A039081.P13463856101575976431

`lt[A087890(n+2), dr(Δ[n²])]`
-/

namespace A039081.P13463856101575976431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039081.P13463856101575976431

/-!
# A039082: Numbers whose base-9 representation has the same number of 0's and 6's.

The programs for A039082, there is no canonical definition to state claims against.
-/

/-! ## A039082.P2299131814426369391

`lt[A096076(n), A061039(n+6)]`
-/

namespace A039082.P2299131814426369391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039082.P2299131814426369391

/-! ## A039082.P9247181290179283271

`lt[A139380(n+4)², A139377(n)]`
-/

namespace A039082.P9247181290179283271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139380 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039082.P9247181290179283271

/-! ## A039082.P8494115203297230345

`lt[A004200(A007089(3*(n+1))), 5]`
-/

namespace A039082.P8494115203297230345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (A007089 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039082.P8494115203297230345

/-! ## A039082.P5481034951567646662

`eq[A188670(n+2), A245092(A188670(n+2))]`
-/

namespace A039082.P5481034951567646662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188670 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A188670 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039082.P5481034951567646662

/-! ## A039082.P15833630674723047046

`lt[A325284(n+1), A000040(A061039(n+6))]`
-/

namespace A039082.P15833630674723047046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061039 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039082.P15833630674723047046

/-!
# A039083: Numbers whose base-9 representation has the same number of 0's and 7's.

The programs for A039083, there is no canonical definition to state claims against.
-/

/-! ## A039083.P8282466764488728114

`eq[A003849(A151934(n)), A037911(n+1)]`
-/

namespace A039083.P8282466764488728114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A151934 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039083.P8282466764488728114

/-! ## A039083.P16669990606345404487

`eq[A037911(n+1), A097325(A151935(n))]`
-/

namespace A039083.P16669990606345404487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A151935 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039083.P16669990606345404487

/-! ## A039083.P14196173258939202279

`eq[A037911(n+1), A287556(A151935(n)+1)]`
-/

namespace A039083.P14196173258939202279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A151935 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039083.P14196173258939202279

/-! ## A039083.P11642842686786928977

`∑[A304093(A003215(3*n+1))]`
-/

namespace A039083.P11642842686786928977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304093 (A003215 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039083.P11642842686786928977

/-! ## A039083.P13390633472240121100

`lt[A026606(A335499(n+1)), A056992(n+1)]`
-/

namespace A039083.P13390633472240121100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (A335499 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039083.P13390633472240121100

/-!
# A039087: Numbers whose base-9 representation has the same number of 1's and 5's.

The programs for A039087, there is no canonical definition to state claims against.
-/

/-! ## A039087.P13904456953612266234

`A057979(A039091(2*(n+1))%A273508(n+1))`
-/

namespace A039087.P13904456953612266234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.tmod (A039091 (2 * (n + 1))) (A273508 (n + 1))).toNat

end

end A039087.P13904456953612266234

/-! ## A039087.P7350692081524482251

`eq[n%2, A165560(A052179(n))]`
-/

namespace A039087.P7350692081524482251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A052179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039087.P7350692081524482251

/-! ## A039087.P3891696858648732502

`eq[A129308(n+1), A165560(A052179(n))]`
-/

namespace A039087.P3891696858648732502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A052179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039087.P3891696858648732502

/-! ## A039087.P1740098276606003569

`eq[A165560(2*n), A165560(A052179(n))]`
-/

namespace A039087.P1740098276606003569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A052179 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039087.P1740098276606003569

/-!
# A039089: Numbers whose base-9 representation has the same number of 1's and 7's.

The programs for A039089, there is no canonical definition to state claims against.
-/

/-! ## A039089.P6411808012743415067

`eq[A043282(n+2), A261794(A171717(n))]`
-/

namespace A039089.P6411808012743415067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039089.P6411808012743415067

/-! ## A039089.P17977955875753976022

`eq[A114099(n+2), A268643(A171717(n))]`
-/

namespace A039089.P17977955875753976022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039089.P17977955875753976022

/-!
# A039090: Numbers whose base-9 representation has the same number of 1's and 8's.

The programs for A039090, there is no canonical definition to state claims against.
-/

/-! ## A039090.P5031107722998530475

`eq[A043282(n+1), A261794(A171717(n))]`
-/

namespace A039090.P5031107722998530475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039090.P5031107722998530475

/-! ## A039090.P11881139930201356527

`eq[A114099(n+1), A268643(A171717(n))]`
-/

namespace A039090.P11881139930201356527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039090.P11881139930201356527

/-! ## A039090.P6694642020142162351

`lt[A030564(2*n+5), A030588(A030533(3*(n+1)))]`
-/

namespace A039090.P6694642020142162351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030564 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (A030533 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039090.P6694642020142162351

/-!
# A039093: Numbers whose base-9 representation has the same number of 2's and 5's.

The programs for A039093, there is no canonical definition to state claims against.
-/

/-! ## A039093.P13346687848812411112

`eq[A160384(A004519(n)), A160384(n)]`
-/

namespace A039093.P13346687848812411112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A004519 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039093.P13346687848812411112

/-! ## A039093.P15221935944134800156

`record[A037014(n+1)-Δ[A000009(n)]]`
-/

namespace A039093.P15221935944134800156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037014 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039093.P15221935944134800156

/-! ## A039093.P12457841901854364660

`eq[A034424(n+1), A074644(n+1)]`
-/

namespace A039093.P12457841901854364660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039093.P12457841901854364660

/-! ## A039093.P14491160767692364507

`lt[n, A352835(A352831(2*(n+2)))]`
-/

namespace A039093.P14491160767692364507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352835 (A352831 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039093.P14491160767692364507

/-! ## A039093.P8769392452485034728

`eq[A094544(A003602(n+1)), A198318(n)]`
-/

namespace A039093.P8769392452485034728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094544 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039093.P8769392452485034728

/-!
# A039094: Numbers whose base-9 representation has the same number of 2's and 6's.

The programs for A039094, there is no canonical definition to state claims against.
-/

/-! ## A039094.P16932522504210208808

`eq[A025870(n)!, A175432(n+1)]`
-/

namespace A039094.P16932522504210208808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025870 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039094.P16932522504210208808

/-! ## A039094.P17957533659826621279

`lt[A340621(A038128(n)), A084531(n+1)]`
-/

namespace A039094.P17957533659826621279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340621 (A038128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039094.P17957533659826621279

/-! ## A039094.P11372488741004927464

`eq[A025870(n*A025870(n)), A175432(n+1)]`
-/

namespace A039094.P11372488741004927464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 ((n : ℤ) * A025870 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039094.P11372488741004927464

/-!
# A039095: Numbers whose base-9 representation has the same number of 2's and 7's.

The programs for A039095, there is no canonical definition to state claims against.
-/

/-! ## A039095.P17615619581636453148

`lt[A001606(n+1), A261356(A048929(n+1))]`
-/

namespace A039095.P17615619581636453148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261356 (A048929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039095.P17615619581636453148

/-! ## A039095.P8176276362944011674

`A140102(lt[A002093(n+1), A093007(3*n+1)])-1`
-/

namespace A039095.P8176276362944011674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093007 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 1

end

end A039095.P8176276362944011674

/-!
# A039096: Numbers whose base-9 representation has the same number of 2's and 8's.

The programs for A039096, there is no canonical definition to state claims against.
-/

/-! ## A039096.P16591355208837794436

`lt[A017899(A202019(n+1)), A097805(3*n+4)]`
-/

namespace A039096.P16591355208837794436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A202019 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039096.P16591355208837794436

/-!
# A039097: Numbers whose base-9 representation has the same number of 3's and 4's.

The programs for A039097, there is no canonical definition to state claims against.
-/

/-! ## A039097.P14164549476519799176

`lt[A065242(A051908(n+1)), A031076(2*(n+2))]`
-/

namespace A039097.P14164549476519799176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065242 (A051908 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031076 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039097.P14164549476519799176

/-!
# A039099: Numbers whose base-9 representation has the same number of 3's and 6's.

The programs for A039099, there is no canonical definition to state claims against.
-/

/-! ## A039099.P11329576634220414398

`lt[2, A133442(2*n+1)]`
-/

namespace A039099.P11329576634220414398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133442 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A039099.P11329576634220414398

/-! ## A039099.P5663788011085856182

`eq[0, 3%A330166(3*n)]`
-/

namespace A039099.P5663788011085856182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A330166 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039099.P5663788011085856182

/-! ## A039099.P12119470979371480218

`record[n/A105244(4*n+1)]`
-/

namespace A039099.P12119470979371480218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A105244 (4 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039099.P12119470979371480218

/-! ## A039099.P2564804596155254150

`comp[3*comp[3*n]]%record[A261957(n)]`
-/

namespace A039099.P2564804596155254150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

end

end A039099.P2564804596155254150

/-! ## A039099.P12250538200666076915

`lt[(n^3+n)/2, A320148((n^3+n)/2)]`
-/

namespace A039099.P12250538200666076915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 + n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320148 (SequenceMachineLib.roundAway ((n ^ 3 + n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A039099.P12250538200666076915

