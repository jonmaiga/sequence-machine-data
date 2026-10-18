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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A029600: Numbers in the (2,3)-Pascal triangle (by row).

The programs for A029600, the canonical program `A029600.P6364138794063411097` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029600 has offset 0).

The definition of A029600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029600.P15314814215953961738

`A029618(n)+A008482(n)`
-/

namespace A029600.P15314814215953961738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + A008482 n

end

end A029600.P15314814215953961738

namespace A029600

/-- `A029618(n)+A008482(n)` -/
def P15314814215953961738.Spec : Prop :=
  ∀ n, P15314814215953961738.a n = A029600 n

end A029600

/-! ## A029600.P11179792069516844877

`A029618(n)-A037012(n)`
-/

namespace A029600.P11179792069516844877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n - A037012 n

end

end A029600.P11179792069516844877

namespace A029600

/-- `A029618(n)-A037012(n)` -/
def P11179792069516844877.Spec : Prop :=
  ∀ n, P11179792069516844877.a n = A029600 n

end A029600

/-! ## A029600.P6364138794063411097

`A134059(n)-A097805(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029600

/-- `A134059(n)-A097805(n+1)` -/
def P6364138794063411097.Spec : Prop :=
  ∀ n, P6364138794063411097.a n = A029600 n

theorem P6364138794063411097.correct : P6364138794063411097.Spec := by
  intro n
  simp only [A029600]

end A029600

/-! ## A029600.P4413134859156481687

`A093561(n)+2*A008482(n)`
-/

namespace A029600.P4413134859156481687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n + 2 * A008482 n

end

end A029600.P4413134859156481687

namespace A029600

/-- `A093561(n)+2*A008482(n)` -/
def P4413134859156481687.Spec : Prop :=
  ∀ n, P4413134859156481687.a n = A029600 n

end A029600

/-! ## A029600.P10691670351604186368

`2*A029618(n)-A093561(n)`
-/

namespace A029600.P10691670351604186368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029618 n - A093561 n

end

end A029600.P10691670351604186368

namespace A029600

/-- `2*A029618(n)-A093561(n)` -/
def P10691670351604186368.Spec : Prop :=
  ∀ n, P10691670351604186368.a n = A029600 n

end A029600

/-! ## A029600.P8863762344927343442

`A093561(n)-2*A037012(n)`
-/

namespace A029600.P8863762344927343442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n - 2 * A037012 n

end

end A029600.P8863762344927343442

namespace A029600

/-- `A093561(n)-2*A037012(n)` -/
def P8863762344927343442.Spec : Prop :=
  ∀ n, P8863762344927343442.a n = A029600 n

end A029600

/-! ## A029600.P14692567842436131174

`A134058(n)+A097805(A000007(n)+n)`
-/

namespace A029600.P14692567842436131174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + A097805 (A000007 n + (n : ℤ)).toNat

end

end A029600.P14692567842436131174

namespace A029600

/-- `A134058(n)+A097805(A000007(n)+n)` -/
def P14692567842436131174.Spec : Prop :=
  ∀ n, P14692567842436131174.a n = A029600 n

end A029600

/-! ## A029600.P6961299554680418106

`A007318(n)+A132200(n)-A029618(n)`
-/

namespace A029600.P6961299554680418106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132200 n - A029618 n)

end

end A029600.P6961299554680418106

namespace A029600

/-- `A007318(n)+A132200(n)-A029618(n)` -/
def P6961299554680418106.Spec : Prop :=
  ∀ n, P6961299554680418106.a n = A029600 n

end A029600

/-! ## A029600.P542556167616954382

`A029618(n)+A097805(n)-A071919(n)`
-/

namespace A029600.P542556167616954382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + (A097805 n - A071919 n)

end

end A029600.P542556167616954382

namespace A029600

/-- `A029618(n)+A097805(n)-A071919(n)` -/
def P542556167616954382.Spec : Prop :=
  ∀ n, P542556167616954382.a n = A029600 n

end A029600

/-! ## A029600.P3524181753340198926

`A097805(n)+A132200(n)-A134058(n)`
-/

namespace A029600.P3524181753340198926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A132200 n - A134058 n)

end

end A029600.P3524181753340198926

namespace A029600

/-- `A097805(n)+A132200(n)-A134058(n)` -/
def P3524181753340198926.Spec : Prop :=
  ∀ n, P3524181753340198926.a n = A029600 n

end A029600

/-! ## A029600.P7059617313787955557

`A134058(n)-(A000007(n)-A097805(n))`
-/

namespace A029600.P7059617313787955557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n - (A000007 n - A097805 n)

end

end A029600.P7059617313787955557

namespace A029600

/-- `A134058(n)-(A000007(n)-A097805(n))` -/
def P7059617313787955557.Spec : Prop :=
  ∀ n, P7059617313787955557.a n = A029600 n

end A029600

/-! ## A029600.P3393845154448944140

`A029618(n+1)+A134059(n)-A134059(n+1)`
-/

namespace A029600.P3393845154448944140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (n + 1) + (A134059 n - A134059 (n + 1))

end

end A029600.P3393845154448944140

namespace A029600

/-- `A029618(n+1)+A134059(n)-A134059(n+1)` -/
def P3393845154448944140.Spec : Prop :=
  ∀ n, P3393845154448944140.a n = A029600 n

end A029600

/-! ## A029600.P12765015412702165753

`A029618(A061579(n))`
-/

namespace A029600.P12765015412702165753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (A061579 n).toNat

end

end A029600.P12765015412702165753

namespace A029600

/-- `A029618(A061579(n))` -/
def P12765015412702165753.Spec : Prop :=
  ∀ n, P12765015412702165753.a n = A029600 n

end A029600

/-! ## A029600.P5091657699386551978

`A135089(n)-A163300(A029618(n))/2`
-/

namespace A029600.P5091657699386551978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135089 n : ℚ) - (A163300 (A029618 n).toNat : ℚ) / 2

end

end A029600.P5091657699386551978

namespace A029600

/-- `A135089(n)-A163300(A029618(n))/2` -/
def P5091657699386551978.Spec : Prop :=
  ∀ n, P5091657699386551978.a n = (A029600 n : ℚ)

end A029600

/-!
# A029602: Numbers in the (2,3)-Pascal triangle A029600 that are different from 2.

The programs for A029602, the canonical program `A029602.P5566939383577341015` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029602 has offset 0).

The definition of A029602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029602.P5566939383577341015

`A029600(A080036(n)-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029602

/-- `A029600(A080036(n)-1)` -/
def P5566939383577341015.Spec : Prop :=
  ∀ n, P5566939383577341015.a n = A029602 n

theorem P5566939383577341015.correct : P5566939383577341015.Spec := by
  intro n
  simp only [A029602]

end A029602

/-! ## A029602.P5451615817231126921

`A029600(eq[0, A073424(n)])`
-/

namespace A029602.P5451615817231126921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029602.P5451615817231126921

namespace A029602

/-- `A029600(eq[0, A073424(n)])` -/
def P5451615817231126921.Spec : Prop :=
  ∀ n, P5451615817231126921.a n = A029602 n

end A029602

/-! ## A029602.P6943864102637118632

`A029600(lt[1, A096956(n)])`
-/

namespace A029602.P6943864102637118632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029602.P6943864102637118632

namespace A029602

/-- `A029600(lt[1, A096956(n)])` -/
def P6943864102637118632.Spec : Prop :=
  ∀ n, P6943864102637118632.a n = A029602 n

end A029602

/-! ## A029602.P11363153049639248418

`A029600(A123578(n)+n)`
-/

namespace A029602.P11363153049639248418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A123578 n + (n : ℤ)).toNat

end

end A029602.P11363153049639248418

namespace A029602

/-- `A029600(A123578(n)+n)` -/
def P11363153049639248418.Spec : Prop :=
  ∀ n, P11363153049639248418.a n = A029602 n

end A029602

/-! ## A029602.P3257203410801541522

`A029600(∑[char[A000124(n)]]+n)`
-/

namespace A029602.P3257203410801541522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A029602.P3257203410801541522

namespace A029602

/-- `A029600(∑[char[A000124(n)]]+n)` -/
def P3257203410801541522.Spec : Prop :=
  ∀ n, P3257203410801541522.a n = A029602 n

end A029602

/-! ## A029602.P14253883166576977943

`A029600(eq[0, n*A198954(n)])`
-/

namespace A029602.P14253883166576977943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029602.P14253883166576977943

namespace A029602

/-- `A029600(eq[0, n*A198954(n)])` -/
def P14253883166576977943.Spec : Prop :=
  ∀ n, P14253883166576977943.a n = A029602 n

end A029602

/-! ## A029602.P9105710202233258009

`A029600(eq[A103452(n)², A103452(n)])`
-/

namespace A029602.P9105710202233258009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P9105710202233258009

namespace A029602

/-- `A029600(eq[A103452(n)², A103452(n)])` -/
def P9105710202233258009.Spec : Prop :=
  ∀ n, P9105710202233258009.a n = A029602 n

end A029602

/-! ## A029602.P4525375190340985930

`A029600(eq[A198954(n)², A198954(n)])`
-/

namespace A029602.P4525375190340985930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P4525375190340985930

namespace A029602

/-- `A029600(eq[A198954(n)², A198954(n)])` -/
def P4525375190340985930.Spec : Prop :=
  ∀ n, P4525375190340985930.a n = A029602 n

end A029602

/-! ## A029602.P18090857745641900072

`A029600(eq[A010054(n), A198954(n)])`
-/

namespace A029602.P18090857745641900072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P18090857745641900072

namespace A029602

/-- `A029600(eq[A010054(n), A198954(n)])` -/
def P18090857745641900072.Spec : Prop :=
  ∀ n, P18090857745641900072.a n = A029602 n

end A029602

/-! ## A029602.P1471879198891057295

`A029600(lt[0, A191532(n)])`
-/

namespace A029602.P1471879198891057295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029602.P1471879198891057295

namespace A029602

/-- `A029600(lt[0, A191532(n)])` -/
def P1471879198891057295.Spec : Prop :=
  ∀ n, P1471879198891057295.a n = A029602 n

end A029602

/-! ## A029602.P4344829152276959856

`A029600(lt[1, A029635(n)])`
-/

namespace A029602.P4344829152276959856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029602.P4344829152276959856

namespace A029602

/-- `A029600(lt[1, A029635(n)])` -/
def P4344829152276959856.Spec : Prop :=
  ∀ n, P4344829152276959856.a n = A029602 n

end A029602

/-! ## A029602.P17222529917950413756

`A029600(eq[1, A130296(n+1)])`
-/

namespace A029602.P17222529917950413756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029602.P17222529917950413756

namespace A029602

/-- `A029600(eq[1, A130296(n+1)])` -/
def P17222529917950413756.Spec : Prop :=
  ∀ n, P17222529917950413756.a n = A029602 n

end A029602

/-! ## A029602.P16375464880324591782

`A029600(eq[A000007(n), A010054(n)])`
-/

namespace A029602.P16375464880324591782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P16375464880324591782

namespace A029602

/-- `A029600(eq[A000007(n), A010054(n)])` -/
def P16375464880324591782.Spec : Prop :=
  ∀ n, P16375464880324591782.a n = A029602 n

end A029602

/-! ## A029602.P3912574296444152594

`A029600(eq[A007318(n), A132749(n)])`
-/

namespace A029602.P3912574296444152594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P3912574296444152594

namespace A029602

/-- `A029600(eq[A007318(n), A132749(n)])` -/
def P3912574296444152594.Spec : Prop :=
  ∀ n, P3912574296444152594.a n = A029602 n

end A029602

/-! ## A029602.P11033821365853235349

`A029600(eq[A010054(n+1), A103451(n)])`
-/

namespace A029602.P11033821365853235349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029602.P11033821365853235349

namespace A029602

/-- `A029600(eq[A010054(n+1), A103451(n)])` -/
def P11033821365853235349.Spec : Prop :=
  ∀ n, P11033821365853235349.a n = A029602 n

end A029602

/-! ## A029602.P8133665824251091702

`A029600(lt[2*A025581(n), A029600(n)])`
-/

namespace A029602.P8133665824251091702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029602.P8133665824251091702

namespace A029602

/-- `A029600(lt[2*A025581(n), A029600(n)])` -/
def P8133665824251091702.Spec : Prop :=
  ∀ n, P8133665824251091702.a n = A029602 n

end A029602

/-!
# A029603: Numbers in the (2,3)-Pascal triangle A029600 that are different from 3.

The programs for A029603, the canonical program `A029603.P3722168384408911614` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029603 has offset 0).

The definition of A029603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029603.P3722168384408911614

`A029600(eq[A010054(n), A103451(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029603

/-- `A029600(eq[A010054(n), A103451(n)])` -/
def P3722168384408911614.Spec : Prop :=
  ∀ n, P3722168384408911614.a n = A029603 n

theorem P3722168384408911614.correct : P3722168384408911614.Spec := by
  intro n
  simp only [A029603]

end A029603

/-! ## A029603.P1747029105045753401

`A029600(eq[1, A051340(n)])`
-/

namespace A029603.P1747029105045753401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029603.P1747029105045753401

namespace A029603

/-- `A029600(eq[1, A051340(n)])` -/
def P1747029105045753401.Spec : Prop :=
  ∀ n, P1747029105045753401.a n = A029603 n

end A029603

/-! ## A029603.P10194249703140492102

`A029600(record[n*A023532(n)])`
-/

namespace A029603.P10194249703140492102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029603.P10194249703140492102

namespace A029603

/-- `A029600(record[n*A023532(n)])` -/
def P10194249703140492102.Spec : Prop :=
  ∀ n, P10194249703140492102.a n = A029603 n

end A029603

/-! ## A029603.P17476114108176512884

`A029600(record[n/A051340(n)])`
-/

namespace A029603.P17476114108176512884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A051340 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029603.P17476114108176512884

namespace A029603

/-- `A029600(record[n/A051340(n)])` -/
def P17476114108176512884.Spec : Prop :=
  ∀ n, P17476114108176512884.a n = A029603 n

end A029603

/-! ## A029603.P14866202517240275717

`A029600(eq[0, n*A130123(n)])`
-/

namespace A029603.P14866202517240275717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029603.P14866202517240275717

namespace A029603

/-- `A029600(eq[0, n*A130123(n)])` -/
def P14866202517240275717.Spec : Prop :=
  ∀ n, P14866202517240275717.a n = A029603 n

end A029603

/-! ## A029603.P1651015214985781119

`A029600(eq[A000007(n), A023531(n)])`
-/

namespace A029603.P1651015214985781119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P1651015214985781119

namespace A029603

/-- `A029600(eq[A000007(n), A023531(n)])` -/
def P1651015214985781119.Spec : Prop :=
  ∀ n, P1651015214985781119.a n = A029603 n

end A029603

/-! ## A029603.P7481423026049101375

`A029600(eq[A000007(n), A130123(n)])`
-/

namespace A029603.P7481423026049101375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P7481423026049101375

namespace A029603

/-- `A029600(eq[A000007(n), A130123(n)])` -/
def P7481423026049101375.Spec : Prop :=
  ∀ n, P7481423026049101375.a n = A029603 n

end A029603

/-! ## A029603.P7803609520806118959

`A029600(eq[A131112(n), A132200(n)])`
-/

namespace A029603.P7803609520806118959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P7803609520806118959

namespace A029603

/-- `A029600(eq[A131112(n), A132200(n)])` -/
def P7803609520806118959.Spec : Prop :=
  ∀ n, P7803609520806118959.a n = A029603 n

end A029603

/-! ## A029603.P7364527689568948382

`A029600(eq[A131111(n), A134059(n)])`
-/

namespace A029603.P7364527689568948382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P7364527689568948382

namespace A029603

/-- `A029600(eq[A131111(n), A134059(n)])` -/
def P7364527689568948382.Spec : Prop :=
  ∀ n, P7364527689568948382.a n = A029603 n

end A029603

/-! ## A029603.P14192290135110828437

`A029600(lt[A238160(n), A029635(n)])`
-/

namespace A029603.P14192290135110828437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029603.P14192290135110828437

namespace A029603

/-- `A029600(lt[A238160(n), A029635(n)])` -/
def P14192290135110828437.Spec : Prop :=
  ∀ n, P14192290135110828437.a n = A029603 n

end A029603

/-! ## A029603.P709329177288299966

`A029600(eq[A130123(n)², A130123(n)])`
-/

namespace A029603.P709329177288299966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P709329177288299966

namespace A029603

/-- `A029600(eq[A130123(n)², A130123(n)])` -/
def P709329177288299966.Spec : Prop :=
  ∀ n, P709329177288299966.a n = A029603 n

end A029603

/-! ## A029603.P2403676193664581161

`A029600(eq[A000007(n), A010054(n+1)])`
-/

namespace A029603.P2403676193664581161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029603.P2403676193664581161

namespace A029603

/-- `A029600(eq[A000007(n), A010054(n+1)])` -/
def P2403676193664581161.Spec : Prop :=
  ∀ n, P2403676193664581161.a n = A029603 n

end A029603

/-! ## A029603.P8673143063478757001

`A029600(lt[A191532(n), A003056(n)+2])`
-/

namespace A029603.P8673143063478757001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029603.P8673143063478757001

namespace A029603

/-- `A029600(lt[A191532(n), A003056(n)+2])` -/
def P8673143063478757001.Spec : Prop :=
  ∀ n, P8673143063478757001.a n = A029603 n

end A029603

/-! ## A029603.P2175082668952092274

`A029600(lt[A191532(n)-2, A003056(n)])`
-/

namespace A029603.P2175082668952092274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029603.P2175082668952092274

namespace A029603

/-- `A029600(lt[A191532(n)-2, A003056(n)])` -/
def P2175082668952092274.Spec : Prop :=
  ∀ n, P2175082668952092274.a n = A029603 n

end A029603

/-! ## A029603.P2157258887195613445

`A029600(lt[A025581(n+1), A029600(n+1)])`
-/

namespace A029603.P2157258887195613445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029603.P2157258887195613445

namespace A029603

/-- `A029600(lt[A025581(n+1), A029600(n+1)])` -/
def P2157258887195613445.Spec : Prop :=
  ∀ n, P2157258887195613445.a n = A029603 n

end A029603

/-! ## A029603.P17434525912875526047

`A029600(record[A127367(n)]-n)`
-/

namespace A029603.P17434525912875526047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A029603.P17434525912875526047

namespace A029603

/-- `A029600(record[A127367(n)]-n)` -/
def P17434525912875526047.Spec : Prop :=
  ∀ n, P17434525912875526047.a n = A029603 n

end A029603

/-! ## A029603.P17871013966856229859

`A029600(lt[n, A288875(n)+1])`
-/

namespace A029603.P17871013966856229859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029603.P17871013966856229859

namespace A029603

/-- `A029600(lt[n, A288875(n)+1])` -/
def P17871013966856229859.Spec : Prop :=
  ∀ n, P17871013966856229859.a n = A029603 n

end A029603

/-! ## A029603.P9568011207525377444

`A029600(lt[n-1, A288875(n)])`
-/

namespace A029603.P9568011207525377444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029603.P9568011207525377444

namespace A029603

/-- `A029600(lt[n-1, A288875(n)])` -/
def P9568011207525377444.Spec : Prop :=
  ∀ n, P9568011207525377444.a n = A029603 n

end A029603

/-! ## A029603.P2886762539349950573

`A029600(lt[n, 2*A288875(n)])`
-/

namespace A029603.P2886762539349950573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029603.P2886762539349950573

namespace A029603

/-- `A029600(lt[n, 2*A288875(n)])` -/
def P2886762539349950573.Spec : Prop :=
  ∀ n, P2886762539349950573.a n = A029603 n

end A029603

/-!
# A029604: Odd numbers in the (2,3)-Pascal triangle A029600.

The programs for A029604, the canonical program `A029604.P6160767166410733694` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029604 has offset 0).

The definition of A029604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029604.P6160767166410733694

`A029600(eq[1, A029600(n)%2])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029604

/-- `A029600(eq[1, A029600(n)%2])` -/
def P6160767166410733694.Spec : Prop :=
  ∀ n, P6160767166410733694.a n = A029604 n

theorem P6160767166410733694.correct : P6160767166410733694.Spec := by
  intro n
  simp only [A029604]

end A029604

/-! ## A029604.P15332839985435594673

`A029600(eq[1, gcd(2, A029600(n))])`
-/

namespace A029604.P15332839985435594673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029604.P15332839985435594673

namespace A029604

/-- `A029600(eq[1, gcd(2, A029600(n))])` -/
def P15332839985435594673.Spec : Prop :=
  ∀ n, P15332839985435594673.a n = A029604 n

end A029604

/-! ## A029604.P720531000694976599

`A029600(lt[0, and(1, A029600(n))])`
-/

namespace A029604.P720531000694976599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029604.P720531000694976599

namespace A029604

/-- `A029600(lt[0, and(1, A029600(n))])` -/
def P720531000694976599.Spec : Prop :=
  ∀ n, P720531000694976599.a n = A029604 n

end A029604

/-! ## A029604.P13436722874694292409

`A029600(eq[1, and(1, A029600(n))])`
-/

namespace A029604.P13436722874694292409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029600 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P13436722874694292409

namespace A029604

/-- `A029600(eq[1, and(1, A029600(n))])` -/
def P13436722874694292409.Spec : Prop :=
  ∀ n, P13436722874694292409.a n = A029604 n

end A029604

/-! ## A029604.P14490580135754751274

`A029600(record[(n+1)*A029600(n+1)%2])`
-/

namespace A029604.P14490580135754751274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A029600 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029604.P14490580135754751274

namespace A029604

/-- `A029600(record[(n+1)*A029600(n+1)%2])` -/
def P14490580135754751274.Spec : Prop :=
  ∀ n, P14490580135754751274.a n = A029604 n

end A029604

/-! ## A029604.P9652053508695859177

`A029600(eq[1, A123726(A029600(n))])`
-/

