import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B006.C001
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018

/-!
# A031872: Lexically first 9-mark Golomb ruler.

The programs for A031872, there is no canonical definition to state claims against.
-/

/-! ## A031872.P8875500583256698533

`A079425(n+1)+1`
-/

namespace A031872.P8875500583256698533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079425 (n + 1) + 1

end

end A031872.P8875500583256698533

/-! ## A031872.P14934089499017348670

`A106683(n+37)+1`
-/

namespace A031872.P14934089499017348670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 37) + 1

end

end A031872.P14934089499017348670

/-! ## A031872.P3815714767325230710

`A199343(A079425(n+1))`
-/

namespace A031872.P3815714767325230710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A079425 (n + 1)).toNat

end

end A031872.P3815714767325230710

/-! ## A031872.P8399512658339385213

`A199343(A106683(n+37))`
-/

namespace A031872.P8399512658339385213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A106683 (n + 37)).toNat

end

end A031872.P8399512658339385213

/-!
# A031873: Lexically first 10-mark Golomb ruler.

The programs for A031873, there is no canonical definition to state claims against.
-/

/-! ## A031873.P15787435574722699654

`A079426(n+1)+1`
-/

namespace A031873.P15787435574722699654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079426 (n + 1) + 1

end

end A031873.P15787435574722699654

/-! ## A031873.P10098749481211340675

`A106683(n+46)+1`
-/

namespace A031873.P10098749481211340675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 46) + 1

end

end A031873.P10098749481211340675

/-! ## A031873.P2085793995721980672

`A199343(A079426(n+1))`
-/

namespace A031873.P2085793995721980672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A079426 (n + 1)).toNat

end

end A031873.P2085793995721980672

/-! ## A031873.P4115231792200721486

`A199343(A106683(n+46))`
-/

namespace A031873.P4115231792200721486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A106683 (n + 46)).toNat

end

end A031873.P4115231792200721486

/-!
# A031874: Lexically first 11-mark Golomb ruler.

The programs for A031874, there is no canonical definition to state claims against.
-/

/-! ## A031874.P3134753043461860956

`A079430(n+1)+1`
-/

namespace A031874.P3134753043461860956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079430 (n + 1) + 1

end

end A031874.P3134753043461860956

/-! ## A031874.P4458739295639159055

`A106683(n+56)+1`
-/

namespace A031874.P4458739295639159055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 56) + 1

end

end A031874.P4458739295639159055

/-! ## A031874.P109966410302444737

`A199343(A079430(n+1))`
-/

namespace A031874.P109966410302444737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A079430 (n + 1)).toNat

end

end A031874.P109966410302444737

/-! ## A031874.P3192077941459023519

`A199343(A106683(n+56))`
-/

namespace A031874.P3192077941459023519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A106683 (n + 56)).toNat

end

end A031874.P3192077941459023519

/-!
# A031875: Lexically first 12-mark Golomb ruler.

The programs for A031875, there is no canonical definition to state claims against.
-/

/-! ## A031875.P13563065688876101878

`A079433(n+1)+1`
-/

namespace A031875.P13563065688876101878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079433 (n + 1) + 1

end

end A031875.P13563065688876101878

/-! ## A031875.P16965262771321650157

`A106683(n+67)+1`
-/

namespace A031875.P16965262771321650157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 67) + 1

end

end A031875.P16965262771321650157

/-!
# A031876: a(n) = Sum_{k=0..n} floor(k^(1/3)).

The programs for A031876, the canonical program `A031876.P13799947586534427295` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031876 has offset 0).

The definition of A031876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031876.P4305106773424353799

`∑[floor(n^(1/3))]`
-/

namespace A031876.P4305106773424353799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031876.P4305106773424353799

namespace A031876

/-- `∑[floor(n^(1/3))]` -/
def P4305106773424353799.Spec : Prop :=
  ∀ n, P4305106773424353799.a n = A031876 n

end A031876

/-! ## A031876.P6604462543803205558

`floor(a(n-1)+n^(1/3))` with `a(0)=0`
-/

namespace A031876.P6604462543803205558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A031876.P6604462543803205558

namespace A031876

/-- `floor(a(n-1)+n^(1/3))` -/
def P6604462543803205558.Spec : Prop :=
  ∀ n, P6604462543803205558.a n = A031876 n

end A031876

/-! ## A031876.P16754945819878333635

`∑[char[(n+1)^3]]+a(n-1)` with `a(0)=0`
-/

namespace A031876.P16754945819878333635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A031876.P16754945819878333635

namespace A031876

/-- `∑[char[(n+1)^3]]+a(n-1)` -/
def P16754945819878333635.Spec : Prop :=
  ∀ n, (P16754945819878333635.a n : ℤ) = A031876 n

end A031876

/-! ## A031876.P2207147525977751216

`∑[∑[char[(n+1)*(n+1)²]]]%(n+1)²`
-/

namespace A031876.P2207147525977751216
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A031876.P2207147525977751216

namespace A031876

/-- `∑[∑[char[(n+1)*(n+1)²]]]%(n+1)²` -/
def P2207147525977751216.Spec : Prop :=
  ∀ n, (P2207147525977751216.a n : ℤ) = A031876 n

end A031876

/-! ## A031876.P13799947586534427295

