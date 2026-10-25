import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A045200: Numbers whose base-5 representation contains exactly three 0's and one 3.

The programs for A045200, there is no canonical definition to state claims against.
-/

/-! ## A045200.P18036327085651823490

`∩[A023724(n+1), A023734(n+1)]`
-/

namespace A045200.P18036327085651823490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045200.P18036327085651823490

/-! ## A045200.P2679269038161865193

`A031473(3*A032555(n+1))`
-/

namespace A045200.P2679269038161865193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031473 (3 * A032555 (n + 1)).toNat

end

end A045200.P2679269038161865193

/-! ## A045200.P9060290141861583162

`A031473(3*A032559(n+1))`
-/

namespace A045200.P9060290141861583162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031473 (3 * A032559 (n + 1)).toNat

end

end A045200.P9060290141861583162

/-! ## A045200.P9646661964135537596

`A045214(3*A032555(n+1))`
-/

namespace A045200.P9646661964135537596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045214 (3 * A032555 (n + 1)).toNat

end

end A045200.P9646661964135537596

/-! ## A045200.P6828972553714430815

`A045214(3*A032559(n+1))`
-/

namespace A045200.P6828972553714430815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045214 (3 * A032559 (n + 1)).toNat

end

end A045200.P6828972553714430815

/-!
# A045201: Numbers whose base-5 representation contains exactly three 0's and two 3's.

The programs for A045201, there is no canonical definition to state claims against.
-/

/-! ## A045201.P982171395029315534

`∩[A023724(n+1), A023735(n+1)]`
-/

namespace A045201.P982171395029315534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045201.P982171395029315534

/-! ## A045201.P1262512117481434801

`(A045216(n+1)+record[A032742(A045216(n+1))])/2`
-/

namespace A045201.P1262512117481434801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045216 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045216 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A045201.P1262512117481434801

/-! ## A045201.P1037672382825038227

`(A045216(n+1)+record[A001057(A045216(n+1)-1)])/2`
-/

namespace A045201.P1037672382825038227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A045216 (n + 1) - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045216 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A045201.P1037672382825038227

/-! ## A045201.P5036810658858588265

`A004525(A045216(n+1)+A045186(n+1))`
-/

namespace A045201.P5036810658858588265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A045216 (n + 1) + A045186 (n + 1)).toNat

end

end A045201.P5036810658858588265

/-! ## A045201.P9547181054817861524

`A004526(A045216(n+1)+A045186(n+1))`
-/

namespace A045201.P9547181054817861524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045216 (n + 1) + A045186 (n + 1)).toNat

end

end A045201.P9547181054817861524

/-!
# A045202: Numbers whose base-5 representation contains exactly three 0's and three 3's.

The programs for A045202, there is no canonical definition to state claims against.
-/

/-! ## A045202.P14056430787998379525

`∩[A023724(n+1), A023736(n+1)]`
-/

namespace A045202.P14056430787998379525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045202.P14056430787998379525

/-! ## A045202.P8562533603192204402

`A037459(A045079(n+1))`
-/

namespace A045202.P8562533603192204402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A045079 (n + 1)).toNat

end

end A045202.P8562533603192204402

/-! ## A045202.P18185014054779578330

`A020654(A045079(n+1)+1)`
-/

namespace A045202.P18185014054779578330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A045079 (n + 1) + 1).toNat

end

end A045202.P18185014054779578330

/-! ## A045202.P5922990010341850917

`A003159(A045187(n+1))`
-/

namespace A045202.P5922990010341850917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A045187 (n + 1)).toNat

end

end A045202.P5922990010341850917

/-! ## A045202.P5472508459080275501

`A004515(A045217(n+1))`
-/

namespace A045202.P5472508459080275501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A045217 (n + 1)).toNat

end

end A045202.P5472508459080275501

/-!
# A045203: Numbers whose base-5 representation contains no 0's and exactly one 4.

The programs for A045203, the canonical program `A045203.P16200633240208871595` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045203 has offset 1).

The definition of A045203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045203.P8297891205161969984

`∩[A023721(n+1), A031474(n+1)]`
-/

namespace A045203.P8297891205161969984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045203.P8297891205161969984

namespace A045203

/-- `∩[A023721(n+1), A031474(n+1)]` -/
def P8297891205161969984.Spec : Prop :=
  ∀ n, (P8297891205161969984.a n : ℤ) = A045203 (n + 1)

end A045203

/-! ## A045203.P16200633240208871595

`∩[A023721(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045203

/-- `∩[A023721(n+1), A023738(n+1)]` -/
def P16200633240208871595.Spec : Prop :=
  ∀ n, (P16200633240208871595.a n : ℤ) = A045203 (n + 1)

theorem P16200633240208871595.correct : P16200633240208871595.Spec := by
  intro n
  simp only [A045203, Nat.add_sub_cancel]

end A045203

/-! ## A045203.P4065565479643235383

`∩[A023738(n+1), A031474(n+1)]`
-/

namespace A045203.P4065565479643235383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045203.P4065565479643235383

namespace A045203

/-- `∩[A023738(n+1), A031474(n+1)]` -/
def P4065565479643235383.Spec : Prop :=
  ∀ n, (P4065565479643235383.a n : ℤ) = A045203 (n + 1)

end A045203

/-!
# A045204: Numbers whose base-5 representation contains no 0's and exactly two 4's.

The programs for A045204, the canonical program `A045204.P2765214535292922617` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045204 has offset 1).

The definition of A045204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045204.P12433227240675084124

`∩[A023739(n+1), A031475(n+1)]`
-/

namespace A045204.P12433227240675084124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045204.P12433227240675084124

namespace A045204

/-- `∩[A023739(n+1), A031475(n+1)]` -/
def P12433227240675084124.Spec : Prop :=
  ∀ n, (P12433227240675084124.a n : ℤ) = A045204 (n + 1)

end A045204

/-! ## A045204.P2765214535292922617

`∩[A023721(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045204

/-- `∩[A023721(n+1), A023739(n+1)]` -/
def P2765214535292922617.Spec : Prop :=
  ∀ n, (P2765214535292922617.a n : ℤ) = A045204 (n + 1)

theorem P2765214535292922617.correct : P2765214535292922617.Spec := by
  intro n
  simp only [A045204, Nat.add_sub_cancel]

end A045204

/-!
# A045205: Numbers whose base-5 representation contains no 0's and exactly three 4's.

The programs for A045205, there is no canonical definition to state claims against.
-/

/-! ## A045205.P9428667933024487427

`∩[A023740(n+1), A031476(n+1)]`
-/

namespace A045205.P9428667933024487427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045205.P9428667933024487427

/-! ## A045205.P9820819891363810739

`∩[A023740(n+1), A023721(n+1)]`
-/

namespace A045205.P9820819891363810739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045205.P9820819891363810739

/-!
# A045206: Numbers whose base-5 representation contains exactly one 0 and no 4's.

The programs for A045206, there is no canonical definition to state claims against.
-/

/-! ## A045206.P2856650505505396588

`A020654(A023706(n+1)+1)`
-/

namespace A045206.P2856650505505396588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023706 (n + 1) + 1).toNat

end

end A045206.P2856650505505396588

/-! ## A045206.P12336366917933771930

`A020654(eq[n, n*A160380(n)]+1)`
-/

namespace A045206.P12336366917933771930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045206.P12336366917933771930

/-! ## A045206.P12565313818237159822

`A020654(eq[A160385(n)+1, A110591(n)]+1)`
-/

namespace A045206.P12565313818237159822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A045206.P12565313818237159822

/-! ## A045206.P12187405455007524541

`A020654(eq[A160380(n)+1, A078832(n+1)]+1)`
-/

namespace A045206.P12187405455007524541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A045206.P12187405455007524541

/-! ## A045206.P1380645427220248379

`∩[A020654(n+1), A023722(n+1)]`
-/

namespace A045206.P1380645427220248379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045206.P1380645427220248379

/-!
# A045207: Numbers whose base-5 representation contains exactly one 0 and one 4.

The programs for A045207, there is no canonical definition to state claims against.
-/

/-! ## A045207.P4481400730249746988

`∩[A031470(n+1), A043349(n+1)]`
-/

namespace A045207.P4481400730249746988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045207.P4481400730249746988

/-! ## A045207.P5307084231196115955

`∩[A023722(n+1), A031470(n+1)]`
-/

namespace A045207.P5307084231196115955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045207.P5307084231196115955

/-! ## A045207.P449051516495982860

`∩[A023722(n+1), A023738(n+1)]`
-/

namespace A045207.P449051516495982860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045207.P449051516495982860

/-! ## A045207.P8687660043001745820

`∩[A023738(n+1), A031470(n+1)]`
-/

namespace A045207.P8687660043001745820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045207.P8687660043001745820

/-! ## A045207.P12355216699402131244

`∩[A023738(n+1), A043349(n+1)]`
-/

namespace A045207.P12355216699402131244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045207.P12355216699402131244

/-!
# A045208: Numbers whose base-5 representation contains exactly one 0 and two 4's.

The programs for A045208, there is no canonical definition to state claims against.
-/

/-! ## A045208.P585452536700892099

`∩[A023739(n+1), A031474(n+1)]`
-/

namespace A045208.P585452536700892099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045208.P585452536700892099

/-! ## A045208.P17423794795864191668

`∩[A023722(n+1), A023739(n+1)]`
-/

namespace A045208.P17423794795864191668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045208.P17423794795864191668

/-! ## A045208.P11909312298998247647

`∩[A023722(n+1), A031474(n+1)]`
-/

namespace A045208.P11909312298998247647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045208.P11909312298998247647

/-! ## A045208.P11085086618270093705

`∩[A023739(n+1), A043349(n+1)]`
-/

namespace A045208.P11085086618270093705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045208.P11085086618270093705

/-! ## A045208.P12450984959838017986

`∩[A031474(n+1), A043349(n+1)]`
-/

namespace A045208.P12450984959838017986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045208.P12450984959838017986

/-!
# A045209: Numbers whose base-5 representation contains exactly one 0 and three 4's.

The programs for A045209, there is no canonical definition to state claims against.
-/

/-! ## A045209.P6506315027052747143

`∩[A023740(n+1), A031475(n+1)]`
-/

namespace A045209.P6506315027052747143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045209.P6506315027052747143

/-! ## A045209.P5493970393801364588

`∩[A023722(n+1), A023740(n+1)]`
-/

namespace A045209.P5493970393801364588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045209.P5493970393801364588

/-! ## A045209.P8070217477601738562

`A023740(A324116(A031215(n+1)²))`
-/

namespace A045209.P8070217477601738562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (A324116 (A031215 (n + 1) ^ 2).toNat).toNat

end

end A045209.P8070217477601738562

/-! ## A045209.P2323763332122843673

`A045295(3*n+4)%A045281(A045306(3*n+4))`
-/

namespace A045209.P2323763332122843673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045295 (3 * n + 4)) (A045281 (A045306 (3 * n + 4)).toNat)

end

end A045209.P2323763332122843673

/-!
# A045210: Numbers whose base-5 representation contains exactly two 0's and no 4's.

The programs for A045210, there is no canonical definition to state claims against.
-/

/-! ## A045210.P7949120227301418726

`∩[A023723(n+1), A031472(n+1)]`
-/

namespace A045210.P7949120227301418726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045210.P7949120227301418726

/-! ## A045210.P11920032875835046864

`A037459(A023707(n+1))`
-/

namespace A045210.P11920032875835046864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023707 (n + 1)).toNat

end

end A045210.P11920032875835046864

/-! ## A045210.P8884760643415718319

`A020654(A023707(n+1)+1)`
-/

namespace A045210.P8884760643415718319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023707 (n + 1) + 1).toNat

end

end A045210.P8884760643415718319

/-! ## A045210.P17669080856615085572

`∩[A020654(n+1), A023723(n+1)]`
-/

namespace A045210.P17669080856615085572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045210.P17669080856615085572

/-! ## A045210.P84463323467424478

`∩[A023723(n+1), A037459(n+1)]`
-/

namespace A045210.P84463323467424478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045210.P84463323467424478

/-! ## A045210.P8931130777801441263

`A020654(eq[A078832(n+1), A160380(n)]+1)`
-/

namespace A045210.P8931130777801441263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A045210.P8931130777801441263

/-!
# A045211: Numbers whose base-5 representation contains exactly two 0's and one 4.

The programs for A045211, the canonical program `A045211.P7222316058856117847` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045211 has offset 1).

The definition of A045211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045211.P4442151153112966237

`∩[A023723(n+1), A031471(n+1)]`
-/

namespace A045211.P4442151153112966237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045211.P4442151153112966237

namespace A045211

/-- `∩[A023723(n+1), A031471(n+1)]` -/
def P4442151153112966237.Spec : Prop :=
  ∀ n, (P4442151153112966237.a n : ℤ) = A045211 (n + 1)

end A045211

/-! ## A045211.P7222316058856117847

