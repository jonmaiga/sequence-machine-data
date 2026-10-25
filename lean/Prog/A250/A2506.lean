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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A250600: 

The programs for A250600, there is no canonical definition to state claims against.
-/

/-! ## A250600.P12317418380012806324

`A250868(A141214(n)+7)`
-/

namespace A250600.P12317418380012806324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A141214 n + 7).toNat

end

end A250600.P12317418380012806324

/-! ## A250600.P6273801666033137204

`A250868(A052905(n)+9)`
-/

namespace A250600.P6273801666033137204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A052905 n + 9).toNat

end

end A250600.P6273801666033137204

/-! ## A250600.P6055673149112757621

`A250868(A055999(n)+10)`
-/

namespace A250600.P6055673149112757621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A055999 n + 10).toNat

end

end A250600.P6055673149112757621

/-! ## A250600.P13283522348485085225

`A250868(A167614(n+2)+1)`
-/

namespace A250600.P13283522348485085225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250868 (A167614 (n + 2) + 1).toNat

end

end A250600.P13283522348485085225

/-!
# A250602: Numbers k whose reversal divides the reversal of k+1.

The programs for A250602, there is no canonical definition to state claims against.
-/

/-! ## A250602.P1390875945176443836

`eq[A004086(n), A103159(n+1)]`
-/

namespace A250602.P1390875945176443836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250602.P1390875945176443836

/-! ## A250602.P2772735964247873804

`eq[A004185(n), A103159(n+1)]`
-/

namespace A250602.P2772735964247873804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250602.P2772735964247873804

/-! ## A250602.P10189102409906605202

`eq[A103159(n+1)+n, A056964(n)]`
-/

namespace A250602.P10189102409906605202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103159 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250602.P10189102409906605202

/-! ## A250602.P15763567496480673946

`eq[n-A056965(n), A103159(n+1)]`
-/

namespace A250602.P15763567496480673946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250602.P15763567496480673946

/-! ## A250602.P12468634647969194940

`eq[xor(n, A256756(n)), A103159(n+1)]`
-/

namespace A250602.P12468634647969194940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250602.P12468634647969194940

/-!
# A250604: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250604, there is no canonical definition to state claims against.
-/

/-! ## A250604.P375670534103638446

`A250611(∑[4*n]+1)`
-/

namespace A250604.P375670534103638446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250604.P375670534103638446

/-! ## A250604.P10642836572866679199

`record[A250611(Δ[A235355(n)])]`
-/

namespace A250604.P10642836572866679199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250604.P10642836572866679199

/-! ## A250604.P4969637852403693574

`A250611(A001844(n))+char[21]`
-/

namespace A250604.P4969637852403693574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250604.P4969637852403693574

/-! ## A250604.P16494402882723172906

`A250611(A001844(n))%A000108(n+5)`
-/

namespace A250604.P16494402882723172906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250611 (A001844 n).toNat) (A000108 (n + 5))

end

end A250604.P16494402882723172906

/-! ## A250604.P14731203740694765346

`A007318(C(2, n))*A250611(A001844(n))`
-/

namespace A250604.P14731203740694765346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250611 (A001844 n).toNat

end

end A250604.P14731203740694765346

/-!
# A250605: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250605, the canonical program `A250605.P9853643777940156950` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250605 has offset 1).

The definition of A250605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250605.P9853643777940156950

`A308579(n+3)+(n+2)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250605

/-- `A308579(n+3)+(n+2)²` -/
def P9853643777940156950.Spec : Prop :=
  ∀ n, P9853643777940156950.a n = A250605 (n + 1)

theorem P9853643777940156950.correct : P9853643777940156950.Spec := by
  intro n
  simp only [A250605, Nat.add_sub_cancel]

end A250605

/-! ## A250605.P15913545470347639770

`A099041(n+2)+(n+1)*(n+2)`
-/

namespace A250605.P15913545470347639770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099041 (n + 2) + ((n + 1) * (n + 2) : ℤ)

end

end A250605.P15913545470347639770

namespace A250605

/-- `A099041(n+2)+(n+1)*(n+2)` -/
def P15913545470347639770.Spec : Prop :=
  ∀ n, P15913545470347639770.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P9014652645423205561

`A048491(n+2)+(n+2)*(n-1)`
-/

namespace A250605.P9014652645423205561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048491 (n + 2) + (n + 2 : ℤ) * ((n : ℤ) - 1)

end

end A250605.P9014652645423205561

namespace A250605

/-- `A048491(n+2)+(n+2)*(n-1)` -/
def P9014652645423205561.Spec : Prop :=
  ∀ n, P9014652645423205561.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P14018608900391745149

`A027178(n+2)+(n+2)*(n+3)`
-/

namespace A250605.P14018608900391745149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027178 (n + 2) + ((n + 2) * (n + 3) : ℤ)

end

end A250605.P14018608900391745149

namespace A250605

/-- `A027178(n+2)+(n+2)*(n+3)` -/
def P14018608900391745149.Spec : Prop :=
  ∀ n, P14018608900391745149.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P14909755115565190397

`A053209(n+3)+(n+3)*(n-2)`
-/

namespace A250605.P14909755115565190397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 (n + 3) + (n + 3 : ℤ) * ((n : ℤ) - 2)

end

end A250605.P14909755115565190397

namespace A250605

/-- `A053209(n+3)+(n+3)*(n-2)` -/
def P14909755115565190397.Spec : Prop :=
  ∀ n, P14909755115565190397.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P4544503039405049261

`A182464(n)+A014206(n)`
-/

namespace A250605.P4544503039405049261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182464 n + A014206 n

end

end A250605.P4544503039405049261

namespace A250605

/-- `A182464(n)+A014206(n)` -/
def P4544503039405049261.Spec : Prop :=
  ∀ n, P4544503039405049261.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P11258293206509662357

`A002378(n)+A182464(n)+2`
-/

namespace A250605.P11258293206509662357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A182464 n + 2)

end

end A250605.P11258293206509662357

namespace A250605

/-- `A002378(n)+A182464(n)+2` -/
def P11258293206509662357.Spec : Prop :=
  ∀ n, P11258293206509662357.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P16038640898445508203

`A027688(n)+A182464(n)-1`
-/

namespace A250605.P16038640898445508203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n + (A182464 n - 1)

end

end A250605.P16038640898445508203

namespace A250605

/-- `A027688(n)+A182464(n)-1` -/
def P16038640898445508203.Spec : Prop :=
  ∀ n, P16038640898445508203.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P2562046719656275597

`A182464(n)+2*A000124(n)`
-/

namespace A250605.P2562046719656275597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182464 n + 2 * A000124 n

end

end A250605.P2562046719656275597

namespace A250605

/-- `A182464(n)+2*A000124(n)` -/
def P2562046719656275597.Spec : Prop :=
  ∀ n, P2562046719656275597.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P1471206109250545867

`A182464(n)+∑[A233583(2*n+1)]`
-/

namespace A250605.P1471206109250545867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182464 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250605.P1471206109250545867

namespace A250605

/-- `A182464(n)+∑[A233583(2*n+1)]` -/
def P1471206109250545867.Spec : Prop :=
  ∀ n, P1471206109250545867.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P8482538006102577568

`A048488(n+1)+A048488(n+2)+n²+n`
-/

namespace A250605.P8482538006102577568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 (n + 1) + (A048488 (n + 2) + (n ^ 2 + n : ℤ))

end

end A250605.P8482538006102577568

namespace A250605

/-- `A048488(n+1)+A048488(n+2)+n²+n` -/
def P8482538006102577568.Spec : Prop :=
  ∀ n, P8482538006102577568.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P15382926687987097352

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=26, a(1)=64, a(2)=140, a(3)=290`
-/

namespace A250605.P15382926687987097352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26, 64, 140, 290] fun n a =>
  5 * a (n - 1) - 9 * a (n - 2) + 7 * a (n - 3) - 2 * a (n - 4)

end

end A250605.P15382926687987097352

namespace A250605

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P15382926687987097352.Spec : Prop :=
  ∀ n, P15382926687987097352.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P2750325538884235154

`A182464(n)+A005843(A000124(n))`
-/

namespace A250605.P2750325538884235154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182464 n + A005843 (A000124 n).toNat

end

end A250605.P2750325538884235154

namespace A250605

/-- `A182464(n)+A005843(A000124(n))` -/
def P2750325538884235154.Spec : Prop :=
  ∀ n, P2750325538884235154.a n = A250605 (n + 1)

end A250605

/-! ## A250605.P4261916188422225294

`A222404(A000217(n+2))+A027178(n+2)`
-/

namespace A250605.P4261916188422225294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222404 (A000217 (n + 2)).toNat + A027178 (n + 2)

end

end A250605.P4261916188422225294

namespace A250605

/-- `A222404(A000217(n+2))+A027178(n+2)` -/
def P4261916188422225294.Spec : Prop :=
  ∀ n, P4261916188422225294.a n = A250605 (n + 1)

end A250605

/-!
# A250606: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250606, the canonical program `A250606.P8227472187256811688` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250606 has offset 1).

The definition of A250606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250606.P8227472187256811688

`64*2^n+5*(n+1)²+4*(n+1)-16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250606

/-- `64*2^n+5*(n+1)²+4*(n+1)-16` -/
def P8227472187256811688.Spec : Prop :=
  ∀ n, P8227472187256811688.a n = A250606 (n + 1)

theorem P8227472187256811688.correct : P8227472187256811688.Spec := by
  intro n
  simp only [A250606, Nat.add_sub_cancel]

end A250606

/-! ## A250606.P8755104813611449789

`A250611(∑[n+2]+4)`
-/

namespace A250606.P8755104813611449789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250606.P8755104813611449789

namespace A250606

/-- `A250611(∑[n+2]+4)` -/
def P8755104813611449789.Spec : Prop :=
  ∀ n, P8755104813611449789.a n = A250606 (n + 1)

end A250606

/-! ## A250606.P10702791063120207728

`or(char[2], A250611(A167614(n+1)))`
-/

namespace A250606.P10702791063120207728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250611 (A167614 (n + 1)).toNat)

end

end A250606.P10702791063120207728

namespace A250606

/-- `or(char[2], A250611(A167614(n+1)))` -/
def P10702791063120207728.Spec : Prop :=
  ∀ n, P10702791063120207728.a n = A250606 (n + 1)

end A250606

/-! ## A250606.P13596040939038483531

`A250611(A167614(n+1))%A202281(n+1)`
-/

namespace A250606.P13596040939038483531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250611 (A167614 (n + 1)).toNat) (A202281 (n + 1))

end

end A250606.P13596040939038483531

namespace A250606

/-- `A250611(A167614(n+1))%A202281(n+1)` -/
def P13596040939038483531.Spec : Prop :=
  ∀ n, P13596040939038483531.a n = A250606 (n + 1)

end A250606

/-!
# A250607: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250607, the canonical program `A250607.P17725678331929918653` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250607 has offset 1).

The definition of A250607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250607.P17725678331929918653

`100*2^n+16*(n+1)²+22*(n+1)-18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250607

/-- `100*2^n+16*(n+1)²+22*(n+1)-18` -/
def P17725678331929918653.Spec : Prop :=
  ∀ n, P17725678331929918653.a n = A250607 (n + 1)

theorem P17725678331929918653.correct : P17725678331929918653.Spec := by
  intro n
  simp only [A250607, Nat.add_sub_cancel]

end A250607

/-! ## A250607.P8625103863438956859

`A250611(∑[n+3]+7)`
-/

namespace A250607.P8625103863438956859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250607.P8625103863438956859

namespace A250607

/-- `A250611(∑[n+3]+7)` -/
def P8625103863438956859.Spec : Prop :=
  ∀ n, P8625103863438956859.a n = A250607 (n + 1)

end A250607

/-! ## A250607.P10051797923628971617

`A040755(2*n+3)*A250611(A167614(n+2)+1)`
-/

namespace A250607.P10051797923628971617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040755 (2 * n + 3) * A250611 (A167614 (n + 2) + 1).toNat

end

end A250607.P10051797923628971617

namespace A250607

/-- `A040755(2*n+3)*A250611(A167614(n+2)+1)` -/
def P10051797923628971617.Spec : Prop :=
  ∀ n, P10051797923628971617.a n = A250607 (n + 1)

end A250607

/-! ## A250607.P9928933720537584813

`lcm(2, A250611(A055998(n+2)))`
-/

namespace A250607.P9928933720537584813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250611 (A055998 (n + 2)).toNat)

end

end A250607.P9928933720537584813

namespace A250607

/-- `lcm(2, A250611(A055998(n+2)))` -/
def P9928933720537584813.Spec : Prop :=
  ∀ n, (P9928933720537584813.a n : ℤ) = A250607 (n + 1)

end A250607

/-!
# A250608: Number of (n+1) X (5+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250608, the canonical program `A250608.P10006167449874516969` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250608 has offset 1).

The definition of A250608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250608.P10006167449874516969

`144*2^n+42*(n+1)²+69*(n+1)-8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250608

/-- `144*2^n+42*(n+1)²+69*(n+1)-8` -/
def P10006167449874516969.Spec : Prop :=
  ∀ n, P10006167449874516969.a n = A250608 (n + 1)

theorem P10006167449874516969.correct : P10006167449874516969.Spec := by
  intro n
  simp only [A250608, Nat.add_sub_cancel]

end A250608

/-! ## A250608.P8797341233920118047

`A250611(∑[n+4]+11)`
-/

namespace A250608.P8797341233920118047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250608.P8797341233920118047

namespace A250608

/-- `A250611(∑[n+4]+11)` -/
def P8797341233920118047.Spec : Prop :=
  ∀ n, P8797341233920118047.a n = A250608 (n + 1)

end A250608

/-!
# A250609: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250609, the canonical program `A250609.P17530561266331158023` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250609 has offset 1).

The definition of A250609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250609.P17530561266331158023

`196*2^n+99*(n+1)²+177*(n+1)+30`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250609

/-- `196*2^n+99*(n+1)²+177*(n+1)+30` -/
def P17530561266331158023.Spec : Prop :=
  ∀ n, (P17530561266331158023.a n : ℤ) = A250609 (n + 1)

theorem P17530561266331158023.correct : P17530561266331158023.Spec := by
  intro n
  simp only [A250609, Nat.add_sub_cancel]

end A250609

/-! ## A250609.P7709222376580910235

`A250611(∑[n+5]+16)`
-/

namespace A250609.P7709222376580910235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250609.P7709222376580910235

namespace A250609

/-- `A250611(∑[n+5]+16)` -/
def P7709222376580910235.Spec : Prop :=
  ∀ n, P7709222376580910235.a n = A250609 (n + 1)

end A250609

/-! ## A250609.P18128887242125811161

`lcm(2, A250611(A000217(n+5)+6))`
-/

namespace A250609.P18128887242125811161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250611 (A000217 (n + 5) + 6).toNat)

end

end A250609.P18128887242125811161

namespace A250609

/-- `lcm(2, A250611(A000217(n+5)+6))` -/
def P18128887242125811161.Spec : Prop :=
  ∀ n, (P18128887242125811161.a n : ℤ) = A250609 (n + 1)

end A250609

/-! ## A250609.P17210027475884895441

`A007318(C(2, n))*A250611(A000217(n+5)+6)`
-/

namespace A250609.P17210027475884895441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250611 (A000217 (n + 5) + 6).toNat

end

end A250609.P17210027475884895441

namespace A250609

/-- `A007318(C(2, n))*A250611(A000217(n+5)+6)` -/
def P17210027475884895441.Spec : Prop :=
  ∀ n, P17210027475884895441.a n = A250609 (n + 1)

end A250609

/-! ## A250609.P2864268128885466665

`A007318(floor(n/81))*A250611(A000217(n+5)+6)`
-/

namespace A250609.P2864268128885466665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 81⌋.toNat * A250611 (A000217 (n + 5) + 6).toNat

end

end A250609.P2864268128885466665

namespace A250609

/-- `A007318(floor(n/81))*A250611(A000217(n+5)+6)` -/
def P2864268128885466665.Spec : Prop :=
  ∀ n, P2864268128885466665.a n = A250609 (n + 1)

end A250609

/-!
# A250610: Number of (n+1) X (7+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250610, the canonical program `A250610.P12155344149762946507` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250610 has offset 1).

The definition of A250610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250610.P12155344149762946507

`256*2^n+219*(n+1)²+410*(n+1)+128`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250610

/-- `256*2^n+219*(n+1)²+410*(n+1)+128` -/
def P12155344149762946507.Spec : Prop :=
  ∀ n, (P12155344149762946507.a n : ℤ) = A250610 (n + 1)

theorem P12155344149762946507.correct : P12155344149762946507.Spec := by
  intro n
  simp only [A250610, Nat.add_sub_cancel]

end A250610

/-! ## A250610.P703135834249285050

`A250611(C(n+7, 2)+7)`
-/

namespace A250610.P703135834249285050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (Nat.choose (n + 7) 2 + 7)

end

end A250610.P703135834249285050

namespace A250610

/-- `A250611(C(n+7, 2)+7)` -/
def P703135834249285050.Spec : Prop :=
  ∀ n, P703135834249285050.a n = A250610 (n + 1)

end A250610

/-! ## A250610.P4118243855797338379

`A250611(A056119(n)+28)`
-/

namespace A250610.P4118243855797338379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (A056119 n + 28).toNat

end

end A250610.P4118243855797338379

namespace A250610

/-- `A250611(A056119(n)+28)` -/
def P4118243855797338379.Spec : Prop :=
  ∀ n, P4118243855797338379.a n = A250610 (n + 1)

end A250610

/-! ## A250610.P7927326817796121244

`A250611(eq[11, A066657(n)])`
-/

namespace A250610.P7927326817796121244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250610.P7927326817796121244

namespace A250610

/-- `A250611(eq[11, A066657(n)])` -/
def P7927326817796121244.Spec : Prop :=
  ∀ n, P7927326817796121244.a n = A250610 (n + 1)

end A250610

/-! ## A250610.P10096618695347987736

`A250611(A166136(n+5)+1)`
-/

namespace A250610.P10096618695347987736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250611 (A166136 (n + 5) + 1).toNat

end

end A250610.P10096618695347987736

namespace A250610

/-- `A250611(A166136(n+5)+1)` -/
def P10096618695347987736.Spec : Prop :=
  ∀ n, P10096618695347987736.a n = A250610 (n + 1)

end A250610

/-!
# A250611: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250611, there is no canonical definition to state claims against.
-/

/-! ## A250611.P1699493506583993958

`A337125(xor(6, A251201(n+1)))`
-/

namespace A250611.P1699493506583993958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (Int.xor 6 (A251201 (n + 1))).toNat

end

end A250611.P1699493506583993958

/-!
# A250612: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250612, there is no canonical definition to state claims against.
-/

/-! ## A250612.P14845397252324736268

`A250620((n+1)²+n²)`
-/

namespace A250612.P14845397252324736268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 ((n + 1) ^ 2 + n ^ 2)

end

end A250612.P14845397252324736268

/-!
# A250613: Number of (n+1)X(1+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250613, the canonical program `A250613.P2999142405487198393` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250613 has offset 1).

The definition of A250613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250613.P2999142405487198393

`(∑[A094687(n+4)]+3)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250613