`and(∑[A048766(n)], -1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031876

/-- `and(∑[A048766(n)], -1)` -/
def P13799947586534427295.Spec : Prop :=
  ∀ n, P13799947586534427295.a n = A031876 n

theorem P13799947586534427295.correct : P13799947586534427295.Spec := by
  intro n
  simp only [A031876]

end A031876

/-! ## A031876.P14676314335525805677

`∑[A134914(n+1)]-(n+1)`
-/

namespace A031876.P14676314335525805677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A031876.P14676314335525805677

namespace A031876

/-- `∑[A134914(n+1)]-(n+1)` -/
def P14676314335525805677.Spec : Prop :=
  ∀ n, P14676314335525805677.a n = A031876 n

end A031876

/-! ## A031876.P10493235491292067575

`∑[∑[char[A048763(2*n)]]]-1`
-/

namespace A031876.P10493235491292067575
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A031876.P10493235491292067575

namespace A031876

/-- `∑[∑[char[A048763(2*n)]]]-1` -/
def P10493235491292067575.Spec : Prop :=
  ∀ n, P10493235491292067575.a n = A031876 n

end A031876

/-! ## A031876.P11245172518898035682

`∑[∑[char[A000578(n)]]]-(n+1)`
-/

namespace A031876.P11245172518898035682
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A031876.P11245172518898035682

namespace A031876

/-- `∑[∑[char[A000578(n)]]]-(n+1)` -/
def P11245172518898035682.Spec : Prop :=
  ∀ n, P11245172518898035682.a n = A031876 n

end A031876

/-! ## A031876.P7538193087731266955

`∑[∑[char[A184628(n+2)]]]+n`
-/

namespace A031876.P7538193087731266955
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A031876.P7538193087731266955

namespace A031876

/-- `∑[∑[char[A184628(n+2)]]]+n` -/
def P7538193087731266955.Spec : Prop :=
  ∀ n, (P7538193087731266955.a n : ℤ) = A031876 n

end A031876

/-! ## A031876.P11215813631070079667

`a(n-1)+n-A064524(n)` with `a(0)=0`
-/

namespace A031876.P11215813631070079667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A064524 n)

end

end A031876.P11215813631070079667

namespace A031876

/-- `a(n-1)+n-A064524(n)` -/
def P11215813631070079667.Spec : Prop :=
  ∀ n, P11215813631070079667.a n = A031876 n

end A031876

/-! ## A031876.P1111919778355028884

`∑[A048766(n+1)]-A048766(n+1)`
-/

namespace A031876.P1111919778355028884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048766 (n + 1)

end

end A031876.P1111919778355028884

namespace A031876

/-- `∑[A048766(n+1)]-A048766(n+1)` -/
def P1111919778355028884.Spec : Prop :=
  ∀ n, P1111919778355028884.a n = A031876 n

end A031876

/-!
# A031877: Nontrivial reversal numbers (numbers which are integer multiples of their reversals), excluding palindromic numbers and multiples of 10.

The programs for A031877, there is no canonical definition to state claims against.
-/

/-! ## A031877.P13424838854518445079

`∪[A222814(n+1), A222815(n+1)]`
-/

namespace A031877.P13424838854518445079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031877.P13424838854518445079

/-! ## A031877.P2343218567553783555

`∪[2*A285040(n+1), A222814(n+1)]`
-/

namespace A031877.P2343218567553783555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031877.P2343218567553783555

/-! ## A031877.P5069511350390428135

`∪[4*A008918(n+1), A222814(n+1)]`
-/

namespace A031877.P5069511350390428135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031877.P5069511350390428135

/-! ## A031877.P434475695985384669

`∪[8*A001232(n+1), A222814(n+1)]`
-/

namespace A031877.P434475695985384669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031877.P434475695985384669

/-! ## A031877.P6705592145325246725

`∪[9*A001232(n+1), A222815(n+1)]`
-/

namespace A031877.P6705592145325246725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031877.P6705592145325246725

/-!
# A031878: Maximal number of edges in Hamiltonian path in complete graph on n nodes.

The programs for A031878, the canonical program `A031878.P9414616395338876056` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031878 has offset 1).

The definition of A031878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031878.P9414616395338876056

`ceil(n*or(1, n)/2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A031878

/-- `ceil(n*or(1, n)/2)` -/
def P9414616395338876056.Spec : Prop :=
  ∀ n, P9414616395338876056.a n = A031878 (n + 1)

theorem P9414616395338876056.correct : P9414616395338876056.Spec := by
  intro n
  simp only [A031878, Nat.add_sub_cancel]

end A031878

/-! ## A031878.P7618079866333638937

`round(n*or(1, n)/2)`
-/

namespace A031878.P7618079866333638937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lor 1 n : ℚ) / 2))

end

end A031878.P7618079866333638937

namespace A031878

/-- `round(n*or(1, n)/2)` -/
def P7618079866333638937.Spec : Prop :=
  ∀ n, P7618079866333638937.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P11077377386873887649

`round(n*cosh(log(or(1, n))))`
-/

namespace A031878.P11077377386873887649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cosh (Real.log (Nat.lor 1 n : ℝ)))

end

end A031878.P11077377386873887649

namespace A031878

/-- `round(n*cosh(log(or(1, n))))` -/
def P11077377386873887649.Spec : Prop :=
  ∀ n, P11077377386873887649.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P15996400644347141531

`ceil(n/sinh(2/or(1, n)))`
-/

namespace A031878.P15996400644347141531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sinh (2 / (Nat.lor 1 n : ℚ) : ℝ)⌉

end

end A031878.P15996400644347141531

namespace A031878

/-- `ceil(n/sinh(2/or(1, n)))` -/
def P15996400644347141531.Spec : Prop :=
  ∀ n, P15996400644347141531.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P2208452017892684472

`floor((n*or(1, n)+1)/2)`
-/

namespace A031878.P2208452017892684472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * Nat.lor 1 n + 1 : ℚ) / 2⌋

end

end A031878.P2208452017892684472

namespace A031878

/-- `floor((n*or(1, n)+1)/2)` -/
def P2208452017892684472.Spec : Prop :=
  ∀ n, P2208452017892684472.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P16323632691706937749

`(n-1)*floor(n/2)+n`
-/