namespace A029604.P9652053508695859177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 (A029600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P9652053508695859177

namespace A029604

/-- `A029600(eq[1, A123726(A029600(n))])` -/
def P9652053508695859177.Spec : Prop :=
  ∀ n, P9652053508695859177.a n = A029604 n

end A029604

/-! ## A029604.P14536575103529572741

`A029600(eq[1, A010132(A029600(n))])`
-/

namespace A029604.P14536575103529572741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (A029600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P14536575103529572741

namespace A029604

/-- `A029600(eq[1, A010132(A029600(n))])` -/
def P14536575103529572741.Spec : Prop :=
  ∀ n, P14536575103529572741.a n = A029604 n

end A029604

/-! ## A029604.P13556594535766708259

`A029600(eq[1, A010146(A029600(n))])`
-/

namespace A029604.P13556594535766708259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (A029600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P13556594535766708259

namespace A029604

/-- `A029600(eq[1, A010146(A029600(n))])` -/
def P13556594535766708259.Spec : Prop :=
  ∀ n, P13556594535766708259.a n = A029604 n

end A029604

/-! ## A029604.P5426756328828064545

`A029600(eq[1, A040001(A029600(n))])`
-/

namespace A029604.P5426756328828064545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A029600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P5426756328828064545

namespace A029604

/-- `A029600(eq[1, A040001(A029600(n))])` -/
def P5426756328828064545.Spec : Prop :=
  ∀ n, P5426756328828064545.a n = A029604 n

end A029604

/-! ## A029604.P6681724168006740764

`A029600(eq[2, A040015(A029600(n))])`
-/

namespace A029604.P6681724168006740764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 (A029600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029604.P6681724168006740764

namespace A029604

/-- `A029600(eq[2, A040015(A029600(n))])` -/
def P6681724168006740764.Spec : Prop :=
  ∀ n, P6681724168006740764.a n = A029604 n

end A029604

/-!
# A029605: Even numbers in the (2,3)-Pascal triangle A029600.

The programs for A029605, the canonical program `A029605.P7080579544809329854` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029605 has offset 0).

The definition of A029605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9066 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029605.P14994684779407429263

`2*A051433(n)`
-/

namespace A029605.P14994684779407429263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051433 n

end

end A029605.P14994684779407429263

namespace A029605

/-- `2*A051433(n)` -/
def P14994684779407429263.Spec : Prop :=
  ∀ n, P14994684779407429263.a n = A029605 n

end A029605

/-! ## A029605.P7880344193065505180

`A051433(n-char[1])+A051433(n)`
-/

namespace A029605.P7880344193065505180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 (n - (if ∃ j, f1 j = n then 1 else 0)) + A051433 n

end

end A029605.P7880344193065505180

namespace A029605

/-- `A051433(n-char[1])+A051433(n)` -/
def P7880344193065505180.Spec : Prop :=
  ∀ n, P7880344193065505180.a n = A029605 n

end A029605

/-! ## A029605.P12323597240364302199

`A051433(n)+A051433(n)^(A000040(n+1)%2)`
-/

namespace A029605.P12323597240364302199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051433 n : ℚ) + (A051433 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A029605.P12323597240364302199

namespace A029605

/-- `A051433(n)+A051433(n)^(A000040(n+1)%2)` -/
def P12323597240364302199.Spec : Prop :=
  ∀ n, P12323597240364302199.a n = (A029605 n : ℚ)

end A029605

/-! ## A029605.P8032162018570417553

`A051433(n)+A051433(n)^gcd(5, A031370(n+1))`
-/

namespace A029605.P8032162018570417553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n + A051433 n ^ Int.gcd 5 (A031370 (n + 1))

end

end A029605.P8032162018570417553

namespace A029605

/-- `A051433(n)+A051433(n)^gcd(5, A031370(n+1))` -/
def P8032162018570417553.Spec : Prop :=
  ∀ n, P8032162018570417553.a n = A029605 n

end A029605

/-! ## A029605.P3986971250091034332

`A051433(n)+A051433(n)/A003415(A020639(n+2))`
-/

namespace A029605.P3986971250091034332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051433 n : ℚ) + (A051433 n : ℚ) / (A003415 (A020639 (n + 2)).toNat : ℚ)

end

end A029605.P3986971250091034332

namespace A029605

/-- `A051433(n)+A051433(n)/A003415(A020639(n+2))` -/
def P3986971250091034332.Spec : Prop :=
  ∀ n, P3986971250091034332.a n = (A029605 n : ℚ)

end A029605

/-! ## A029605.P7080579544809329854

`A029600(eq[2, gcd(2, A029600(n))])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029605

/-- `A029600(eq[2, gcd(2, A029600(n))])` -/
def P7080579544809329854.Spec : Prop :=
  ∀ n, P7080579544809329854.a n = A029605 n

theorem P7080579544809329854.correct : P7080579544809329854.Spec := by
  intro n
  simp only [A029605]

end A029605

/-! ## A029605.P12275615431863823011

`A029600(lt[and(1, A029600(n)), 1])`
-/

namespace A029605.P12275615431863823011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029600 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029605.P12275615431863823011

namespace A029605

/-- `A029600(lt[and(1, A029600(n)), 1])` -/
def P12275615431863823011.Spec : Prop :=
  ∀ n, P12275615431863823011.a n = A029605 n

end A029605

/-! ## A029605.P56260973111988910

`A029603(lt[and(1, A029603(n)), 1])`
-/

namespace A029605.P56260973111988910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029603 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029605.P56260973111988910

namespace A029605

/-- `A029603(lt[and(1, A029603(n)), 1])` -/
def P56260973111988910.Spec : Prop :=
  ∀ n, P56260973111988910.a n = A029605 n

end A029605

/-! ## A029605.P9560037482555107703

`A051433(n)+A051433(n)+A002262(∑[n])`
-/

namespace A029605.P9560037482555107703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n + (A051433 n + A002262 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A029605.P9560037482555107703

namespace A029605

/-- `A051433(n)+A051433(n)+A002262(∑[n])` -/
def P9560037482555107703.Spec : Prop :=
  ∀ n, P9560037482555107703.a n = A029605 n

end A029605

/-! ## A029605.P10905716897112311357

`A004277(A051433(n))`
-/

namespace A029605.P10905716897112311357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051433 n).toNat

end

end A029605.P10905716897112311357

namespace A029605

/-- `A004277(A051433(n))` -/
def P10905716897112311357.Spec : Prop :=
  ∀ n, P10905716897112311357.a n = A029605 n

end A029605

/-!
# A029606: Odd numbers in the (2,3)-Pascal triangle A029600 that are different from 3.

The programs for A029606, the canonical program `A029606.P4750095902787503063` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029606 has offset 0).

The definition of A029606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029606.P4750095902787503063

`A029604(lt[A319998(n+1), A029652(n+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029606

/-- `A029604(lt[A319998(n+1), A029652(n+1)])` -/
def P4750095902787503063.Spec : Prop :=
  ∀ n, P4750095902787503063.a n = A029606 n

theorem P4750095902787503063.correct : P4750095902787503063.Spec := by
  intro n
  simp only [A029606]

end A029606

/-! ## A029606.P6227990069921433566

`A029604(lt[n, A029652(n+1)²])`
-/

namespace A029606.P6227990069921433566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029606.P6227990069921433566

namespace A029606

/-- `A029604(lt[n, A029652(n+1)²])` -/
def P6227990069921433566.Spec : Prop :=
  ∀ n, P6227990069921433566.a n = A029606 n

end A029606

/-! ## A029606.P6703548342135833421

`A029603(lt[0, and(1, A029603(n))])`
-/

namespace A029606.P6703548342135833421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029603 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029606.P6703548342135833421

namespace A029606

/-- `A029603(lt[0, and(1, A029603(n))])` -/
def P6703548342135833421.Spec : Prop :=
  ∀ n, P6703548342135833421.a n = A029606 n

end A029606

/-! ## A029606.P8034767890951969489

`filter[A029603(n), A000035(#)]`
-/

namespace A029606.P8034767890951969489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029606.P8034767890951969489

namespace A029606

/-- `filter[A029603(n), A000035(#)]` -/
def P8034767890951969489.Spec : Prop :=
  ∀ n, P8034767890951969489.a n = A029606 n

end A029606

/-! ## A029606.P4195953074643240098

`filter[A029604(n), A267683(#)]`
-/

namespace A029606.P4195953074643240098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A029606.P4195953074643240098

namespace A029606

/-- `filter[A029604(n), A267683(#)]` -/
def P4195953074643240098.Spec : Prop :=
  ∀ n, P4195953074643240098.a n = A029606 n

end A029606

/-!
# A029607: Even numbers in the (2,3)-Pascal triangle A029600 that are different from 2.

The programs for A029607, the canonical program `A029607.P1574991405031157313` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029607 has offset 1).

The definition of A029607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029607.P5112796916891210396

`2*A051434(n)`
-/

namespace A029607.P5112796916891210396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051434 n

end

end A029607.P5112796916891210396

namespace A029607

/-- `2*A051434(n)` -/
def P5112796916891210396.Spec : Prop :=
  ∀ n, P5112796916891210396.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P13430951324458840228

`2*(A051429(n)+sqrt(A014727(n)))`
-/

namespace A029607.P13430951324458840228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A051429 n : ℝ) + Real.sqrt (A014727 n : ℝ))

end

end A029607.P13430951324458840228

namespace A029607

/-- `2*(A051429(n)+sqrt(A014727(n)))` -/
def P13430951324458840228.Spec : Prop :=
  ∀ n, P13430951324458840228.a n = (A029607 (n + 1) : ℝ)

end A029607

/-! ## A029607.P15121566240419124637

`2*(A051429(n)+A014428(n+1))`
-/

namespace A029607.P15121566240419124637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051429 n + A014428 (n + 1))

end

end A029607.P15121566240419124637

namespace A029607

/-- `2*(A051429(n)+A014428(n+1))` -/
def P15121566240419124637.Spec : Prop :=
  ∀ n, P15121566240419124637.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P17376003019616830019

`A051434(lcm(n, A033999(n)))+A051434(n)`
-/

namespace A029607.P17376003019616830019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 (Int.lcm (n : ℤ) (A033999 n)) + A051434 n

end

end A029607.P17376003019616830019

namespace A029607

/-- `A051434(lcm(n, A033999(n)))+A051434(n)` -/
def P17376003019616830019.Spec : Prop :=
  ∀ n, P17376003019616830019.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P16295422053728989463

`A051434(n)+A051434(n)+A000007(A188462(n+1))`
-/

namespace A029607.P16295422053728989463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n + (A051434 n + A000007 (A188462 (n + 1)).toNat)

end

end A029607.P16295422053728989463

namespace A029607

/-- `A051434(n)+A051434(n)+A000007(A188462(n+1))` -/
def P16295422053728989463.Spec : Prop :=
  ∀ n, P16295422053728989463.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P1574991405031157313

`A029605(lt[2, A029605(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029607

/-- `A029605(lt[2, A029605(n)])` -/
def P1574991405031157313.Spec : Prop :=
  ∀ n, P1574991405031157313.a n = A029607 (n + 1)

theorem P1574991405031157313.correct : P1574991405031157313.Spec := by
  intro n
  simp only [A029607, Nat.add_sub_cancel]

end A029607

/-! ## A029607.P3078278885322191880

`2*A051433(lt[1, A051433(n)])`
-/

namespace A029607.P3078278885322191880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029607.P3078278885322191880

namespace A029607

/-- `2*A051433(lt[1, A051433(n)])` -/
def P3078278885322191880.Spec : Prop :=
  ∀ n, P3078278885322191880.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P14109089456671405813

`2*(A051429(n)+A007318(A268232(n+1)))`
-/

namespace A029607.P14109089456671405813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051429 n + A007318 (A268232 (n + 1)).toNat)

end

end A029607.P14109089456671405813

namespace A029607

/-- `2*(A051429(n)+A007318(A268232(n+1)))` -/
def P14109089456671405813.Spec : Prop :=
  ∀ n, P14109089456671405813.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P11334098467993722158

`A249757(A268232(n+1))`
-/

namespace A029607.P11334098467993722158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249757 (A268232 (n + 1)).toNat

end

end A029607.P11334098467993722158

namespace A029607

/-- `A249757(A268232(n+1))` -/
def P11334098467993722158.Spec : Prop :=
  ∀ n, P11334098467993722158.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P15888458018719942090

`A249757(eq[1, A219463(n)])`
-/

namespace A029607.P15888458018719942090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029607.P15888458018719942090

namespace A029607

/-- `A249757(eq[1, A219463(n)])` -/
def P15888458018719942090.Spec : Prop :=
  ∀ n, P15888458018719942090.a n = A029607 (n + 1)

end A029607

/-! ## A029607.P2601457331032996075

`A051434(n)+A055671(A055671(n))+A051434(n)`
-/

namespace A029607.P2601457331032996075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051434 n + (A055671 (A055671 n).toNat + A051434 n)

end

end A029607.P2601457331032996075

namespace A029607

/-- `A051434(n)+A055671(A055671(n))+A051434(n)` -/
def P2601457331032996075.Spec : Prop :=
  ∀ n, P2601457331032996075.a n = A029607 (n + 1)

end A029607

/-!
# A029608: Distinct odd numbers in (2,3)-Pascal triangle A029600.

The programs for A029608, there is no canonical definition to state claims against.
-/

/-! ## A029608.P15262750607490351028

`A029601(eq[1, gcd(2, A029601(n))])`
-/

namespace A029608.P15262750607490351028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029601 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029608.P15262750607490351028

/-! ## A029608.P11212687398642149046

`A029601(eq[1, and(1, A029601(n))])`
-/

namespace A029608.P11212687398642149046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029601 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029608.P11212687398642149046

/-! ## A029608.P12638035463165881712

`A029601(record[n*and(1, A029601(n))])`
-/

namespace A029608.P12638035463165881712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A029601 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029601 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029608.P12638035463165881712

/-! ## A029608.P12383523048560652138

`filter[A029601(n), A000035(#)]`
-/

namespace A029608.P12383523048560652138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029608.P12383523048560652138

/-! ## A029608.P6916256902313401636

`A000005(eq[n, A165417(n)]²)`
-/

namespace A029608.P6916256902313401636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A029608.P6916256902313401636

/-!
# A029609: Central numbers in the (2,3)-Pascal triangle A029600.

The programs for A029609, the canonical program `A029609.P12791470884905269588` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029609 has offset 0).

The definition of A029609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029609.P2343641343951566819

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A029609.P2343641343951566819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A029609.P2343641343951566819

namespace A029609

/-- `(4-2/n)*a(n-1)` -/
def P2343641343951566819.Spec : Prop :=
  ∀ n, P2343641343951566819.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P5743537954476908570

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A029609.P5743537954476908570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A029609.P5743537954476908570

namespace A029609

/-- `2*(2-n^(-1))*a(n-1)` -/
def P5743537954476908570.Spec : Prop :=
  ∀ n, P5743537954476908570.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P16444617249680961849

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A029609.P16444617249680961849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029609.P16444617249680961849

namespace A029609

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P16444617249680961849.Spec : Prop :=
  ∀ n, P16444617249680961849.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P12791470884905269588

`A100320(n)+record[A138364(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029609

/-- `A100320(n)+record[A138364(n)]` -/
def P12791470884905269588.Spec : Prop :=
  ∀ n, P12791470884905269588.a n = A029609 n

theorem P12791470884905269588.correct : P12791470884905269588.Spec := by
  intro n
  simp only [A029609]

end A029609

/-! ## A029609.P6111675674463241847

`record[A008706(n)*A097331(n)]`
-/

namespace A029609.P6111675674463241847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029609.P6111675674463241847

namespace A029609

/-- `record[A008706(n)*A097331(n)]` -/
def P6111675674463241847.Spec : Prop :=
  ∀ n, P6111675674463241847.a n = A029609 n

end A029609

/-! ## A029609.P7061926522881023827

`2*A029651(n)-A088218(n)`
-/

namespace A029609.P7061926522881023827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029651 n - A088218 n

end

end A029609.P7061926522881023827

namespace A029609

/-- `2*A029651(n)-A088218(n)` -/
def P7061926522881023827.Spec : Prop :=
  ∀ n, P7061926522881023827.a n = A029609 n

end A029609

/-! ## A029609.P11236497090159447807

`2*A100320(n)-A029651(n)`
-/

namespace A029609.P11236497090159447807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100320 n - A029651 n

end

end A029609.P11236497090159447807

namespace A029609

/-- `2*A100320(n)-A029651(n)` -/
def P11236497090159447807.Spec : Prop :=
  ∀ n, P11236497090159447807.a n = A029609 n

end A029609

/-! ## A029609.P14698588383931413471

`(A146534(n)+A000984(n))/2`
-/

namespace A029609.P14698588383931413471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146534 n + A000984 n : ℚ) / 2

end

end A029609.P14698588383931413471

namespace A029609

/-- `(A146534(n)+A000984(n))/2` -/
def P14698588383931413471.Spec : Prop :=
  ∀ n, P14698588383931413471.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P14102343820428531230

`(A144706(n)+A100320(n))/2`
-/

namespace A029609.P14102343820428531230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144706 n + A100320 n : ℚ) / 2

end

end A029609.P14102343820428531230

namespace A029609

/-- `(A144706(n)+A100320(n))/2` -/
def P14102343820428531230.Spec : Prop :=
  ∀ n, P14102343820428531230.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P9849291024027734167

`gcd(5, A154638(n))*A088218(n)`
-/

namespace A029609.P9849291024027734167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A154638 n) : ℤ) * A088218 n

end

end A029609.P9849291024027734167

namespace A029609

/-- `gcd(5, A154638(n))*A088218(n)` -/
def P9849291024027734167.Spec : Prop :=
  ∀ n, P9849291024027734167.a n = A029609 n

end A029609

/-! ## A029609.P6612422773974295244

`A100320(n)+A037952(A004273(n))`
-/

namespace A029609.P6612422773974295244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n + A037952 (A004273 n).toNat

end

end A029609.P6612422773974295244

namespace A029609

/-- `A100320(n)+A037952(A004273(n))` -/
def P6612422773974295244.Spec : Prop :=
  ∀ n, P6612422773974295244.a n = A029609 n

end A029609

/-! ## A029609.P6086198271614021859

`A028329(n)-A126930(A004273(n))`
-/

namespace A029609.P6086198271614021859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A126930 (A004273 n).toNat

end

end A029609.P6086198271614021859

namespace A029609

/-- `A028329(n)-A126930(A004273(n))` -/
def P6086198271614021859.Spec : Prop :=
  ∀ n, P6086198271614021859.a n = A029609 n

end A029609

/-! ## A029609.P17751272043885920166

`A008706(A004273(n))*A120588(n)`
-/

namespace A029609.P17751272043885920166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A004273 n).toNat * A120588 n

end

end A029609.P17751272043885920166

namespace A029609

/-- `A008706(A004273(n))*A120588(n)` -/
def P17751272043885920166.Spec : Prop :=
  ∀ n, P17751272043885920166.a n = A029609 n

end A029609

/-! ## A029609.P1021354348618631174

`A100320(n)+A126869(A004277(n))/2`
-/

namespace A029609.P1021354348618631174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100320 n : ℚ) + (A126869 (A004277 n).toNat : ℚ) / 2

end

end A029609.P1021354348618631174

namespace A029609

/-- `A100320(n)+A126869(A004277(n))/2` -/
def P1021354348618631174.Spec : Prop :=
  ∀ n, P1021354348618631174.a n = (A029609 n : ℚ)

end A029609

/-! ## A029609.P2221397278801275208

`A029651(n)+A100320(n)-A000984(n)`
-/

namespace A029609.P2221397278801275208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n + (A100320 n - A000984 n)

end

end A029609.P2221397278801275208

namespace A029609

/-- `A029651(n)+A100320(n)-A000984(n)` -/
def P2221397278801275208.Spec : Prop :=
  ∀ n, P2221397278801275208.a n = A029609 n

end A029609

/-! ## A029609.P11620538429521070859

`A000984(n)+A144706(n)-A029651(n)`
-/

namespace A029609.P11620538429521070859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A144706 n - A029651 n)

end

end A029609.P11620538429521070859

namespace A029609

/-- `A000984(n)+A144706(n)-A029651(n)` -/
def P11620538429521070859.Spec : Prop :=
  ∀ n, P11620538429521070859.a n = A029609 n

end A029609

/-! ## A029609.P10336096349981564362

`A000984(n)+A100320(n)-A088218(n)`
-/

namespace A029609.P10336096349981564362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A100320 n - A088218 n)

end

end A029609.P10336096349981564362

namespace A029609

/-- `A000984(n)+A100320(n)-A088218(n)` -/
def P10336096349981564362.Spec : Prop :=
  ∀ n, P10336096349981564362.a n = A029609 n

end A029609

/-! ## A029609.P13276571887260477441

`A088218(n)+A144706(n)-A000984(n)`
-/

namespace A029609.P13276571887260477441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + (A144706 n - A000984 n)

end

end A029609.P13276571887260477441

namespace A029609

/-- `A088218(n)+A144706(n)-A000984(n)` -/
def P13276571887260477441.Spec : Prop :=
  ∀ n, P13276571887260477441.a n = A029609 n

end A029609

/-! ## A029609.P10266663243722344489

`A068875(n)+A165205(n)-A000108(n)`
-/

namespace A029609.P10266663243722344489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n + (A165205 n - A000108 n)

end

end A029609.P10266663243722344489

namespace A029609

/-- `A068875(n)+A165205(n)-A000108(n)` -/
def P10266663243722344489.Spec : Prop :=
  ∀ n, P10266663243722344489.a n = A029609 n

end A029609

/-! ## A029609.P4284617130770454579

`A000984(n)+A146533(n)-A100320(n)`
-/

namespace A029609.P4284617130770454579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A146533 n - A100320 n)

end

end A029609.P4284617130770454579

namespace A029609

/-- `A000984(n)+A146533(n)-A100320(n)` -/
def P4284617130770454579.Spec : Prop :=
  ∀ n, P4284617130770454579.a n = A029609 n

end A029609

/-!
# A029610: Numbers to the left of the central numbers of the (2,3)-Pascal triangle A029600.

The programs for A029610, the canonical program `A029610.P915263053335155690` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029610 has offset 0).

The definition of A029610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029610.P915263053335155690

`A029628(n)-A008315(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029610

/-- `A029628(n)-A008315(n)` -/
def P915263053335155690.Spec : Prop :=
  ∀ n, P915263053335155690.a n = A029610 n

theorem P915263053335155690.correct : P915263053335155690.Spec := by
  intro n
  simp only [A029610]

end A029610

/-! ## A029610.P8245192387159389307

`A029644(n)+A014462(n+1)`
-/

namespace A029610.P8245192387159389307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n + A014462 (n + 1)

end

end A029610.P8245192387159389307

namespace A029610

/-- `A029644(n)+A014462(n+1)` -/
def P8245192387159389307.Spec : Prop :=
  ∀ n, P8245192387159389307.a n = A029610 n

end A029610

/-! ## A029610.P4233257124491876795

`A029600(eq[0, A107131(n)])`
-/

namespace A029610.P4233257124491876795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P4233257124491876795

namespace A029610

/-- `A029600(eq[0, A107131(n)])` -/
def P4233257124491876795.Spec : Prop :=
  ∀ n, P4233257124491876795.a n = A029610 n

end A029610

/-! ## A029610.P15298607370215961688

`A029600(eq[0, A026729(n)])`
-/

namespace A029610.P15298607370215961688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P15298607370215961688

namespace A029610

/-- `A029600(eq[0, A026729(n)])` -/
def P15298607370215961688.Spec : Prop :=
  ∀ n, P15298607370215961688.a n = A029610 n

end A029610

/-! ## A029610.P2064944004181874252

`A029600(eq[0, A098158(n)])`
-/

namespace A029610.P2064944004181874252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P2064944004181874252

namespace A029610

/-- `A029600(eq[0, A098158(n)])` -/
def P2064944004181874252.Spec : Prop :=
  ∀ n, P2064944004181874252.a n = A029610 n

end A029610

/-! ## A029610.P3793189020316361449

`A029600(eq[0, A099040(n)])`
-/

namespace A029610.P3793189020316361449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P3793189020316361449

namespace A029610

/-- `A029600(eq[0, A099040(n)])` -/
def P3793189020316361449.Spec : Prop :=
  ∀ n, P3793189020316361449.a n = A029610 n

end A029610

/-! ## A029610.P221927377084778006

`A029600(eq[0, A110509(n)])`
-/

namespace A029610.P221927377084778006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P221927377084778006

namespace A029610

/-- `A029600(eq[0, A110509(n)])` -/
def P221927377084778006.Spec : Prop :=
  ∀ n, P221927377084778006.a n = A029610 n

end A029610

/-! ## A029610.P15064750282927208200

`A029600(eq[0, A110517(n)])`
-/

namespace A029610.P15064750282927208200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P15064750282927208200

namespace A029610

/-- `A029600(eq[0, A110517(n)])` -/
def P15064750282927208200.Spec : Prop :=
  ∀ n, P15064750282927208200.a n = A029610 n

end A029610

/-! ## A029610.P11710512114166091656

`A029600(eq[0, A115951(n)])`
-/

namespace A029610.P11710512114166091656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P11710512114166091656

namespace A029610

/-- `A029600(eq[0, A115951(n)])` -/
def P11710512114166091656.Spec : Prop :=
  ∀ n, P11710512114166091656.a n = A029610 n

end A029610

/-! ## A029610.P12662004476190192319

`A029600(eq[0, A238160(n)])`
-/

namespace A029610.P12662004476190192319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P12662004476190192319

namespace A029610

/-- `A029600(eq[0, A238160(n)])` -/
def P12662004476190192319.Spec : Prop :=
  ∀ n, P12662004476190192319.a n = A029610 n

end A029610

/-! ## A029610.P4383382971749764067

`A029600(lt[A238160(n), 1])`
-/

namespace A029610.P4383382971749764067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029610.P4383382971749764067

namespace A029610

/-- `A029600(lt[A238160(n), 1])` -/
def P4383382971749764067.Spec : Prop :=
  ∀ n, P4383382971749764067.a n = A029610 n

end A029610

/-! ## A029610.P12350652024612244311

`A029600(lt[A191532(n), A025581(n)])`
-/

namespace A029610.P12350652024612244311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029610.P12350652024612244311

namespace A029610

/-- `A029600(lt[A191532(n), A025581(n)])` -/
def P12350652024612244311.Spec : Prop :=
  ∀ n, P12350652024612244311.a n = A029610 n

end A029610

/-! ## A029610.P13963985049178332731

`A029600(eq[0, A122848(n)])`
-/

namespace A029610.P13963985049178332731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P13963985049178332731

namespace A029610

/-- `A029600(eq[0, A122848(n)])` -/
def P13963985049178332731.Spec : Prop :=
  ∀ n, P13963985049178332731.a n = A029610 n

end A029610

/-! ## A029610.P3498850374239636655

`A029603(A274427(n+1))`
-/

namespace A029610.P3498850374239636655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 (A274427 (n + 1)).toNat

end

end A029610.P3498850374239636655

namespace A029610

/-- `A029603(A274427(n+1))` -/
def P3498850374239636655.Spec : Prop :=
  ∀ n, P3498850374239636655.a n = A029610 n

end A029610

/-! ## A029610.P17521033206610494577

`A029600(eq[0, A117434(n)])`
-/

namespace A029610.P17521033206610494577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P17521033206610494577

namespace A029610

/-- `A029600(eq[0, A117434(n)])` -/
def P17521033206610494577.Spec : Prop :=
  ∀ n, P17521033206610494577.a n = A029610 n

end A029610

/-! ## A029610.P10598441651927835332

`A029600(eq[0, A105868(n)])`
-/

namespace A029610.P10598441651927835332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029610.P10598441651927835332

namespace A029610

/-- `A029600(eq[0, A105868(n)])` -/
def P10598441651927835332.Spec : Prop :=
  ∀ n, P10598441651927835332.a n = A029610 n

end A029610

/-!
# A029611: Numbers to the left of the central elements of the (2,3)-Pascal triangle A029600 that are different from 2.

The programs for A029611, the canonical program `A029611.P2146311653280549813` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029611 has offset 0).

The definition of A029611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029611.P18164936995130805825

`A029645(n)+A014463(n+1)`
-/

namespace A029611.P18164936995130805825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029645 n + A014463 (n + 1)

end

end A029611.P18164936995130805825

namespace A029611

/-- `A029645(n)+A014463(n+1)` -/
def P18164936995130805825.Spec : Prop :=
  ∀ n, P18164936995130805825.a n = A029611 n

end A029611

/-! ## A029611.P3448334878151110243

`A014462(A000037(n+1))+2*A014463(n+1)`
-/

namespace A029611.P3448334878151110243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A000037 (n + 1)).toNat + 2 * A014463 (n + 1)

end

end A029611.P3448334878151110243

namespace A029611

/-- `A014462(A000037(n+1))+2*A014463(n+1)` -/
def P3448334878151110243.Spec : Prop :=
  ∀ n, P3448334878151110243.a n = A029611 n

end A029611

/-! ## A029611.P2146311653280549813

`A029610(A049068(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029611

/-- `A029610(A049068(n+1))` -/
def P2146311653280549813.Spec : Prop :=
  ∀ n, P2146311653280549813.a n = A029611 n

theorem P2146311653280549813.correct : P2146311653280549813.Spec := by
  intro n
  simp only [A029611]

end A029611

/-! ## A029611.P11057944056676595077

`A029600(eq[0, A100218(n)])`
-/

namespace A029611.P11057944056676595077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029611.P11057944056676595077

namespace A029611

/-- `A029600(eq[0, A100218(n)])` -/
def P11057944056676595077.Spec : Prop :=
  ∀ n, P11057944056676595077.a n = A029611 n

end A029611

/-! ## A029611.P15989370102424892650

`A029600(eq[A073424(n), A115951(n)])`
-/

namespace A029611.P15989370102424892650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029611.P15989370102424892650

namespace A029611

/-- `A029600(eq[A073424(n), A115951(n)])` -/
def P15989370102424892650.Spec : Prop :=
  ∀ n, P15989370102424892650.a n = A029611 n

end A029611

/-! ## A029611.P8135429187053113892

`A029600(eq[A010054(n), A279415(n+1)])`
-/

namespace A029611.P8135429187053113892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029611.P8135429187053113892

namespace A029611

/-- `A029600(eq[A010054(n), A279415(n+1)])` -/
def P8135429187053113892.Spec : Prop :=
  ∀ n, P8135429187053113892.a n = A029611 n

end A029611

/-! ## A029611.P11041313257740759090

`A029600(eq[0, A145460(n)])`
-/

namespace A029611.P11041313257740759090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029611.P11041313257740759090

namespace A029611

/-- `A029600(eq[0, A145460(n)])` -/
def P11041313257740759090.Spec : Prop :=
  ∀ n, P11041313257740759090.a n = A029611 n

end A029611

/-! ## A029611.P13932205826869139772

`A029600(eq[0, A292948(n)])`
-/

namespace A029611.P13932205826869139772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029611.P13932205826869139772

namespace A029611

/-- `A029600(eq[0, A292948(n)])` -/
def P13932205826869139772.Spec : Prop :=
  ∀ n, P13932205826869139772.a n = A029611 n

end A029611

/-! ## A029611.P4205263067812072352

`A029600(eq[0, A292973(n)])`
-/

namespace A029611.P4205263067812072352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029611.P4205263067812072352

namespace A029611

/-- `A029600(eq[0, A292973(n)])` -/
def P4205263067812072352.Spec : Prop :=
  ∀ n, P4205263067812072352.a n = A029611 n

end A029611

/-! ## A029611.P5856371940918079814

`A029600(eq[0, A292978(n)])`
-/

namespace A029611.P5856371940918079814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029611.P5856371940918079814

namespace A029611

/-- `A029600(eq[0, A292978(n)])` -/
def P5856371940918079814.Spec : Prop :=
  ∀ n, P5856371940918079814.a n = A029611 n

end A029611

/-! ## A029611.P8425083011835002786

`A029600(eq[A073424(n), A117434(n)])`
-/

namespace A029611.P8425083011835002786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029611.P8425083011835002786

namespace A029611

/-- `A029600(eq[A073424(n), A117434(n)])` -/
def P8425083011835002786.Spec : Prop :=
  ∀ n, P8425083011835002786.a n = A029611 n

end A029611

/-!
# A029612: Odd numbers to the left of the central elements of the (2,3)-Pascal triangle A029600.

The programs for A029612, the canonical program `A029612.P8705984013740246466` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029612 has offset 0).

The definition of A029612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029612.P8705984013740246466

`A029611(eq[1, A029611(n)%2])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029612

/-- `A029611(eq[1, A029611(n)%2])` -/
def P8705984013740246466.Spec : Prop :=
  ∀ n, P8705984013740246466.a n = A029612 n

theorem P8705984013740246466.correct : P8705984013740246466.Spec := by
  intro n
  simp only [A029612]

end A029612

/-! ## A029612.P13628930243432640108

`A029611(eq[0, val(A029611(n), 2)])`
-/

namespace A029612.P13628930243432640108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029611 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029612.P13628930243432640108

namespace A029612

/-- `A029611(eq[0, val(A029611(n), 2)])` -/
def P13628930243432640108.Spec : Prop :=
  ∀ n, P13628930243432640108.a n = A029612 n

end A029612

/-! ## A029612.P1025008563955228232

`A029611(eq[1, and(1, A029611(n))])`
-/

namespace A029612.P1025008563955228232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029612.P1025008563955228232

namespace A029612

/-- `A029611(eq[1, and(1, A029611(n))])` -/
def P1025008563955228232.Spec : Prop :=
  ∀ n, P1025008563955228232.a n = A029612 n

end A029612

/-! ## A029612.P9309826539020450445

`filter[A029610(n), A000035(#)]`
-/

namespace A029612.P9309826539020450445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029612.P9309826539020450445

namespace A029612

/-- `filter[A029610(n), A000035(#)]` -/
def P9309826539020450445.Spec : Prop :=
  ∀ n, P9309826539020450445.a n = A029612 n

end A029612

/-! ## A029612.P2793777973802077826

`filter[A029611(n), A000035(#)]`
-/

namespace A029612.P2793777973802077826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029612.P2793777973802077826

namespace A029612

/-- `filter[A029611(n), A000035(#)]` -/
def P2793777973802077826.Spec : Prop :=
  ∀ n, P2793777973802077826.a n = A029612 n

end A029612

/-!
# A029613: Even numbers (not equal to 2) to the left of the central elements of the (2,3)-Pascal triangle A029600.

The programs for A029613, there is no canonical definition to state claims against.
-/

/-! ## A029613.P1822411030839807958

`2*A051435(n)`
-/

namespace A029613.P1822411030839807958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051435 n

end

end A029613.P1822411030839807958

/-! ## A029613.P15970204746461020139

`A051435(lcm(n, A033999(n)))+A051435(n)`
-/

namespace A029613.P15970204746461020139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051435 (Int.lcm (n : ℤ) (A033999 n)) + A051435 n

end

end A029613.P15970204746461020139

/-! ## A029613.P14162974671013734681

`lcm(A051435(n)+A051435(n), A165326(n))`
-/

namespace A029613.P14162974671013734681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051435 n + A051435 n) (A165326 n)

end

end A029613.P14162974671013734681

/-! ## A029613.P17839599820446079453

`A051435(n)-(A000038(n+1)-A051435(n))`
-/

namespace A029613.P17839599820446079453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051435 n - (A000038 (n + 1) - A051435 n)

end

end A029613.P17839599820446079453

/-! ## A029613.P2483154683538611314

`A051435(n)+A051435(n)+A046092(n)%2`
-/

namespace A029613.P2483154683538611314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051435 n + (A051435 n + Int.tmod (A046092 n) 2)

end

end A029613.P2483154683538611314

/-! ## A029613.P4672749310304197464

`A051435(n)+A051435(n)+A066568(n)%3`
-/

namespace A029613.P4672749310304197464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051435 n + (A051435 n + Int.tmod (A066568 n) 3)

end

end A029613.P4672749310304197464

/-! ## A029613.P17094826655433269684

`A051435(n)+A051435(n)/∏{p}[n, A001221(#)]`
-/

namespace A029613.P17094826655433269684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051435 n : ℚ) + (A051435 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A001221 p : ℤ) : ℚ)

end

end A029613.P17094826655433269684

/-! ## A029613.P11687601333816139362

`and(2, A020882(n+1))+A051435(n)+A051435(n)`
-/

namespace A029613.P11687601333816139362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A020882 (n + 1)) + (A051435 n + A051435 n)

end

end A029613.P11687601333816139362

/-! ## A029613.P7667010753772710427

`and(2, A000005(n+1)²)+A051435(n)+A051435(n)`
-/

namespace A029613.P7667010753772710427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000005 (n + 1) ^ 2) + (A051435 n + A051435 n)

end

end A029613.P7667010753772710427

/-! ## A029613.P11641549047514163258

`A051435(n)+A051435(n)%A252641(n+1)`
-/

namespace A029613.P11641549047514163258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051435 n + Int.tmod (A051435 n) (A252641 (n + 1))

end

end A029613.P11641549047514163258

/-!
# A029614: Numbers to the right of the central elements of the (2,3)-Pascal triangle A029600.

The programs for A029614, the canonical program `A029614.P3750468161563103685` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029614 has offset 0).

The definition of A029614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029614.P3750468161563103685

`A029632(n)+A008313(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029614

/-- `A029632(n)+A008313(n)` -/
def P3750468161563103685.Spec : Prop :=
  ∀ n, P3750468161563103685.a n = A029614 n

theorem P3750468161563103685.correct : P3750468161563103685.Spec := by
  intro n
  simp only [A029614]

end A029614

/-! ## A029614.P8389906542947500325

`A034869(n)+A028330(n)`
-/

namespace A029614.P8389906542947500325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n + A028330 n

end

end A029614.P8389906542947500325

namespace A029614

/-- `A034869(n)+A028330(n)` -/
def P8389906542947500325.Spec : Prop :=
  ∀ n, P8389906542947500325.a n = A029614 n

end A029614

/-! ## A029614.P12445459957315192139

`A029648(n)+A014413(n+1)`
-/

namespace A029614.P12445459957315192139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n + A014413 (n + 1)

end

end A029614.P12445459957315192139

namespace A029614

/-- `A029648(n)+A014413(n+1)` -/
def P12445459957315192139.Spec : Prop :=
  ∀ n, P12445459957315192139.a n = A029614 n

end A029614

/-! ## A029614.P9277578769327961710

`A029666(n)+2*A034869(n)`
-/

namespace A029614.P9277578769327961710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029666 n + 2 * A034869 n

end

end A029614.P9277578769327961710

namespace A029614

/-- `A029666(n)+2*A034869(n)` -/
def P9277578769327961710.Spec : Prop :=
  ∀ n, P9277578769327961710.a n = A029614 n

end A029614

/-! ## A029614.P9740261566493104497

`2*A028330(n)-A029666(n)`
-/

namespace A029614.P9740261566493104497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028330 n - A029666 n

end

end A029614.P9740261566493104497

namespace A029614

/-- `2*A028330(n)-A029666(n)` -/
def P9740261566493104497.Spec : Prop :=
  ∀ n, P9740261566493104497.a n = A029614 n

end A029614

/-! ## A029614.P13245603009399036783

`2*A029648(n)-A034869(n)`
-/

namespace A029614.P13245603009399036783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029648 n - A034869 n

end

end A029614.P13245603009399036783

namespace A029614

/-- `2*A029648(n)-A034869(n)` -/
def P13245603009399036783.Spec : Prop :=
  ∀ n, P13245603009399036783.a n = A029614 n

end A029614

/-! ## A029614.P11159304991337436042

`A034869(n)+2*A014413(n+1)`
-/

namespace A029614.P11159304991337436042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n + 2 * A014413 (n + 1)

end

end A029614.P11159304991337436042

namespace A029614

/-- `A034869(n)+2*A014413(n+1)` -/
def P11159304991337436042.Spec : Prop :=
  ∀ n, P11159304991337436042.a n = A029614 n

end A029614

/-! ## A029614.P18432665957454592551

`A029600(eq[0, A052553(n)])`
-/

namespace A029614.P18432665957454592551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029614.P18432665957454592551

namespace A029614

/-- `A029600(eq[0, A052553(n)])` -/
def P18432665957454592551.Spec : Prop :=
  ∀ n, P18432665957454592551.a n = A029614 n

end A029614

/-! ## A029614.P1636431779311632736

`A029600(eq[0, A061896(n)])`
-/

namespace A029614.P1636431779311632736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029614.P1636431779311632736

namespace A029614

/-- `A029600(eq[0, A061896(n)])` -/
def P1636431779311632736.Spec : Prop :=
  ∀ n, P1636431779311632736.a n = A029614 n

end A029614

/-! ## A029614.P6290055507946190599

`A029600(eq[0, A209599(n)])`
-/

namespace A029614.P6290055507946190599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029614.P6290055507946190599

namespace A029614

/-- `A029600(eq[0, A209599(n)])` -/
def P6290055507946190599.Spec : Prop :=
  ∀ n, P6290055507946190599.a n = A029614 n

end A029614

/-! ## A029614.P2856403839099352172

`A029600(lt[1, A238160(n)])`
-/

namespace A029614.P2856403839099352172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029614.P2856403839099352172

namespace A029614

/-- `A029600(lt[1, A238160(n)])` -/
def P2856403839099352172.Spec : Prop :=
  ∀ n, P2856403839099352172.a n = A029614 n

end A029614

/-! ## A029614.P11832578398113653152

`A029600(eq[2, A279415(n+1)-2])`
-/

namespace A029614.P11832578398113653152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279415 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029614.P11832578398113653152

namespace A029614

/-- `A029600(eq[2, A279415(n+1)-2])` -/
def P11832578398113653152.Spec : Prop :=
  ∀ n, P11832578398113653152.a n = A029614 n

end A029614

/-! ## A029614.P14482843288673321726

`A029600(eq[2, A279415(n+1)/2])`
-/

namespace A029614.P14482843288673321726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279415 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A029614.P14482843288673321726

namespace A029614

/-- `A029600(eq[2, A279415(n+1)/2])` -/
def P14482843288673321726.Spec : Prop :=
  ∀ n, P14482843288673321726.a n = A029614 n

end A029614

/-! ## A029614.P10951540783483478360

`A029600(eq[0, A060523(n)])`
-/

namespace A029614.P10951540783483478360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029614.P10951540783483478360

namespace A029614

/-- `A029600(eq[0, A060523(n)])` -/
def P10951540783483478360.Spec : Prop :=
  ∀ n, P10951540783483478360.a n = A029614 n

end A029614

/-!
# A029615: Numbers to the right of the central elements of the (2,3)-Pascal triangle A029600 that are different from 3.

The programs for A029615, the canonical program `A029615.P6413097162909646570` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029615 has offset 1).

The definition of A029615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029615.P12026308802391411030

`A029649(n)+A014411(n+1)`
-/

namespace A029615.P12026308802391411030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029649 n + A014411 (n + 1)

end

end A029615.P12026308802391411030

namespace A029615

/-- `A029649(n)+A014411(n+1)` -/
def P12026308802391411030.Spec : Prop :=
  ∀ n, P12026308802391411030.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P6413097162909646570

`4*A014411(n+1)-A029663(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029615

/-- `4*A014411(n+1)-A029663(n)` -/
def P6413097162909646570.Spec : Prop :=
  ∀ n, P6413097162909646570.a n = A029615 (n + 1)

theorem P6413097162909646570.correct : P6413097162909646570.Spec := by
  intro n
  simp only [A029615, Nat.add_sub_cancel]

end A029615

/-! ## A029615.P7873922574278535552

`A029614(A183569(n+1))`
-/

namespace A029615.P7873922574278535552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 (A183569 (n + 1)).toNat

end

end A029615.P7873922574278535552

namespace A029615

/-- `A029614(A183569(n+1))` -/
def P7873922574278535552.Spec : Prop :=
  ∀ n, P7873922574278535552.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P17436525025976977059

`A029614(lt[3, A029614(n)])`
-/

namespace A029615.P17436525025976977059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029615.P17436525025976977059

namespace A029615

/-- `A029614(lt[3, A029614(n)])` -/
def P17436525025976977059.Spec : Prop :=
  ∀ n, P17436525025976977059.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P10379082259038824764

`A029600(lt[2, A238160(n)])`
-/

namespace A029615.P10379082259038824764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029615.P10379082259038824764

namespace A029615

/-- `A029600(lt[2, A238160(n)])` -/
def P10379082259038824764.Spec : Prop :=
  ∀ n, P10379082259038824764.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P111573061020264788

`A029600(eq[A061896(n), A103452(n)])`
-/

namespace A029615.P111573061020264788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029615.P111573061020264788

namespace A029615

/-- `A029600(eq[A061896(n), A103452(n)])` -/
def P111573061020264788.Spec : Prop :=
  ∀ n, P111573061020264788.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P14186237246310014919

`A029600(eq[A089799(n), A244530(n+1)])`
-/

namespace A029615.P14186237246310014919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029615.P14186237246310014919

namespace A029615

/-- `A029600(eq[A089799(n), A244530(n+1)])` -/
def P14186237246310014919.Spec : Prop :=
  ∀ n, P14186237246310014919.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P11403860529230627170

`A029600(eq[A209599(n+1), A209599(n)])`
-/

namespace A029615.P11403860529230627170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029615.P11403860529230627170

namespace A029615

/-- `A029600(eq[A209599(n+1), A209599(n)])` -/
def P11403860529230627170.Spec : Prop :=
  ∀ n, P11403860529230627170.a n = A029615 (n + 1)

end A029615

/-! ## A029615.P13925656619454831836

`A249757(eq[0, A026794(n+1)])`
-/

namespace A029615.P13925656619454831836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029615.P13925656619454831836

namespace A029615

/-- `A249757(eq[0, A026794(n+1)])` -/
def P13925656619454831836.Spec : Prop :=
  ∀ n, P13925656619454831836.a n = A029615 (n + 1)

end A029615

/-!
# A029616: Odd numbers to the right of the central elements of the (2,3)-Pascal triangle A029600.

The programs for A029616, the canonical program `A029616.P2041025544951566710` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029616 has offset 0).

The definition of A029616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029616.P2041025544951566710

`A029614(eq[1, A029614(n)%2])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029616

/-- `A029614(eq[1, A029614(n)%2])` -/
def P2041025544951566710.Spec : Prop :=
  ∀ n, P2041025544951566710.a n = A029616 n

theorem P2041025544951566710.correct : P2041025544951566710.Spec := by
  intro n
  simp only [A029616]

end A029616

/-! ## A029616.P16564219854087392189

`A029614(lt[0, and(1, A029614(n))])`
-/

namespace A029616.P16564219854087392189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029614 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029616.P16564219854087392189

namespace A029616

/-- `A029614(lt[0, and(1, A029614(n))])` -/
def P16564219854087392189.Spec : Prop :=
  ∀ n, P16564219854087392189.a n = A029616 n

end A029616

/-! ## A029616.P549791193169071426

`A029614(eq[1, and(1, A029614(n))])`
-/

namespace A029616.P549791193169071426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029614 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029616.P549791193169071426

namespace A029616

/-- `A029614(eq[1, and(1, A029614(n))])` -/
def P549791193169071426.Spec : Prop :=
  ∀ n, P549791193169071426.a n = A029616 n

end A029616

/-! ## A029616.P1699144336905203086

`filter[A029614(n), A324908(#)]`
-/

namespace A029616.P1699144336905203086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A029616.P1699144336905203086

namespace A029616

/-- `filter[A029614(n), A324908(#)]` -/
def P1699144336905203086.Spec : Prop :=
  ∀ n, P1699144336905203086.a n = A029616 n

end A029616

/-! ## A029616.P14680088396879161749

`filter[A029614(n), A000035(#)]`
-/

namespace A029616.P14680088396879161749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029616.P14680088396879161749

namespace A029616

/-- `filter[A029614(n), A000035(#)]` -/
def P14680088396879161749.Spec : Prop :=
  ∀ n, P14680088396879161749.a n = A029616 n

end A029616

/-!
# A029617: Table read by rows: list of even numbers to the right of the central elements of the (2,3)-Pascal triangle A029600.

The programs for A029617, the canonical program `A029617.P8795002400070431540` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029617 has offset 0).

The definition of A029617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029617.P8795002400070431540

`2*A051432(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029617

/-- `2*A051432(n)` -/
def P8795002400070431540.Spec : Prop :=
  ∀ n, P8795002400070431540.a n = A029617 n

theorem P8795002400070431540.correct : P8795002400070431540.Spec := by
  intro n
  simp only [A029617]

end A029617

/-! ## A029617.P10227431837504116158

`A051432(A005843(n)/2)+A051432(n)`
-/

namespace A029617.P10227431837504116158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051432 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051432 n

end

end A029617.P10227431837504116158

namespace A029617

/-- `A051432(A005843(n)/2)+A051432(n)` -/
def P10227431837504116158.Spec : Prop :=
  ∀ n, P10227431837504116158.a n = A029617 n

end A029617

/-! ## A029617.P11289472300459411695

`A051432(A005843(n)-n)+A051432(n)`
-/

namespace A029617.P11289472300459411695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051432 (A005843 n - (n : ℤ)).toNat + A051432 n

end

end A029617.P11289472300459411695

namespace A029617

/-- `A051432(A005843(n)-n)+A051432(n)` -/
def P11289472300459411695.Spec : Prop :=
  ∀ n, P11289472300459411695.a n = A029617 n

end A029617

/-! ## A029617.P3816253015179729650

`A051432(n/A054977(n))+A051432(n)`
-/

namespace A029617.P3816253015179729650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051432 (SequenceMachineLib.roundAway ((n : ℚ) / (A054977 n : ℚ))).toNat + A051432 n

end

end A029617.P3816253015179729650

namespace A029617

/-- `A051432(n/A054977(n))+A051432(n)` -/
def P3816253015179729650.Spec : Prop :=
  ∀ n, P3816253015179729650.a n = A029617 n

end A029617

/-! ## A029617.P10479796892339995201

`A051432(lcm(n, A054977(n)))+A051432(n)`
-/

namespace A029617.P10479796892339995201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051432 (Int.lcm (n : ℤ) (A054977 n)) + A051432 n

end

end A029617.P10479796892339995201

namespace A029617

/-- `A051432(lcm(n, A054977(n)))+A051432(n)` -/
def P10479796892339995201.Spec : Prop :=
  ∀ n, P10479796892339995201.a n = A029617 n

end A029617

/-! ## A029617.P15868287958845400783

`A029614(lt[and(1, A029614(n)), 1])`
-/

namespace A029617.P15868287958845400783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029614 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029617.P15868287958845400783

namespace A029617

/-- `A029614(lt[and(1, A029614(n)), 1])` -/
def P15868287958845400783.Spec : Prop :=
  ∀ n, P15868287958845400783.a n = A029617 n

end A029617

/-! ## A029617.P11039151436017412742

`A029605(lt[A029623(n), A029605(n)])`
-/

namespace A029617.P11039151436017412742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029617.P11039151436017412742

namespace A029617

/-- `A029605(lt[A029623(n), A029605(n)])` -/
def P11039151436017412742.Spec : Prop :=
  ∀ n, P11039151436017412742.a n = A029617 n

end A029617

/-! ## A029617.P14695018557223199490

`A029605(lt[2*A051455(n), A029605(n)])`
-/

namespace A029617.P14695018557223199490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029617.P14695018557223199490

namespace A029617

/-- `A029605(lt[2*A051455(n), A029605(n)])` -/
def P14695018557223199490.Spec : Prop :=
  ∀ n, P14695018557223199490.a n = A029617 n

end A029617

/-! ## A029617.P3490547777963783363

`2*A051433(lt[A051455(n), A051433(n)])`
-/

namespace A029617.P3490547777963783363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029617.P3490547777963783363

namespace A029617

/-- `2*A051433(lt[A051455(n), A051433(n)])` -/
def P3490547777963783363.Spec : Prop :=
  ∀ n, P3490547777963783363.a n = A029617 n

end A029617

/-! ## A029617.P2916688933762286601

`A029605(lt[2, A029605(n)/A051455(n)])`
-/

namespace A029617.P2916688933762286601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 n : ℚ) / (A051455 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A029617.P2916688933762286601

namespace A029617

/-- `A029605(lt[2, A029605(n)/A051455(n)])` -/
def P2916688933762286601.Spec : Prop :=
  ∀ n, P2916688933762286601.a n = A029617 n

end A029617

/-! ## A029617.P9266279113472786352

`A051432(log2(A000079(n)))+A051432(n)`
-/

namespace A029617.P9266279113472786352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051432 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat + A051432 n

end

end A029617.P9266279113472786352

namespace A029617

/-- `A051432(log2(A000079(n)))+A051432(n)` -/
def P9266279113472786352.Spec : Prop :=
  ∀ n, P9266279113472786352.a n = A029617 n

end A029617

/-!
# A029618: Numbers in (3,2)-Pascal triangle (by row).

The programs for A029618, the canonical program `A029618.P143499929436318524` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029618 has offset 0).

The definition of A029618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029618.P143499929436318524

`A029600(A061579(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029618

/-- `A029600(A061579(n))` -/
def P143499929436318524.Spec : Prop :=
  ∀ n, P143499929436318524.a n = A029618 n

theorem P143499929436318524.correct : P143499929436318524.Spec := by
  intro n
  simp only [A029618]

end A029618

/-! ## A029618.P16465042715346547371

`A037012(n)+A029600(n)`
-/

namespace A029618.P16465042715346547371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n + A029600 n

end

end A029618.P16465042715346547371

namespace A029618

/-- `A037012(n)+A029600(n)` -/
def P16465042715346547371.Spec : Prop :=
  ∀ n, P16465042715346547371.a n = A029618 n

end A029618

/-! ## A029618.P4967905149243624863

`A093561(n)+A008482(n)`
-/

namespace A029618.P4967905149243624863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n + A008482 n

end

end A029618.P4967905149243624863

namespace A029618

/-- `A093561(n)+A008482(n)` -/
def P4967905149243624863.Spec : Prop :=
  ∀ n, P4967905149243624863.a n = A029618 n

end A029618

/-! ## A029618.P8850851853088355111

`A029600(n)-A008482(n)`
-/

namespace A029618.P8850851853088355111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - A008482 n

end

end A029618.P8850851853088355111

namespace A029618

/-- `A029600(n)-A008482(n)` -/
def P8850851853088355111.Spec : Prop :=
  ∀ n, P8850851853088355111.a n = A029618 n

end A029618

/-! ## A029618.P14191518997419511205

`A093561(n)-A037012(n)`
-/

namespace A029618.P14191518997419511205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n - A037012 n

end

end A029618.P14191518997419511205

namespace A029618

/-- `A093561(n)-A037012(n)` -/
def P14191518997419511205.Spec : Prop :=
  ∀ n, P14191518997419511205.a n = A029618 n

end A029618

/-! ## A029618.P3055795618411573722

`A029600(A038722(n+1)-1)`
-/

namespace A029618.P3055795618411573722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A038722 (n + 1) - 1).toNat

end

end A029618.P3055795618411573722

namespace A029618

/-- `A029600(A038722(n+1)-1)` -/
def P3055795618411573722.Spec : Prop :=
  ∀ n, P3055795618411573722.a n = A029618 n

end A029618

/-! ## A029618.P14803173542377635609

`A134058(n)+A097805(n+1)`
-/

namespace A029618.P14803173542377635609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + A097805 (n + 1)

end

end A029618.P14803173542377635609

namespace A029618

/-- `A134058(n)+A097805(n+1)` -/
def P14803173542377635609.Spec : Prop :=
  ∀ n, P14803173542377635609.a n = A029618 n

end A029618

/-! ## A029618.P15547668261514403235

`A134059(n)-A097805(A028310(n))`
-/

namespace A029618.P15547668261514403235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - A097805 (A028310 n).toNat

end

end A029618.P15547668261514403235

namespace A029618

/-- `A134059(n)-A097805(A028310(n))` -/
def P15547668261514403235.Spec : Prop :=
  ∀ n, P15547668261514403235.a n = A029618 n

end A029618

/-! ## A029618.P11030485087972348390

`A007318(n)+A029653(n)-A000007(n)`
-/

namespace A029618.P11030485087972348390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A029653 n - A000007 n)

end

end A029618.P11030485087972348390

namespace A029618

/-- `A007318(n)+A029653(n)-A000007(n)` -/
def P11030485087972348390.Spec : Prop :=
  ∀ n, P11030485087972348390.a n = A029618 n

end A029618

/-! ## A029618.P16298083719731532161

`A071919(n)+A132200(n)-A134058(n)`
-/

namespace A029618.P16298083719731532161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + (A132200 n - A134058 n)

end

end A029618.P16298083719731532161

namespace A029618

/-- `A071919(n)+A132200(n)-A134058(n)` -/
def P16298083719731532161.Spec : Prop :=
  ∀ n, P16298083719731532161.a n = A029618 n

end A029618

/-! ## A029618.P4506068154790548633

`A029653(n)+A007318(n)-A019590(n+2)`
-/

namespace A029618.P4506068154790548633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + A007318 n - A019590 (n + 2)

end

end A029618.P4506068154790548633

namespace A029618

/-- `A029653(n)+A007318(n)-A019590(n+2)` -/
def P4506068154790548633.Spec : Prop :=
  ∀ n, P4506068154790548633.a n = A029618 n

end A029618

/-! ## A029618.P6668196317419495206

`A097805(n+1)+A004277(A007318(n))-A019590(n+2)`
-/

namespace A029618.P6668196317419495206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A004277 (A007318 n).toNat - A019590 (n + 2)

end

end A029618.P6668196317419495206

namespace A029618

/-- `A097805(n+1)+A004277(A007318(n))-A019590(n+2)` -/
def P6668196317419495206.Spec : Prop :=
  ∀ n, P6668196317419495206.a n = A029618 n

end A029618

/-! ## A029618.P7695643935019179994

`A097805(n+1)+A004277(A014473(n)+1)-A019590(n+2)`
-/

namespace A029618.P7695643935019179994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A004277 (A014473 n + 1).toNat - A019590 (n + 2)

end

end A029618.P7695643935019179994

namespace A029618

/-- `A097805(n+1)+A004277(A014473(n)+1)-A019590(n+2)` -/
def P7695643935019179994.Spec : Prop :=
  ∀ n, P7695643935019179994.a n = A029618 n

end A029618

/-! ## A029618.P1111533443312679017

`A135089(n)-A163300(A029600(n))/2`
-/

namespace A029618.P1111533443312679017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135089 n : ℚ) - (A163300 (A029600 n).toNat : ℚ) / 2