/-- `(∑[A094687(n+4)]+3)²` -/
def P2999142405487198393.Spec : Prop :=
  ∀ n, P2999142405487198393.a n = A250613 (n + 1)

theorem P2999142405487198393.correct : P2999142405487198393.Spec := by
  intro n
  simp only [A250613, Nat.add_sub_cancel]

end A250613

/-! ## A250613.P6163561899646973333

`(A020695(n+4)-A005578(n+6))²`
-/

namespace A250613.P6163561899646973333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020695 (n + 4) - A005578 (n + 6)) ^ 2

end

end A250613.P6163561899646973333

namespace A250613

/-- `(A020695(n+4)-A005578(n+6))²` -/
def P6163561899646973333.Spec : Prop :=
  ∀ n, P6163561899646973333.a n = A250613 (n + 1)

end A250613

/-! ## A250613.P11978493524490685236

`(A000975(n+5)-A000071(n+7))²`
-/

namespace A250613.P11978493524490685236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000975 (n + 5) - A000071 (n + 7)) ^ 2

end

end A250613.P11978493524490685236

namespace A250613

/-- `(A000975(n+5)-A000071(n+7))²` -/
def P11978493524490685236.Spec : Prop :=
  ∀ n, P11978493524490685236.a n = A250613 (n + 1)

end A250613

/-! ## A250613.P8813093939428511060

`A250620(∑[n]+1)`
-/

namespace A250613.P8813093939428511060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250613.P8813093939428511060

namespace A250613

/-- `A250620(∑[n]+1)` -/
def P8813093939428511060.Spec : Prop :=
  ∀ n, P8813093939428511060.a n = A250613 (n + 1)

end A250613

/-! ## A250613.P13052840966781391218

`record[A250620(n+1)/A022169(n)]`
-/

namespace A250613.P13052840966781391218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250620 (n + 1) : ℚ) / (A022169 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250613.P13052840966781391218

namespace A250613

/-- `record[A250620(n+1)/A022169(n)]` -/
def P13052840966781391218.Spec : Prop :=
  ∀ n, P13052840966781391218.a n = (A250613 (n + 1) : ℚ)

end A250613

/-!
# A250614: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250614, there is no canonical definition to state claims against.
-/

/-! ## A250614.P17151482938289950631

`A250620(∑[n+1]+2)`
-/

namespace A250614.P17151482938289950631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250614.P17151482938289950631

/-! ## A250614.P7091073224046311118

`record[A250620(abs(A201163(n)))]`
-/

namespace A250614.P7091073224046311118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250614.P7091073224046311118

/-! ## A250614.P7795713939437338162

`record[A250620(Δ[A003453(n+5)])]`
-/

namespace A250614.P7795713939437338162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250614.P7795713939437338162

/-! ## A250614.P13837494857148255574

`record[A250620(A025725(n+1)+1)]`
-/

namespace A250614.P13837494857148255574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A025725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250614.P13837494857148255574

/-! ## A250614.P3601878601077278553

`record[A250620(A198453(n+1))]`
-/

namespace A250614.P3601878601077278553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250614.P3601878601077278553

/-!
# A250615: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250615, there is no canonical definition to state claims against.
-/

/-! ## A250615.P1002102636774428041

`A250620(∑[n+2]+4)`
-/

namespace A250615.P1002102636774428041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250615.P1002102636774428041

/-! ## A250615.P9359388551714822752

`A250620(A167614(n+1))+A185237(n)`
-/

namespace A250615.P9359388551714822752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A167614 (n + 1)).toNat + A185237 n

end

end A250615.P9359388551714822752

/-! ## A250615.P498084606122999204

`A264668(n)+A250620(A167614(n+1))`
-/

namespace A250615.P498084606122999204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A250620 (A167614 (n + 1)).toNat

end

end A250615.P498084606122999204

/-! ## A250615.P15410643250521351133

`A043568(n)*A250620(A167614(n+1))`
-/

namespace A250615.P15410643250521351133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A250620 (A167614 (n + 1)).toNat

end

end A250615.P15410643250521351133

/-! ## A250615.P1160938266955650865

`A250620(A167614(n+1))+A070208(n+1)`
-/

namespace A250615.P1160938266955650865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A167614 (n + 1)).toNat + A070208 (n + 1)

end

end A250615.P1160938266955650865

/-!
# A250616: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250616, there is no canonical definition to state claims against.
-/

/-! ## A250616.P12113080424324426016

`A250620(A374004(n+1))`
-/

namespace A250616.P12113080424324426016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A374004 (n + 1)).toNat

end

end A250616.P12113080424324426016

/-! ## A250616.P1226421730069879031

`A250620(A141214(n)+7)`
-/

namespace A250616.P1226421730069879031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A141214 n + 7).toNat

end

end A250616.P1226421730069879031

/-! ## A250616.P13334216750750484116

`A250620(A055999(n)+10)`
-/

namespace A250616.P13334216750750484116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A055999 n + 10).toNat

end

end A250616.P13334216750750484116

/-! ## A250616.P15516146325092967170

`A250620(A167614(n+2)+1)`
-/

namespace A250616.P15516146325092967170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A167614 (n + 2) + 1).toNat

end

end A250616.P15516146325092967170

/-! ## A250616.P11855161333204542667

`A250620(A166136(n+2)-2)`
-/

namespace A250616.P11855161333204542667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A166136 (n + 2) - 2).toNat

end

end A250616.P11855161333204542667

/-!
# A250617: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250617, there is no canonical definition to state claims against.
-/

/-! ## A250617.P9038779466613014946

`A250620(A374005(n+1))`
-/

namespace A250617.P9038779466613014946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A374005 (n + 1)).toNat

end

end A250617.P9038779466613014946

/-! ## A250617.P13137977321261439143

`A250620(A155212(n)+13)`
-/

namespace A250617.P13137977321261439143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A155212 n + 13).toNat

end

end A250617.P13137977321261439143

/-! ## A250617.P2347381623324938504

`A250620(eq[6, A131818(n+1)])`
-/

namespace A250617.P2347381623324938504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250617.P2347381623324938504

/-! ## A250617.P13029386677762751822

`A250620(A046691(n+3))`
-/

namespace A250617.P13029386677762751822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A046691 (n + 3)).toNat

end

end A250617.P13029386677762751822

/-! ## A250617.P17645981139699196860

`A250620(eq[4, A193592(n)])`
-/

namespace A250617.P17645981139699196860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250617.P17645981139699196860

/-!
# A250618: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250618, there is no canonical definition to state claims against.
-/

/-! ## A250618.P14058920037727096782

`A250620(A374007(n+1))`
-/

namespace A250618.P14058920037727096782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (A374007 (n + 1)).toNat

end

end A250618.P14058920037727096782

/-! ## A250618.P5584074458391617745

`A250620(eq[3, A219347(n)])`
-/

namespace A250618.P5584074458391617745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250618.P5584074458391617745

/-! ## A250618.P7161540672956467906

`A250620(eq[5, A193592(n)])`
-/

namespace A250618.P7161540672956467906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250618.P7161540672956467906

/-! ## A250618.P8055704929161289212

`A250620(Δ[Δ[A006504(n+1)]])`
-/

namespace A250618.P8055704929161289212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (f1 (n + 1) - f1 n).toNat

end

end A250618.P8055704929161289212

/-! ## A250618.P1076729866994912106

`A250620(eq[8, A131818(n+1)]-12)`
-/

namespace A250618.P1076729866994912106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 12)

end

end A250618.P1076729866994912106

/-!
# A250619: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

The programs for A250619, there is no canonical definition to state claims against.
-/

/-! ## A250619.P15840758779946903854

`A250620(eq[8, A131818(n+1)])`
-/

namespace A250619.P15840758779946903854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250619.P15840758779946903854

/-! ## A250619.P5355597149692405139

`A250620(eq[4, A219347(n)])`
-/

namespace A250619.P5355597149692405139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250619.P5355597149692405139

/-! ## A250619.P15175894034837399222

`A250620(eq[6, A193592(n)])`
-/

namespace A250619.P15175894034837399222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250620 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250619.P15175894034837399222

/-!
# A250621: a(n) = floor(n*log(prime(n))).

The programs for A250621, the canonical program `A250621.P17073922274883011414` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250621 has offset 1).

The definition of A250621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250621.P17073922274883011414