namespace A031878.P16323632691706937749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A031878.P16323632691706937749

namespace A031878

/-- `(n-1)*floor(n/2)+n` -/
def P16323632691706937749.Spec : Prop :=
  ∀ n, P16323632691706937749.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P1246264623033963927

`(gcd(n, n%2)+n²)/2`
-/

namespace A031878.P1246264623033963927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) + n ^ 2 : ℚ) / 2

end

end A031878.P1246264623033963927

namespace A031878

/-- `(gcd(n, n%2)+n²)/2` -/
def P1246264623033963927.Spec : Prop :=
  ∀ n, P1246264623033963927.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P10040197561417855063

`floor(((n+1)²-lcm(2, n))/2)`
-/

namespace A031878.P10040197561417855063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℤ) - (Nat.lcm 2 n : ℤ) : ℚ) / 2⌋

end

end A031878.P10040197561417855063

namespace A031878

/-- `floor(((n+1)²-lcm(2, n))/2)` -/
def P10040197561417855063.Spec : Prop :=
  ∀ n, P10040197561417855063.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P1942145250725804750

`ceil(n*(and(n, -2)+1)/2)`
-/

namespace A031878.P1942145250725804750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * (Int.land (n : ℤ) (-2) + 1) : ℚ) / 2⌉

end

end A031878.P1942145250725804750

namespace A031878

/-- `ceil(n*(and(n, -2)+1)/2)` -/
def P1942145250725804750.Spec : Prop :=
  ∀ n, P1942145250725804750.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P17029217588438477539

`abs(floor(2*n*or(1, 1-n)/4)-n)`
-/

namespace A031878.P17029217588438477539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((2 * n : ℤ) * Int.lor 1 (1 - (n : ℤ)) : ℚ) / 4⌋ - (n : ℤ)|

end

end A031878.P17029217588438477539

namespace A031878

/-- `abs(floor(2*n*or(1, 1-n)/4)-n)` -/
def P17029217588438477539.Spec : Prop :=
  ∀ n, P17029217588438477539.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P16650292330454683608