end

end A029618.P1111533443312679017

namespace A029618

/-- `A135089(n)-A163300(A029600(n))/2` -/
def P1111533443312679017.Spec : Prop :=
  ∀ n, P1111533443312679017.a n = (A029618 n : ℚ)

end A029618

/-! ## A029618.P17633695817614770398

`A029653(n)+A026741(A124927(n))-A019590(n+2)`
-/

namespace A029618.P17633695817614770398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + A026741 (A124927 n).toNat - A019590 (n + 2)

end

end A029618.P17633695817614770398

namespace A029618

/-- `A029653(n)+A026741(A124927(n))-A019590(n+2)` -/
def P17633695817614770398.Spec : Prop :=
  ∀ n, P17633695817614770398.a n = A029618 n

end A029618

/-!
# A029620: Numbers in (3,2)-Pascal triangle A029618 that are different from 2.

The programs for A029620, the canonical program `A029620.P6209062257735337057` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029620 has offset 0).

The definition of A029620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029620.P6209062257735337057

`A029618(comp[∑[n+2]])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029620

/-- `A029618(comp[∑[n+2]])` -/
def P6209062257735337057.Spec : Prop :=
  ∀ n, P6209062257735337057.a n = A029620 n

theorem P6209062257735337057.correct : P6209062257735337057.Spec := by
  intro n
  simp only [A029620]

end A029620

/-!
# A029621: Numbers in (3,2)-Pascal triangle A029618 that are different from 3.

The programs for A029621, the canonical program `A029621.P3765941121051379767` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029621 has offset 0).

The definition of A029621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029621.P3765941121051379767

`2*A029655(n)-A206735(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029621

/-- `2*A029655(n)-A206735(n)` -/
def P3765941121051379767.Spec : Prop :=
  ∀ n, P3765941121051379767.a n = A029621 n

theorem P3765941121051379767.correct : P3765941121051379767.Spec := by
  intro n
  simp only [A029621]

end A029621

/-! ## A029621.P1927953552046654813

`A029618(comp[∑[n+1]])`
-/

namespace A029621.P1927953552046654813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029621.P1927953552046654813

namespace A029621

/-- `A029618(comp[∑[n+1]])` -/
def P1927953552046654813.Spec : Prop :=
  ∀ n, P1927953552046654813.a n = A029621 n

end A029621

/-! ## A029621.P16027873328635306983

`A004277(A029655(n))-A206735(n)`
-/

namespace A029621.P16027873328635306983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A029655 n).toNat - A206735 n

end

end A029621.P16027873328635306983

namespace A029621

/-- `A004277(A029655(n))-A206735(n)` -/
def P16027873328635306983.Spec : Prop :=
  ∀ n, P16027873328635306983.a n = A029621 n

end A029621

/-! ## A029621.P12073138814390750321

`A124459(A080036(n))-floor(acot(n))`
-/

namespace A029621.P12073138814390750321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124459 (A080036 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A029621.P12073138814390750321

namespace A029621

/-- `A124459(A080036(n))-floor(acot(n))` -/
def P12073138814390750321.Spec : Prop :=
  ∀ n, P12073138814390750321.a n = A029621 n

end A029621

/-! ## A029621.P13164639239619961465

`A124459(A080036(n))/gcd(2, A000040(n+1))`
-/

namespace A029621.P13164639239619961465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124459 (A080036 n).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A029621.P13164639239619961465

namespace A029621

/-- `A124459(A080036(n))/gcd(2, A000040(n+1))` -/
def P13164639239619961465.Spec : Prop :=
  ∀ n, P13164639239619961465.a n = (A029621 n : ℚ)

end A029621

/-!
# A029622: Odd numbers in (3,2)-Pascal triangle A029618.

The programs for A029622, the canonical program `A029622.P170867044904776595` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029622 has offset 0).

The definition of A029622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029622.P170867044904776595

`A029618(eq[1, A290452(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029622

/-- `A029618(eq[1, A290452(n)])` -/
def P170867044904776595.Spec : Prop :=
  ∀ n, P170867044904776595.a n = A029622 n

theorem P170867044904776595.correct : P170867044904776595.Spec := by
  intro n
  simp only [A029622]

end A029622

/-! ## A029622.P4924087652450037139

`A029618(eq[1, A029618(n)%2])`
-/

namespace A029622.P4924087652450037139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P4924087652450037139

namespace A029622

/-- `A029618(eq[1, A029618(n)%2])` -/
def P4924087652450037139.Spec : Prop :=
  ∀ n, P4924087652450037139.a n = A029622 n

end A029622

/-! ## A029622.P11006492824897790672

`A029618(eq[1, gcd(2, A029618(n))])`
-/

namespace A029622.P11006492824897790672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029618 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029622.P11006492824897790672

namespace A029622

/-- `A029618(eq[1, gcd(2, A029618(n))])` -/
def P11006492824897790672.Spec : Prop :=
  ∀ n, P11006492824897790672.a n = A029622 n

end A029622

/-! ## A029622.P4006715835173128887

`A029618(eq[0, val(A029618(n), 2)])`
-/

namespace A029622.P4006715835173128887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029618 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029622.P4006715835173128887

namespace A029622

/-- `A029618(eq[0, val(A029618(n), 2)])` -/
def P4006715835173128887.Spec : Prop :=
  ∀ n, P4006715835173128887.a n = A029622 n

end A029622

/-! ## A029622.P1175284034692005658

`A029618(eq[1, and(1, A029618(n))])`
-/

namespace A029622.P1175284034692005658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029618 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P1175284034692005658

namespace A029622

/-- `A029618(eq[1, and(1, A029618(n))])` -/
def P1175284034692005658.Spec : Prop :=
  ∀ n, P1175284034692005658.a n = A029622 n

end A029622

/-! ## A029622.P7496251361743852598

`A029618(eq[1, A040001(A029618(n))])`
-/

namespace A029622.P7496251361743852598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P7496251361743852598

namespace A029622

/-- `A029618(eq[1, A040001(A029618(n))])` -/
def P7496251361743852598.Spec : Prop :=
  ∀ n, P7496251361743852598.a n = A029622 n

end A029622

/-! ## A029622.P10105689279138992815

`A029618(eq[1, A040019(A029618(n))])`
-/

namespace A029622.P10105689279138992815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P10105689279138992815

namespace A029622

/-- `A029618(eq[1, A040019(A029618(n))])` -/
def P10105689279138992815.Spec : Prop :=
  ∀ n, P10105689279138992815.a n = A029622 n

end A029622

/-! ## A029622.P5286726587850425108

`A029618(eq[1, A134451(A029618(n))])`
-/

namespace A029622.P5286726587850425108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P5286726587850425108

namespace A029622

/-- `A029618(eq[1, A134451(A029618(n))])` -/
def P5286726587850425108.Spec : Prop :=
  ∀ n, P5286726587850425108.a n = A029622 n

end A029622

/-! ## A029622.P3453944725454836620

`A029618(eq[2, A040035(A029618(n))])`
-/

namespace A029622.P3453944725454836620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P3453944725454836620

namespace A029622

/-- `A029618(eq[2, A040035(A029618(n))])` -/
def P3453944725454836620.Spec : Prop :=
  ∀ n, P3453944725454836620.a n = A029622 n

end A029622

/-! ## A029622.P12930560929318377698

`A029618(eq[2, A141310(A029618(n))])`
-/

namespace A029622.P12930560929318377698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A029618 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029622.P12930560929318377698

namespace A029622

/-- `A029618(eq[2, A141310(A029618(n))])` -/
def P12930560929318377698.Spec : Prop :=
  ∀ n, P12930560929318377698.a n = A029622 n

end A029622

/-!
# A029623: Even numbers in (3,2)-Pascal triangle A029618.

The programs for A029623, the canonical program `A029623.P11351172865891342749` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029623 has offset 0).

The definition of A029623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029623.P16262190027863720463

`2*A051455(n)`
-/

namespace A029623.P16262190027863720463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051455 n

end

end A029623.P16262190027863720463

namespace A029623

/-- `2*A051455(n)` -/
def P16262190027863720463.Spec : Prop :=
  ∀ n, P16262190027863720463.a n = A029623 n

end A029623

/-! ## A029623.P13271878516039125956

`A051455(A028310(n))+A051455(n)`
-/

namespace A029623.P13271878516039125956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (A028310 n).toNat + A051455 n

end

end A029623.P13271878516039125956

namespace A029623

/-- `A051455(A028310(n))+A051455(n)` -/
def P13271878516039125956.Spec : Prop :=
  ∀ n, P13271878516039125956.a n = A029623 n

end A029623

/-! ## A029623.P15341610618895653005

`A051455(A000007(n)+n)+A051455(n)`
-/

namespace A029623.P15341610618895653005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (A000007 n + (n : ℤ)).toNat + A051455 n

end

end A029623.P15341610618895653005

namespace A029623

/-- `A051455(A000007(n)+n)+A051455(n)` -/
def P15341610618895653005.Spec : Prop :=
  ∀ n, P15341610618895653005.a n = A029623 n

end A029623

/-! ## A029623.P4116920374664929341

`A051455(gcd(n, A066393(n)))+A051455(n)`
-/

namespace A029623.P4116920374664929341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (Int.gcd (n : ℤ) (A066393 n)) + A051455 n

end

end A029623.P4116920374664929341

namespace A029623

/-- `A051455(gcd(n, A066393(n)))+A051455(n)` -/
def P4116920374664929341.Spec : Prop :=
  ∀ n, P4116920374664929341.a n = A029623 n

end A029623

/-! ## A029623.P11351172865891342749

`A029618(eq[0, A290452(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029623

/-- `A029618(eq[0, A290452(n)])` -/
def P11351172865891342749.Spec : Prop :=
  ∀ n, P11351172865891342749.a n = A029623 n

theorem P11351172865891342749.correct : P11351172865891342749.Spec := by
  intro n
  simp only [A029623]

end A029623

/-! ## A029623.P8425473559237168684

`A029618(lt[A290452(n), 1])`
-/

namespace A029623.P8425473559237168684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029623.P8425473559237168684

namespace A029623

/-- `A029618(lt[A290452(n), 1])` -/
def P8425473559237168684.Spec : Prop :=
  ∀ n, P8425473559237168684.a n = A029623 n

end A029623

/-! ## A029623.P10114409639017572664

`A029618(lt[1, gcd(2, A029618(n))])`
-/

namespace A029623.P10114409639017572664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029618 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029623.P10114409639017572664

namespace A029623

/-- `A029618(lt[1, gcd(2, A029618(n))])` -/
def P10114409639017572664.Spec : Prop :=
  ∀ n, P10114409639017572664.a n = A029623 n

end A029623

/-! ## A029623.P8240003134248923136

`A051455(A004524(n+1+n))+A051455(n)`
-/

namespace A029623.P8240003134248923136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 (A004524 (n + 1 + n)).toNat + A051455 n

end

end A029623.P8240003134248923136

namespace A029623

/-- `A051455(A004524(n+1+n))+A051455(n)` -/
def P8240003134248923136.Spec : Prop :=
  ∀ n, P8240003134248923136.a n = A029623 n

end A029623

/-! ## A029623.P13302027936366272961

`A051455(n)+A051455(n)%A251682(n+1)`
-/

namespace A029623.P13302027936366272961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n + Int.tmod (A051455 n) (A251682 (n + 1))

end

end A029623.P13302027936366272961

namespace A029623

/-- `A051455(n)+A051455(n)%A251682(n+1)` -/
def P13302027936366272961.Spec : Prop :=
  ∀ n, P13302027936366272961.a n = A029623 n

end A029623

/-! ## A029623.P5088643970212364121

`A004277(A051455(n))`
-/

namespace A029623.P5088643970212364121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051455 n).toNat

end

end A029623.P5088643970212364121

namespace A029623

/-- `A004277(A051455(n))` -/
def P5088643970212364121.Spec : Prop :=
  ∀ n, P5088643970212364121.a n = A029623 n

end A029623

/-!
# A029624: Odd numbers in (3,2)-Pascal triangle A029618 that are different from 3.

The programs for A029624, the canonical program `A029624.P13598685353401142756` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029624 has offset 0).

The definition of A029624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029624.P5288627184008902471

`A029622(comp[eq[3, A029622(n)]])`
-/

namespace A029624.P5288627184008902471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029622 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029624.P5288627184008902471

namespace A029624

/-- `A029622(comp[eq[3, A029622(n)]])` -/
def P5288627184008902471.Spec : Prop :=
  ∀ n, P5288627184008902471.a n = A029624 n

end A029624

/-! ## A029624.P13598685353401142756

`A029622(lt[0, xor(3, A029622(n))])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029624

/-- `A029622(lt[0, xor(3, A029622(n))])` -/
def P13598685353401142756.Spec : Prop :=
  ∀ n, P13598685353401142756.a n = A029624 n

theorem P13598685353401142756.correct : P13598685353401142756.Spec := by
  intro n
  simp only [A029624]

end A029624

/-! ## A029624.P2550742755271220516

`A029621(eq[1, A029621(n)%2])`
-/

namespace A029624.P2550742755271220516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029621 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029624.P2550742755271220516

namespace A029624

/-- `A029621(eq[1, A029621(n)%2])` -/
def P2550742755271220516.Spec : Prop :=
  ∀ n, P2550742755271220516.a n = A029624 n

end A029624

/-! ## A029624.P12364993721502884179

`A029618(eq[A130296(n+1), A290452(n)])`
-/

namespace A029624.P12364993721502884179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029624.P12364993721502884179

namespace A029624

/-- `A029618(eq[A130296(n+1), A290452(n)])` -/
def P12364993721502884179.Spec : Prop :=
  ∀ n, P12364993721502884179.a n = A029624 n

end A029624

/-! ## A029624.P7412618806513707134

`filter[A029621(n), A000035(#)]`
-/

namespace A029624.P7412618806513707134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029624.P7412618806513707134

namespace A029624

/-- `filter[A029621(n), A000035(#)]` -/
def P7412618806513707134.Spec : Prop :=
  ∀ n, P7412618806513707134.a n = A029624 n

end A029624

/-!
# A029625: Even numbers in (3,2)-Pascal triangle A029618 that are different from 2.

The programs for A029625, the canonical program `A029625.P8414473659430485930` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029625 has offset 0).

The definition of A029625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029625.P1940483986307705875

`2*A051456(n)`
-/

namespace A029625.P1940483986307705875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051456 n

end

end A029625.P1940483986307705875

namespace A029625

/-- `2*A051456(n)` -/
def P1940483986307705875.Spec : Prop :=
  ∀ n, P1940483986307705875.a n = A029625 n

end A029625

/-! ## A029625.P1339169206162635559

`2*(A051468(n)+sqrt(A014727(n)))`
-/

namespace A029625.P1339169206162635559
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A051468 n : ℝ) + Real.sqrt (A014727 n : ℝ))

end

end A029625.P1339169206162635559

namespace A029625

/-- `2*(A051468(n)+sqrt(A014727(n)))` -/
def P1339169206162635559.Spec : Prop :=
  ∀ n, P1339169206162635559.a n = (A029625 n : ℝ)

end A029625

/-! ## A029625.P12179155878587401406

`A029641(n)+2*A014428(n+1)`
-/

namespace A029625.P12179155878587401406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029641 n + 2 * A014428 (n + 1)

end

end A029625.P12179155878587401406

namespace A029625

/-- `A029641(n)+2*A014428(n+1)` -/
def P12179155878587401406.Spec : Prop :=
  ∀ n, P12179155878587401406.a n = A029625 n

end A029625

/-! ## A029625.P17999818343222742962

`2*(A051468(n)+A014428(n+1))`
-/

namespace A029625.P17999818343222742962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051468 n + A014428 (n + 1))

end

end A029625.P17999818343222742962

namespace A029625

/-- `2*(A051468(n)+A014428(n+1))` -/
def P17999818343222742962.Spec : Prop :=
  ∀ n, P17999818343222742962.a n = A029625 n

end A029625

/-! ## A029625.P12867957084849522239

`lcm(A051456(n)+A051456(n), A348364(n+1))`
-/

namespace A029625.P12867957084849522239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051456 n + A051456 n) (A348364 (n + 1))

end

end A029625.P12867957084849522239

namespace A029625

/-- `lcm(A051456(n)+A051456(n), A348364(n+1))` -/
def P12867957084849522239.Spec : Prop :=
  ∀ n, (P12867957084849522239.a n : ℤ) = A029625 n

end A029625

/-! ## A029625.P11777583935117893292

`A029623(lt[1, A051455(n)])`
-/

namespace A029625.P11777583935117893292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029625.P11777583935117893292

namespace A029625

/-- `A029623(lt[1, A051455(n)])` -/
def P11777583935117893292.Spec : Prop :=
  ∀ n, P11777583935117893292.a n = A029625 n

end A029625

/-! ## A029625.P8414473659430485930