`floor((n+1)*log(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250621

/-- `floor((n+1)*log(A000040(n+1)))` -/
def P17073922274883011414.Spec : Prop :=
  ∀ n, P17073922274883011414.a n = A250621 (n + 1)

theorem P17073922274883011414.correct : P17073922274883011414.Spec := by
  intro n
  simp only [A250621, Nat.add_sub_cancel]

end A250621

/-! ## A250621.P506279392009154227

`floor((n+1)*log(A006005(n+1)))`
-/

namespace A250621.P506279392009154227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (A006005 (n + 1) : ℝ)⌋

end

end A250621.P506279392009154227

namespace A250621

/-- `floor((n+1)*log(A006005(n+1)))` -/
def P506279392009154227.Spec : Prop :=
  ∀ n, P506279392009154227.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P8464051493443327801

`A250622(n+1)+A000040(n+1)`
-/

namespace A250621.P8464051493443327801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) + A000040 (n + 1)

end

end A250621.P8464051493443327801

namespace A250621

/-- `A250622(n+1)+A000040(n+1)` -/
def P8464051493443327801.Spec : Prop :=
  ∀ n, P8464051493443327801.a n = A250621 (n + 1)

theorem P8464051493443327801.correct : P8464051493443327801.Spec := by
  intro n
  simp only [A250621, Nat.add_sub_cancel, A250621.P8464051493443327801.a, A250621.P17073922274883011414.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A250622, A250622.P6101694569032814672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250621

/-! ## A250621.P17361620438260648668

`A050504(n+1)+A250622(n+1)+A064658(n+1)`
-/

namespace A250621.P17361620438260648668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1) + (A250622 (n + 1) + A064658 (n + 1))

end

end A250621.P17361620438260648668

namespace A250621

/-- `A050504(n+1)+A250622(n+1)+A064658(n+1)` -/
def P17361620438260648668.Spec : Prop :=
  ∀ n, P17361620438260648668.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P14875698588858820400

`floor((n+1)*record[log(A006530(n+2))])`
-/

namespace A250621.P14875698588858820400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A250621.P14875698588858820400

namespace A250621

/-- `floor((n+1)*record[log(A006530(n+2))])` -/
def P14875698588858820400.Spec : Prop :=
  ∀ n, P14875698588858820400.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P12583000418309365456

`floor((n+1)*record[log(A020639(n+2))])`
-/

namespace A250621.P12583000418309365456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A250621.P12583000418309365456

namespace A250621

/-- `floor((n+1)*record[log(A020639(n+2))])` -/
def P12583000418309365456.Spec : Prop :=
  ∀ n, P12583000418309365456.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P1413989425015988576

`floor((n+1)*record[log(A000010(n+1)+1)])`
-/

namespace A250621.P1413989425015988576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000010 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A250621.P1413989425015988576

namespace A250621

/-- `floor((n+1)*record[log(A000010(n+1)+1)])` -/
def P1413989425015988576.Spec : Prop :=
  ∀ n, P1413989425015988576.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P15985691109772055861

`A250622(n+1)+p?[A001057(n)]`
-/

namespace A250621.P15985691109772055861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250621.P15985691109772055861

namespace A250621

/-- `A250622(n+1)+p?[A001057(n)]` -/
def P15985691109772055861.Spec : Prop :=
  ∀ n, P15985691109772055861.a n = A250621 (n + 1)

end A250621

/-! ## A250621.P15552478104400140184

`A250622(n+1)+p?[A006370(n)]`
-/

namespace A250621.P15552478104400140184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250621.P15552478104400140184

namespace A250621

/-- `A250622(n+1)+p?[A006370(n)]` -/
def P15552478104400140184.Spec : Prop :=
  ∀ n, P15552478104400140184.a n = A250621 (n + 1)

end A250621

/-!
# A250622: a(n) = floor(n*log(prime(n)))-prime(n), n >= 1.

The programs for A250622, the canonical program `A250622.P6101694569032814672` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250622 has offset 1).

The definition of A250622 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250621, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A250622.P6101694569032814672

`A250621(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A250622

/-- `A250621(n+1)-A000040(n+1)` -/
def P6101694569032814672.Spec : Prop :=
  ∀ n, P6101694569032814672.a n = A250622 (n + 1)

theorem P6101694569032814672.correct : P6101694569032814672.Spec := by
  intro n
  simp only [A250622, Nat.add_sub_cancel]

end A250622

/-! ## A250622.P14193211786223459870

`A250621(n+1)-Δ[A007504(n)]`
-/

namespace A250622.P14193211786223459870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (f1 (n + 1) - f1 n)

end

end A250622.P14193211786223459870

namespace A250622

/-- `A250621(n+1)-Δ[A007504(n)]` -/
def P14193211786223459870.Spec : Prop :=
  ∀ n, P14193211786223459870.a n = A250622 (n + 1)

end A250622

/-! ## A250622.P8154405463575213156

`A250623(n+1)+A059111(n+1)`
-/

namespace A250622.P8154405463575213156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250623 (n + 1) + A059111 (n + 1)

end

end A250622.P8154405463575213156

namespace A250622

/-- `A250623(n+1)+A059111(n+1)` -/
def P8154405463575213156.Spec : Prop :=
  ∀ n, P8154405463575213156.a n = A250622 (n + 1)

theorem P8154405463575213156.correct : P8154405463575213156.Spec := by
  intro n
  simp only [A250622, Nat.add_sub_cancel, A250622.P8154405463575213156.a, A250622.P6101694569032814672.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A059111, A059111.P17113221363624731460.a, A250621, A250621.P17073922274883011414.a, A250623, A250623.P3707548778749929836.a, A050502, A050502.P8059689843118801007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250622

/-! ## A250622.P5057029422414339809

`A064658(n+1)+A250623(n+1)+A057428(n)`
-/

namespace A250622.P5057029422414339809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064658 (n + 1) + (A250623 (n + 1) + A057428 n)

end

end A250622.P5057029422414339809

namespace A250622

/-- `A064658(n+1)+A250623(n+1)+A057428(n)` -/
def P5057029422414339809.Spec : Prop :=
  ∀ n, P5057029422414339809.a n = A250622 (n + 1)

theorem P5057029422414339809.correct : P5057029422414339809.Spec := by
  intro n
  simp only [A250622, Nat.add_sub_cancel, A250622.P5057029422414339809.a, A250622.P6101694569032814672.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A057428, A057428.P2999489532230392221.a, A064658, A064658.P3874137061394963063.a, A250621, A250621.P17073922274883011414.a, A250623, A250623.P3707548778749929836.a, A050502, A050502.P8059689843118801007.a, A057427, A057427.P3058147525557661423.a, A059111, A059111.P17113221363624731460.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250622

/-! ## A250622.P10826086430405181050

`A064658(n+1)+A250623(n+1)-A057427(n)`
-/

namespace A250622.P10826086430405181050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064658 (n + 1) + (A250623 (n + 1) - A057427 n)

end

end A250622.P10826086430405181050

namespace A250622

/-- `A064658(n+1)+A250623(n+1)-A057427(n)` -/
def P10826086430405181050.Spec : Prop :=
  ∀ n, P10826086430405181050.a n = A250622 (n + 1)

theorem P10826086430405181050.correct : P10826086430405181050.Spec := by
  intro n
  simp only [A250622, Nat.add_sub_cancel, A250622.P10826086430405181050.a, A250622.P6101694569032814672.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A057427, A057427.P3058147525557661423.a, A064658, A064658.P3874137061394963063.a, A250621, A250621.P17073922274883011414.a, A250623, A250623.P3707548778749929836.a, A000007, A000007.P6599383543502402472.a, A050502, A050502.P8059689843118801007.a, A059111, A059111.P17113221363624731460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250622

/-! ## A250622.P11229403455747591023

`A000040(n+1)+A250623(n+1)-A050502(n+1)`
-/

namespace A250622.P11229403455747591023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A250623 (n + 1) - A050502 (n + 1))

end

end A250622.P11229403455747591023

namespace A250622

/-- `A000040(n+1)+A250623(n+1)-A050502(n+1)` -/
def P11229403455747591023.Spec : Prop :=
  ∀ n, P11229403455747591023.a n = A250622 (n + 1)

theorem P11229403455747591023.correct : P11229403455747591023.Spec := by
  intro n
  simp only [A250622, Nat.add_sub_cancel, A250622.P11229403455747591023.a, A250622.P6101694569032814672.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A250621, A250621.P17073922274883011414.a, A250623, A250623.P3707548778749929836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250622

/-! ## A250622.P16807495403155924670

`A250621(n+1)-(A064658(n+1)+A050504(n+1))`
-/

namespace A250622.P16807495403155924670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A064658 (n + 1) + A050504 (n + 1))

end

end A250622.P16807495403155924670

namespace A250622

/-- `A250621(n+1)-(A064658(n+1)+A050504(n+1))` -/
def P16807495403155924670.Spec : Prop :=
  ∀ n, P16807495403155924670.a n = A250622 (n + 1)

end A250622

/-! ## A250622.P12059206621852211458

`A250623(n+1)+A064658(n+1)-and(1, A000040(n+1))`
-/

namespace A250622.P12059206621852211458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250623 (n + 1) + (A064658 (n + 1) - Int.land 1 (A000040 (n + 1)))

end

end A250622.P12059206621852211458

namespace A250622

/-- `A250623(n+1)+A064658(n+1)-and(1, A000040(n+1))` -/
def P12059206621852211458.Spec : Prop :=
  ∀ n, P12059206621852211458.a n = A250622 (n + 1)

end A250622

/-! ## A250622.P8872851754013494906

`A250621(n+1)-record[A051698(n)]`
-/

namespace A250622.P8872851754013494906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250622.P8872851754013494906

namespace A250622

/-- `A250621(n+1)-record[A051698(n)]` -/
def P8872851754013494906.Spec : Prop :=
  ∀ n, P8872851754013494906.a n = A250622 (n + 1)

end A250622

/-! ## A250622.P14126062331828259297

`A250621(n+1)-p?[A001057(n)]`
-/

namespace A250622.P14126062331828259297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A250622.P14126062331828259297

namespace A250622

/-- `A250621(n+1)-p?[A001057(n)]` -/
def P14126062331828259297.Spec : Prop :=
  ∀ n, P14126062331828259297.a n = A250622 (n + 1)

end A250622

/-!
# A250623: a(n) = floor(n*log(prime(n))) + ceiling(n*log(n)) - 2*prime(n).

The programs for A250623, the canonical program `A250623.P3707548778749929836` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250623 has offset 1).

The definition of A250623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A250621, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A250623.P3707548778749929836

`A250621(n+1)+A050502(n+1)-2*A000040(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A250623

/-- `A250621(n+1)+A050502(n+1)-2*A000040(n+1)` -/
def P3707548778749929836.Spec : Prop :=
  ∀ n, P3707548778749929836.a n = A250623 (n + 1)

theorem P3707548778749929836.correct : P3707548778749929836.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel]

end A250623

/-! ## A250623.P4706015851985728183

`A250622(n+1)-A059111(n+1)`
-/

namespace A250623.P4706015851985728183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - A059111 (n + 1)

end

end A250623.P4706015851985728183

namespace A250623

/-- `A250622(n+1)-A059111(n+1)` -/
def P4706015851985728183.Spec : Prop :=
  ∀ n, P4706015851985728183.a n = A250623 (n + 1)

theorem P4706015851985728183.correct : P4706015851985728183.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel, A250623.P4706015851985728183.a, A250623.P3707548778749929836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A059111, A059111.P17113221363624731460.a, A250621, A250621.P17073922274883011414.a, A250622, A250622.P6101694569032814672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250623

/-! ## A250623.P8312984222249197879

`A250622(n+1)-floor(A000040(n+1)-(n+1)*log(n+1))`
-/

namespace A250623.P8312984222249197879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - ⌊(A000040 (n + 1) : ℝ) - (n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A250623.P8312984222249197879

namespace A250623

/-- `A250622(n+1)-floor(A000040(n+1)-(n+1)*log(n+1))` -/
def P8312984222249197879.Spec : Prop :=
  ∀ n, P8312984222249197879.a n = A250623 (n + 1)

end A250623

/-! ## A250623.P11525768457044671223

`A250622(n+1)-(A064658(n+1)+A057428(n))`
-/

namespace A250623.P11525768457044671223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - (A064658 (n + 1) + A057428 n)

end

end A250623.P11525768457044671223

namespace A250623

/-- `A250622(n+1)-(A064658(n+1)+A057428(n))` -/
def P11525768457044671223.Spec : Prop :=
  ∀ n, P11525768457044671223.a n = A250623 (n + 1)

theorem P11525768457044671223.correct : P11525768457044671223.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel, A250623.P11525768457044671223.a, A250623.P3707548778749929836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A057428, A057428.P2999489532230392221.a, A064658, A064658.P3874137061394963063.a, A250621, A250621.P17073922274883011414.a, A250622, A250622.P6101694569032814672.a, A057427, A057427.P3058147525557661423.a, A059111, A059111.P17113221363624731460.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250623

/-! ## A250623.P9888003411312952600

`A250622(n+1)+A057427(n)-A064658(n+1)`
-/

namespace A250623.P9888003411312952600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) + (A057427 n - A064658 (n + 1))

end

end A250623.P9888003411312952600

namespace A250623

/-- `A250622(n+1)+A057427(n)-A064658(n+1)` -/
def P9888003411312952600.Spec : Prop :=
  ∀ n, P9888003411312952600.a n = A250623 (n + 1)

theorem P9888003411312952600.correct : P9888003411312952600.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel, A250623.P9888003411312952600.a, A250623.P3707548778749929836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A057427, A057427.P3058147525557661423.a, A064658, A064658.P3874137061394963063.a, A250621, A250621.P17073922274883011414.a, A250622, A250622.P6101694569032814672.a, A000007, A000007.P6599383543502402472.a, A059111, A059111.P17113221363624731460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250623

/-! ## A250623.P15190213486625197275

`A250621(n+1)-(A059111(n+1)+Δ[A007504(n)])`
-/

namespace A250623.P15190213486625197275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A059111 (n + 1) + (f1 (n + 1) - f1 n))

end

end A250623.P15190213486625197275

namespace A250623

/-- `A250621(n+1)-(A059111(n+1)+Δ[A007504(n)])` -/
def P15190213486625197275.Spec : Prop :=
  ∀ n, P15190213486625197275.a n = A250623 (n + 1)

end A250623

/-! ## A250623.P8103237225772491190

`A050502(n+1)+A250622(n+1)-A000040(n+1)`
-/

namespace A250623.P8103237225772491190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050502 (n + 1) + (A250622 (n + 1) - A000040 (n + 1))

end

end A250623.P8103237225772491190

namespace A250623

/-- `A050502(n+1)+A250622(n+1)-A000040(n+1)` -/
def P8103237225772491190.Spec : Prop :=
  ∀ n, P8103237225772491190.a n = A250623 (n + 1)

theorem P8103237225772491190.correct : P8103237225772491190.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel, A250623.P8103237225772491190.a, A250623.P3707548778749929836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A250621, A250621.P17073922274883011414.a, A250622, A250622.P6101694569032814672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250623

/-! ## A250623.P18419721785756339592

`A250621(n+1)-(A059111(n+1)+A000040(n+1))`
-/

namespace A250623.P18419721785756339592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250621 (n + 1) - (A059111 (n + 1) + A000040 (n + 1))

end

end A250623.P18419721785756339592

namespace A250623

/-- `A250621(n+1)-(A059111(n+1)+A000040(n+1))` -/
def P18419721785756339592.Spec : Prop :=
  ∀ n, P18419721785756339592.a n = A250623 (n + 1)

theorem P18419721785756339592.correct : P18419721785756339592.Spec := by
  intro n
  simp only [A250623, Nat.add_sub_cancel, A250623.P18419721785756339592.a, A250623.P3707548778749929836.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050502, A050502.P8059689843118801007.a, A059111, A059111.P17113221363624731460.a, A250621, A250621.P17073922274883011414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250623

/-! ## A250623.P463880807567291513

`A250622(n+1)-(A064658(n+1)-and(1, A000040(n+1)))`
-/

namespace A250623.P463880807567291513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - (A064658 (n + 1) - Int.land 1 (A000040 (n + 1)))

end

end A250623.P463880807567291513

namespace A250623

/-- `A250622(n+1)-(A064658(n+1)-and(1, A000040(n+1)))` -/
def P463880807567291513.Spec : Prop :=
  ∀ n, P463880807567291513.a n = A250623 (n + 1)

end A250623

/-! ## A250623.P12831024500313552958

`A250622(n+1)-floor(A008578(n+2)-(n+1)*log(n+1))`
-/

namespace A250623.P12831024500313552958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250622 (n + 1) - ⌊(A008578 (n + 2) : ℝ) - (n + 1 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A250623.P12831024500313552958

namespace A250623

/-- `A250622(n+1)-floor(A008578(n+2)-(n+1)*log(n+1))` -/
def P12831024500313552958.Spec : Prop :=
  ∀ n, P12831024500313552958.a n = A250623 (n + 1)

end A250623

/-!
# A250624: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250624, there is no canonical definition to state claims against.
-/

/-! ## A250624.P1821427493287492168

`A250632((n+1)²+n²)`
-/

namespace A250624.P1821427493287492168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 ((n + 1) ^ 2 + n ^ 2)

end

end A250624.P1821427493287492168

/-! ## A250624.P6211189908023356402

`record[A003982(n)*A250632(n+1)]`
-/

namespace A250624.P6211189908023356402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250624.P6211189908023356402

/-! ## A250624.P16932173950626849132

`record[gcd(A250632(n+1), A296339(n))]`
-/

namespace A250624.P16932173950626849132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250632 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250624.P16932173950626849132

/-! ## A250624.P6874006874683311064

`record[root(A250632(n+1), A304337(n+1))]`
-/

namespace A250624.P6874006874683311064
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250632 (n + 1) : ℝ) ^ (1 / (A304337 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250624.P6874006874683311064

/-! ## A250624.P12080531777068152069

`A326542(n)+A250632(A001844(n))`
-/

namespace A250624.P12080531777068152069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326542 n + A250632 (A001844 n).toNat

end

end A250624.P12080531777068152069

/-!
# A250625: Number of (n+1) X (1+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250625, there is no canonical definition to state claims against.
-/

/-! ## A250625.P9232134836314983581

`A250632(∑[n+1])`
-/

namespace A250625.P9232134836314983581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250625.P9232134836314983581

/-! ## A250625.P3666249764413947795

`record[A250632(A257506(n+1))]`
-/

namespace A250625.P3666249764413947795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250625.P3666249764413947795

/-! ## A250625.P11733257200274295663

`record[A250632(n+1)/A038327(n)]`
-/

namespace A250625.P11733257200274295663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250632 (n + 1) : ℚ) / (A038327 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250625.P11733257200274295663

/-! ## A250625.P17051274588561435611

`record[root(A250632(n+1), A130321(n))]`
-/

namespace A250625.P17051274588561435611
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250632 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250625.P17051274588561435611

/-! ## A250625.P12534102810995023091

`record[gcd(A060959(n), A250632(n+1))]`
-/

namespace A250625.P12534102810995023091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060959 n) (A250632 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250625.P12534102810995023091

/-!
# A250626: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250626, there is no canonical definition to state claims against.
-/

/-! ## A250626.P15067055777911058103

`A250632(∑[n+2])`
-/

namespace A250626.P15067055777911058103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250626.P15067055777911058103

/-! ## A250626.P2829672686710194493

`record[A250632(A000096(A106466(n)))]`
-/

namespace A250626.P2829672686710194493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000096 (A106466 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250626.P2829672686710194493

/-! ## A250626.P10413964257030891936

`record[A250632(A117142(A133265(n)))]`
-/

namespace A250626.P10413964257030891936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A117142 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250626.P10413964257030891936

/-! ## A250626.P8771375643246772795

`record[A250632(A000096(A331742(n)))]`
-/

namespace A250626.P8771375643246772795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000096 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250626.P8771375643246772795

/-! ## A250626.P16221919233639184514

`record[A250632(A000096(A344180(n)))]`
-/

namespace A250626.P16221919233639184514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250626.P16221919233639184514

/-!
# A250627: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250627, there is no canonical definition to state claims against.
-/

/-! ## A250627.P12526919354110989820

`A250632(∑[n+3]+1)`
-/

namespace A250627.P12526919354110989820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250627.P12526919354110989820

/-!
# A250628: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250628, there is no canonical definition to state claims against.
-/

/-! ## A250628.P11051999312854291750

`A250632(∑[n+4]+3)`
-/

namespace A250628.P11051999312854291750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250628.P11051999312854291750

/-! ## A250628.P8606156515306357977

`lcm((-1)^n, A250632(A055998(n+2)))`
-/

namespace A250628.P8606156515306357977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A250632 (A055998 (n + 2)).toNat)

end

end A250628.P8606156515306357977

/-! ## A250628.P7002228804606303606

`or(A000038(n), A250632(A055998(n+2)))`
-/

namespace A250628.P7002228804606303606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250632 (A055998 (n + 2)).toNat)

end

end A250628.P7002228804606303606

/-! ## A250628.P17940975770400595812

`A250632(A141214(n+1))%A253795(n+1)`
-/

namespace A250628.P17940975770400595812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250632 (A141214 (n + 1)).toNat) (A253795 (n + 1))

end

end A250628.P17940975770400595812

/-! ## A250628.P8996383148312685047

`A250632(A155212(n)+5)%A250629(n+1)`
-/

namespace A250628.P8996383148312685047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250632 (A155212 n + 5).toNat) (A250629 (n + 1))

end

end A250628.P8996383148312685047

/-!
# A250629: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250629, there is no canonical definition to state claims against.
-/

/-! ## A250629.P1316489300807032519

`A250632(∑[n+5]+6)`
-/

namespace A250629.P1316489300807032519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250629.P1316489300807032519

/-! ## A250629.P16958761009852721041

`A250632(A046691(n+3))+A185284(n)`
-/

namespace A250629.P16958761009852721041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A046691 (n + 3)).toNat + A185284 n

end

end A250629.P16958761009852721041

/-! ## A250629.P14773665572214679517

`A014963(A000217(n+4))*A250632(A046691(n+3))`
-/

namespace A250629.P14773665572214679517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A250632 (A046691 (n + 3)).toNat

end

end A250629.P14773665572214679517

/-! ## A250629.P17602970742413449451

`A014963(A043579(n+1))*A250632(A046691(n+3))`
-/

namespace A250629.P17602970742413449451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A043579 (n + 1)).toNat * A250632 (A046691 (n + 3)).toNat

end

end A250629.P17602970742413449451

/-!
# A250630: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250630, there is no canonical definition to state claims against.
-/

/-! ## A250630.P2693561066772079258

`A250632(A052905(n+3))`
-/

namespace A250630.P2693561066772079258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A052905 (n + 3)).toNat

end

end A250630.P2693561066772079258

/-! ## A250630.P6213006286765540428

`A250632(A055999(n+3)+1)`
-/

namespace A250630.P6213006286765540428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A055999 (n + 3) + 1).toNat

end

end A250630.P6213006286765540428

/-! ## A250630.P6737383842032959145

`A250632(A056000(n+2)+5)`
-/

namespace A250630.P6737383842032959145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A056000 (n + 2) + 5).toNat

end

end A250630.P6737383842032959145

/-! ## A250630.P2334412148849441155

`A250632(Δ[Δ[A006504(n+1)]])`
-/

namespace A250630.P2334412148849441155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (f1 (n + 1) - f1 n).toNat

end

end A250630.P2334412148849441155

/-! ## A250630.P5500265488876539184

`A250632(A000217(n+5)+n+1)`
-/

namespace A250630.P5500265488876539184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A250630.P5500265488876539184

/-!
# A250631: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250631, there is no canonical definition to state claims against.
-/

/-! ## A250631.P8514259857445100550

`A250632(C(n+7, 2)+n+1)`
-/

namespace A250631.P8514259857445100550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (Nat.choose (n + 7) 2 + (n + 1))

end

end A250631.P8514259857445100550

/-! ## A250631.P7356776966305407132

`A250632(A055999(n+4))`
-/

namespace A250631.P7356776966305407132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A055999 (n + 4)).toNat

end

end A250631.P7356776966305407132

/-! ## A250631.P14507869426592668334

`A250632(A046691(n+5)-2)`
-/

namespace A250631.P14507869426592668334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A046691 (n + 5) - 2).toNat

end

end A250631.P14507869426592668334

/-! ## A250631.P7285972984978289791

`A250632(A034856(n+6)-4)`
-/

namespace A250631.P7285972984978289791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A034856 (n + 6) - 4).toNat

end

end A250631.P7285972984978289791

/-! ## A250631.P716402077783009511

`A250632(A000217(n+7)-6)`
-/

namespace A250631.P716402077783009511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000217 (n + 7) - 6).toNat

end

end A250631.P716402077783009511

/-!
# A250633: Number of (1+1) X (n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250633, there is no canonical definition to state claims against.
-/

/-! ## A250633.P16133755939727170012

`A250632(∑[n]+1)`
-/

namespace A250633.P16133755939727170012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250633.P16133755939727170012

/-! ## A250633.P5731947380286034810

`record[A250632(∑[A057979(n)])]`
-/

namespace A250633.P5731947380286034810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250633.P5731947380286034810

/-! ## A250633.P7984785971865696330

`record[A010054(n)*A250632(n+1)]`
-/

namespace A250633.P7984785971865696330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250633.P7984785971865696330

/-! ## A250633.P3648750890778725709

`record[A250632(n+1)/A008288(n)]`
-/

namespace A250633.P3648750890778725709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250632 (n + 1) : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250633.P3648750890778725709

/-! ## A250633.P10349984541692806935

`record[A250632(n+1)/A009998(n)]`
-/

namespace A250633.P10349984541692806935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250632 (n + 1) : ℚ) / (A009998 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250633.P10349984541692806935

/-!
# A250634: Number of (2+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250634, there is no canonical definition to state claims against.
-/

/-! ## A250634.P11158828018732134707

`A250632(∑[n+1]+2)`
-/

namespace A250634.P11158828018732134707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250634.P11158828018732134707

/-! ## A250634.P9535466681110173313

`A250632(A167487(n)-5)+A000007(n+1)`
-/

namespace A250634.P9535466681110173313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167487 n - 5).toNat + A000007 (n + 1)

end

end A250634.P9535466681110173313

/-! ## A250634.P12768715334784535248

`A250632(A167487(n)-5)+A000038(n+1)`
-/

namespace A250634.P12768715334784535248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167487 n - 5).toNat + A000038 (n + 1)

end

end A250634.P12768715334784535248

/-! ## A250634.P6059441481689456301

`A250632(A167487(n)-5)+A000035(2*n)`
-/

namespace A250634.P6059441481689456301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167487 n - 5).toNat + A000035 (2 * n)

end

end A250634.P6059441481689456301

/-! ## A250634.P15679433388621164151

`or(A000007(n), A250632(A152950(n+2)-1))`
-/

namespace A250634.P15679433388621164151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250632 (A152950 (n + 2) - 1).toNat)

end

end A250634.P15679433388621164151

/-!
# A250635: Number of (3+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250635, there is no canonical definition to state claims against.
-/

/-! ## A250635.P6375041483399047241

`A250632(∑[n+2]+4)`
-/

namespace A250635.P6375041483399047241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250635.P6375041483399047241

/-! ## A250635.P12160468580696458986

`or(char[1], A250632(A167614(n+1)))`
-/

namespace A250635.P12160468580696458986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250632 (A167614 (n + 1)).toNat)

end

end A250635.P12160468580696458986

/-! ## A250635.P18365678027289417768

`A250632(A167614(n+1))+A000007(n+1)`
-/

namespace A250635.P18365678027289417768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A250635.P18365678027289417768

/-! ## A250635.P7697190129374548356

`A250632(A167614(n+1))+A000035(2*n)`
-/

namespace A250635.P7697190129374548356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A250635.P7697190129374548356

/-! ## A250635.P14384329471111534447

`A057427(n+1)*A250632(A046691(n)+7)`
-/

namespace A250635.P14384329471111534447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A250632 (A046691 n + 7).toNat

end

end A250635.P14384329471111534447

/-!
# A250636: Number of (4+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250636, there is no canonical definition to state claims against.
-/

/-! ## A250636.P8084391405903138210

`A250632(A145018(n+4))`
-/

namespace A250636.P8084391405903138210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A145018 (n + 4)).toNat

end

end A250636.P8084391405903138210

/-! ## A250636.P6515488626642307325

`A250632(A141214(n)+7)`
-/

namespace A250636.P6515488626642307325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A141214 n + 7).toNat

end

end A250636.P6515488626642307325

/-! ## A250636.P9820634186235837827

`A250632(A055999(n)+10)`
-/

namespace A250636.P9820634186235837827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A055999 n + 10).toNat

end

end A250636.P9820634186235837827

/-! ## A250636.P17943237408764902155

`A250632(A167614(n+2)+1)`
-/

namespace A250636.P17943237408764902155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167614 (n + 2) + 1).toNat

end

end A250636.P17943237408764902155

/-! ## A250636.P4795898850796476296

`A250632(A167487(n+2)-3)`
-/

namespace A250636.P4795898850796476296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167487 (n + 2) - 3).toNat

end

end A250636.P4795898850796476296

/-!
# A250637: Number of (5+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250637, there is no canonical definition to state claims against.
-/

/-! ## A250637.P10251017442282964403

`A250632(A167499(n+3))`
-/

namespace A250637.P10251017442282964403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167499 (n + 3)).toNat

end

end A250637.P10251017442282964403

/-! ## A250637.P11635218600974931829

`A250632(A000124(n+4)+4)`
-/

namespace A250637.P11635218600974931829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000124 (n + 4) + 4).toNat

end

end A250637.P11635218600974931829

/-! ## A250637.P3529914447842695818

`A250632(A000217(n+4)+5)`
-/

namespace A250637.P3529914447842695818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000217 (n + 4) + 5).toNat

end

end A250637.P3529914447842695818

/-! ## A250637.P5783790876057664747

`A250632(A027379(n+2)+8)`
-/

namespace A250637.P5783790876057664747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A027379 (n + 2) + 8).toNat

end

end A250637.P5783790876057664747

/-! ## A250637.P9798603832203984908

`A250632(A055999(n+1)+11)`
-/

namespace A250637.P9798603832203984908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A055999 (n + 1) + 11).toNat

end

end A250637.P9798603832203984908

/-!
# A250638: Number of (6+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250638, there is no canonical definition to state claims against.
-/

/-! ## A250638.P14957336097816491790

`A250632(A167614(n+4)+3)`
-/

namespace A250638.P14957336097816491790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167614 (n + 4) + 3).toNat

end

end A250638.P14957336097816491790

/-! ## A250638.P8804535128482784475

`A250632(A000217(n+5)+6)`
-/

namespace A250638.P8804535128482784475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000217 (n + 5) + 6).toNat

end

end A250638.P8804535128482784475

/-! ## A250638.P9009628156549508212

`A250632(A052905(n+2)+11)`
-/

namespace A250638.P9009628156549508212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A052905 (n + 2) + 11).toNat

end

end A250638.P9009628156549508212

/-! ## A250638.P12142905698841052881

`A250632(7-A080956(n+6))`
-/

namespace A250638.P12142905698841052881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (7 - A080956 (n + 6)).toNat

end

end A250638.P12142905698841052881

/-! ## A250638.P8245064722907703633

`A250632(A002620(n+2)+A002620(n+9))`
-/

namespace A250638.P8245064722907703633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A250638.P8245064722907703633

/-!
# A250639: Number of (7+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250639, there is no canonical definition to state claims against.
-/

/-! ## A250639.P13598581589463443302

`A250632(A167614(n+5)+4)`
-/

namespace A250639.P13598581589463443302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A167614 (n + 5) + 4).toNat

end

end A250639.P13598581589463443302

/-! ## A250639.P4332395025982841253

`A250632(A253145(n+5)+7)`
-/

namespace A250639.P4332395025982841253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A253145 (n + 5) + 7).toNat

end

end A250639.P4332395025982841253

/-! ## A250639.P6165842068229274427

`A250632(A000217(n+6)+7)`
-/

namespace A250639.P6165842068229274427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A000217 (n + 6) + 7).toNat

end

end A250639.P6165842068229274427

/-! ## A250639.P6155598263928222696

`A250632(A161680(n+7)+7)`
-/

namespace A250639.P6155598263928222696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A161680 (n + 7) + 7).toNat

end

end A250639.P6155598263928222696

/-! ## A250639.P16550407307740781098

`A250632(A020719(A000217(n+6)))`
-/

namespace A250639.P16550407307740781098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250632 (A020719 (A000217 (n + 6)).toNat).toNat

end

end A250639.P16550407307740781098

/-!
# A250640: Number of length n+1 0..2 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250640, there is no canonical definition to state claims against.
-/

/-! ## A250640.P372004192906882799

`A250646(∑[n+2])`
-/

namespace A250640.P372004192906882799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250640.P372004192906882799

/-! ## A250640.P1451924757540833124

`record[A250646(gcd(n, A262553(n)))]`
-/

namespace A250640.P1451924757540833124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (Int.gcd (n : ℤ) (A262553 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250640.P1451924757540833124

/-! ## A250640.P4437728724261088508

`A250646(A000096(n+1))+char[23]`
-/

namespace A250640.P4437728724261088508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250640.P4437728724261088508

/-! ## A250640.P6163937301722219769

`record[gcd(A055137(n), A250646(n+1))]`
-/

namespace A250640.P6163937301722219769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055137 n) (A250646 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250640.P6163937301722219769

/-! ## A250640.P193784896279422975

`record[and(A167374(n), A250646(n+1))]`
-/

namespace A250640.P193784896279422975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A250646 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250640.P193784896279422975

/-!
# A250641: Number of length n+1 0..3 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250641, there is no canonical definition to state claims against.
-/

/-! ## A250641.P8512291040434828851

`A250646(∑[n+3]+1)`
-/

namespace A250641.P8512291040434828851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250641.P8512291040434828851

/-! ## A250641.P16206581263059569795

`record[A250646(A198464(n+1))]`
-/

namespace A250641.P16206581263059569795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250641.P16206581263059569795

/-! ## A250641.P12861941115013639516

`record[A250646(gcd(n, A262553(n+1)))]`
-/

namespace A250641.P12861941115013639516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (Int.gcd (n : ℤ) (A262553 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250641.P12861941115013639516

/-! ## A250641.P3498019532878034525

`A250646(A000124(n+3)-3)+char[20]`
-/

namespace A250641.P3498019532878034525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250641.P3498019532878034525

/-! ## A250641.P18382248386491388742

`record[A010054(n+3)*A250646(n+1)]`
-/

namespace A250641.P18382248386491388742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A250646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250641.P18382248386491388742

/-!
# A250642: Number of length n+1 0..4 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250642, there is no canonical definition to state claims against.
-/

/-! ## A250642.P4338060521226382096

`A250646(∑[n+4]+3)`
-/

namespace A250642.P4338060521226382096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250642.P4338060521226382096

/-! ## A250642.P7629196236853820654

`record[A250646(A019304(n))]`
-/

namespace A250642.P7629196236853820654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250642.P7629196236853820654

/-! ## A250642.P5485500749439002084

`A250646(A000124(n+4)-4)+char[23]`
-/

namespace A250642.P5485500749439002084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000124 (n + 4) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250642.P5485500749439002084

/-! ## A250642.P4935146177765166249

`A250646(A027379(n+2))+n%-1`
-/

namespace A250642.P4935146177765166249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A027379 (n + 2)).toNat + Int.tmod (n : ℤ) (-1)

end

end A250642.P4935146177765166249

/-! ## A250642.P14297908960805170839

`A250646(A027379(n+2))+char[A000040(n+8)]`
-/

namespace A250642.P14297908960805170839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A250642.P14297908960805170839

/-!
# A250643: Number of length n+1 0..5 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250643, there is no canonical definition to state claims against.
-/

/-! ## A250643.P6492997632388709949

`A250646(∑[n+5]+6)`
-/

namespace A250643.P6492997632388709949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250643.P6492997632388709949

/-! ## A250643.P15188762975541900173

`gcd(A185284(n+2), A250646(A046691(n+3)))`
-/

namespace A250643.P15188762975541900173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (n + 2)) (A250646 (A046691 (n + 3)).toNat)

end

end A250643.P15188762975541900173

/-! ## A250643.P2999814117321722556

`A250646(Δ[A023545(n+1)])%A250638(n+1)`
-/

namespace A250643.P2999814117321722556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250646 (f1 (n + 1) - f1 n).toNat) (A250638 (n + 1))

end

end A250643.P2999814117321722556

/-!
# A250644: Number of length n+1 0..6 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250644, there is no canonical definition to state claims against.
-/

/-! ## A250644.P15405711045227265310

`A250646(A052905(n+3))`
-/

namespace A250644.P15405711045227265310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A052905 (n + 3)).toNat

end

end A250644.P15405711045227265310

/-! ## A250644.P4895223730556329828

`A250646(A056119(n)+16)`
-/

namespace A250644.P4895223730556329828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A056119 n + 16).toNat

end

end A250644.P4895223730556329828

/-! ## A250644.P17737288474124313009

`A250646(eq[3, A219347(n)])`
-/

namespace A250644.P17737288474124313009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250644.P17737288474124313009

/-! ## A250644.P15469608057489881891

`A250646(eq[5, A152157(n)])`
-/

namespace A250644.P15469608057489881891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250644.P15469608057489881891

/-! ## A250644.P12527677461157381821

`A250646(eq[5, A193592(n)])`
-/

namespace A250644.P12527677461157381821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250644.P12527677461157381821

/-!
# A250645: Number of length n+1 0..7 arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250645, there is no canonical definition to state claims against.
-/

/-! ## A250645.P11380458938168793690

`A250646(A055999(n+4))`
-/

namespace A250645.P11380458938168793690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A055999 (n + 4)).toNat

end

end A250645.P11380458938168793690

/-! ## A250645.P4145473513494084145

`A250646(eq[4, A219347(n)])`
-/

namespace A250645.P4145473513494084145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250645.P4145473513494084145

/-! ## A250645.P17104305684157430949

`A250646(eq[6, A193592(n)])`
-/

namespace A250645.P17104305684157430949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250645.P17104305684157430949

/-! ## A250645.P10750391575279199092

`A250646(eq[7, A152157(n)])`
-/

namespace A250645.P10750391575279199092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250645.P10750391575279199092

/-! ## A250645.P16340339715677663873

`A250646(Δ[A023551(n+2)])`
-/

namespace A250645.P16340339715677663873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (f1 (n + 1) - f1 n).toNat

end

end A250645.P16340339715677663873

/-!
# A250647: Number of length 3+1 0..n arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250647, there is no canonical definition to state claims against.
-/

/-! ## A250647.P11488661799959492549

`record[A250646(∑[n]+3)]`
-/

namespace A250647.P11488661799959492549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250647.P11488661799959492549

/-! ## A250647.P2649158508951873319

`A250646(∑[n+2]+4)`
-/

namespace A250647.P2649158508951873319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250647.P2649158508951873319

/-! ## A250647.P11719403399426606894

`or(char[1], A250646(A167614(n+1)))`
-/

namespace A250647.P11719403399426606894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250646 (A167614 (n + 1)).toNat)

end

end A250647.P11719403399426606894

/-! ## A250647.P5484009760549365433

`record[A010054(n)*A250646(n+3)]`
-/

namespace A250647.P5484009760549365433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250647.P5484009760549365433

/-! ## A250647.P10695135830569248305

`record[A250646(n+3)/A250646(n+1)]`
-/

namespace A250647.P10695135830569248305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250646 (n + 3) : ℚ) / (A250646 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250647.P10695135830569248305

/-!
# A250648: Number of length 4+1 0..n arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250648, there is no canonical definition to state claims against.
-/

/-! ## A250648.P11093729167819462041

`A250646(∑[n+3]+7)`
-/

namespace A250648.P11093729167819462041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250648.P11093729167819462041

/-! ## A250648.P1544459409366571732

`A250646(A000217(n+3)+4)+char[20]`
-/

namespace A250648.P1544459409366571732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250648.P1544459409366571732

/-! ## A250648.P11386082049680950503

`A335520(n+1)+A250646(A052905(n)+9)`
-/

namespace A250648.P11386082049680950503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A250646 (A052905 n + 9).toNat

end

end A250648.P11386082049680950503

/-! ## A250648.P14785741329253544836

`A000041(C(n, n²))*A250646(A000217(n+3)+4)`
-/

namespace A250648.P14785741329253544836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A250646 (A000217 (n + 3) + 4).toNat

end

end A250648.P14785741329253544836

/-! ## A250648.P8267114914084578504

`A007318(and(3, 2-n))*A250646(A000217(n+3)+4)`
-/

namespace A250648.P8267114914084578504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A250646 (A000217 (n + 3) + 4).toNat

end

end A250648.P8267114914084578504

/-!
# A250649: Number of length 5+1 0..n arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250649, there is no canonical definition to state claims against.
-/

/-! ## A250649.P8952768826732919876

`A250646(∑[n+6]+9-2*n)`
-/

namespace A250649.P8952768826732919876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 9 - 2 * n)

end

end A250649.P8952768826732919876

/-!
# A250650: Number of length 6+1 0..n arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250650, there is no canonical definition to state claims against.
-/

/-! ## A250650.P1718092155953264357

`A250646(∑[n+5]+16)`
-/

namespace A250650.P1718092155953264357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250650.P1718092155953264357

/-! ## A250650.P1271270601259266331

`A250646(A167614(n+4)+3)+char[18]`
-/

namespace A250650.P1271270601259266331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A167614 (n + 4) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250650.P1271270601259266331

/-! ## A250650.P4110872593906716865

`or(char[1], A250646(A000217(n+5)+6))`
-/

namespace A250650.P4110872593906716865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A250646 (A000217 (n + 5) + 6).toNat)

end

end A250650.P4110872593906716865

/-! ## A250650.P12483487382092306982

`(A000041(n)%2)!*A250646(A167614(n+4)+3)`
-/

namespace A250650.P12483487382092306982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A250646 (A167614 (n + 4) + 3).toNat

end

end A250650.P12483487382092306982

/-! ## A250650.P3093043162698142027

`A250646(A000217(n+5)+6)+A008683(8*n+4)`
-/

namespace A250650.P3093043162698142027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000217 (n + 5) + 6).toNat + A008683 (8 * n + 4)

end

end A250650.P3093043162698142027

/-!
# A250651: Number of length 7+1 0..n arrays with the sum of the maximum of each adjacent pair multiplied by some arrangement of +-1 equal to zero.

The programs for A250651, there is no canonical definition to state claims against.
-/

/-! ## A250651.P14436990235196666388

`A250646(A167614(n+5)+4)`
-/

namespace A250651.P14436990235196666388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A167614 (n + 5) + 4).toNat

end

end A250651.P14436990235196666388

/-! ## A250651.P2037154433239667417

`A250646(A145018(n+7)+3)`
-/

namespace A250651.P2037154433239667417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A145018 (n + 7) + 3).toNat

end

end A250651.P2037154433239667417

/-! ## A250651.P11282691310291979523

`A250646(A133263(n+6)+5)`
-/

namespace A250651.P11282691310291979523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A133263 (n + 6) + 5).toNat

end

end A250651.P11282691310291979523

/-! ## A250651.P17628651169692427678

`A250646(A000124(n+6)+6)`
-/

namespace A250651.P17628651169692427678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000124 (n + 6) + 6).toNat

end

end A250651.P17628651169692427678

/-! ## A250651.P10636514446107088787

`A250646(A000217(n+6)+7)`
-/

namespace A250651.P10636514446107088787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250646 (A000217 (n + 6) + 7).toNat

end

end A250651.P10636514446107088787

/-!
# A250652: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250652, the canonical program `A250652.P6248837234100144830` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250652 has offset 1).

The definition of A250652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250652.P6248837234100144830

`(n+2)*A047859(n+1)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A250652

/-- `(n+2)*A047859(n+1)+1` -/
def P6248837234100144830.Spec : Prop :=
  ∀ n, P6248837234100144830.a n = A250652 (n + 1)

theorem P6248837234100144830.correct : P6248837234100144830.Spec := by
  intro n
  simp only [A250652, Nat.add_sub_cancel]

end A250652

/-! ## A250652.P14531317781675581363

`2*A001793(n+2)-(n+1)`
-/

namespace A250652.P14531317781675581363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001793 (n + 2) - (n + 1 : ℤ)

end

end A250652.P14531317781675581363

namespace A250652

/-- `2*A001793(n+2)-(n+1)` -/
def P14531317781675581363.Spec : Prop :=
  ∀ n, P14531317781675581363.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P11788519098086618907

`(n+2)*A045623(n+2)-(n+1)`
-/

namespace A250652.P11788519098086618907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A045623 (n + 2) - (n + 1 : ℤ)

end

end A250652.P11788519098086618907

namespace A250652

/-- `(n+2)*A045623(n+2)-(n+1)` -/
def P11788519098086618907.Spec : Prop :=
  ∀ n, P11788519098086618907.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P11598969239040863012

`Δ[A001815(n+2)-∑[n]]`
-/

namespace A250652.P11598969239040863012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250652.P11598969239040863012

namespace A250652

/-- `Δ[A001815(n+2)-∑[n]]` -/
def P11598969239040863012.Spec : Prop :=
  ∀ n, P11598969239040863012.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P12599926629829035841

`Δ[record[A001815(n)-n]]-n`
-/

namespace A250652.P12599926629829035841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A250652.P12599926629829035841

namespace A250652

/-- `Δ[record[A001815(n)-n]]-n` -/
def P12599926629829035841.Spec : Prop :=
  ∀ n, P12599926629829035841.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P12335246776356704829

`Δ[A048482(n+1)]-(n+1)`
-/

namespace A250652.P12335246776356704829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A250652.P12335246776356704829

namespace A250652

/-- `Δ[A048482(n+1)]-(n+1)` -/
def P12335246776356704829.Spec : Prop :=
  ∀ n, P12335246776356704829.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P7822763208481248395

`Δ[A003013(n+2)]-(n+2)`
-/

namespace A250652.P7822763208481248395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A250652.P7822763208481248395

namespace A250652

/-- `Δ[A003013(n+2)]-(n+2)` -/
def P7822763208481248395.Spec : Prop :=
  ∀ n, P7822763208481248395.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P12645512442076495786

`Δ[A002999(n+2)]-(n+3)`
-/

namespace A250652.P12645512442076495786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A250652.P12645512442076495786

namespace A250652

/-- `Δ[A002999(n+2)]-(n+3)` -/
def P12645512442076495786.Spec : Prop :=
  ∀ n, P12645512442076495786.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P12976559033208550200

`Δ[∑[n+1]*∑[A000079(n)]]+1`
-/

namespace A250652.P12976559033208550200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A250652.P12976559033208550200

namespace A250652

/-- `Δ[∑[n+1]*∑[A000079(n)]]+1` -/
def P12976559033208550200.Spec : Prop :=
  ∀ n, P12976559033208550200.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P18424676869023447913

`Δ[∑[n+1]*A000225(n+1)]+1`
-/

namespace A250652.P18424676869023447913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A250652.P18424676869023447913

namespace A250652

/-- `Δ[∑[n+1]*A000225(n+1)]+1` -/
def P18424676869023447913.Spec : Prop :=
  ∀ n, P18424676869023447913.a n = A250652 (n + 1)

end A250652

/-! ## A250652.P5711585958715818221

`A048482(n+2)-A003013(n+2)`
-/

namespace A250652.P5711585958715818221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048482 (n + 2) - A003013 (n + 2)

end

end A250652.P5711585958715818221

namespace A250652

/-- `A048482(n+2)-A003013(n+2)` -/
def P5711585958715818221.Spec : Prop :=
  ∀ n, P5711585958715818221.a n = A250652 (n + 1)

end A250652

/-!
# A250653: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250653, the canonical program `A250653.P4457879166048305078` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250653 has offset 1).

The definition of A250653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250653.P4457879166048305078

`6*9*2^n-5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250653

/-- `6*9*2^n-5` -/
def P4457879166048305078.Spec : Prop :=
  ∀ n, P4457879166048305078.a n = A250653 (n + 1)

theorem P4457879166048305078.correct : P4457879166048305078.Spec := by
  intro n
  simp only [A250653, Nat.add_sub_cancel]

end A250653

/-! ## A250653.P10164941137968218077

`abs(2*a(n-1)+5)` with `a(0)=49`
-/

namespace A250653.P10164941137968218077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [49] fun n a =>
  2 * a (n - 1) + 5

end

end A250653.P10164941137968218077

namespace A250653

/-- `abs(2*a(n-1)+5)` -/
def P10164941137968218077.Spec : Prop :=
  ∀ n, (P10164941137968218077.a n : ℤ) = A250653 (n + 1)

theorem P10164941137968218077.correct : P10164941137968218077.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250653, Nat.add_sub_cancel, A250653.P10164941137968218077.a, A250653.P4457879166048305078.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250653, Nat.add_sub_cancel, A250653.P10164941137968218077.a, A250653.P4457879166048305078.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250653

/-! ## A250653.P13532823737126912441

`∑[record[2*a(n-1)]]` with `a(0)=49, a(1)=27`
-/

namespace A250653.P13532823737126912441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [49, 27] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250653.P13532823737126912441

namespace A250653

/-- `∑[record[2*a(n-1)]]` -/
def P13532823737126912441.Spec : Prop :=
  ∀ n, (P13532823737126912441.a n : ℤ) = A250653 (n + 1)

end A250653

/-! ## A250653.P17119735204665179120

`A304387(n+1)`
-/

namespace A250653.P17119735204665179120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304387 (n + 1)

end

end A250653.P17119735204665179120

namespace A250653

/-- `A304387(n+1)` -/
def P17119735204665179120.Spec : Prop :=
  ∀ n, P17119735204665179120.a n = A250653 (n + 1)

theorem P17119735204665179120.correct : P17119735204665179120.Spec := by
  intro n
  simp only [A250653, Nat.add_sub_cancel, A250653.P17119735204665179120.a, A250653.P4457879166048305078.a, A304387, A304387.P6746975513748740161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250653

/-! ## A250653.P17593587361014239060

`or(1, A182467(n)+12)`
-/

namespace A250653.P17593587361014239060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A182467 n + 12)

end

end A250653.P17593587361014239060

namespace A250653

/-- `or(1, A182467(n)+12)` -/
def P17593587361014239060.Spec : Prop :=
  ∀ n, P17593587361014239060.a n = A250653 (n + 1)

end A250653

/-! ## A250653.P9722887531878665600

`record[A304387(abs(1-n))]`
-/

namespace A250653.P9722887531878665600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304387 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250653.P9722887531878665600

namespace A250653

/-- `record[A304387(abs(1-n))]` -/
def P9722887531878665600.Spec : Prop :=
  ∀ n, P9722887531878665600.a n = A250653 (n + 1)

end A250653

/-! ## A250653.P3262204184174845221

`Δ[A182467(n)-A016885(n)]`
-/

namespace A250653.P3262204184174845221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182467 n - A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250653.P3262204184174845221

namespace A250653

/-- `Δ[A182467(n)-A016885(n)]` -/
def P3262204184174845221.Spec : Prop :=
  ∀ n, P3262204184174845221.a n = A250653 (n + 1)

end A250653

/-! ## A250653.P18410215867019683248

`ceil((18*(A134067(n+1)+A000225(n)+2)+1)/3)`
-/

namespace A250653.P18410215867019683248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(18 * (A134067 (n + 1) + A000225 n + 2) + 1 : ℚ) / 3⌉

end

end A250653.P18410215867019683248

namespace A250653

/-- `ceil((18*(A134067(n+1)+A000225(n)+2)+1)/3)` -/
def P18410215867019683248.Spec : Prop :=
  ∀ n, P18410215867019683248.a n = A250653 (n + 1)

end A250653

/-!
# A250654: Number of (n+1) X (6+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250654, the canonical program `A250654.P2885090058342799525` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250654 has offset 1).

The definition of A250654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250654.P2885090058342799525

`70*2^n-6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250654

/-- `70*2^n-6` -/
def P2885090058342799525.Spec : Prop :=
  ∀ n, P2885090058342799525.a n = A250654 (n + 1)

theorem P2885090058342799525.correct : P2885090058342799525.Spec := by
  intro n
  simp only [A250654, Nat.add_sub_cancel]

end A250654

/-! ## A250654.P584137160359031741

`2*(a(n-1)+3)` with `a(0)=64`
-/

namespace A250654.P584137160359031741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  2 * (a (n - 1) + 3)

end

end A250654.P584137160359031741

namespace A250654

/-- `2*(a(n-1)+3)` -/
def P584137160359031741.Spec : Prop :=
  ∀ n, (P584137160359031741.a n : ℤ) = A250654 (n + 1)

theorem P584137160359031741.correct : P584137160359031741.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A250654, Nat.add_sub_cancel, A250654.P584137160359031741.a, A250654.P2885090058342799525.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A250654, Nat.add_sub_cancel, A250654.P584137160359031741.a, A250654.P2885090058342799525.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A250654

/-! ## A250654.P18371251137808449777

`lcm(2, a(n-1)+3)` with `a(0)=64`
-/

namespace A250654.P18371251137808449777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  Nat.lcm 2 (a (n - 1) + 3)

end

end A250654.P18371251137808449777

namespace A250654

/-- `lcm(2, a(n-1)+3)` -/
def P18371251137808449777.Spec : Prop :=
  ∀ n, (P18371251137808449777.a n : ℤ) = A250654 (n + 1)

end A250654

/-! ## A250654.P5040610150837580153

`(A304383(n+1)-A048578(n))%A304376(n+1)`
-/

namespace A250654.P5040610150837580153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304383 (n + 1) - A048578 n) (A304376 (n + 1))

end

end A250654.P5040610150837580153

namespace A250654

/-- `(A304383(n+1)-A048578(n))%A304376(n+1)` -/
def P5040610150837580153.Spec : Prop :=
  ∀ n, P5040610150837580153.a n = A250654 (n + 1)

end A250654

/-! ## A250654.P593441534300376776

`Δ[A059140(n+2)+A059140(n)]`
-/

namespace A250654.P593441534300376776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059140 (n + 2) + A059140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250654.P593441534300376776

namespace A250654

/-- `Δ[A059140(n+2)+A059140(n)]` -/
def P593441534300376776.Spec : Prop :=
  ∀ n, P593441534300376776.a n = A250654 (n + 1)

end A250654

/-!
# A250655: Number of (n+1) X (7+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250655, the canonical program `A250655.P9668757011835179204` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250655 has offset 1).

The definition of A250655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250655.P9668757011835179204

`∑[44*2^n]+37`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250655

/-- `∑[44*2^n]+37` -/
def P9668757011835179204.Spec : Prop :=
  ∀ n, (P9668757011835179204.a n : ℤ) = A250655 (n + 1)

theorem P9668757011835179204.correct : P9668757011835179204.Spec := by
  intro n
  simp only [A250655, Nat.add_sub_cancel]

end A250655

/-! ## A250655.P2303912999929470380

`xor(6, A086225(n+3))`
-/

namespace A250655.P2303912999929470380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A086225 (n + 3))