`floor(n²-floor(a(n-1)/n)-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A031878.P16650292330454683608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - ⌊(a (n - 1) : ℚ) / (n : ℚ)⌋ - a (n - 1)

end

end A031878.P16650292330454683608

namespace A031878

/-- `floor(n²-floor(a(n-1)/n)-a(n-1))` -/
def P16650292330454683608.Spec : Prop :=
  ∀ n, P16650292330454683608.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P17280323814718723725

`(A325657(n)+n)/2`
-/

namespace A031878.P17280323814718723725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325657 n + (n : ℤ) : ℚ) / 2

end

end A031878.P17280323814718723725

namespace A031878

/-- `(A325657(n)+n)/2` -/
def P17280323814718723725.Spec : Prop :=
  ∀ n, P17280323814718723725.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P7827247033998340963

`ceil(n/2*A109613(n))`
-/

namespace A031878.P7827247033998340963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (A109613 n : ℚ)⌉

end

end A031878.P7827247033998340963

namespace A031878

/-- `ceil(n/2*A109613(n))` -/
def P7827247033998340963.Spec : Prop :=
  ∀ n, P7827247033998340963.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P840090387862517914

`(A131179(n)+∑[n])/2`
-/

namespace A031878.P840090387862517914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131179 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A031878.P840090387862517914

namespace A031878

/-- `(A131179(n)+∑[n])/2` -/
def P840090387862517914.Spec : Prop :=
  ∀ n, P840090387862517914.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P12564798737419995094

`∑[(A267354(n)+n)/2]`
-/

namespace A031878.P12564798737419995094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267354 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031878.P12564798737419995094

namespace A031878

/-- `∑[(A267354(n)+n)/2]` -/
def P12564798737419995094.Spec : Prop :=
  ∀ n, P12564798737419995094.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P16141609205452399303

`(A289296(n)+1+n)/2`
-/

namespace A031878.P16141609205452399303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289296 n + 1 + (n : ℤ) : ℚ) / 2

end

end A031878.P16141609205452399303

namespace A031878

/-- `(A289296(n)+1+n)/2` -/
def P16141609205452399303.Spec : Prop :=
  ∀ n, P16141609205452399303.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P11425388958687265246

`((n+1)²-xor(1, A059029(n)))/2`
-/

namespace A031878.P11425388958687265246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - Int.xor 1 (A059029 n) : ℚ) / 2

end

end A031878.P11425388958687265246

namespace A031878

/-- `((n+1)²-xor(1, A059029(n)))/2` -/
def P11425388958687265246.Spec : Prop :=
  ∀ n, P11425388958687265246.a n = (A031878 (n + 1) : ℚ)

end A031878

/-! ## A031878.P15429919927413787313

`∑[A014682(A014681(n))]`
-/

namespace A031878.P15429919927413787313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031878.P15429919927413787313

namespace A031878

/-- `∑[A014682(A014681(n))]` -/
def P15429919927413787313.Spec : Prop :=
  ∀ n, P15429919927413787313.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P7039045458641337057

`A033487(n)%A080335(n)`
-/

namespace A031878.P7039045458641337057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033487 n) (A080335 n)

end

end A031878.P7039045458641337057

namespace A031878

/-- `A033487(n)%A080335(n)` -/
def P7039045458641337057.Spec : Prop :=
  ∀ n, P7039045458641337057.a n = A031878 (n + 1)

end A031878

/-! ## A031878.P11633831333593684733

`A060560(n)%A080335(n)`
-/

namespace A031878.P11633831333593684733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060560 n) (A080335 n)

end

end A031878.P11633831333593684733

namespace A031878

/-- `A060560(n)%A080335(n)` -/
def P11633831333593684733.Spec : Prop :=
  ∀ n, P11633831333593684733.a n = A031878 (n + 1)

end A031878

/-!
# A031879: Nonprime lucky numbers.

The programs for A031879, there is no canonical definition to state claims against.
-/

/-! ## A031879.P4210291491374247058

`record[A145649(n+1)*A171435(n+1)]`
-/

namespace A031879.P4210291491374247058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1) * A171435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031879.P4210291491374247058

/-! ## A031879.P12738644527229065767

`filter[A000959(n+1), A005171(#)]`
-/

namespace A031879.P12738644527229065767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A031879.P12738644527229065767

/-! ## A031879.P15153073497060751555

`filter[A000959(n+1), A292438(#)]`
-/

namespace A031879.P15153073497060751555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A031879.P15153073497060751555

/-! ## A031879.P10045957712982141126

`filter[A014076(n+1), A145649(#)]`
-/

namespace A031879.P10045957712982141126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P10045957712982141126

/-! ## A031879.P521663370413525348

`∩[A000959(n+1), A014076(n+1)]`
-/

namespace A031879.P521663370413525348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P521663370413525348

/-! ## A031879.P12648343401897304276

`∩[A000959(n+1), A264828(n+1)]`
-/

namespace A031879.P12648343401897304276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P12648343401897304276

/-! ## A031879.P16996770409352824484

`∩[A000959(n+1), A018252(n+1)]`
-/

namespace A031879.P16996770409352824484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P16996770409352824484

/-! ## A031879.P4401410074634718386

`∩[A000959(n+1), A141468(n+1)]`
-/

namespace A031879.P4401410074634718386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P4401410074634718386

/-! ## A031879.P6861305342980062976

`filter[A347202(n+1), A145649(#)]`
-/

namespace A031879.P6861305342980062976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P6861305342980062976

/-! ## A031879.P15622218016393346187

`∩[A000959(n+1), A347202(n+1)]`
-/

namespace A031879.P15622218016393346187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P15622218016393346187

/-! ## A031879.P15123189238890754981

`filter[A075065(n+1), A145649(#)]`
-/

namespace A031879.P15123189238890754981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P15123189238890754981

/-! ## A031879.P23689052906804678

`filter[A264828(n+1), A145649(#)]`
-/

namespace A031879.P23689052906804678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P23689052906804678

/-! ## A031879.P3684227557297386815

`filter[A164276(n+2), A145649(#)]`
-/

namespace A031879.P3684227557297386815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P3684227557297386815

/-! ## A031879.P7091845596141131042

`∩[A000959(n+1), A164276(n+1)]`
-/

namespace A031879.P7091845596141131042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P7091845596141131042

/-! ## A031879.P11502851070253650696

`filter[A018252(n+1), A145649(#)]`
-/

namespace A031879.P11502851070253650696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P11502851070253650696

/-! ## A031879.P10368924783258333160

`filter[A056653(n+1), A145649(#)]`
-/

namespace A031879.P10368924783258333160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P10368924783258333160

/-! ## A031879.P13499907549663149

`filter[A141468(n+2), A145649(#)]`
-/

namespace A031879.P13499907549663149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P13499907549663149

/-! ## A031879.P15551185250236062430

`filter[A222307(2*n+1), A145649(#)]`
-/

namespace A031879.P15551185250236062430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P15551185250236062430

/-! ## A031879.P6014120524725257347

`∩[A000959(n+1), A056653(n+1)]`
-/

namespace A031879.P6014120524725257347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031879.P6014120524725257347

/-! ## A031879.P12817289736551817501

`filter[A065090(n+1), A145649(#)]`
-/

namespace A031879.P12817289736551817501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031879.P12817289736551817501

/-!
# A031880: Lucky numbers that are both palindromic and nonprime.

The programs for A031880, there is no canonical definition to state claims against.
-/

/-! ## A031880.P6023446134295482140

`∩[A031161(n+1), A032350(n+1)]`
-/

namespace A031880.P6023446134295482140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P6023446134295482140

/-! ## A031880.P17852473175703206814

`∩[A032350(n+1), A118561(n+1)]`
-/

namespace A031880.P17852473175703206814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P17852473175703206814

/-! ## A031880.P13402775998427319072

`∩[A002113(n+1), A031879(n+1)]`
-/

namespace A031880.P13402775998427319072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P13402775998427319072

/-! ## A031880.P3939249552033126250

`∩[A029950(n+1), A031879(n+1)]`
-/

namespace A031880.P3939249552033126250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P3939249552033126250

/-! ## A031880.P12700451334501466476

`∩[A031161(n+1), A031879(n+1)]`
-/

namespace A031880.P12700451334501466476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P12700451334501466476

/-! ## A031880.P13901911865648775401

`∩[A031879(n+1), A032350(n+1)]`
-/

namespace A031880.P13901911865648775401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P13901911865648775401

/-! ## A031880.P7968727357188640090

`∩[A031879(n+1), A061917(n+1)]`
-/

namespace A031880.P7968727357188640090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P7968727357188640090

/-! ## A031880.P10362466918125439811

`∩[A000959(n+1), A032350(n+1)]`
-/

namespace A031880.P10362466918125439811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031880.P10362466918125439811

/-! ## A031880.P5063429783510843444

`record[A171435(A031161(n+1))]`
-/

namespace A031880.P5063429783510843444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A031161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031880.P5063429783510843444

/-! ## A031880.P9824259399489154736

`filter[A032350(n+1), A145649(#)]`
-/

namespace A031880.P9824259399489154736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A031880.P9824259399489154736

/-!
# A031881: Lucky numbers that are both palindromic and prime.

The programs for A031881, there is no canonical definition to state claims against.
-/

/-! ## A031881.P9016219335613137235

`∩[A002385(n+1), A031161(n+1)]`
-/

namespace A031881.P9016219335613137235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031881.P9016219335613137235

/-! ## A031881.P17094758593006627478

`∩[A031161(n+1), A072299(n+1)]`
-/

namespace A031881.P17094758593006627478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031881.P17094758593006627478

/-! ## A031881.P4090948762815062993

`∩[A031161(n+1), A232183(n+1)]`
-/

namespace A031881.P4090948762815062993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031881.P4090948762815062993

/-! ## A031881.P14085258666178607623

`∩[A031161(n+1), A180440(n+1)]`
-/

namespace A031881.P14085258666178607623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031881.P14085258666178607623

/-! ## A031881.P15743589519993729541

`∩[A002113(n+1), A031157(n+1)]`
-/

namespace A031881.P15743589519993729541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031881.P15743589519993729541

/-!
# A031882: Repdigital lucky numbers.

The programs for A031882, there is no canonical definition to state claims against.
-/

/-! ## A031882.P14776661560271218814

`∩[A031161(n+1), A048307(n)]`
-/

namespace A031882.P14776661560271218814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031882.P14776661560271218814

/-! ## A031882.P2225517340604378428

`∩[A031161(n+1), A064222(n)]`
-/

namespace A031882.P2225517340604378428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031882.P2225517340604378428

/-! ## A031882.P10339529352859539712

`∩[A031161(n+1), A048321(n+1)]`
-/

namespace A031882.P10339529352859539712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031882.P10339529352859539712

/-! ## A031882.P9203941305961046021

`∩[A031161(n+1), A095227(n+1)]`
-/

namespace A031882.P9203941305961046021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031882.P9203941305961046021

/-! ## A031882.P15767683605663671794

`∩[A031161(n+1), A096105(n+1)]`
-/

namespace A031882.P15767683605663671794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031882.P15767683605663671794

/-!
# A031883: First differences of lucky numbers.

The programs for A031883, there is no canonical definition to state claims against.
-/

/-! ## A031883.P3570141921448073242

`Δ[A000959(n+1)]`
-/

namespace A031883.P3570141921448073242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P3570141921448073242

/-! ## A031883.P2110607439307381682

`A000959(n+2)-A000959(n+1)`
-/

namespace A031883.P2110607439307381682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2) - A000959 (n + 1)

end

end A031883.P2110607439307381682

/-! ## A031883.P13442522416696124607

`Δ[∪[A031879(n+1), A043772(n+1)]]`
-/

namespace A031883.P13442522416696124607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P13442522416696124607

/-! ## A031883.P17805822959535335746

`Δ[∪[A031879(n+1), A118643(n+1)]]`
-/

namespace A031883.P17805822959535335746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P17805822959535335746

/-! ## A031883.P14797141747328251524

`Δ[∪[2*A049781(n+1)-1, A043772(n+1)]]`
-/

namespace A031883.P14797141747328251524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P14797141747328251524

/-! ## A031883.P15137136385728816003

`Δ[sqrt(A032598(n+1))]`
-/

namespace A031883.P15137136385728816003
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P15137136385728816003

/-! ## A031883.P9007482661250239969

`Δ[2*A049781(n+1)]`
-/

namespace A031883.P9007482661250239969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P9007482661250239969

/-! ## A031883.P13641738944869106138

`Δ[A139269(n+1)/2]`
-/

namespace A031883.P13641738944869106138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P13641738944869106138

/-! ## A031883.P14046845074778475836

`Δ[A032600(n+1)+A000040(n+1)]`
-/

namespace A031883.P14046845074778475836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P14046845074778475836

/-! ## A031883.P10222305876851767196

`2*(A049781(n+2)-A049781(n+1))`
-/

namespace A031883.P10222305876851767196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049781 (n + 2) - A049781 (n + 1))