`A029623(lt[2, A029623(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029625

/-- `A029623(lt[2, A029623(n)])` -/
def P8414473659430485930.Spec : Prop :=
  ∀ n, P8414473659430485930.a n = A029625 n

theorem P8414473659430485930.correct : P8414473659430485930.Spec := by
  intro n
  simp only [A029625]

end A029625

/-! ## A029625.P4911433020681760165

`2*A051455(lt[1, A051455(n)])`
-/

namespace A029625.P4911433020681760165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051455 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029625.P4911433020681760165

namespace A029625

/-- `2*A051455(lt[1, A051455(n)])` -/
def P4911433020681760165.Spec : Prop :=
  ∀ n, P4911433020681760165.a n = A029625 n

end A029625

/-! ## A029625.P15966730492024071002

`A029641(n)+A028326(A268232(n+1))`
-/

namespace A029625.P15966730492024071002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029641 n + A028326 (A268232 (n + 1)).toNat

end

end A029625.P15966730492024071002

namespace A029625

/-- `A029641(n)+A028326(A268232(n+1))` -/
def P15966730492024071002.Spec : Prop :=
  ∀ n, P15966730492024071002.a n = A029625 n

end A029625

/-! ## A029625.P12481899645555961933

`2*(A051468(n)+A007318(A268232(n+1)))`
-/

namespace A029625.P12481899645555961933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051468 n + A007318 (A268232 (n + 1)).toNat)

end

end A029625.P12481899645555961933

namespace A029625

/-- `2*(A051468(n)+A007318(A268232(n+1)))` -/
def P12481899645555961933.Spec : Prop :=
  ∀ n, P12481899645555961933.a n = A029625 n

end A029625

/-! ## A029625.P12241414888779282031

`A029621(A268232(n+1))`
-/

namespace A029625.P12241414888779282031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (A268232 (n + 1)).toNat

end

end A029625.P12241414888779282031

namespace A029625

/-- `A029621(A268232(n+1))` -/
def P12241414888779282031.Spec : Prop :=
  ∀ n, P12241414888779282031.a n = A029625 n

end A029625

/-! ## A029625.P10289126633286612916

`A029620(eq[0, A047999(n)]+1)`
-/

namespace A029625.P10289126633286612916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029625.P10289126633286612916

namespace A029625

/-- `A029620(eq[0, A047999(n)]+1)` -/
def P10289126633286612916.Spec : Prop :=
  ∀ n, P10289126633286612916.a n = A029625 n

end A029625

/-!
# A029626: Distinct odd numbers in (3,2)-Pascal triangle A029618.

The programs for A029626, there is no canonical definition to state claims against.
-/

/-! ## A029626.P9441816627719354338

`A029619(lt[0, A029619(n)%2])`
-/

namespace A029626.P9441816627719354338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029619 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029626.P9441816627719354338

/-! ## A029626.P940677183823291100

`filter[A029619(n), A000035(#)]`
-/

namespace A029626.P940677183823291100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029626.P940677183823291100

/-!
# A029627: Even numbers to right of central numbers of the (3,2)-Pascal triangle A029618.

The programs for A029627, the canonical program `A029627.P13806716523934186134` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029627 has offset 0).

The definition of A029627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029627.P13806716523934186134

`2*A051457(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029627

/-- `2*A051457(n)` -/
def P13806716523934186134.Spec : Prop :=
  ∀ n, P13806716523934186134.a n = A029627 n

theorem P13806716523934186134.correct : P13806716523934186134.Spec := by
  intro n
  simp only [A029627]

end A029627

/-! ## A029627.P819550313500807816

`A051457(char[1]+n)+A051457(n)`
-/

namespace A029627.P819550313500807816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051457 ((if ∃ j, f1 j = n then 1 else 0) + n) + A051457 n

end

end A029627.P819550313500807816

namespace A029627

/-- `A051457(char[1]+n)+A051457(n)` -/
def P819550313500807816.Spec : Prop :=
  ∀ n, P819550313500807816.a n = A029627 n

end A029627

/-! ## A029627.P12731963883811480111

`A051457(n)+lcm(A051457(n), A186035(n))`
-/

namespace A029627.P12731963883811480111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051457 n + (Int.lcm (A051457 n) (A186035 n) : ℤ)

end

end A029627.P12731963883811480111

namespace A029627

/-- `A051457(n)+lcm(A051457(n), A186035(n))` -/
def P12731963883811480111.Spec : Prop :=
  ∀ n, P12731963883811480111.a n = A029627 n

end A029627

/-! ## A029627.P2769330740709760907

`A029632(eq[2, gcd(2, A029632(n))])`
-/

namespace A029627.P2769330740709760907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029632 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029627.P2769330740709760907

namespace A029627

/-- `A029632(eq[2, gcd(2, A029632(n))])` -/
def P2769330740709760907.Spec : Prop :=
  ∀ n, P2769330740709760907.a n = A029627 n

end A029627

/-! ## A029627.P3091137782535088561

`A051457(n)+A051457(n)^A001222(A006567(n+1))`
-/

namespace A029627.P3091137782535088561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051457 n : ℚ) + (A051457 n : ℚ) ^ (A001222 (A006567 (n + 1)).toNat : ℤ)

end

end A029627.P3091137782535088561

namespace A029627

/-- `A051457(n)+A051457(n)^A001222(A006567(n+1))` -/
def P3091137782535088561.Spec : Prop :=
  ∀ n, P3091137782535088561.a n = (A029627 n : ℚ)

end A029627

/-! ## A029627.P8804019838532112819

`A051457(n)+A051457(n)%A240266(n+1)`
-/

namespace A029627.P8804019838532112819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051457 n + Int.tmod (A051457 n) (A240266 (n + 1))

end

end A029627.P8804019838532112819

namespace A029627

/-- `A051457(n)+A051457(n)%A240266(n+1)` -/
def P8804019838532112819.Spec : Prop :=
  ∀ n, P8804019838532112819.a n = A029627 n

end A029627

/-! ## A029627.P17544221504567009348

`A051457(n)+A051457(n)^A014963(∑[n+1])`
-/

namespace A029627.P17544221504567009348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051457 n : ℚ) + (A051457 n : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A029627.P17544221504567009348

namespace A029627

/-- `A051457(n)+A051457(n)^A014963(∑[n+1])` -/
def P17544221504567009348.Spec : Prop :=
  ∀ n, P17544221504567009348.a n = (A029627 n : ℚ)

end A029627

/-! ## A029627.P13275276808692917136

`A000027(A051457(n)+A051457(n))`
-/

namespace A029627.P13275276808692917136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051457 n + A051457 n).toNat

end

end A029627.P13275276808692917136

namespace A029627

/-- `A000027(A051457(n)+A051457(n))` -/
def P13275276808692917136.Spec : Prop :=
  ∀ n, P13275276808692917136.a n = A029627 n

end A029627

/-!
# A029628: Numbers to left of central numbers of the (3,2)-Pascal triangle A029618.

The programs for A029628, the canonical program `A029628.P6623095559692305680` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029628 has offset 0).

The definition of A029628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029628.P7606700587094098565

`A029610(n)+A008315(n)`
-/

namespace A029628.P7606700587094098565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 n + A008315 n

end

end A029628.P7606700587094098565

namespace A029628

/-- `A029610(n)+A008315(n)` -/
def P7606700587094098565.Spec : Prop :=
  ∀ n, P7606700587094098565.a n = A029628 n

end A029628

/-! ## A029628.P17609933978503691135

`A029662(n)+A014462(n+1)`
-/

namespace A029628.P17609933978503691135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n + A014462 (n + 1)

end

end A029628.P17609933978503691135

namespace A029628

/-- `A029662(n)+A014462(n+1)` -/
def P17609933978503691135.Spec : Prop :=
  ∀ n, P17609933978503691135.a n = A029628 n

end A029628

/-! ## A029628.P10730161130374244686

`A029644(n)+2*A034868(n)`
-/

namespace A029628.P10730161130374244686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n + 2 * A034868 n

end

end A029628.P10730161130374244686

namespace A029628

/-- `A029644(n)+2*A034868(n)` -/
def P10730161130374244686.Spec : Prop :=
  ∀ n, P10730161130374244686.a n = A029628 n

end A029628

/-! ## A029628.P5247120615179121274

`2*A029662(n)-A034868(n)`
-/

namespace A029628.P5247120615179121274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029662 n - A034868 n

end

end A029628.P5247120615179121274

namespace A029628

/-- `2*A029662(n)-A034868(n)` -/
def P5247120615179121274.Spec : Prop :=
  ∀ n, P5247120615179121274.a n = A029628 n

end A029628

/-! ## A029628.P6623095559692305680

`A034868(n)+2*A014462(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029628

/-- `A034868(n)+2*A014462(n+1)` -/
def P6623095559692305680.Spec : Prop :=
  ∀ n, P6623095559692305680.a n = A029628 n

theorem P6623095559692305680.correct : P6623095559692305680.Spec := by
  intro n
  simp only [A029628]

end A029628

/-! ## A029628.P16290418297429486437

`A029618(eq[0, A026729(n)])`
-/

namespace A029628.P16290418297429486437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P16290418297429486437

namespace A029628

/-- `A029618(eq[0, A026729(n)])` -/
def P16290418297429486437.Spec : Prop :=
  ∀ n, P16290418297429486437.a n = A029628 n

end A029628

/-! ## A029628.P13351013003981514246

`A029618(eq[0, A098158(n)])`
-/

namespace A029628.P13351013003981514246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P13351013003981514246

namespace A029628

/-- `A029618(eq[0, A098158(n)])` -/
def P13351013003981514246.Spec : Prop :=
  ∀ n, P13351013003981514246.a n = A029628 n

end A029628

/-! ## A029628.P5345028150379222277

`A029618(eq[0, A099040(n)])`
-/

namespace A029628.P5345028150379222277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P5345028150379222277

namespace A029628

/-- `A029618(eq[0, A099040(n)])` -/
def P5345028150379222277.Spec : Prop :=
  ∀ n, P5345028150379222277.a n = A029628 n

end A029628

/-! ## A029628.P9578880584737853716

`A029618(eq[0, A099097(n)])`
-/

namespace A029628.P9578880584737853716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P9578880584737853716

namespace A029628

/-- `A029618(eq[0, A099097(n)])` -/
def P9578880584737853716.Spec : Prop :=
  ∀ n, P9578880584737853716.a n = A029628 n

end A029628

/-! ## A029628.P10746663302908259468

`A029618(eq[0, A107131(n)])`
-/

namespace A029628.P10746663302908259468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P10746663302908259468

namespace A029628

/-- `A029618(eq[0, A107131(n)])` -/
def P10746663302908259468.Spec : Prop :=
  ∀ n, P10746663302908259468.a n = A029628 n

end A029628

/-! ## A029628.P11294552929050012

`A029618(eq[0, A110509(n)])`
-/

namespace A029628.P11294552929050012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P11294552929050012

namespace A029628

/-- `A029618(eq[0, A110509(n)])` -/
def P11294552929050012.Spec : Prop :=
  ∀ n, P11294552929050012.a n = A029628 n

end A029628

/-! ## A029628.P15040703061334661670

`A029618(eq[0, A115951(n)])`
-/

namespace A029628.P15040703061334661670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P15040703061334661670

namespace A029628

/-- `A029618(eq[0, A115951(n)])` -/
def P15040703061334661670.Spec : Prop :=
  ∀ n, P15040703061334661670.a n = A029628 n

end A029628

/-! ## A029628.P14363871534991650788

`A029618(lt[A026729(n), 1])`
-/

namespace A029628.P14363871534991650788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029628.P14363871534991650788

namespace A029628

/-- `A029618(lt[A026729(n), 1])` -/
def P14363871534991650788.Spec : Prop :=
  ∀ n, P14363871534991650788.a n = A029628 n

end A029628

/-! ## A029628.P14191858408328034275

`A029618(lt[A107131(n), 1])`
-/

namespace A029628.P14191858408328034275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029628.P14191858408328034275

namespace A029628

/-- `A029618(lt[A107131(n), 1])` -/
def P14191858408328034275.Spec : Prop :=
  ∀ n, P14191858408328034275.a n = A029628 n

end A029628

/-! ## A029628.P3849294581362527225

`A029618(lt[A207543(n), 1])`
-/

namespace A029628.P3849294581362527225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029628.P3849294581362527225

namespace A029628

/-- `A029618(lt[A207543(n), 1])` -/
def P3849294581362527225.Spec : Prop :=
  ∀ n, P3849294581362527225.a n = A029628 n

end A029628

/-! ## A029628.P9645063815880252061

`A029618(lt[A029635(n), A029635(n+1)])`
-/

namespace A029628.P9645063815880252061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029628.P9645063815880252061

namespace A029628

/-- `A029618(lt[A029635(n), A029635(n+1)])` -/
def P9645063815880252061.Spec : Prop :=
  ∀ n, P9645063815880252061.a n = A029628 n

end A029628

/-! ## A029628.P14720948284779457815

`A029620(A274427(n+1))`
-/

namespace A029628.P14720948284779457815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 (A274427 (n + 1)).toNat

end

end A029628.P14720948284779457815

namespace A029628

/-- `A029620(A274427(n+1))` -/
def P14720948284779457815.Spec : Prop :=
  ∀ n, P14720948284779457815.a n = A029628 n

end A029628

/-! ## A029628.P2162784430092329209

`A029618(eq[0, A105868(n)])`
-/

namespace A029628.P2162784430092329209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029628.P2162784430092329209

namespace A029628

/-- `A029618(eq[0, A105868(n)])` -/
def P2162784430092329209.Spec : Prop :=
  ∀ n, P2162784430092329209.a n = A029628 n

end A029628

/-!
# A029629: Numbers to left of central elements of the (3,2)-Pascal triangle A029618 that are different from 3.

The programs for A029629, the canonical program `A029629.P6084514030674874401` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029629 has offset 0).

The definition of A029629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029629.P9650621738945235627

`A029667(n)+A014463(n+1)`
-/

namespace A029629.P9650621738945235627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029667 n + A014463 (n + 1)

end

end A029629.P9650621738945235627

namespace A029629

/-- `A029667(n)+A014463(n+1)` -/
def P9650621738945235627.Spec : Prop :=
  ∀ n, P9650621738945235627.a n = A029629 n

end A029629

/-! ## A029629.P6084514030674874401

`A029628(A049068(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029629

/-- `A029628(A049068(n+1))` -/
def P6084514030674874401.Spec : Prop :=
  ∀ n, P6084514030674874401.a n = A029629 n

theorem P6084514030674874401.correct : P6084514030674874401.Spec := by
  intro n
  simp only [A029629]

end A029629

/-! ## A029629.P6189817843079911798

`A029628(lt[1, A029644(n)])`
-/

namespace A029629.P6189817843079911798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029629.P6189817843079911798

namespace A029629

/-- `A029628(lt[1, A029644(n)])` -/
def P6189817843079911798.Spec : Prop :=
  ∀ n, P6189817843079911798.a n = A029629 n

end A029629

/-! ## A029629.P16618668856100989872

`A029628(lt[3, A029628(n)])`
-/

namespace A029629.P16618668856100989872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029629.P16618668856100989872

namespace A029629

/-- `A029628(lt[3, A029628(n)])` -/
def P16618668856100989872.Spec : Prop :=
  ∀ n, P16618668856100989872.a n = A029629 n

end A029629

/-! ## A029629.P8297359136179393922

`A029618(eq[0, A100218(n)])`
-/

namespace A029629.P8297359136179393922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029629.P8297359136179393922

namespace A029629

/-- `A029618(eq[0, A100218(n)])` -/
def P8297359136179393922.Spec : Prop :=
  ∀ n, P8297359136179393922.a n = A029629 n

end A029629

/-! ## A029629.P5881849947666027128

`A029618(eq[A026729(n), A073424(n)])`
-/

namespace A029629.P5881849947666027128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029629.P5881849947666027128

namespace A029629

/-- `A029618(eq[A026729(n), A073424(n)])` -/
def P5881849947666027128.Spec : Prop :=
  ∀ n, P5881849947666027128.a n = A029629 n

end A029629

/-! ## A029629.P7571779009250500027

`A029618(eq[A073424(n), A110509(n)])`
-/

namespace A029629.P7571779009250500027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029629.P7571779009250500027

namespace A029629

/-- `A029618(eq[A073424(n), A110509(n)])` -/
def P7571779009250500027.Spec : Prop :=
  ∀ n, P7571779009250500027.a n = A029629 n

end A029629

/-! ## A029629.P9568174835042163271

`A029618(eq[A073424(n), A115951(n)])`
-/

namespace A029629.P9568174835042163271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029629.P9568174835042163271

namespace A029629

/-- `A029618(eq[A073424(n), A115951(n)])` -/
def P9568174835042163271.Spec : Prop :=
  ∀ n, P9568174835042163271.a n = A029629 n

end A029629

/-! ## A029629.P6701564708797653717

`A029618(eq[0, A145460(n)])`
-/

namespace A029629.P6701564708797653717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029629.P6701564708797653717

namespace A029629

/-- `A029618(eq[0, A145460(n)])` -/
def P6701564708797653717.Spec : Prop :=
  ∀ n, P6701564708797653717.a n = A029629 n

end A029629

/-! ## A029629.P14887007971573964576

`A029618(eq[0, A292948(n)])`
-/

namespace A029629.P14887007971573964576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029629.P14887007971573964576

namespace A029629

/-- `A029618(eq[0, A292948(n)])` -/
def P14887007971573964576.Spec : Prop :=
  ∀ n, P14887007971573964576.a n = A029629 n

end A029629

/-! ## A029629.P18266759843830418979

`A029618(eq[0, A292973(n)])`
-/

namespace A029629.P18266759843830418979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029629.P18266759843830418979

namespace A029629

/-- `A029618(eq[0, A292973(n)])` -/
def P18266759843830418979.Spec : Prop :=
  ∀ n, P18266759843830418979.a n = A029629 n

end A029629

/-! ## A029629.P1164792133773579844

`A029618(eq[0, A292978(n)])`
-/

namespace A029629.P1164792133773579844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029629.P1164792133773579844

namespace A029629

/-- `A029618(eq[0, A292978(n)])` -/
def P1164792133773579844.Spec : Prop :=
  ∀ n, P1164792133773579844.a n = A029629 n

end A029629

/-!
# A029630: Odd numbers to left of central elements of the (3,2)-Pascal triangle A029618.

The programs for A029630, the canonical program `A029630.P10151144225103094584` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029630 has offset 0).

The definition of A029630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029630.P10151144225103094584

`A029628(eq[1, A130047(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029630

/-- `A029628(eq[1, A130047(n)])` -/
def P10151144225103094584.Spec : Prop :=
  ∀ n, P10151144225103094584.a n = A029630 n

theorem P10151144225103094584.correct : P10151144225103094584.Spec := by
  intro n
  simp only [A029630]

end A029630

/-! ## A029630.P15166025566268292366

`A029628(eq[1, A029628(n)%2])`
-/

namespace A029630.P15166025566268292366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029628 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029630.P15166025566268292366

namespace A029630

/-- `A029628(eq[1, A029628(n)%2])` -/
def P15166025566268292366.Spec : Prop :=
  ∀ n, P15166025566268292366.a n = A029630 n

end A029630

/-! ## A029630.P9693870148084469397

`A029628(lt[0, A029644(n)%2])`
-/

namespace A029630.P9693870148084469397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029644 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029630.P9693870148084469397

namespace A029630

/-- `A029628(lt[0, A029644(n)%2])` -/
def P9693870148084469397.Spec : Prop :=
  ∀ n, P9693870148084469397.a n = A029630 n

end A029630

/-! ## A029630.P1072510279996586458

`A029618(lt[A026729(n), A290452(n)])`
-/

namespace A029630.P1072510279996586458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029630.P1072510279996586458

namespace A029630

/-- `A029618(lt[A026729(n), A290452(n)])` -/
def P1072510279996586458.Spec : Prop :=
  ∀ n, P1072510279996586458.a n = A029630 n

end A029630

/-! ## A029630.P2236359275291425137

`A029618(lt[A207543(n), A290452(n)])`
-/

namespace A029630.P2236359275291425137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029630.P2236359275291425137

namespace A029630

/-- `A029618(lt[A207543(n), A290452(n)])` -/
def P2236359275291425137.Spec : Prop :=
  ∀ n, P2236359275291425137.a n = A029630 n

end A029630

/-!
# A029631: Even numbers to left of central elements of the (3,2)-Pascal triangle A029618.

The programs for A029631, the canonical program `A029631.P17454013802700819155` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029631 has offset 0).

The definition of A029631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029631.P1473802282150193656

`2*A051458(n)`
-/

namespace A029631.P1473802282150193656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051458 n

end

end A029631.P1473802282150193656

namespace A029631

/-- `2*A051458(n)` -/
def P1473802282150193656.Spec : Prop :=
  ∀ n, P1473802282150193656.a n = A029631 n

end A029631

/-! ## A029631.P10360112486572058470

`A051458(A005843(n)/2)+A051458(n)`
-/

namespace A029631.P10360112486572058470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051458 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051458 n

end

end A029631.P10360112486572058470

namespace A029631

/-- `A051458(A005843(n)/2)+A051458(n)` -/
def P10360112486572058470.Spec : Prop :=
  ∀ n, P10360112486572058470.a n = A029631 n

end A029631

/-! ## A029631.P10395147232625736573

`A051458(A005843(n)-n)+A051458(n)`
-/

namespace A029631.P10395147232625736573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051458 (A005843 n - (n : ℤ)).toNat + A051458 n

end

end A029631.P10395147232625736573

namespace A029631

/-- `A051458(A005843(n)-n)+A051458(n)` -/
def P10395147232625736573.Spec : Prop :=
  ∀ n, P10395147232625736573.a n = A029631 n

end A029631

/-! ## A029631.P7944594074529683515

`A051458(lcm(n, A033999(n)))+A051458(n)`
-/

namespace A029631.P7944594074529683515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051458 (Int.lcm (n : ℤ) (A033999 n)) + A051458 n

end

end A029631.P7944594074529683515

namespace A029631

/-- `A051458(lcm(n, A033999(n)))+A051458(n)` -/
def P7944594074529683515.Spec : Prop :=
  ∀ n, P7944594074529683515.a n = A029631 n

end A029631

/-! ## A029631.P18256676380020792760

`A051458(A000027(n+1)-1)+A051458(n)`
-/

namespace A029631.P18256676380020792760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051458 (A000027 (n + 1) - 1).toNat + A051458 n

end

end A029631.P18256676380020792760

namespace A029631

/-- `A051458(A000027(n+1)-1)+A051458(n)` -/
def P18256676380020792760.Spec : Prop :=
  ∀ n, P18256676380020792760.a n = A029631 n

end A029631

/-! ## A029631.P16683583689070987605

`lcm(A051458(n)+A051458(n), 2-A010060(n))`
-/

namespace A029631.P16683583689070987605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051458 n + A051458 n) (2 - A010060 n)

end

end A029631.P16683583689070987605

namespace A029631

/-- `lcm(A051458(n)+A051458(n), 2-A010060(n))` -/
def P16683583689070987605.Spec : Prop :=
  ∀ n, (P16683583689070987605.a n : ℤ) = A029631 n

end A029631

/-! ## A029631.P17454013802700819155

`A029628(eq[0, A130047(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029631

/-- `A029628(eq[0, A130047(n)])` -/
def P17454013802700819155.Spec : Prop :=
  ∀ n, P17454013802700819155.a n = A029631 n

theorem P17454013802700819155.correct : P17454013802700819155.Spec := by
  intro n
  simp only [A029631]

end A029631

/-! ## A029631.P4536527702160445666

`A051458(A004524(n+1+n))+A051458(n)`
-/

namespace A029631.P4536527702160445666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051458 (A004524 (n + 1 + n)).toNat + A051458 n

end

end A029631.P4536527702160445666

namespace A029631

/-- `A051458(A004524(n+1+n))+A051458(n)` -/
def P4536527702160445666.Spec : Prop :=
  ∀ n, P4536527702160445666.a n = A029631 n

end A029631

/-! ## A029631.P17297123924363114545

`A029623(lt[A029605(n), A029623(n)])`
-/

namespace A029631.P17297123924363114545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029631.P17297123924363114545

namespace A029631

/-- `A029623(lt[A029605(n), A029623(n)])` -/
def P17297123924363114545.Spec : Prop :=
  ∀ n, P17297123924363114545.a n = A029631 n

end A029631

/-! ## A029631.P16386541580476151640

`2*A051455(lt[A051433(n), A051455(n)])`
-/

namespace A029631.P16386541580476151640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051455 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029631.P16386541580476151640

namespace A029631

/-- `2*A051455(lt[A051433(n), A051455(n)])` -/
def P16386541580476151640.Spec : Prop :=
  ∀ n, P16386541580476151640.a n = A029631 n

end A029631

/-!
# A029632: Numbers to right of central elements of the (3,2)-Pascal triangle A029618.

The programs for A029632, the canonical program `A029632.P1805722220011820677` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029632 has offset 0).

The definition of A029632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029632.P18288583725248768609

`A029614(n)-A008313(n)`
-/

namespace A029632.P18288583725248768609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A008313 n

end

end A029632.P18288583725248768609

namespace A029632

/-- `A029614(n)-A008313(n)` -/
def P18288583725248768609.Spec : Prop :=
  ∀ n, P18288583725248768609.a n = A029632 n

end A029632

/-! ## A029632.P1423928616846324826

`A029666(n)+A014413(n+1)`
-/

namespace A029632.P1423928616846324826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029666 n + A014413 (n + 1)

end

end A029632.P1423928616846324826

namespace A029632

/-- `A029666(n)+A014413(n+1)` -/
def P1423928616846324826.Spec : Prop :=
  ∀ n, P1423928616846324826.a n = A029632 n

end A029632

/-! ## A029632.P12196043969713947737

`A029666(n)+A028330(n)/2`
-/

namespace A029632.P12196043969713947737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029666 n : ℚ) + (A028330 n : ℚ) / 2

end

end A029632.P12196043969713947737

namespace A029632

/-- `A029666(n)+A028330(n)/2` -/
def P12196043969713947737.Spec : Prop :=
  ∀ n, P12196043969713947737.a n = (A029632 n : ℚ)

end A029632

/-! ## A029632.P3355092768371899484

`A014413(n+1)+A028330(n)-A034869(n)`
-/

namespace A029632.P3355092768371899484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + (A028330 n - A034869 n)

end

end A029632.P3355092768371899484

namespace A029632

/-- `A014413(n+1)+A028330(n)-A034869(n)` -/
def P3355092768371899484.Spec : Prop :=
  ∀ n, P3355092768371899484.a n = A029632 n

end A029632

/-! ## A029632.P1805722220011820677

`A029621(lt[A029621(n), A029620(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029632

/-- `A029621(lt[A029621(n), A029620(n)])` -/
def P1805722220011820677.Spec : Prop :=
  ∀ n, P1805722220011820677.a n = A029632 n

theorem P1805722220011820677.correct : P1805722220011820677.Spec := by
  intro n
  simp only [A029632]

end A029632

/-! ## A029632.P5090985231053960658

`A029618(eq[0, A052553(n)])`
-/

namespace A029632.P5090985231053960658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P5090985231053960658

namespace A029632

/-- `A029618(eq[0, A052553(n)])` -/
def P5090985231053960658.Spec : Prop :=
  ∀ n, P5090985231053960658.a n = A029632 n

end A029632

/-! ## A029632.P5127517266567646503

`A029618(eq[0, A061896(n)])`
-/

namespace A029632.P5127517266567646503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P5127517266567646503

namespace A029632

/-- `A029618(eq[0, A061896(n)])` -/
def P5127517266567646503.Spec : Prop :=
  ∀ n, P5127517266567646503.a n = A029632 n

end A029632

/-! ## A029632.P7452193627452718089

`A029618(eq[0, A089627(n)])`
-/

namespace A029632.P7452193627452718089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P7452193627452718089

namespace A029632

/-- `A029618(eq[0, A089627(n)])` -/
def P7452193627452718089.Spec : Prop :=
  ∀ n, P7452193627452718089.a n = A029632 n

end A029632

/-! ## A029632.P15405441550835731797

`A029618(eq[0, A152815(n)])`
-/

namespace A029632.P15405441550835731797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P15405441550835731797

namespace A029632

/-- `A029618(eq[0, A152815(n)])` -/
def P15405441550835731797.Spec : Prop :=
  ∀ n, P15405441550835731797.a n = A029632 n

end A029632

/-! ## A029632.P15403147876582129594

`A029618(eq[0, A209599(n)])`
-/

namespace A029632.P15403147876582129594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P15403147876582129594

namespace A029632

/-- `A029618(eq[0, A209599(n)])` -/
def P15403147876582129594.Spec : Prop :=
  ∀ n, P15403147876582129594.a n = A029632 n

end A029632

/-! ## A029632.P8616950080986618532

`A029618(lt[1, A207543(n)])`
-/

namespace A029632.P8616950080986618532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029632.P8616950080986618532

namespace A029632

/-- `A029618(lt[1, A207543(n)])` -/
def P8616950080986618532.Spec : Prop :=
  ∀ n, P8616950080986618532.a n = A029632 n

end A029632

/-! ## A029632.P1873793181831911194

`A029618(eq[0, A144299(n)])`
-/

namespace A029632.P1873793181831911194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P1873793181831911194

namespace A029632

/-- `A029618(eq[0, A144299(n)])` -/
def P1873793181831911194.Spec : Prop :=
  ∀ n, P1873793181831911194.a n = A029632 n

end A029632

/-! ## A029632.P10272138091999454257

`A029618(A274428(n+1)-1)`
-/

namespace A029632.P10272138091999454257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (A274428 (n + 1) - 1).toNat

end

end A029632.P10272138091999454257

namespace A029632

/-- `A029618(A274428(n+1)-1)` -/
def P10272138091999454257.Spec : Prop :=
  ∀ n, P10272138091999454257.a n = A029632 n

end A029632

/-! ## A029632.P6454858250662451834

`A029618(eq[0, A060523(n)])`
-/

namespace A029632.P6454858250662451834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029632.P6454858250662451834

namespace A029632

/-- `A029618(eq[0, A060523(n)])` -/
def P6454858250662451834.Spec : Prop :=
  ∀ n, P6454858250662451834.a n = A029632 n

end A029632

/-!
# A029633: Numbers to right of central elements of the (3,2)-Pascal triangle A029618 that are different from 2.

The programs for A029633, the canonical program `A029633.P3103712161572054441` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029633 has offset 0).

The definition of A029633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029633.P3247853760155173767

`A029663(n)+A014411(n+1)`
-/

namespace A029633.P3247853760155173767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 n + A014411 (n + 1)

end

end A029633.P3247853760155173767

namespace A029633

/-- `A029663(n)+A014411(n+1)` -/
def P3247853760155173767.Spec : Prop :=
  ∀ n, P3247853760155173767.a n = A029633 n

end A029633

/-! ## A029633.P1806361200618223426

`4*A014411(n+1)-A029649(n)`
-/

namespace A029633.P1806361200618223426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014411 (n + 1) - A029649 n

end

end A029633.P1806361200618223426

namespace A029633

/-- `4*A014411(n+1)-A029649(n)` -/
def P1806361200618223426.Spec : Prop :=
  ∀ n, P1806361200618223426.a n = A029633 n

end A029633

/-! ## A029633.P14401209372885116230

`5*A014411(n+1)-A029615(n+1)`
-/

namespace A029633.P14401209372885116230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014411 (n + 1) - A029615 (n + 1)

end

end A029633.P14401209372885116230

namespace A029633

/-- `5*A014411(n+1)-A029615(n+1)` -/
def P14401209372885116230.Spec : Prop :=
  ∀ n, P14401209372885116230.a n = A029633 n

end A029633

/-! ## A029633.P15189351140367874400

`A029663(n)+A014413(A049068(n+1))`
-/

namespace A029633.P15189351140367874400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 n + A014413 (A049068 (n + 1)).toNat

end

end A029633.P15189351140367874400

namespace A029633

/-- `A029663(n)+A014413(A049068(n+1))` -/
def P15189351140367874400.Spec : Prop :=
  ∀ n, P15189351140367874400.a n = A029633 n

end A029633

/-! ## A029633.P16618255465245785317

`A029615(n+1)+A029663(n)-A029649(n)`
-/

namespace A029633.P16618255465245785317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029615 (n + 1) + (A029663 n - A029649 n)

end

end A029633.P16618255465245785317

namespace A029633

/-- `A029615(n+1)+A029663(n)-A029649(n)` -/
def P16618255465245785317.Spec : Prop :=
  ∀ n, P16618255465245785317.a n = A029633 n

end A029633

/-! ## A029633.P3103712161572054441

`A029632(A183569(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029633

/-- `A029632(A183569(n+1))` -/
def P3103712161572054441.Spec : Prop :=
  ∀ n, P3103712161572054441.a n = A029633 n

theorem P3103712161572054441.correct : P3103712161572054441.Spec := by
  intro n
  simp only [A029633]

end A029633

/-! ## A029633.P3158280659321989985

`A029618(lt[1, A026729(n)])`
-/

namespace A029633.P3158280659321989985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029633.P3158280659321989985

namespace A029633

/-- `A029618(lt[1, A026729(n)])` -/
def P3158280659321989985.Spec : Prop :=
  ∀ n, P3158280659321989985.a n = A029633 n

end A029633

/-! ## A029633.P17571328122959530618

`A029618(eq[A089799(n), A244530(n+1)])`
-/

namespace A029633.P17571328122959530618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029633.P17571328122959530618

namespace A029633

/-- `A029618(eq[A089799(n), A244530(n+1)])` -/
def P17571328122959530618.Spec : Prop :=
  ∀ n, P17571328122959530618.a n = A029633 n

end A029633

/-! ## A029633.P9261772973775345105

`A029618(lt[A029635(n), 2*A107131(n)])`
-/

namespace A029633.P9261772973775345105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029633.P9261772973775345105

namespace A029633

/-- `A029618(lt[A029635(n), 2*A107131(n)])` -/
def P9261772973775345105.Spec : Prop :=
  ∀ n, P9261772973775345105.a n = A029633 n

end A029633

/-! ## A029633.P2653002712091884751

`A029618(lt[A029635(n)/2, A107131(n)])`
-/

namespace A029633.P2653002712091884751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A029633.P2653002712091884751

namespace A029633

/-- `A029618(lt[A029635(n)/2, A107131(n)])` -/
def P2653002712091884751.Spec : Prop :=
  ∀ n, P2653002712091884751.a n = A029633 n

end A029633

/-! ## A029633.P4292938708012922646

`A029618(eq[A209599(n+1), A209599(n)])`
-/

namespace A029633.P4292938708012922646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029633.P4292938708012922646

namespace A029633

/-- `A029618(eq[A209599(n+1), A209599(n)])` -/
def P4292938708012922646.Spec : Prop :=
  ∀ n, P4292938708012922646.a n = A029633 n

end A029633

/-!
# A029634: Odd numbers to right of central elements of the (3,2)-Pascal triangle A029618.

The programs for A029634, the canonical program `A029634.P17746885614992032582` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029634 has offset 0).

The definition of A029634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029634.P17746885614992032582

`A029633(eq[1, A029633(n)%2])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029634

/-- `A029633(eq[1, A029633(n)%2])` -/
def P17746885614992032582.Spec : Prop :=
  ∀ n, P17746885614992032582.a n = A029634 n

theorem P17746885614992032582.correct : P17746885614992032582.Spec := by
  intro n
  simp only [A029634]

end A029634

/-! ## A029634.P3539838327444002623

`A029632(eq[1, A029632(n)%2])`
-/

namespace A029634.P3539838327444002623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029632 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029634.P3539838327444002623

namespace A029634

/-- `A029632(eq[1, A029632(n)%2])` -/
def P3539838327444002623.Spec : Prop :=
  ∀ n, P3539838327444002623.a n = A029634 n

end A029634

/-! ## A029634.P5994980370981372137

`A029632(eq[1, gcd(2, A029632(n))])`
-/

namespace A029634.P5994980370981372137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029632 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029634.P5994980370981372137

namespace A029634

/-- `A029632(eq[1, gcd(2, A029632(n))])` -/
def P5994980370981372137.Spec : Prop :=
  ∀ n, P5994980370981372137.a n = A029634 n

end A029634

/-! ## A029634.P9119563490364878057

`A029632(eq[1, and(1, A029632(n))])`
-/

namespace A029634.P9119563490364878057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029632 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029634.P9119563490364878057

namespace A029634

/-- `A029632(eq[1, and(1, A029632(n))])` -/
def P9119563490364878057.Spec : Prop :=
  ∀ n, P9119563490364878057.a n = A029634 n

end A029634

/-! ## A029634.P8157312075836649432

`A029632(eq[1, A329900(A029632(n))])`
-/

namespace A029634.P8157312075836649432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A029632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029634.P8157312075836649432

namespace A029634

/-- `A029632(eq[1, A329900(A029632(n))])` -/
def P8157312075836649432.Spec : Prop :=
  ∀ n, P8157312075836649432.a n = A029634 n

end A029634

/-!
# A029635: The (1,2)-Pascal triangle (or Lucas triangle) read by rows.

The programs for A029635, the canonical program `A029635.P14447282759070454877` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029635 has offset 0).

The definition of A029635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029635.P14447282759070454877

`A097805(n)+A007318(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029635

/-- `A097805(n)+A007318(n)` -/
def P14447282759070454877.Spec : Prop :=
  ∀ n, P14447282759070454877.a n = A029635 n

theorem P14447282759070454877.correct : P14447282759070454877.Spec := by
  intro n
  simp only [A029635]

end A029635

/-! ## A029635.P4019597335861418630

`A112467(n)+A029653(n)`
-/

namespace A029635.P4019597335861418630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + A029653 n

end

end A029635.P4019597335861418630

namespace A029635

/-- `A112467(n)+A029653(n)` -/
def P4019597335861418630.Spec : Prop :=
  ∀ n, P4019597335861418630.a n = A029635 n

end A029635

/-! ## A029635.P4297290008888065084

`A135226(n)+A023531(n)`
-/

namespace A029635.P4297290008888065084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 n + A023531 n

end

end A029635.P4297290008888065084

namespace A029635

/-- `A135226(n)+A023531(n)` -/
def P4297290008888065084.Spec : Prop :=
  ∀ n, P4297290008888065084.a n = A029635 n

end A029635

/-! ## A029635.P7163068862825929688

`A177767(n)+A132749(n)`
-/

namespace A029635.P7163068862825929688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 n + A132749 n

end

end A029635.P7163068862825929688

namespace A029635

/-- `A177767(n)+A132749(n)` -/
def P7163068862825929688.Spec : Prop :=
  ∀ n, P7163068862825929688.a n = A029635 n

end A029635

/-! ## A029635.P5880441743891545862

`A206735(n)+A135225(n)`
-/

namespace A029635.P5880441743891545862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n + A135225 n

end

end A029635.P5880441743891545862

namespace A029635

/-- `A206735(n)+A135225(n)` -/
def P5880441743891545862.Spec : Prop :=
  ∀ n, P5880441743891545862.a n = A029635 n

end A029635

/-! ## A029635.P4978422906779620157

`A095660(n)-A097805(n)`
-/

namespace A029635.P4978422906779620157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n - A097805 n

end

end A029635.P4978422906779620157

namespace A029635

/-- `A095660(n)-A097805(n)` -/
def P4978422906779620157.Spec : Prop :=
  ∀ n, P4978422906779620157.a n = A029635 n

end A029635

/-! ## A029635.P15691476283834358885

`A014473(n)+A097805(n)+1`
-/

namespace A029635.P15691476283834358885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A097805 n + 1)

end

end A029635.P15691476283834358885

namespace A029635

/-- `A014473(n)+A097805(n)+1` -/
def P15691476283834358885.Spec : Prop :=
  ∀ n, P15691476283834358885.a n = A029635 n

end A029635

/-! ## A029635.P2087154483516007262

`A209561(n+1)+A156644(n)`
-/

namespace A029635.P2087154483516007262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (n + 1) + A156644 n

end

end A029635.P2087154483516007262

namespace A029635

/-- `A209561(n+1)+A156644(n)` -/
def P2087154483516007262.Spec : Prop :=
  ∀ n, P2087154483516007262.a n = A029635 n

end A029635

/-! ## A029635.P10818121001889874034

`A028326(n)-A097805(n+1)`
-/

namespace A029635.P10818121001889874034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A097805 (n + 1)

end

end A029635.P10818121001889874034

namespace A029635

/-- `A028326(n)-A097805(n+1)` -/
def P10818121001889874034.Spec : Prop :=
  ∀ n, P10818121001889874034.a n = A029635 n

end A029635

/-! ## A029635.P15860148661173909713

`(A095660(n)+A007318(n))/2`
-/

namespace A029635.P15860148661173909713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095660 n + A007318 n : ℚ) / 2

end

end A029635.P15860148661173909713

namespace A029635

/-- `(A095660(n)+A007318(n))/2` -/
def P15860148661173909713.Spec : Prop :=
  ∀ n, P15860148661173909713.a n = (A029635 n : ℚ)

end A029635

/-! ## A029635.P9999352052773860407

`A097805(n)+A028326(n)/2`
-/

namespace A029635.P9999352052773860407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097805 n : ℚ) + (A028326 n : ℚ) / 2

end

end A029635.P9999352052773860407

namespace A029635

/-- `A097805(n)+A028326(n)/2` -/
def P9999352052773860407.Spec : Prop :=
  ∀ n, P9999352052773860407.a n = (A029635 n : ℚ)

end A029635

/-! ## A029635.P2744592780508017266

`2*A095660(n)-A095666(n)`
-/

namespace A029635.P2744592780508017266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095660 n - A095666 n

end

end A029635.P2744592780508017266

namespace A029635

/-- `2*A095660(n)-A095666(n)` -/
def P2744592780508017266.Spec : Prop :=
  ∀ n, P2744592780508017266.a n = A029635 n

end A029635

/-! ## A029635.P8127564379439250188

`2*A095666(n)-A096956(n)`
-/

namespace A029635.P8127564379439250188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095666 n - A096956 n

end

end A029635.P8127564379439250188

namespace A029635

/-- `2*A095666(n)-A096956(n)` -/
def P8127564379439250188.Spec : Prop :=
  ∀ n, P8127564379439250188.a n = A029635 n

end A029635

/-! ## A029635.P17165069565986362331

`A095666(n)-2*A097805(n)`
-/

namespace A029635.P17165069565986362331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n - 2 * A097805 n

end

end A029635.P17165069565986362331

namespace A029635

/-- `A095666(n)-2*A097805(n)` -/
def P17165069565986362331.Spec : Prop :=
  ∀ n, P17165069565986362331.a n = A029635 n

end A029635

/-! ## A029635.P6600080819640001391

`2/A130321(n)*A200139(n)`
-/

namespace A029635.P6600080819640001391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A130321 n : ℚ) * (A200139 n : ℚ)

end

end A029635.P6600080819640001391

namespace A029635

/-- `2/A130321(n)*A200139(n)` -/
def P6600080819640001391.Spec : Prop :=
  ∀ n, P6600080819640001391.a n = (A029635 n : ℚ)

end A029635

/-! ## A029635.P8411965614802228480

`lcm(A054977(n), A293600(n+1))`
-/

namespace A029635.P8411965614802228480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A293600 (n + 1))

end

end A029635.P8411965614802228480

namespace A029635

/-- `lcm(A054977(n), A293600(n+1))` -/
def P8411965614802228480.Spec : Prop :=
  ∀ n, (P8411965614802228480.a n : ℤ) = A029635 n

end A029635

/-! ## A029635.P13213915837212270303

`abs(2*A118800(n)/A130321(n))`
-/

namespace A029635.P13213915837212270303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 * ((A118800 n : ℚ) / (A130321 n : ℚ))|

end

end A029635.P13213915837212270303

namespace A029635

/-- `abs(2*A118800(n)/A130321(n))` -/
def P13213915837212270303.Spec : Prop :=
  ∀ n, P13213915837212270303.a n = (A029635 n : ℚ)

end A029635

/-! ## A029635.P741865392283080263

`2/A130321(n)²*A193735(n)`
-/

namespace A029635.P741865392283080263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A130321 n ^ 2 : ℚ) * (A193735 n : ℚ)

end

end A029635.P741865392283080263

namespace A029635

/-- `2/A130321(n)²*A193735(n)` -/
def P741865392283080263.Spec : Prop :=
  ∀ n, P741865392283080263.a n = (A029635 n : ℚ)

end A029635

/-! ## A029635.P17701148516133182693

`2*A200139(n)/sqrt(A262616(n))`
-/

namespace A029635.P17701148516133182693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A200139 n : ℝ) / Real.sqrt (A262616 n : ℝ))

end

end A029635.P17701148516133182693

namespace A029635

/-- `2*A200139(n)/sqrt(A262616(n))` -/
def P17701148516133182693.Spec : Prop :=
  ∀ n, P17701148516133182693.a n = (A029635 n : ℝ)

end A029635

/-! ## A029635.P6378293295943487273

`A097805(n)+ceil(A134059(n)/3)`
-/

namespace A029635.P6378293295943487273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + ⌈(A134059 n : ℚ) / 3⌉

end

end A029635.P6378293295943487273

namespace A029635

/-- `A097805(n)+ceil(A134059(n)/3)` -/
def P6378293295943487273.Spec : Prop :=
  ∀ n, P6378293295943487273.a n = A029635 n

end A029635

/-!
# A029638: Numbers in the (1,2)-Pascal triangle A029635 that are different from 1.

The programs for A029638, the canonical program `A029638.P12633178312082655939` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029638 has offset 1).

The definition of A029638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029638.P12176814037972923083

`A029637(n+1)+char[∑[n]]`
-/

namespace A029638.P12176814037972923083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A029638.P12176814037972923083

namespace A029638

/-- `A029637(n+1)+char[∑[n]]` -/
def P12176814037972923083.Spec : Prop :=
  ∀ n, P12176814037972923083.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P14268999682832464310

`A029656(A061579(n)+2)`
-/

namespace A029638.P14268999682832464310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A061579 n + 2).toNat

end

end A029638.P14268999682832464310

namespace A029638

/-- `A029656(A061579(n)+2)` -/
def P14268999682832464310.Spec : Prop :=
  ∀ n, P14268999682832464310.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P1672595835207597229

`A029656(A038722(n+1)+1)`
-/

namespace A029638.P1672595835207597229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A038722 (n + 1) + 1).toNat

end

end A029638.P1672595835207597229

namespace A029638

/-- `A029656(A038722(n+1)+1)` -/
def P1672595835207597229.Spec : Prop :=
  ∀ n, P1672595835207597229.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P4717387112989930660

`A029637(n+1)*A035214(n)`
-/

namespace A029638.P4717387112989930660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (n + 1) * A035214 n

end

end A029638.P4717387112989930660

namespace A029638

/-- `A029637(n+1)*A035214(n)` -/
def P4717387112989930660.Spec : Prop :=
  ∀ n, P4717387112989930660.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P12633178312082655939

`A074909(n)+A007318(abs(1-n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029638

/-- `A074909(n)+A007318(abs(1-n))` -/
def P12633178312082655939.Spec : Prop :=
  ∀ n, P12633178312082655939.a n = A029638 (n + 1)

theorem P12633178312082655939.correct : P12633178312082655939.Spec := by
  intro n
  simp only [A029638, Nat.add_sub_cancel]

end A029638

/-! ## A029638.P7864195469484757886

`(A010054(n)+1)*A029637(n+1)`
-/

namespace A029638.P7864195469484757886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010054 n + 1) * A029637 (n + 1)

end

end A029638.P7864195469484757886

namespace A029638

/-- `(A010054(n)+1)*A029637(n+1)` -/
def P7864195469484757886.Spec : Prop :=
  ∀ n, P7864195469484757886.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P1054436273565594873

`A029656(A002024(n+1)²-(n-1))`
-/

namespace A029638.P1054436273565594873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A002024 (n + 1) ^ 2 - ((n : ℤ) - 1)).toNat

end

end A029638.P1054436273565594873

namespace A029638

/-- `A029656(A002024(n+1)²-(n-1))` -/
def P1054436273565594873.Spec : Prop :=
  ∀ n, P1054436273565594873.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P4479785149242619601

`A007318(abs(1-n))+A007318(A007401(n+1))`
-/

namespace A029638.P4479785149242619601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat + A007318 (A007401 (n + 1)).toNat

end

end A029638.P4479785149242619601

namespace A029638

/-- `A007318(abs(1-n))+A007318(A007401(n+1))` -/
def P4479785149242619601.Spec : Prop :=
  ∀ n, P4479785149242619601.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P11699286142040482807

`A029635(comp[∑[n+1]])`
-/

namespace A029638.P11699286142040482807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029638.P11699286142040482807

namespace A029638

/-- `A029635(comp[∑[n+1]])` -/
def P11699286142040482807.Spec : Prop :=
  ∀ n, P11699286142040482807.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P942115422881038969

`2*A074909(n)-A318518(A124927(n))`
-/

namespace A029638.P942115422881038969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A318518 (A124927 n).toNat

end

end A029638.P942115422881038969

namespace A029638

/-- `2*A074909(n)-A318518(A124927(n))` -/
def P942115422881038969.Spec : Prop :=
  ∀ n, P942115422881038969.a n = A029638 (n + 1)

end A029638

/-! ## A029638.P14963574648512535616

`A181440(A029637(n+1))`
-/

namespace A029638.P14963574648512535616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A029637 (n + 1)).toNat

end

end A029638.P14963574648512535616

namespace A029638

/-- `A181440(A029637(n+1))` -/
def P14963574648512535616.Spec : Prop :=
  ∀ n, P14963574648512535616.a n = A029638 (n + 1)

end A029638

/-!
# A029639: Odd numbers in the (1,2)-Pascal triangle A029635 that are different from 1.

The programs for A029639, the canonical program `A029639.P17803277838601311190` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029639 has offset 0).

The definition of A029639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029639.P17803277838601311190

`A029652(lt[1, A029652(n+1)]+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029639

/-- `A029652(lt[1, A029652(n+1)]+1)` -/
def P17803277838601311190.Spec : Prop :=
  ∀ n, P17803277838601311190.a n = A029639 n

theorem P17803277838601311190.correct : P17803277838601311190.Spec := by
  intro n
  simp only [A029639]

end A029639

/-! ## A029639.P7560014210709650529

`A029652(lt[3, A029622(n)])`
-/

namespace A029639.P7560014210709650529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029639.P7560014210709650529

namespace A029639

/-- `A029652(lt[3, A029622(n)])` -/
def P7560014210709650529.Spec : Prop :=
  ∀ n, P7560014210709650529.a n = A029639 n

end A029639

/-! ## A029639.P12698624116787222436

`A029635(eq[A167407(n), A290452(n)])`
-/

namespace A029639.P12698624116787222436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029639.P12698624116787222436

namespace A029639

/-- `A029635(eq[A167407(n), A290452(n)])` -/
def P12698624116787222436.Spec : Prop :=
  ∀ n, P12698624116787222436.a n = A029639 n

end A029639

/-! ## A029639.P15075532516934747420

`A029635(lt[2, A029635(n)*A290452(n)])`
-/

namespace A029639.P15075532516934747420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029639.P15075532516934747420

namespace A029639

/-- `A029635(lt[2, A029635(n)*A290452(n)])` -/
def P15075532516934747420.Spec : Prop :=
  ∀ n, P15075532516934747420.a n = A029639 n

end A029639

/-! ## A029639.P786697099738331664

`A029635(lt[2/A029635(n), A290452(n)])`
-/

namespace A029639.P786697099738331664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A029635 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A029639.P786697099738331664

namespace A029639

/-- `A029635(lt[2/A029635(n), A290452(n)])` -/
def P786697099738331664.Spec : Prop :=
  ∀ n, P786697099738331664.a n = A029639 n

end A029639

/-!
# A029640: Even numbers in the (1,2)-Pascal triangle A029635.

The programs for A029640, the canonical program `A029640.P8656181183472079223` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029640 has offset 1).

The definition of A029640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029640.P795576023487328419

`2*A051467(abs(1-n))`
-/

namespace A029640.P795576023487328419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051467 |1 - (n : ℤ)|.toNat

end

end A029640.P795576023487328419

namespace A029640

/-- `2*A051467(abs(1-n))` -/
def P795576023487328419.Spec : Prop :=
  ∀ n, P795576023487328419.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P16975213289323530500

`A051467(abs(1-n))/2^A133574(A001316(n))`
-/

namespace A029640.P16975213289323530500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051467 |1 - (n : ℤ)|.toNat : ℚ) / (2 : ℚ) ^ (A133574 (A001316 n).toNat : ℤ)

end

end A029640.P16975213289323530500

namespace A029640

/-- `A051467(abs(1-n))/2^A133574(A001316(n))` -/
def P16975213289323530500.Spec : Prop :=
  ∀ n, P16975213289323530500.a n = (A029640 (n + 1) : ℚ)

end A029640

/-! ## A029640.P8656181183472079223

`A029635(eq[0, A029635(n)%2])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029640

/-- `A029635(eq[0, A029635(n)%2])` -/
def P8656181183472079223.Spec : Prop :=
  ∀ n, P8656181183472079223.a n = A029640 (n + 1)

theorem P8656181183472079223.correct : P8656181183472079223.Spec := by
  intro n
  simp only [A029640, Nat.add_sub_cancel]

end A029640

/-! ## A029640.P14979004373070313439

`A029635(eq[2, gcd(2, A029635(n))])`
-/

namespace A029640.P14979004373070313439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029635 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029640.P14979004373070313439

namespace A029640

/-- `A029635(eq[2, gcd(2, A029635(n))])` -/
def P14979004373070313439.Spec : Prop :=
  ∀ n, P14979004373070313439.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P15431278495648341914

`A029635(lt[n*A290452(n), 1])`
-/

namespace A029640.P15431278495648341914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290452 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029640.P15431278495648341914

namespace A029640

/-- `A029635(lt[n*A290452(n), 1])` -/
def P15431278495648341914.Spec : Prop :=
  ∀ n, P15431278495648341914.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P6052265464643068547

`A029635(eq[A000007(n), A290452(n)])`
-/

namespace A029640.P6052265464643068547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029640.P6052265464643068547

namespace A029640

/-- `A029635(eq[A000007(n), A290452(n)])` -/
def P6052265464643068547.Spec : Prop :=
  ∀ n, P6052265464643068547.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P8131056846984863068

`A029635(lt[A290452(n), A054977(n)])`
-/

namespace A029640.P8131056846984863068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029640.P8131056846984863068

namespace A029640

/-- `A029635(lt[A290452(n), A054977(n)])` -/
def P8131056846984863068.Spec : Prop :=
  ∀ n, P8131056846984863068.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P15934711685575237456

`A029635(eq[A290452(n)+1, A054977(n)])`
-/

namespace A029640.P15934711685575237456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029640.P15934711685575237456

namespace A029640

/-- `A029635(eq[A290452(n)+1, A054977(n)])` -/
def P15934711685575237456.Spec : Prop :=
  ∀ n, P15934711685575237456.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P5084005663435434086

`A029635(eq[1, A290452(n)+A167407(n)])`
-/

namespace A029640.P5084005663435434086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n + A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029640.P5084005663435434086

namespace A029640

/-- `A029635(eq[1, A290452(n)+A167407(n)])` -/
def P5084005663435434086.Spec : Prop :=
  ∀ n, P5084005663435434086.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P12507384888857878999

`A029635(lt[A290452(n), A000007(n)+1])`
-/

namespace A029640.P12507384888857878999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029640.P12507384888857878999

namespace A029640

/-- `A029635(lt[A290452(n), A000007(n)+1])` -/
def P12507384888857878999.Spec : Prop :=
  ∀ n, P12507384888857878999.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P17557544345932368769

`A029635(lt[A290452(n), A000038(n)+1])`
-/

namespace A029640.P17557544345932368769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029640.P17557544345932368769

namespace A029640

/-- `A029635(lt[A290452(n), A000038(n)+1])` -/
def P17557544345932368769.Spec : Prop :=
  ∀ n, P17557544345932368769.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P3981829656447385650

`A029635(eq[1, A054977(n)-A290452(n)])`
-/

namespace A029640.P3981829656447385650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029640.P3981829656447385650

namespace A029640

/-- `A029635(eq[1, A054977(n)-A290452(n)])` -/
def P3981829656447385650.Spec : Prop :=
  ∀ n, P3981829656447385650.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P11554696217004474906

`A029635(eq[1-A167407(n), A290452(n)])`
-/

namespace A029640.P11554696217004474906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A167407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029640.P11554696217004474906

namespace A029640

/-- `A029635(eq[1-A167407(n), A290452(n)])` -/
def P11554696217004474906.Spec : Prop :=
  ∀ n, P11554696217004474906.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P9036118465926233349

`A029635(lt[A290452(n)-A000007(n), 1])`
-/

namespace A029640.P9036118465926233349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n - A000007 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029640.P9036118465926233349

namespace A029640

/-- `A029635(lt[A290452(n)-A000007(n), 1])` -/
def P9036118465926233349.Spec : Prop :=
  ∀ n, P9036118465926233349.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P8420483637989171486

`A029635(lt[A290452(n)-A000038(n), 1])`
-/

namespace A029640.P8420483637989171486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n - A000038 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029640.P8420483637989171486

namespace A029640

/-- `A029635(lt[A290452(n)-A000038(n), 1])` -/
def P8420483637989171486.Spec : Prop :=
  ∀ n, P8420483637989171486.a n = A029640 (n + 1)

end A029640

/-! ## A029640.P9329078197095845200

`A029635(eq[2, A020639(A029635(n))])`
-/

namespace A029640.P9329078197095845200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A029635 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029640.P9329078197095845200

namespace A029640

/-- `A029635(eq[2, A020639(A029635(n))])` -/
def P9329078197095845200.Spec : Prop :=
  ∀ n, P9329078197095845200.a n = A029640 (n + 1)

end A029640

/-!
# A029641: Even numbers in the (1,2)-Pascal triangle A029635 that are different from 2.

The programs for A029641, the canonical program `A029641.P5309606783761197821` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029641 has offset 0).