end

end A250655.P2303912999929470380

namespace A250655

/-- `xor(6, A086225(n+3))` -/
def P2303912999929470380.Spec : Prop :=
  ∀ n, P2303912999929470380.a n = A250655 (n + 1)

end A250655

/-! ## A250655.P12453731912795599122

`or(1, 8*A086225(n))`
-/

namespace A250655.P12453731912795599122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (8 * A086225 n)

end

end A250655.P12453731912795599122

namespace A250655

/-- `or(1, 8*A086225(n))` -/
def P12453731912795599122.Spec : Prop :=
  ∀ n, P12453731912795599122.a n = A250655 (n + 1)

end A250655

/-! ## A250655.P3876425590704515833

`or(1, A099944(n+3)+4)`
-/

namespace A250655.P3876425590704515833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099944 (n + 3) + 4)

end

end A250655.P3876425590704515833

namespace A250655

/-- `or(1, A099944(n+3)+4)` -/
def P3876425590704515833.Spec : Prop :=
  ∀ n, P3876425590704515833.a n = A250655 (n + 1)

end A250655

/-! ## A250655.P9995340047773746192

`xor(1, A139635(n+4)+2)`
-/

namespace A250655.P9995340047773746192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A139635 (n + 4) + 2)

end

end A250655.P9995340047773746192