end

end A031883.P10222305876851767196

/-! ## A031883.P6331825981074768322

`A001223(n+1)+A032600(n+2)-A032600(n+1)`
-/

namespace A031883.P6331825981074768322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A032600 (n + 2) - A032600 (n + 1))

end

end A031883.P6331825981074768322

/-! ## A031883.P3778928205490661737

`Δ[A046279(n+1)]-record[n*A145649(n+1)+1]`
-/

namespace A031883.P3778928205490661737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A031883.P3778928205490661737

/-! ## A031883.P13640055485298451871

`Δ[record[n*A145649(n+1)]]`
-/

namespace A031883.P13640055485298451871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P13640055485298451871

/-! ## A031883.P10324145761201926122

`Δ[lt[0, A145649(n+1)]]`
-/

namespace A031883.P10324145761201926122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P10324145761201926122

/-! ## A031883.P3692191656062948439

`Δ[A003309(n+1)-A256486(n+1)]`
-/

namespace A031883.P3692191656062948439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A256486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031883.P3692191656062948439

/-! ## A031883.P7115228500655551599

`Δ[eq[0, A260437(n+1)]]`
-/

namespace A031883.P7115228500655551599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P7115228500655551599

/-! ## A031883.P11581248192128722744

`Δ[eq[1, A260429(n+1)]]`
-/

namespace A031883.P11581248192128722744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A031883.P11581248192128722744

/-! ## A031883.P4050332325150185333

`Δ[A046279(n+1)]-(eq[1, A264940(n+1)+1]+1)`
-/

namespace A031883.P4050332325150185333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A031883.P4050332325150185333

/-!
# A031884: Smaller of a pair of consecutive lucky numbers with a gap of 2n.

The programs for A031884, there is no canonical definition to state claims against.
-/

/-! ## A031884.P14727289540493968239

`A031885(n+1)-2*(n+1)`
-/

namespace A031884.P14727289540493968239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031885 (n + 1) - (2 * (n + 1) : ℤ)

end

end A031884.P14727289540493968239

/-! ## A031884.P14969581278375453793