The definition of A029641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029641.P16517855612956129923

`2*A051468(n)`
-/

namespace A029641.P16517855612956129923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051468 n

end

end A029641.P16517855612956129923

namespace A029641

/-- `2*A051468(n)` -/
def P16517855612956129923.Spec : Prop :=
  ∀ n, P16517855612956129923.a n = A029641 n

end A029641

/-! ## A029641.P12720113290851660163

`2*(A051456(n)-sqrt(A014727(n)))`
-/

namespace A029641.P12720113290851660163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A051456 n : ℝ) - Real.sqrt (A014727 n : ℝ))

end

end A029641.P12720113290851660163

namespace A029641

/-- `2*(A051456(n)-sqrt(A014727(n)))` -/
def P12720113290851660163.Spec : Prop :=
  ∀ n, P12720113290851660163.a n = (A029641 n : ℝ)

end A029641

/-! ## A029641.P12257753816725292849

`2*(A051456(n)-A014428(n+1))`
-/

namespace A029641.P12257753816725292849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051456 n - A014428 (n + 1))

end

end A029641.P12257753816725292849

namespace A029641

/-- `2*(A051456(n)-A014428(n+1))` -/
def P12257753816725292849.Spec : Prop :=
  ∀ n, P12257753816725292849.a n = A029641 n

end A029641

/-! ## A029641.P2851807421510466101

`A051468(n)+A051468(n)%A051456(n)`
-/

namespace A029641.P2851807421510466101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051468 n + Int.tmod (A051468 n) (A051456 n)

end

end A029641.P2851807421510466101

namespace A029641

/-- `A051468(n)+A051468(n)%A051456(n)` -/
def P2851807421510466101.Spec : Prop :=
  ∀ n, P2851807421510466101.a n = A029641 n

end A029641

/-! ## A029641.P17022318198960243212

`2*A051467(lt[1, A051455(n)])`
-/

namespace A029641.P17022318198960243212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029641.P17022318198960243212

namespace A029641

/-- `2*A051467(lt[1, A051455(n)])` -/
def P17022318198960243212.Spec : Prop :=
  ∀ n, P17022318198960243212.a n = A029641 n

end A029641

/-! ## A029641.P2084206048969114388

`2*A051467(lt[1, A051467(n)])`
-/

namespace A029641.P2084206048969114388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029641.P2084206048969114388

namespace A029641

/-- `2*A051467(lt[1, A051467(n)])` -/
def P2084206048969114388.Spec : Prop :=
  ∀ n, P2084206048969114388.a n = A029641 n

end A029641

/-! ## A029641.P12315443727685227867

`A029637(A268232(n+1)+1)`
-/

namespace A029641.P12315443727685227867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A268232 (n + 1) + 1).toNat

end

end A029641.P12315443727685227867

namespace A029641

/-- `A029637(A268232(n+1)+1)` -/
def P12315443727685227867.Spec : Prop :=
  ∀ n, P12315443727685227867.a n = A029641 n

end A029641

/-! ## A029641.P5309606783761197821

`A029638(A268232(n+1)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029641

/-- `A029638(A268232(n+1)+1)` -/
def P5309606783761197821.Spec : Prop :=
  ∀ n, P5309606783761197821.a n = A029641 n

theorem P5309606783761197821.correct : P5309606783761197821.Spec := by
  intro n
  simp only [A029641]

end A029641

/-! ## A029641.P1761303558268930547

`2*(A051597(A268232(n+1))-A051429(n))`
-/

namespace A029641.P1761303558268930547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051597 (A268232 (n + 1)).toNat - A051429 n)

end

end A029641.P1761303558268930547

namespace A029641

/-- `2*(A051597(A268232(n+1))-A051429(n))` -/
def P1761303558268930547.Spec : Prop :=
  ∀ n, P1761303558268930547.a n = A029641 n

end A029641

/-!
# A029642: Distinct odd numbers in the (1,2)-Pascal triangle A029635.

The programs for A029642, there is no canonical definition to state claims against.
-/

/-! ## A029642.P17086082306805986587

`filter[A029636(n+1), A000035(#)]`
-/

namespace A029642.P17086082306805986587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029642.P17086082306805986587

/-!
# A029643: Even numbers to the right of the central numbers of the (1,2)-Pascal triangle A029635.

The programs for A029643, there is no canonical definition to state claims against.
-/

/-! ## A029643.P17937609221023929785

`2*A051469(n)`
-/

namespace A029643.P17937609221023929785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051469 n

end

end A029643.P17937609221023929785

/-! ## A029643.P14847174939394014219

`A051469(char[1]+n)+A051469(n)`
-/

namespace A029643.P14847174939394014219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051469 ((if ∃ j, f1 j = n then 1 else 0) + n) + A051469 n

end

end A029643.P14847174939394014219

/-! ## A029643.P6351767507497606509

`lcm(A051469(n)+A051469(n), A001468(n))`
-/

namespace A029643.P6351767507497606509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051469 n + A051469 n) (A001468 n)

end

end A029643.P6351767507497606509

/-! ## A029643.P6578035301281306823

`A051469(n)/2^A008683(A006450(n+1))`
-/

namespace A029643.P6578035301281306823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051469 n : ℚ) / (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ)

end

end A029643.P6578035301281306823

/-! ## A029643.P7367652267895311215

`A051469(A233583(n+1))/(1-1/2)`
-/

namespace A029643.P7367652267895311215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051469 (A233583 (n + 1)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A029643.P7367652267895311215

/-! ## A029643.P2218390827642563041

`A051469(n)+A051469(n)%A051475(n)`
-/

namespace A029643.P2218390827642563041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051469 n + Int.tmod (A051469 n) (A051475 n)

end

end A029643.P2218390827642563041

/-! ## A029643.P14185799987607059330

`A000027(A051469(n)+A051469(n))`
-/

namespace A029643.P14185799987607059330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051469 n + A051469 n).toNat

end

end A029643.P14185799987607059330

/-!
# A029644: Numbers to the left of the central numbers of the (1,2)-Pascal triangle A029635.

The programs for A029644, the canonical program `A029644.P14451125049666601969` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029644 has offset 0).

The definition of A029644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029644.P8525318335475098431

`A029662(n)-A008315(n)`
-/

namespace A029644.P8525318335475098431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n - A008315 n

end

end A029644.P8525318335475098431

namespace A029644

/-- `A029662(n)-A008315(n)` -/
def P8525318335475098431.Spec : Prop :=
  ∀ n, P8525318335475098431.a n = A029644 n

end A029644

/-! ## A029644.P16085832370402861661

`A029610(n)-A014462(n+1)`
-/

namespace A029644.P16085832370402861661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029610 n - A014462 (n + 1)

end

end A029644.P16085832370402861661

namespace A029644

/-- `A029610(n)-A014462(n+1)` -/
def P16085832370402861661.Spec : Prop :=
  ∀ n, P16085832370402861661.a n = A029644 n

end A029644

/-! ## A029644.P14451125049666601969

`2*A014462(n+1)-A034868(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029644

/-- `2*A014462(n+1)-A034868(n)` -/
def P14451125049666601969.Spec : Prop :=
  ∀ n, P14451125049666601969.a n = A029644 n

theorem P14451125049666601969.correct : P14451125049666601969.Spec := by
  intro n
  simp only [A029644]

end A029644

/-! ## A029644.P13014883926103532429

`A029635(eq[0, A026729(n)])`
-/

namespace A029644.P13014883926103532429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P13014883926103532429

namespace A029644

/-- `A029635(eq[0, A026729(n)])` -/
def P13014883926103532429.Spec : Prop :=
  ∀ n, P13014883926103532429.a n = A029644 n

end A029644

/-! ## A029644.P9672462313495635493

`A029635(eq[0, A098158(n)])`
-/

namespace A029644.P9672462313495635493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P9672462313495635493

namespace A029644

/-- `A029635(eq[0, A098158(n)])` -/
def P9672462313495635493.Spec : Prop :=
  ∀ n, P9672462313495635493.a n = A029644 n

end A029644

/-! ## A029644.P10075314182988428381

`A029635(eq[0, A099040(n)])`
-/

namespace A029644.P10075314182988428381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P10075314182988428381

namespace A029644

/-- `A029635(eq[0, A099040(n)])` -/
def P10075314182988428381.Spec : Prop :=
  ∀ n, P10075314182988428381.a n = A029644 n

end A029644

/-! ## A029644.P5728349187451238406

`A029635(eq[0, A099097(n)])`
-/

namespace A029644.P5728349187451238406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P5728349187451238406

namespace A029644

/-- `A029635(eq[0, A099097(n)])` -/
def P5728349187451238406.Spec : Prop :=
  ∀ n, P5728349187451238406.a n = A029644 n

end A029644

/-! ## A029644.P16065586979591282391

`A029635(eq[0, A107131(n)])`
-/

namespace A029644.P16065586979591282391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P16065586979591282391

namespace A029644

/-- `A029635(eq[0, A107131(n)])` -/
def P16065586979591282391.Spec : Prop :=
  ∀ n, P16065586979591282391.a n = A029644 n

end A029644

/-! ## A029644.P18206852926259865141

`A029635(eq[0, A110517(n)])`
-/

namespace A029644.P18206852926259865141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P18206852926259865141

namespace A029644

/-- `A029635(eq[0, A110517(n)])` -/
def P18206852926259865141.Spec : Prop :=
  ∀ n, P18206852926259865141.a n = A029644 n

end A029644

/-! ## A029644.P14502163399099244532

`A029635(eq[0, A238160(n)])`
-/

namespace A029644.P14502163399099244532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P14502163399099244532

namespace A029644

/-- `A029635(eq[0, A238160(n)])` -/
def P14502163399099244532.Spec : Prop :=
  ∀ n, P14502163399099244532.a n = A029644 n

end A029644

/-! ## A029644.P5412623013075300485

`A029635(lt[A107131(n), 1])`
-/

namespace A029644.P5412623013075300485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029644.P5412623013075300485

namespace A029644

/-- `A029635(lt[A107131(n), 1])` -/
def P5412623013075300485.Spec : Prop :=
  ∀ n, P5412623013075300485.a n = A029644 n

end A029644

/-! ## A029644.P12784029151444709749

`A029635(lt[A238160(n), 1])`
-/

namespace A029644.P12784029151444709749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029644.P12784029151444709749

namespace A029644

/-- `A029635(lt[A238160(n), 1])` -/
def P12784029151444709749.Spec : Prop :=
  ∀ n, P12784029151444709749.a n = A029644 n

end A029644

/-! ## A029644.P14786614104522966797

`A029635(lt[n, A061579(n)])`
-/

namespace A029644.P14786614104522966797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029644.P14786614104522966797

namespace A029644

/-- `A029635(lt[n, A061579(n)])` -/
def P14786614104522966797.Spec : Prop :=
  ∀ n, P14786614104522966797.a n = A029644 n

end A029644

/-! ## A029644.P12173062845757326975

`A029635(lt[A002262(n), A025581(n)])`
-/

namespace A029644.P12173062845757326975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029644.P12173062845757326975

namespace A029644

/-- `A029635(lt[A002262(n), A025581(n)])` -/
def P12173062845757326975.Spec : Prop :=
  ∀ n, P12173062845757326975.a n = A029644 n

end A029644

/-! ## A029644.P4871646495674918991

`A029635(lt[A029635(n), A029653(n)])`
-/

namespace A029644.P4871646495674918991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029644.P4871646495674918991

namespace A029644

/-- `A029635(lt[A029635(n), A029653(n)])` -/
def P4871646495674918991.Spec : Prop :=
  ∀ n, P4871646495674918991.a n = A029644 n

end A029644

/-! ## A029644.P1536485051756096480

`A135226(eq[A100218(n)², A100218(n)])`
-/

namespace A029644.P1536485051756096480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029644.P1536485051756096480

namespace A029644

/-- `A135226(eq[A100218(n)², A100218(n)])` -/
def P1536485051756096480.Spec : Prop :=
  ∀ n, P1536485051756096480.a n = A029644 n

end A029644

/-! ## A029644.P5894464018660985577

`A029635(lt[A029635(n), A029635(n+1)])`
-/

namespace A029644.P5894464018660985577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029644.P5894464018660985577

namespace A029644

/-- `A029635(lt[A029635(n), A029635(n+1)])` -/
def P5894464018660985577.Spec : Prop :=
  ∀ n, P5894464018660985577.a n = A029644 n

end A029644

/-! ## A029644.P23825501929191491

`A029637(A274427(n+1))`
-/

namespace A029644.P23825501929191491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A274427 (n + 1)).toNat

end

end A029644.P23825501929191491

namespace A029644

/-- `A029637(A274427(n+1))` -/
def P23825501929191491.Spec : Prop :=
  ∀ n, P23825501929191491.a n = A029644 n

end A029644

/-! ## A029644.P8849434887819181414

`A029635(eq[0, A117434(n)])`
-/

namespace A029644.P8849434887819181414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P8849434887819181414

namespace A029644

/-- `A029635(eq[0, A117434(n)])` -/
def P8849434887819181414.Spec : Prop :=
  ∀ n, P8849434887819181414.a n = A029644 n

end A029644

/-! ## A029644.P7299426589393376930

`A029635(eq[0, A105868(n)])`
-/

namespace A029644.P7299426589393376930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029644.P7299426589393376930

namespace A029644

/-- `A029635(eq[0, A105868(n)])` -/
def P7299426589393376930.Spec : Prop :=
  ∀ n, P7299426589393376930.a n = A029644 n

end A029644

/-!
# A029645: Numbers to the left of the central elements of the (1,2)-Pascal triangle A029635 that are different from 1.

The programs for A029645, the canonical program `A029645.P11204956944610452439` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029645 has offset 0).

The definition of A029645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029645.P11204956944610452439

`A029611(n)-A014463(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029645

/-- `A029611(n)-A014463(n+1)` -/
def P11204956944610452439.Spec : Prop :=
  ∀ n, P11204956944610452439.a n = A029645 n

theorem P11204956944610452439.correct : P11204956944610452439.Spec := by
  intro n
  simp only [A029645]

end A029645

/-! ## A029645.P3208026862573222260

`A014463(n+1)+A014462(A000037(n+1))`
-/

namespace A029645.P3208026862573222260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014463 (n + 1) + A014462 (A000037 (n + 1)).toNat

end

end A029645.P3208026862573222260

namespace A029645

/-- `A014463(n+1)+A014462(A000037(n+1))` -/
def P3208026862573222260.Spec : Prop :=
  ∀ n, P3208026862573222260.a n = A029645 n

end A029645

/-! ## A029645.P11017247863453566769

`A029644(A049068(n+1))`
-/

namespace A029645.P11017247863453566769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (A049068 (n + 1)).toNat

end

end A029645.P11017247863453566769

namespace A029645

/-- `A029644(A049068(n+1))` -/
def P11017247863453566769.Spec : Prop :=
  ∀ n, P11017247863453566769.a n = A029645 n

end A029645

/-! ## A029645.P9243355493371985298

`A029644(lt[1, A029644(n)])`
-/

namespace A029645.P9243355493371985298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029645.P9243355493371985298

namespace A029645

/-- `A029644(lt[1, A029644(n)])` -/
def P9243355493371985298.Spec : Prop :=
  ∀ n, P9243355493371985298.a n = A029645 n

end A029645

/-! ## A029645.P13021583459948963232

`A029635(eq[0, A100218(n)])`
-/

namespace A029645.P13021583459948963232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P13021583459948963232

namespace A029645

/-- `A029635(eq[0, A100218(n)])` -/
def P13021583459948963232.Spec : Prop :=
  ∀ n, P13021583459948963232.a n = A029645 n

end A029645

/-! ## A029645.P5012197449690544267

`A135226(eq[0, A100218(n)])`
-/

namespace A029645.P5012197449690544267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P5012197449690544267

namespace A029645

/-- `A135226(eq[0, A100218(n)])` -/
def P5012197449690544267.Spec : Prop :=
  ∀ n, P5012197449690544267.a n = A029645 n

end A029645

/-! ## A029645.P3209411255252163107

`A115241(lt[1, A077029(n+1)])`
-/

namespace A029645.P3209411255252163107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029645.P3209411255252163107

namespace A029645

/-- `A115241(lt[1, A077029(n+1)])` -/
def P3209411255252163107.Spec : Prop :=
  ∀ n, P3209411255252163107.a n = A029645 n

end A029645

/-! ## A029645.P17474447626458678794

`A029635(lt[A029635(n), A208510(n+1)])`
-/

namespace A029645.P17474447626458678794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029645.P17474447626458678794

namespace A029645

/-- `A029635(lt[A029635(n), A208510(n+1)])` -/
def P17474447626458678794.Spec : Prop :=
  ∀ n, P17474447626458678794.a n = A029645 n

end A029645

/-! ## A029645.P13195858665152439312

`A029635(eq[0, A145460(n)])`
-/

namespace A029645.P13195858665152439312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P13195858665152439312

namespace A029645

/-- `A029635(eq[0, A145460(n)])` -/
def P13195858665152439312.Spec : Prop :=
  ∀ n, P13195858665152439312.a n = A029645 n

end A029645

/-! ## A029645.P2329102331806908142

`A135226(eq[0, A145460(n)])`
-/

namespace A029645.P2329102331806908142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P2329102331806908142

namespace A029645

/-- `A135226(eq[0, A145460(n)])` -/
def P2329102331806908142.Spec : Prop :=
  ∀ n, P2329102331806908142.a n = A029645 n

end A029645

/-! ## A029645.P16858781653856326229

`A029635(eq[0, A292948(n)])`
-/

namespace A029645.P16858781653856326229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P16858781653856326229

namespace A029645

/-- `A029635(eq[0, A292948(n)])` -/
def P16858781653856326229.Spec : Prop :=
  ∀ n, P16858781653856326229.a n = A029645 n

end A029645

/-! ## A029645.P8278129145750114252

`A029635(lt[A145460(n), 1])`
-/

namespace A029645.P8278129145750114252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029645.P8278129145750114252

namespace A029645

/-- `A029635(lt[A145460(n), 1])` -/
def P8278129145750114252.Spec : Prop :=
  ∀ n, P8278129145750114252.a n = A029645 n

end A029645

/-! ## A029645.P6825396289726742819

`A029635(lt[A029635(n), A143398(n)])`
-/

namespace A029645.P6825396289726742819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029645.P6825396289726742819

namespace A029645

/-- `A029635(lt[A029635(n), A143398(n)])` -/
def P6825396289726742819.Spec : Prop :=
  ∀ n, P6825396289726742819.a n = A029645 n

end A029645

/-! ## A029645.P556347677303166052

`A029635(eq[0, A292973(n)])`
-/

namespace A029645.P556347677303166052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P556347677303166052

namespace A029645

/-- `A029635(eq[0, A292973(n)])` -/
def P556347677303166052.Spec : Prop :=
  ∀ n, P556347677303166052.a n = A029645 n

end A029645

/-! ## A029645.P17689837292233014547

`A029635(eq[0, A292978(n)])`
-/

namespace A029645.P17689837292233014547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029645.P17689837292233014547

namespace A029645

/-- `A029635(eq[0, A292978(n)])` -/
def P17689837292233014547.Spec : Prop :=
  ∀ n, P17689837292233014547.a n = A029645 n

end A029645

/-!
# A029646: Odd numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

The programs for A029646, the canonical program `A029646.P63597527185748147` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029646 has offset 0).

The definition of A029646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029646.P63597527185748147

`A029644(eq[1, A130047(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029646

/-- `A029644(eq[1, A130047(n)])` -/
def P63597527185748147.Spec : Prop :=
  ∀ n, P63597527185748147.a n = A029646 n

theorem P63597527185748147.correct : P63597527185748147.Spec := by
  intro n
  simp only [A029646]

end A029646

/-! ## A029646.P189761345035776346

`A029644(eq[1, A029644(n)%2])`
-/

namespace A029646.P189761345035776346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029644 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029646.P189761345035776346

namespace A029646

/-- `A029644(eq[1, A029644(n)%2])` -/
def P189761345035776346.Spec : Prop :=
  ∀ n, P189761345035776346.a n = A029646 n

end A029646

/-! ## A029646.P6482745492514263428

`A029635(lt[A107131(n), A008949(n)%2])`
-/

namespace A029646.P6482745492514263428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008949 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P6482745492514263428

namespace A029646

/-- `A029635(lt[A107131(n), A008949(n)%2])` -/
def P6482745492514263428.Spec : Prop :=
  ∀ n, P6482745492514263428.a n = A029646 n

end A029646

/-! ## A029646.P17144795491777255104

`A029635(lt[A107131(n), A029618(n)%2])`
-/

namespace A029646.P17144795491777255104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P17144795491777255104

namespace A029646

/-- `A029635(lt[A107131(n), A029618(n)%2])` -/
def P17144795491777255104.Spec : Prop :=
  ∀ n, P17144795491777255104.a n = A029646 n

end A029646

/-! ## A029646.P14898068578378572238

`A029635(lt[A107131(n), A290454(n)%2])`
-/

namespace A029646.P14898068578378572238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290454 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P14898068578378572238

namespace A029646

/-- `A029635(lt[A107131(n), A290454(n)%2])` -/
def P14898068578378572238.Spec : Prop :=
  ∀ n, P14898068578378572238.a n = A029646 n

end A029646

/-! ## A029646.P1704240147873674485

`A029635(lt[A107131(n), A290460(n)%2])`
-/

namespace A029646.P1704240147873674485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290460 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P1704240147873674485

namespace A029646

/-- `A029635(lt[A107131(n), A290460(n)%2])` -/
def P1704240147873674485.Spec : Prop :=
  ∀ n, P1704240147873674485.a n = A029646 n

end A029646

/-! ## A029646.P17849880238367996137

`A029635(lt[A107131(n), A261835(n)%2])`
-/

namespace A029646.P17849880238367996137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261835 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P17849880238367996137

namespace A029646

/-- `A029635(lt[A107131(n), A261835(n)%2])` -/
def P17849880238367996137.Spec : Prop :=
  ∀ n, P17849880238367996137.a n = A029646 n

end A029646

/-! ## A029646.P4934469862163409624

`A029635(lt[A107131(n), A261363(n)%2])`
-/

namespace A029646.P4934469862163409624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261363 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P4934469862163409624

namespace A029646

/-- `A029635(lt[A107131(n), A261363(n)%2])` -/
def P4934469862163409624.Spec : Prop :=
  ∀ n, P4934469862163409624.a n = A029646 n

end A029646

/-! ## A029646.P5589533050209891125

`A029635(lt[A107131(n), A173018(n)%2])`
-/

namespace A029646.P5589533050209891125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029646.P5589533050209891125

namespace A029646

/-- `A029635(lt[A107131(n), A173018(n)%2])` -/
def P5589533050209891125.Spec : Prop :=
  ∀ n, P5589533050209891125.a n = A029646 n

end A029646

/-!
# A029647: Even numbers to the left of the central elements of the (1,2)-Pascal triangle A029635.

The programs for A029647, the canonical program `A029647.P16607861063663059710` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029647 has offset 0).

The definition of A029647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029647.P17163703882034329028

`2*A051471(n)`
-/

namespace A029647.P17163703882034329028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051471 n

end

end A029647.P17163703882034329028

namespace A029647

/-- `2*A051471(n)` -/
def P17163703882034329028.Spec : Prop :=
  ∀ n, P17163703882034329028.a n = A029647 n

end A029647

/-! ## A029647.P17572553588867642456

`A051471(sqrt(A000290(n)))/(1-1/2)`
-/

namespace A029647.P17572553588867642456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051471 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A029647.P17572553588867642456

namespace A029647

/-- `A051471(sqrt(A000290(n)))/(1-1/2)` -/
def P17572553588867642456.Spec : Prop :=
  ∀ n, P17572553588867642456.a n = (A029647 n : ℚ)

end A029647

/-! ## A029647.P1599037185257110598

`A051471(sqrt(A000290(n)))+A051471(n)`
-/

namespace A029647.P1599037185257110598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051471 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A051471 n

end

end A029647.P1599037185257110598

namespace A029647

/-- `A051471(sqrt(A000290(n)))+A051471(n)` -/
def P1599037185257110598.Spec : Prop :=
  ∀ n, P1599037185257110598.a n = A029647 n

end A029647

/-! ## A029647.P4711736690163392924

`A051471(A005843(n)/2)+A051471(n)`
-/

namespace A029647.P4711736690163392924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051471 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051471 n

end

end A029647.P4711736690163392924

namespace A029647

/-- `A051471(A005843(n)/2)+A051471(n)` -/
def P4711736690163392924.Spec : Prop :=
  ∀ n, P4711736690163392924.a n = A029647 n

end A029647

/-! ## A029647.P8466938205593468351

`A051471(A005843(n)-n)+A051471(n)`
-/

namespace A029647.P8466938205593468351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051471 (A005843 n - (n : ℤ)).toNat + A051471 n

end

end A029647.P8466938205593468351

namespace A029647

/-- `A051471(A005843(n)-n)+A051471(n)` -/
def P8466938205593468351.Spec : Prop :=
  ∀ n, P8466938205593468351.a n = A029647 n

end A029647

/-! ## A029647.P16607861063663059710

`A029644(eq[0, A130047(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029647

/-- `A029644(eq[0, A130047(n)])` -/
def P16607861063663059710.Spec : Prop :=
  ∀ n, P16607861063663059710.a n = A029647 n

theorem P16607861063663059710.correct : P16607861063663059710.Spec := by
  intro n
  simp only [A029647]

end A029647

/-! ## A029647.P7459360195515872493

`A051471(A004526(n+1+n))+A051471(n)`
-/

namespace A029647.P7459360195515872493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051471 (A004526 (n + 1 + n)).toNat + A051471 n

end

end A029647.P7459360195515872493

namespace A029647

/-- `A051471(A004526(n+1+n))+A051471(n)` -/
def P7459360195515872493.Spec : Prop :=
  ∀ n, P7459360195515872493.a n = A029647 n

end A029647

/-! ## A029647.P8458012904012667195

`2*A051467(lt[A051433(n), A051455(n)])`
-/

namespace A029647.P8458012904012667195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029647.P8458012904012667195

namespace A029647

/-- `2*A051467(lt[A051433(n), A051455(n)])` -/
def P8458012904012667195.Spec : Prop :=
  ∀ n, P8458012904012667195.a n = A029647 n

end A029647

/-!
# A029648: Numbers to the right of the central elements of the (1,2)-Pascal triangle A029635.

The programs for A029648, the canonical program `A029648.P5252646046348079995` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029648 has offset 0).

The definition of A029648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029648.P5252646046348079995

`A029666(n)+A008313(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029648

/-- `A029666(n)+A008313(n)` -/
def P5252646046348079995.Spec : Prop :=
  ∀ n, P5252646046348079995.a n = A029648 n

theorem P5252646046348079995.correct : P5252646046348079995.Spec := by
  intro n
  simp only [A029648]

end A029648

/-! ## A029648.P13994591014845159247

`A034869(n)+A014413(n+1)`
-/

namespace A029648.P13994591014845159247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 n + A014413 (n + 1)

end

end A029648.P13994591014845159247

namespace A029648

/-- `A034869(n)+A014413(n+1)` -/
def P13994591014845159247.Spec : Prop :=
  ∀ n, P13994591014845159247.a n = A029648 n

end A029648

/-! ## A029648.P15636033335503110241

`A029614(n)-A014413(n+1)`
-/

namespace A029648.P15636033335503110241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - A014413 (n + 1)

end

end A029648.P15636033335503110241

namespace A029648

/-- `A029614(n)-A014413(n+1)` -/
def P15636033335503110241.Spec : Prop :=
  ∀ n, P15636033335503110241.a n = A029648 n

end A029648

/-! ## A029648.P12001803073764806323

`A034869(n)+A028330(n)/2`
-/

namespace A029648.P12001803073764806323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034869 n : ℚ) + (A028330 n : ℚ) / 2

end

end A029648.P12001803073764806323

namespace A029648

/-- `A034869(n)+A028330(n)/2` -/
def P12001803073764806323.Spec : Prop :=
  ∀ n, P12001803073764806323.a n = (A029648 n : ℚ)

end A029648

/-! ## A029648.P8567513765669690397

`(A034869(n)+A029614(n))/2`
-/

namespace A029648.P8567513765669690397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034869 n + A029614 n : ℚ) / 2

end

end A029648.P8567513765669690397

namespace A029648

/-- `(A034869(n)+A029614(n))/2` -/
def P8567513765669690397.Spec : Prop :=
  ∀ n, P8567513765669690397.a n = (A029648 n : ℚ)

end A029648

/-! ## A029648.P17564170466616110542

`A029614(n)-A028330(n)/2`
-/

namespace A029648.P17564170466616110542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029614 n : ℚ) - (A028330 n : ℚ) / 2

end

end A029648.P17564170466616110542

namespace A029648

/-- `A029614(n)-A028330(n)/2` -/
def P17564170466616110542.Spec : Prop :=
  ∀ n, P17564170466616110542.a n = (A029648 n : ℚ)

end A029648

/-! ## A029648.P7233195282817512486

`A014413(n+1)+A111417(n)+A008311(n)`
-/

namespace A029648.P7233195282817512486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + (A111417 n + A008311 n)

end

end A029648.P7233195282817512486

namespace A029648

/-- `A014413(n+1)+A111417(n)+A008311(n)` -/
def P7233195282817512486.Spec : Prop :=
  ∀ n, P7233195282817512486.a n = A029648 n

end A029648

/-! ## A029648.P4958687027377307220

`A029635(comp[A245300(n)])`
-/

namespace A029648.P4958687027377307220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A029648.P4958687027377307220

namespace A029648

/-- `A029635(comp[A245300(n)])` -/
def P4958687027377307220.Spec : Prop :=
  ∀ n, P4958687027377307220.a n = A029648 n

end A029648

/-! ## A029648.P17456030281808202785

`A029635(eq[0, A052553(n)])`
-/

namespace A029648.P17456030281808202785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029648.P17456030281808202785

namespace A029648

/-- `A029635(eq[0, A052553(n)])` -/
def P17456030281808202785.Spec : Prop :=
  ∀ n, P17456030281808202785.a n = A029648 n

end A029648

/-! ## A029648.P17111631898337198749

`A029635(eq[0, A061896(n)])`
-/

namespace A029648.P17111631898337198749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029648.P17111631898337198749

namespace A029648

/-- `A029635(eq[0, A061896(n)])` -/
def P17111631898337198749.Spec : Prop :=
  ∀ n, P17111631898337198749.a n = A029648 n

end A029648

/-! ## A029648.P1268754255619454645

`A029635(eq[0, A089627(n)])`
-/

namespace A029648.P1268754255619454645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029648.P1268754255619454645

namespace A029648

/-- `A029635(eq[0, A089627(n)])` -/
def P1268754255619454645.Spec : Prop :=
  ∀ n, P1268754255619454645.a n = A029648 n

end A029648

/-! ## A029648.P2085626396729423401

`A029635(eq[0, A209599(n)])`
-/

namespace A029648.P2085626396729423401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029648.P2085626396729423401

namespace A029648

/-- `A029635(eq[0, A209599(n)])` -/
def P2085626396729423401.Spec : Prop :=
  ∀ n, P2085626396729423401.a n = A029648 n

end A029648

/-! ## A029648.P10644060065924878857

`A029635(lt[1, A238160(n)])`
-/

namespace A029648.P10644060065924878857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029648.P10644060065924878857

namespace A029648

/-- `A029635(lt[1, A238160(n)])` -/
def P10644060065924878857.Spec : Prop :=
  ∀ n, P10644060065924878857.a n = A029648 n

end A029648

/-! ## A029648.P367819111042477906

`A115241(lt[1, A238160(n)])`
-/

namespace A029648.P367819111042477906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029648.P367819111042477906

namespace A029648

/-- `A115241(lt[1, A238160(n)])` -/
def P367819111042477906.Spec : Prop :=
  ∀ n, P367819111042477906.a n = A029648 n

end A029648

/-! ## A029648.P1018564824212181101

`A029635(lt[A061579(n), n])`
-/

namespace A029648.P1018564824212181101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029648.P1018564824212181101

namespace A029648

/-- `A029635(lt[A061579(n), n])` -/
def P1018564824212181101.Spec : Prop :=
  ∀ n, P1018564824212181101.a n = A029648 n

end A029648

/-! ## A029648.P2514717637176455775

`A029635(eq[0, A003988(n+1)])`
-/

namespace A029648.P2514717637176455775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029648.P2514717637176455775

namespace A029648

/-- `A029635(eq[0, A003988(n+1)])` -/
def P2514717637176455775.Spec : Prop :=
  ∀ n, P2514717637176455775.a n = A029648 n

end A029648

/-! ## A029648.P10483843893432657916

`A115241(lt[A077029(n+1), 1])`
-/

namespace A029648.P10483843893432657916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077029 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A029648.P10483843893432657916

namespace A029648

/-- `A115241(lt[A077029(n+1), 1])` -/
def P10483843893432657916.Spec : Prop :=
  ∀ n, P10483843893432657916.a n = A029648 n

end A029648

/-! ## A029648.P13959861960014077349

`A029635(lt[A025581(n), A002262(n)])`
-/

namespace A029648.P13959861960014077349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029648.P13959861960014077349

namespace A029648

/-- `A029635(lt[A025581(n), A002262(n)])` -/
def P13959861960014077349.Spec : Prop :=
  ∀ n, P13959861960014077349.a n = A029648 n

end A029648

/-! ## A029648.P4748358931694776206

`A029635(lt[A214075(n), A107131(n)])`
-/

namespace A029648.P4748358931694776206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029648.P4748358931694776206

namespace A029648

/-- `A029635(lt[A214075(n), A107131(n)])` -/
def P4748358931694776206.Spec : Prop :=
  ∀ n, P4748358931694776206.a n = A029648 n

end A029648

/-! ## A029648.P3113332224879540244

`A029635(lt[A207636(n+1), A207627(n+1)])`
-/

namespace A029648.P3113332224879540244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029648.P3113332224879540244

namespace A029648

/-- `A029635(lt[A207636(n+1), A207627(n+1)])` -/
def P3113332224879540244.Spec : Prop :=
  ∀ n, P3113332224879540244.a n = A029648 n

end A029648

/-!
# A029649: Numbers to the right of the central elements of the (1,2)-Pascal triangle A029635 that are different from 2.

The programs for A029649, the canonical program `A029649.P9567198299936449511` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029649 has offset 0).

The definition of A029649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029649.P9567198299936449511

`A029615(n+1)-A014411(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029649

/-- `A029615(n+1)-A014411(n+1)` -/
def P9567198299936449511.Spec : Prop :=
  ∀ n, P9567198299936449511.a n = A029649 n

theorem P9567198299936449511.correct : P9567198299936449511.Spec := by
  intro n
  simp only [A029649]

end A029649

/-! ## A029649.P3632710909701166294

`A029648(A183569(n+1))`
-/

namespace A029649.P3632710909701166294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 (A183569 (n + 1)).toNat

end

end A029649.P3632710909701166294

namespace A029649

/-- `A029648(A183569(n+1))` -/
def P3632710909701166294.Spec : Prop :=
  ∀ n, P3632710909701166294.a n = A029649 n

end A029649

/-! ## A029649.P216087578819088199

`A029648(lt[2, A029648(n)])`
-/

namespace A029649.P216087578819088199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029649.P216087578819088199

namespace A029649

/-- `A029648(lt[2, A029648(n)])` -/
def P216087578819088199.Spec : Prop :=
  ∀ n, P216087578819088199.a n = A029649 n

end A029649

/-! ## A029649.P15138573276325506643

`A029635(lt[1, A212363(n)])`
-/

namespace A029649.P15138573276325506643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029649.P15138573276325506643

namespace A029649

/-- `A029635(lt[1, A212363(n)])` -/
def P15138573276325506643.Spec : Prop :=
  ∀ n, P15138573276325506643.a n = A029649 n

end A029649

/-! ## A029649.P13346765795160658340

`A029635(lt[2, A238160(n)])`
-/

namespace A029649.P13346765795160658340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029649.P13346765795160658340

namespace A029649

/-- `A029635(lt[2, A238160(n)])` -/
def P13346765795160658340.Spec : Prop :=
  ∀ n, P13346765795160658340.a n = A029649 n

end A029649

/-! ## A029649.P4239346501317757087

`A115241(lt[2, A238160(n)])`
-/

namespace A029649.P4239346501317757087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115241 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029649.P4239346501317757087

namespace A029649

/-- `A115241(lt[2, A238160(n)])` -/
def P4239346501317757087.Spec : Prop :=
  ∀ n, P4239346501317757087.a n = A029649 n

end A029649

/-! ## A029649.P5128976202380482795

`A029635(eq[A061896(n), A103452(n)])`
-/

namespace A029649.P5128976202380482795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P5128976202380482795

namespace A029649

/-- `A029635(eq[A061896(n), A103452(n)])` -/
def P5128976202380482795.Spec : Prop :=
  ∀ n, P5128976202380482795.a n = A029649 n

end A029649

/-! ## A029649.P12290139754685156292

`A029635(eq[A061896(n), A130123(n)])`
-/

namespace A029649.P12290139754685156292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P12290139754685156292

namespace A029649

/-- `A029635(eq[A061896(n), A130123(n)])` -/
def P12290139754685156292.Spec : Prop :=
  ∀ n, P12290139754685156292.a n = A029649 n

end A029649

/-! ## A029649.P14422492621970565820

`A135226(eq[A061896(n), A103452(n)])`
-/

namespace A029649.P14422492621970565820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P14422492621970565820

namespace A029649

/-- `A135226(eq[A061896(n), A103452(n)])` -/
def P14422492621970565820.Spec : Prop :=
  ∀ n, P14422492621970565820.a n = A029649 n

end A029649

/-! ## A029649.P983885286817253658

`A135226(eq[A061896(n), A130123(n)])`
-/

namespace A029649.P983885286817253658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P983885286817253658

namespace A029649

/-- `A135226(eq[A061896(n), A130123(n)])` -/
def P983885286817253658.Spec : Prop :=
  ∀ n, P983885286817253658.a n = A029649 n

end A029649

/-! ## A029649.P13660560484572339572

`A029635(lt[A193554(n), A107131(n)])`
-/

namespace A029649.P13660560484572339572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029649.P13660560484572339572

namespace A029649

/-- `A029635(lt[A193554(n), A107131(n)])` -/
def P13660560484572339572.Spec : Prop :=
  ∀ n, P13660560484572339572.a n = A029649 n

end A029649

/-! ## A029649.P6485584878271968870

`A029635(eq[A209599(n+1), A209599(n)])`
-/

namespace A029649.P6485584878271968870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P6485584878271968870

namespace A029649

/-- `A029635(eq[A209599(n+1), A209599(n)])` -/
def P6485584878271968870.Spec : Prop :=
  ∀ n, P6485584878271968870.a n = A029649 n

end A029649

/-! ## A029649.P590244926913153289

`A029635(eq[A061896(n), A271424(n)])`
-/

namespace A029649.P590244926913153289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P590244926913153289

namespace A029649

/-- `A029635(eq[A061896(n), A271424(n)])` -/
def P590244926913153289.Spec : Prop :=
  ∀ n, P590244926913153289.a n = A029649 n

end A029649

/-! ## A029649.P11421505569482123503

`A029635(lt[A143398(n)+1, A029635(n)])`
-/

namespace A029649.P11421505569482123503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029649.P11421505569482123503

namespace A029649

/-- `A029635(lt[A143398(n)+1, A029635(n)])` -/
def P11421505569482123503.Spec : Prop :=
  ∀ n, P11421505569482123503.a n = A029649 n

end A029649

/-! ## A029649.P8190048336983114797

`A029635(eq[A061896(n), A136572(n)])`
-/

namespace A029649.P8190048336983114797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P8190048336983114797

namespace A029649

/-- `A029635(eq[A061896(n), A136572(n)])` -/
def P8190048336983114797.Spec : Prop :=
  ∀ n, P8190048336983114797.a n = A029649 n

end A029649

/-! ## A029649.P9787021530761444429

`A135226(eq[A061896(n), A136572(n)])`
-/

namespace A029649.P9787021530761444429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135226 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P9787021530761444429

namespace A029649

/-- `A135226(eq[A061896(n), A136572(n)])` -/
def P9787021530761444429.Spec : Prop :=
  ∀ n, P9787021530761444429.a n = A029649 n

end A029649

/-! ## A029649.P9864174739727709779

`A029635(eq[A180969(n), A238123(n)])`
-/

namespace A029649.P9864174739727709779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029649.P9864174739727709779

namespace A029649

/-- `A029635(eq[A180969(n), A238123(n)])` -/
def P9864174739727709779.Spec : Prop :=
  ∀ n, P9864174739727709779.a n = A029649 n

end A029649

/-!
# A029650: Odd numbers to the right of the central elements of the (1,2)-Pascal triangle A029635.

The programs for A029650, there is no canonical definition to state claims against.
-/

/-! ## A029650.P7255689372457296453

`A029649(eq[2, A040003(A029649(n))])`
-/

namespace A029650.P7255689372457296453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (A029649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029650.P7255689372457296453

/-! ## A029650.P12474080648162865814

`A029648(eq[2, A040080(A029648(n))])`
-/

namespace A029650.P12474080648162865814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A029648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029650.P12474080648162865814

/-! ## A029650.P11390136141893754459

`filter[A029648(n), A000035(#)]`
-/

namespace A029650.P11390136141893754459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029650.P11390136141893754459

/-! ## A029650.P7450137218452533610

`filter[A029649(n), A000035(#)]`
-/

namespace A029650.P7450137218452533610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029650.P7450137218452533610

/-! ## A029650.P6216846401063481812

`filter[A029648(n), A266070(#)]`
-/

namespace A029650.P6216846401063481812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A029650.P6216846401063481812

/-!
# A029651: Central elements of the (1,2)-Pascal triangle A029635.

The programs for A029651, the canonical program `A029651.P11256932498027878676` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029651 has offset 0).

The definition of A029651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029651.P13894774795261275864

`(4-2/n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A029651.P13894774795261275864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A029651.P13894774795261275864

namespace A029651

/-- `(4-2/n)*a(n-1)` -/
def P13894774795261275864.Spec : Prop :=
  ∀ n, P13894774795261275864.a n = (A029651 n : ℚ)

end A029651

/-! ## A029651.P11440369857083192592

`2*(2-n^(-1))*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A029651.P11440369857083192592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1))

end

end A029651.P11440369857083192592

namespace A029651

/-- `2*(2-n^(-1))*a(n-1)` -/
def P11440369857083192592.Spec : Prop :=
  ∀ n, P11440369857083192592.a n = (A029651 n : ℚ)

end A029651

/-! ## A029651.P7280765958395615784

`record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A029651.P7280765958395615784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P7280765958395615784

namespace A029651

/-- `record[a(n-1)/(floor(n/2)/n-1)]` -/
def P7280765958395615784.Spec : Prop :=
  ∀ n, P7280765958395615784.a n = (A029651 n : ℚ)

end A029651

/-! ## A029651.P10467955894256839544

`A050168(2*n)`
-/

namespace A029651.P10467955894256839544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (2 * n)

end

end A029651.P10467955894256839544

namespace A029651

/-- `A050168(2*n)` -/
def P10467955894256839544.Spec : Prop :=
  ∀ n, P10467955894256839544.a n = A029651 n

end A029651

/-! ## A029651.P11256932498027878676

`floor(3*A000984(n)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029651

/-- `floor(3*A000984(n)/2)` -/
def P11256932498027878676.Spec : Prop :=
  ∀ n, P11256932498027878676.a n = A029651 n

theorem P11256932498027878676.correct : P11256932498027878676.Spec := by
  intro n
  simp only [A029651]

end A029651

/-! ## A029651.P9741529954041638956

`record[floor(3*A081668(n)/2)]`
-/

namespace A029651.P9741529954041638956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A081668 n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P9741529954041638956

namespace A029651

/-- `record[floor(3*A081668(n)/2)]` -/
def P9741529954041638956.Spec : Prop :=
  ∀ n, P9741529954041638956.a n = A029651 n

end A029651

/-! ## A029651.P1505553787022547826

`record[3^(n%2)*A001405(n)]`
-/

namespace A029651.P1505553787022547826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P1505553787022547826

namespace A029651

/-- `record[3^(n%2)*A001405(n)]` -/
def P1505553787022547826.Spec : Prop :=
  ∀ n, P1505553787022547826.a n = A029651 n

end A029651

/-! ## A029651.P15144366635040897071

`(n+1)/2*A120589(n+1)`
-/

namespace A029651.P15144366635040897071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A120589 (n + 1) : ℚ)

end

end A029651.P15144366635040897071

namespace A029651

/-- `(n+1)/2*A120589(n+1)` -/
def P15144366635040897071.Spec : Prop :=
  ∀ n, P15144366635040897071.a n = (A029651 n : ℚ)

end A029651

/-! ## A029651.P3048812293809472136

`floor(3*(n+1)*A000108(n)/2)`
-/

namespace A029651.P3048812293809472136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((n + 1 : ℤ) * A000108 n : ℚ) / 2)⌋