namespace A250655

/-- `xor(1, A139635(n+4)+2)` -/
def P9995340047773746192.Spec : Prop :=
  ∀ n, P9995340047773746192.a n = A250655 (n + 1)

end A250655

/-!
# A250657: Number of (3+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250657, the canonical program `A250657.P17179254391650021029` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250657 has offset 1).

The definition of A250657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250657.P17179254391650021029

`∑[8*n+23]+16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250657

/-- `∑[8*n+23]+16` -/
def P17179254391650021029.Spec : Prop :=
  ∀ n, (P17179254391650021029.a n : ℤ) = A250657 (n + 1)

theorem P17179254391650021029.correct : P17179254391650021029.Spec := by
  intro n
  simp only [A250657, Nat.add_sub_cancel]

end A250657

/-! ## A250657.P12815985571992381552

`∑[a(n-1)+8]` with `a(0)=39, a(1)=31`
-/

namespace A250657.P12815985571992381552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [39, 31] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250657.P12815985571992381552

namespace A250657

/-- `∑[a(n-1)+8]` -/
def P12815985571992381552.Spec : Prop :=
  ∀ n, (P12815985571992381552.a n : ℤ) = A250657 (n + 1)

end A250657

/-! ## A250657.P6041057332672748054

`abs(2-∑[a(n-1)-8])` with `a(0)=-37, a(1)=-31`
-/

namespace A250657.P6041057332672748054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-37, -31] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A250657.P6041057332672748054

namespace A250657

/-- `abs(2-∑[a(n-1)-8])` -/
def P6041057332672748054.Spec : Prop :=
  ∀ n, P6041057332672748054.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P11634458247600648783

`∑[2*a(n-1)-a(n-2)]` with `a(0)=39, a(1)=31, a(2)=39`
-/

namespace A250657.P11634458247600648783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [39, 31, 39] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250657.P11634458247600648783

namespace A250657

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P11634458247600648783.Spec : Prop :=
  ∀ n, P11634458247600648783.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P7192469537012886912

`floor(a(n-1)+a(n-1)+8-a(n-2))` with `a(0)=39, a(1)=70`

`floor` is left out, it is the identity on integers.
-/

namespace A250657.P7192469537012886912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [39, 70] fun n a =>
  a (n - 1) + (a (n - 1) + (8 - a (n - 2)))

end

end A250657.P7192469537012886912

namespace A250657

/-- `floor(a(n-1)+a(n-1)+8-a(n-2))` -/
def P7192469537012886912.Spec : Prop :=
  ∀ n, P7192469537012886912.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P2351609993173145905

`(A250658(n+1)-(n+1))/2`
-/

namespace A250657.P2351609993173145905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250658 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A250657.P2351609993173145905

namespace A250657

/-- `(A250658(n+1)-(n+1))/2` -/
def P2351609993173145905.Spec : Prop :=
  ∀ n, P2351609993173145905.a n = (A250657 (n + 1) : ℚ)

end A250657

/-! ## A250657.P3021781071338881540

`abs(8*(A055999(n)+1)+31-n)`
-/

namespace A250657.P3021781071338881540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * (A055999 n + 1) + 31 - (n : ℤ)|

end

end A250657.P3021781071338881540

namespace A250657

/-- `abs(8*(A055999(n)+1)+31-n)` -/
def P3021781071338881540.Spec : Prop :=
  ∀ n, P3021781071338881540.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P13579115489916139762

`∑[Δ[A005818(n+1)²]-1]`
-/

namespace A250657.P13579115489916139762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250657.P13579115489916139762

namespace A250657

/-- `∑[Δ[A005818(n+1)²]-1]` -/
def P13579115489916139762.Spec : Prop :=
  ∀ n, P13579115489916139762.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P3438589824679047461

`abs(6-A033954(n+3))`
-/

namespace A250657.P3438589824679047461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A033954 (n + 3)|

end

end A250657.P3438589824679047461

namespace A250657

/-- `abs(6-A033954(n+3))` -/
def P3438589824679047461.Spec : Prop :=
  ∀ n, P3438589824679047461.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P3857056568453475043

`abs(7-A033951(n+3))`
-/

namespace A250657.P3857056568453475043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A033951 (n + 3)|

end

end A250657.P3857056568453475043

namespace A250657

/-- `abs(7-A033951(n+3))` -/
def P3857056568453475043.Spec : Prop :=
  ∀ n, P3857056568453475043.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P17608863483464831078

`floor((A033587(n+3)-11)/2)`
-/

namespace A250657.P17608863483464831078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033587 (n + 3) - 11 : ℚ) / 2⌋

end

end A250657.P17608863483464831078

namespace A250657

/-- `floor((A033587(n+3)-11)/2)` -/
def P17608863483464831078.Spec : Prop :=
  ∀ n, P17608863483464831078.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P16393272474628291789

`abs(Δ[A055831(2*n+5)]-n)`
-/

namespace A250657.P16393272474628291789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n : ℤ)|

end

end A250657.P16393272474628291789

namespace A250657

/-- `abs(Δ[A055831(2*n+5)]-n)` -/
def P16393272474628291789.Spec : Prop :=
  ∀ n, P16393272474628291789.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P559365839058047229

`abs(xor(2, Δ[A023551(2*n+1)])-n)`
-/

namespace A250657.P559365839058047229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (f1 (n + 1) - f1 n) - (n : ℤ)|

end

end A250657.P559365839058047229

namespace A250657

/-- `abs(xor(2, Δ[A023551(2*n+1)])-n)` -/
def P559365839058047229.Spec : Prop :=
  ∀ n, P559365839058047229.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P9902177198389569964

`Δ[A023545(2*(n+1))-A000096(n)]`
-/

namespace A250657.P9902177198389569964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (2 * (n + 1)) - A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250657.P9902177198389569964

namespace A250657

/-- `Δ[A023545(2*(n+1))-A000096(n)]` -/
def P9902177198389569964.Spec : Prop :=
  ∀ n, P9902177198389569964.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P1890448806043171507

`Δ[A264443(2*n+1)-A167499(n)]`
-/

namespace A250657.P1890448806043171507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (2 * n + 1) - A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250657.P1890448806043171507

namespace A250657

/-- `Δ[A264443(2*n+1)-A167499(n)]` -/
def P1890448806043171507.Spec : Prop :=
  ∀ n, P1890448806043171507.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P7939488368841644073

`abs(A165717(2*n+5)-5)`
-/

namespace A250657.P7939488368841644073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165717 (2 * n + 5) - 5|

end

end A250657.P7939488368841644073

namespace A250657

/-- `abs(A165717(2*n+5)-5)` -/
def P7939488368841644073.Spec : Prop :=
  ∀ n, P7939488368841644073.a n = A250657 (n + 1)

end A250657

/-! ## A250657.P17092720185788849147

`Δ[A034857(2*n+3)-A052905(n)]`
-/

namespace A250657.P17092720185788849147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (2 * n + 3) - A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250657.P17092720185788849147

namespace A250657

/-- `Δ[A034857(2*n+3)-A052905(n)]` -/
def P17092720185788849147.Spec : Prop :=
  ∀ n, P17092720185788849147.a n = A250657 (n + 1)

end A250657

/-!
# A250658: Number of (4+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250658, the canonical program `A250658.P8137009109840460398` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250658 has offset 1).

The definition of A250658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250658.P8137009109840460398

`16*(∑[n+3]+2)-(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250658

/-- `16*(∑[n+3]+2)-(n+1)` -/
def P8137009109840460398.Spec : Prop :=
  ∀ n, P8137009109840460398.a n = A250658 (n + 1)

theorem P8137009109840460398.correct : P8137009109840460398.Spec := by
  intro n
  simp only [A250658, Nat.add_sub_cancel]

end A250658

/-! ## A250658.P6162376032423455966

`(A250659(n+1)-(n+1))/2`
-/

namespace A250658.P6162376032423455966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250659 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A250658.P6162376032423455966

namespace A250658

/-- `(A250659(n+1)-(n+1))/2` -/
def P6162376032423455966.Spec : Prop :=
  ∀ n, P6162376032423455966.a n = (A250658 (n + 1) : ℚ)

end A250658

/-! ## A250658.P11831245743622602876

`abs(A033587(n+3)-11+n)`
-/

namespace A250658.P11831245743622602876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033587 (n + 3) - 11 + (n : ℤ)|

end

end A250658.P11831245743622602876

namespace A250658

/-- `abs(A033587(n+3)-11+n)` -/
def P11831245743622602876.Spec : Prop :=
  ∀ n, P11831245743622602876.a n = A250658 (n + 1)

end A250658

/-! ## A250658.P17953763738702858700

`Δ[∑[A051938(4*n+9)]+∑[n+5]]`
-/

namespace A250658.P17953763738702858700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051938 (4 * n + 9)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250658.P17953763738702858700

namespace A250658

/-- `Δ[∑[A051938(4*n+9)]+∑[n+5]]` -/
def P17953763738702858700.Spec : Prop :=
  ∀ n, P17953763738702858700.a n = A250658 (n + 1)

end A250658

/-! ## A250658.P3664385484537178873

`∑[A004767(A004767(abs(1-n)+3))]`
-/

namespace A250658.P3664385484537178873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A004767 (|1 - (n : ℤ)| + 3).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250658.P3664385484537178873

namespace A250658

/-- `∑[A004767(A004767(abs(1-n)+3))]` -/
def P3664385484537178873.Spec : Prop :=
  ∀ n, P3664385484537178873.a n = A250658 (n + 1)

end A250658

/-! ## A250658.P18407653692925142509

`∑[A004273(Δ[A005818(n+1)²])]`
-/

namespace A250658.P18407653692925142509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250658.P18407653692925142509

namespace A250658

/-- `∑[A004273(Δ[A005818(n+1)²])]` -/
def P18407653692925142509.Spec : Prop :=
  ∀ n, P18407653692925142509.a n = A250658 (n + 1)

end A250658

/-!
# A250659: Number of (5+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250659, the canonical program `A250659.P11616762239667173287` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250659 has offset 1).

The definition of A250659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250659.P11616762239667173287

`(n+2)*16*(n+5)-(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250659

/-- `(n+2)*16*(n+5)-(n+1)` -/
def P11616762239667173287.Spec : Prop :=
  ∀ n, P11616762239667173287.a n = A250659 (n + 1)

theorem P11616762239667173287.correct : P11616762239667173287.Spec := by
  intro n
  simp only [A250659, Nat.add_sub_cancel]

end A250659

/-! ## A250659.P6401635341054794270

`(A250660(n+1)-(n+1))/2`
-/

namespace A250659.P6401635341054794270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250660 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A250659.P6401635341054794270

namespace A250659

/-- `(A250660(n+1)-(n+1))/2` -/
def P6401635341054794270.Spec : Prop :=
  ∀ n, P6401635341054794270.a n = (A250659 (n + 1) : ℚ)

theorem P6401635341054794270.correct : P6401635341054794270.Spec := by
  intro n
  simp only [A250659, Nat.add_sub_cancel, A250659.P6401635341054794270.a, A250659.P11616762239667173287.a, A250660, A250660.P17604842828783188897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250659

/-! ## A250659.P16415700298615505254

`abs(Δ[32*A005286(n)]-(n+1))`
-/

namespace A250659.P16415700298615505254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n + 1 : ℤ)|

end

end A250659.P16415700298615505254

namespace A250659

/-- `abs(Δ[32*A005286(n)]-(n+1))` -/
def P16415700298615505254.Spec : Prop :=
  ∀ n, P16415700298615505254.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P12000853635720677675

`abs(32*A000096(n+2)-(n+1))`
-/

namespace A250659.P12000853635720677675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |32 * A000096 (n + 2) - (n + 1 : ℤ)|

end

end A250659.P12000853635720677675

namespace A250659

/-- `abs(32*A000096(n+2)-(n+1))` -/
def P12000853635720677675.Spec : Prop :=
  ∀ n, P12000853635720677675.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P4055909958156410949

`Δ[32*A005286(n)-A000124(n)]`
-/

namespace A250659.P4055909958156410949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A005286 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250659.P4055909958156410949

namespace A250659

/-- `Δ[32*A005286(n)-A000124(n)]` -/
def P4055909958156410949.Spec : Prop :=
  ∀ n, P4055909958156410949.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P18405361643111702702

`Δ[32*A005286(n)-A000217(n)]`
-/

namespace A250659.P18405361643111702702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A005286 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250659.P18405361643111702702

namespace A250659

/-- `Δ[32*A005286(n)-A000217(n)]` -/
def P18405361643111702702.Spec : Prop :=
  ∀ n, P18405361643111702702.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P538093913070155263

`Δ[32*A005586(n)-A000124(n)]`
-/

namespace A250659.P538093913070155263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A005586 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250659.P538093913070155263

namespace A250659

/-- `Δ[32*A005586(n)-A000124(n)]` -/
def P538093913070155263.Spec : Prop :=
  ∀ n, P538093913070155263.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P16082077646588054087

`Δ[32*A005586(n)-A000217(n)]`
-/

namespace A250659.P16082077646588054087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A005586 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250659.P16082077646588054087

namespace A250659

/-- `Δ[32*A005586(n)-A000217(n)]` -/
def P16082077646588054087.Spec : Prop :=
  ∀ n, P16082077646588054087.a n = A250659 (n + 1)

end A250659

/-! ## A250659.P5207316936618622988

`∑[A047524(Δ[A005818(n+1)²])]`
-/

namespace A250659.P5207316936618622988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250659.P5207316936618622988

namespace A250659

/-- `∑[A047524(Δ[A005818(n+1)²])]` -/
def P5207316936618622988.Spec : Prop :=
  ∀ n, P5207316936618622988.a n = A250659 (n + 1)

end A250659

/-!
# A250660: Number of (6+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250660, the canonical program `A250660.P17604842828783188897` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250660 has offset 1).

The definition of A250660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250660.P17604842828783188897

`31*(n+1)+32*(n+3)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250660

/-- `31*(n+1)+32*(n+3)²` -/
def P17604842828783188897.Spec : Prop :=
  ∀ n, (P17604842828783188897.a n : ℤ) = A250660 (n + 1)

theorem P17604842828783188897.correct : P17604842828783188897.Spec := by
  intro n
  simp only [A250660, Nat.add_sub_cancel]

end A250660

/-! ## A250660.P8407692231289852577

`(A250661(n+1)-(n+1))/2`
-/

namespace A250660.P8407692231289852577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250661 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A250660.P8407692231289852577

namespace A250660

/-- `(A250661(n+1)-(n+1))/2` -/
def P8407692231289852577.Spec : Prop :=
  ∀ n, P8407692231289852577.a n = (A250660 (n + 1) : ℚ)

theorem P8407692231289852577.correct : P8407692231289852577.Spec := by
  intro n
  simp only [A250660, Nat.add_sub_cancel, A250660.P8407692231289852577.a, A250660.P17604842828783188897.a, A250661, A250661.P9770252859539275233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A250660

/-! ## A250660.P17378549237770191057

`Δ[64*A005286(n)-A000124(n)]`
-/

namespace A250660.P17378549237770191057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005286 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250660.P17378549237770191057

namespace A250660

/-- `Δ[64*A005286(n)-A000124(n)]` -/
def P17378549237770191057.Spec : Prop :=
  ∀ n, P17378549237770191057.a n = A250660 (n + 1)

end A250660

/-! ## A250660.P9756566099906911230

`Δ[64*A005286(n)-A000217(n)]`
-/

namespace A250660.P9756566099906911230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005286 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250660.P9756566099906911230

namespace A250660

/-- `Δ[64*A005286(n)-A000217(n)]` -/
def P9756566099906911230.Spec : Prop :=
  ∀ n, P9756566099906911230.a n = A250660 (n + 1)

end A250660

/-! ## A250660.P9403415560277328057

`Δ[64*A005586(n)-A000124(n)]`
-/

namespace A250660.P9403415560277328057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005586 n - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250660.P9403415560277328057

namespace A250660

/-- `Δ[64*A005586(n)-A000124(n)]` -/
def P9403415560277328057.Spec : Prop :=
  ∀ n, P9403415560277328057.a n = A250660 (n + 1)

end A250660

/-! ## A250660.P17462972285120261997

`Δ[64*A005586(n)-A000217(n)]`
-/

namespace A250660.P17462972285120261997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A005586 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250660.P17462972285120261997

namespace A250660

/-- `Δ[64*A005586(n)-A000217(n)]` -/
def P17462972285120261997.Spec : Prop :=
  ∀ n, P17462972285120261997.a n = A250660 (n + 1)

end A250660

/-!
# A250661: Number of (7+1) X (n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250661, the canonical program `A250661.P9770252859539275233` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250661 has offset 1).

The definition of A250661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250661.P9770252859539275233

`64*(n+1)²+319*(n+1)+256`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250661

/-- `64*(n+1)²+319*(n+1)+256` -/
def P9770252859539275233.Spec : Prop :=
  ∀ n, (P9770252859539275233.a n : ℤ) = A250661 (n + 1)

theorem P9770252859539275233.correct : P9770252859539275233.Spec := by
  intro n
  simp only [A250661, Nat.add_sub_cancel]

end A250661

/-! ## A250661.P11370363611545095197

`Δ[∑[∑[A157951(n+2)]]-(n+1)²]`
-/

namespace A250661.P11370363611545095197
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A250661.P11370363611545095197

namespace A250661

/-- `Δ[∑[∑[A157951(n+2)]]-(n+1)²]` -/
def P11370363611545095197.Spec : Prop :=
  ∀ n, P11370363611545095197.a n = A250661 (n + 1)

end A250661

/-! ## A250661.P13945985806133672669

`A017138(A004771(n+4))%A157948(n+5)`
-/

namespace A250661.P13945985806133672669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017138 (A004771 (n + 4)).toNat) (A157948 (n + 5))

end

end A250661.P13945985806133672669

namespace A250661

/-- `A017138(A004771(n+4))%A157948(n+5)` -/
def P13945985806133672669.Spec : Prop :=
  ∀ n, P13945985806133672669.a n = A250661 (n + 1)

end A250661

/-!
# A250663: Number of tilings of a 12 X n rectangle using 2n hexominoes of shape I.

The programs for A250663, there is no canonical definition to state claims against.
-/

/-! ## A250663.P6706130393562016044

`A250662(A046691(n+5)-3)`
-/

namespace A250663.P6706130393562016044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A046691 (n + 5) - 3).toNat