`A031885(n+1)-1-A005408(n)`
-/

namespace A031884.P14969581278375453793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031885 (n + 1) - 1 - A005408 n

end

end A031884.P14969581278375453793

/-! ## A031884.P7125026507704978356

`A031885(n+1)-2-A005843(n)`
-/

namespace A031884.P7125026507704978356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031885 (n + 1) - 2 - A005843 n

end

end A031884.P7125026507704978356

/-! ## A031884.P17176651457725130135

`A031885(n+1)-2-record[A014681(n)]`
-/

namespace A031884.P17176651457725130135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031885 (n + 1) - 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031884.P17176651457725130135

/-! ## A031884.P2562860029582169451

`A031885(n+1)-(n+1)-A000027(n+1)`
-/

namespace A031884.P2562860029582169451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031885 (n + 1) - (n + 1 : ℤ) - A000027 (n + 1)

end

end A031884.P2562860029582169451

/-! ## A031884.P18204565910191711366

`A000959(A181558(n+1))`
-/

namespace A031884.P18204565910191711366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A181558 (n + 1)).toNat

end

end A031884.P18204565910191711366

/-!
# A031885: Lucky numbers with smallest increasing gaps (upper terms).

The programs for A031885, there is no canonical definition to state claims against.
-/

/-! ## A031885.P10589034206668803708

`2*(n+1)+A031884(n+1)`
-/

namespace A031885.P10589034206668803708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A031884 (n + 1)

end

end A031885.P10589034206668803708

/-! ## A031885.P9922510761234735529

`A031884(n+1)+Δ[A002378(n)]`
-/

namespace A031885.P9922510761234735529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031885.P9922510761234735529

/-! ## A031885.P4063219367132640576

`A031884(n+1)+Δ[A014206(n)]`
-/

namespace A031885.P4063219367132640576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031885.P4063219367132640576

/-! ## A031885.P5706838965641657993

`A031884(n+1)+Δ[A027688(n)]`
-/

namespace A031885.P5706838965641657993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031885.P5706838965641657993

/-! ## A031885.P3553377028233607028

`A031884(n+1)+Δ[A027689(n)]`
-/

namespace A031885.P3553377028233607028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031885.P3553377028233607028

/-! ## A031885.P319275616912804478

`A031884(n+1)+Δ[A187710(n)]`
-/

namespace A031885.P319275616912804478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031885.P319275616912804478

/-! ## A031885.P15710779439762094130

`A031884(n+1)+record[A133265(n)]`
-/

namespace A031885.P15710779439762094130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031885.P15710779439762094130

/-! ## A031885.P12229584194943622229

`A031884(n+1)+A005843(n+1)`
-/

namespace A031885.P12229584194943622229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + A005843 (n + 1)

end

end A031885.P12229584194943622229

/-! ## A031885.P3659637753896267581

`A031884(n+1)+A020739(n)-4`
-/

namespace A031885.P3659637753896267581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (A020739 n - 4)

end

end A031885.P3659637753896267581

/-! ## A031885.P10813927017779793102

`A031884(n+1)+A016789(n)-n`
-/

namespace A031885.P10813927017779793102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031884 (n + 1) + (A016789 n - (n : ℤ))

end

end A031885.P10813927017779793102

/-!
# A031886: Lucky numbers with size of gaps equal to 4 (lower terms).

The programs for A031886, there is no canonical definition to state claims against.
-/

/-! ## A031886.P15637917074522992051

`A031887(n+1)-4`
-/

namespace A031886.P15637917074522992051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031887 (n + 1) - 4

end

end A031886.P15637917074522992051

/-! ## A031886.P9237345003620687262

`A090342(val(n+1, A031887(n+1))+1)+A031887(n+1)`
-/

namespace A031886.P9237345003620687262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090342 (SequenceMachineLib.valuation (n + 1) (A031887 (n + 1)).toNat + 1) + A031887 (n + 1)

end

end A031886.P9237345003620687262

/-! ## A031886.P6551971766300527466

`∩[A000959(n+1)-4, A000959(n+1)]`
-/

namespace A031886.P6551971766300527466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031886.P6551971766300527466

/-! ## A031886.P9847143280497891690

`A118827(A119413(n+1))+A031887(n+1)`
-/

namespace A031886.P9847143280497891690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (A119413 (n + 1)).toNat + A031887 (n + 1)

end

end A031886.P9847143280497891690

/-! ## A031886.P15147563846855950894

`A000959(eq[4, A031883(n+1)]+1)`
-/

namespace A031886.P15147563846855950894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031886.P15147563846855950894

/-! ## A031886.P16582693021818167517

`record[A137164(n+1)*A145649(A137164(n+1)+4)]`
-/

namespace A031886.P16582693021818167517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1) * A145649 (A137164 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031886.P16582693021818167517

/-! ## A031886.P13558625017097579109

`A004273(∩[A049781(n+1)-2, A049781(n+1)])`
-/

namespace A031886.P13558625017097579109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A031886.P13558625017097579109

/-! ## A031886.P12177873014691535634

`A269370(A031887(n+1))`
-/

namespace A031886.P12177873014691535634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031887 (n + 1)).toNat

end

end A031886.P12177873014691535634

/-! ## A031886.P2439385071021668264

`eq[A020710(n), A269369(n+1)]+1`
-/

namespace A031886.P2439385071021668264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031886.P2439385071021668264

/-!
# A031887: Lucky numbers with size of gaps equal to 4 (upper terms).

The programs for A031887, there is no canonical definition to state claims against.
-/

/-! ## A031887.P1699137708158792829

`A031886(n+1)+4`
-/

namespace A031887.P1699137708158792829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031886 (n + 1) + 4

end

end A031887.P1699137708158792829

/-! ## A031887.P3129746457838954099