end

end A029651.P3048812293809472136

namespace A029651

/-- `floor(3*(n+1)*A000108(n)/2)` -/
def P3048812293809472136.Spec : Prop :=
  ∀ n, P3048812293809472136.a n = A029651 n

end A029651

/-! ## A029651.P4675384967009210456

`record[A050168(A014681(n))]`
-/

namespace A029651.P4675384967009210456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P4675384967009210456

namespace A029651

/-- `record[A050168(A014681(n))]` -/
def P4675384967009210456.Spec : Prop :=
  ∀ n, P4675384967009210456.a n = A029651 n

end A029651

/-! ## A029651.P10342206111482819195

`record[A050168(A018838(n))]`
-/

namespace A029651.P10342206111482819195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P10342206111482819195

namespace A029651

/-- `record[A050168(A018838(n))]` -/
def P10342206111482819195.Spec : Prop :=
  ∀ n, P10342206111482819195.a n = A029651 n

end A029651

/-! ## A029651.P18236289962450806808

`record[A050168(A083220(n))]`
-/

namespace A029651.P18236289962450806808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P18236289962450806808

namespace A029651

/-- `record[A050168(A083220(n))]` -/
def P18236289962450806808.Spec : Prop :=
  ∀ n, P18236289962450806808.a n = A029651 n

end A029651

/-! ## A029651.P18046277738445186316

`record[A050168(A153733(n))]`
-/

namespace A029651.P18046277738445186316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P18046277738445186316

namespace A029651

/-- `record[A050168(A153733(n))]` -/
def P18046277738445186316.Spec : Prop :=
  ∀ n, P18046277738445186316.a n = A029651 n

end A029651

/-! ## A029651.P16473269421569614390

`A189176(n)+A001791(n)`
-/

namespace A029651.P16473269421569614390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n + A001791 n

end

end A029651.P16473269421569614390

namespace A029651

/-- `A189176(n)+A001791(n)` -/
def P16473269421569614390.Spec : Prop :=
  ∀ n, P16473269421569614390.a n = A029651 n

end A029651

/-! ## A029651.P6080840252419080852

`A265610(n)+A005807(n)`
-/

namespace A029651.P6080840252419080852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 n + A005807 n

end

end A029651.P6080840252419080852

namespace A029651

/-- `A265610(n)+A005807(n)` -/
def P6080840252419080852.Spec : Prop :=
  ∀ n, P6080840252419080852.a n = A029651 n

end A029651

/-! ## A029651.P13983048495034186440

`A371965(n)+A006134(n)`
-/

namespace A029651.P13983048495034186440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371965 n + A006134 n

end

end A029651.P13983048495034186440

namespace A029651

/-- `A371965(n)+A006134(n)` -/
def P13983048495034186440.Spec : Prop :=
  ∀ n, P13983048495034186440.a n = A029651 n

end A029651

/-! ## A029651.P42953801689442272

`A088218(n)*A122553(n)`
-/

namespace A029651.P42953801689442272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A122553 n

end

end A029651.P42953801689442272

namespace A029651

/-- `A088218(n)*A122553(n)` -/
def P42953801689442272.Spec : Prop :=
  ∀ n, P42953801689442272.a n = A029651 n

end A029651

/-! ## A029651.P5954452166805036118

`A000984(n)+record[A138364(n)]`
-/

namespace A029651.P5954452166805036118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P5954452166805036118

namespace A029651

/-- `A000984(n)+record[A138364(n)]` -/
def P5954452166805036118.Spec : Prop :=
  ∀ n, P5954452166805036118.a n = A029651 n

end A029651

/-! ## A029651.P8434761384972092685

`record[A008486(n)*A097331(n)]`
-/

namespace A029651.P8434761384972092685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P8434761384972092685

namespace A029651

/-- `record[A008486(n)*A097331(n)]` -/
def P8434761384972092685.Spec : Prop :=
  ∀ n, P8434761384972092685.a n = A029651 n

end A029651

/-! ## A029651.P15238790041873622442

`record[A093178(n)*A126324(n)]`
-/

namespace A029651.P15238790041873622442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A126324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A029651.P15238790041873622442

namespace A029651

/-- `record[A093178(n)*A126324(n)]` -/
def P15238790041873622442.Spec : Prop :=
  ∀ n, P15238790041873622442.a n = A029651 n

end A029651

/-!
# A029652: Odd numbers in the (1,2)-Pascal triangle A029635.

The programs for A029652, the canonical program `A029652.P7281469354468211075` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029652 has offset 1).

The definition of A029652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029652.P7281469354468211075

`A029635(eq[1, gcd(2, A029635(n))])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029652

/-- `A029635(eq[1, gcd(2, A029635(n))])` -/
def P7281469354468211075.Spec : Prop :=
  ∀ n, P7281469354468211075.a n = A029652 (n + 1)

theorem P7281469354468211075.correct : P7281469354468211075.Spec := by
  intro n
  simp only [A029652, Nat.add_sub_cancel]

end A029652

/-! ## A029652.P3840648717272943378

`A029635(eq[A054977(n), A290452(n)])`
-/

namespace A029652.P3840648717272943378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029652.P3840648717272943378

namespace A029652

/-- `A029635(eq[A054977(n), A290452(n)])` -/
def P3840648717272943378.Spec : Prop :=
  ∀ n, P3840648717272943378.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P15619820104178088764

`A029635(lt[A000007(n), A290452(n)])`
-/

namespace A029652.P15619820104178088764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029652.P15619820104178088764

namespace A029652

/-- `A029635(lt[A000007(n), A290452(n)])` -/
def P15619820104178088764.Spec : Prop :=
  ∀ n, P15619820104178088764.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P11447872588174379339

`A029635(lt[A000038(n), A290452(n)])`
-/

namespace A029652.P11447872588174379339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029652.P11447872588174379339

namespace A029652

/-- `A029635(lt[A000038(n), A290452(n)])` -/
def P11447872588174379339.Spec : Prop :=
  ∀ n, P11447872588174379339.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P594830063536124889

`A029635(eq[1, A290452(n)+A000007(n)])`
-/

namespace A029652.P594830063536124889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029652.P594830063536124889

namespace A029652

/-- `A029635(eq[1, A290452(n)+A000007(n)])` -/
def P594830063536124889.Spec : Prop :=
  ∀ n, P594830063536124889.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P13502440062323773735

`A029635(eq[1-A000007(n), A290452(n)])`
-/

namespace A029652.P13502440062323773735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029652.P13502440062323773735

namespace A029652

/-- `A029635(eq[1-A000007(n), A290452(n)])` -/
def P13502440062323773735.Spec : Prop :=
  ∀ n, P13502440062323773735.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P6302852428822338150

`A029635(lt[A054977(n), A290452(n)+1])`
-/

namespace A029652.P6302852428822338150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029652.P6302852428822338150

namespace A029652

/-- `A029635(lt[A054977(n), A290452(n)+1])` -/
def P6302852428822338150.Spec : Prop :=
  ∀ n, P6302852428822338150.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P8977808871088192354

`A029635(lt[A054977(n)-1, A290452(n)])`
-/

namespace A029652.P8977808871088192354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029652.P8977808871088192354

namespace A029652

/-- `A029635(lt[A054977(n)-1, A290452(n)])` -/
def P8977808871088192354.Spec : Prop :=
  ∀ n, P8977808871088192354.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P14624400278310143451

`A029635(lt[A054977(n), 2*A290452(n)])`
-/

namespace A029652.P14624400278310143451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029652.P14624400278310143451

namespace A029652

/-- `A029635(lt[A054977(n), 2*A290452(n)])` -/
def P14624400278310143451.Spec : Prop :=
  ∀ n, P14624400278310143451.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P4780832939018273055

`A029635(lt[A054977(n)/2, A290452(n)])`
-/

namespace A029652.P4780832939018273055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A029652.P4780832939018273055

namespace A029652

/-- `A029635(lt[A054977(n)/2, A290452(n)])` -/
def P4780832939018273055.Spec : Prop :=
  ∀ n, P4780832939018273055.a n = A029652 (n + 1)

end A029652

/-! ## A029652.P2034702468643207165

`A029635(eq[A167407(n+1), A290452(n)])`
-/

namespace A029652.P2034702468643207165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029652.P2034702468643207165

namespace A029652

/-- `A029635(eq[A167407(n+1), A290452(n)])` -/
def P2034702468643207165.Spec : Prop :=
  ∀ n, P2034702468643207165.a n = A029652 (n + 1)

end A029652

/-!
# A029653: Numbers in (2,1)-Pascal triangle (by row).

The programs for A029653, the canonical program `A029653.P15740320911286042854` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029653 has offset 0).

The definition of A029653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029653.P15740320911286042854

`A028326(n)-A097805(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029653

/-- `A028326(n)-A097805(n)` -/
def P15740320911286042854.Spec : Prop :=
  ∀ n, P15740320911286042854.a n = A029653 n

theorem P15740320911286042854.correct : P15740320911286042854.Spec := by
  intro n
  simp only [A029653]

end A029653

/-! ## A029653.P14149744229028183444

`A029635(n)-A112467(n)`
-/

namespace A029653.P14149744229028183444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A112467 n

end

end A029653.P14149744229028183444

namespace A029653

/-- `A029635(n)-A112467(n)` -/
def P14149744229028183444.Spec : Prop :=
  ∀ n, P14149744229028183444.a n = A029653 n

end A029653

/-! ## A029653.P6071765120976511751

`A134636(n)-A053207(n)`
-/

namespace A029653.P6071765120976511751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A053207 n

end

end A029653.P6071765120976511751

namespace A029653

/-- `A134636(n)-A053207(n)` -/
def P6071765120976511751.Spec : Prop :=
  ∀ n, P6071765120976511751.a n = A029653 n

end A029653

/-! ## A029653.P4970276521166169899

`A128710(n)-A127952(n)`
-/

namespace A029653.P4970276521166169899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A127952 n

end

end A029653.P4970276521166169899

namespace A029653

/-- `A128710(n)-A127952(n)` -/
def P4970276521166169899.Spec : Prop :=
  ∀ n, P4970276521166169899.a n = A029653 n

end A029653

/-! ## A029653.P7103146777591040553

`A007318(n)-∑[A008482(n)]`
-/

namespace A029653.P7103146777591040553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029653.P7103146777591040553

namespace A029653

/-- `A007318(n)-∑[A008482(n)]` -/
def P7103146777591040553.Spec : Prop :=
  ∀ n, P7103146777591040553.a n = A029653 n

end A029653

/-! ## A029653.P5889610164367569680

`A097805(n+1)+A007318(n)`
-/

namespace A029653.P5889610164367569680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A007318 n

end

end A029653.P5889610164367569680

namespace A029653

/-- `A097805(n+1)+A007318(n)` -/
def P5889610164367569680.Spec : Prop :=
  ∀ n, P5889610164367569680.a n = A029653 n

end A029653

/-! ## A029653.P14947034527583126695

`A208510(n+1)+A073424(n)`
-/

namespace A029653.P14947034527583126695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + A073424 n

end

end A029653.P14947034527583126695

namespace A029653

/-- `A208510(n+1)+A073424(n)` -/
def P14947034527583126695.Spec : Prop :=
  ∀ n, P14947034527583126695.a n = A029653 n

end A029653

/-! ## A029653.P13341778017751125346

`A093560(n)-A097805(n+1)`
-/

namespace A029653.P13341778017751125346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n - A097805 (n + 1)

end

end A029653.P13341778017751125346

namespace A029653

/-- `A093560(n)-A097805(n+1)` -/
def P13341778017751125346.Spec : Prop :=
  ∀ n, P13341778017751125346.a n = A029653 n

end A029653

/-! ## A029653.P7801963855520061313

`A208659(n+1)/A059268(n)`
-/

namespace A029653.P7801963855520061313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208659 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A029653.P7801963855520061313

namespace A029653

/-- `A208659(n+1)/A059268(n)` -/
def P7801963855520061313.Spec : Prop :=
  ∀ n, P7801963855520061313.a n = (A029653 n : ℚ)

end A029653

/-! ## A029653.P6670036884107410794

`(A093560(n)+A007318(n))/2`
-/

namespace A029653.P6670036884107410794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093560 n + A007318 n : ℚ) / 2

end

end A029653.P6670036884107410794

namespace A029653

/-- `(A093560(n)+A007318(n))/2` -/
def P6670036884107410794.Spec : Prop :=
  ∀ n, P6670036884107410794.a n = (A029653 n : ℚ)

end A029653

/-! ## A029653.P7802254519261872581

`(A071919(n)+A029618(n))/2`
-/

namespace A029653.P7802254519261872581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n + A029618 n : ℚ) / 2

end

end A029653.P7802254519261872581

namespace A029653

/-- `(A071919(n)+A029618(n))/2` -/
def P7802254519261872581.Spec : Prop :=
  ∀ n, P7802254519261872581.a n = (A029653 n : ℚ)

end A029653

/-! ## A029653.P11033628028325032133

`2*A007318(n)-A097805(n)`
-/

namespace A029653.P11033628028325032133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A097805 n

end

end A029653.P11033628028325032133

namespace A029653

/-- `2*A007318(n)-A097805(n)` -/
def P11033628028325032133.Spec : Prop :=
  ∀ n, P11033628028325032133.a n = A029653 n

end A029653

/-! ## A029653.P11663780122911695216

`2*A093560(n)-A093561(n)`
-/

namespace A029653.P11663780122911695216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A093561 n

end

end A029653.P11663780122911695216

namespace A029653

/-- `2*A093560(n)-A093561(n)` -/
def P11663780122911695216.Spec : Prop :=
  ∀ n, P11663780122911695216.a n = A029653 n

end A029653

/-! ## A029653.P5866269084244289208

`A097805(n)+∑[2*A037012(n)]`
-/

namespace A029653.P5866269084244289208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029653.P5866269084244289208

namespace A029653

/-- `A097805(n)+∑[2*A037012(n)]` -/
def P5866269084244289208.Spec : Prop :=
  ∀ n, P5866269084244289208.a n = A029653 n

end A029653

/-! ## A029653.P4930497156532950941

`A097805(n)-∑[2*A008482(n)]`
-/

namespace A029653.P4930497156532950941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029653.P4930497156532950941

namespace A029653

/-- `A097805(n)-∑[2*A008482(n)]` -/
def P4930497156532950941.Spec : Prop :=
  ∀ n, P4930497156532950941.a n = A029653 n

end A029653

/-! ## A029653.P12410442505318607401

`A097805(n+1)+A014473(n)+1`
-/

namespace A029653.P12410442505318607401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + (A014473 n + 1)

end

end A029653.P12410442505318607401

namespace A029653

/-- `A097805(n+1)+A014473(n)+1` -/
def P12410442505318607401.Spec : Prop :=
  ∀ n, P12410442505318607401.a n = A029653 n

end A029653

/-! ## A029653.P11603428352524818407

`A208510(n+1)+char[A008795(n+2)]`
-/

namespace A029653.P11603428352524818407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A029653.P11603428352524818407

namespace A029653

/-- `A208510(n+1)+char[A008795(n+2)]` -/
def P11603428352524818407.Spec : Prop :=
  ∀ n, P11603428352524818407.a n = A029653 n

end A029653

/-! ## A029653.P2271060673868194295

`A000007(n)+A029618(n)-A007318(n)`
-/

namespace A029653.P2271060673868194295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A029618 n - A007318 n)

end

end A029653.P2271060673868194295

namespace A029653

/-- `A000007(n)+A029618(n)-A007318(n)` -/
def P2271060673868194295.Spec : Prop :=
  ∀ n, P2271060673868194295.a n = A029653 n

end A029653

/-! ## A029653.P416716017465310672

`A007318(n)+A093561(n)-A093560(n)`
-/

namespace A029653.P416716017465310672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093561 n - A093560 n)

end

end A029653.P416716017465310672

namespace A029653

/-- `A007318(n)+A093561(n)-A093560(n)` -/
def P416716017465310672.Spec : Prop :=
  ∀ n, P416716017465310672.a n = A029653 n

end A029653

/-! ## A029653.P11592960187974198951

`A007318(n)+A093563(n)-A093562(n)`
-/

namespace A029653.P11592960187974198951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093563 n - A093562 n)

end

end A029653.P11592960187974198951

namespace A029653

/-- `A007318(n)+A093563(n)-A093562(n)` -/
def P11592960187974198951.Spec : Prop :=
  ∀ n, P11592960187974198951.a n = A029653 n

end A029653

/-!
# A029655: Numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

The programs for A029655, the canonical program `A029655.P14912270738703485013` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029655 has offset 0).

The definition of A029655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029655.P14215608440711145849

`A110813((n-1)%(n+1))`
-/

namespace A029655.P14215608440711145849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A029655.P14215608440711145849

namespace A029655

/-- `A110813((n-1)%(n+1))` -/
def P14215608440711145849.Spec : Prop :=
  ∀ n, P14215608440711145849.a n = A029655 n

end A029655

/-! ## A029655.P12122661692215262964

`A029656(n+1)-char[∑[n]]`
-/

namespace A029655.P12122661692215262964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A029655.P12122661692215262964

namespace A029655

/-- `A029656(n+1)-char[∑[n]]` -/
def P12122661692215262964.Spec : Prop :=
  ∀ n, P12122661692215262964.a n = A029655 n

end A029655

/-! ## A029655.P14912270738703485013

`A325191(n)+A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029655

/-- `A325191(n)+A007318(n)` -/
def P14912270738703485013.Spec : Prop :=
  ∀ n, P14912270738703485013.a n = A029655 n

theorem P14912270738703485013.correct : P14912270738703485013.Spec := by
  intro n
  simp only [A029655]

end A029655

/-! ## A029655.P2570177440817959053

`A110813(A004273(n)-n)`
-/

namespace A029655.P2570177440817959053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (A004273 n - (n : ℤ)).toNat

end

end A029655.P2570177440817959053

namespace A029655

/-- `A110813(A004273(n)-n)` -/
def P2570177440817959053.Spec : Prop :=
  ∀ n, P2570177440817959053.a n = A029655 n

end A029655

/-! ## A029655.P10648662068829661268

`A029656(n+1)/A035214(n)`
-/

namespace A029655.P10648662068829661268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029656 (n + 1) : ℚ) / (A035214 n : ℚ)

end

end A029655.P10648662068829661268

namespace A029655

/-- `A029656(n+1)/A035214(n)` -/
def P10648662068829661268.Spec : Prop :=
  ∀ n, P10648662068829661268.a n = (A029655 n : ℚ)

end A029655

/-! ## A029655.P5479086416813325202

`gcd(A010816(n), A029656(n+1))`
-/

namespace A029655.P5479086416813325202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A029656 (n + 1))

end

end A029655.P5479086416813325202

namespace A029655

/-- `gcd(A010816(n), A029656(n+1))` -/
def P5479086416813325202.Spec : Prop :=
  ∀ n, (P5479086416813325202.a n : ℤ) = A029655 n

end A029655

/-! ## A029655.P252729041592997183

`A029656(n+1)/(A010054(n)+1)`
-/

namespace A029655.P252729041592997183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029656 (n + 1) : ℚ) / (A010054 n + 1 : ℚ)

end

end A029655.P252729041592997183

namespace A029655

/-- `A029656(n+1)/(A010054(n)+1)` -/
def P252729041592997183.Spec : Prop :=
  ∀ n, P252729041592997183.a n = (A029655 n : ℚ)

end A029655

/-! ## A029655.P5257910103725975971

`a(A008683(n)²)*A110813(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A029655.P5257910103725975971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat * A110813 (n - 1)

end

end A029655.P5257910103725975971

namespace A029655

/-- `a(A008683(n)²)*A110813(n-1)` -/
def P5257910103725975971.Spec : Prop :=
  ∀ n, P5257910103725975971.a n = A029655 n

end A029655

/-! ## A029655.P2234816492399164811

`A007318(n)+A074909(n)-A010054(n)`
-/

namespace A029655.P2234816492399164811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A074909 n - A010054 n)

end

end A029655.P2234816492399164811

namespace A029655

/-- `A007318(n)+A074909(n)-A010054(n)` -/
def P2234816492399164811.Spec : Prop :=
  ∀ n, P2234816492399164811.a n = A029655 n

end A029655

/-! ## A029655.P17619284450842653217

`A074909(n)+A124927(n)-A007318(n)`
-/

namespace A029655.P17619284450842653217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A124927 n - A007318 n)

end

end A029655.P17619284450842653217

namespace A029655

/-- `A074909(n)+A124927(n)-A007318(n)` -/
def P17619284450842653217.Spec : Prop :=
  ∀ n, P17619284450842653217.a n = A029655 n

end A029655

/-! ## A029655.P3568733420127564732

`A074909(n)+A124928(n)-A124927(n)`
-/

namespace A029655.P3568733420127564732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A124928 n - A124927 n)

end

end A029655.P3568733420127564732

namespace A029655

/-- `A074909(n)+A124928(n)-A124927(n)` -/
def P3568733420127564732.Spec : Prop :=
  ∀ n, P3568733420127564732.a n = A029655 n

end A029655

/-! ## A029655.P13491663665474609326

`A074909(n)+A134065(n)-A134059(n)`
-/

namespace A029655.P13491663665474609326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A134065 n - A134059 n)

end

end A029655.P13491663665474609326

namespace A029655

/-- `A074909(n)+A134065(n)-A134059(n)` -/
def P13491663665474609326.Spec : Prop :=
  ∀ n, P13491663665474609326.a n = A029655 n

end A029655

/-! ## A029655.P3331366627978521334

`A110813(A289207(n+1))`
-/

namespace A029655.P3331366627978521334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (A289207 (n + 1)).toNat

end

end A029655.P3331366627978521334

namespace A029655

/-- `A110813(A289207(n+1))` -/
def P3331366627978521334.Spec : Prop :=
  ∀ n, P3331366627978521334.a n = A029655 n

end A029655

/-! ## A029655.P16368982358629489146

`A029637(A061579(n)+2)`
-/

namespace A029655.P16368982358629489146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A061579 n + 2).toNat

end

end A029655.P16368982358629489146

namespace A029655

/-- `A029637(A061579(n)+2)` -/
def P16368982358629489146.Spec : Prop :=
  ∀ n, P16368982358629489146.a n = A029655 n

end A029655

/-! ## A029655.P18201455881430758564

`A029637(A038722(n+1)+1)`
-/

namespace A029655.P18201455881430758564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A038722 (n + 1) + 1).toNat

end

end A029655.P18201455881430758564

namespace A029655

/-- `A029637(A038722(n+1)+1)` -/
def P18201455881430758564.Spec : Prop :=
  ∀ n, P18201455881430758564.a n = A029655 n

end A029655

/-! ## A029655.P8369269729038448986

`A208510(comp[∑[n]])`
-/

namespace A029655.P8369269729038448986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029655.P8369269729038448986

namespace A029655

/-- `A208510(comp[∑[n]])` -/
def P8369269729038448986.Spec : Prop :=
  ∀ n, P8369269729038448986.a n = A029655 n

end A029655

/-! ## A029655.P17887300663025240902

`A029653(comp[∑[n+1]])`
-/

namespace A029655.P17887300663025240902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A029655.P17887300663025240902

namespace A029655

/-- `A029653(comp[∑[n+1]])` -/
def P17887300663025240902.Spec : Prop :=
  ∀ n, P17887300663025240902.a n = A029655 n

end A029655

/-!
# A029656: Numbers in the (2,1)-Pascal triangle A029653 that are different from 1.

The programs for A029656, the canonical program `A029656.P13202918215397249679` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029656 has offset 1).

The definition of A029656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029656.P5039024857519333756

`A029655(n)+char[∑[n]]`
-/

namespace A029656.P5039024857519333756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A029656.P5039024857519333756

namespace A029656

/-- `A029655(n)+char[∑[n]]` -/
def P5039024857519333756.Spec : Prop :=
  ∀ n, P5039024857519333756.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P13202918215397249679

`A074909(n)+A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029656

/-- `A074909(n)+A007318(n)` -/
def P13202918215397249679.Spec : Prop :=
  ∀ n, P13202918215397249679.a n = A029656 (n + 1)

theorem P13202918215397249679.correct : P13202918215397249679.Spec := by
  intro n
  simp only [A029656, Nat.add_sub_cancel]

end A029656

/-! ## A029656.P16259933304252905345

`A156644(n)+A051597(n)`
-/

namespace A029656.P16259933304252905345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A051597 n

end

end A029656.P16259933304252905345

namespace A029656

/-- `A156644(n)+A051597(n)` -/
def P16259933304252905345.Spec : Prop :=
  ∀ n, P16259933304252905345.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P11927379249871160457

`A181971(n)+A035317(n)`
-/

namespace A029656.P11927379249871160457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n + A035317 n

end

end A029656.P11927379249871160457

namespace A029656

/-- `A181971(n)+A035317(n)` -/
def P11927379249871160457.Spec : Prop :=
  ∀ n, P11927379249871160457.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P18441901600536875612

`A198321(n)+A134058(n)`
-/

namespace A029656.P18441901600536875612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 n + A134058 n

end

end A029656.P18441901600536875612

namespace A029656

/-- `A198321(n)+A134058(n)` -/
def P18441901600536875612.Spec : Prop :=
  ∀ n, P18441901600536875612.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P9042830054215953108

`A210381(n)+A129994(n)`
-/

namespace A029656.P9042830054215953108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210381 n + A129994 n

end

end A029656.P9042830054215953108

namespace A029656

/-- `A210381(n)+A129994(n)` -/
def P9042830054215953108.Spec : Prop :=
  ∀ n, P9042830054215953108.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P4605113756928149460

`A028263(n)-A135278(n)`
-/

namespace A029656.P4605113756928149460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - A135278 n

end

end A029656.P4605113756928149460

namespace A029656

/-- `A028263(n)-A135278(n)` -/
def P4605113756928149460.Spec : Prop :=
  ∀ n, P4605113756928149460.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P6806652450072025294

`A029655(n)*A035214(n)`
-/

namespace A029656.P6806652450072025294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n * A035214 n

end

end A029656.P6806652450072025294

namespace A029656

/-- `A029655(n)*A035214(n)` -/
def P6806652450072025294.Spec : Prop :=
  ∀ n, P6806652450072025294.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P13020244989224275147

`A074909(n)+Δ[A102363(n)]`
-/

namespace A029656.P13020244989224275147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (f1 (n + 1) - f1 n)

end

end A029656.P13020244989224275147

namespace A029656

/-- `A074909(n)+Δ[A102363(n)]` -/
def P13020244989224275147.Spec : Prop :=
  ∀ n, P13020244989224275147.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P2033516798153433669

`A080233(n)+A029637(n+1)`
-/

namespace A029656.P2033516798153433669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n + A029637 (n + 1)

end

end A029656.P2033516798153433669

namespace A029656

/-- `A080233(n)+A029637(n+1)` -/
def P2033516798153433669.Spec : Prop :=
  ∀ n, P2033516798153433669.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P13761421527224275422

`(A010054(n)+1)*A029655(n)`
-/

namespace A029656.P13761421527224275422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010054 n + 1) * A029655 n

end

end A029656.P13761421527224275422

namespace A029656

/-- `(A010054(n)+1)*A029655(n)` -/
def P13761421527224275422.Spec : Prop :=
  ∀ n, P13761421527224275422.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P8755906607261292654

`A074909(n)+A028326(n)/2`
-/

namespace A029656.P8755906607261292654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) + (A028326 n : ℚ) / 2

end

end A029656.P8755906607261292654

namespace A029656

/-- `A074909(n)+A028326(n)/2` -/
def P8755906607261292654.Spec : Prop :=
  ∀ n, P8755906607261292654.a n = (A029656 (n + 1) : ℚ)

end A029656

/-! ## A029656.P5870014250226605947

`A124927(n)+A007318(abs(1-n))`
-/

namespace A029656.P5870014250226605947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + A007318 |1 - (n : ℤ)|.toNat

end

end A029656.P5870014250226605947

namespace A029656

/-- `A124927(n)+A007318(abs(1-n))` -/
def P5870014250226605947.Spec : Prop :=
  ∀ n, P5870014250226605947.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P7604279758377847379

`A074909(n)+abs(2-A173740(n))`
-/

namespace A029656.P7604279758377847379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + |2 - A173740 n|

end

end A029656.P7604279758377847379

namespace A029656

/-- `A074909(n)+abs(2-A173740(n))` -/
def P7604279758377847379.Spec : Prop :=
  ∀ n, P7604279758377847379.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P6799069170826087312

`A007318(comp[∑[n+1]])+A007318(n)`
-/

namespace A029656.P6799069170826087312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A007318 n

end

end A029656.P6799069170826087312

namespace A029656

/-- `A007318(comp[∑[n+1]])+A007318(n)` -/
def P6799069170826087312.Spec : Prop :=
  ∀ n, P6799069170826087312.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P1598572358012970095

`A074909(A056943(n))+A074909(n)`
-/

namespace A029656.P1598572358012970095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A056943 n).toNat + A074909 n

end

end A029656.P1598572358012970095

namespace A029656

/-- `A074909(A056943(n))+A074909(n)` -/
def P1598572358012970095.Spec : Prop :=
  ∀ n, P1598572358012970095.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P8802988364122706473

`A074909(n)+A074909(A083920(n))`
-/

namespace A029656.P8802988364122706473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A074909 (A083920 n).toNat

end

end A029656.P8802988364122706473

namespace A029656

/-- `A074909(n)+A074909(A083920(n))` -/
def P8802988364122706473.Spec : Prop :=
  ∀ n, P8802988364122706473.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P4632471982707963904

`A074909(n)+A074909(A271439(n))`
-/

namespace A029656.P4632471982707963904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + A074909 (A271439 n).toNat

end

end A029656.P4632471982707963904

namespace A029656

/-- `A074909(n)+A074909(A271439(n))` -/
def P4632471982707963904.Spec : Prop :=
  ∀ n, P4632471982707963904.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P9429978193907509056

`A074909(n)+A285118(n)+A285116(n)`
-/

namespace A029656.P9429978193907509056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A285118 n + A285116 n)

end

end A029656.P9429978193907509056

namespace A029656

/-- `A074909(n)+A285118(n)+A285116(n)` -/
def P9429978193907509056.Spec : Prop :=
  ∀ n, P9429978193907509056.a n = A029656 (n + 1)

end A029656

/-! ## A029656.P4036116040546018388

`A028326(n)-(A007318(n)-A074909(n))`
-/

namespace A029656.P4036116040546018388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (A007318 n - A074909 n)

end

end A029656.P4036116040546018388

namespace A029656

/-- `A028326(n)-(A007318(n)-A074909(n))` -/
def P4036116040546018388.Spec : Prop :=
  ∀ n, P4036116040546018388.a n = A029656 (n + 1)

end A029656

/-!
# A029657: Odd numbers in (2,1)-Pascal triangle A029653 that are different from 1.

The programs for A029657, the canonical program `A029657.P10201678815065626017` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029657 has offset 0).

The definition of A029657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029657.P10201678815065626017

`A029669(lt[1, A029669(n)])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029657