`∩[A023723(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045211

/-- `∩[A023723(n+1), A023738(n+1)]` -/
def P7222316058856117847.Spec : Prop :=
  ∀ n, (P7222316058856117847.a n : ℤ) = A045211 (n + 1)

theorem P7222316058856117847.correct : P7222316058856117847.Spec := by
  intro n
  simp only [A045211, Nat.add_sub_cancel]

end A045211

/-! ## A045211.P491504550195452561

`∩[A023738(n+1), A031471(n+1)]`
-/

namespace A045211.P491504550195452561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045211.P491504550195452561

namespace A045211

/-- `∩[A023738(n+1), A031471(n+1)]` -/
def P491504550195452561.Spec : Prop :=
  ∀ n, (P491504550195452561.a n : ℤ) = A045211 (n + 1)

end A045211

/-! ## A045211.P522388950380732490

`A023723(∏{e}[Δ[A052950(2*(n+1))], #+1])`
-/

namespace A045211.P522388950380732490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A045211.P522388950380732490

namespace A045211

/-- `A023723(∏{e}[Δ[A052950(2*(n+1))], #+1])` -/
def P522388950380732490.Spec : Prop :=
  ∀ n, P522388950380732490.a n = A045211 (n + 1)

end A045211

/-!
# A045212: Numbers whose base-5 representation contains exactly two 0's and two 4's.

The programs for A045212, the canonical program `A045212.P3245334097446540218` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045212 has offset 1).

The definition of A045212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045212.P7613466220111967120

`∩[A023723(n+1), A039286(n+1)]`
-/

namespace A045212.P7613466220111967120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P7613466220111967120

namespace A045212

/-- `∩[A023723(n+1), A039286(n+1)]` -/
def P7613466220111967120.Spec : Prop :=
  ∀ n, (P7613466220111967120.a n : ℤ) = A045212 (n + 1)

end A045212

/-! ## A045212.P3245334097446540218

`∩[A023723(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045212

/-- `∩[A023723(n+1), A023739(n+1)]` -/
def P3245334097446540218.Spec : Prop :=
  ∀ n, (P3245334097446540218.a n : ℤ) = A045212 (n + 1)

theorem P3245334097446540218.correct : P3245334097446540218.Spec := by
  intro n
  simp only [A045212, Nat.add_sub_cancel]

end A045212

/-! ## A045212.P2902059039181062792

`∩[A023739(n+1), A039286(n+1)]`
-/

namespace A045212.P2902059039181062792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P2902059039181062792

namespace A045212

/-- `∩[A023739(n+1), A039286(n+1)]` -/
def P2902059039181062792.Spec : Prop :=
  ∀ n, (P2902059039181062792.a n : ℤ) = A045212 (n + 1)

end A045212

/-! ## A045212.P408225272556803719

`∩[A023723(n+1), A031470(n+1)]`
-/

namespace A045212.P408225272556803719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P408225272556803719

namespace A045212

/-- `∩[A023723(n+1), A031470(n+1)]` -/
def P408225272556803719.Spec : Prop :=
  ∀ n, (P408225272556803719.a n : ℤ) = A045212 (n + 1)

end A045212

/-! ## A045212.P11726423657647970945

`∩[A023739(n+1), A031470(n+1)]`
-/

namespace A045212.P11726423657647970945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045212.P11726423657647970945

namespace A045212

/-- `∩[A023739(n+1), A031470(n+1)]` -/
def P11726423657647970945.Spec : Prop :=
  ∀ n, (P11726423657647970945.a n : ℤ) = A045212 (n + 1)

end A045212

/-!
# A045213: Numbers whose base-5 representation contains exactly two 0's and three 4's.

The programs for A045213, there is no canonical definition to state claims against.
-/

/-! ## A045213.P3677312079072733676

`∩[A023723(n+1), A023740(n+1)]`
-/

namespace A045213.P3677312079072733676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045213.P3677312079072733676

/-! ## A045213.P2019392172581083731

`A030127(A045183(n+1))`
-/

namespace A045213.P2019392172581083731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A045183 (n + 1)).toNat

end

end A045213.P2019392172581083731

/-!
# A045214: Numbers whose base-5 representation contains exactly three 0's and no 4's.

The programs for A045214, there is no canonical definition to state claims against.
-/

/-! ## A045214.P4948650991464294034

`∩[A023724(n+1), A031473(n+1)]`
-/

namespace A045214.P4948650991464294034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045214.P4948650991464294034

/-! ## A045214.P4219173742425636583

`A037459(A023708(n+1))`
-/

namespace A045214.P4219173742425636583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023708 (n + 1)).toNat

end

end A045214.P4219173742425636583

/-! ## A045214.P17333366534801274562

`A020654(A023708(n+1)+1)`
-/

namespace A045214.P17333366534801274562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023708 (n + 1) + 1).toNat

end

end A045214.P17333366534801274562

/-! ## A045214.P14354561908718396573

`A020655(A023708(n+1)+1)-1`
-/

namespace A045214.P14354561908718396573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A023708 (n + 1) + 1).toNat - 1

end

end A045214.P14354561908718396573

/-!
# A045215: Numbers whose base-5 representation contains exactly three 0's and one 4.

The programs for A045215, there is no canonical definition to state claims against.
-/

/-! ## A045215.P9451443326711837283

`∩[A023724(n+1), A031472(n+1)]`
-/

namespace A045215.P9451443326711837283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045215.P9451443326711837283

/-! ## A045215.P8244966428589708043

`∩[A023724(n+1), A023738(n+1)]`
-/

namespace A045215.P8244966428589708043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045215.P8244966428589708043

/-! ## A045215.P829030157304655596

`A023724(4*A032555(n+1))`
-/

namespace A045215.P829030157304655596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (4 * A032555 (n + 1)).toNat

end

end A045215.P829030157304655596

/-! ## A045215.P13687071173532864260

`A023724(4*A032559(n+1))`
-/

namespace A045215.P13687071173532864260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (4 * A032559 (n + 1)).toNat

end

end A045215.P13687071173532864260

/-! ## A045215.P16388659887634854723

`A045199(3*(n+1))%A045171(A000244(n))`
-/

namespace A045215.P16388659887634854723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045199 (3 * (n + 1))) (A045171 (A000244 n).toNat)

end

end A045215.P16388659887634854723

/-!
# A045216: Numbers whose base-5 representation contains exactly three 0's and two 4's.

The programs for A045216, there is no canonical definition to state claims against.
-/

/-! ## A045216.P5928951110579788723

`∩[A023724(n+1), A023739(n+1)]`
-/

namespace A045216.P5928951110579788723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045216.P5928951110579788723

/-!
# A045217: Numbers whose base-5 representation contains exactly three 0's and three 4's.

The programs for A045217, there is no canonical definition to state claims against.
-/

/-! ## A045217.P10924640807777548142

`∩[A023724(n+1), A023740(n+1)]`
-/

namespace A045217.P10924640807777548142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045217.P10924640807777548142

/-! ## A045217.P8651851659865321288

`A003156(A045187(n+1))`
-/

namespace A045217.P8651851659865321288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (A045187 (n + 1)).toNat

end

end A045217.P8651851659865321288

/-! ## A045217.P4957070638026519179

`A008574(A045172(n+1))`
-/

namespace A045217.P4957070638026519179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A045172 (n + 1)).toNat

end

end A045217.P4957070638026519179

/-! ## A045217.P5524176733632113054

`A004275(A045187(n+1)+1)`
-/

namespace A045217.P5524176733632113054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A045187 (n + 1) + 1).toNat

end

end A045217.P5524176733632113054

/-! ## A045217.P11838520020696293603

`A160411(A045187(n+1)+1)`
-/

namespace A045217.P11838520020696293603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160411 (A045187 (n + 1) + 1).toNat

end

end A045217.P11838520020696293603

/-!
# A045218: Numbers whose base-5 representation contains no 1's and exactly one 2.

The programs for A045218, there is no canonical definition to state claims against.
-/

/-! ## A045218.P3639155200904335489

`A023725(A023710(n+1)+1)`
-/

namespace A045218.P3639155200904335489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023710 (n + 1) + 1).toNat

end

end A045218.P3639155200904335489

/-! ## A045218.P9721770556641955952

`∩[A023725(n+1), A023730(n+1)]`
-/

namespace A045218.P9721770556641955952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045218.P9721770556641955952

/-! ## A045218.P17538632001271869363

`eq[A033148(n+1), A079714(A194459(n))]`
-/

namespace A045218.P17538632001271869363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045218.P17538632001271869363

/-!
# A045219: Numbers whose base-5 representation contains no 1's and exactly two 2's.

The programs for A045219, there is no canonical definition to state claims against.
-/

/-! ## A045219.P15129311999161703901

`A023725(A023711(n+1)+1)`
-/

namespace A045219.P15129311999161703901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023711 (n + 1) + 1).toNat

end

end A045219.P15129311999161703901

/-! ## A045219.P10528876028325905054

`∩[A023725(n+1), A023731(n+1)]`
-/

namespace A045219.P10528876028325905054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045219.P10528876028325905054

/-!
# A045220: Numbers whose base-5 representation contains no 1's and exactly three 2's.

The programs for A045220, there is no canonical definition to state claims against.
-/

/-! ## A045220.P6992101560224544860

`A023725(A023712(n+1)+1)`
-/

namespace A045220.P6992101560224544860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023712 (n + 1) + 1).toNat

end

end A045220.P6992101560224544860

/-! ## A045220.P9492100586705254474

`∩[A023725(n+1), A023732(n+1)]`
-/

namespace A045220.P9492100586705254474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045220.P9492100586705254474

/-! ## A045220.P13224148200584959514

`A023732(lt[A110310(n), A113122(n+1)])`
-/

namespace A045220.P13224148200584959514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045220.P13224148200584959514

/-!
# A045221: Numbers whose base-5 representation contains exactly one 1 and no 2's.

The programs for A045221, there is no canonical definition to state claims against.
-/

/-! ## A045221.P1519379853686639944

`A023729(A023710(n+1)+1)`
-/

namespace A045221.P1519379853686639944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023710 (n + 1) + 1).toNat

end

end A045221.P1519379853686639944

/-! ## A045221.P7863435718003656570

`∩[A023726(n+1), A023729(n+1)]`
-/

namespace A045221.P7863435718003656570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045221.P7863435718003656570

/-! ## A045221.P17745129834036207810

`eq[2, A000172(n)%5]`
-/

namespace A045221.P17745129834036207810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000172 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045221.P17745129834036207810

/-!
# A045222: Numbers whose base-5 representation contains exactly one 1 and one 2.

The programs for A045222, the canonical program `A045222.P4405246567291443244` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045222 has offset 1).

The definition of A045222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045222.P7442187661438526702

`∩[A023726(n+1), A039010(n+1)]`
-/

namespace A045222.P7442187661438526702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P7442187661438526702

namespace A045222

/-- `∩[A023726(n+1), A039010(n+1)]` -/
def P7442187661438526702.Spec : Prop :=
  ∀ n, (P7442187661438526702.a n : ℤ) = A045222 (n + 1)

end A045222

/-! ## A045222.P12310748937562419699

`∩[A023726(n+1), A039287(n+1)]`
-/

namespace A045222.P12310748937562419699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P12310748937562419699

namespace A045222

/-- `∩[A023726(n+1), A039287(n+1)]` -/
def P12310748937562419699.Spec : Prop :=
  ∀ n, (P12310748937562419699.a n : ℤ) = A045222 (n + 1)

end A045222

/-! ## A045222.P4405246567291443244

`∩[A023726(n+1), A023730(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045222

/-- `∩[A023726(n+1), A023730(n+1)]` -/
def P4405246567291443244.Spec : Prop :=
  ∀ n, (P4405246567291443244.a n : ℤ) = A045222 (n + 1)

theorem P4405246567291443244.correct : P4405246567291443244.Spec := by
  intro n
  simp only [A045222, Nat.add_sub_cancel]

end A045222

/-! ## A045222.P18006514670812392210

`∩[A023730(n+1), A039010(n+1)]`
-/

namespace A045222.P18006514670812392210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P18006514670812392210

namespace A045222

/-- `∩[A023730(n+1), A039010(n+1)]` -/
def P18006514670812392210.Spec : Prop :=
  ∀ n, (P18006514670812392210.a n : ℤ) = A045222 (n + 1)

end A045222

/-! ## A045222.P11434105905632056144

`∩[A023730(n+1), A039287(n+1)]`
-/

namespace A045222.P11434105905632056144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045222.P11434105905632056144

namespace A045222

/-- `∩[A023730(n+1), A039287(n+1)]` -/
def P11434105905632056144.Spec : Prop :=
  ∀ n, (P11434105905632056144.a n : ℤ) = A045222 (n + 1)

end A045222

/-!
# A045223: Numbers whose base-5 representation contains exactly one 1 and two 2's.

The programs for A045223, the canonical program `A045223.P8017231945570195036` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045223 has offset 1).

The definition of A045223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045223.P8017231945570195036

`∩[A023726(n+1), A023731(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045223

/-- `∩[A023726(n+1), A023731(n+1)]` -/
def P8017231945570195036.Spec : Prop :=
  ∀ n, (P8017231945570195036.a n : ℤ) = A045223 (n + 1)

theorem P8017231945570195036.correct : P8017231945570195036.Spec := by
  intro n
  simp only [A045223, Nat.add_sub_cancel]

end A045223

/-! ## A045223.P10264954898738082746

`eq[2, A170963(A194459(n))]`
-/

namespace A045223.P10264954898738082746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170963 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045223.P10264954898738082746

namespace A045223

/-- `eq[2, A170963(A194459(n))]` -/
def P10264954898738082746.Spec : Prop :=
  ∀ n, (P10264954898738082746.a n : ℤ) = A045223 (n + 1)

end A045223

/-!
# A045224: Numbers whose base-5 representation contains exactly one 1 and three 2's.

The programs for A045224, there is no canonical definition to state claims against.
-/

/-! ## A045224.P17287630788985111681

`∩[A023726(n+1), A023732(n+1)]`
-/

namespace A045224.P17287630788985111681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045224.P17287630788985111681

/-!
# A045225: Numbers whose base-5 representation contains exactly two 1's and no 2's.

The programs for A045225, there is no canonical definition to state claims against.
-/

/-! ## A045225.P14026004535971654440

`A023729(A023711(n+1)+1)`
-/

namespace A045225.P14026004535971654440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023711 (n + 1) + 1).toNat

end

end A045225.P14026004535971654440

/-! ## A045225.P12992481600773017717

`∩[A023727(n+1), A023729(n+1)]`
-/

namespace A045225.P12992481600773017717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045225.P12992481600773017717

/-!
# A045226: Numbers whose base-5 representation contains exactly two 1's and one 2.

The programs for A045226, there is no canonical definition to state claims against.
-/

/-! ## A045226.P1425181658752144994

`∩[A023727(n+1), A023730(n+1)]`
-/

namespace A045226.P1425181658752144994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045226.P1425181658752144994

/-! ## A045226.P11442352298461020702

`eq[A058321(A008578(n+1)), A319653(n)]`
-/

namespace A045226.P11442352298461020702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045226.P11442352298461020702

/-!
# A045227: Numbers whose base-5 representation contains exactly two 1's and two 2's.

The programs for A045227, there is no canonical definition to state claims against.
-/

/-! ## A045227.P9589758288426467419

`∩[A023731(n+1), A039010(n+1)]`
-/

namespace A045227.P9589758288426467419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045227.P9589758288426467419

/-! ## A045227.P11053042524687108601

`∩[A023731(n+1), A039287(n+1)]`
-/

namespace A045227.P11053042524687108601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045227.P11053042524687108601

/-! ## A045227.P11480393438751242200

`∩[A023727(n+1), A023731(n+1)]`
-/

namespace A045227.P11480393438751242200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045227.P11480393438751242200

/-! ## A045227.P1128413956678282496

`∩[A023727(n+1), A039010(n+1)]`
-/

namespace A045227.P1128413956678282496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045227.P1128413956678282496

/-! ## A045227.P2206958622507829402

`∩[A023727(n+1), A039287(n+1)]`
-/

namespace A045227.P2206958622507829402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045227.P2206958622507829402

/-!
# A045228: Numbers whose base-5 representation contains exactly two 1's and three 2's.

The programs for A045228, there is no canonical definition to state claims against.
-/

/-! ## A045228.P16348611832248675816

`∩[A023727(n+1), A023732(n+1)]`
-/

namespace A045228.P16348611832248675816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045228.P16348611832248675816

/-! ## A045228.P4224872576665219423

`A348354(A045303(n+1))`
-/

namespace A045228.P4224872576665219423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348354 (A045303 (n + 1)).toNat

end

end A045228.P4224872576665219423

/-! ## A045228.P2231861090007021364

`A112689(3*A045288(n+1))`
-/

namespace A045228.P2231861090007021364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (3 * A045288 (n + 1)).toNat

end

end A045228.P2231861090007021364

/-! ## A045228.P8296575397188153765

`A280497(lcm(2, A045288(n+1)))`
-/

namespace A045228.P8296575397188153765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (Int.lcm 2 (A045288 (n + 1)))

end

end A045228.P8296575397188153765

/-! ## A045228.P14387737881072122722

`A280497(2*A045288(n+1))/2`
-/

namespace A045228.P14387737881072122722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280497 (2 * A045288 (n + 1)).toNat : ℚ) / 2

end

end A045228.P14387737881072122722

/-!
# A045229: Numbers whose base-5 representation contains exactly three 1's and no 2's.

The programs for A045229, there is no canonical definition to state claims against.
-/

/-! ## A045229.P11127823972472228111

`A023729(A023712(n+1)+1)`
-/

namespace A045229.P11127823972472228111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023712 (n + 1) + 1).toNat

end

end A045229.P11127823972472228111

/-! ## A045229.P17634983290430189724

`∩[A023728(n+1), A023729(n+1)]`
-/

namespace A045229.P17634983290430189724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045229.P17634983290430189724

/-! ## A045229.P13707206176405961883

`lt[2, A193238(A014263(n+1))-or(2, n)+n]`
-/

namespace A045229.P13707206176405961883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A014263 (n + 1)).toNat - (Nat.lor 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A045229.P13707206176405961883

/-! ## A045229.P10451368256380194195

`∩[A023728(n+1), A223133(n)]`
-/

namespace A045229.P10451368256380194195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045229.P10451368256380194195

/-!
# A045230: Numbers whose base-5 representation contains exactly three 1's and one 2.

The programs for A045230, there is no canonical definition to state claims against.
-/

/-! ## A045230.P16293517667719694296

`∩[A023728(n+1), A023730(n+1)]`
-/

namespace A045230.P16293517667719694296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045230.P16293517667719694296

/-!
# A045231: Numbers whose base-5 representation contains exactly three 1's and two 2's.

The programs for A045231, there is no canonical definition to state claims against.
-/

/-! ## A045231.P13173114422696333783

`∩[A023728(n+1), A023731(n+1)]`
-/

namespace A045231.P13173114422696333783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045231.P13173114422696333783

/-! ## A045231.P11878210478231948800

`A348354(A045306(n+1))`
-/

namespace A045231.P11878210478231948800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348354 (A045306 (n + 1)).toNat

end

end A045231.P11878210478231948800

/-! ## A045231.P2094785211196766499

`A008615(3*A045291(n+1))`
-/

namespace A045231.P2094785211196766499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A045291 (n + 1)).toNat

end

end A045231.P2094785211196766499

/-! ## A045231.P9931805290304750455

`A054576(3*A045291(n+1))`
-/

namespace A045231.P9931805290304750455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (3 * A045291 (n + 1)).toNat

end

end A045231.P9931805290304750455

/-! ## A045231.P5126583294013557658

`A111701(3*A045291(n+1))`
-/

namespace A045231.P5126583294013557658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (3 * A045291 (n + 1)).toNat

end

end A045231.P5126583294013557658

/-!
# A045232: Numbers whose base-5 representation contains exactly three 1's and three 2's.

The programs for A045232, there is no canonical definition to state claims against.
-/

/-! ## A045232.P15957132276744050969

`∩[A023728(n+1), A023732(n+1)]`
-/

namespace A045232.P15957132276744050969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045232.P15957132276744050969

/-! ## A045232.P7984166597908224098

`A038572(A045292(n+1))`
-/

namespace A045232.P7984166597908224098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A045292 (n + 1)).toNat

end

end A045232.P7984166597908224098

/-! ## A045232.P12999903273850468481

`A175126(lcm(2, A045292(n+1)))`
-/

namespace A045232.P12999903273850468481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A045292 (n + 1)))

end

end A045232.P12999903273850468481

/-! ## A045232.P12243648797305114945

`A175126(or(2, A045292(n+1)))`
-/

namespace A045232.P12243648797305114945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lor 2 (A045292 (n + 1))).toNat

end

end A045232.P12243648797305114945

/-! ## A045232.P18093822695507778945

`A322982(or(2, A045292(n+1)))`
-/

namespace A045232.P18093822695507778945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (Int.lor 2 (A045292 (n + 1))).toNat

end

end A045232.P18093822695507778945

/-!
# A045233: Numbers whose base-5 representation contains no 1's and exactly one 3.

The programs for A045233, there is no canonical definition to state claims against.
-/

/-! ## A045233.P1164152397975742090

`A023725(A023714(n+1)+1)`
-/

namespace A045233.P1164152397975742090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023714 (n + 1) + 1).toNat

end

end A045233.P1164152397975742090

/-! ## A045233.P9967127296178031419

`∩[A023725(n+1), A023734(n+1)]`
-/

namespace A045233.P9967127296178031419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045233.P9967127296178031419

/-! ## A045233.P5525822429375276164

`eq[A000034(n), A007814(A194459(n))]`
-/

namespace A045233.P5525822429375276164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P5525822429375276164

/-! ## A045233.P11920845488340764139

`eq[A000035(n), A122855(A194459(n))]`
-/

namespace A045233.P11920845488340764139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P11920845488340764139

/-! ## A045233.P6399932473345174586

`eq[A007814(A194459(n)), A141310(n)]`
-/

namespace A045233.P6399932473345174586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P6399932473345174586

/-! ## A045233.P121747518314462944

`eq[A001511(A194459(n))+1, A010685(n)]`
-/

namespace A045233.P121747518314462944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P121747518314462944

/-! ## A045233.P15304781874151711258

`eq[A007814(A194459(n)), A319702(n+1)]`
-/

namespace A045233.P15304781874151711258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P15304781874151711258

/-! ## A045233.P13868779299634033309

`eq[A007814(A194459(n)), A133265(n+1)]`
-/

namespace A045233.P13868779299634033309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P13868779299634033309

/-! ## A045233.P18123254162561596413

`eq[A001511(2*A194459(n)), A010685(n)]`
-/

namespace A045233.P18123254162561596413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045233.P18123254162561596413

/-! ## A045233.P12604976332006266484

`eq[2, A007814(A194459(n)*A326810(n))]`
-/

namespace A045233.P12604976332006266484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n * A326810 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045233.P12604976332006266484

/-!
# A045234: Numbers whose base-5 representation contains no 1's and exactly two 3's.

The programs for A045234, there is no canonical definition to state claims against.
-/

/-! ## A045234.P4368473513655247151

`A023725(A023715(n+1)+1)`
-/

namespace A045234.P4368473513655247151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023715 (n + 1) + 1).toNat

end

end A045234.P4368473513655247151

/-! ## A045234.P1135085000120338057

`∩[A023725(n+1), A023735(n+1)]`
-/

namespace A045234.P1135085000120338057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045234.P1135085000120338057

/-! ## A045234.P3383964608715964110

`∩[A023735(n+1), A096604(n+1)]`
-/

namespace A045234.P3383964608715964110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045234.P3383964608715964110

/-! ## A045234.P15398086301765216783

`∩[A023735(n+1), A106577(n+1)]`
-/

namespace A045234.P15398086301765216783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045234.P15398086301765216783

/-! ## A045234.P3059946945644637050

`∩[A023735(n+1), A111305(n+1)]`
-/

namespace A045234.P3059946945644637050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045234.P3059946945644637050

/-!
# A045235: Numbers whose base-5 representation contains no 1's and exactly three 3's.

The programs for A045235, there is no canonical definition to state claims against.
-/

/-! ## A045235.P3591234144796077946

`A023725(A023716(n+1)+1)`
-/

namespace A045235.P3591234144796077946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023716 (n + 1) + 1).toNat

end

end A045235.P3591234144796077946

/-! ## A045235.P1883874004479120993

`∩[A023725(n+1), A023736(n+1)]`
-/

namespace A045235.P1883874004479120993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045235.P1883874004479120993

/-! ## A045235.P6048553890618139278

`∩[A023736(n+1), A051953(A053194(n+1))]`
-/

namespace A045235.P6048553890618139278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A053194 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045235.P6048553890618139278

/-! ## A045235.P11726376709277301400

`A023736(A004526(3*(n+1))%A171928(n+1))`
-/

namespace A045235.P11726376709277301400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (Int.tmod (A004526 (3 * (n + 1))) (A171928 (n + 1))).toNat

end

end A045235.P11726376709277301400

/-!
# A045236: Numbers whose base-5 representation contains exactly one 1 and no 3's.

The programs for A045236, the canonical program `A045236.P6038733648539689362` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045236 has offset 1).

The definition of A045236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045236.P1855381319942529270

`A023733(A023710(n+1)+1)`
-/

namespace A045236.P1855381319942529270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023710 (n + 1) + 1).toNat

end

end A045236.P1855381319942529270

namespace A045236

/-- `A023733(A023710(n+1)+1)` -/
def P1855381319942529270.Spec : Prop :=
  ∀ n, P1855381319942529270.a n = A045236 (n + 1)

end A045236

/-! ## A045236.P6038733648539689362

`∩[A023726(n+1), A023733(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045236

/-- `∩[A023726(n+1), A023733(n+1)]` -/
def P6038733648539689362.Spec : Prop :=
  ∀ n, (P6038733648539689362.a n : ℤ) = A045236 (n + 1)

theorem P6038733648539689362.correct : P6038733648539689362.Spec := by
  intro n
  simp only [A045236, Nat.add_sub_cancel]

end A045236

/-! ## A045236.P7784057746507574072

`eq[1, val(A194459(n), 2)]`
-/

namespace A045236.P7784057746507574072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194459 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P7784057746507574072

namespace A045236

/-- `eq[1, val(A194459(n), 2)]` -/
def P7784057746507574072.Spec : Prop :=
  ∀ n, (P7784057746507574072.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P6145435591871701585

`eq[0, A094572(A194459(n))]`
-/

namespace A045236.P6145435591871701585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045236.P6145435591871701585

namespace A045236

/-- `eq[0, A094572(A194459(n))]` -/
def P6145435591871701585.Spec : Prop :=
  ∀ n, (P6145435591871701585.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P3264426272876272610

`A000027(eq[1, A007814(A194459(n))])`
-/

namespace A045236.P3264426272876272610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045236.P3264426272876272610

namespace A045236

/-- `A000027(eq[1, A007814(A194459(n))])` -/
def P3264426272876272610.Spec : Prop :=
  ∀ n, P3264426272876272610.a n = A045236 (n + 1)

end A045236

/-! ## A045236.P96854582055048465

`eq[A000034(n), A010141(A194459(n))]`
-/

namespace A045236.P96854582055048465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P96854582055048465

namespace A045236

/-- `eq[A000034(n), A010141(A194459(n))]` -/
def P96854582055048465.Spec : Prop :=
  ∀ n, (P96854582055048465.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P409274452276225246

`eq[A000035(n), A014710(A194459(n))]`
-/

namespace A045236.P409274452276225246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P409274452276225246

namespace A045236

/-- `eq[A000035(n), A014710(A194459(n))]` -/
def P409274452276225246.Spec : Prop :=
  ∀ n, (P409274452276225246.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P8070878298278106777

`eq[A010166(A194459(n)), A040024(n)]`
-/

namespace A045236.P8070878298278106777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P8070878298278106777

namespace A045236

/-- `eq[A010166(A194459(n)), A040024(n)]` -/
def P8070878298278106777.Spec : Prop :=
  ∀ n, (P8070878298278106777.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P14012913216971759255

`eq[A021913(A194459(n)), A040001(n)]`
-/

namespace A045236.P14012913216971759255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P14012913216971759255

namespace A045236

/-- `eq[A021913(A194459(n)), A040001(n)]` -/
def P14012913216971759255.Spec : Prop :=
  ∀ n, (P14012913216971759255.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P7406858728052827098

`eq[A000038(n), A140728(A194459(n))]`
-/

namespace A045236.P7406858728052827098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P7406858728052827098

namespace A045236

/-- `eq[A000038(n), A140728(A194459(n))]` -/
def P7406858728052827098.Spec : Prop :=
  ∀ n, (P7406858728052827098.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P8219178706738066175

`eq[A061393(n)², A061393(A194459(n))]`
-/

namespace A045236.P8219178706738066175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P8219178706738066175

namespace A045236

/-- `eq[A061393(n)², A061393(A194459(n))]` -/
def P8219178706738066175.Spec : Prop :=
  ∀ n, (P8219178706738066175.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P5816421734658180319

`eq[A010166(n)+1, A010166(A194459(n))]`
-/

namespace A045236.P5816421734658180319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010166 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P5816421734658180319

namespace A045236

/-- `eq[A010166(n)+1, A010166(A194459(n))]` -/
def P5816421734658180319.Spec : Prop :=
  ∀ n, (P5816421734658180319.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P12027617789142083321

`eq[1, A021913(A194459(n)+A021913(n))]`
-/

namespace A045236.P12027617789142083321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A194459 n + A021913 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045236.P12027617789142083321

namespace A045236

/-- `eq[1, A021913(A194459(n)+A021913(n))]` -/
def P12027617789142083321.Spec : Prop :=
  ∀ n, (P12027617789142083321.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P13199600009230894828

`eq[A001511(A194459(n))+2, A010685(n)]`
-/

namespace A045236.P13199600009230894828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P13199600009230894828

namespace A045236

/-- `eq[A001511(A194459(n))+2, A010685(n)]` -/
def P13199600009230894828.Spec : Prop :=
  ∀ n, (P13199600009230894828.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P8401109965945384928

`eq[1, A007814(A194459(n))]%A002061(n+2)`
-/

namespace A045236.P8401109965945384928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A002061 (n + 2))

end

end A045236.P8401109965945384928

namespace A045236

/-- `eq[1, A007814(A194459(n))]%A002061(n+2)` -/
def P8401109965945384928.Spec : Prop :=
  ∀ n, P8401109965945384928.a n = A045236 (n + 1)

end A045236

/-! ## A045236.P10485551068266008421

`eq[1, A122855(2*A194459(n))]`
-/

namespace A045236.P10485551068266008421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (2 * A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045236.P10485551068266008421

namespace A045236

/-- `eq[1, A122855(2*A194459(n))]` -/
def P10485551068266008421.Spec : Prop :=
  ∀ n, (P10485551068266008421.a n : ℤ) = A045236 (n + 1)

end A045236

/-! ## A045236.P14775562513306931474

`eq[A014963(6*(n+1)), A007814(A194459(n))]`
-/

namespace A045236.P14775562513306931474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045236.P14775562513306931474

namespace A045236

/-- `eq[A014963(6*(n+1)), A007814(A194459(n))]` -/
def P14775562513306931474.Spec : Prop :=
  ∀ n, (P14775562513306931474.a n : ℤ) = A045236 (n + 1)

end A045236

/-!
# A045237: Numbers whose base-5 representation contains exactly one 1 and one 3.

The programs for A045237, the canonical program `A045237.P11851650769541993133` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045237 has offset 1).

The definition of A045237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045237.P11851650769541993133

`∩[A023726(n+1), A039011(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045237

/-- `∩[A023726(n+1), A039011(n+1)]` -/
def P11851650769541993133.Spec : Prop :=
  ∀ n, (P11851650769541993133.a n : ℤ) = A045237 (n + 1)

theorem P11851650769541993133.correct : P11851650769541993133.Spec := by
  intro n
  simp only [A045237, Nat.add_sub_cancel]

end A045237

/-! ## A045237.P8972886976375639355

`∩[A023726(n+1), A039288(n+1)]`
-/

namespace A045237.P8972886976375639355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P8972886976375639355

namespace A045237

/-- `∩[A023726(n+1), A039288(n+1)]` -/
def P8972886976375639355.Spec : Prop :=
  ∀ n, (P8972886976375639355.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P8288165256932347049

`∩[A023726(n+1), A023734(n+1)]`
-/

namespace A045237.P8288165256932347049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P8288165256932347049

namespace A045237

/-- `∩[A023726(n+1), A023734(n+1)]` -/
def P8288165256932347049.Spec : Prop :=
  ∀ n, (P8288165256932347049.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P4241549386132437949

`∩[A023734(n+1), A039011(n+1)]`
-/

namespace A045237.P4241549386132437949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P4241549386132437949

namespace A045237

/-- `∩[A023734(n+1), A039011(n+1)]` -/
def P4241549386132437949.Spec : Prop :=
  ∀ n, (P4241549386132437949.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P18137074696216651356

`∩[A023734(n+1), A039288(n+1)]`
-/

namespace A045237.P18137074696216651356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P18137074696216651356

namespace A045237

/-- `∩[A023734(n+1), A039288(n+1)]` -/
def P18137074696216651356.Spec : Prop :=
  ∀ n, (P18137074696216651356.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P13733454353290953141

`eq[A001511(A194459(n)), A010121(2*n)]`
-/

namespace A045237.P13733454353290953141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045237.P13733454353290953141

namespace A045237

/-- `eq[A001511(A194459(n)), A010121(2*n)]` -/
def P13733454353290953141.Spec : Prop :=
  ∀ n, (P13733454353290953141.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P10129498231423046482

`eq[A040001(n+2)², A001511(A194459(n))]`
-/

namespace A045237.P10129498231423046482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045237.P10129498231423046482

namespace A045237

/-- `eq[A040001(n+2)², A001511(A194459(n))]` -/
def P10129498231423046482.Spec : Prop :=
  ∀ n, (P10129498231423046482.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P3927854190873234927

`eq[A001511(A194459(n)), A010685(n+1)]`
-/

namespace A045237.P3927854190873234927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045237.P3927854190873234927

namespace A045237

/-- `eq[A001511(A194459(n)), A010685(n+1)]` -/
def P3927854190873234927.Spec : Prop :=
  ∀ n, (P3927854190873234927.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P9558655127359350087

`eq[A133265(n)+1, A007814(A194459(n))]`
-/

namespace A045237.P9558655127359350087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045237.P9558655127359350087

namespace A045237

/-- `eq[A133265(n)+1, A007814(A194459(n))]` -/
def P9558655127359350087.Spec : Prop :=
  ∀ n, (P9558655127359350087.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P7147544970399757855

`eq[3/A000034(n), A007814(A194459(n))]`
-/

namespace A045237.P7147544970399757855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A000034 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A045237.P7147544970399757855

namespace A045237

/-- `eq[3/A000034(n), A007814(A194459(n))]` -/
def P7147544970399757855.Spec : Prop :=
  ∀ n, (P7147544970399757855.a n : ℤ) = A045237 (n + 1)

end A045237

/-! ## A045237.P5880138478156863176

`eq[3, A006519(n+1)*A007814(A194459(n))]`
-/

namespace A045237.P5880138478156863176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045237.P5880138478156863176

namespace A045237

/-- `eq[3, A006519(n+1)*A007814(A194459(n))]` -/
def P5880138478156863176.Spec : Prop :=
  ∀ n, (P5880138478156863176.a n : ℤ) = A045237 (n + 1)

end A045237

/-!
# A045238: Numbers whose base-5 representation contains exactly one 1 and two 3's.

The programs for A045238, the canonical program `A045238.P198686045998000565` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045238 has offset 1).

The definition of A045238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045238.P198686045998000565

`∩[A023726(n+1), A023735(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045238

/-- `∩[A023726(n+1), A023735(n+1)]` -/
def P198686045998000565.Spec : Prop :=
  ∀ n, (P198686045998000565.a n : ℤ) = A045238 (n + 1)

theorem P198686045998000565.correct : P198686045998000565.Spec := by
  intro n
  simp only [A045238, Nat.add_sub_cancel]

end A045238

/-! ## A045238.P16107119562505834440

`eq[A070683(A072960(n+1)), A097798(n)]`
-/

namespace A045238.P16107119562505834440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (A072960 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045238.P16107119562505834440

namespace A045238

/-- `eq[A070683(A072960(n+1)), A097798(n)]` -/
def P16107119562505834440.Spec : Prop :=
  ∀ n, (P16107119562505834440.a n : ℤ) = A045238 (n + 1)

end A045238

/-! ## A045238.P17775235812054209549

`eq[A080425(A072960(n+1)), A141310(n)]`
-/

namespace A045238.P17775235812054209549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A072960 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045238.P17775235812054209549

namespace A045238

/-- `eq[A080425(A072960(n+1)), A141310(n)]` -/
def P17775235812054209549.Spec : Prop :=
  ∀ n, (P17775235812054209549.a n : ℤ) = A045238 (n + 1)

end A045238

/-! ## A045238.P3978848852828954956

`eq[A102673(A256305(n)), A322312(n+2)]`
-/

namespace A045238.P3978848852828954956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A256305 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322312 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045238.P3978848852828954956

namespace A045238

/-- `eq[A102673(A256305(n)), A322312(n+2)]` -/
def P3978848852828954956.Spec : Prop :=
  ∀ n, (P3978848852828954956.a n : ℤ) = A045238 (n + 1)

end A045238

/-! ## A045238.P8467721868394235759

`eq[A020639(n+3), A316864(A007091(n))]`
-/

namespace A045238.P8467721868394235759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045238.P8467721868394235759

namespace A045238

/-- `eq[A020639(n+3), A316864(A007091(n))]` -/
def P8467721868394235759.Spec : Prop :=
  ∀ n, (P8467721868394235759.a n : ℤ) = A045238 (n + 1)

end A045238

/-!
# A045239: Numbers whose base-5 representation contains exactly one 1 and three 3's.

The programs for A045239, there is no canonical definition to state claims against.
-/

/-! ## A045239.P8468709545961206674

`∩[A023726(n+1), A023736(n+1)]`
-/

namespace A045239.P8468709545961206674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045239.P8468709545961206674

/-!
# A045240: Numbers whose base-5 representation contains exactly two 1's and no 3's.

The programs for A045240, there is no canonical definition to state claims against.
-/

/-! ## A045240.P6025562250470767376

`A023733(A023711(n+1)+1)`
-/

namespace A045240.P6025562250470767376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023711 (n + 1) + 1).toNat

end

end A045240.P6025562250470767376

/-! ## A045240.P2672373144466744638

`∩[A023727(n+1), A023733(n+1)]`
-/

namespace A045240.P2672373144466744638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045240.P2672373144466744638

/-! ## A045240.P7227880911114619633

`eq[A007814(A194459(n)), A133265(n)]`
-/

namespace A045240.P7227880911114619633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045240.P7227880911114619633

/-! ## A045240.P5685211630989913366

`eq[A006519(A194459(n)), A158515(n)]`
-/

namespace A045240.P5685211630989913366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045240.P5685211630989913366

/-! ## A045240.P8553652211516461543

`eq[A007814(A194459(n))!, A326810(n)]`
-/

namespace A045240.P8553652211516461543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007814 (A194459 n).toNat).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045240.P8553652211516461543

/-! ## A045240.P13167705242938052208

`eq[A007814(A194459(n)), A141310(n+1)]`
-/

namespace A045240.P13167705242938052208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045240.P13167705242938052208

/-! ## A045240.P1060283163211503589

`eq[A007814(A194459(n)), A319702(n+2)]`
-/

namespace A045240.P1060283163211503589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045240.P1060283163211503589

/-! ## A045240.P16909981170824681337

`eq[n+2, A007814(A194459(n))*A008619(n)]`
-/

namespace A045240.P16909981170824681337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat * A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045240.P16909981170824681337

/-!
# A045241: Numbers whose base-5 representation contains exactly two 1's and one 3.

The programs for A045241, there is no canonical definition to state claims against.
-/

/-! ## A045241.P3629256603255260129

`∩[A023727(n+1), A023734(n+1)]`
-/

namespace A045241.P3629256603255260129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045241.P3629256603255260129

/-! ## A045241.P11378002659264624548

`eq[A000034(n)², A007814(A194459(n))]`
-/

namespace A045241.P11378002659264624548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045241.P11378002659264624548

/-! ## A045241.P2088113916908594675

`eq[A141310(n)², A007814(A194459(n))]`
-/

namespace A045241.P2088113916908594675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045241.P2088113916908594675

/-! ## A045241.P14762412491910883434

`eq[A010685(n)+1, A001511(A194459(n))]`
-/

namespace A045241.P14762412491910883434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045241.P14762412491910883434

/-! ## A045241.P17733546458170174957

`eq[A319702(n+1)², A007814(A194459(n))]`
-/

namespace A045241.P17733546458170174957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045241.P17733546458170174957

/-!
# A045242: Numbers whose base-5 representation contains exactly two 1's and two 3's.

The programs for A045242, the canonical program `A045242.P2725133411994737502` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045242 has offset 1).

The definition of A045242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045242.P2725133411994737502

`∩[A023735(n+1), A039011(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045242

/-- `∩[A023735(n+1), A039011(n+1)]` -/
def P2725133411994737502.Spec : Prop :=
  ∀ n, (P2725133411994737502.a n : ℤ) = A045242 (n + 1)

theorem P2725133411994737502.correct : P2725133411994737502.Spec := by
  intro n
  simp only [A045242, Nat.add_sub_cancel]

end A045242

/-! ## A045242.P9014659345753102003

`∩[A023735(n+1), A039288(n+1)]`
-/

namespace A045242.P9014659345753102003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P9014659345753102003

namespace A045242

/-- `∩[A023735(n+1), A039288(n+1)]` -/
def P9014659345753102003.Spec : Prop :=
  ∀ n, (P9014659345753102003.a n : ℤ) = A045242 (n + 1)

end A045242

/-! ## A045242.P11637109301513492877

`∩[A023727(n+1), A023735(n+1)]`
-/

namespace A045242.P11637109301513492877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P11637109301513492877

namespace A045242

/-- `∩[A023727(n+1), A023735(n+1)]` -/
def P11637109301513492877.Spec : Prop :=
  ∀ n, (P11637109301513492877.a n : ℤ) = A045242 (n + 1)

end A045242

/-! ## A045242.P2332199889664945204

`∩[A023727(n+1), A039011(n+1)]`
-/

namespace A045242.P2332199889664945204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P2332199889664945204

namespace A045242

/-- `∩[A023727(n+1), A039011(n+1)]` -/
def P2332199889664945204.Spec : Prop :=
  ∀ n, (P2332199889664945204.a n : ℤ) = A045242 (n + 1)

end A045242

/-! ## A045242.P6794720848830034721

`∩[A023727(n+1), A039288(n+1)]`
-/

namespace A045242.P6794720848830034721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P6794720848830034721

namespace A045242

/-- `∩[A023727(n+1), A039288(n+1)]` -/
def P6794720848830034721.Spec : Prop :=
  ∀ n, (P6794720848830034721.a n : ℤ) = A045242 (n + 1)

end A045242

/-!
# A045243: Numbers whose base-5 representation contains exactly two 1's and three 3's.

The programs for A045243, there is no canonical definition to state claims against.
-/

/-! ## A045243.P4447706502247799960

`∩[A023727(n+1), A023736(n+1)]`
-/

namespace A045243.P4447706502247799960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045243.P4447706502247799960

/-! ## A045243.P7114138808535054361

`A004515(A045303(n+1))%A065256(A045277(n+1))`
-/

namespace A045243.P7114138808535054361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004515 (A045303 (n + 1)).toNat) (A065256 (A045277 (n + 1)).toNat)

end

end A045243.P7114138808535054361

/-!
# A045244: Numbers whose base-5 representation contains exactly three 1's and no 3's.

The programs for A045244, there is no canonical definition to state claims against.
-/

/-! ## A045244.P1246041370345103580

`A023733(A023712(n+1)+1)`
-/

namespace A045244.P1246041370345103580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023712 (n + 1) + 1).toNat

end

end A045244.P1246041370345103580

/-! ## A045244.P18393470339845735683

`∩[A023728(n+1), A023733(n+1)]`
-/

namespace A045244.P18393470339845735683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045244.P18393470339845735683

/-! ## A045244.P17101477892238988146

`eq[A040024(n)², A001511(A194459(n))]`
-/

namespace A045244.P17101477892238988146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045244.P17101477892238988146

/-! ## A045244.P823076794467202569

`eq[A141310(n)+1, A007814(A194459(n))]`
-/

namespace A045244.P823076794467202569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045244.P823076794467202569

/-! ## A045244.P16380222590829806249

`eq[2, A122855(A194459(n*A000035(n)))]`
-/

namespace A045244.P16380222590829806249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (A194459 ((n : ℤ) * A000035 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045244.P16380222590829806249

/-! ## A045244.P13028524923762971674

`eq[A319702(n+1)+1, A007814(A194459(n))]`
-/

namespace A045244.P13028524923762971674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045244.P13028524923762971674

/-!
# A045245: Numbers whose base-5 representation contains exactly three 1's and one 3.

The programs for A045245, there is no canonical definition to state claims against.
-/

/-! ## A045245.P9336191712787705871

`∩[A023728(n+1), A023734(n+1)]`
-/

namespace A045245.P9336191712787705871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045245.P9336191712787705871

/-!
# A045246: Numbers whose base-5 representation contains exactly three 1's and two 3's.

The programs for A045246, there is no canonical definition to state claims against.
-/

/-! ## A045246.P13640770891668353246

`∩[A023728(n+1), A023735(n+1)]`
-/

namespace A045246.P13640770891668353246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045246.P13640770891668353246

/-! ## A045246.P2205978848774536073

`A020655(A045126(n+1)%A339298(n+5))`
-/

namespace A045246.P2205978848774536073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (Int.tmod (A045126 (n + 1)) (A339298 (n + 5))).toNat

end

end A045246.P2205978848774536073

/-! ## A045246.P16484810333593567227

`eq[A016813(A001511(n+1)), A309956(n)]`
-/

namespace A045246.P16484810333593567227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A001511 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045246.P16484810333593567227

/-!
# A045247: Numbers whose base-5 representation contains exactly three 1's and three 3's.

The programs for A045247, there is no canonical definition to state claims against.
-/

/-! ## A045247.P17713645325362290048

`∩[A023728(n+1), A023736(n+1)]`
-/

namespace A045247.P17713645325362290048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045247.P17713645325362290048

/-! ## A045247.P5632928942335729405

`A004515(A045307(n+1))`
-/

namespace A045247.P5632928942335729405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A045307 (n + 1)).toNat

end

end A045247.P5632928942335729405

/-!
# A045248: Numbers whose base-5 representation contains no 1's and exactly one 4.

The programs for A045248, there is no canonical definition to state claims against.
-/

/-! ## A045248.P8990986257262971412

`A023725(A023718(n+1)+1)`
-/

namespace A045248.P8990986257262971412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023718 (n + 1) + 1).toNat

end

end A045248.P8990986257262971412

/-! ## A045248.P13075412841346841913

`∩[A023725(n+1), A023738(n+1)]`
-/

namespace A045248.P13075412841346841913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045248.P13075412841346841913

/-!
# A045249: Numbers whose base-5 representation contains no 1's and exactly two 4's.

The programs for A045249, there is no canonical definition to state claims against.
-/

/-! ## A045249.P16442996329219272881

`A023725(A023719(n+1)+1)`
-/

namespace A045249.P16442996329219272881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023719 (n + 1) + 1).toNat

end

end A045249.P16442996329219272881

/-! ## A045249.P18138497612068363116

`∩[A023725(n+1), A023739(n+1)]`
-/

namespace A045249.P18138497612068363116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045249.P18138497612068363116

/-! ## A045249.P11009237884931731313

`∩[A023739(n+1), A366532(n+1)]`
-/

namespace A045249.P11009237884931731313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045249.P11009237884931731313

/-! ## A045249.P6629376160450234648

`∩[A023739(n+1), A328926(n+1)]`
-/

namespace A045249.P6629376160450234648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045249.P6629376160450234648

/-!
# A045250: Numbers whose base-5 representation contains no 1's and exactly three 4's.

The programs for A045250, there is no canonical definition to state claims against.
-/

/-! ## A045250.P7545949268113888460

`A023725(A023720(n+1)+1)`
-/

namespace A045250.P7545949268113888460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023720 (n + 1) + 1).toNat

end

end A045250.P7545949268113888460

/-! ## A045250.P7592860925387542382

`∩[A023725(n+1), A023740(n+1)]`
-/

namespace A045250.P7592860925387542382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045250.P7592860925387542382

/-! ## A045250.P14758697191892546727

`A023740(A260003(n+1)%∑[A060991(n)])`
-/

namespace A045250.P14758697191892546727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (Int.tmod (A260003 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A045250.P14758697191892546727

/-! ## A045250.P1648499862583868534

`A023740(A260003(n+1)%A095533(n))`
-/

namespace A045250.P1648499862583868534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (Int.tmod (A260003 (n + 1)) (A095533 n)).toNat

end

end A045250.P1648499862583868534

/-! ## A045250.P97925577520716065

`A023740(A260003(n+1))+A000007(A253431(n+1))`
-/

namespace A045250.P97925577520716065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (A260003 (n + 1)).toNat + A000007 (A253431 (n + 1)).toNat

end

end A045250.P97925577520716065

/-!
# A045251: Numbers whose base-5 representation contains exactly one 1 and no 4's.

The programs for A045251, there is no canonical definition to state claims against.
-/

/-! ## A045251.P1031964998098586700

`A037459(A023710(n+1))`
-/

namespace A045251.P1031964998098586700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023710 (n + 1)).toNat

end

end A045251.P1031964998098586700

/-! ## A045251.P1934108079041098419

`A020654(A023710(n+1)+1)`
-/

namespace A045251.P1934108079041098419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023710 (n + 1) + 1).toNat

end

end A045251.P1934108079041098419

/-! ## A045251.P17631525843320738719

`∩[A020654(n+1), A023726(n+1)]`
-/

namespace A045251.P17631525843320738719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045251.P17631525843320738719

/-! ## A045251.P8594958795703647731

`∩[A023726(n+1), A037459(n+1)]`
-/

namespace A045251.P8594958795703647731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045251.P8594958795703647731

/-! ## A045251.P16906877965260749468

`∩[A020655(n+1)-1, A023726(n+1)]`
-/

namespace A045251.P16906877965260749468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045251.P16906877965260749468

/-!
# A045252: Numbers whose base-5 representation contains exactly one 1 and one 4.

The programs for A045252, the canonical program `A045252.P1369454173368973201` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045252 has offset 1).

The definition of A045252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045252.P1971598684392894120

`∩[A023726(n+1), A039012(n+1)]`
-/

namespace A045252.P1971598684392894120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P1971598684392894120

namespace A045252

/-- `∩[A023726(n+1), A039012(n+1)]` -/
def P1971598684392894120.Spec : Prop :=
  ∀ n, (P1971598684392894120.a n : ℤ) = A045252 (n + 1)

end A045252

/-! ## A045252.P12534652605218013215

`∩[A023726(n+1), A039289(n+1)]`
-/

namespace A045252.P12534652605218013215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P12534652605218013215

namespace A045252

/-- `∩[A023726(n+1), A039289(n+1)]` -/
def P12534652605218013215.Spec : Prop :=
  ∀ n, (P12534652605218013215.a n : ℤ) = A045252 (n + 1)

end A045252

/-! ## A045252.P1369454173368973201

`∩[A023726(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045252

/-- `∩[A023726(n+1), A023738(n+1)]` -/
def P1369454173368973201.Spec : Prop :=
  ∀ n, (P1369454173368973201.a n : ℤ) = A045252 (n + 1)

theorem P1369454173368973201.correct : P1369454173368973201.Spec := by
  intro n
  simp only [A045252, Nat.add_sub_cancel]

end A045252

/-! ## A045252.P2205280412060366348

`∩[A023738(n+1), A039012(n+1)]`
-/

namespace A045252.P2205280412060366348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P2205280412060366348

namespace A045252

/-- `∩[A023738(n+1), A039012(n+1)]` -/
def P2205280412060366348.Spec : Prop :=
  ∀ n, (P2205280412060366348.a n : ℤ) = A045252 (n + 1)

end A045252

/-! ## A045252.P14344320657575423088

`∩[A023738(n+1), A039289(n+1)]`
-/

namespace A045252.P14344320657575423088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045252.P14344320657575423088

namespace A045252

/-- `∩[A023738(n+1), A039289(n+1)]` -/
def P14344320657575423088.Spec : Prop :=
  ∀ n, (P14344320657575423088.a n : ℤ) = A045252 (n + 1)

end A045252

/-!
# A045253: Numbers whose base-5 representation contains exactly one 1 and two 4's.

The programs for A045253, the canonical program `A045253.P1746793444030517754` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045253 has offset 1).

The definition of A045253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045253.P1746793444030517754

`∩[A023726(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045253

/-- `∩[A023726(n+1), A023739(n+1)]` -/
def P1746793444030517754.Spec : Prop :=
  ∀ n, (P1746793444030517754.a n : ℤ) = A045253 (n + 1)

theorem P1746793444030517754.correct : P1746793444030517754.Spec := by
  intro n
  simp only [A045253, Nat.add_sub_cancel]

end A045253

/-!
# A045254: Numbers whose base-5 representation contains exactly one 1 and three 4's.

The programs for A045254, there is no canonical definition to state claims against.
-/

/-! ## A045254.P11656842571815084293

`∩[A023726(n+1), A023740(n+1)]`
-/

namespace A045254.P11656842571815084293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045254.P11656842571815084293

/-! ## A045254.P1558960583968283974

`filter[A045295(n+2), A179770(#)]`
-/

namespace A045254.P1558960583968283974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A045254.P1558960583968283974

/-!
# A045255: Numbers whose base-5 representation contains exactly two 1's and no 4's.

The programs for A045255, there is no canonical definition to state claims against.
-/

/-! ## A045255.P15613747868213686109

`A037459(A023711(n+1))`
-/

namespace A045255.P15613747868213686109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023711 (n + 1)).toNat

end

end A045255.P15613747868213686109

/-! ## A045255.P14332372186278405591

`A020654(A023711(n+1)+1)`
-/

namespace A045255.P14332372186278405591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023711 (n + 1) + 1).toNat

end

end A045255.P14332372186278405591

/-! ## A045255.P6698858807170489084

`∩[A020654(n+1), A023727(n+1)]`
-/

namespace A045255.P6698858807170489084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045255.P6698858807170489084

/-! ## A045255.P17008814489833048864

`∩[A023727(n+1), A037459(n+1)]`
-/

namespace A045255.P17008814489833048864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045255.P17008814489833048864

/-! ## A045255.P6111344430590067419

`∩[A023727(n+1), A045506(n)]`
-/

namespace A045255.P6111344430590067419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045255.P6111344430590067419

/-!
# A045256: Numbers whose base-5 representation contains exactly two 1's and one 4.

The programs for A045256, there is no canonical definition to state claims against.
-/

/-! ## A045256.P3994156158956169900

`∩[A023727(n+1), A023738(n+1)]`
-/

namespace A045256.P3994156158956169900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045256.P3994156158956169900

/-! ## A045256.P13868044603391292786

`∩[A045225(n+1), A130751(n+1)]`
-/

namespace A045256.P13868044603391292786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045256.P13868044603391292786

/-!
# A045257: Numbers whose base-5 representation contains exactly two 1's and two 4's.

The programs for A045257, the canonical program `A045257.P11675950162780075674` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045257 has offset 1).

The definition of A045257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045257.P10910087186754385967

`∩[A023739(n+1), A039289(n+1)]`
-/

namespace A045257.P10910087186754385967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045257.P10910087186754385967

namespace A045257

/-- `∩[A023739(n+1), A039289(n+1)]` -/
def P10910087186754385967.Spec : Prop :=
  ∀ n, (P10910087186754385967.a n : ℤ) = A045257 (n + 1)

end A045257

/-! ## A045257.P11675950162780075674

`∩[A023739(n+1), A039012(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A045257

/-- `∩[A023739(n+1), A039012(n+1)]` -/
def P11675950162780075674.Spec : Prop :=
  ∀ n, (P11675950162780075674.a n : ℤ) = A045257 (n + 1)

theorem P11675950162780075674.correct : P11675950162780075674.Spec := by
  intro n
  simp only [A045257, Nat.add_sub_cancel]

end A045257

/-! ## A045257.P1465180031639667736

`∩[A023727(n+1), A023739(n+1)]`
-/

namespace A045257.P1465180031639667736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045257.P1465180031639667736

namespace A045257

/-- `∩[A023727(n+1), A023739(n+1)]` -/
def P1465180031639667736.Spec : Prop :=
  ∀ n, (P1465180031639667736.a n : ℤ) = A045257 (n + 1)

end A045257

/-! ## A045257.P5859208444694094027

`∩[A023727(n+1), A039012(n+1)]`
-/

namespace A045257.P5859208444694094027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045257.P5859208444694094027

namespace A045257

/-- `∩[A023727(n+1), A039012(n+1)]` -/
def P5859208444694094027.Spec : Prop :=
  ∀ n, (P5859208444694094027.a n : ℤ) = A045257 (n + 1)

end A045257

/-! ## A045257.P152292319994339586

`∩[A023727(n+1), A039289(n+1)]`
-/

namespace A045257.P152292319994339586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045257.P152292319994339586

namespace A045257

/-- `∩[A023727(n+1), A039289(n+1)]` -/
def P152292319994339586.Spec : Prop :=
  ∀ n, (P152292319994339586.a n : ℤ) = A045257 (n + 1)

end A045257

/-!
# A045258: Numbers whose base-5 representation contains exactly two 1's and three 4's.

The programs for A045258, there is no canonical definition to state claims against.
-/

/-! ## A045258.P12773146464315127583

`∩[A023727(n+1), A023740(n+1)]`
-/

namespace A045258.P12773146464315127583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045258.P12773146464315127583

/-!
# A045259: Numbers whose base-5 representation contains exactly three 1's and no 4's.

The programs for A045259, there is no canonical definition to state claims against.
-/

/-! ## A045259.P12613056493452347303

`A037459(A023712(n+1))`
-/

namespace A045259.P12613056493452347303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023712 (n + 1)).toNat

end

end A045259.P12613056493452347303

/-! ## A045259.P13057254117840202078

`A020654(A023712(n+1)+1)`
-/

namespace A045259.P13057254117840202078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023712 (n + 1) + 1).toNat

end

end A045259.P13057254117840202078

/-! ## A045259.P5242466477517493625

`∩[A020654(n+1), A023728(n+1)]`
-/

namespace A045259.P5242466477517493625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045259.P5242466477517493625

/-! ## A045259.P15479772429822875244

`∩[A023728(n+1), A037459(n+1)]`
-/

namespace A045259.P15479772429822875244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045259.P15479772429822875244

/-! ## A045259.P14941588380140390083

`eq[A109012(n)+2, A193238(A072960(n+1))]`
-/

namespace A045259.P14941588380140390083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109012 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A072960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045259.P14941588380140390083

/-!
# A045260: Numbers whose base-5 representation contains exactly three 1's and one 4.

The programs for A045260, there is no canonical definition to state claims against.
-/

/-! ## A045260.P11186687782377901850

`∩[A023728(n+1), A023738(n+1)]`
-/

namespace A045260.P11186687782377901850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045260.P11186687782377901850

/-!
# A045261: Numbers whose base-5 representation contains exactly three 1's and two 4's.

The programs for A045261, there is no canonical definition to state claims against.
-/

/-! ## A045261.P9078235085525028356

`∩[A023728(n+1), A023739(n+1)]`
-/

namespace A045261.P9078235085525028356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045261.P9078235085525028356

/-!
# A045262: Numbers whose base-5 representation contains exactly three 1's and three 4's.

The programs for A045262, there is no canonical definition to state claims against.
-/

/-! ## A045262.P17917382418684851099

`∩[A023728(n+1), A023740(n+1)]`
-/

namespace A045262.P17917382418684851099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045262.P17917382418684851099

/-! ## A045262.P6829518909387152274

`A008586(A045232(n+1))-A045307(n+1)`
-/

namespace A045262.P6829518909387152274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A045232 (n + 1)).toNat - A045307 (n + 1)

end

end A045262.P6829518909387152274

/-! ## A045262.P688862044826659399

`A008586(A045232(n+1))-A023721(A045032(n+1)-1)`
-/

namespace A045262.P688862044826659399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A045232 (n + 1)).toNat - A023721 (A045032 (n + 1) - 1).toNat

end

end A045262.P688862044826659399

/-! ## A045262.P16894849239294993395

`A065256(A045277(n+1))`
-/

namespace A045262.P16894849239294993395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065256 (A045277 (n + 1)).toNat

end

end A045262.P16894849239294993395

/-! ## A045262.P3830477685210060114

`A004442(A045303(n+1)+A045288(n+1))`
-/

namespace A045262.P3830477685210060114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A045303 (n + 1) + A045288 (n + 1)).toNat

end

end A045262.P3830477685210060114

/-!
# A045263: Numbers whose base-5 representation contains no 2's and exactly one 3.

The programs for A045263, there is no canonical definition to state claims against.
-/

/-! ## A045263.P10922984987027909074

`A023729(A023714(n+1)+1)`
-/

namespace A045263.P10922984987027909074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023714 (n + 1) + 1).toNat

end

end A045263.P10922984987027909074

/-! ## A045263.P17703805793444128184

`∩[A023729(n+1), A023734(n+1)]`
-/

namespace A045263.P17703805793444128184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045263.P17703805793444128184

/-!
# A045264: Numbers whose base-5 representation contains no 2's and exactly two 3's.

The programs for A045264, there is no canonical definition to state claims against.
-/

/-! ## A045264.P9924644162889424303

`A023729(A023715(n+1)+1)`
-/

namespace A045264.P9924644162889424303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023715 (n + 1) + 1).toNat

end

end A045264.P9924644162889424303

/-! ## A045264.P7435539508232426418

`∩[A023729(n+1), A023735(n+1)]`
-/

namespace A045264.P7435539508232426418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045264.P7435539508232426418

/-! ## A045264.P4391042782810733900

`record[A023735(n+1)/A005361(A000204(n+1))]`
-/

namespace A045264.P4391042782810733900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023735 (n + 1) : ℚ) / (A005361 (A000204 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045264.P4391042782810733900

/-! ## A045264.P17382533076210922871

`record[A023735(n+1)*A326815(A000032(n+1))]`
-/

namespace A045264.P17382533076210922871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1) * A326815 (A000032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045264.P17382533076210922871

/-! ## A045264.P14995745926688837706

`∩[A023735(n+1), A223133(n)]`
-/

namespace A045264.P14995745926688837706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045264.P14995745926688837706

/-!
# A045265: Numbers whose base-5 representation contains no 2's and exactly three 3's.

The programs for A045265, there is no canonical definition to state claims against.
-/

/-! ## A045265.P14309383815926409810

`A023729(A023716(n+1)+1)`
-/

namespace A045265.P14309383815926409810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023716 (n + 1) + 1).toNat

end

end A045265.P14309383815926409810

/-! ## A045265.P10709885226908828258

`∩[A023729(n+1), A023736(n+1)]`
-/

namespace A045265.P10709885226908828258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045265.P10709885226908828258

/-! ## A045265.P5286824640113948844

`A023736(A087051(n)+A008619(n))`
-/

namespace A045265.P5286824640113948844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (A087051 n + A008619 n).toNat

end

end A045265.P5286824640113948844

/-! ## A045265.P14475063340473221357

`A023736(A001651(n+1)^((A306272(n+1)+1)%2))`
-/

namespace A045265.P14475063340473221357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (SequenceMachineLib.roundAway ((A001651 (n + 1) : ℚ) ^ (Int.tmod (A306272 (n + 1) + 1) 2 : ℤ))).toNat

end

end A045265.P14475063340473221357

/-! ## A045265.P17452899981422775333

`A023736(A001651(n+1))%A023736(A007239(n+1))`
-/

namespace A045265.P17452899981422775333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023736 (A001651 (n + 1)).toNat) (A023736 (A007239 (n + 1)).toNat)

end

end A045265.P17452899981422775333

/-!
# A045266: Numbers whose base-5 representation contains exactly one 2 and no 3's.

The programs for A045266, the canonical program `A045266.P5671073861663757090` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045266 has offset 1).

The definition of A045266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045266.P5671073861663757090

`A023733(A023714(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045266

/-- `A023733(A023714(n+1)+1)` -/
def P5671073861663757090.Spec : Prop :=
  ∀ n, P5671073861663757090.a n = A045266 (n + 1)

theorem P5671073861663757090.correct : P5671073861663757090.Spec := by
  intro n
  simp only [A045266, Nat.add_sub_cancel]

end A045266

/-! ## A045266.P5321258422922118174

`∩[A023730(n+1), A023733(n+1)]`
-/

namespace A045266.P5321258422922118174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045266.P5321258422922118174

namespace A045266

/-- `∩[A023730(n+1), A023733(n+1)]` -/
def P5321258422922118174.Spec : Prop :=
  ∀ n, (P5321258422922118174.a n : ℤ) = A045266 (n + 1)

end A045266

/-! ## A045266.P18263500153710704289

`∩[A023730(n+1), A230776(n+1)]`
-/

namespace A045266.P18263500153710704289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045266.P18263500153710704289

namespace A045266

/-- `∩[A023730(n+1), A230776(n+1)]` -/
def P18263500153710704289.Spec : Prop :=
  ∀ n, (P18263500153710704289.a n : ℤ) = A045266 (n + 1)

end A045266

/-! ## A045266.P5338233834183909535

`eq[A083199(n+1), A263146(n)]`
-/

namespace A045266.P5338233834183909535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045266.P5338233834183909535

namespace A045266

/-- `eq[A083199(n+1), A263146(n)]` -/
def P5338233834183909535.Spec : Prop :=
  ∀ n, (P5338233834183909535.a n : ℤ) = A045266 (n + 1)

end A045266

/-!
# A045267: Numbers whose base-5 representation contains exactly one 2 and one 3.

The programs for A045267, the canonical program `A045267.P5788742977189700651` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045267 has offset 1).

The definition of A045267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045267.P4631481410346334106

`∩[A023730(n+1), A039013(n+1)]`
-/

namespace A045267.P4631481410346334106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P4631481410346334106

namespace A045267

/-- `∩[A023730(n+1), A039013(n+1)]` -/
def P4631481410346334106.Spec : Prop :=
  ∀ n, (P4631481410346334106.a n : ℤ) = A045267 (n + 1)

end A045267

/-! ## A045267.P10414723976285299208

`∩[A023730(n+1), A039290(n+1)]`
-/

namespace A045267.P10414723976285299208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P10414723976285299208

namespace A045267

/-- `∩[A023730(n+1), A039290(n+1)]` -/
def P10414723976285299208.Spec : Prop :=
  ∀ n, (P10414723976285299208.a n : ℤ) = A045267 (n + 1)

end A045267

/-! ## A045267.P5788742977189700651

`∩[A023730(n+1), A023734(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045267

/-- `∩[A023730(n+1), A023734(n+1)]` -/
def P5788742977189700651.Spec : Prop :=
  ∀ n, (P5788742977189700651.a n : ℤ) = A045267 (n + 1)

theorem P5788742977189700651.correct : P5788742977189700651.Spec := by
  intro n
  simp only [A045267, Nat.add_sub_cancel]

end A045267

/-! ## A045267.P2237404510648424028

`∩[A023734(n+1), A039013(n+1)]`
-/

namespace A045267.P2237404510648424028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P2237404510648424028

namespace A045267

/-- `∩[A023734(n+1), A039013(n+1)]` -/
def P2237404510648424028.Spec : Prop :=
  ∀ n, (P2237404510648424028.a n : ℤ) = A045267 (n + 1)

end A045267

/-! ## A045267.P11080293451501308205

`∩[A023734(n+1), A039290(n+1)]`
-/

namespace A045267.P11080293451501308205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045267.P11080293451501308205

namespace A045267

/-- `∩[A023734(n+1), A039290(n+1)]` -/
def P11080293451501308205.Spec : Prop :=
  ∀ n, (P11080293451501308205.a n : ℤ) = A045267 (n + 1)

end A045267

/-!
# A045268: Numbers whose base-5 representation contains exactly one 2 and two 3's.

The programs for A045268, the canonical program `A045268.P10162999156684542775` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045268 has offset 1).

The definition of A045268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045268.P10162999156684542775

`∩[A023730(n+1), A023735(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045268

/-- `∩[A023730(n+1), A023735(n+1)]` -/
def P10162999156684542775.Spec : Prop :=
  ∀ n, (P10162999156684542775.a n : ℤ) = A045268 (n + 1)

theorem P10162999156684542775.correct : P10162999156684542775.Spec := by
  intro n
  simp only [A045268, Nat.add_sub_cancel]

end A045268

/-! ## A045268.P17406111392345205020

`eq[4, A338804(A338803(n))]`
-/

namespace A045268.P17406111392345205020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338804 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045268.P17406111392345205020

namespace A045268

/-- `eq[4, A338804(A338803(n))]` -/
def P17406111392345205020.Spec : Prop :=
  ∀ n, (P17406111392345205020.a n : ℤ) = A045268 (n + 1)

end A045268

/-!
# A045269: Numbers whose base-5 representation contains exactly one 2 and three 3's.

The programs for A045269, there is no canonical definition to state claims against.
-/

/-! ## A045269.P8458884994553249017

`∩[A023730(n+1), A023736(n+1)]`
-/

namespace A045269.P8458884994553249017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045269.P8458884994553249017

/-! ## A045269.P6558096542254949305

`A045304(3*(n+1))%Δ[A045330(2*(n+1))]`
-/

namespace A045269.P6558096542254949305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045330 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045304 (3 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A045269.P6558096542254949305

/-! ## A045269.P15154278274254490484

`A045304(lt[A045295(n+1), A115595(n+1)])`
-/

namespace A045269.P15154278274254490484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045304 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045269.P15154278274254490484

/-!
# A045270: Numbers whose base-5 representation contains exactly two 2's and no 3's.

The programs for A045270, the canonical program `A045270.P8891341731803118067` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045270 has offset 1).

The definition of A045270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045270.P8891341731803118067

`A023733(A023715(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045270

/-- `A023733(A023715(n+1)+1)` -/
def P8891341731803118067.Spec : Prop :=
  ∀ n, P8891341731803118067.a n = A045270 (n + 1)

theorem P8891341731803118067.correct : P8891341731803118067.Spec := by
  intro n
  simp only [A045270, Nat.add_sub_cancel]

end A045270

/-! ## A045270.P6214821450801568006

`∩[A023731(n+1), A023733(n+1)]`
-/

namespace A045270.P6214821450801568006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045270.P6214821450801568006

namespace A045270

/-- `∩[A023731(n+1), A023733(n+1)]` -/
def P6214821450801568006.Spec : Prop :=
  ∀ n, (P6214821450801568006.a n : ℤ) = A045270 (n + 1)

end A045270

/-! ## A045270.P16488440452162977210

`∩[A023731(n+1), A184967(n+1)]`
-/

namespace A045270.P16488440452162977210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045270.P16488440452162977210

namespace A045270

/-- `∩[A023731(n+1), A184967(n+1)]` -/
def P16488440452162977210.Spec : Prop :=
  ∀ n, (P16488440452162977210.a n : ℤ) = A045270 (n + 1)

end A045270

/-! ## A045270.P7820400537550195101

`∩[A023731(n+1), A164528(n+1)]`
-/

namespace A045270.P7820400537550195101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045270.P7820400537550195101

namespace A045270

/-- `∩[A023731(n+1), A164528(n+1)]` -/
def P7820400537550195101.Spec : Prop :=
  ∀ n, (P7820400537550195101.a n : ℤ) = A045270 (n + 1)

end A045270

/-! ## A045270.P9608862786744576303

`record[A023731(A381490(2*n+3)+A010060(n))]`
-/

namespace A045270.P9608862786744576303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (A381490 (2 * n + 3) + A010060 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045270.P9608862786744576303

namespace A045270

/-- `record[A023731(A381490(2*n+3)+A010060(n))]` -/
def P9608862786744576303.Spec : Prop :=
  ∀ n, P9608862786744576303.a n = A045270 (n + 1)

end A045270

/-!
# A045271: Numbers whose base-5 representation contains exactly two 2's and one 3.

The programs for A045271, the canonical program `A045271.P15070719441981263181` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045271 has offset 1).

The definition of A045271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045271.P15070719441981263181

`∩[A023731(n+1), A023734(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045271

/-- `∩[A023731(n+1), A023734(n+1)]` -/
def P15070719441981263181.Spec : Prop :=
  ∀ n, (P15070719441981263181.a n : ℤ) = A045271 (n + 1)

theorem P15070719441981263181.correct : P15070719441981263181.Spec := by
  intro n
  simp only [A045271, Nat.add_sub_cancel]

end A045271

/-!
# A045272: Numbers whose base-5 representation contains exactly two 2's and two 3's.

The programs for A045272, the canonical program `A045272.P12300636511309598618` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045272 has offset 1).

The definition of A045272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045272.P10423681591718155903

`∩[A023735(n+1), A039290(n+1)]`
-/

namespace A045272.P10423681591718155903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045272.P10423681591718155903

namespace A045272

/-- `∩[A023735(n+1), A039290(n+1)]` -/
def P10423681591718155903.Spec : Prop :=
  ∀ n, (P10423681591718155903.a n : ℤ) = A045272 (n + 1)

end A045272

/-! ## A045272.P12300636511309598618

`∩[A023731(n+1), A023735(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045272

/-- `∩[A023731(n+1), A023735(n+1)]` -/
def P12300636511309598618.Spec : Prop :=
  ∀ n, (P12300636511309598618.a n : ℤ) = A045272 (n + 1)

theorem P12300636511309598618.correct : P12300636511309598618.Spec := by
  intro n
  simp only [A045272, Nat.add_sub_cancel]

end A045272

/-! ## A045272.P6072115062124114644

`∩[A023731(n+1), A039290(n+1)]`
-/

namespace A045272.P6072115062124114644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045272.P6072115062124114644

namespace A045272

/-- `∩[A023731(n+1), A039290(n+1)]` -/
def P6072115062124114644.Spec : Prop :=
  ∀ n, (P6072115062124114644.a n : ℤ) = A045272 (n + 1)

end A045272

/-!
# A045273: Numbers whose base-5 representation contains exactly two 2's and three 3's.

The programs for A045273, there is no canonical definition to state claims against.
-/

/-! ## A045273.P15694465166984264199

`∩[A023731(n+1), A023736(n+1)]`
-/

namespace A045273.P15694465166984264199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045273.P15694465166984264199

/-! ## A045273.P4527905435991849371

`A008611(A045243(n+1)+A045232(n+1))`
-/

namespace A045273.P4527905435991849371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A045243 (n + 1) + A045232 (n + 1)).toNat

end

end A045273.P4527905435991849371

/-! ## A045273.P4743401794647055587

`A008611(A045247(n+1)+A045228(n+1))`
-/

namespace A045273.P4743401794647055587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A045247 (n + 1) + A045228 (n + 1)).toNat

end

end A045273.P4743401794647055587

/-! ## A045273.P11573419343707395462

`A280497(A045303(n+1)+A045228(n+1))`
-/

namespace A045273.P11573419343707395462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (A045303 (n + 1) + A045228 (n + 1)).toNat

end

end A045273.P11573419343707395462

/-!
# A045274: Numbers whose base-5 representation contains exactly three 2's and no 3's.

The programs for A045274, there is no canonical definition to state claims against.
-/

/-! ## A045274.P14132205532727143800

`A023733(A023716(n+1)+1)`
-/

namespace A045274.P14132205532727143800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023716 (n + 1) + 1).toNat

end

end A045274.P14132205532727143800

/-! ## A045274.P3102421429111173949

`∩[A023732(n+1), A023733(n+1)]`
-/

namespace A045274.P3102421429111173949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045274.P3102421429111173949

/-! ## A045274.P10015088183065367474

`A023732(eq[A000038(n), A007392(n+1)])`
-/

namespace A045274.P10015088183065367474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045274.P10015088183065367474

/-! ## A045274.P15260433686822242242

`A023732(lt[A350273(n), A139203(n+4)]+1)`
-/

namespace A045274.P15260433686822242242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139203 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A045274.P15260433686822242242

/-! ## A045274.P319873286224480272

`A045289(A032555(n+1))+char[8]`
-/

namespace A045274.P319873286224480272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045289 (A032555 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A045274.P319873286224480272

/-!
# A045275: Numbers whose base-5 representation contains exactly three 2's and one 3.

The programs for A045275, there is no canonical definition to state claims against.
-/

/-! ## A045275.P5874403715029175995

`∩[A023732(n+1), A023734(n+1)]`
-/

namespace A045275.P5874403715029175995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045275.P5874403715029175995

/-! ## A045275.P13309372748208192799

`A020655(A045149(n+1)%A114613(2*(n+1)))`
-/

namespace A045275.P13309372748208192799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (Int.tmod (A045149 (n + 1)) (A114613 (2 * (n + 1)))).toNat

end

end A045275.P13309372748208192799

/-! ## A045275.P6731160626720236090

`A020655(A045149(n+1)%A093738(n+5))`
-/

namespace A045275.P6731160626720236090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (Int.tmod (A045149 (n + 1)) (A093738 (n + 5))).toNat

end

end A045275.P6731160626720236090

/-!
# A045276: Numbers whose base-5 representation contains exactly three 2's and two 3's.

The programs for A045276, there is no canonical definition to state claims against.
-/

/-! ## A045276.P6817001368740480947

`∩[A023732(n+1), A023735(n+1)]`
-/

namespace A045276.P6817001368740480947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045276.P6817001368740480947

/-! ## A045276.P8828976494936320675

`A002265(A045291(n+1)+2*A045306(n+1))`
-/

namespace A045276.P8828976494936320675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A045291 (n + 1) + 2 * A045306 (n + 1)).toNat

end

end A045276.P8828976494936320675

/-! ## A045276.P7832311857696737702

`(A348354(A045231(n+1))+A045231(n+1))/2`
-/

namespace A045276.P7832311857696737702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348354 (A045231 (n + 1)).toNat + A045231 (n + 1) : ℚ) / 2

end

end A045276.P7832311857696737702

/-! ## A045276.P15005597706042427543

`A002265(A045291(n+1)+lcm(2, A045306(n+1)))`
-/

namespace A045276.P15005597706042427543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A045291 (n + 1) + (Int.lcm 2 (A045306 (n + 1)) : ℤ)).toNat

end

end A045276.P15005597706042427543

/-! ## A045276.P2079833243137980898

`A020654(∩[A045040(n+1), A045111(n+1)]+1)`
-/

namespace A045276.P2079833243137980898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045111 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1)

end

end A045276.P2079833243137980898

/-!
# A045277: Numbers whose base-5 representation contains exactly three 2's and three 3's.

The programs for A045277, there is no canonical definition to state claims against.
-/

/-! ## A045277.P6164184927893143791

`A020655(A045151(n+1))`
-/

namespace A045277.P6164184927893143791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A045151 (n + 1)).toNat

end

end A045277.P6164184927893143791

/-! ## A045277.P5381848363540023371

`A020654(A045151(n+1)+1)`
-/

namespace A045277.P5381848363540023371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A045151 (n + 1) + 1).toNat

end

end A045277.P5381848363540023371

/-! ## A045277.P6805971212200746058

`A004515(A045262(n+1))`
-/

namespace A045277.P6805971212200746058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A045262 (n + 1)).toNat

end

end A045277.P6805971212200746058

/-! ## A045277.P565057112361025376

`A256295(A045232(n+1))`
-/

namespace A045277.P565057112361025376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256295 (A045232 (n + 1)).toNat

end

end A045277.P565057112361025376

/-!
# A045278: Numbers whose base-5 representation contains no 2's and exactly one 4.

The programs for A045278, there is no canonical definition to state claims against.
-/

/-! ## A045278.P3868727415929704721

`A023729(A023718(n+1)+1)`
-/

namespace A045278.P3868727415929704721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023718 (n + 1) + 1).toNat

end

end A045278.P3868727415929704721

/-! ## A045278.P1052399401019984403

`∩[A023729(n+1), A023738(n+1)]`
-/

namespace A045278.P1052399401019984403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045278.P1052399401019984403

/-! ## A045278.P6197705625480100751

`eq[5, A078833(A194459(n))]`
-/

namespace A045278.P6197705625480100751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045278.P6197705625480100751

/-! ## A045278.P10190060775456785500

`eq[3, A002487(A194459(n+1))]+1`
-/

namespace A045278.P10190060775456785500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A194459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045278.P10190060775456785500

/-! ## A045278.P3416471613795689819

`eq[3, A003602(A194459(n))%A001961(n+1)]`
-/

namespace A045278.P3416471613795689819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A194459 n).toNat) (A001961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045278.P3416471613795689819

/-!
# A045279: Numbers whose base-5 representation contains no 2's and exactly two 4's.

The programs for A045279, there is no canonical definition to state claims against.
-/

/-! ## A045279.P12804015366292481287

`A023729(A023719(n+1)+1)`
-/

namespace A045279.P12804015366292481287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023719 (n + 1) + 1).toNat

end

end A045279.P12804015366292481287

/-! ## A045279.P18250803860055115197

`∩[A023729(n+1), A023739(n+1)]`
-/

namespace A045279.P18250803860055115197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045279.P18250803860055115197

/-! ## A045279.P16582932423848652043

`eq[12, A268444(A194459(n))]`
-/

namespace A045279.P16582932423848652043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045279.P16582932423848652043

/-! ## A045279.P13401749542355539504

`eq[7, A002487(A194459(n+1))]+1`
-/

namespace A045279.P13401749542355539504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A194459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045279.P13401749542355539504

/-! ## A045279.P17306298796638945567

`eq[2, A025427(A194459(n)²)]`
-/

namespace A045279.P17306298796638945567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A194459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045279.P17306298796638945567

/-!
# A045280: Numbers whose base-5 representation contains no 2's and exactly three 4's.

The programs for A045280, there is no canonical definition to state claims against.
-/

/-! ## A045280.P12092333778521462451

`A023729(A023720(n+1)+1)`
-/

namespace A045280.P12092333778521462451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023720 (n + 1) + 1).toNat

end

end A045280.P12092333778521462451

/-! ## A045280.P12947670477267091649

`∩[A023729(n+1), A023740(n+1)]`
-/

namespace A045280.P12947670477267091649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045280.P12947670477267091649

/-! ## A045280.P17810033566711237290

`eq[11, A002487(A194459(n))]`
-/

namespace A045280.P17810033566711237290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045280.P17810033566711237290

/-! ## A045280.P13757599253148676398

`A023740(∑[A000034(A000071(n+1))])`
-/

namespace A045280.P13757599253148676398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045280.P13757599253148676398

/-! ## A045280.P62390201447239599

`A023740(A187829(n+1)+∑[A022003(n)])`
-/

namespace A045280.P62390201447239599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (A187829 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045280.P62390201447239599

/-!
# A045281: Numbers whose base-5 representation contains exactly one 2 and no 4's.

The programs for A045281, there is no canonical definition to state claims against.
-/

/-! ## A045281.P6477535933394934433

`A037459(A023714(n+1))`
-/

namespace A045281.P6477535933394934433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023714 (n + 1)).toNat

end

end A045281.P6477535933394934433

/-! ## A045281.P3513763107655315600

`A037459(eq[1, A160382(n)])`
-/

namespace A045281.P3513763107655315600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045281.P3513763107655315600

/-! ## A045281.P1382095357771487054

`A020654(A023714(n+1)+1)`
-/

namespace A045281.P1382095357771487054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023714 (n + 1) + 1).toNat

end

end A045281.P1382095357771487054

/-! ## A045281.P6334613030597415769

`∩[A020654(n+1), A023730(n+1)]`
-/

namespace A045281.P6334613030597415769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045281.P6334613030597415769

/-! ## A045281.P13481554815584928201

`∩[A023730(n+1), A037459(n+1)]`
-/

namespace A045281.P13481554815584928201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045281.P13481554815584928201

/-! ## A045281.P10422680234358838845

`eq[2, A007733(A194459(n))]`
-/

namespace A045281.P10422680234358838845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045281.P10422680234358838845

/-! ## A045281.P3491016059674010389

`eq[2, A007877(A338803(n))]`
-/

namespace A045281.P3491016059674010389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A338803 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045281.P3491016059674010389

/-! ## A045281.P12325705456078027958

`eq[3, A000265(A194459(n+1))]+1`
-/

namespace A045281.P12325705456078027958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A194459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045281.P12325705456078027958

/-! ## A045281.P12226828332474657232

`eq[9, A000265(A194459(n)²)]`
-/

namespace A045281.P12226828332474657232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A194459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045281.P12226828332474657232

/-! ## A045281.P15605045137895872465

`eq[4, A001316(A194459(n)²)]`
-/

namespace A045281.P15605045137895872465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A194459 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045281.P15605045137895872465

/-!
# A045282: Numbers whose base-5 representation contains exactly one 2 and one 4.

The programs for A045282, the canonical program `A045282.P4860414556103832674` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045282 has offset 1).

The definition of A045282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045282.P13905478624993569886

`∩[A023730(n+1), A039014(n+1)]`
-/

namespace A045282.P13905478624993569886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P13905478624993569886

namespace A045282

/-- `∩[A023730(n+1), A039014(n+1)]` -/
def P13905478624993569886.Spec : Prop :=
  ∀ n, (P13905478624993569886.a n : ℤ) = A045282 (n + 1)

end A045282

/-! ## A045282.P9881648500742394555

`∩[A023730(n+1), A039291(n+1)]`
-/

namespace A045282.P9881648500742394555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P9881648500742394555

namespace A045282

/-- `∩[A023730(n+1), A039291(n+1)]` -/
def P9881648500742394555.Spec : Prop :=
  ∀ n, (P9881648500742394555.a n : ℤ) = A045282 (n + 1)

end A045282

/-! ## A045282.P4860414556103832674

`∩[A023730(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045282

/-- `∩[A023730(n+1), A023738(n+1)]` -/
def P4860414556103832674.Spec : Prop :=
  ∀ n, (P4860414556103832674.a n : ℤ) = A045282 (n + 1)

theorem P4860414556103832674.correct : P4860414556103832674.Spec := by
  intro n
  simp only [A045282, Nat.add_sub_cancel]

end A045282

/-! ## A045282.P7142479960797225579

`∩[A023738(n+1), A039014(n+1)]`
-/

namespace A045282.P7142479960797225579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P7142479960797225579

namespace A045282

/-- `∩[A023738(n+1), A039014(n+1)]` -/
def P7142479960797225579.Spec : Prop :=
  ∀ n, (P7142479960797225579.a n : ℤ) = A045282 (n + 1)

end A045282

/-! ## A045282.P18225758939563284056

`∩[A023738(n+1), A039291(n+1)]`
-/

namespace A045282.P18225758939563284056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045282.P18225758939563284056

namespace A045282

/-- `∩[A023738(n+1), A039291(n+1)]` -/
def P18225758939563284056.Spec : Prop :=
  ∀ n, (P18225758939563284056.a n : ℤ) = A045282 (n + 1)

end A045282

/-! ## A045282.P7732327640446763344

`eq[6, A064989(A194459(n))]`
-/

namespace A045282.P7732327640446763344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045282.P7732327640446763344

namespace A045282

/-- `eq[6, A064989(A194459(n))]` -/
def P7732327640446763344.Spec : Prop :=
  ∀ n, (P7732327640446763344.a n : ℤ) = A045282 (n + 1)

end A045282

/-!
# A045283: Numbers whose base-5 representation contains exactly one 2 and two 4's.

The programs for A045283, the canonical program `A045283.P3668256314299914758` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045283 has offset 1).

The definition of A045283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045283.P3668256314299914758

`∩[A023730(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045283

/-- `∩[A023730(n+1), A023739(n+1)]` -/
def P3668256314299914758.Spec : Prop :=
  ∀ n, (P3668256314299914758.a n : ℤ) = A045283 (n + 1)

theorem P3668256314299914758.correct : P3668256314299914758.Spec := by
  intro n
  simp only [A045283, Nat.add_sub_cancel]

end A045283

/-! ## A045283.P4596168825405779041

`eq[9, dr(A002487(A194459(n+1)))]+1`
-/

namespace A045283.P4596168825405779041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002487 (A194459 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A045283.P4596168825405779041

namespace A045283

/-- `eq[9, dr(A002487(A194459(n+1)))]+1` -/
def P4596168825405779041.Spec : Prop :=
  ∀ n, (P4596168825405779041.a n : ℤ) = A045283 (n + 1)

end A045283

/-!
# A045284: Numbers whose base-5 representation contains exactly one 2 and three 4's.

The programs for A045284, there is no canonical definition to state claims against.
-/

/-! ## A045284.P9641517363896308051

`∩[A023730(n+1), A023740(n+1)]`
-/

namespace A045284.P9641517363896308051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045284.P9641517363896308051

/-! ## A045284.P5167344446621497547

`A045295(lt[14, A115595(n+1)])`
-/

namespace A045284.P5167344446621497547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A045284.P5167344446621497547

/-! ## A045284.P3996236852291076975

`A023740(A004767(n)^A290832(n))`
-/

namespace A045284.P3996236852291076975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (SequenceMachineLib.roundAway ((A004767 n : ℚ) ^ (A290832 n : ℤ))).toNat

end

end A045284.P3996236852291076975

/-!
# A045285: Numbers whose base-5 representation contains exactly two 2's and no 4's.

The programs for A045285, there is no canonical definition to state claims against.
-/

/-! ## A045285.P11959909884677556379

`A037459(A023715(n+1))`
-/

namespace A045285.P11959909884677556379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023715 (n + 1)).toNat

end

end A045285.P11959909884677556379

/-! ## A045285.P15048933835961962081

`A037459(eq[2, A160382(n)])`
-/

namespace A045285.P15048933835961962081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045285.P15048933835961962081

/-! ## A045285.P15850271921677380318

`A020654(A023715(n+1)+1)`
-/

namespace A045285.P15850271921677380318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023715 (n + 1) + 1).toNat

end

end A045285.P15850271921677380318

/-! ## A045285.P9600228867691746004

`∩[A020654(n+1), A023731(n+1)]`
-/

namespace A045285.P9600228867691746004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045285.P9600228867691746004

/-! ## A045285.P13106840525487187577

`∩[A023731(n+1), A037459(n+1)]`
-/

namespace A045285.P13106840525487187577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045285.P13106840525487187577

/-! ## A045285.P10281166752952847077

`eq[4, A064989(A194459(n))]`
-/

namespace A045285.P10281166752952847077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045285.P10281166752952847077

/-!
# A045286: Numbers whose base-5 representation contains exactly two 2's and one 4.

The programs for A045286, the canonical program `A045286.P12771524637702086982` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045286 has offset 1).

The definition of A045286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045286.P12771524637702086982

`∩[A023731(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045286

/-- `∩[A023731(n+1), A023738(n+1)]` -/
def P12771524637702086982.Spec : Prop :=
  ∀ n, (P12771524637702086982.a n : ℤ) = A045286 (n + 1)

theorem P12771524637702086982.correct : P12771524637702086982.Spec := by
  intro n
  simp only [A045286, Nat.add_sub_cancel]

end A045286

/-! ## A045286.P1549053316875642873

`eq[5, A340365(A194459(n))]`
-/

namespace A045286.P1549053316875642873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340365 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045286.P1549053316875642873

namespace A045286

/-- `eq[5, A340365(A194459(n))]` -/
def P1549053316875642873.Spec : Prop :=
  ∀ n, (P1549053316875642873.a n : ℤ) = A045286 (n + 1)

end A045286

/-! ## A045286.P6964422410646825742

`eq[12, A002487(A194459(n+1))]+1`
-/

namespace A045286.P6964422410646825742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A194459 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045286.P6964422410646825742

namespace A045286

/-- `eq[12, A002487(A194459(n+1))]+1` -/
def P6964422410646825742.Spec : Prop :=
  ∀ n, (P6964422410646825742.a n : ℤ) = A045286 (n + 1)

end A045286

/-!
# A045287: Numbers whose base-5 representation contains exactly two 2's and two 4's.

The programs for A045287, the canonical program `A045287.P5177977857156502833` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045287 has offset 1).

The definition of A045287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045287.P1570978892546764110

`∩[A023739(n+1), A039291(n+1)]`
-/

namespace A045287.P1570978892546764110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045287.P1570978892546764110

namespace A045287

/-- `∩[A023739(n+1), A039291(n+1)]` -/
def P1570978892546764110.Spec : Prop :=
  ∀ n, (P1570978892546764110.a n : ℤ) = A045287 (n + 1)

end A045287

/-! ## A045287.P5177977857156502833

`∩[A023731(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045287

/-- `∩[A023731(n+1), A023739(n+1)]` -/
def P5177977857156502833.Spec : Prop :=
  ∀ n, (P5177977857156502833.a n : ℤ) = A045287 (n + 1)

theorem P5177977857156502833.correct : P5177977857156502833.Spec := by
  intro n
  simp only [A045287, Nat.add_sub_cancel]

end A045287

/-! ## A045287.P10689103912786243010

`∩[A023731(n+1), A039014(n+1)]`
-/

namespace A045287.P10689103912786243010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045287.P10689103912786243010

namespace A045287

/-- `∩[A023731(n+1), A039014(n+1)]` -/
def P10689103912786243010.Spec : Prop :=
  ∀ n, (P10689103912786243010.a n : ℤ) = A045287 (n + 1)

end A045287

/-! ## A045287.P18444263525109612393

`∩[A023731(n+1), A039291(n+1)]`
-/

namespace A045287.P18444263525109612393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045287.P18444263525109612393

namespace A045287

/-- `∩[A023731(n+1), A039291(n+1)]` -/
def P18444263525109612393.Spec : Prop :=
  ∀ n, (P18444263525109612393.a n : ℤ) = A045287 (n + 1)

end A045287

/-! ## A045287.P12221028454592427055

`eq[9, A001227(A194459(n))]`
-/

namespace A045287.P12221028454592427055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045287.P12221028454592427055

namespace A045287

/-- `eq[9, A001227(A194459(n))]` -/
def P12221028454592427055.Spec : Prop :=
  ∀ n, (P12221028454592427055.a n : ℤ) = A045287 (n + 1)

end A045287

/-!
# A045288: Numbers whose base-5 representation contains exactly two 2's and three 4's.

The programs for A045288, there is no canonical definition to state claims against.
-/

/-! ## A045288.P14025373873669465778

`∩[A023731(n+1), A023740(n+1)]`
-/

namespace A045288.P14025373873669465778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045288.P14025373873669465778

/-! ## A045288.P13277011840225328374

`A030127(A045228(n+1))`
-/

namespace A045288.P13277011840225328374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A045228 (n + 1)).toNat

end

end A045288.P13277011840225328374

/-! ## A045288.P17949260496123433265

`2*A348354(A045303(n+1))`
-/

namespace A045288.P17949260496123433265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348354 (A045303 (n + 1)).toNat

end

end A045288.P17949260496123433265

/-! ## A045288.P15319228274458569472

`A001281(4*A045228(n+1))`
-/

namespace A045288.P15319228274458569472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (4 * A045228 (n + 1)).toNat

end

end A045288.P15319228274458569472

/-! ## A045288.P7410510855169284588

`A004524(4*A045228(n+1))`
-/

namespace A045288.P7410510855169284588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (4 * A045228 (n + 1)).toNat

end

end A045288.P7410510855169284588

/-!
# A045289: Numbers whose base-5 representation contains exactly three 2's and no 4's.

The programs for A045289, there is no canonical definition to state claims against.
-/

/-! ## A045289.P6252056444774294246

`A037459(A023716(n+1))`
-/

namespace A045289.P6252056444774294246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023716 (n + 1)).toNat

end

end A045289.P6252056444774294246

/-! ## A045289.P2852994403760783531

`A037459(eq[3, A160382(n)])`
-/

namespace A045289.P2852994403760783531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045289.P2852994403760783531

/-! ## A045289.P3069772960853768518

`A020654(A023716(n+1)+1)`
-/

namespace A045289.P3069772960853768518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023716 (n + 1) + 1).toNat

end

end A045289.P3069772960853768518

/-! ## A045289.P12933970513495455691

`∩[A020654(n+1), A023732(n+1)]`
-/

namespace A045289.P12933970513495455691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045289.P12933970513495455691

/-! ## A045289.P1357059258519422484

`∩[A023732(n+1), A037459(n+1)]`
-/

namespace A045289.P1357059258519422484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045289.P1357059258519422484

/-! ## A045289.P15023905751959115392

`eq[8, A002487(A194459(n))]`
-/

namespace A045289.P15023905751959115392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A194459 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045289.P15023905751959115392

/-!
# A045290: Numbers whose base-5 representation contains exactly three 2's and one 4.

The programs for A045290, there is no canonical definition to state claims against.
-/

/-! ## A045290.P7669036130477909908

`∩[A023732(n+1), A023738(n+1)]`
-/

namespace A045290.P7669036130477909908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045290.P7669036130477909908

/-!
# A045291: Numbers whose base-5 representation contains exactly three 2's and two 4's.

The programs for A045291, there is no canonical definition to state claims against.
-/

/-! ## A045291.P3203756987312177299

`∩[A023732(n+1), A023739(n+1)]`
-/

namespace A045291.P3203756987312177299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045291.P3203756987312177299

/-! ## A045291.P6544184532390349882

`A030127(A045231(n+1))`
-/

namespace A045291.P6544184532390349882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A045231 (n + 1)).toNat

end

end A045291.P6544184532390349882

/-! ## A045291.P14587896213398062773

`2*A348354(A045306(n+1))`
-/

namespace A045291.P14587896213398062773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348354 (A045306 (n + 1)).toNat

end

end A045291.P14587896213398062773

/-! ## A045291.P6590211149368758261

`A001281(4*A045231(n+1))`
-/

namespace A045291.P6590211149368758261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (4 * A045231 (n + 1)).toNat

end

end A045291.P6590211149368758261

/-! ## A045291.P16254537096390536843

`A004524(4*A045231(n+1))`
-/

namespace A045291.P16254537096390536843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (4 * A045231 (n + 1)).toNat

end

end A045291.P16254537096390536843

/-!
# A045292: Numbers whose base-5 representation contains exactly three 2's and three 4's.

The programs for A045292, there is no canonical definition to state claims against.
-/

/-! ## A045292.P2529149930798017396

`A023733(A045151(n+1)+1)`
-/

namespace A045292.P2529149930798017396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A045151 (n + 1) + 1).toNat

end

end A045292.P2529149930798017396

/-! ## A045292.P16103274768555849534

`A003485(A045232(n+1))`
-/

namespace A045292.P16103274768555849534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A045232 (n + 1)).toNat

end

end A045292.P16103274768555849534

/-! ## A045292.P10962803964771426809

`A004275(A045232(n+1)+1)`
-/

namespace A045292.P10962803964771426809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A045232 (n + 1) + 1).toNat

end

end A045292.P10962803964771426809

/-! ## A045292.P15778672782818966393

`A042963(A045232(n+1)+1)`
-/

namespace A045292.P15778672782818966393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A045232 (n + 1) + 1).toNat

end

end A045292.P15778672782818966393

/-! ## A045292.P13938511873016005271

`A092535(A045232(n+1)+1)`
-/

namespace A045292.P13938511873016005271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A045232 (n + 1) + 1).toNat

end

end A045292.P13938511873016005271

/-!
# A045293: Numbers whose base-5 representation contains no 3's and exactly one 4.

The programs for A045293, the canonical program `A045293.P1393092678983169783` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045293 has offset 1).

The definition of A045293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045293.P1393092678983169783

`A023733(A023718(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045293

/-- `A023733(A023718(n+1)+1)` -/
def P1393092678983169783.Spec : Prop :=
  ∀ n, P1393092678983169783.a n = A045293 (n + 1)

theorem P1393092678983169783.correct : P1393092678983169783.Spec := by
  intro n
  simp only [A045293, Nat.add_sub_cancel]

end A045293

/-! ## A045293.P12158142703751805411

`∩[A023733(n+1), A023738(n+1)]`
-/

namespace A045293.P12158142703751805411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045293.P12158142703751805411

namespace A045293

/-- `∩[A023733(n+1), A023738(n+1)]` -/
def P12158142703751805411.Spec : Prop :=
  ∀ n, (P12158142703751805411.a n : ℤ) = A045293 (n + 1)

end A045293

/-! ## A045293.P5680188192384186009

`eq[A000265(A338803(n)), A248640(n)]`
-/

namespace A045293.P5680188192384186009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045293.P5680188192384186009

namespace A045293

/-- `eq[A000265(A338803(n)), A248640(n)]` -/
def P5680188192384186009.Spec : Prop :=
  ∀ n, (P5680188192384186009.a n : ℤ) = A045293 (n + 1)

end A045293

/-! ## A045293.P17331227449202052303

`A023738(A187829(n+1)+A002264(n))`
-/

namespace A045293.P17331227449202052303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (A187829 (n + 1) + A002264 n).toNat

end

end A045293.P17331227449202052303

namespace A045293

/-- `A023738(A187829(n+1)+A002264(n))` -/
def P17331227449202052303.Spec : Prop :=
  ∀ n, P17331227449202052303.a n = A045293 (n + 1)

end A045293

/-!
# A045294: Numbers whose base-5 representation contains no 3's and exactly two 4's.

The programs for A045294, the canonical program `A045294.P1182473461957205585` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045294 has offset 1).

The definition of A045294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045294.P1182473461957205585

`A023733(A023719(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045294

/-- `A023733(A023719(n+1)+1)` -/
def P1182473461957205585.Spec : Prop :=
  ∀ n, P1182473461957205585.a n = A045294 (n + 1)

theorem P1182473461957205585.correct : P1182473461957205585.Spec := by
  intro n
  simp only [A045294, Nat.add_sub_cancel]

end A045294

/-! ## A045294.P5025350356601553649

`∩[A023733(n+1), A023739(n+1)]`
-/

namespace A045294.P5025350356601553649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045294.P5025350356601553649

namespace A045294

/-- `∩[A023733(n+1), A023739(n+1)]` -/
def P5025350356601553649.Spec : Prop :=
  ∀ n, (P5025350356601553649.a n : ℤ) = A045294 (n + 1)

end A045294

/-! ## A045294.P7952001144666793927

`A023739(A042968(n+1)%A178374(n+1))`
-/

namespace A045294.P7952001144666793927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (Int.tmod (A042968 (n + 1)) (A178374 (n + 1))).toNat

end

end A045294.P7952001144666793927

namespace A045294

/-- `A023739(A042968(n+1)%A178374(n+1))` -/
def P7952001144666793927.Spec : Prop :=
  ∀ n, P7952001144666793927.a n = A045294 (n + 1)

end A045294

/-! ## A045294.P13221812121129837771

`A023739(A042968(n+1)%A089317(n))`
-/

namespace A045294.P13221812121129837771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023739 (Int.tmod (A042968 (n + 1)) (A089317 n)).toNat

end

end A045294.P13221812121129837771

namespace A045294

/-- `A023739(A042968(n+1)%A089317(n))` -/
def P13221812121129837771.Spec : Prop :=
  ∀ n, P13221812121129837771.a n = A045294 (n + 1)

end A045294

/-!
# A045295: Numbers whose base-5 representation contains no 3's and exactly three 4's.

The programs for A045295, there is no canonical definition to state claims against.
-/

/-! ## A045295.P11425609869507477702

`A023733(A023720(n+1)+1)`
-/

namespace A045295.P11425609869507477702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (A023720 (n + 1) + 1).toNat

end

end A045295.P11425609869507477702

/-! ## A045295.P11157532501363000567

`∩[A023733(n+1), A023740(n+1)]`
-/

namespace A045295.P11157532501363000567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045295.P11157532501363000567

/-! ## A045295.P7465017059290383900

`A023740(A042968(n+1)%A192288(n+1))`
-/

namespace A045295.P7465017059290383900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (Int.tmod (A042968 (n + 1)) (A192288 (n + 1))).toNat

end

end A045295.P7465017059290383900

/-! ## A045295.P17581527800881065406

`A023740(A004396(2*n+1)%A192288(n+1))`
-/

namespace A045295.P17581527800881065406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (Int.tmod (A004396 (2 * n + 1)) (A192288 (n + 1))).toNat

end

end A045295.P17581527800881065406

/-! ## A045295.P11618828789240446702

`A023740(A042968(n+1)%A141214(n))`
-/

namespace A045295.P11618828789240446702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (Int.tmod (A042968 (n + 1)) (A141214 n)).toNat

end

end A045295.P11618828789240446702

/-!
# A045296: Numbers whose base-5 representation contains exactly one 3 and no 4's.

The programs for A045296, there is no canonical definition to state claims against.
-/

/-! ## A045296.P17721292213445130335

`A037459(A023718(n+1))`
-/

namespace A045296.P17721292213445130335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023718 (n + 1)).toNat

end

end A045296.P17721292213445130335

/-! ## A045296.P12491207285072899677

`A020654(A023718(n+1)+1)`
-/

namespace A045296.P12491207285072899677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023718 (n + 1) + 1).toNat

end

end A045296.P12491207285072899677

/-! ## A045296.P12616312741064444632

`∩[A020654(n+1), A023734(n+1)]`
-/

namespace A045296.P12616312741064444632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045296.P12616312741064444632

/-! ## A045296.P424900986755100366

`∩[A023734(n+1), A037459(n+1)]`
-/

namespace A045296.P424900986755100366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045296.P424900986755100366

/-! ## A045296.P16052631437146014360

`eq[2, A194459(A004515(n))%4]`
-/

namespace A045296.P16052631437146014360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194459 (A004515 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045296.P16052631437146014360

/-!
# A045297: Numbers whose base-5 representation contains exactly one 3 and one 4.

The programs for A045297, the canonical program `A045297.P179767513394675842` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045297 has offset 1).

The definition of A045297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045297.P9673742496933842907

`∩[A023738(n+1), A039015(n+1)]`
-/

namespace A045297.P9673742496933842907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P9673742496933842907

namespace A045297

/-- `∩[A023738(n+1), A039015(n+1)]` -/
def P9673742496933842907.Spec : Prop :=
  ∀ n, (P9673742496933842907.a n : ℤ) = A045297 (n + 1)

end A045297

/-! ## A045297.P14162312932812420868

`∩[A023738(n+1), A039292(n+1)]`
-/

namespace A045297.P14162312932812420868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P14162312932812420868

namespace A045297

/-- `∩[A023738(n+1), A039292(n+1)]` -/
def P14162312932812420868.Spec : Prop :=
  ∀ n, (P14162312932812420868.a n : ℤ) = A045297 (n + 1)

end A045297

/-! ## A045297.P179767513394675842

`∩[A023734(n+1), A023738(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045297

/-- `∩[A023734(n+1), A023738(n+1)]` -/
def P179767513394675842.Spec : Prop :=
  ∀ n, (P179767513394675842.a n : ℤ) = A045297 (n + 1)

theorem P179767513394675842.correct : P179767513394675842.Spec := by
  intro n
  simp only [A045297, Nat.add_sub_cancel]

end A045297

/-! ## A045297.P2234631310763639451

`∩[A023734(n+1), A039015(n+1)]`
-/

namespace A045297.P2234631310763639451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P2234631310763639451

namespace A045297

/-- `∩[A023734(n+1), A039015(n+1)]` -/
def P2234631310763639451.Spec : Prop :=
  ∀ n, (P2234631310763639451.a n : ℤ) = A045297 (n + 1)

end A045297

/-! ## A045297.P8162585689248452057

`∩[A023734(n+1), A039292(n+1)]`
-/

namespace A045297.P8162585689248452057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045297.P8162585689248452057

namespace A045297

/-- `∩[A023734(n+1), A039292(n+1)]` -/
def P8162585689248452057.Spec : Prop :=
  ∀ n, (P8162585689248452057.a n : ℤ) = A045297 (n + 1)

end A045297

/-!
# A045298: Numbers having one 3 and two 4's in base 5.

The programs for A045298, the canonical program `A045298.P17596791945294144147` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045298 has offset 1).

The definition of A045298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045298.P17596791945294144147

`∩[A023734(n+1), A023739(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045298

/-- `∩[A023734(n+1), A023739(n+1)]` -/
def P17596791945294144147.Spec : Prop :=
  ∀ n, (P17596791945294144147.a n : ℤ) = A045298 (n + 1)

theorem P17596791945294144147.correct : P17596791945294144147.Spec := by
  intro n
  simp only [A045298, Nat.add_sub_cancel]

end A045298

/-! ## A045298.P2589427016594425655

`or(A045204(3*n+4), A045872(2*n+1))`
-/

namespace A045298.P2589427016594425655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045204 (3 * n + 4)) (A045872 (2 * n + 1 + 10))

end

end A045298.P2589427016594425655

namespace A045298

/-- `or(A045204(3*n+4), A045872(2*n+1))` -/
def P2589427016594425655.Spec : Prop :=
  ∀ n, P2589427016594425655.a n = A045298 (n + 1)

end A045298

/-! ## A045298.P1779368985040029924

`A031475(3*n+4)+A000007(A051923(n))`
-/

namespace A045298.P1779368985040029924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031475 (3 * n + 4) + A000007 (A051923 n).toNat

end

end A045298.P1779368985040029924

namespace A045298

/-- `A031475(3*n+4)+A000007(A051923(n))` -/
def P1779368985040029924.Spec : Prop :=
  ∀ n, P1779368985040029924.a n = A045298 (n + 1)

end A045298

/-!
# A045299: Numbers whose base-5 representation contains exactly one 3 and three 4's.

The programs for A045299, there is no canonical definition to state claims against.
-/

/-! ## A045299.P9938595896686176379

`∩[A023734(n+1), A023740(n+1)]`
-/

namespace A045299.P9938595896686176379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045299.P9938595896686176379

/-! ## A045299.P7323683715494858928

`A031476(3*n+4)%A287247(A100265(n))`
-/

namespace A045299.P7323683715494858928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031476 (3 * n + 4)) (A287247 (A100265 n).toNat)

end

end A045299.P7323683715494858928

/-! ## A045299.P3322367010363805899

`A031476(3*n+4)+A000007(A001599(n+1))`
-/

namespace A045299.P3322367010363805899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031476 (3 * n + 4) + A000007 (A001599 (n + 1)).toNat

end

end A045299.P3322367010363805899

/-! ## A045299.P18012177716933943030

`A031476(3*n+4)+A000007(A194615(n+1))`
-/

namespace A045299.P18012177716933943030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031476 (3 * n + 4) + A000007 (A194615 (n + 1)).toNat

end

end A045299.P18012177716933943030

/-! ## A045299.P1902391891066499440

`A185013(A016061(2*n))+A031476(3*n+4)`
-/

namespace A045299.P1902391891066499440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A016061 (2 * n)).toNat + A031476 (3 * n + 4)

end

end A045299.P1902391891066499440