`∩[A000959(n+1)+4, A000959(n+1)]`
-/

namespace A031887.P3129746457838954099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031887.P3129746457838954099

/-! ## A031887.P4974816761606616924

`A000959(eq[4, A031883(n+1)]+2)`
-/

namespace A031887.P4974816761606616924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A031887.P4974816761606616924

/-! ## A031887.P7429123410598288201

`record[A137164(n+1)*A145649(A137164(n+1)+4)]+4`
-/

namespace A031887.P7429123410598288201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137164 (n + 1) * A145649 (A137164 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A031887.P7429123410598288201

/-! ## A031887.P7876036931369553292

`A269369(A031886(n+1))`
-/

namespace A031887.P7876036931369553292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031886 (n + 1)).toNat

end

end A031887.P7876036931369553292

/-! ## A031887.P4024555003745818529

`A004273(∩[A049781(n+1)+2, A049781(n+1)])`
-/

namespace A031887.P4024555003745818529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049781 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A031887.P4024555003745818529

/-! ## A031887.P15932743493374467014

`A020710(eq[n+5, A269369(n+1)])`
-/

namespace A031887.P15932743493374467014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031887.P15932743493374467014

/-!
# A031888: Lucky numbers with size of gaps equal to 6 (lower terms).

The programs for A031888, there is no canonical definition to state claims against.
-/

/-! ## A031888.P2849278210993533619

`A031889(n+1)-6`
-/

namespace A031888.P2849278210993533619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031889 (n + 1) - 6

end

end A031888.P2849278210993533619

/-! ## A031888.P16911490632669790472

`A000959(eq[6, A000959(n+2)-A000959(n+1)]+1)`
-/

namespace A031888.P16911490632669790472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2) - A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031888.P16911490632669790472

/-! ## A031888.P7229188089142536087

`A000959(eq[6, A031883(n+1)]+1)`
-/

namespace A031888.P7229188089142536087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031888.P7229188089142536087

/-! ## A031888.P8613021170623110714

`A341832(p?[A007989(n)])+A031889(n+1)`
-/

namespace A031888.P8613021170623110714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A031889 (n + 1)

end

end A031888.P8613021170623110714

/-! ## A031888.P17779975471755815310

`A341832(A000040(n+1))+A031889(n+1)`
-/

namespace A031888.P17779975471755815310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A000040 (n + 1)).toNat + A031889 (n + 1)

end

end A031888.P17779975471755815310

/-! ## A031888.P17804120935942418284

`A269370(A031889(n+1))`
-/

namespace A031888.P17804120935942418284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031889 (n + 1)).toNat

end

end A031888.P17804120935942418284

/-! ## A031888.P78020235354976929

`A231190(A031889(n+1)+2)`
-/

namespace A031888.P78020235354976929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (A031889 (n + 1) + 2).toNat

end

end A031888.P78020235354976929

/-! ## A031888.P16672905418786266053

`eq[A020719(n), A269369(n+1)]+1`
-/

namespace A031888.P16672905418786266053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031888.P16672905418786266053

/-!
# A031889: Lucky numbers with size of gaps equal to 6 (upper terms).

The programs for A031889, there is no canonical definition to state claims against.
-/

/-! ## A031889.P8838569042316012267

`A031888(n+1)+6`
-/

namespace A031889.P8838569042316012267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031888 (n + 1) + 6

end

end A031889.P8838569042316012267

/-! ## A031889.P785331849035254015

`A000959(eq[6, A000959(n+2)-A000959(n+1)]+1)+6`
-/

namespace A031889.P785331849035254015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2) - A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 6

end

end A031889.P785331849035254015

/-! ## A031889.P15278681556342350690

`A000959(eq[6, A031883(n+1)]+2)`
-/

namespace A031889.P15278681556342350690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A031889.P15278681556342350690

/-! ## A031889.P8049539902143772446

`A269369(A031888(n+1))`
-/

namespace A031889.P8049539902143772446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031888 (n + 1)).toNat

end

end A031889.P8049539902143772446

/-! ## A031889.P612865236125038931

`A020719(eq[A020719(n), A269369(n+1)])`
-/

namespace A031889.P612865236125038931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A031889.P612865236125038931

/-!
# A031890: Lucky numbers with size of gaps equal to 8 (lower terms).

The programs for A031890, there is no canonical definition to state claims against.
-/

/-! ## A031890.P6453681762099241498

`A031891(n+1)-8`
-/

namespace A031890.P6453681762099241498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031891 (n + 1) - 8

end

end A031890.P6453681762099241498

/-! ## A031890.P3665969827168293045

`A269370(A031891(n+1))`
-/

namespace A031890.P3665969827168293045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031891 (n + 1)).toNat

end

end A031890.P3665969827168293045

/-! ## A031890.P17328788435990532309

`A023458(A031891(n+1)+8)`
-/

namespace A031890.P17328788435990532309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023458 (A031891 (n + 1) + 8).toNat

end

end A031890.P17328788435990532309

/-! ## A031890.P1303631238300132835

`A231190(lcm(3, A031891(n+1)))`
-/

namespace A031890.P1303631238300132835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (Int.lcm 3 (A031891 (n + 1)))

end

end A031890.P1303631238300132835

/-! ## A031890.P3170201239762348296

`A231190(or(1, A031891(n+1)))`
-/

namespace A031890.P3170201239762348296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (Int.lor 1 (A031891 (n + 1))).toNat

end

end A031890.P3170201239762348296

/-! ## A031890.P3965608916003513347

`A023449(xor(1, A031891(n+1)))`
-/

namespace A031890.P3965608916003513347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (Int.xor 1 (A031891 (n + 1))).toNat

end

end A031890.P3965608916003513347

/-! ## A031890.P13181662892650753038