end

end A250663.P6706130393562016044

/-! ## A250663.P17810760211148820841

`A250662(A034856(n+6)-5)`
-/

namespace A250663.P17810760211148820841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A034856 (n + 6) - 5).toNat

end

end A250663.P17810760211148820841

/-! ## A250663.P4991008769431927009

`A250662(A000217(n+7)-7)`
-/

namespace A250663.P4991008769431927009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000217 (n + 7) - 7).toNat

end

end A250663.P4991008769431927009

/-! ## A250663.P16226871210450746190

`A250662(A056000(n+2)+n+10)`
-/

namespace A250663.P16226871210450746190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A056000 (n + 2) + (n + 10 : ℤ)).toNat

end

end A250663.P16226871210450746190

/-! ## A250663.P1549596029073410124

`A250662(A004273(n+3)+A000124(n+5))`
-/

namespace A250663.P1549596029073410124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A004273 (n + 3) + A000124 (n + 5)).toNat

end

end A250663.P1549596029073410124

/-! ## A250663.P10444409685461921417

`A250662(A000124(n+8)-A020723(n+7))`
-/

namespace A250663.P10444409685461921417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000124 (n + 8) - A020723 (n + 7)).toNat

end

end A250663.P10444409685461921417

/-!
# A250664: Number of tilings of a 14 X n rectangle using 2n heptominoes of shape I.