/-- `A029669(lt[1, A029669(n)])` -/
def P10201678815065626017.Spec : Prop :=
  ∀ n, P10201678815065626017.a n = A029657 n

theorem P10201678815065626017.correct : P10201678815065626017.Spec := by
  intro n
  simp only [A029657]

end A029657

/-! ## A029657.P791229545511898258

`A029669(eq[2, 2%A029669(n)])`
-/

namespace A029657.P791229545511898258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A029669 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029657.P791229545511898258

namespace A029657

/-- `A029669(eq[2, 2%A029669(n)])` -/
def P791229545511898258.Spec : Prop :=
  ∀ n, P791229545511898258.a n = A029657 n

end A029657

/-! ## A029657.P3176559075904644145

`A029656(eq[1, A029656(n+1)%2]+1)`
-/

namespace A029657.P3176559075904644145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029656 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029657.P3176559075904644145

namespace A029657

/-- `A029656(eq[1, A029656(n+1)%2]+1)` -/
def P3176559075904644145.Spec : Prop :=
  ∀ n, P3176559075904644145.a n = A029657 n

end A029657

/-! ## A029657.P10494266251946116384

`A029656(eq[1, gcd(2, A029656(n+1))]+1)`
-/

namespace A029657.P10494266251946116384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A029656 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A029657.P10494266251946116384

namespace A029657

/-- `A029656(eq[1, gcd(2, A029656(n+1))]+1)` -/
def P10494266251946116384.Spec : Prop :=
  ∀ n, P10494266251946116384.a n = A029657 n

end A029657

/-! ## A029657.P4600930330394098183

`A110813(eq[1, A050600(n)])`
-/

namespace A029657.P4600930330394098183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029657.P4600930330394098183

namespace A029657

/-- `A110813(eq[1, A050600(n)])` -/
def P4600930330394098183.Spec : Prop :=
  ∀ n, P4600930330394098183.a n = A029657 n

end A029657

/-! ## A029657.P8209519722932492106

`A110813(eq[A023532(n), A047999(n)])`
-/

namespace A029657.P8209519722932492106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029657.P8209519722932492106

namespace A029657

/-- `A110813(eq[A023532(n), A047999(n)])` -/
def P8209519722932492106.Spec : Prop :=
  ∀ n, P8209519722932492106.a n = A029657 n

end A029657

/-! ## A029657.P2071169841426502060

`A110813(eq[A004198(n), A130123(n)])`
-/

namespace A029657.P2071169841426502060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029657.P2071169841426502060

namespace A029657

/-- `A110813(eq[A004198(n), A130123(n)])` -/
def P2071169841426502060.Spec : Prop :=
  ∀ n, P2071169841426502060.a n = A029657 n

end A029657

/-! ## A029657.P1970521038842985382

`filter[A029669(n), A347523(#)]`
-/

namespace A029657.P1970521038842985382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A029657.P1970521038842985382

namespace A029657

/-- `filter[A029669(n), A347523(#)]` -/
def P1970521038842985382.Spec : Prop :=
  ∀ n, P1970521038842985382.a n = A029657 n

end A029657

/-! ## A029657.P14328631315061407638

`filter[A029653(n), A266070(#)]`
-/

namespace A029657.P14328631315061407638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A029657.P14328631315061407638

namespace A029657

/-- `filter[A029653(n), A266070(#)]` -/
def P14328631315061407638.Spec : Prop :=
  ∀ n, P14328631315061407638.a n = A029657 n

end A029657

/-! ## A029657.P15802149201679523822

`filter[A029655(n), A266070(#)]`
-/

namespace A029657.P15802149201679523822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A029657.P15802149201679523822

namespace A029657

/-- `filter[A029655(n), A266070(#)]` -/
def P15802149201679523822.Spec : Prop :=
  ∀ n, P15802149201679523822.a n = A029657 n

end A029657

/-!
# A029658: Even numbers in the (2,1)-Pascal triangle A029653.

The programs for A029658, there is no canonical definition to state claims against.
-/

/-! ## A029658.P622949683677053104

`2*A051428(n)`
-/

namespace A029658.P622949683677053104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051428 n

end

end A029658.P622949683677053104

/-! ## A029658.P7297837111312703906

`A051428(abs(1-n)+1)+A051428(n)`
-/

namespace A029658.P7297837111312703906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051428 (|1 - (n : ℤ)| + 1).toNat + A051428 n

end

end A029658.P7297837111312703906

/-! ## A029658.P18387005911876845826

`A051428(n)+A051428(n)^A007318(C(2, n+2))`
-/

namespace A029658.P18387005911876845826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051428 n : ℚ) + (A051428 n : ℚ) ^ (A007318 (Nat.choose 2 (n + 2)) : ℤ)

end

end A029658.P18387005911876845826

/-! ## A029658.P17475064947439654383

`A051428(n)-A051428(n)/A008683(A020483(n))`
-/

namespace A029658.P17475064947439654383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051428 n : ℚ) - (A051428 n : ℚ) / (A008683 (A020483 n).toNat : ℚ)

end

end A029658.P17475064947439654383

/-! ## A029658.P17636952022960833005

`A051428(n)+A051428(n)+A000007(n+1)`
-/

namespace A029658.P17636952022960833005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051428 n + (A051428 n + A000007 (n + 1))

end

end A029658.P17636952022960833005

/-! ## A029658.P15195063676396753581

`A051428(n)+A051428(n)+A010673(A189562(n))`
-/

namespace A029658.P15195063676396753581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051428 n + (A051428 n + A010673 (A189562 n).toNat)

end

end A029658.P15195063676396753581

/-! ## A029658.P391874194562630389

`A051428(n)+A051428(n)%A051423(n+1)`
-/

namespace A029658.P391874194562630389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051428 n + Int.tmod (A051428 n) (A051423 (n + 1))

end

end A029658.P391874194562630389

/-! ## A029658.P17419553780427738417

`A004277(A051428(n))`
-/

namespace A029658.P17419553780427738417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051428 n).toNat

end

end A029658.P17419553780427738417

/-! ## A029658.P10784038250457984025

`A004275(A051428(n)+1)`
-/

namespace A029658.P10784038250457984025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051428 n + 1).toNat

end

end A029658.P10784038250457984025

/-! ## A029658.P9852923948357611263

`A005843(A051428(n)/gcd(n, n+1))`
-/

namespace A029658.P9852923948357611263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A051428 n : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat

end

end A029658.P9852923948357611263

/-!
# A029659: Even numbers in the (2,1)-Pascal triangle A029653 that are different from 2.

The programs for A029659, the canonical program `A029659.P14042741699956388996` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029659 has offset 0).

The definition of A029659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029659.P14531537038279406860

`2*A051429(n)`
-/

namespace A029659.P14531537038279406860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051429 n

end

end A029659.P14531537038279406860

namespace A029659

/-- `2*A051429(n)` -/
def P14531537038279406860.Spec : Prop :=
  ∀ n, P14531537038279406860.a n = A029659 n

end A029659

/-! ## A029659.P677441704246776413

`2*(A051434(n)-sqrt(A014727(n)))`
-/

namespace A029659.P677441704246776413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * ((A051434 n : ℝ) - Real.sqrt (A014727 n : ℝ))

end

end A029659.P677441704246776413

namespace A029659

/-- `2*(A051434(n)-sqrt(A014727(n)))` -/
def P677441704246776413.Spec : Prop :=
  ∀ n, P677441704246776413.a n = (A029659 n : ℝ)

end A029659

/-! ## A029659.P7273149658432841496

`2*(A051434(n)-A014428(n+1))`
-/

namespace A029659.P7273149658432841496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051434 n - A014428 (n + 1))

end

end A029659.P7273149658432841496

namespace A029659

/-- `2*(A051434(n)-A014428(n+1))` -/
def P7273149658432841496.Spec : Prop :=
  ∀ n, P7273149658432841496.a n = A029659 n

end A029659

/-! ## A029659.P14042741699956388996

`A029607(n+1)-2*A014428(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029659

/-- `A029607(n+1)-2*A014428(n+1)` -/
def P14042741699956388996.Spec : Prop :=
  ∀ n, P14042741699956388996.a n = A029659 n

theorem P14042741699956388996.correct : P14042741699956388996.Spec := by
  intro n
  simp only [A029659]

end A029659

/-! ## A029659.P18035961072985100462

`A051429(n)+A051429(n)+A000007(A188462(n+1))`
-/

namespace A029659.P18035961072985100462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n + (A051429 n + A000007 (A188462 (n + 1)).toNat)

end

end A029659.P18035961072985100462

namespace A029659

/-- `A051429(n)+A051429(n)+A000007(A188462(n+1))` -/
def P18035961072985100462.Spec : Prop :=
  ∀ n, P18035961072985100462.a n = A029659 n

end A029659

/-! ## A029659.P2917745558940253339

`A029656(A268232(n+1)+2)`
-/

namespace A029659.P2917745558940253339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A268232 (n + 1) + 2).toNat

end

end A029659.P2917745558940253339

namespace A029659

/-- `A029656(A268232(n+1)+2)` -/
def P2917745558940253339.Spec : Prop :=
  ∀ n, P2917745558940253339.a n = A029659 n

end A029659

/-! ## A029659.P1224438298981304082

`A110813(A268232(n+1))`
-/

namespace A029659.P1224438298981304082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (A268232 (n + 1)).toNat

end

end A029659.P1224438298981304082

namespace A029659

/-- `A110813(A268232(n+1))` -/
def P1224438298981304082.Spec : Prop :=
  ∀ n, P1224438298981304082.a n = A029659 n

end A029659

/-! ## A029659.P2914589558137468487

`A110813(eq[0, A047999(n)])`
-/

namespace A029659.P2914589558137468487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029659.P2914589558137468487

namespace A029659

/-- `A110813(eq[0, A047999(n)])` -/
def P2914589558137468487.Spec : Prop :=
  ∀ n, P2914589558137468487.a n = A029659 n

end A029659

/-! ## A029659.P9565570006329246578

`A110813(eq[0, and(1, A007318(n))])`
-/

namespace A029659.P9565570006329246578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029659.P9565570006329246578

namespace A029659

/-- `A110813(eq[0, and(1, A007318(n))])` -/
def P9565570006329246578.Spec : Prop :=
  ∀ n, P9565570006329246578.a n = A029659 n

end A029659

/-! ## A029659.P12462760166483461568

`A029607(n+1)-A134058(A268232(n+1))`
-/

namespace A029659.P12462760166483461568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029607 (n + 1) - A134058 (A268232 (n + 1)).toNat

end

end A029659.P12462760166483461568

namespace A029659

/-- `A029607(n+1)-A134058(A268232(n+1))` -/
def P12462760166483461568.Spec : Prop :=
  ∀ n, P12462760166483461568.a n = A029659 n

end A029659

/-! ## A029659.P9306922937810537828

`2*(A051597(A268232(n+1))-A051468(n))`
-/

namespace A029659.P9306922937810537828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051597 (A268232 (n + 1)).toNat - A051468 n)

end

end A029659.P9306922937810537828

namespace A029659

/-- `2*(A051597(A268232(n+1))-A051468(n))` -/
def P9306922937810537828.Spec : Prop :=
  ∀ n, P9306922937810537828.a n = A029659 n

end A029659

/-!
# A029660: Distinct odd numbers in (2,1)-Pascal triangle A029653.

The programs for A029660, there is no canonical definition to state claims against.
-/

/-! ## A029660.P17864722263884043373

`filter[A029654(n+1), A000035(#)]`
-/

namespace A029660.P17864722263884043373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029660.P17864722263884043373

/-!
# A029661: Even numbers to the right of the central numbers of the (2,1)-Pascal triangle A029653.

The programs for A029661, the canonical program `A029661.P15382218229631797000` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029661 has offset 0).

The definition of A029661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029661.P15382218229631797000

`2*A051430(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029661

/-- `2*A051430(n)` -/
def P15382218229631797000.Spec : Prop :=
  ∀ n, P15382218229631797000.a n = A029661 n

theorem P15382218229631797000.correct : P15382218229631797000.Spec := by
  intro n
  simp only [A029661]

end A029661

/-! ## A029661.P8152516967213877036

`A051430(sqrt(A000290(n)))+A051430(n)`
-/

namespace A029661.P8152516967213877036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051430 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A051430 n

end

end A029661.P8152516967213877036

namespace A029661

/-- `A051430(sqrt(A000290(n)))+A051430(n)` -/
def P8152516967213877036.Spec : Prop :=
  ∀ n, P8152516967213877036.a n = A029661 n

end A029661

/-! ## A029661.P801154378815012675

`A051430(A005843(n)/2)+A051430(n)`
-/

namespace A029661.P801154378815012675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051430 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051430 n

end

end A029661.P801154378815012675

namespace A029661

/-- `A051430(A005843(n)/2)+A051430(n)` -/
def P801154378815012675.Spec : Prop :=
  ∀ n, P801154378815012675.a n = A029661 n

end A029661

/-! ## A029661.P3259439212966442439

`A051430(A005843(n)-n)+A051430(n)`
-/

namespace A029661.P3259439212966442439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051430 (A005843 n - (n : ℤ)).toNat + A051430 n

end

end A029661.P3259439212966442439

namespace A029661

/-- `A051430(A005843(n)-n)+A051430(n)` -/
def P3259439212966442439.Spec : Prop :=
  ∀ n, P3259439212966442439.a n = A029661 n

end A029661

/-! ## A029661.P2828690624420852439

`A051430(n)+A051430(n)+A000038(n+1)`
-/

namespace A029661.P2828690624420852439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051430 n + (A051430 n + A000038 (n + 1))

end

end A029661.P2828690624420852439

namespace A029661

/-- `A051430(n)+A051430(n)+A000038(n+1)` -/
def P2828690624420852439.Spec : Prop :=
  ∀ n, P2828690624420852439.a n = A029661 n

end A029661

/-! ## A029661.P6886404613728667994

`A051430(n)+A185255(A220431(n+1))+A051430(n)`
-/

namespace A029661.P6886404613728667994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051430 n + (A185255 (A220431 (n + 1)).toNat + A051430 n)

end

end A029661.P6886404613728667994

namespace A029661

/-- `A051430(n)+A185255(A220431(n+1))+A051430(n)` -/
def P6886404613728667994.Spec : Prop :=
  ∀ n, P6886404613728667994.a n = A029661 n

end A029661

/-!
# A029662: Numbers to the left of the central numbers of the (2,1)-Pascal triangle A029653.

The programs for A029662, the canonical program `A029662.P6655327354340354651` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029662 has offset 0).

The definition of A029662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029662.P6655327354340354651

`A029644(n)+A008315(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029662

/-- `A029644(n)+A008315(n)` -/
def P6655327354340354651.Spec : Prop :=
  ∀ n, P6655327354340354651.a n = A029662 n

theorem P6655327354340354651.correct : P6655327354340354651.Spec := by
  intro n
  simp only [A029662]

end A029662

/-! ## A029662.P9020666855595624617

`A034868(n)+A014462(n+1)`
-/

namespace A029662.P9020666855595624617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n + A014462 (n + 1)

end

end A029662.P9020666855595624617

namespace A029662

/-- `A034868(n)+A014462(n+1)` -/
def P9020666855595624617.Spec : Prop :=
  ∀ n, P9020666855595624617.a n = A029662 n

end A029662

/-! ## A029662.P9497864144620515437

`A029628(n)-A014462(n+1)`
-/

namespace A029662.P9497864144620515437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029628 n - A014462 (n + 1)

end

end A029662.P9497864144620515437

namespace A029662

/-- `A029628(n)-A014462(n+1)` -/
def P9497864144620515437.Spec : Prop :=
  ∀ n, P9497864144620515437.a n = A029662 n

end A029662

/-! ## A029662.P17703602540735861542

`3*A034868(n)-A008315(n)`
-/

namespace A029662.P17703602540735861542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034868 n - A008315 n

end

end A029662.P17703602540735861542

namespace A029662

/-- `3*A034868(n)-A008315(n)` -/
def P17703602540735861542.Spec : Prop :=
  ∀ n, P17703602540735861542.a n = A029662 n

end A029662

/-! ## A029662.P15445042301794848954

`A034868(A000037(n+1)-1)+A034868(n)`
-/

namespace A029662.P15445042301794848954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A000037 (n + 1) - 1).toNat + A034868 n

end

end A029662.P15445042301794848954

namespace A029662

/-- `A034868(A000037(n+1)-1)+A034868(n)` -/
def P15445042301794848954.Spec : Prop :=
  ∀ n, P15445042301794848954.a n = A029662 n

end A029662

/-! ## A029662.P15223067390690721723

`A029653(eq[0, A026729(n)])`
-/

namespace A029662.P15223067390690721723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P15223067390690721723

namespace A029662

/-- `A029653(eq[0, A026729(n)])` -/
def P15223067390690721723.Spec : Prop :=
  ∀ n, P15223067390690721723.a n = A029662 n

end A029662

/-! ## A029662.P1808666425819074159

`A029653(eq[0, A098158(n)])`
-/

namespace A029662.P1808666425819074159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P1808666425819074159

namespace A029662

/-- `A029653(eq[0, A098158(n)])` -/
def P1808666425819074159.Spec : Prop :=
  ∀ n, P1808666425819074159.a n = A029662 n

end A029662

/-! ## A029662.P5033653089708979876

`A029653(eq[0, A099040(n)])`
-/

namespace A029662.P5033653089708979876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P5033653089708979876

namespace A029662

/-- `A029653(eq[0, A099040(n)])` -/
def P5033653089708979876.Spec : Prop :=
  ∀ n, P5033653089708979876.a n = A029662 n

end A029662

/-! ## A029662.P13327433524826303525

`A029653(eq[0, A099097(n)])`
-/

namespace A029662.P13327433524826303525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P13327433524826303525

namespace A029662

/-- `A029653(eq[0, A099097(n)])` -/
def P13327433524826303525.Spec : Prop :=
  ∀ n, P13327433524826303525.a n = A029662 n

end A029662

/-! ## A029662.P8951315936513835492

`A029653(eq[0, A107131(n)])`
-/

namespace A029662.P8951315936513835492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P8951315936513835492

namespace A029662

/-- `A029653(eq[0, A107131(n)])` -/
def P8951315936513835492.Spec : Prop :=
  ∀ n, P8951315936513835492.a n = A029662 n

end A029662

/-! ## A029662.P17807160199903807005

`A029653(eq[0, A110509(n)])`
-/

namespace A029662.P17807160199903807005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P17807160199903807005

namespace A029662

/-- `A029653(eq[0, A110509(n)])` -/
def P17807160199903807005.Spec : Prop :=
  ∀ n, P17807160199903807005.a n = A029662 n

end A029662

/-! ## A029662.P14517469067851836230

`A029653(lt[A029635(n), A029653(n)])`
-/

namespace A029662.P14517469067851836230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A029662.P14517469067851836230

namespace A029662

/-- `A029653(lt[A029635(n), A029653(n)])` -/
def P14517469067851836230.Spec : Prop :=
  ∀ n, P14517469067851836230.a n = A029662 n

end A029662

/-! ## A029662.P14534355512954544029

`A029656(A274427(n+1))`
-/

namespace A029662.P14534355512954544029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (A274427 (n + 1)).toNat

end

end A029662.P14534355512954544029

namespace A029662

/-- `A029656(A274427(n+1))` -/
def P14534355512954544029.Spec : Prop :=
  ∀ n, P14534355512954544029.a n = A029662 n

end A029662

/-! ## A029662.P16778718863175826137

`A029653(eq[0, A115179(n)])`
-/

namespace A029662.P16778718863175826137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P16778718863175826137

namespace A029662

/-- `A029653(eq[0, A115179(n)])` -/
def P16778718863175826137.Spec : Prop :=
  ∀ n, P16778718863175826137.a n = A029662 n

end A029662

/-! ## A029662.P4764139052315826908

`A029653(eq[0, A105868(n)])`
-/

namespace A029662.P4764139052315826908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029662.P4764139052315826908

namespace A029662

/-- `A029653(eq[0, A105868(n)])` -/
def P4764139052315826908.Spec : Prop :=
  ∀ n, P4764139052315826908.a n = A029662 n

end A029662

/-!
# A029663: Numbers to the right of the central elements of the (2,1)-Pascal triangle A029653 that are different from 1.

The programs for A029663, the canonical program `A029663.P14112828887232245740` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029663 has offset 0).

The definition of A029663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029663.P14112828887232245740

`A029633(n)-A014411(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029663

/-- `A029633(n)-A014411(n+1)` -/
def P14112828887232245740.Spec : Prop :=
  ∀ n, P14112828887232245740.a n = A029663 n

theorem P14112828887232245740.correct : P14112828887232245740.Spec := by
  intro n
  simp only [A029663]

end A029663

/-! ## A029663.P2762892361423175233

`A029666(A183569(n+1))`
-/

namespace A029663.P2762892361423175233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029666 (A183569 (n + 1)).toNat

end

end A029663.P2762892361423175233

namespace A029663

/-- `A029666(A183569(n+1))` -/
def P2762892361423175233.Spec : Prop :=
  ∀ n, P2762892361423175233.a n = A029663 n

end A029663

/-! ## A029663.P11275445618369436828

`A110813(eq[0, A026794(n+1)])`
-/

namespace A029663.P11275445618369436828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029663.P11275445618369436828

namespace A029663

/-- `A110813(eq[0, A026794(n+1)])` -/
def P11275445618369436828.Spec : Prop :=
  ∀ n, P11275445618369436828.a n = A029663 n

end A029663

/-! ## A029663.P10683831529802234354

`A110813(eq[0, A079308(n+1)])`
-/

namespace A029663.P10683831529802234354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029663.P10683831529802234354

namespace A029663

/-- `A110813(eq[0, A079308(n+1)])` -/
def P10683831529802234354.Spec : Prop :=
  ∀ n, P10683831529802234354.a n = A029663 n

end A029663

/-! ## A029663.P9146207775450363843

`A110813(eq[0, A220504(n+1)])`
-/

namespace A029663.P9146207775450363843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029663.P9146207775450363843

namespace A029663

/-- `A110813(eq[0, A220504(n+1)])` -/
def P9146207775450363843.Spec : Prop :=
  ∀ n, P9146207775450363843.a n = A029663 n

end A029663

/-! ## A029663.P2260405879648813635

`A029653(eq[A061896(n), A103452(n)])`
-/

namespace A029663.P2260405879648813635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P2260405879648813635

namespace A029663

/-- `A029653(eq[A061896(n), A103452(n)])` -/
def P2260405879648813635.Spec : Prop :=
  ∀ n, P2260405879648813635.a n = A029663 n

end A029663

/-! ## A029663.P9723107325908885302

`A029653(eq[A061896(n), A130123(n)])`
-/

namespace A029663.P9723107325908885302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P9723107325908885302

namespace A029663

/-- `A029653(eq[A061896(n), A130123(n)])` -/
def P9723107325908885302.Spec : Prop :=
  ∀ n, P9723107325908885302.a n = A029663 n

end A029663

/-! ## A029663.P7785360242020575207

`A029653(eq[A180969(n), A238341(n)])`
-/

namespace A029663.P7785360242020575207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P7785360242020575207

namespace A029663

/-- `A029653(eq[A180969(n), A238341(n)])` -/
def P7785360242020575207.Spec : Prop :=
  ∀ n, P7785360242020575207.a n = A029663 n

end A029663

/-! ## A029663.P8087927677600145110

`A029653(eq[A209599(n+1), A209599(n)])`
-/

namespace A029663.P8087927677600145110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P8087927677600145110

namespace A029663

/-- `A029653(eq[A209599(n+1), A209599(n)])` -/
def P8087927677600145110.Spec : Prop :=
  ∀ n, P8087927677600145110.a n = A029663 n

end A029663

/-! ## A029663.P15437741398004601182

`A125165(A274428(n+1)-2)`
-/

namespace A029663.P15437741398004601182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125165 (A274428 (n + 1) - 2).toNat

end

end A029663.P15437741398004601182

namespace A029663

/-- `A125165(A274428(n+1)-2)` -/
def P15437741398004601182.Spec : Prop :=
  ∀ n, P15437741398004601182.a n = A029663 n

end A029663

/-! ## A029663.P9247668651582339017

`A029653(eq[A061896(n), A271424(n)])`
-/

namespace A029663.P9247668651582339017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P9247668651582339017

namespace A029663

/-- `A029653(eq[A061896(n), A271424(n)])` -/
def P9247668651582339017.Spec : Prop :=
  ∀ n, P9247668651582339017.a n = A029663 n

end A029663

/-! ## A029663.P12805093836884002059

`A029653(eq[A061896(n), A136572(n)])`
-/

namespace A029663.P12805093836884002059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P12805093836884002059

namespace A029663

/-- `A029653(eq[A061896(n), A136572(n)])` -/
def P12805093836884002059.Spec : Prop :=
  ∀ n, P12805093836884002059.a n = A029663 n

end A029663

/-! ## A029663.P15754138466734533931

`A029653(eq[A180969(n), A238123(n)])`
-/

namespace A029663.P15754138466734533931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029663.P15754138466734533931

namespace A029663

/-- `A029653(eq[A180969(n), A238123(n)])` -/
def P15754138466734533931.Spec : Prop :=
  ∀ n, P15754138466734533931.a n = A029663 n

end A029663

/-!
# A029664: Odd numbers to the left of the central elements of the (2,1)-Pascal triangle A029653.

The programs for A029664, the canonical program `A029664.P8303718336109731663` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029664 has offset 0).

The definition of A029664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029664.P8303718336109731663

`A029662(eq[1, A029662(n)%2])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029664

/-- `A029662(eq[1, A029662(n)%2])` -/
def P8303718336109731663.Spec : Prop :=
  ∀ n, P8303718336109731663.a n = A029664 n

theorem P8303718336109731663.correct : P8303718336109731663.Spec := by
  intro n
  simp only [A029664]

end A029664

/-! ## A029664.P7366279148927540884

`A029662(eq[1, and(1, A029662(n))])`
-/

namespace A029664.P7366279148927540884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029662 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029664.P7366279148927540884

namespace A029664

/-- `A029662(eq[1, and(1, A029662(n))])` -/
def P7366279148927540884.Spec : Prop :=
  ∀ n, P7366279148927540884.a n = A029664 n

end A029664

/-! ## A029664.P6598857164244063402

`filter[A029662(n), A000035(#)]`
-/

namespace A029664.P6598857164244063402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029664.P6598857164244063402

namespace A029664

/-- `filter[A029662(n), A000035(#)]` -/
def P6598857164244063402.Spec : Prop :=
  ∀ n, P6598857164244063402.a n = A029664 n

end A029664

/-! ## A029664.P1512108344446385530

`filter[A029667(n), A000035(#)]`
-/

namespace A029664.P1512108344446385530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029664.P1512108344446385530

namespace A029664

/-- `filter[A029667(n), A000035(#)]` -/
def P1512108344446385530.Spec : Prop :=
  ∀ n, P1512108344446385530.a n = A029664 n

end A029664

/-! ## A029664.P17832846151527427521

`filter[A029662(n), A266070(#)]`
-/

namespace A029664.P17832846151527427521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A029664.P17832846151527427521

namespace A029664

/-- `filter[A029662(n), A266070(#)]` -/
def P17832846151527427521.Spec : Prop :=
  ∀ n, P17832846151527427521.a n = A029664 n

end A029664

/-!
# A029665: Even numbers to the left of the central elements of the (2,1)-Pascal triangle A029653.

The programs for A029665, there is no canonical definition to state claims against.
-/

/-! ## A029665.P589852021129748476

`2*A051425(n)`
-/

namespace A029665.P589852021129748476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051425 n

end

end A029665.P589852021129748476

/-! ## A029665.P6504649106470476011

`2/root(A051425(n), A260196(n))`
-/

namespace A029665.P6504649106470476011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / (A051425 n : ℝ) ^ (1 / (A260196 n : ℝ))

end

end A029665.P6504649106470476011

/-! ## A029665.P12978911759879219265

`A051425(char[1]+n)+A051425(n)`
-/

namespace A029665.P12978911759879219265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051425 ((if ∃ j, f1 j = n then 1 else 0) + n) + A051425 n

end

end A029665.P12978911759879219265

/-! ## A029665.P17639703653831888400

`A051425(n)+gcd(A020761(n), A051425(n))`
-/

namespace A029665.P17639703653831888400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051425 n + (Int.gcd (A020761 n) (A051425 n) : ℤ)

end

end A029665.P17639703653831888400

/-! ## A029665.P15718148639977272770

`A051425(n)+A051425(n)%A005109(n+1)`
-/

namespace A029665.P15718148639977272770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051425 n + Int.tmod (A051425 n) (A005109 (n + 1))

end

end A029665.P15718148639977272770

/-! ## A029665.P8544574566680108410

`(A051425(n)+A051425(n))%A090991(n+2)`
-/

namespace A029665.P8544574566680108410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051425 n + A051425 n) (A090991 (n + 2))

end

end A029665.P8544574566680108410

/-! ## A029665.P4079452759566336415

`A051425(n)+A051425(n)/A130782(n²)`
-/

namespace A029665.P4079452759566336415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051425 n : ℚ) + (A051425 n : ℚ) / (A130782 (n ^ 2) : ℚ)

end

end A029665.P4079452759566336415

/-!
# A029666: Numbers to the right of the central elements of the (2,1)-Pascal triangle A029653.

The programs for A029666, the canonical program `A029666.P12567084913895410295` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029666 has offset 0).

The definition of A029666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029666.P1534853656192062079

`A029648(n)-A008313(n)`
-/

namespace A029666.P1534853656192062079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n - A008313 n

end

end A029666.P1534853656192062079

namespace A029666

/-- `A029648(n)-A008313(n)` -/
def P1534853656192062079.Spec : Prop :=
  ∀ n, P1534853656192062079.a n = A029666 n

end A029666

/-! ## A029666.P17706767756267996989

`A028330(n)-A034869(n)`
-/

namespace A029666.P17706767756267996989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n - A034869 n

end

end A029666.P17706767756267996989

namespace A029666

/-- `A028330(n)-A034869(n)` -/
def P17706767756267996989.Spec : Prop :=
  ∀ n, P17706767756267996989.a n = A029666 n

end A029666

/-! ## A029666.P12567084913895410295

`A029632(n)-A014413(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029666

/-- `A029632(n)-A014413(n+1)` -/
def P12567084913895410295.Spec : Prop :=
  ∀ n, P12567084913895410295.a n = A029666 n

theorem P12567084913895410295.correct : P12567084913895410295.Spec := by
  intro n
  simp only [A029666]

end A029666

/-! ## A029666.P3993043598982243819

`2*A028330(n)-A029614(n)`
-/

namespace A029666.P3993043598982243819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028330 n - A029614 n

end

end A029666.P3993043598982243819

namespace A029666

/-- `2*A028330(n)-A029614(n)` -/
def P3993043598982243819.Spec : Prop :=
  ∀ n, P3993043598982243819.a n = A029666 n

end A029666

/-! ## A029666.P4112901055922965170

`A029614(n)-2*A034869(n)`
-/

namespace A029666.P4112901055922965170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029614 n - 2 * A034869 n

end

end A029666.P4112901055922965170

namespace A029666

/-- `A029614(n)-2*A034869(n)` -/
def P4112901055922965170.Spec : Prop :=
  ∀ n, P4112901055922965170.a n = A029666 n

end A029666

/-! ## A029666.P8697434442728590513

`2*A014413(n+1)-A034869(n)`
-/

namespace A029666.P8697434442728590513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014413 (n + 1) - A034869 n

end

end A029666.P8697434442728590513

namespace A029666

/-- `2*A014413(n+1)-A034869(n)` -/
def P8697434442728590513.Spec : Prop :=
  ∀ n, P8697434442728590513.a n = A029666 n

end A029666

/-! ## A029666.P7829824581255907771

`A110813(lt[0, A207543(n)])`
-/

namespace A029666.P7829824581255907771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A029666.P7829824581255907771

namespace A029666

/-- `A110813(lt[0, A207543(n)])` -/
def P7829824581255907771.Spec : Prop :=
  ∀ n, P7829824581255907771.a n = A029666 n

end A029666

/-! ## A029666.P15797074887462209806

`A029653(eq[0, A052553(n)])`
-/

namespace A029666.P15797074887462209806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P15797074887462209806

namespace A029666

/-- `A029653(eq[0, A052553(n)])` -/
def P15797074887462209806.Spec : Prop :=
  ∀ n, P15797074887462209806.a n = A029666 n

end A029666

/-! ## A029666.P2623376448446839603

`A029653(eq[0, A061896(n)])`
-/

namespace A029666.P2623376448446839603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P2623376448446839603

namespace A029666

/-- `A029653(eq[0, A061896(n)])` -/
def P2623376448446839603.Spec : Prop :=
  ∀ n, P2623376448446839603.a n = A029666 n

end A029666

/-! ## A029666.P7514002653213759334

`A029653(eq[0, A089627(n)])`
-/

namespace A029666.P7514002653213759334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P7514002653213759334

namespace A029666

/-- `A029653(eq[0, A089627(n)])` -/
def P7514002653213759334.Spec : Prop :=
  ∀ n, P7514002653213759334.a n = A029666 n

end A029666

/-! ## A029666.P5123405263377844628

`A029653(eq[0, A152815(n)])`
-/

namespace A029666.P5123405263377844628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P5123405263377844628

namespace A029666

/-- `A029653(eq[0, A152815(n)])` -/
def P5123405263377844628.Spec : Prop :=
  ∀ n, P5123405263377844628.a n = A029666 n

end A029666

/-! ## A029666.P12881215607272048954

`A029653(eq[0, A209599(n)])`
-/

namespace A029666.P12881215607272048954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P12881215607272048954

namespace A029666

/-- `A029653(eq[0, A209599(n)])` -/
def P12881215607272048954.Spec : Prop :=
  ∀ n, P12881215607272048954.a n = A029666 n

end A029666

/-! ## A029666.P3188117297627222339

`A029653(eq[1, A340507(n)])`
-/

namespace A029666.P3188117297627222339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P3188117297627222339

namespace A029666

/-- `A029653(eq[1, A340507(n)])` -/
def P3188117297627222339.Spec : Prop :=
  ∀ n, P3188117297627222339.a n = A029666 n

end A029666

/-! ## A029666.P6961423062743922360

`A029653(eq[0, A144299(n)])`
-/

namespace A029666.P6961423062743922360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P6961423062743922360

namespace A029666

/-- `A029653(eq[0, A144299(n)])` -/
def P6961423062743922360.Spec : Prop :=
  ∀ n, P6961423062743922360.a n = A029666 n

end A029666

/-! ## A029666.P13267707184720162438

`A208510(A274428(n+1))`
-/

namespace A029666.P13267707184720162438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (A274428 (n + 1)).toNat

end

end A029666.P13267707184720162438

namespace A029666

/-- `A208510(A274428(n+1))` -/
def P13267707184720162438.Spec : Prop :=
  ∀ n, P13267707184720162438.a n = A029666 n

end A029666

/-! ## A029666.P11187093697774772569

`A029653(eq[0, A060523(n)])`
-/

namespace A029666.P11187093697774772569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029666.P11187093697774772569

namespace A029666

/-- `A029653(eq[0, A060523(n)])` -/
def P11187093697774772569.Spec : Prop :=
  ∀ n, P11187093697774772569.a n = A029666 n

end A029666

/-!
# A029667: Numbers to the left of the central elements of the (2,1)-Pascal triangle A029653 that are different from 2.

The programs for A029667, the canonical program `A029667.P12356662964523118376` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029667 has offset 0).

The definition of A029667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029667.P12356662964523118376

`A029629(n)-A014463(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029667

/-- `A029629(n)-A014463(n+1)` -/
def P12356662964523118376.Spec : Prop :=
  ∀ n, P12356662964523118376.a n = A029667 n

theorem P12356662964523118376.correct : P12356662964523118376.Spec := by
  intro n
  simp only [A029667]

end A029667

/-! ## A029667.P418516054964842090

`2*A014463(n+1)-A014462(A000037(n+1))`
-/

namespace A029667.P418516054964842090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014463 (n + 1) - A014462 (A000037 (n + 1)).toNat

end

end A029667.P418516054964842090

namespace A029667

/-- `2*A014463(n+1)-A014462(A000037(n+1))` -/
def P418516054964842090.Spec : Prop :=
  ∀ n, P418516054964842090.a n = A029667 n

end A029667

/-! ## A029667.P1476072525694832848

`A029662(A049068(n+1))`
-/

namespace A029667.P1476072525694832848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029662 (A049068 (n + 1)).toNat

end

end A029667.P1476072525694832848

namespace A029667

/-- `A029662(A049068(n+1))` -/
def P1476072525694832848.Spec : Prop :=
  ∀ n, P1476072525694832848.a n = A029667 n

end A029667

/-! ## A029667.P893895279643898303

`A110813(eq[0, A030528(n+1)])`
-/

namespace A029667.P893895279643898303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P893895279643898303

namespace A029667

/-- `A110813(eq[0, A030528(n+1)])` -/
def P893895279643898303.Spec : Prop :=
  ∀ n, P893895279643898303.a n = A029667 n

end A029667

/-! ## A029667.P13047999002009191566

`A029656(eq[0, A030528(n+1)]+2)`
-/

namespace A029667.P13047999002009191566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A029667.P13047999002009191566

namespace A029667

/-- `A029656(eq[0, A030528(n+1)]+2)` -/
def P13047999002009191566.Spec : Prop :=
  ∀ n, P13047999002009191566.a n = A029667 n

end A029667

/-! ## A029667.P14017804152556092305

`A029653(eq[0, A100218(n)])`
-/

namespace A029667.P14017804152556092305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P14017804152556092305

namespace A029667

/-- `A029653(eq[0, A100218(n)])` -/
def P14017804152556092305.Spec : Prop :=
  ∀ n, P14017804152556092305.a n = A029667 n

end A029667

/-! ## A029667.P9446765589137714564

`A110813(eq[0, A104556(n)])`
-/

namespace A029667.P9446765589137714564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P9446765589137714564

namespace A029667

/-- `A110813(eq[0, A104556(n)])` -/
def P9446765589137714564.Spec : Prop :=
  ∀ n, P9446765589137714564.a n = A029667 n

end A029667

/-! ## A029667.P6248712748009195565

`A110813(eq[0, A104558(n)])`
-/

namespace A029667.P6248712748009195565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P6248712748009195565

namespace A029667

/-- `A110813(eq[0, A104558(n)])` -/
def P6248712748009195565.Spec : Prop :=
  ∀ n, P6248712748009195565.a n = A029667 n

end A029667

/-! ## A029667.P14213319590335077232

`A029653(eq[0, A145460(n)])`
-/

namespace A029667.P14213319590335077232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P14213319590335077232

namespace A029667

/-- `A029653(eq[0, A145460(n)])` -/
def P14213319590335077232.Spec : Prop :=
  ∀ n, P14213319590335077232.a n = A029667 n

end A029667

/-! ## A029667.P3795662077338485775

`A029653(eq[0, A292948(n)])`
-/

namespace A029667.P3795662077338485775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P3795662077338485775

namespace A029667

/-- `A029653(eq[0, A292948(n)])` -/
def P3795662077338485775.Spec : Prop :=
  ∀ n, P3795662077338485775.a n = A029667 n

end A029667

/-! ## A029667.P7678322646503361724

`A029653(eq[0, A292973(n)])`
-/

namespace A029667.P7678322646503361724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029667.P7678322646503361724

namespace A029667

/-- `A029653(eq[0, A292973(n)])` -/
def P7678322646503361724.Spec : Prop :=
  ∀ n, P7678322646503361724.a n = A029667 n

end A029667

/-! ## A029667.P5280264624929405168

`A029653(eq[A073424(n), A105868(n)])`
-/

namespace A029667.P5280264624929405168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029667.P5280264624929405168

namespace A029667

/-- `A029653(eq[A073424(n), A105868(n)])` -/
def P5280264624929405168.Spec : Prop :=
  ∀ n, P5280264624929405168.a n = A029667 n

end A029667

/-!
# A029668: Odd numbers to the right of the central elements of the (2,1)-Pascal triangle A029653 that are different from 1.

The programs for A029668, the canonical program `A029668.P4792847328152490897` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029668 has offset 0).