`A231190(A031891(n+1)%A031891(n+1)²)`
-/

namespace A031890.P13181662892650753038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231190 (Int.tmod (A031891 (n + 1)) (A031891 (n + 1) ^ 2)).toNat

end

end A031890.P13181662892650753038

/-!
# A031891: Lucky numbers with size of gaps equal to 8 (upper terms).

The programs for A031891, there is no canonical definition to state claims against.
-/

/-! ## A031891.P2616514787158311152

`A031890(n+1)+8`
-/

namespace A031891.P2616514787158311152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031890 (n + 1) + 8

end

end A031891.P2616514787158311152

/-! ## A031891.P13633738750052870858

`A269369(A031890(n+1))`
-/

namespace A031891.P13633738750052870858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031890 (n + 1)).toNat

end

end A031891.P13633738750052870858

/-!
# A031892: Lucky numbers with size of gaps equal to 10 (lower terms).

The programs for A031892, there is no canonical definition to state claims against.
-/

/-! ## A031892.P17516913778963246417

`A031893(n+1)-10`
-/

namespace A031892.P17516913778963246417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031893 (n + 1) - 10

end

end A031892.P17516913778963246417

/-! ## A031892.P13255839472417981629

`A269370(A031893(n+1))`
-/

namespace A031892.P13255839472417981629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031893 (n + 1)).toNat

end

end A031892.P13255839472417981629

/-!
# A031893: Lucky numbers with size of gaps equal to 10 (upper terms).

The programs for A031893, there is no canonical definition to state claims against.
-/

/-! ## A031893.P522974734846497372

`A031892(n+1)+10`
-/

namespace A031893.P522974734846497372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031892 (n + 1) + 10

end

end A031893.P522974734846497372

/-! ## A031893.P7282422952235674638

`A269369(A031892(n+1))`
-/

namespace A031893.P7282422952235674638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031892 (n + 1)).toNat

end

end A031893.P7282422952235674638

/-!
# A031894: Lucky numbers with size of gaps equal to 12 (lower terms).

The programs for A031894, there is no canonical definition to state claims against.
-/

/-! ## A031894.P16158230010354170580

`A031895(n+1)-12`
-/

namespace A031894.P16158230010354170580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031895 (n + 1) - 12

end

end A031894.P16158230010354170580

/-! ## A031894.P12804607590790770280

`abs(A031895(-xor(n, -1))-12)`
-/

namespace A031894.P12804607590790770280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A031895 (-Int.xor (n : ℤ) (-1)).toNat - 12|

end

end A031894.P12804607590790770280

/-! ## A031894.P8565106674074658830

`A269370(A031895(n+1))`
-/

namespace A031894.P8565106674074658830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031895 (n + 1)).toNat

end

end A031894.P8565106674074658830

/-! ## A031894.P3684917561371520364

`A023458(A031895(n+1)+4)`
-/

namespace A031894.P3684917561371520364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023458 (A031895 (n + 1) + 4).toNat

end

end A031894.P3684917561371520364

/-!
# A031895: Lucky numbers with size of gaps equal to 12 (upper terms).

The programs for A031895, there is no canonical definition to state claims against.
-/

/-! ## A031895.P7804002056110775282

`A031894(n+1)+12`
-/

namespace A031895.P7804002056110775282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031894 (n + 1) + 12

end

end A031895.P7804002056110775282

/-! ## A031895.P12055761779826042804

`A269369(A031894(n+1))`
-/

namespace A031895.P12055761779826042804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031894 (n + 1)).toNat

end

end A031895.P12055761779826042804

/-!
# A031896: Lucky numbers with size of gaps equal to 14 (lower terms).

The programs for A031896, there is no canonical definition to state claims against.
-/

/-! ## A031896.P10779528803596483981

`A031897(n+1)-14`
-/

namespace A031896.P10779528803596483981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031897 (n + 1) - 14

end

end A031896.P10779528803596483981

/-! ## A031896.P11785006458328187699

`A269370(A031897(n+1))`
-/

namespace A031896.P11785006458328187699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031897 (n + 1)).toNat

end

end A031896.P11785006458328187699

/-!
# A031897: Lucky numbers with size of gaps equal to 14 (upper terms).

The programs for A031897, there is no canonical definition to state claims against.
-/

/-! ## A031897.P10204322288128930742

`A031896(n+1)+14`
-/

namespace A031897.P10204322288128930742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031896 (n + 1) + 14

end

end A031897.P10204322288128930742

/-! ## A031897.P801191102280029056

`A269369(A031896(n+1))`
-/

namespace A031897.P801191102280029056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031896 (n + 1)).toNat

end

end A031897.P801191102280029056

/-!
# A031898: Lucky numbers with size of gaps equal to 16 (lower terms).

The programs for A031898, there is no canonical definition to state claims against.
-/

/-! ## A031898.P1016219205168279346

`A031899(n+1)-16`
-/

namespace A031898.P1016219205168279346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031899 (n + 1) - 16

end

end A031898.P1016219205168279346

/-! ## A031898.P9926161260017777573

`A269370(A031899(n+1))`
-/

namespace A031898.P9926161260017777573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031899 (n + 1)).toNat

end

end A031898.P9926161260017777573

/-!
# A031899: Lucky numbers with size of gaps equal to 16 (upper terms).

The programs for A031899, there is no canonical definition to state claims against.
-/

/-! ## A031899.P16948833649624237765

`A031898(n+1)+16`
-/

namespace A031899.P16948833649624237765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031898 (n + 1) + 16

end

end A031899.P16948833649624237765

/-! ## A031899.P8208146116805016237

`A269369(A031898(n+1))`
-/

namespace A031899.P8208146116805016237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031898 (n + 1)).toNat

end

end A031899.P8208146116805016237