The programs for A250664, there is no canonical definition to state claims against.
-/

/-! ## A250664.P11143611462113070142

`A250662(A155212(n+4))`
-/

namespace A250664.P11143611462113070142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A155212 (n + 4)).toNat

end

end A250664.P11143611462113070142

/-! ## A250664.P9328171784556088220

`A250662(eq[7, A025581(n)])`
-/

namespace A250664.P9328171784556088220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250664.P9328171784556088220

/-! ## A250664.P4353022039799361870

`A250662(A000217(n+8)-8)`
-/

namespace A250664.P4353022039799361870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000217 (n + 8) - 8).toNat

end

end A250664.P4353022039799361870

/-! ## A250664.P6359428280308827061

`A250662(eq[8, A004736(n+1)])`
-/

namespace A250664.P6359428280308827061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250664.P6359428280308827061

/-! ## A250664.P13744905505281826329

`A114799(n+2)-A070939(A000079(n))`
-/

namespace A250664.P13744905505281826329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114799 (n + 2) - A070939 (A000079 n).toNat

end

end A250664.P13744905505281826329

/-!
# A250665: Number of tilings of a 16 X n rectangle using 2n octominoes of shape I.

The programs for A250665, there is no canonical definition to state claims against.
-/

/-! ## A250665.P9682056071235092458

`A250662(eq[8, A025581(n)])`
-/

namespace A250665.P9682056071235092458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250665.P9682056071235092458

/-! ## A250665.P2224158643269284046

`A250662(A000217(n+9)-9)`
-/

namespace A250665.P2224158643269284046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000217 (n + 9) - 9).toNat

end

end A250665.P2224158643269284046

/-! ## A250665.P10437546216851256274

`A250662(eq[9, A004736(n+1)])`
-/

namespace A250665.P10437546216851256274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250665.P10437546216851256274

/-! ## A250665.P13626448817106600102

`A250662(A057428(n)+A027379(n+7)-5)`
-/

namespace A250665.P13626448817106600102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A057428 n + (A027379 (n + 7) - 5)).toNat

end

end A250665.P13626448817106600102

/-! ## A250665.P5612233526370968116

`A114800(n+2)-A070939(A000079(n))`
-/

namespace A250665.P5612233526370968116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (n + 2) - A070939 (A000079 n).toNat

end

end A250665.P5612233526370968116

/-!
# A250666: Number of tilings of a 18 X n rectangle using 2n nonominoes of shape I.

The programs for A250666, there is no canonical definition to state claims against.
-/

/-! ## A250666.P3659591787071083109

`A250662(eq[9, A025581(n)])`
-/

namespace A250666.P3659591787071083109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250666.P3659591787071083109

/-! ## A250666.P374229001627892191

`A250662(A000217(n+9)+n)`
-/

namespace A250666.P374229001627892191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A000217 (n + 9) + (n : ℤ)).toNat

end

end A250666.P374229001627892191

/-! ## A250666.P7042172923836089574

`(∑[A270035(2*(n+1))]+1)%A355135(A022838(2*(n+1)))`
-/

namespace A250666.P7042172923836089574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270035 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A355135 (A022838 (2 * (n + 1))).toNat)

end

end A250666.P7042172923836089574

/-! ## A250666.P4120191321163770763

`A114806(n+2)-A000005(A000079(n))`
-/

namespace A250666.P4120191321163770763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (n + 2) - A000005 (A000079 n).toNat

end

end A250666.P4120191321163770763

/-! ## A250666.P10156600330136203469

`A254661(A238919(n))`
-/

namespace A250666.P10156600330136203469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254661 (A238919 n).toNat

end

end A250666.P10156600330136203469

/-!
# A250667: Number of tilings of a 20 X n rectangle using 2n decominoes of shape I.

The programs for A250667, there is no canonical definition to state claims against.
-/

/-! ## A250667.P6056695757439108957

`A250662(A056000(n+7)-1)`
-/

namespace A250667.P6056695757439108957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250662 (A056000 (n + 7) - 1).toNat

end

end A250667.P6056695757439108957

/-! ## A250667.P3123554078833060330

`A020753(n+1)*A307629(n)+1`
-/

namespace A250667.P3123554078833060330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (n + 1) * A307629 n + 1

end

end A250667.P3123554078833060330

/-! ## A250667.P13036085858847874570

`A004442(A020753(n+1)*A307629(n))`
-/

namespace A250667.P13036085858847874570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020753 (n + 1) * A307629 n).toNat

end

end A250667.P13036085858847874570

/-! ## A250667.P10112748276431389640

`A004442(∑[A059995(n)]*A020753(n+1))`
-/

namespace A250667.P10112748276431389640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((∑ j ∈ Finset.range (n + 1), f1 j) * A020753 (n + 1)).toNat

end

end A250667.P10112748276431389640

/-! ## A250667.P11191974186824513374

`A288327(n+2)-A000005(A000079(n))`
-/

namespace A250667.P11191974186824513374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 (n + 2) - A000005 (A000079 n).toNat

end

end A250667.P11191974186824513374

/-!
# A250668: Number of (n+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250668, there is no canonical definition to state claims against.
-/

/-! ## A250668.P1185479387934904027

`A250676(∑[4*n]+1)`
-/

namespace A250668.P1185479387934904027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250668.P1185479387934904027

/-! ## A250668.P9124916295147105607

`lcm(2, A250676(n²+(n+1)²))`
-/

namespace A250668.P9124916295147105607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250676 (n ^ 2 + (n + 1) ^ 2))

end

end A250668.P9124916295147105607

/-! ## A250668.P16859249052580563685

`record[A250676(Δ[A235355(n)])]`
-/

namespace A250668.P16859249052580563685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250668.P16859249052580563685

/-!
# A250669: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250669, there is no canonical definition to state claims against.
-/

/-! ## A250669.P12513617633372291908

`A250676(∑[n+1])`
-/

namespace A250669.P12513617633372291908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250669.P12513617633372291908

/-! ## A250669.P14733931400933548813

`A250691(∑[n+1])`
-/

namespace A250669.P14733931400933548813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250669.P14733931400933548813

/-! ## A250669.P6058773321887475972

`record[A250676(abs(A122432(n)))]`
-/

namespace A250669.P6058773321887475972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250669.P6058773321887475972

/-! ## A250669.P13519565184215481976

`record[A250691(abs(A122432(n)))]`
-/

namespace A250669.P13519565184215481976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250669.P13519565184215481976

/-! ## A250669.P17430484589833321148

`record[A250676(A115017(n+1))]`
-/

namespace A250669.P17430484589833321148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250669.P17430484589833321148

/-!
# A250670: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250670, there is no canonical definition to state claims against.
-/

/-! ## A250670.P7980726896843827806

`A250676(∑[n+2])`
-/

namespace A250670.P7980726896843827806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250670.P7980726896843827806

/-! ## A250670.P18232502793660667046

`record[A250676(A117142(n+2))]`
-/

namespace A250670.P18232502793660667046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250670.P18232502793660667046

/-! ## A250670.P3867208311790092933

`record[A250676(Δ[A003453(n+5)])]`
-/

namespace A250670.P3867208311790092933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250670.P3867208311790092933

/-! ## A250670.P7876725722323238724