The definition of A029668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029668.P4792847328152490897

`A029657(lt[A029624(n+1), A029624(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029668

/-- `A029657(lt[A029624(n+1), A029624(n)])` -/
def P4792847328152490897.Spec : Prop :=
  ∀ n, P4792847328152490897.a n = A029668 n

theorem P4792847328152490897.correct : P4792847328152490897.Spec := by
  intro n
  simp only [A029668]

end A029668

/-! ## A029668.P8139379478563972017

`filter[A029663(n), A374134(#)]`
-/

namespace A029668.P8139379478563972017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A029668.P8139379478563972017

namespace A029668

/-- `filter[A029663(n), A374134(#)]` -/
def P8139379478563972017.Spec : Prop :=
  ∀ n, P8139379478563972017.a n = A029668 n

end A029668

/-! ## A029668.P2474545836808480890

`A029663(eq[1, A040001(A029663(n))])`
-/

namespace A029668.P2474545836808480890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A029663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029668.P2474545836808480890

namespace A029668

/-- `A029663(eq[1, A040001(A029663(n))])` -/
def P2474545836808480890.Spec : Prop :=
  ∀ n, P2474545836808480890.a n = A029668 n

end A029668

/-! ## A029668.P17669864914248165769

`filter[A029663(n), A000035(#)]`
-/

namespace A029668.P17669864914248165769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029668.P17669864914248165769

namespace A029668

/-- `filter[A029663(n), A000035(#)]` -/
def P17669864914248165769.Spec : Prop :=
  ∀ n, P17669864914248165769.a n = A029668 n

end A029668

/-! ## A029668.P420355038277162122

`filter[A029663(n), A266070(#)]`
-/

namespace A029668.P420355038277162122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A029668.P420355038277162122

namespace A029668

/-- `filter[A029663(n), A266070(#)]` -/
def P420355038277162122.Spec : Prop :=
  ∀ n, P420355038277162122.a n = A029668 n

end A029668

/-!
# A029669: Odd numbers in the (2,1)-Pascal triangle A029653.

The programs for A029669, the canonical program `A029669.P12114681955380181384` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029669 has offset 0).

The definition of A029669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029669.P12114681955380181384

`A029655(eq[1, A029655(n)%2])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029669

/-- `A029655(eq[1, A029655(n)%2])` -/
def P12114681955380181384.Spec : Prop :=
  ∀ n, P12114681955380181384.a n = A029669 n

theorem P12114681955380181384.correct : P12114681955380181384.Spec := by
  intro n
  simp only [A029669]

end A029669

/-! ## A029669.P6803577135370147319

`A029653(eq[0, val(A029653(n), 2)])`
-/

namespace A029669.P6803577135370147319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A029653 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029669.P6803577135370147319

namespace A029669

/-- `A029653(eq[0, val(A029653(n), 2)])` -/
def P6803577135370147319.Spec : Prop :=
  ∀ n, P6803577135370147319.a n = A029669 n

end A029669

/-! ## A029669.P14635595291511089076

`A208510(record[(n+1)^(A029653(n)%2)])`
-/

namespace A029669.P14635595291511089076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A029653 n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A029669.P14635595291511089076

namespace A029669

/-- `A208510(record[(n+1)^(A029653(n)%2)])` -/
def P14635595291511089076.Spec : Prop :=
  ∀ n, P14635595291511089076.a n = A029669 n

end A029669

/-! ## A029669.P12566939568918320871

`A208510(eq[1, (A097805(n+1)+A007318(n))%2]+1)`
-/

namespace A029669.P12566939568918320871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097805 (n + 1) + A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029669.P12566939568918320871

namespace A029669

/-- `A208510(eq[1, (A097805(n+1)+A007318(n))%2]+1)` -/
def P12566939568918320871.Spec : Prop :=
  ∀ n, P12566939568918320871.a n = A029669 n

end A029669

/-! ## A029669.P8987839476291128401

`A208510(eq[1, (A208659(n+1)/A059268(n))%2]+1)`
-/

namespace A029669.P8987839476291128401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A208659 (n + 1) : ℚ) / (A059268 n : ℚ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A029669.P8987839476291128401

namespace A029669

/-- `A208510(eq[1, (A208659(n+1)/A059268(n))%2]+1)` -/
def P8987839476291128401.Spec : Prop :=
  ∀ n, P8987839476291128401.a n = A029669 n

end A029669

/-! ## A029669.P12259867507662432340

`A029653(eq[2, A010149(A029653(n))])`
-/

namespace A029669.P12259867507662432340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 (A029653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029669.P12259867507662432340

namespace A029669

/-- `A029653(eq[2, A010149(A029653(n))])` -/
def P12259867507662432340.Spec : Prop :=
  ∀ n, P12259867507662432340.a n = A029669 n

end A029669

/-! ## A029669.P2631514192439736688

`A029653(eq[2, A040003(A029653(n))])`
-/

namespace A029669.P2631514192439736688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (A029653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029669.P2631514192439736688

namespace A029669

/-- `A029653(eq[2, A040003(A029653(n))])` -/
def P2631514192439736688.Spec : Prop :=
  ∀ n, P2631514192439736688.a n = A029669 n

end A029669

/-! ## A029669.P2833002174476164246

`A029653(eq[2, A040024(A029653(n))])`
-/

namespace A029669.P2833002174476164246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (A029653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A029669.P2833002174476164246

namespace A029669

/-- `A029653(eq[2, A040024(A029653(n))])` -/
def P2833002174476164246.Spec : Prop :=
  ∀ n, P2833002174476164246.a n = A029669 n

end A029669

/-! ## A029669.P14041488489349054100

`filter[A029653(n), A000035(#)]`
-/

namespace A029669.P14041488489349054100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029669.P14041488489349054100

namespace A029669

/-- `filter[A029653(n), A000035(#)]` -/
def P14041488489349054100.Spec : Prop :=
  ∀ n, P14041488489349054100.a n = A029669 n

end A029669

/-! ## A029669.P4517492354797717803

`filter[A029655(n), A000035(#)]`
-/

namespace A029669.P4517492354797717803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A029669.P4517492354797717803

namespace A029669

/-- `filter[A029655(n), A000035(#)]` -/
def P4517492354797717803.Spec : Prop :=
  ∀ n, P4517492354797717803.a n = A029669 n

end A029669

/-!
# A029671: Theta series of quadratic form with Gram matrix [ 2, 1, 0; 1, 4, 1; 0, 1, 4 ].

The programs for A029671, there is no canonical definition to state claims against.
-/

/-! ## A029671.P2033382362757644780

`(A029670(4*n)+A029670(n))/2`
-/

namespace A029671.P2033382362757644780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029670 (4 * n) + A029670 n : ℚ) / 2

end

end A029671.P2033382362757644780

/-! ## A029671.P3932514249451456220

`A004525(A029670(4*n)+A029670(n))`
-/

namespace A029671.P3932514249451456220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029670 (4 * n) + A029670 n).toNat

end

end A029671.P3932514249451456220

/-! ## A029671.P169497356417674944

`A004526(A029670(4*n)+A029670(n))`
-/

namespace A029671.P169497356417674944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029670 (4 * n) + A029670 n).toNat

end

end A029671.P169497356417674944

/-! ## A029671.P1722360332671034396

`A057979(A029670(4*n)+A029670(n)+1)`
-/

namespace A029671.P1722360332671034396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A029670 (4 * n) + A029670 n + 1).toNat

end

end A029671.P1722360332671034396

/-! ## A029671.P9831308782096361715

`A008619(A029670(4*n)+A029670(n))-1`
-/

namespace A029671.P9831308782096361715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A029670 (4 * n) + A029670 n).toNat - 1

end

end A029671.P9831308782096361715

/-! ## A029671.P6655356237883725479

`A080513(A029670(4*n)+A029670(n))-1`
-/

namespace A029671.P6655356237883725479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A029670 (4 * n) + A029670 n).toNat - 1

end

end A029671.P6655356237883725479

/-!
# A029673: Theta series of quadratic form with Gram matrix [ 2, 0, 1; 0, 4, 2; 1, 2, 4 ].

The programs for A029673, there is no canonical definition to state claims against.
-/

/-! ## A029673.P4117276378073804954

`A029595(2*n)`
-/

namespace A029673.P4117276378073804954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (2 * n)

end

end A029673.P4117276378073804954

/-! ## A029673.P1273457488661296077

`A029595(n+n)%∑[A282026(n)]`
-/

namespace A029673.P1273457488661296077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029595 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029673.P1273457488661296077

/-! ## A029673.P8122820568406816485

`A029595(A004277(n))-C(2, n+2)`
-/

namespace A029673.P8122820568406816485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (A004277 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A029673.P8122820568406816485

/-! ## A029673.P15790505760568647198

`A029595(A004277(n))-A000007(n)`
-/

namespace A029673.P15790505760568647198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (A004277 n).toNat - A000007 n

end

end A029673.P15790505760568647198

/-! ## A029673.P18245937287035616690

`A029595(A004277(n))/A054977(n)`
-/

namespace A029673.P18245937287035616690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029595 (A004277 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A029673.P18245937287035616690

/-! ## A029673.P17828879572999537467

`gcd(A000038(n), A029595(A005843(n)))`
-/

namespace A029673.P17828879572999537467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A029595 (A005843 n).toNat)

end

end A029673.P17828879572999537467

/-! ## A029673.P761915276294275360

`A118759(A029595(record[A294317(n)]))`
-/

namespace A029673.P761915276294275360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A029595 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029673.P761915276294275360

/-!
# A029674: Numbers represented by quadratic form with Gram matrix [ 3, 1, 0; 1, 3, 1; 0, 1, 4 ].

The programs for A029674, there is no canonical definition to state claims against.
-/

/-! ## A029674.P9839280591640339487

`lt[0, A029676(n)]`
-/

namespace A029674.P9839280591640339487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A029674.P9839280591640339487

/-! ## A029674.P17555362118247936106

`eq[1, A157928(A029676(n)+1)]`
-/

namespace A029674.P17555362118247936106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A029676 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029674.P17555362118247936106

/-! ## A029674.P14995561778561663932

`eq[1, A157928(2*A029676(n))]`
-/

namespace A029674.P14995561778561663932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A029676 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029674.P14995561778561663932

/-! ## A029674.P17962939770226016032

`eq[n*A000038(n), A000038(A029676(n))]`
-/

namespace A029674.P17962939770226016032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029676 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029674.P17962939770226016032

/-! ## A029674.P9414582382395474353

`eq[A057427(n), A157928(A029676(n))]`
-/

namespace A029674.P9414582382395474353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A029676 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029674.P9414582382395474353

/-! ## A029674.P6648517188131943200

`eq[A000038(n+1), A000038(A029676(n))]`
-/

namespace A029674.P6648517188131943200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029676 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029674.P6648517188131943200

/-! ## A029674.P14180985328498804146

`eq[0, A000038(A029676(n)²)]`
-/

namespace A029674.P14180985328498804146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029676 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029674.P14180985328498804146

/-! ## A029674.P5151043428860521133

`eq[0, A029681(A029676(n)²)]`
-/

namespace A029674.P5151043428860521133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A029676 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029674.P5151043428860521133

/-! ## A029674.P13304857189049237621

`eq[2, A000122(A029676(n)²)]`
-/

namespace A029674.P13304857189049237621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A029676 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029674.P13304857189049237621

/-!
# A029675: Numbers represented by quadratic form with Gram matrix [ 3, 1, -1; 1, 4, 1; -1, 1, 3 ].

The programs for A029675, there is no canonical definition to state claims against.
-/

/-! ## A029675.P17444997216925291691

`eq[0, A000007(A029678(n))]`
-/

namespace A029675.P17444997216925291691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029675.P17444997216925291691

/-! ## A029675.P5976209985202072677

`eq[1, A057427(2*A029678(n))]`
-/

namespace A029675.P5976209985202072677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029675.P5976209985202072677

/-! ## A029675.P6179633387469720816

`eq[1, gcd(A029678(n), A054801(n+1))]`
-/

namespace A029675.P6179633387469720816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029678 n) (A054801 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P6179633387469720816

/-! ## A029675.P4906767994325911142

`eq[A260196(n)², A054977(A029678(n))]`
-/

namespace A029675.P4906767994325911142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P4906767994325911142

/-! ## A029675.P3749632248062786818

`eq[A159075(n)+1, A054977(A029678(n))]`
-/

namespace A029675.P3749632248062786818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P3749632248062786818

/-! ## A029675.P12600525332304852308

`eq[A054977(A029678(n)), A057427(n+1)]`
-/

namespace A029675.P12600525332304852308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029678 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P12600525332304852308

/-! ## A029675.P10654800340570862769

`eq[A260196(n+1), A260196(A029678(n))]`
-/

namespace A029675.P10654800340570862769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P10654800340570862769

/-! ## A029675.P17464081071149373411

`eq[A054977(n+6), A054977(A029678(n))]`
-/

namespace A029675.P17464081071149373411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P17464081071149373411

/-! ## A029675.P4193563621436247404

`eq[0, A029681(A029678(n)²)]`
-/

namespace A029675.P4193563621436247404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A029678 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029675.P4193563621436247404

/-! ## A029675.P5161771831913916527

`eq[1, A057427(A029678(n)²)]`
-/

namespace A029675.P5161771831913916527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029678 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029675.P5161771831913916527

/-! ## A029675.P1209588772729048799

`eq[2, A000122(A029678(n)²)]`
-/

namespace A029675.P1209588772729048799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A029678 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A029675.P1209588772729048799

/-! ## A029675.P376053662599030942

`eq[A260196(n*A029678(n)), A260196(n)]`
-/

namespace A029675.P376053662599030942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 ((n : ℤ) * A029678 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A029675.P376053662599030942

/-!
# A029678: Theta series of quadratic form with Gram matrix [ 3, 1, -1; 1, 4, 1; -1, 1, 3 ].

The programs for A029678, there is no canonical definition to state claims against.
-/

/-! ## A029678.P4542000911270630395

`and(A086389(A167499(n)), A133016(n+1))`
-/

namespace A029678.P4542000911270630395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086389 (A167499 n).toNat) (A133016 (n + 1))

end

end A029678.P4542000911270630395

/-! ## A029678.P3972337075141702849

`and(A078099(n+1), A324943(A320305(n)))`
-/

namespace A029678.P3972337075141702849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078099 (n + 1)) (A324943 (A320305 n).toNat)

end

end A029678.P3972337075141702849

/-! ## A029678.P1242507887755583729

`and(A000005(A264746(n+1)), A164525(n+1))`
-/

namespace A029678.P1242507887755583729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A264746 (n + 1)).toNat) (A164525 (n + 1))

end

end A029678.P1242507887755583729

/-! ## A029678.P7760555650719663019

`and(A005811(A237671(2*n+3)), A161590(n+3))`
-/

namespace A029678.P7760555650719663019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (A237671 (2 * n + 3)).toNat) (A161590 (n + 3))

end

end A029678.P7760555650719663019

/-!
# A029680: Theta series of quadratic form with Gram matrix [ 4, 2, 2; 2, 4, 1; 2, 1, 6 ].

The programs for A029680, there is no canonical definition to state claims against.
-/

/-! ## A029680.P17780108239199161465

`A320239(2*n)`
-/

namespace A029680.P17780108239199161465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (2 * n)

end

end A029680.P17780108239199161465

/-! ## A029680.P16756353382250520824

`A320239(n+n)%(n+28)`
-/

namespace A029680.P16756353382250520824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320239 (n + n)) (n + 28 : ℤ)

end

end A029680.P16756353382250520824

/-! ## A029680.P3683829714583415813

`A320239(A004277(n))-A000007(n)`
-/

namespace A029680.P3683829714583415813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (A004277 n).toNat - A000007 n

end

end A029680.P3683829714583415813

/-! ## A029680.P8040654724645033139

`gcd(A000038(n), A320239(A005843(n)))`
-/

namespace A029680.P8040654724645033139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A320239 (A005843 n).toNat)

end

end A029680.P8040654724645033139

/-! ## A029680.P2906970422756536836

`A320239(record[A014681(n)])/A020985(n)²`
-/

namespace A029680.P2906970422756536836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A029680.P2906970422756536836

/-! ## A029680.P9122021029872421287

`A320239(A004277(n))^A001221(A282795(n+1))`
-/

namespace A029680.P9122021029872421287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320239 (A004277 n).toNat : ℚ) ^ (A001221 (A282795 (n + 1)).toNat : ℤ)

end

end A029680.P9122021029872421287

/-! ## A029680.P1674064792367612995

`A320239(A004277(n)+A000007(n))+A000007(n)`
-/

namespace A029680.P1674064792367612995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320239 (A004277 n + A000007 n).toNat + A000007 n

end

end A029680.P1674064792367612995

/-! ## A029680.P13681210484253279264

`A118759(A320239(record[A014681(n)]))`
-/

namespace A029680.P13681210484253279264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A320239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029680.P13681210484253279264

/-!
# A029682: Theta series of quadratic form with Gram matrix [ 2, 1, 0; 1, 2, 1; 0, 1, 4 ].

The programs for A029682, there is no canonical definition to state claims against.
-/

/-! ## A029682.P6984381731483586038

`A001281(A029673(2*n)+A029595(n))`
-/

namespace A029682.P6984381731483586038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A029673 (2 * n) + A029595 n).toNat

end

end A029682.P6984381731483586038

/-! ## A029682.P1331210533817506258

`A004525(A029673(2*n)+A029595(n))`
-/

namespace A029682.P1331210533817506258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029673 (2 * n) + A029595 n).toNat

end

end A029682.P1331210533817506258

/-! ## A029682.P11006927377469961816

`A014682(A029673(2*n)+A029595(n))`
-/

namespace A029682.P11006927377469961816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029673 (2 * n) + A029595 n).toNat

end

end A029682.P11006927377469961816

/-! ## A029682.P8218481218968848271

`A064680(A029673(2*n)+A029595(n))`
-/

namespace A029682.P8218481218968848271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A029673 (2 * n) + A029595 n).toNat

end

end A029682.P8218481218968848271

/-! ## A029682.P6631359941160842612

`A110654(A029673(2*n)+A029595(n))`
-/

namespace A029682.P6631359941160842612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A029673 (2 * n) + A029595 n).toNat

end

end A029682.P6631359941160842612

/-! ## A029682.P4428942634493590565

`A028971(4*n)`
-/

namespace A029682.P4428942634493590565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (4 * n)

end

end A029682.P4428942634493590565

/-! ## A029682.P6621770806518214159

`gcd(A000038(n), A028971(A008587(n)-n))`
-/

namespace A029682.P6621770806518214159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028971 (A008587 n - (n : ℤ)).toNat)

end

end A029682.P6621770806518214159

/-! ## A029682.P13137624626689647278

`A028971(A008574(n))+A008683(A008574(n))`
-/

namespace A029682.P13137624626689647278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A008574 n).toNat + A008683 (A008574 n).toNat

end

end A029682.P13137624626689647278

/-! ## A029682.P8144592796920124808

`A028973(A283442(4*n))`
-/

namespace A029682.P8144592796920124808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A283442 (4 * n)).toNat

end

end A029682.P8144592796920124808

/-! ## A029682.P9547750824061982305

`A028973(4*5*n)`
-/

namespace A029682.P9547750824061982305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (4 * (5 * n))

end

end A029682.P9547750824061982305

/-!
# A029691: n-th binary digit in fractional part of square root of n.

The programs for A029691, the canonical program `A029691.P5834615664010623992` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029691 has offset 1).

The definition of A029691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029691.P5834615664010623992

`and(1, floor(sqrt(n+1)*A000079(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A029691

/-- `and(1, floor(sqrt(n+1)*A000079(n+1)))` -/
def P5834615664010623992.Spec : Prop :=
  ∀ n, P5834615664010623992.a n = A029691 (n + 1)

theorem P5834615664010623992.correct : P5834615664010623992.Spec := by
  intro n
  simp only [A029691, Nat.add_sub_cancel]

end A029691

/-! ## A029691.P11200314337337307032

`floor(2*sqrt((n+1)*4^n))%2`
-/

namespace A029691.P11200314337337307032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt ((n + 1) * 4 ^ n : ℝ)⌋ 2

end

end A029691.P11200314337337307032

namespace A029691

/-- `floor(2*sqrt((n+1)*4^n))%2` -/
def P11200314337337307032.Spec : Prop :=
  ∀ n, P11200314337337307032.a n = A029691 (n + 1)

end A029691

/-! ## A029691.P14766968068668769445

`xor(A051731(A063008(n)), A273511(n+2))`
-/

namespace A029691.P14766968068668769445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051731 (A063008 n).toNat) (A273511 (n + 2))

end

end A029691.P14766968068668769445

namespace A029691

/-- `xor(A051731(A063008(n)), A273511(n+2))` -/
def P14766968068668769445.Spec : Prop :=
  ∀ n, P14766968068668769445.a n = A029691 (n + 1)

end A029691

/-! ## A029691.P10679607936295773783

`A152228(ceil(A099393(n)/2)%A286366(n+1))`
-/

namespace A029691.P10679607936295773783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152228 (Int.tmod ⌈(A099393 n : ℚ) / 2⌉ (A286366 (n + 1))).toNat

end

end A029691.P10679607936295773783

namespace A029691

/-- `A152228(ceil(A099393(n)/2)%A286366(n+1))` -/
def P10679607936295773783.Spec : Prop :=
  ∀ n, P10679607936295773783.a n = A029691 (n + 1)

end A029691

/-! ## A029691.P1693901139155266257

`A295889(A193091(n+2)-A127247(n))`
-/

namespace A029691.P1693901139155266257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295889 (A193091 (n + 2) - A127247 n).toNat

end

end A029691.P1693901139155266257

namespace A029691

/-- `A295889(A193091(n+2)-A127247(n))` -/
def P1693901139155266257.Spec : Prop :=
  ∀ n, P1693901139155266257.a n = A029691 (n + 1)

end A029691

/-!
# A029692: n-th bit in binary expansion of square root of n.

The programs for A029692, there is no canonical definition to state claims against.
-/

/-! ## A029692.P3075118915980615373

`A030190(A019390(n+1)*A064413(n+1))`
-/

namespace A029692.P3075118915980615373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A019390 (n + 1) * A064413 (n + 1)).toNat

end

end A029692.P3075118915980615373

/-! ## A029692.P5993022690700960549

`A030190(lcm(A019390(n+1), A064413(n+1)))`
-/

namespace A029692.P5993022690700960549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Int.lcm (A019390 (n + 1)) (A064413 (n + 1)))

end

end A029692.P5993022690700960549

/-! ## A029692.P3814882186459144918

`A014707(A131142(2*n)+A088932(2*n+1))`
-/

namespace A029692.P3814882186459144918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A131142 (2 * n) + A088932 (2 * n + 1)).toNat

end

end A029692.P3814882186459144918

/-! ## A029692.P13334979280284034190

`and(A099837(A108044(6*n+9)), A267708(9*n+4))`
-/

namespace A029692.P13334979280284034190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099837 (A108044 (6 * n + 9)).toNat) (A267708 (9 * n + 4))

end

end A029692.P13334979280284034190

/-! ## A029692.P2778528644155311090

`lt[A342747(n+1), A342735(n+1)]%2`
-/

namespace A029692.P2778528644155311090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 2

end

end A029692.P2778528644155311090

/-!
# A029693: n-th binary digit in fractional part of cube root of n.

The programs for A029693, there is no canonical definition to state claims against.
-/

/-! ## A029693.P12963182279020207002

`A030308(A230275(n+1)+A035506(2*(n+2)))`
-/

namespace A029693.P12963182279020207002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A230275 (n + 1) + A035506 (2 * (n + 2))).toNat

end

end A029693.P12963182279020207002

/-! ## A029693.P6488299541339514585

`A030301(A206916(n)^Δ[A102781(n+1)])`
-/

namespace A029693.P6488299541339514585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (SequenceMachineLib.roundAway ((A206916 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A029693.P6488299541339514585

/-! ## A029693.P9994412001412651155

`A286990(A318371(n+1)+A303002(n+1))`
-/

namespace A029693.P9994412001412651155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A318371 (n + 1) + A303002 (n + 1)).toNat

end

end A029693.P9994412001412651155

/-! ## A029693.P16017628749027127366

`A285621(record[3*A297165(n)])`
-/

namespace A029693.P16017628749027127366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A297165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A029693.P16017628749027127366

/-! ## A029693.P11007916927648811130

`A285621(A008585(record[A297165(n)]))`
-/

namespace A029693.P11007916927648811130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285621 (A008585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A029693.P11007916927648811130

/-!
# A029694: n-th bit in binary expansion of cube root of n.

The programs for A029694, there is no canonical definition to state claims against.
-/

/-! ## A029694.P1788050577332673894

`A284848(lcm(A084854(n+1), A315329(n)))`
-/

namespace A029694.P1788050577332673894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284848 (Int.lcm (A084854 (n + 1)) (A315329 n))

end

end A029694.P1788050577332673894

/-! ## A029694.P12901736351332850941

`A288997(A008619(n)*A270296(n+1))`
-/

namespace A029694.P12901736351332850941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A008619 n * A270296 (n + 1)).toNat

end

end A029694.P12901736351332850941

/-! ## A029694.P8771898654649203322

`A010060(A288249(n+3)+A083346(n+1))`
-/

namespace A029694.P8771898654649203322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A288249 (n + 3) + A083346 (n + 1)).toNat

end

end A029694.P8771898654649203322

/-! ## A029694.P14924668605616091178

`A010054(gcd(A056040(n+2), A151531(n+1)))`
-/

namespace A029694.P14924668605616091178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd (A056040 (n + 2)) (A151531 (n + 1)))

end

end A029694.P14924668605616091178

/-! ## A029694.P15217350205753567971

`A341347(A107798(n+4))`
-/

namespace A029694.P15217350205753567971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341347 (A107798 (n + 4)).toNat

end

end A029694.P15217350205753567971

/-!
# A029697: Number of words of length 2n in the 6 transpositions of S[ 4 ] equivalent to the identity.

The programs for A029697, the canonical program `A029697.P11224692558306356816` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029697 has offset 1).

The definition of A029697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029697.P6521131114395353132

`(9*4^(n+1)+36^(n+1))/12`
-/

namespace A029697.P6521131114395353132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 4 ^ (n + 1) + 36 ^ (n + 1) : ℚ) / 12

end

end A029697.P6521131114395353132

namespace A029697

/-- `(9*4^(n+1)+36^(n+1))/12` -/
def P6521131114395353132.Spec : Prop :=
  ∀ n, P6521131114395353132.a n = (A029697 (n + 1) : ℚ)

theorem P6521131114395353132.correct : P6521131114395353132.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A029697, Nat.add_sub_cancel, A029697.P6521131114395353132.a, A029697.P11224692558306356816.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A029697, Nat.add_sub_cancel, A029697.P6521131114395353132.a, A029697.P11224692558306356816.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A029697

/-! ## A029697.P11224692558306356816

`40*a(n-1)-144*a(n-2)` with `a(0)=6, a(1)=120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029697

/-- `40*a(n-1)-144*a(n-2)` -/
def P11224692558306356816.Spec : Prop :=
  ∀ n, P11224692558306356816.a n = A029697 (n + 1)

theorem P11224692558306356816.correct : P11224692558306356816.Spec := by
  intro n
  simp only [A029697, Nat.add_sub_cancel]

end A029697

/-! ## A029697.P10563436413824549000

`A380996(2*n+1)-1`
-/

namespace A029697.P10563436413824549000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380996 (2 * n + 1) - 1

end

end A029697.P10563436413824549000

namespace A029697

/-- `A380996(2*n+1)-1` -/
def P10563436413824549000.Spec : Prop :=
  ∀ n, P10563436413824549000.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P10153862576584320841

`lcm(Δ[A002446(n)], A062396(n))`
-/

namespace A029697.P10153862576584320841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A062396 n)

end

end A029697.P10153862576584320841

namespace A029697

/-- `lcm(Δ[A002446(n)], A062396(n))` -/
def P10153862576584320841.Spec : Prop :=
  ∀ n, (P10153862576584320841.a n : ℤ) = A029697 (n + 1)

end A029697

/-! ## A029697.P11865624469207345799

`A169604(2*n)+A164346(n)`
-/

namespace A029697.P11865624469207345799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 (2 * n) + A164346 n

end

end A029697.P11865624469207345799

namespace A029697

/-- `A169604(2*n)+A164346(n)` -/
def P11865624469207345799.Spec : Prop :=
  ∀ n, P11865624469207345799.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P11768000723984784423

`A169604(2*n)+A002001(n+1)`
-/

namespace A029697.P11768000723984784423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 (2 * n) + A002001 (n + 1)

end

end A029697.P11768000723984784423

namespace A029697

/-- `A169604(2*n)+A002001(n+1)` -/
def P11768000723984784423.Spec : Prop :=
  ∀ n, P11768000723984784423.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P17082165640251413778

`A169604(2*n)+A007283(2*n)`
-/

namespace A029697.P17082165640251413778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 (2 * n) + A007283 (2 * n)

end

end A029697.P17082165640251413778

namespace A029697

/-- `A169604(2*n)+A007283(2*n)` -/
def P17082165640251413778.Spec : Prop :=
  ∀ n, P17082165640251413778.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P5503011228833118344

`A280345(2*n)+A169604(2*n)`
-/

namespace A029697.P5503011228833118344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280345 (2 * n) + A169604 (2 * n)

end

end A029697.P5503011228833118344

namespace A029697

/-- `A280345(2*n)+A169604(2*n)` -/
def P5503011228833118344.Spec : Prop :=
  ∀ n, P5503011228833118344.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P1116918112398816801

`A081335(2*n+1)+A081294(n+1)`
-/

namespace A029697.P1116918112398816801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081335 (2 * n + 1) + A081294 (n + 1)

end

end A029697.P1116918112398816801

namespace A029697

/-- `A081335(2*n+1)+A081294(n+1)` -/
def P1116918112398816801.Spec : Prop :=
  ∀ n, P1116918112398816801.a n = A029697 (n + 1)

end A029697

/-! ## A029697.P7334831756781715962

`A169604(2*n)+A084221(2*n+1)`
-/

namespace A029697.P7334831756781715962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 (2 * n) + A084221 (2 * n + 1)

end

end A029697.P7334831756781715962

namespace A029697

/-- `A169604(2*n)+A084221(2*n+1)` -/
def P7334831756781715962.Spec : Prop :=
  ∀ n, P7334831756781715962.a n = A029697 (n + 1)

end A029697

/-!
# A029699: Number of words of length 4 in the n(n-1)/2 transpositions of S[ n ] equivalent to the identity.

The programs for A029699, the canonical program `A029699.P1867875014966050622` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029699 has offset 1).

The definition of A029699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A029699.P4285400763914953521

`(n+1)*n*(3*(n+1)²+n-11)/4`
-/

namespace A029699.P4285400763914953521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * (((3 * (n + 1) ^ 2 : ℤ) + ((n : ℤ) - 11) : ℚ) / 4))

end

end A029699.P4285400763914953521

namespace A029699

/-- `(n+1)*n*(3*(n+1)²+n-11)/4` -/
def P4285400763914953521.Spec : Prop :=
  ∀ n, P4285400763914953521.a n = (A029699 (n + 1) : ℚ)

theorem P4285400763914953521.correct : P4285400763914953521.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A029699, Nat.add_sub_cancel, A029699.P4285400763914953521.a, A029699.P1867875014966050622.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A029699, Nat.add_sub_cancel, A029699.P4285400763914953521.a, A029699.P1867875014966050622.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A029699

/-! ## A029699.P1867875014966050622

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=27, a(3)=120, a(4)=340`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A029699

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1867875014966050622.Spec : Prop :=
  ∀ n, P1867875014966050622.a n = A029699 (n + 1)

theorem P1867875014966050622.correct : P1867875014966050622.Spec := by
  intro n
  simp only [A029699, Nat.add_sub_cancel]

end A029699

/-! ## A029699.P618140169362324906

`A126274(n)-A090197(n)`
-/

namespace A029699.P618140169362324906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 n - A090197 n

end

end A029699.P618140169362324906

namespace A029699

/-- `A126274(n)-A090197(n)` -/
def P618140169362324906.Spec : Prop :=
  ∀ n, P618140169362324906.a n = A029699 (n + 1)

end A029699

/-! ## A029699.P10725318346284943873

`A000096(n)*A005449(n)-A005563(n)`
-/

namespace A029699.P10725318346284943873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n * A005449 n - A005563 n

end

end A029699.P10725318346284943873

namespace A029699

/-- `A000096(n)*A005449(n)-A005563(n)` -/
def P10725318346284943873.Spec : Prop :=
  ∀ n, P10725318346284943873.a n = A029699 (n + 1)

end A029699

/-! ## A029699.P4640549298924035648

`A056105(∑[n])+A000578(n)-(n+1)`
-/

namespace A029699.P4640549298924035648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000578 n - (n + 1 : ℤ))

end

end A029699.P4640549298924035648

namespace A029699

/-- `A056105(∑[n])+A000578(n)-(n+1)` -/
def P4640549298924035648.Spec : Prop :=
  ∀ n, P4640549298924035648.a n = A029699 (n + 1)

end A029699

/-! ## A029699.P5914562160438516293

`A007531(n+1)+A000567(A000217(n))`
-/

namespace A029699.P5914562160438516293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 1) + A000567 (A000217 n).toNat

end

end A029699.P5914562160438516293

namespace A029699

/-- `A007531(n+1)+A000567(A000217(n))` -/
def P5914562160438516293.Spec : Prop :=
  ∀ n, P5914562160438516293.a n = A029699 (n + 1)

end A029699