`record[A250676(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A250670.P7876725722323238724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250670.P7876725722323238724

/-! ## A250670.P18281822041825641638

`lcm(A228570(n), A250676(A117142(2*(n+1))))`
-/

namespace A250670.P18281822041825641638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228570 n) (A250676 (A117142 (2 * (n + 1))).toNat)

end

end A250670.P18281822041825641638

/-!
# A250671: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250671, there is no canonical definition to state claims against.
-/

/-! ## A250671.P16719868211010774137

`A250676(∑[n+3]+1)`
-/

namespace A250671.P16719868211010774137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250671.P16719868211010774137

/-!
# A250672: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250672, there is no canonical definition to state claims against.
-/

/-! ## A250672.P15120691977242087425

`A250676(∑[n+4]+3)`
-/

namespace A250672.P15120691977242087425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250672.P15120691977242087425

/-! ## A250672.P2777413444920071460

`A250676(A056000(n)+7)+A025442(n)`
-/

namespace A250672.P2777413444920071460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056000 n + 7).toNat + A025442 n

end

end A250672.P2777413444920071460

/-! ## A250672.P16032585372764649336

`A250676(A056000(n)+7)/A250662(n)`
-/

namespace A250672.P16032585372764649336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250676 (A056000 n + 7).toNat : ℚ) / (A250662 n : ℚ)

end

end A250672.P16032585372764649336

/-! ## A250672.P12132043270916174011

`A250676(A056000(n)+7)%A250673(n+1)`
-/

namespace A250672.P12132043270916174011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250676 (A056000 n + 7).toNat) (A250673 (n + 1))

end

end A250672.P12132043270916174011

/-! ## A250672.P8326593967390542360

`A250676(A056000(n)+7)+1-A000120(A059268(n))`
-/

namespace A250672.P8326593967390542360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056000 n + 7).toNat + 1 - A000120 (A059268 n).toNat

end

end A250672.P8326593967390542360

/-!
# A250673: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250673, there is no canonical definition to state claims against.
-/

/-! ## A250673.P837908279141385078

`A250676(∑[n+5]+6)`
-/

namespace A250673.P837908279141385078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250673.P837908279141385078

/-!
# A250674: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250674, there is no canonical definition to state claims against.
-/

/-! ## A250674.P17486417689753391692

`A250676(A052905(n+3))`
-/

namespace A250674.P17486417689753391692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A052905 (n + 3)).toNat

end

end A250674.P17486417689753391692

/-! ## A250674.P12540645681261782407

`A250676(A302537(n)+15)`
-/

namespace A250674.P12540645681261782407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A302537 n + 15).toNat

end

end A250674.P12540645681261782407

/-! ## A250674.P117561592606435996

`A250676(A056119(n)+16)`
-/

namespace A250674.P117561592606435996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056119 n + 16).toNat

end

end A250674.P117561592606435996

/-! ## A250674.P2311490397769913665

`A250676(eq[3, A219347(n)])`
-/

namespace A250674.P2311490397769913665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250674.P2311490397769913665

/-! ## A250674.P2147823177824282895

`A250676(eq[5, A193592(n)])`
-/

namespace A250674.P2147823177824282895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250674.P2147823177824282895

/-!
# A250675: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250675, there is no canonical definition to state claims against.
-/

/-! ## A250675.P7357952844179271528

`A250676(A055999(n+4))`
-/

namespace A250675.P7357952844179271528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A055999 (n + 4)).toNat

end

end A250675.P7357952844179271528

/-! ## A250675.P5878253358622490047

`A250676(eq[4, A219347(n)])`
-/

namespace A250675.P5878253358622490047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250675.P5878253358622490047

/-! ## A250675.P4640081414293543517

`A250676(eq[5, A332954(n)])`
-/

namespace A250675.P4640081414293543517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250675.P4640081414293543517

/-! ## A250675.P3661191472405829915

`A250676(eq[6, A193592(n)])`
-/

namespace A250675.P3661191472405829915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250675.P3661191472405829915

/-!
# A250677: Number of (1+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250677, there is no canonical definition to state claims against.
-/

/-! ## A250677.P11700363781658850973

`A250676(∑[n]+1)`
-/

namespace A250677.P11700363781658850973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250677.P11700363781658850973

/-! ## A250677.P12605368117361222980

`record[A250676(∑[A057979(n)])]`
-/

namespace A250677.P12605368117361222980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250677.P12605368117361222980

/-! ## A250677.P5866400136946802724

`record[A250676(A056534(n+1))]`
-/

namespace A250677.P5866400136946802724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250677.P5866400136946802724

/-! ## A250677.P1640051717494446355

`record[A250676(A114091(n+1))]`
-/

namespace A250677.P1640051717494446355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250677.P1640051717494446355

/-! ## A250677.P10589515156389331111

`record[A250676(A286235(n+1))]`
-/

namespace A250677.P10589515156389331111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250677.P10589515156389331111

/-!
# A250678: Number of (2+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250678, there is no canonical definition to state claims against.
-/

/-! ## A250678.P15859574918583982442

`A250676(∑[n+1]+2)`
-/

namespace A250678.P15859574918583982442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250678.P15859574918583982442

/-! ## A250678.P1604533470381653489

`record[A250676(A133263(val(n+1, 2)+1))]`
-/

namespace A250678.P1604533470381653489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250678.P1604533470381653489

/-! ## A250678.P12814177702580495266

`record[A250676(n+3)/A049375(n+1)]`
-/

namespace A250678.P12814177702580495266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250676 (n + 3) : ℚ) / (A049375 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250678.P12814177702580495266

/-! ## A250678.P5428541220318458439

`A250676(A238531(n+2))%A253361(3*n+5)`
-/

namespace A250678.P5428541220318458439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250676 (A238531 (n + 2)).toNat) (A253361 (3 * n + 5))

end

end A250678.P5428541220318458439

/-!
# A250679: Number of (3+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250679, there is no canonical definition to state claims against.
-/

/-! ## A250679.P8130009705821699341

`A250676(∑[n+2]+4)`
-/

namespace A250679.P8130009705821699341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250679.P8130009705821699341

/-! ## A250679.P16447301357348775929

`and(1, n)!*A250676(A167614(n+1))`
-/

namespace A250679.P16447301357348775929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A250676 (A167614 (n + 1)).toNat

end

end A250679.P16447301357348775929

/-! ## A250679.P9394122751580203423

`A250676(A167614(n+1))+A011738(n)`
-/

namespace A250679.P9394122751580203423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167614 (n + 1)).toNat + A011738 n

end

end A250679.P9394122751580203423

/-! ## A250679.P4709835515274975747

`A250676(A167614(n+1))+A025442(n)`
-/

namespace A250679.P4709835515274975747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167614 (n + 1)).toNat + A025442 n

end

end A250679.P4709835515274975747

/-! ## A250679.P3955923866274231776

`A250676(A167614(n+1))+A025469(n)`
-/

namespace A250679.P3955923866274231776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167614 (n + 1)).toNat + A025469 n

end

end A250679.P3955923866274231776

/-!
# A250680: Number of (4+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250680, there is no canonical definition to state claims against.
-/

/-! ## A250680.P2509530988673821706

`A250676(C(2*n+5-n, 2)-n)`
-/

namespace A250680.P2509530988673821706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (Nat.choose ((2 * n + 5 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A250680.P2509530988673821706

/-! ## A250680.P4937918316599875490

`A250676(A141214(n)+7)`
-/

namespace A250680.P4937918316599875490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A141214 n + 7).toNat

end

end A250680.P4937918316599875490

/-! ## A250680.P13561016771481265122

`A250676(A052905(n)+9)`
-/

namespace A250680.P13561016771481265122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A052905 n + 9).toNat

end

end A250680.P13561016771481265122

/-! ## A250680.P16529063828557376883

`A250676(A055999(n)+10)`
-/

namespace A250680.P16529063828557376883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A055999 n + 10).toNat

end

end A250680.P16529063828557376883

/-! ## A250680.P11355836153369397887

`A250676(eq[5, A066657(n)])`
-/

namespace A250680.P11355836153369397887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250680.P11355836153369397887

/-!
# A250681: Number of (5+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250681, there is no canonical definition to state claims against.
-/

/-! ## A250681.P9141611460647491871

`A250676(A077169(n+5))`
-/

namespace A250681.P9141611460647491871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A077169 (n + 5)).toNat

end

end A250681.P9141611460647491871

/-! ## A250681.P15041408779456847455

`A250676(A155212(n)+13)`
-/

namespace A250681.P15041408779456847455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A155212 n + 13).toNat

end

end A250681.P15041408779456847455

/-! ## A250681.P7409069309420350710

`A250676(A056000(n)+15)`
-/

namespace A250681.P7409069309420350710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056000 n + 15).toNat

end

end A250681.P7409069309420350710

/-! ## A250681.P12954583793292638234

`A250676(eq[7, A066657(n)])`
-/

namespace A250681.P12954583793292638234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250681.P12954583793292638234

/-! ## A250681.P14796827712923838098

`A250676(A167614(n+3)+2)`
-/

namespace A250681.P14796827712923838098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167614 (n + 3) + 2).toNat

end

end A250681.P14796827712923838098

/-!
# A250682: Number of (6+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250682, there is no canonical definition to state claims against.
-/

/-! ## A250682.P3479015570348029124

`A250676(A166136(n+4))`
-/

namespace A250682.P3479015570348029124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A166136 (n + 4)).toNat

end

end A250682.P3479015570348029124

/-! ## A250682.P3048119562129341113

`A250676(A056115(n)+21)`
-/

namespace A250682.P3048119562129341113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A056115 n + 21).toNat

end

end A250682.P3048119562129341113

/-! ## A250682.P4699400850227552808

`A250676(Δ[A264443(n)]+10)`
-/

namespace A250682.P4699400850227552808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (f1 (n + 1) - f1 n + 10).toNat

end

end A250682.P4699400850227552808

/-! ## A250682.P9456498588099813073

`A250676(A167499(n+4)+1)`
-/

namespace A250682.P9456498588099813073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167499 (n + 4) + 1).toNat

end

end A250682.P9456498588099813073

/-! ## A250682.P5287332152544306042

`A250676(A167614(n+4)+3)`
-/

namespace A250682.P5287332152544306042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167614 (n + 4) + 3).toNat

end

end A250682.P5287332152544306042

/-!
# A250683: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250683, there is no canonical definition to state claims against.
-/

/-! ## A250683.P5514110039409335358

`A250676(A167487(n+5))`
-/

namespace A250683.P5514110039409335358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A167487 (n + 5)).toNat

end

end A250683.P5514110039409335358

/-! ## A250683.P13342350810062461171

`A250676(A302537(n)+27)`
-/

namespace A250683.P13342350810062461171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (A302537 n + 27).toNat

end

end A250683.P13342350810062461171

/-! ## A250683.P7851415580420369103

`A250676(eq[11, A066657(n)])`
-/

namespace A250683.P7851415580420369103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250683.P7851415580420369103

/-! ## A250683.P13889783041633310967

`record[A250676(lt[8, A066657(n)])]`
-/

namespace A250683.P13889783041633310967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250676 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250683.P13889783041633310967

/-!
# A250684: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250684, there is no canonical definition to state claims against.
-/

/-! ## A250684.P17708088823129087996

`A250691(∑[4*n]+1)`
-/

namespace A250684.P17708088823129087996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250684.P17708088823129087996

/-! ## A250684.P1271435707410319770

`record[A250691(Δ[A235355(n)])]`
-/

namespace A250684.P1271435707410319770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250684.P1271435707410319770

/-! ## A250684.P15895550186137872364

`and(-1, A250691(A001844(n)))`
-/

namespace A250684.P15895550186137872364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A250691 (A001844 n).toNat)

end

end A250684.P15895550186137872364

/-!
# A250685: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250685, there is no canonical definition to state claims against.
-/

/-! ## A250685.P8981878624394367665

`A250691(∑[n+2])`
-/

namespace A250685.P8981878624394367665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250685.P8981878624394367665

/-! ## A250685.P10966358831985457460

`record[A250691(abs(A201163(n)))]`
-/

namespace A250685.P10966358831985457460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250685.P10966358831985457460

/-! ## A250685.P9993001104398812211

`record[A250691(A333530(n+1))]`
-/

namespace A250685.P9993001104398812211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250685.P9993001104398812211

/-! ## A250685.P17992872396079555271

`record[A250691(Δ[A003453(n+5)])]`
-/

namespace A250685.P17992872396079555271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250685.P17992872396079555271

/-! ## A250685.P15574162586977257993

`A250691(A000096(n+1))+A217156(n+1)`
-/

namespace A250685.P15574162586977257993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A000096 (n + 1)).toNat + A217156 (n + 1)

end

end A250685.P15574162586977257993

/-!
# A250686: Number of (n+1) X (3+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250686, there is no canonical definition to state claims against.
-/

/-! ## A250686.P3369475745374181427

`A250691(∑[n+3]+1)`
-/

namespace A250686.P3369475745374181427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250686.P3369475745374181427

/-! ## A250686.P14743937070142064592

`record[A250691(A198464(n+1))]`
-/

namespace A250686.P14743937070142064592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250686.P14743937070142064592

/-! ## A250686.P12270389117848584004

`A250691(A034856(n+2))+A025439(n)`
-/

namespace A250686.P12270389117848584004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A034856 (n + 2)).toNat + A025439 n

end

end A250686.P12270389117848584004

/-! ## A250686.P1797140525242814252

`A250691(A034856(n+2))+A178798(n)`
-/

namespace A250686.P1797140525242814252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A034856 (n + 2)).toNat + A178798 n

end

end A250686.P1797140525242814252

/-! ## A250686.P606800745034756320

`lcm(A000034(n), A250691(A034856(n+2)))`
-/

namespace A250686.P606800745034756320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A250691 (A034856 (n + 2)).toNat)

end

end A250686.P606800745034756320

/-!
# A250687: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250687, there is no canonical definition to state claims against.
-/

/-! ## A250687.P12746430245738652295

`A250691(∑[n+4]+3)`
-/

namespace A250687.P12746430245738652295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250687.P12746430245738652295

/-! ## A250687.P5166521591724252479

`lcm(2, A250691(A141214(n+1)))`
-/

namespace A250687.P5166521591724252479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250691 (A141214 (n + 1)).toNat)

end

end A250687.P5166521591724252479

/-! ## A250687.P2514239032464078137

`A250691(A141214(n+1))+A185284(n)`
-/

namespace A250687.P2514239032464078137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A141214 (n + 1)).toNat + A185284 n

end

end A250687.P2514239032464078137

/-! ## A250687.P14810212125859387139

`A067059(n)*A250691(A027379(n+2))`
-/

namespace A250687.P14810212125859387139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A250691 (A027379 (n + 2)).toNat

end

end A250687.P14810212125859387139

/-! ## A250687.P1849739118964438205

`A250691(A027379(n+2))+A000007(n+1)`
-/

namespace A250687.P1849739118964438205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A027379 (n + 2)).toNat + A000007 (n + 1)

end

end A250687.P1849739118964438205

/-!
# A250688: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250688, there is no canonical definition to state claims against.
-/

/-! ## A250688.P6377410971607241335

`A250691(∑[n+5]+6)`
-/

namespace A250688.P6377410971607241335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A250688.P6377410971607241335

/-!
# A250689: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250689, there is no canonical definition to state claims against.
-/

/-! ## A250689.P292719798211575765

`A250691(A052905(n+3))`
-/

namespace A250689.P292719798211575765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A052905 (n + 3)).toNat

end

end A250689.P292719798211575765

/-! ## A250689.P14900349470976854344

`A250691(A302537(n)+15)`
-/

namespace A250689.P14900349470976854344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A302537 n + 15).toNat

end

end A250689.P14900349470976854344

/-! ## A250689.P2136405807206339267

`A250691(A056119(n)+16)`
-/

namespace A250689.P2136405807206339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056119 n + 16).toNat

end

end A250689.P2136405807206339267

/-! ## A250689.P17200464742548123189

`A250691(eq[3, A219347(n)])`
-/

namespace A250689.P17200464742548123189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250689.P17200464742548123189

/-! ## A250689.P16837296609695895392

`A250691(eq[5, A193592(n)])`
-/

namespace A250689.P16837296609695895392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250689.P16837296609695895392

/-!
# A250690: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250690, there is no canonical definition to state claims against.
-/

/-! ## A250690.P6674472913212585688

`A250691(A055999(n+4))`
-/

namespace A250690.P6674472913212585688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A055999 (n + 4)).toNat

end

end A250690.P6674472913212585688

/-! ## A250690.P9149839533945175491

`A250691(A056121(n)+22)`
-/

namespace A250690.P9149839533945175491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056121 n + 22).toNat

end

end A250690.P9149839533945175491

/-! ## A250690.P12601092349842022304

`A250691(eq[4, A219347(n)])`
-/

namespace A250690.P12601092349842022304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250690.P12601092349842022304

/-! ## A250690.P2729546541000698047

`A250691(eq[6, A193592(n)])`
-/

namespace A250690.P2729546541000698047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250690.P2729546541000698047

/-!
# A250692: Number of (1+1) X (n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250692, there is no canonical definition to state claims against.
-/

/-! ## A250692.P283334778167074478

`A250691(∑[n]+1)`
-/

namespace A250692.P283334778167074478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250692.P283334778167074478

/-! ## A250692.P15118309489910847170

`record[A250691(A049780(n)+1)]`
-/

namespace A250692.P15118309489910847170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A049780 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250692.P15118309489910847170

/-! ## A250692.P1802135666263595456

`record[A250691(A056536(n+1))]`
-/

namespace A250692.P1802135666263595456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250692.P1802135666263595456

/-! ## A250692.P16958203393299745871

`record[A250691(A114091(n+1))]`
-/

namespace A250692.P16958203393299745871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250692.P16958203393299745871

/-! ## A250692.P18191803513642892190

`record[A250691(A286235(n+1))]`
-/

namespace A250692.P18191803513642892190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250692.P18191803513642892190

/-!
# A250693: Number of (2+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250693, there is no canonical definition to state claims against.
-/

/-! ## A250693.P14452579159835723613

`A250691(∑[n+1]+2)`
-/

namespace A250693.P14452579159835723613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250693.P14452579159835723613

/-! ## A250693.P383452984011836367

`record[A250691(A130270(n+1)+2)]`
-/

namespace A250693.P383452984011836367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250693.P383452984011836367

/-! ## A250693.P2615313423642213286

`record[A250691(A286157(n+1)+2)]`
-/

namespace A250693.P2615313423642213286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A286157 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250693.P2615313423642213286

/-! ## A250693.P4471014321959269250

`A250691(A252752(2*(n+2)))+A027641(2*n+3)`
-/

namespace A250693.P4471014321959269250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A252752 (2 * (n + 2))).toNat + A027641 (2 * n + 3)

end

end A250693.P4471014321959269250

/-!
# A250694: Number of (3+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250694, there is no canonical definition to state claims against.
-/

/-! ## A250694.P16650860011690531512

`A250691(∑[n+2]+4)`
-/

namespace A250694.P16650860011690531512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250694.P16650860011690531512

/-! ## A250694.P13169123509831036377

`lcm((-1)^n, A250691(A167614(n+1)))`
-/

namespace A250694.P13169123509831036377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A250691 (A167614 (n + 1)).toNat)

end

end A250694.P13169123509831036377

/-! ## A250694.P2177781947026679393

`lcm(A073783(n+1), A250691((n+1)*(n+4)/2+4))`
-/

namespace A250694.P2177781947026679393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073783 (n + 1)) (A250691 (SequenceMachineLib.roundAway (((n + 1) * (n + 4) : ℚ) / 2 + 4)).toNat)

end

end A250694.P2177781947026679393

/-! ## A250694.P2023276059411357605

`A250691(A167614(n+1))+A011731(n)`
-/

namespace A250694.P2023276059411357605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167614 (n + 1)).toNat + A011731 n

end

end A250694.P2023276059411357605

/-! ## A250694.P3839925574272098216

`A250691(A167614(n+1))+A011738(n)`
-/

namespace A250694.P3839925574272098216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167614 (n + 1)).toNat + A011738 n

end

end A250694.P3839925574272098216

/-!
# A250695: Number of (4+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250695, there is no canonical definition to state claims against.
-/

/-! ## A250695.P3355569613404025579

`A250691(∑[n+3]+7)`
-/

namespace A250695.P3355569613404025579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250695.P3355569613404025579

/-!
# A250696: Number of (5+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250696, there is no canonical definition to state claims against.
-/

/-! ## A250696.P12981526727260559881

`A250691(A167499(n+3))`
-/

namespace A250696.P12981526727260559881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167499 (n + 3)).toNat

end

end A250696.P12981526727260559881

/-! ## A250696.P4689949136763524817

`A250691(A155212(n)+13)`
-/

namespace A250696.P4689949136763524817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A155212 n + 13).toNat

end

end A250696.P4689949136763524817

/-! ## A250696.P172029315915287171

`A250691(A056000(n)+15)`
-/

namespace A250696.P172029315915287171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056000 n + 15).toNat

end

end A250696.P172029315915287171

/-! ## A250696.P13704586913387320556

`A250691(eq[7, A066657(n)])`
-/

namespace A250696.P13704586913387320556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250696.P13704586913387320556

/-! ## A250696.P4788516861883756977

`A250691(A167614(n+3)+2)`
-/

namespace A250696.P4788516861883756977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167614 (n + 3) + 2).toNat

end

end A250696.P4788516861883756977

/-!
# A250697: Number of (6+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250697, there is no canonical definition to state claims against.
-/

/-! ## A250697.P6056236831275827522

`A250691((∑[(n+3)²+6]+30)%(2*(∑[∑[n+2]+3]+7)))`
-/

namespace A250697.P6056236831275827522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 ((∑ j ∈ Finset.range (n + 1), f1 j + 30) % (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 7)))

end

end A250697.P6056236831275827522

/-! ## A250697.P9251967060919913368

`A250691(A166136(n+4))`
-/

namespace A250697.P9251967060919913368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A166136 (n + 4)).toNat

end

end A250697.P9251967060919913368

/-! ## A250697.P10874094706452480041

`A250691(A056115(n)+21)`
-/

namespace A250697.P10874094706452480041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056115 n + 21).toNat

end

end A250697.P10874094706452480041

/-! ## A250697.P11535972668832815886

`A250691(A167499(n+4)+1)`
-/

namespace A250697.P11535972668832815886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167499 (n + 4) + 1).toNat

end

end A250697.P11535972668832815886

/-! ## A250697.P7108028922010876167

`A250691(A077169(n+6)+1)`
-/

namespace A250697.P7108028922010876167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A077169 (n + 6) + 1).toNat

end

end A250697.P7108028922010876167

/-!
# A250698: Number of (7+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

The programs for A250698, there is no canonical definition to state claims against.
-/

/-! ## A250698.P14407880480374367110

`A250691(A302537(n)+27)`
-/

namespace A250698.P14407880480374367110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A302537 n + 27).toNat

end

end A250698.P14407880480374367110

/-! ## A250698.P3626894199702132753

`A250691(A056119(n)+28)`
-/

namespace A250698.P3626894199702132753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A056119 n + 28).toNat

end

end A250698.P3626894199702132753

/-! ## A250698.P12331791431989892525

`A250691(eq[11, A066657(n)])`
-/

namespace A250698.P12331791431989892525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250698.P12331791431989892525

/-! ## A250698.P4284938953965743094

`A250691(A166136(n+5)+1)`
-/

namespace A250698.P4284938953965743094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A166136 (n + 5) + 1).toNat

end

end A250698.P4284938953965743094

/-! ## A250698.P17222301315058540278

`A250691(A167499(n+5)+2)`
-/

namespace A250698.P17222301315058540278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250691 (A167499 (n + 5) + 2).toNat

end

end A250698.P17222301315058540278

/-!
# A250699: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250699, there is no canonical definition to state claims against.
-/

/-! ## A250699.P4494707818792068490

`A250707(∑[4*n]+1)`
-/

namespace A250699.P4494707818792068490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250699.P4494707818792068490

/-! ## A250699.P12890848303405634927

`record[gcd(A003987(n), A250707(n+1))]`
-/

namespace A250699.P12890848303405634927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A250707 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250699.P12890848303405634927

/-! ## A250699.P17826075980850609351

`A326688(n)+A250707(A001844(n))`
-/

namespace A250699.P17826075980850609351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326688 n + A250707 (A001844 n).toNat

end

end A250699.P17826075980850609351

/-! ## A250699.P168573578072282959

`char[A003987(n)]*A250707(A001844(n))`
-/

namespace A250699.P168573578072282959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A250707 (A001844 n).toNat

end

end A250699.P168573578072282959

/-! ## A250699.P17920386100493792552

`A043539(n+1)*A250707(A001844(n))`
-/

namespace A250699.P17920386100493792552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (n + 1) * A250707 (A001844 n).toNat

end

end A250699.P17920386100493792552

