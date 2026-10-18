import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
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
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A166602: Numbers k such that Sum_{i=1..k} i^2 divides Product_{i=1..k} i^2.

The programs for A166602, the canonical program `A166602.P5138221118942487946` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166602 has offset 1).

The definition of A166602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166602.P806405690845554233

`eq[A061397(n+1), A101808(n)]`
-/

namespace A166602.P806405690845554233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P806405690845554233

namespace A166602

/-- `eq[A061397(n+1), A101808(n)]` -/
def P806405690845554233.Spec : Prop :=
  ∀ n, (P806405690845554233.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P5138221118942487946

`eq[A072230(n+1), A101808(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166602

/-- `eq[A072230(n+1), A101808(n)]` -/
def P5138221118942487946.Spec : Prop :=
  ∀ n, (P5138221118942487946.a n : ℤ) = A166602 (n + 1)

theorem P5138221118942487946.correct : P5138221118942487946.Spec := by
  intro n
  simp only [A166602, Nat.add_sub_cancel]

end A166602

/-! ## A166602.P14492148584154737430

`eq[A101808(n), A269668(n+1)]`
-/

namespace A166602.P14492148584154737430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P14492148584154737430

namespace A166602

/-- `eq[A101808(n), A269668(n+1)]` -/
def P14492148584154737430.Spec : Prop :=
  ∀ n, (P14492148584154737430.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P17342197395604068621

`eq[A080339(n+1), A283362(n+1)]`
-/

namespace A166602.P17342197395604068621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P17342197395604068621

namespace A166602

/-- `eq[A080339(n+1), A283362(n+1)]` -/
def P17342197395604068621.Spec : Prop :=
  ∀ n, (P17342197395604068621.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P9961428273125724745

`eq[A267133(n+1), A283362(n+1)]`
-/

namespace A166602.P9961428273125724745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P9961428273125724745

namespace A166602

/-- `eq[A267133(n+1), A283362(n+1)]` -/
def P9961428273125724745.Spec : Prop :=
  ∀ n, (P9961428273125724745.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P1301036887254935648

`eq[A283362(n+1), A324642(n+1)]`
-/

namespace A166602.P1301036887254935648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P1301036887254935648

namespace A166602

/-- `eq[A283362(n+1), A324642(n+1)]` -/
def P1301036887254935648.Spec : Prop :=
  ∀ n, (P1301036887254935648.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P12245557963673069304

`eq[2*A029832(n+1), A101808(n)]`
-/

namespace A166602.P12245557963673069304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P12245557963673069304

namespace A166602

/-- `eq[2*A029832(n+1), A101808(n)]` -/
def P12245557963673069304.Spec : Prop :=
  ∀ n, (P12245557963673069304.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P9680301960144428847

`eq[2*A049084(n+1), A101808(n)]`
-/

namespace A166602.P9680301960144428847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P9680301960144428847

namespace A166602

/-- `eq[2*A049084(n+1), A101808(n)]` -/
def P9680301960144428847.Spec : Prop :=
  ∀ n, (P9680301960144428847.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P12052067880355148278

`eq[A061397(n+2), A096500(2*(n+1))]+1`
-/

namespace A166602.P12052067880355148278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166602.P12052067880355148278

namespace A166602

/-- `eq[A061397(n+2), A096500(2*(n+1))]+1` -/
def P12052067880355148278.Spec : Prop :=
  ∀ n, (P12052067880355148278.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P16885696407538281220

`eq[A061397(n+2), A109578(2*(n+1))]+1`
-/

namespace A166602.P16885696407538281220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166602.P16885696407538281220

namespace A166602

/-- `eq[A061397(n+2), A109578(2*(n+1))]+1` -/
def P16885696407538281220.Spec : Prop :=
  ∀ n, (P16885696407538281220.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P14604242431702996151

`eq[A061397(n+2), A278500(2*(n+1))]+1`
-/

namespace A166602.P14604242431702996151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166602.P14604242431702996151

namespace A166602

/-- `eq[A061397(n+2), A278500(2*(n+1))]+1` -/
def P14604242431702996151.Spec : Prop :=
  ∀ n, (P14604242431702996151.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P17018817791222155794

`eq[2*A055672(n+1), A339579(2*(n+1))]`
-/

namespace A166602.P17018817791222155794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P17018817791222155794

namespace A166602

/-- `eq[2*A055672(n+1), A339579(2*(n+1))]` -/
def P17018817791222155794.Spec : Prop :=
  ∀ n, (P17018817791222155794.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P2327545815427551959

`eq[A010051(2*n+1)+A010051(2*(n+1)), A055672(n+1)]`
-/

namespace A166602.P2327545815427551959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) + A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P2327545815427551959

namespace A166602

/-- `eq[A010051(2*n+1)+A010051(2*(n+1)), A055672(n+1)]` -/
def P2327545815427551959.Spec : Prop :=
  ∀ n, (P2327545815427551959.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P611886675313097812

`eq[A029833(n+1), A283616(n+1)]`
-/

namespace A166602.P611886675313097812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P611886675313097812

namespace A166602

/-- `eq[A029833(n+1), A283616(n+1)]` -/
def P611886675313097812.Spec : Prop :=
  ∀ n, (P611886675313097812.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P9299866863453277885

`eq[A055672(n+1), A283616(n+1)]`
-/

namespace A166602.P9299866863453277885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P9299866863453277885

namespace A166602

/-- `eq[A055672(n+1), A283616(n+1)]` -/
def P9299866863453277885.Spec : Prop :=
  ∀ n, (P9299866863453277885.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P4502452905979157246

`eq[A283616(n+1), A285701(n+1)]`
-/

namespace A166602.P4502452905979157246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P4502452905979157246

namespace A166602

/-- `eq[A283616(n+1), A285701(n+1)]` -/
def P4502452905979157246.Spec : Prop :=
  ∀ n, (P4502452905979157246.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P10514851836019283843

`eq[A283616(n+1), A292936(n+1)]`
-/

namespace A166602.P10514851836019283843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P10514851836019283843

namespace A166602

/-- `eq[A283616(n+1), A292936(n+1)]` -/
def P10514851836019283843.Spec : Prop :=
  ∀ n, (P10514851836019283843.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P8929532857401206468

`eq[A283616(n+1), A324642(n+1)]`
-/

namespace A166602.P8929532857401206468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P8929532857401206468

namespace A166602

/-- `eq[A283616(n+1), A324642(n+1)]` -/
def P8929532857401206468.Spec : Prop :=
  ∀ n, (P8929532857401206468.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P14588716606256935500

`eq[A061397(n+1)/2, A283616(n+1)]`
-/

namespace A166602.P14588716606256935500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061397 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A166602.P14588716606256935500

namespace A166602

/-- `eq[A061397(n+1)/2, A283616(n+1)]` -/
def P14588716606256935500.Spec : Prop :=
  ∀ n, (P14588716606256935500.a n : ℤ) = A166602 (n + 1)

end A166602

/-! ## A166602.P7164507293259400545

`eq[A055672(n+1), A080339(2*n+1)]`
-/

namespace A166602.P7164507293259400545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166602.P7164507293259400545

namespace A166602

/-- `eq[A055672(n+1), A080339(2*n+1)]` -/
def P7164507293259400545.Spec : Prop :=
  ∀ n, (P7164507293259400545.a n : ℤ) = A166602 (n + 1)

end A166602

/-!
# A166603: Number of reduced words of length n in Coxeter group on 21 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166603, there is no canonical definition to state claims against.
-/

/-! ## A166603.P15661880395073405673

`record[20*a(floor((n-1)/3))]` with `a(0)=1, a(1)=21`
-/

namespace A166603.P15661880395073405673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  20 * f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166603.P15661880395073405673

/-! ## A166603.P12758279550969093993

`20*a(n-1)-A010815(∑[n²]+C(n², 2))` with `a(0)=1`
-/

namespace A166603.P12758279550969093993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  20 * a (n - 1) - A010815 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2) 2)

end

end A166603.P12758279550969093993

/-! ## A166603.P13800802076195225657

`20*a(n-1-A133872(A126646(n+1)))` with `a(0)=1, a(1)=21`
-/

namespace A166603.P13800802076195225657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * a ((n : ℤ) - 1 - A133872 (A126646 (n + 1)).toNat).toNat

end

end A166603.P13800802076195225657

/-! ## A166603.P10244193123349040091

`A124443(A167040(n))*A167074(n)`
-/

namespace A166603.P10244193123349040091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124443 (A167040 n).toNat * A167074 n

end

end A166603.P10244193123349040091

/-!
# A166604: Numbers k such that Sum_{i=1..k} i^4 divides Product_{i=1..k} i^4.

The programs for A166604, there is no canonical definition to state claims against.
-/

/-! ## A166604.P405311135310344395

`record[n+2-A181426(n+1)]`
-/

namespace A166604.P405311135310344395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A181426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166604.P405311135310344395

/-! ## A166604.P594611082007935293

`lt[A181426(A028310(n)), A286619(n)]`
-/

namespace A166604.P594611082007935293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181426 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166604.P594611082007935293

/-! ## A166604.P17897769980466570973

`lt[A181426(A028310(n)), A001462(n+1)]`
-/

namespace A166604.P17897769980466570973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181426 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166604.P17897769980466570973

/-! ## A166604.P5077051277501316054

`lt[A181426(A028310(n)), A156253(n+1)]`
-/

namespace A166604.P5077051277501316054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181426 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166604.P5077051277501316054

/-! ## A166604.P14589101089825517385

`lt[A181426(A028310(n)), A090624(n+2)]`
-/

namespace A166604.P14589101089825517385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181426 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090624 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A166604.P14589101089825517385

/-!
# A166605: Numbers k such that Sum_{i=1..k} i^5 divides Product_{i=1..k} i^5.

The programs for A166605, there is no canonical definition to state claims against.
-/

/-! ## A166605.P1285805700793606264

`A349826(A002275(n))+A056255(n+1)`
-/

namespace A166605.P1285805700793606264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349826 (A002275 n).toNat + A056255 (n + 1)

end

end A166605.P1285805700793606264

/-!
# A166612: Number of reduced words of length n in Coxeter group on 25 generators S_i with relations (S_i)^2 = (S_i S_j)^12 = I.

The programs for A166612, there is no canonical definition to state claims against.
-/

/-! ## A166612.P14444636525081863633

`record[24*a(floor((n-1)/3))]` with `a(0)=1, a(1)=25`
-/

namespace A166612.P14444636525081863633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  24 * f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166612.P14444636525081863633

/-! ## A166612.P12112406656436486420

`24*a(A324662(∑[n])-1)` with `a(0)=1, a(1)=25`
-/

namespace A166612.P12112406656436486420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n a =>
  24 * a (A324662 (∑ j ∈ Finset.range (n + 1), f1 j) - 1).toNat

end

end A166612.P12112406656436486420

/-!
# A166619: Primes in A105720.

The programs for A166619, there is no canonical definition to state claims against.
-/

/-! ## A166619.P8001902307955785397

`A105720(A166620(n+1))`
-/

namespace A166619.P8001902307955785397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (A166620 (n + 1)).toNat

end

end A166619.P8001902307955785397

/-! ## A166619.P4268341943680299549

`p?[A105720(n+1)]`
-/

namespace A166619.P4268341943680299549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166619.P4268341943680299549

/-! ## A166619.P10500747062979036075

`p?[Δ[A023862(n+1)]]`
-/

namespace A166619.P10500747062979036075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166619.P10500747062979036075

/-! ## A166619.P10207312720563300925

`p?[A109722(n+1)-A007504(n)]`
-/

namespace A166619.P10207312720563300925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166619.P10207312720563300925

/-! ## A166619.P9742117300276051630

`p?[A131740(n+1)+p?[A131732(n)]]`
-/

namespace A166619.P9742117300276051630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166619.P9742117300276051630

/-!
# A166620: Positions of primes in A105720.

The programs for A166620, there is no canonical definition to state claims against.
-/

/-! ## A166620.P11760439154439308781

`eq[2, A000005(A105720(n+1))]+1`
-/

namespace A166620.P11760439154439308781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A105720 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166620.P11760439154439308781

/-!
# A166621: a(n) = 10*n - a(n-1), with n>1, a(1)=5.

The programs for A166621, the canonical program `A166621.P8559102465399384594` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166621 has offset 1).

The definition of A166621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)-a(n-1)` (program `A166621.P8559102465399384594`, by `A166621.P8559102465399384594.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166621.P8559102465399384594

`10*(n+1)-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166621

/-- `10*(n+1)-a(n-1)` -/
def P8559102465399384594.Spec : Prop :=
  ∀ n, P8559102465399384594.a n = A166621 (n + 1)

theorem P8559102465399384594.correct : P8559102465399384594.Spec := by
  intro n
  simp only [A166621, Nat.add_sub_cancel]

end A166621

/-! ## A166621.P2316318824170405675

`5*or(1, n+1)`
-/

namespace A166621.P2316318824170405675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 (n + 1)

end

end A166621.P2316318824170405675

namespace A166621

/-- `5*or(1, n+1)` -/
def P2316318824170405675.Spec : Prop :=
  ∀ n, (P2316318824170405675.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P12129148636527903391

`a(n-2)+10` with `a(0)=5, a(1)=15`
-/

namespace A166621.P12129148636527903391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 15] fun n a =>
  a (n - 2) + 10

end

end A166621.P12129148636527903391

namespace A166621

/-- `a(n-2)+10` -/
def P12129148636527903391.Spec : Prop :=
  ∀ n, (P12129148636527903391.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P8185060773299226605

`5*(2-or(1, -n))`
-/

namespace A166621.P8185060773299226605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (2 - Int.lor 1 (-(n : ℤ)))

end

end A166621.P8185060773299226605

namespace A166621

/-- `5*(2-or(1, -n))` -/
def P8185060773299226605.Spec : Prop :=
  ∀ n, P8185060773299226605.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P2219729765823733174

`10*ceil(n/2)+5`
-/

namespace A166621.P2219729765823733174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌈(n : ℚ) / 2⌉ + 5

end

end A166621.P2219729765823733174

namespace A166621

/-- `10*ceil(n/2)+5` -/
def P2219729765823733174.Spec : Prop :=
  ∀ n, P2219729765823733174.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P539998855012958200

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=10, a(2)=0`
-/

namespace A166621.P539998855012958200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 10, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166621.P539998855012958200

namespace A166621

/-- `∑[abs(a(n-2))]` -/
def P539998855012958200.Spec : Prop :=
  ∀ n, (P539998855012958200.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P2275141173449013312

`∑[10-a(n-1)]` with `a(0)=5, a(1)=10`
-/

namespace A166621.P2275141173449013312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166621.P2275141173449013312

namespace A166621

/-- `∑[10-a(n-1)]` -/
def P2275141173449013312.Spec : Prop :=
  ∀ n, P2275141173449013312.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P4223168818296357898

`5*(n%2+1+n)`
-/

namespace A166621.P4223168818296357898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2 + 1 + n)

end

end A166621.P4223168818296357898

namespace A166621

/-- `5*(n%2+1+n)` -/
def P4223168818296357898.Spec : Prop :=
  ∀ n, (P4223168818296357898.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P5193251558604829215

`5*(gcd(2, n+1)+n)`
-/

namespace A166621.P5193251558604829215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.gcd 2 (n + 1) + n)

end

end A166621.P5193251558604829215

namespace A166621

/-- `5*(gcd(2, n+1)+n)` -/
def P5193251558604829215.Spec : Prop :=
  ∀ n, (P5193251558604829215.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P19462776655614817

`5*(and(1, n)+1+n)`
-/

namespace A166621.P19462776655614817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (Nat.land 1 n + 1 + n)

end

end A166621.P19462776655614817

namespace A166621

/-- `5*(and(1, n)+1+n)` -/
def P19462776655614817.Spec : Prop :=
  ∀ n, (P19462776655614817.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P10520458519148395604

`∑[∑[ogf((5+10x-5x^2)/(1+x))]]`
-/

namespace A166621.P10520458519148395604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 10, -5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166621.P10520458519148395604

namespace A166621

/-- `∑[∑[ogf((5+10x-5x^2)/(1+x))]]` -/
def P10520458519148395604.Spec : Prop :=
  ∀ n, P10520458519148395604.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P2636092286902727204

`ogf((5+10x-5x^2)/(1-x-x^2+x^3))`
-/

namespace A166621.P2636092286902727204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 10, -5] [1, -1, -1, 1] n

end

end A166621.P2636092286902727204

namespace A166621

/-- `ogf((5+10x-5x^2)/(1-x-x^2+x^3))` -/
def P2636092286902727204.Spec : Prop :=
  ∀ n, P2636092286902727204.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P5754198323106006756

`5/or(1, n+1)^-1`
-/

namespace A166621.P5754198323106006756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (Nat.lor 1 (n + 1) : ℚ) ^ (-1 : ℤ)

end

end A166621.P5754198323106006756

namespace A166621

/-- `5/or(1, n+1)^-1` -/
def P5754198323106006756.Spec : Prop :=
  ∀ n, P5754198323106006756.a n = (A166621 (n + 1) : ℚ)

end A166621

/-! ## A166621.P4602332943417709194

`abs(5*or(1, 2*n-(n-1)))`
-/

namespace A166621.P4602332943417709194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * Int.lor 1 ((2 * n : ℤ) - ((n : ℤ) - 1))|

end

end A166621.P4602332943417709194

namespace A166621

/-- `abs(5*or(1, 2*n-(n-1)))` -/
def P4602332943417709194.Spec : Prop :=
  ∀ n, P4602332943417709194.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P5520948228605241938

`∑[n+1]/∑[(n+1)%2/5]`
-/

namespace A166621.P5520948228605241938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A166621.P5520948228605241938

namespace A166621

/-- `∑[n+1]/∑[(n+1)%2/5]` -/
def P5520948228605241938.Spec : Prop :=
  ∀ n, P5520948228605241938.a n = (A166621 (n + 1) : ℚ)

end A166621

/-! ## A166621.P7430034242077952275

`A017329(ceil(n/2))`
-/

namespace A166621.P7430034242077952275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 ⌈(n : ℚ) / 2⌉.toNat

end

end A166621.P7430034242077952275

namespace A166621

/-- `A017329(ceil(n/2))` -/
def P7430034242077952275.Spec : Prop :=
  ∀ n, P7430034242077952275.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P16086870122172202355

`∑[C(5, A141056(n))]`
-/

namespace A166621.P16086870122172202355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A141056 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166621.P16086870122172202355

namespace A166621

/-- `∑[C(5, A141056(n))]` -/
def P16086870122172202355.Spec : Prop :=
  ∀ n, (P16086870122172202355.a n : ℤ) = A166621 (n + 1)

end A166621

/-! ## A166621.P11632669145733381345

`5*A109613(n+1)`
-/

namespace A166621.P11632669145733381345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A109613 (n + 1)

end

end A166621.P11632669145733381345

namespace A166621

/-- `5*A109613(n+1)` -/
def P11632669145733381345.Spec : Prop :=
  ∀ n, P11632669145733381345.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P13497253526839930937

`5*(A000034(n)+n)`
-/

namespace A166621.P13497253526839930937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A000034 n + (n : ℤ))

end

end A166621.P13497253526839930937

namespace A166621

/-- `5*(A000034(n)+n)` -/
def P13497253526839930937.Spec : Prop :=
  ∀ n, P13497253526839930937.a n = A166621 (n + 1)

end A166621

/-! ## A166621.P12438712683203669491

`xor(1, A168457(n+1)+2)`
-/

namespace A166621.P12438712683203669491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A168457 (n + 1) + 2)

end

end A166621.P12438712683203669491

namespace A166621

/-- `xor(1, A168457(n+1)+2)` -/
def P12438712683203669491.Spec : Prop :=
  ∀ n, P12438712683203669491.a n = A166621 (n + 1)

end A166621

/-!
# A166624: Totally multiplicative sequence with a(p) = 3p for prime p.

The programs for A166624, the canonical program `A166624.P1659616277658723869` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166624 has offset 1).

The definition of A166624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165824, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166624.P1659616277658723869

`(n+1)*A165824(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166624

/-- `(n+1)*A165824(n+1)` -/
def P1659616277658723869.Spec : Prop :=
  ∀ n, P1659616277658723869.a n = A166624 (n + 1)

theorem P1659616277658723869.correct : P1659616277658723869.Spec := by
  intro n
  simp only [A166624, Nat.add_sub_cancel]

end A166624

/-! ## A166624.P6124365532050878719

`(n+1)*3^A001222(n+1)`
-/

namespace A166624.P6124365532050878719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (3 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166624.P6124365532050878719

namespace A166624

/-- `(n+1)*3^A001222(n+1)` -/
def P6124365532050878719.Spec : Prop :=
  ∀ n, P6124365532050878719.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P17494057598008706992

`(n+1)*3^∑{e}[n+1, #]`
-/

namespace A166624.P17494057598008706992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166624.P17494057598008706992

namespace A166624

/-- `(n+1)*3^∑{e}[n+1, #]` -/
def P17494057598008706992.Spec : Prop :=
  ∀ n, (P17494057598008706992.a n : ℤ) = A166624 (n + 1)

end A166624

/-! ## A166624.P7826426312185094966

`(n+1)*∏{e}[n+1, 3^#]`
-/

namespace A166624.P7826426312185094966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p)

end

end A166624.P7826426312185094966

namespace A166624

/-- `(n+1)*∏{e}[n+1, 3^#]` -/
def P7826426312185094966.Spec : Prop :=
  ∀ n, (P7826426312185094966.a n : ℤ) = A166624 (n + 1)

end A166624

/-! ## A166624.P9024860064387324032

`(n+1)/3^∑{e}[n+1, -#]`
-/

namespace A166624.P9024860064387324032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ)

end

end A166624.P9024860064387324032

namespace A166624

/-- `(n+1)/3^∑{e}[n+1, -#]` -/
def P9024860064387324032.Spec : Prop :=
  ∀ n, P9024860064387324032.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P8469063023952958964

`(n+1)/∏{e}[n+1, 3^-#]`
-/

namespace A166624.P8469063023952958964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (3 : ℚ) ^ (-(Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A166624.P8469063023952958964

namespace A166624

/-- `(n+1)/∏{e}[n+1, 3^-#]` -/
def P8469063023952958964.Spec : Prop :=
  ∀ n, P8469063023952958964.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P16928435775537552981

`(n+1)*sqrt(A165830(n+1))`
-/

namespace A166624.P16928435775537552981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165830 (n + 1) : ℝ)

end

end A166624.P16928435775537552981

namespace A166624

/-- `(n+1)*sqrt(A165830(n+1))` -/
def P16928435775537552981.Spec : Prop :=
  ∀ n, P16928435775537552981.a n = (A166624 (n + 1) : ℝ)

end A166624

/-! ## A166624.P1309025930161840939

`sqrt((n+1)*A166630(n+1))`
-/

namespace A166624.P1309025930161840939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A166630 (n + 1) : ℝ)

end

end A166624.P1309025930161840939

namespace A166624

/-- `sqrt((n+1)*A166630(n+1))` -/
def P1309025930161840939.Spec : Prop :=
  ∀ n, P1309025930161840939.a n = (A166624 (n + 1) : ℝ)

end A166624

/-! ## A166624.P9780944796146871809

`(n+1)*3^Δ[A022559(n)]`
-/

namespace A166624.P9780944796146871809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A166624.P9780944796146871809

namespace A166624

/-- `(n+1)*3^Δ[A022559(n)]` -/
def P9780944796146871809.Spec : Prop :=
  ∀ n, P9780944796146871809.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P4888258883902669353

`(n+1)*A000244(∑{e}[n+1, #])`
-/

namespace A166624.P4888258883902669353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000244 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166624.P4888258883902669353

namespace A166624

/-- `(n+1)*A000244(∑{e}[n+1, #])` -/
def P4888258883902669353.Spec : Prop :=
  ∀ n, P4888258883902669353.a n = A166624 (n + 1)

end A166624

/-! ## A166624.P7625283836050483415

`(n+1)*sqrt(A001019(∑{e}[n+1, #]))`
-/

namespace A166624.P7625283836050483415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A001019 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)

end

end A166624.P7625283836050483415

namespace A166624

/-- `(n+1)*sqrt(A001019(∑{e}[n+1, #]))` -/
def P7625283836050483415.Spec : Prop :=
  ∀ n, P7625283836050483415.a n = (A166624 (n + 1) : ℝ)

end A166624

/-! ## A166624.P8967724004702995036

`(n+1)*A000244(A001222(n+1))`
-/

namespace A166624.P8967724004702995036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000244 (A001222 (n + 1)).toNat

end

end A166624.P8967724004702995036

namespace A166624

/-- `(n+1)*A000244(A001222(n+1))` -/
def P8967724004702995036.Spec : Prop :=
  ∀ n, P8967724004702995036.a n = A166624 (n + 1)

end A166624

/-! ## A166624.P17063709956888729807

`(n+1)*A003959(A061142(n+1))`
-/

namespace A166624.P17063709956888729807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003959 (A061142 (n + 1)).toNat

end

end A166624.P17063709956888729807

namespace A166624

/-- `(n+1)*A003959(A061142(n+1))` -/
def P17063709956888729807.Spec : Prop :=
  ∀ n, P17063709956888729807.a n = A166624 (n + 1)

end A166624

/-! ## A166624.P8300719076136355504

`(n+1)*A133494(A073093(n+1))`
-/

namespace A166624.P8300719076136355504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A133494 (A073093 (n + 1)).toNat

end

end A166624.P8300719076136355504

namespace A166624

/-- `(n+1)*A133494(A073093(n+1))` -/
def P8300719076136355504.Spec : Prop :=
  ∀ n, P8300719076136355504.a n = A166624 (n + 1)

end A166624

/-! ## A166624.P1323393959006576747

`A166627(n+1)/A061142(n+1)`
-/

namespace A166624.P1323393959006576747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166627 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166624.P1323393959006576747

namespace A166624

/-- `A166627(n+1)/A061142(n+1)` -/
def P1323393959006576747.Spec : Prop :=
  ∀ n, P1323393959006576747.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P10885819118166015784

`A166630(n+1)/A165824(n+1)`
-/

namespace A166624.P10885819118166015784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166630 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166624.P10885819118166015784

namespace A166624

/-- `A166630(n+1)/A165824(n+1)` -/
def P10885819118166015784.Spec : Prop :=
  ∀ n, P10885819118166015784.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P883023905099745356

`gcd(A166627(n+1), A166630(n+1))`
-/

namespace A166624.P883023905099745356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166627 (n + 1)) (A166630 (n + 1))

end

end A166624.P883023905099745356

namespace A166624

/-- `gcd(A166627(n+1), A166630(n+1))` -/
def P883023905099745356.Spec : Prop :=
  ∀ n, (P883023905099745356.a n : ℤ) = A166624 (n + 1)

end A166624

/-! ## A166624.P13038796219856683467

`A166626(n+1)*A166633(n+1)/A166635(n+1)`
-/

namespace A166624.P13038796219856683467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166626 (n + 1) * A166633 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ)

end

end A166624.P13038796219856683467

namespace A166624

/-- `A166626(n+1)*A166633(n+1)/A166635(n+1)` -/
def P13038796219856683467.Spec : Prop :=
  ∀ n, P13038796219856683467.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P8934136786071736645

`A165827(n+1)/A167321(n+1)*A167342(n+1)`
-/

namespace A166624.P8934136786071736645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167342 (n + 1) : ℚ)

end

end A166624.P8934136786071736645

namespace A166624

/-- `A165827(n+1)/A167321(n+1)*A167342(n+1)` -/
def P8934136786071736645.Spec : Prop :=
  ∀ n, P8934136786071736645.a n = (A166624 (n + 1) : ℚ)

end A166624

/-! ## A166624.P14521293189449223066

`A165830(n+1)/A167322(n+1)*A167342(n+1)`
-/

namespace A166624.P14521293189449223066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165830 (n + 1) : ℚ) / (A167322 (n + 1) : ℚ) * (A167342 (n + 1) : ℚ)

end

end A166624.P14521293189449223066

namespace A166624

/-- `A165830(n+1)/A167322(n+1)*A167342(n+1)` -/
def P14521293189449223066.Spec : Prop :=
  ∀ n, P14521293189449223066.a n = (A166624 (n + 1) : ℚ)

end A166624

/-!
# A166625: Totally multiplicative sequence with a(p) = 4p for prime p.

The programs for A166625, the canonical program `A166625.P7535181027789046858` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166625 has offset 1).

The definition of A166625 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165825, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166625.P7535181027789046858

`(n+1)*A165825(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166625

/-- `(n+1)*A165825(n+1)` -/
def P7535181027789046858.Spec : Prop :=
  ∀ n, P7535181027789046858.a n = A166625 (n + 1)

theorem P7535181027789046858.correct : P7535181027789046858.Spec := by
  intro n
  simp only [A166625, Nat.add_sub_cancel]

end A166625

/-! ## A166625.P16605658629522392838

`(n+1)*4^A001222(n+1)`
-/

namespace A166625.P16605658629522392838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (4 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166625.P16605658629522392838

namespace A166625

/-- `(n+1)*4^A001222(n+1)` -/
def P16605658629522392838.Spec : Prop :=
  ∀ n, P16605658629522392838.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P17541589397894293035

`(n+1)*4^∑{e}[n+1, #]`
-/

namespace A166625.P17541589397894293035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166625.P17541589397894293035

namespace A166625

/-- `(n+1)*4^∑{e}[n+1, #]` -/
def P17541589397894293035.Spec : Prop :=
  ∀ n, (P17541589397894293035.a n : ℤ) = A166625 (n + 1)

end A166625

/-! ## A166625.P6870414772045880745

`(n+1)*∏{e}[n+1, 4^#]`
-/

namespace A166625.P6870414772045880745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p)

end

end A166625.P6870414772045880745

namespace A166625

/-- `(n+1)*∏{e}[n+1, 4^#]` -/
def P6870414772045880745.Spec : Prop :=
  ∀ n, (P6870414772045880745.a n : ℤ) = A166625 (n + 1)

end A166625

/-! ## A166625.P17224403915673431261

`(n+1)/4^∑{e}[n+1, -#]`
-/

namespace A166625.P17224403915673431261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (4 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ)

end

end A166625.P17224403915673431261

namespace A166625

/-- `(n+1)/4^∑{e}[n+1, -#]` -/
def P17224403915673431261.Spec : Prop :=
  ∀ n, P17224403915673431261.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P12256273301877211158

`(n+1)/∏{e}[n+1, 4^-#]`
-/

namespace A166625.P12256273301877211158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (4 : ℚ) ^ (-(Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A166625.P12256273301877211158

namespace A166625

/-- `(n+1)/∏{e}[n+1, 4^-#]` -/
def P12256273301877211158.Spec : Prop :=
  ∀ n, P12256273301877211158.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P18098301951211026840

`(n+1)*A061142(n+1)²`
-/

namespace A166625.P18098301951211026840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061142 (n + 1) ^ 2

end

end A166625.P18098301951211026840

namespace A166625

/-- `(n+1)*A061142(n+1)²` -/
def P18098301951211026840.Spec : Prop :=
  ∀ n, P18098301951211026840.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P12947641210568111839

`(n+1)*A165872(n+1)²`
-/

namespace A166625.P12947641210568111839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165872 (n + 1) ^ 2

end

end A166625.P12947641210568111839

namespace A166625

/-- `(n+1)*A165872(n+1)²` -/
def P12947641210568111839.Spec : Prop :=
  ∀ n, P12947641210568111839.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P10938176453023194292

`A123667(n+1)²/(n+1)`
-/

namespace A166625.P10938176453023194292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A166625.P10938176453023194292

namespace A166625

/-- `A123667(n+1)²/(n+1)` -/
def P10938176453023194292.Spec : Prop :=
  ∀ n, P10938176453023194292.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P13324299213124112452

`(n+1)*sqrt(A165837(n+1))`
-/

namespace A166625.P13324299213124112452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165837 (n + 1) : ℝ)

end

end A166625.P13324299213124112452

namespace A166625

/-- `(n+1)*sqrt(A165837(n+1))` -/
def P13324299213124112452.Spec : Prop :=
  ∀ n, P13324299213124112452.a n = (A166625 (n + 1) : ℝ)

end A166625

/-! ## A166625.P6577572397541483137

`(n+1)*2^A255201(n+1)`
-/

namespace A166625.P6577572397541483137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A166625.P6577572397541483137

namespace A166625

/-- `(n+1)*2^A255201(n+1)` -/
def P6577572397541483137.Spec : Prop :=
  ∀ n, P6577572397541483137.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P6703756825300407369

`(n+1)*A000302(∑{e}[n+1, #])`
-/

namespace A166625.P6703756825300407369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000302 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166625.P6703756825300407369

namespace A166625

/-- `(n+1)*A000302(∑{e}[n+1, #])` -/
def P6703756825300407369.Spec : Prop :=
  ∀ n, P6703756825300407369.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P6943442218320475557

`(n+1)*A000079(∑{e}[n+1, #])²`
-/

namespace A166625.P6943442218320475557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A166625.P6943442218320475557

namespace A166625

/-- `(n+1)*A000079(∑{e}[n+1, #])²` -/
def P6943442218320475557.Spec : Prop :=
  ∀ n, P6943442218320475557.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P707161806522029560

`(n+1)*A000302(A001222(n+1))`
-/

namespace A166625.P707161806522029560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000302 (A001222 (n + 1)).toNat

end

end A166625.P707161806522029560

namespace A166625

/-- `(n+1)*A000302(A001222(n+1))` -/
def P707161806522029560.Spec : Prop :=
  ∀ n, P707161806522029560.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P8134878430990163047

`A061142(n+1)*A123667(n+1)`
-/

namespace A166625.P8134878430990163047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A123667 (n + 1)

end

end A166625.P8134878430990163047

namespace A166625

/-- `A061142(n+1)*A123667(n+1)` -/
def P8134878430990163047.Spec : Prop :=
  ∀ n, P8134878430990163047.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P15418588307731055924

`(n+1)*A278254(A068794(n+1))`
-/

namespace A166625.P15418588307731055924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A278254 (A068794 (n + 1)).toNat

end

end A166625.P15418588307731055924

namespace A166625

/-- `(n+1)*A278254(A068794(n+1))` -/
def P15418588307731055924.Spec : Prop :=
  ∀ n, P15418588307731055924.a n = A166625 (n + 1)

end A166625

/-! ## A166625.P5821037476645893553

`A166629(n+1)/A061142(n+1)`
-/

namespace A166625.P5821037476645893553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166629 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166625.P5821037476645893553

namespace A166625

/-- `A166629(n+1)/A061142(n+1)` -/
def P5821037476645893553.Spec : Prop :=
  ∀ n, P5821037476645893553.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P12818844630604106540

`A166627(n+1)²/A166630(n+1)`
-/

namespace A166625.P12818844630604106540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166627 (n + 1) ^ 2 : ℚ) / (A166630 (n + 1) : ℚ)

end

end A166625.P12818844630604106540

namespace A166625

/-- `A166627(n+1)²/A166630(n+1)` -/
def P12818844630604106540.Spec : Prop :=
  ∀ n, P12818844630604106540.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P14573168971177612787

`A123667(n+1)/A000005(n+1)*A328854(n+1)`
-/

namespace A166625.P14573168971177612787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A328854 (n + 1) : ℚ)

end

end A166625.P14573168971177612787

namespace A166625

/-- `A123667(n+1)/A000005(n+1)*A328854(n+1)` -/
def P14573168971177612787.Spec : Prop :=
  ∀ n, P14573168971177612787.a n = (A166625 (n + 1) : ℚ)

end A166625

/-! ## A166625.P16372380323530324010

`A166626(n+1)*A166634(n+1)/A166635(n+1)`
-/

namespace A166625.P16372380323530324010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166626 (n + 1) * A166634 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ)

end

end A166625.P16372380323530324010

namespace A166625

/-- `A166626(n+1)*A166634(n+1)/A166635(n+1)` -/
def P16372380323530324010.Spec : Prop :=
  ∀ n, P16372380323530324010.a n = (A166625 (n + 1) : ℚ)

end A166625

/-!
# A166626: Totally multiplicative sequence with a(p) = 5p for prime p.

The programs for A166626, the canonical program `A166626.P12442418658163002327` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166626 has offset 1).

The definition of A166626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166626.P12442418658163002327

`(n+1)*A165826(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166626

/-- `(n+1)*A165826(n+1)` -/
def P12442418658163002327.Spec : Prop :=
  ∀ n, P12442418658163002327.a n = A166626 (n + 1)

theorem P12442418658163002327.correct : P12442418658163002327.Spec := by
  intro n
  simp only [A166626, Nat.add_sub_cancel]

end A166626

/-! ## A166626.P4469053126408071691

`(n+1)*5^A001222(n+1)`
-/

namespace A166626.P4469053126408071691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (5 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166626.P4469053126408071691

namespace A166626

/-- `(n+1)*5^A001222(n+1)` -/
def P4469053126408071691.Spec : Prop :=
  ∀ n, P4469053126408071691.a n = (A166626 (n + 1) : ℚ)

end A166626

/-! ## A166626.P4795300623357325170

`(n+1)*5^∑{e}[n+1, #]`
-/

namespace A166626.P4795300623357325170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166626.P4795300623357325170

namespace A166626

/-- `(n+1)*5^∑{e}[n+1, #]` -/
def P4795300623357325170.Spec : Prop :=
  ∀ n, (P4795300623357325170.a n : ℤ) = A166626 (n + 1)

end A166626

/-! ## A166626.P4449211245582397551

`(n+1)*∏{e}[n+1, 5^#]`
-/

namespace A166626.P4449211245582397551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 5 ^ Nat.factorization (f1 n) p)

end

end A166626.P4449211245582397551

namespace A166626

/-- `(n+1)*∏{e}[n+1, 5^#]` -/
def P4449211245582397551.Spec : Prop :=
  ∀ n, (P4449211245582397551.a n : ℤ) = A166626 (n + 1)

end A166626

/-! ## A166626.P151567619887079099

`(n+1)/5^∑{e}[n+1, -#]`
-/

namespace A166626.P151567619887079099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (5 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ)

end

end A166626.P151567619887079099

namespace A166626

/-- `(n+1)/5^∑{e}[n+1, -#]` -/
def P151567619887079099.Spec : Prop :=
  ∀ n, P151567619887079099.a n = (A166626 (n + 1) : ℚ)

end A166626

/-! ## A166626.P2026707521042847909

`(n+1)/∏{e}[n+1, 5^-#]`
-/

namespace A166626.P2026707521042847909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (5 : ℚ) ^ (-(Nat.factorization (f1 n) p : ℤ) : ℤ))

end

end A166626.P2026707521042847909

namespace A166626

/-- `(n+1)/∏{e}[n+1, 5^-#]` -/
def P2026707521042847909.Spec : Prop :=
  ∀ n, P2026707521042847909.a n = (A166626 (n + 1) : ℚ)

end A166626

/-! ## A166626.P17543805721662247984

`(n+1)*sqrt(A165846(n+1))`
-/

namespace A166626.P17543805721662247984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165846 (n + 1) : ℝ)

end

end A166626.P17543805721662247984

namespace A166626

/-- `(n+1)*sqrt(A165846(n+1))` -/
def P17543805721662247984.Spec : Prop :=
  ∀ n, P17543805721662247984.a n = (A166626 (n + 1) : ℝ)

end A166626

/-! ## A166626.P8924470566392267462

`(n+1)*A000351(A001222(n+1))`
-/

namespace A166626.P8924470566392267462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000351 (A001222 (n + 1)).toNat

end

end A166626.P8924470566392267462

namespace A166626

/-- `(n+1)*A000351(A001222(n+1))` -/
def P8924470566392267462.Spec : Prop :=
  ∀ n, P8924470566392267462.a n = A166626 (n + 1)

end A166626

/-! ## A166626.P1206049785472054858

`(n+1)*A032532(A061142(n+1))`
-/

namespace A166626.P1206049785472054858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032532 (A061142 (n + 1)).toNat

end

end A166626.P1206049785472054858

namespace A166626

/-- `(n+1)*A032532(A061142(n+1))` -/
def P1206049785472054858.Spec : Prop :=
  ∀ n, P1206049785472054858.a n = A166626 (n + 1)

end A166626

/-! ## A166626.P5883874203919721002

`(n+1)*A017919(A255201(n+1))`
-/

namespace A166626.P5883874203919721002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017919 (A255201 (n + 1)).toNat

end

end A166626.P5883874203919721002

namespace A166626

/-- `(n+1)*A017919(A255201(n+1))` -/
def P5883874203919721002.Spec : Prop :=
  ∀ n, P5883874203919721002.a n = A166626 (n + 1)

end A166626

/-! ## A166626.P12383148154726015164

`A166631(n+1)/A061142(n+1)`
-/

namespace A166626.P12383148154726015164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166631 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166626.P12383148154726015164

namespace A166626

/-- `A166631(n+1)/A061142(n+1)` -/
def P12383148154726015164.Spec : Prop :=
  ∀ n, P12383148154726015164.a n = (A166626 (n + 1) : ℚ)

end A166626

/-! ## A166626.P12678156498321378200

`(n+1)*A166660(A061142(A079707(n+1)))`
-/

namespace A166626.P12678156498321378200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166660 (A061142 (A079707 (n + 1)).toNat).toNat

end

end A166626.P12678156498321378200

namespace A166626

/-- `(n+1)*A166660(A061142(A079707(n+1)))` -/
def P12678156498321378200.Spec : Prop :=
  ∀ n, P12678156498321378200.a n = A166626 (n + 1)

end A166626

/-! ## A166626.P1365235321460186514

`A165831(n+1)/A167321(n+1)*A167342(n+1)`
-/

namespace A166626.P1365235321460186514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165831 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167342 (n + 1) : ℚ)

end

end A166626.P1365235321460186514

namespace A166626

/-- `A165831(n+1)/A167321(n+1)*A167342(n+1)` -/
def P1365235321460186514.Spec : Prop :=
  ∀ n, P1365235321460186514.a n = (A166626 (n + 1) : ℚ)

end A166626

/-! ## A166626.P18106196683726453733

`(n+1)*A003961(A165824(n+1))`
-/

namespace A166626.P18106196683726453733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003961 (A165824 (n + 1)).toNat

end

end A166626.P18106196683726453733

namespace A166626

/-- `(n+1)*A003961(A165824(n+1))` -/
def P18106196683726453733.Spec : Prop :=
  ∀ n, P18106196683726453733.a n = A166626 (n + 1)

end A166626

/-!
# A166627: Totally multiplicative sequence with a(p) = 6p for prime p.

The programs for A166627, the canonical program `A166627.P4719915561664493133` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166627 has offset 1).

The definition of A166627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165827, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166627.P4719915561664493133

`(n+1)*A165827(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166627

/-- `(n+1)*A165827(n+1)` -/
def P4719915561664493133.Spec : Prop :=
  ∀ n, P4719915561664493133.a n = A166627 (n + 1)

theorem P4719915561664493133.correct : P4719915561664493133.Spec := by
  intro n
  simp only [A166627, Nat.add_sub_cancel]

end A166627

/-! ## A166627.P25932666597442380

`(n+1)*6^A001222(n+1)`
-/

namespace A166627.P25932666597442380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (6 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166627.P25932666597442380

namespace A166627

/-- `(n+1)*6^A001222(n+1)` -/
def P25932666597442380.Spec : Prop :=
  ∀ n, P25932666597442380.a n = (A166627 (n + 1) : ℚ)

end A166627

/-! ## A166627.P15740741145196025546

`(n+1)*6^∑{e}[n+1, #]`
-/

namespace A166627.P15740741145196025546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166627.P15740741145196025546

namespace A166627

/-- `(n+1)*6^∑{e}[n+1, #]` -/
def P15740741145196025546.Spec : Prop :=
  ∀ n, (P15740741145196025546.a n : ℤ) = A166627 (n + 1)

end A166627

/-! ## A166627.P15778135614717834037

`(n+1)*∏{e}[n+1, 6^#]`
-/

namespace A166627.P15778135614717834037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 6 ^ Nat.factorization (f1 n) p)

end

end A166627.P15778135614717834037

namespace A166627

/-- `(n+1)*∏{e}[n+1, 6^#]` -/
def P15778135614717834037.Spec : Prop :=
  ∀ n, (P15778135614717834037.a n : ℤ) = A166627 (n + 1)

end A166627

/-! ## A166627.P1702791559914813770

`(n+1)*sqrt(A165857(n+1))`
-/

namespace A166627.P1702791559914813770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165857 (n + 1) : ℝ)

end

end A166627.P1702791559914813770

namespace A166627

/-- `(n+1)*sqrt(A165857(n+1))` -/
def P1702791559914813770.Spec : Prop :=
  ∀ n, P1702791559914813770.a n = (A166627 (n + 1) : ℝ)

end A166627

/-! ## A166627.P7664561157319960516

`(n+1)*A000400(A001222(n+1))`
-/

namespace A166627.P7664561157319960516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000400 (A001222 (n + 1)).toNat

end

end A166627.P7664561157319960516

namespace A166627

/-- `(n+1)*A000400(A001222(n+1))` -/
def P7664561157319960516.Spec : Prop :=
  ∀ n, P7664561157319960516.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P6010878199374505351

`(n+1)*A033043(A061142(n+1))`
-/

namespace A166627.P6010878199374505351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033043 (A061142 (n + 1)).toNat

end

end A166627.P6010878199374505351

namespace A166627

/-- `(n+1)*A033043(A061142(n+1))` -/
def P6010878199374505351.Spec : Prop :=
  ∀ n, P6010878199374505351.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P14996985545895735667

`A061142(n+1)*A166624(n+1)`
-/

namespace A166627.P14996985545895735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166624 (n + 1)

end

end A166627.P14996985545895735667

namespace A166627

/-- `A061142(n+1)*A166624(n+1)` -/
def P14996985545895735667.Spec : Prop :=
  ∀ n, P14996985545895735667.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P5643524409682662470

`(n+1)*A017922(A255201(n+1))`
-/

namespace A166627.P5643524409682662470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017922 (A255201 (n + 1)).toNat

end

end A166627.P5643524409682662470

namespace A166627

/-- `(n+1)*A017922(A255201(n+1))` -/
def P5643524409682662470.Spec : Prop :=
  ∀ n, P5643524409682662470.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P9610654262564246971

`A123667(n+1)*A165824(n+1)`
-/

namespace A166627.P9610654262564246971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1) * A165824 (n + 1)

end

end A166627.P9610654262564246971

namespace A166627

/-- `A123667(n+1)*A165824(n+1)` -/
def P9610654262564246971.Spec : Prop :=
  ∀ n, P9610654262564246971.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P15898962542454495618

`lcm(A123667(n+1), A166624(n+1))`
-/

namespace A166627.P15898962542454495618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123667 (n + 1)) (A166624 (n + 1))

end

end A166627.P15898962542454495618

namespace A166627

/-- `lcm(A123667(n+1), A166624(n+1))` -/
def P15898962542454495618.Spec : Prop :=
  ∀ n, (P15898962542454495618.a n : ℤ) = A166627 (n + 1)

end A166627

/-! ## A166627.P4083426192257236044

`(A024062(A001222(n+1)%(n+1))+1)*(n+1)`
-/

namespace A166627.P4083426192257236044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024062 (Int.tmod (A001222 (n + 1)) (n + 1 : ℤ)).toNat + 1) * (n + 1 : ℤ)

end

end A166627.P4083426192257236044

namespace A166627

/-- `(A024062(A001222(n+1)%(n+1))+1)*(n+1)` -/
def P4083426192257236044.Spec : Prop :=
  ∀ n, P4083426192257236044.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P12423206426676822344

`A123667(n+1)*A133205(A061142(n+1))`
-/

namespace A166627.P12423206426676822344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1) * A133205 (A061142 (n + 1)).toNat

end

end A166627.P12423206426676822344

namespace A166627

/-- `A123667(n+1)*A133205(A061142(n+1))` -/
def P12423206426676822344.Spec : Prop :=
  ∀ n, P12423206426676822344.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P8971756468252464298

`A165824(n+1)/A061142(n+1)*A166625(n+1)`
-/

namespace A166627.P8971756468252464298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166625 (n + 1) : ℚ)

end

end A166627.P8971756468252464298

namespace A166627

/-- `A165824(n+1)/A061142(n+1)*A166625(n+1)` -/
def P8971756468252464298.Spec : Prop :=
  ∀ n, P8971756468252464298.a n = (A166627 (n + 1) : ℚ)

end A166627

/-! ## A166627.P5522013046988861370

`A167325(n+1)*A167342(n+1)/A167363(n+1)`
-/

namespace A166627.P5522013046988861370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167325 (n + 1) * A167342 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ)

end

end A166627.P5522013046988861370

namespace A166627

/-- `A167325(n+1)*A167342(n+1)/A167363(n+1)` -/
def P5522013046988861370.Spec : Prop :=
  ∀ n, P5522013046988861370.a n = (A166627 (n + 1) : ℚ)

end A166627

/-! ## A166627.P2176600799685421257

`(n+1)*A066638(A124508(n+1))`
-/

namespace A166627.P2176600799685421257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066638 (A124508 (n + 1)).toNat

end

end A166627.P2176600799685421257

namespace A166627

/-- `(n+1)*A066638(A124508(n+1))` -/
def P2176600799685421257.Spec : Prop :=
  ∀ n, P2176600799685421257.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P2069908822329188020

`(n+1)*A167330(A061142(A319525(n+1)))`
-/

namespace A166627.P2069908822329188020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167330 (A061142 (A319525 (n + 1)).toNat).toNat

end

end A166627.P2069908822329188020

namespace A166627

/-- `(n+1)*A167330(A061142(A319525(n+1)))` -/
def P2069908822329188020.Spec : Prop :=
  ∀ n, P2069908822329188020.a n = A166627 (n + 1)

end A166627

/-! ## A166627.P4364135184463617531

`A123667(n+1)/A003959(n+1)*A003959(A123667(n+1))`
-/

namespace A166627.P4364135184463617531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A003959 (A123667 (n + 1)).toNat : ℚ)

end

end A166627.P4364135184463617531

namespace A166627

/-- `A123667(n+1)/A003959(n+1)*A003959(A123667(n+1))` -/
def P4364135184463617531.Spec : Prop :=
  ∀ n, P4364135184463617531.a n = (A166627 (n + 1) : ℚ)

end A166627

/-! ## A166627.P9260590609006366264

`A166633(A165824(n+1))/A165824(n+1)*A166624(n+1)`
-/

namespace A166627.P9260590609006366264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (A165824 (n + 1)).toNat : ℚ) / (A165824 (n + 1) : ℚ) * (A166624 (n + 1) : ℚ)

end

end A166627.P9260590609006366264

namespace A166627

/-- `A166633(A165824(n+1))/A165824(n+1)*A166624(n+1)` -/
def P9260590609006366264.Spec : Prop :=
  ∀ n, P9260590609006366264.a n = (A166627 (n + 1) : ℚ)

end A166627

/-! ## A166627.P14483474853325196821

`(n+1)*A167330(A061142(A003961(n+1)))`
-/

namespace A166627.P14483474853325196821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167330 (A061142 (A003961 (n + 1)).toNat).toNat

end

end A166627.P14483474853325196821

namespace A166627

/-- `(n+1)*A167330(A061142(A003961(n+1)))` -/
def P14483474853325196821.Spec : Prop :=
  ∀ n, P14483474853325196821.a n = A166627 (n + 1)

end A166627

/-!
# A166628: Totally multiplicative sequence with a(p) = 7p for prime p.

The programs for A166628, the canonical program `A166628.P13644220828498247327` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166628 has offset 1).

The definition of A166628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166628.P13644220828498247327

`(n+1)*A165828(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166628

/-- `(n+1)*A165828(n+1)` -/
def P13644220828498247327.Spec : Prop :=
  ∀ n, P13644220828498247327.a n = A166628 (n + 1)

theorem P13644220828498247327.correct : P13644220828498247327.Spec := by
  intro n
  simp only [A166628, Nat.add_sub_cancel]

end A166628

/-! ## A166628.P14641026727993843503

`(n+1)*7^A001222(n+1)`
-/

namespace A166628.P14641026727993843503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (7 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166628.P14641026727993843503

namespace A166628

/-- `(n+1)*7^A001222(n+1)` -/
def P14641026727993843503.Spec : Prop :=
  ∀ n, P14641026727993843503.a n = (A166628 (n + 1) : ℚ)

end A166628

/-! ## A166628.P2874392783591247454

`(n+1)*7^∑{e}[n+1, #]`
-/

namespace A166628.P2874392783591247454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 7 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166628.P2874392783591247454

namespace A166628

/-- `(n+1)*7^∑{e}[n+1, #]` -/
def P2874392783591247454.Spec : Prop :=
  ∀ n, (P2874392783591247454.a n : ℤ) = A166628 (n + 1)

end A166628

/-! ## A166628.P8295230975476970780

`(n+1)*∏{e}[n+1, 7^#]`
-/

namespace A166628.P8295230975476970780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 7 ^ Nat.factorization (f1 n) p)

end

end A166628.P8295230975476970780

namespace A166628

/-- `(n+1)*∏{e}[n+1, 7^#]` -/
def P8295230975476970780.Spec : Prop :=
  ∀ n, (P8295230975476970780.a n : ℤ) = A166628 (n + 1)

end A166628

/-! ## A166628.P14635261155560575503

`(n+1)*sqrt(A165870(n+1))`
-/

namespace A166628.P14635261155560575503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A165870 (n + 1) : ℝ)

end

end A166628.P14635261155560575503

namespace A166628

/-- `(n+1)*sqrt(A165870(n+1))` -/
def P14635261155560575503.Spec : Prop :=
  ∀ n, P14635261155560575503.a n = (A166628 (n + 1) : ℝ)

end A166628

/-! ## A166628.P961970673039578544

`(n+1)*A000420(∑{e}[n+1, #])`
-/

namespace A166628.P961970673039578544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000420 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166628.P961970673039578544

namespace A166628

/-- `(n+1)*A000420(∑{e}[n+1, #])` -/
def P961970673039578544.Spec : Prop :=
  ∀ n, P961970673039578544.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P9878323756429463600

`(n+1)*A000420(A001222(n+1))`
-/

namespace A166628.P9878323756429463600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000420 (A001222 (n + 1)).toNat

end

end A166628.P9878323756429463600

namespace A166628

/-- `(n+1)*A000420(A001222(n+1))` -/
def P9878323756429463600.Spec : Prop :=
  ∀ n, P9878323756429463600.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P7679577176113236467

`(n+1)*A116522(A061142(n+1))`
-/

namespace A166628.P7679577176113236467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A116522 (A061142 (n + 1)).toNat

end

end A166628.P7679577176113236467

namespace A166628

/-- `(n+1)*A116522(A061142(n+1))` -/
def P7679577176113236467.Spec : Prop :=
  ∀ n, P7679577176113236467.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P5270046670887814578

`(n+1)*A017925(A255201(n+1))`
-/

namespace A166628.P5270046670887814578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017925 (A255201 (n + 1)).toNat

end

end A166628.P5270046670887814578

namespace A166628

/-- `(n+1)*A017925(A255201(n+1))` -/
def P5270046670887814578.Spec : Prop :=
  ∀ n, P5270046670887814578.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P18111454100720201825

`A000027(n+1)*A166653(A061142(n+1))`
-/

namespace A166628.P18111454100720201825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A166653 (A061142 (n + 1)).toNat

end

end A166628.P18111454100720201825

namespace A166628

/-- `A000027(n+1)*A166653(A061142(n+1))` -/
def P18111454100720201825.Spec : Prop :=
  ∀ n, P18111454100720201825.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P7118582104940905096

`(n+1)*A037455(A165824(n+1))`
-/

namespace A166628.P7118582104940905096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037455 (A165824 (n + 1)).toNat

end

end A166628.P7118582104940905096

namespace A166628

/-- `(n+1)*A037455(A165824(n+1))` -/
def P7118582104940905096.Spec : Prop :=
  ∀ n, P7118582104940905096.a n = A166628 (n + 1)

end A166628

/-! ## A166628.P4193346682630763675

`(n+1)*A037461(A165825(n+1))`
-/

namespace A166628.P4193346682630763675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037461 (A165825 (n + 1)).toNat

end

end A166628.P4193346682630763675

namespace A166628

/-- `(n+1)*A037461(A165825(n+1))` -/
def P4193346682630763675.Spec : Prop :=
  ∀ n, P4193346682630763675.a n = A166628 (n + 1)

end A166628

/-!
# A166629: Totally multiplicative sequence with a(p) = 8p for prime p.

The programs for A166629, the canonical program `A166629.P16121335270018523173` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166629 has offset 1).

The definition of A166629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166629.P16121335270018523173

`(n+1)*A165829(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166629

/-- `(n+1)*A165829(n+1)` -/
def P16121335270018523173.Spec : Prop :=
  ∀ n, P16121335270018523173.a n = A166629 (n + 1)

theorem P16121335270018523173.correct : P16121335270018523173.Spec := by
  intro n
  simp only [A166629, Nat.add_sub_cancel]

end A166629

/-! ## A166629.P2992242373876498851

`(n+1)*8^A001222(n+1)`
-/

namespace A166629.P2992242373876498851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (8 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166629.P2992242373876498851

namespace A166629

/-- `(n+1)*8^A001222(n+1)` -/
def P2992242373876498851.Spec : Prop :=
  ∀ n, P2992242373876498851.a n = (A166629 (n + 1) : ℚ)

end A166629

/-! ## A166629.P15594111926020767043

`(n+1)*8^∑{e}[n+1, #]`
-/

namespace A166629.P15594111926020767043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 8 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166629.P15594111926020767043

namespace A166629

/-- `(n+1)*8^∑{e}[n+1, #]` -/
def P15594111926020767043.Spec : Prop :=
  ∀ n, (P15594111926020767043.a n : ℤ) = A166629 (n + 1)

end A166629

/-! ## A166629.P7088883125939855148

`(n+1)*∏{e}[n+1, 8^#]`
-/

namespace A166629.P7088883125939855148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 8 ^ Nat.factorization (f1 n) p)

end

end A166629.P7088883125939855148

namespace A166629

/-- `(n+1)*∏{e}[n+1, 8^#]` -/
def P7088883125939855148.Spec : Prop :=
  ∀ n, (P7088883125939855148.a n : ℤ) = A166629 (n + 1)

end A166629

/-! ## A166629.P13165720185755230522

`(n+1)*A061142(n+1)^3`
-/

namespace A166629.P13165720185755230522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061142 (n + 1) ^ 3

end

end A166629.P13165720185755230522

namespace A166629

/-- `(n+1)*A061142(n+1)^3` -/
def P13165720185755230522.Spec : Prop :=
  ∀ n, P13165720185755230522.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P11786322447669410931

`(n+1)*A001018(∑{e}[n+1, #])`
-/

namespace A166629.P11786322447669410931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001018 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166629.P11786322447669410931

namespace A166629

/-- `(n+1)*A001018(∑{e}[n+1, #])` -/
def P11786322447669410931.Spec : Prop :=
  ∀ n, P11786322447669410931.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P14728046315659919626

`(n+1)*A001018(A001222(n+1))`
-/

namespace A166629.P14728046315659919626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001018 (A001222 (n + 1)).toNat

end

end A166629.P14728046315659919626

namespace A166629

/-- `(n+1)*A001018(A001222(n+1))` -/
def P14728046315659919626.Spec : Prop :=
  ∀ n, P14728046315659919626.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P4761315495585794819

`(n+1)*A000578(A061142(n+1))`
-/

namespace A166629.P4761315495585794819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000578 (A061142 (n + 1)).toNat

end

end A166629.P4761315495585794819

namespace A166629

/-- `(n+1)*A000578(A061142(n+1))` -/
def P4761315495585794819.Spec : Prop :=
  ∀ n, P4761315495585794819.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P13181703841790041134

`A061142(n+1)*A166625(n+1)`
-/

namespace A166629.P13181703841790041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166625 (n + 1)

end

end A166629.P13181703841790041134

namespace A166629

/-- `A061142(n+1)*A166625(n+1)` -/
def P13181703841790041134.Spec : Prop :=
  ∀ n, P13181703841790041134.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P12752733943294630335

`(n+1)*A017928(A255201(n+1))`
-/

namespace A166629.P12752733943294630335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017928 (A255201 (n + 1)).toNat

end

end A166629.P12752733943294630335

namespace A166629

/-- `(n+1)*A017928(A255201(n+1))` -/
def P12752733943294630335.Spec : Prop :=
  ∀ n, P12752733943294630335.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P1059512736953259567

`A123667(n+1)*A165825(n+1)`
-/

namespace A166629.P1059512736953259567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1) * A165825 (n + 1)

end

end A166629.P1059512736953259567

namespace A166629

/-- `A123667(n+1)*A165825(n+1)` -/
def P1059512736953259567.Spec : Prop :=
  ∀ n, P1059512736953259567.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P914195867503542851

`A061142(n+1)²*A123667(n+1)`
-/

namespace A166629.P914195867503542851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A123667 (n + 1)

end

end A166629.P914195867503542851

namespace A166629

/-- `A061142(n+1)²*A123667(n+1)` -/
def P914195867503542851.Spec : Prop :=
  ∀ n, P914195867503542851.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P7620328825284657086

`A165872(n+1)²*A123667(n+1)`
-/

namespace A166629.P7620328825284657086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) ^ 2 * A123667 (n + 1)

end

end A166629.P7620328825284657086

namespace A166629

/-- `A165872(n+1)²*A123667(n+1)` -/
def P7620328825284657086.Spec : Prop :=
  ∀ n, P7620328825284657086.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P8889152984466106656

`A167327(n+1)*A167342(n+1)/A167363(n+1)`
-/

namespace A166629.P8889152984466106656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167327 (n + 1) * A167342 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ)

end

end A166629.P8889152984466106656

namespace A166629

/-- `A167327(n+1)*A167342(n+1)/A167363(n+1)` -/
def P8889152984466106656.Spec : Prop :=
  ∀ n, P8889152984466106656.a n = (A166629 (n + 1) : ℚ)

end A166629

/-! ## A166629.P184691054835662068

`A000027(n+1)*A061142(n+1)*A061142(n+1)²`
-/

namespace A166629.P184691054835662068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A061142 (n + 1) * A061142 (n + 1) ^ 2

end

end A166629.P184691054835662068

namespace A166629

/-- `A000027(n+1)*A061142(n+1)*A061142(n+1)²` -/
def P184691054835662068.Spec : Prop :=
  ∀ n, P184691054835662068.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P11942990376667554261

`(A328854(n+1)/A000005(n+1))²*A123667(n+1)`
-/

namespace A166629.P11942990376667554261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328854 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)) ^ 2 * (A123667 (n + 1) : ℚ)

end

end A166629.P11942990376667554261

namespace A166629

/-- `(A328854(n+1)/A000005(n+1))²*A123667(n+1)` -/
def P11942990376667554261.Spec : Prop :=
  ∀ n, P11942990376667554261.a n = (A166629 (n + 1) : ℚ)

end A166629

/-! ## A166629.P14860633638592708898

`A166625(n+1)²/gcd(A166625(n+1), A166627(n+1))`
-/

namespace A166629.P14860633638592708898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) ^ 2 : ℚ) / (Int.gcd (A166625 (n + 1)) (A166627 (n + 1)) : ℚ)

end

end A166629.P14860633638592708898

namespace A166629

/-- `A166625(n+1)²/gcd(A166625(n+1), A166627(n+1))` -/
def P14860633638592708898.Spec : Prop :=
  ∀ n, P14860633638592708898.a n = (A166629 (n + 1) : ℚ)

end A166629

/-! ## A166629.P15114410697357051494

`(n+1)*A037456(A165824(n+1))`
-/

namespace A166629.P15114410697357051494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037456 (A165824 (n + 1)).toNat

end

end A166629.P15114410697357051494

namespace A166629

/-- `(n+1)*A037456(A165824(n+1))` -/
def P15114410697357051494.Spec : Prop :=
  ∀ n, P15114410697357051494.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P3002654620730196175

`A123667(n+1)*A248692(A165824(n+1))`
-/

namespace A166629.P3002654620730196175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1) * A248692 (A165824 (n + 1)).toNat

end

end A166629.P3002654620730196175

namespace A166629

/-- `A123667(n+1)*A248692(A165824(n+1))` -/
def P3002654620730196175.Spec : Prop :=
  ∀ n, P3002654620730196175.a n = A166629 (n + 1)

end A166629

/-! ## A166629.P3258532329538287115

`A123667(A123667(n+1))`
-/

namespace A166629.P3258532329538287115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (A123667 (n + 1)).toNat

end

end A166629.P3258532329538287115

namespace A166629

/-- `A123667(A123667(n+1))` -/
def P3258532329538287115.Spec : Prop :=
  ∀ n, P3258532329538287115.a n = A166629 (n + 1)

end A166629

/-!
# A166630: Totally multiplicative sequence with a(p) = 9p for prime p.

The programs for A166630, the canonical program `A166630.P9833541194897669774` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166630 has offset 1).

The definition of A166630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165830, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166630.P9833541194897669774

`(n+1)*A165830(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166630

/-- `(n+1)*A165830(n+1)` -/
def P9833541194897669774.Spec : Prop :=
  ∀ n, P9833541194897669774.a n = A166630 (n + 1)

theorem P9833541194897669774.correct : P9833541194897669774.Spec := by
  intro n
  simp only [A166630, Nat.add_sub_cancel]

end A166630

/-! ## A166630.P3075955942742342483

`(n+1)*9^A001222(n+1)`
-/

namespace A166630.P3075955942742342483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (9 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166630.P3075955942742342483

namespace A166630

/-- `(n+1)*9^A001222(n+1)` -/
def P3075955942742342483.Spec : Prop :=
  ∀ n, P3075955942742342483.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P3896253317616647034

`(n+1)*9^∑{e}[n+1, #]`
-/

namespace A166630.P3896253317616647034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166630.P3896253317616647034

namespace A166630

/-- `(n+1)*9^∑{e}[n+1, #]` -/
def P3896253317616647034.Spec : Prop :=
  ∀ n, (P3896253317616647034.a n : ℤ) = A166630 (n + 1)

end A166630

/-! ## A166630.P2576102194288466545

`(n+1)*∏{e}[n+1, 9^#]`
-/

namespace A166630.P2576102194288466545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 9 ^ Nat.factorization (f1 n) p)

end

end A166630.P2576102194288466545

namespace A166630

/-- `(n+1)*∏{e}[n+1, 9^#]` -/
def P2576102194288466545.Spec : Prop :=
  ∀ n, (P2576102194288466545.a n : ℤ) = A166630 (n + 1)

end A166630

/-! ## A166630.P4398141137685739963

`(n+1)*A165824(n+1)²`
-/

namespace A166630.P4398141137685739963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165824 (n + 1) ^ 2

end

end A166630.P4398141137685739963

namespace A166630

/-- `(n+1)*A165824(n+1)²` -/
def P4398141137685739963.Spec : Prop :=
  ∀ n, P4398141137685739963.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P7727888006528352592

`A166624(n+1)²/(n+1)`
-/

namespace A166630.P7727888006528352592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A166630.P7727888006528352592

namespace A166630

/-- `A166624(n+1)²/(n+1)` -/
def P7727888006528352592.Spec : Prop :=
  ∀ n, P7727888006528352592.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P9885060547930356079

`(n+1)*3^A255201(n+1)`
-/

namespace A166630.P9885060547930356079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (3 : ℚ) ^ (A255201 (n + 1) : ℤ)

end

end A166630.P9885060547930356079

namespace A166630

/-- `(n+1)*3^A255201(n+1)` -/
def P9885060547930356079.Spec : Prop :=
  ∀ n, P9885060547930356079.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P11096676033134083401

`(n+1)*A001019(∑{e}[n+1, #])`
-/

namespace A166630.P11096676033134083401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001019 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166630.P11096676033134083401

namespace A166630

/-- `(n+1)*A001019(∑{e}[n+1, #])` -/
def P11096676033134083401.Spec : Prop :=
  ∀ n, P11096676033134083401.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P1809679304459229137

`(n+1)*A001019(A001222(n+1))`
-/

namespace A166630.P1809679304459229137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001019 (A001222 (n + 1)).toNat

end

end A166630.P1809679304459229137

namespace A166630

/-- `(n+1)*A001019(A001222(n+1))` -/
def P1809679304459229137.Spec : Prop :=
  ∀ n, P1809679304459229137.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P3798093521571723267

`(n+1)*A033046(A061142(n+1))`
-/

namespace A166630.P3798093521571723267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033046 (A061142 (n + 1)).toNat

end

end A166630.P3798093521571723267

namespace A166630

/-- `(n+1)*A033046(A061142(n+1))` -/
def P3798093521571723267.Spec : Prop :=
  ∀ n, P3798093521571723267.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P920719053657021217

`(n+1)*A000244(A255201(n+1))`
-/

namespace A166630.P920719053657021217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000244 (A255201 (n + 1)).toNat

end

end A166630.P920719053657021217

namespace A166630

/-- `(n+1)*A000244(A255201(n+1))` -/
def P920719053657021217.Spec : Prop :=
  ∀ n, P920719053657021217.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P14815602481022778690

`A165824(n+1)*A166624(n+1)`
-/

namespace A166630.P14815602481022778690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166624 (n + 1)

end

end A166630.P14815602481022778690

namespace A166630

/-- `A165824(n+1)*A166624(n+1)` -/
def P14815602481022778690.Spec : Prop :=
  ∀ n, P14815602481022778690.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P6392612456814798737

`A166627(n+1)²/A166625(n+1)`
-/

namespace A166630.P6392612456814798737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166627 (n + 1) ^ 2 : ℚ) / (A166625 (n + 1) : ℚ)

end

end A166630.P6392612456814798737

namespace A166630

/-- `A166627(n+1)²/A166625(n+1)` -/
def P6392612456814798737.Spec : Prop :=
  ∀ n, P6392612456814798737.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P5868020878650703033

`A003959(A061142(n+1))*A166624(n+1)`
-/

namespace A166630.P5868020878650703033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A166624 (n + 1)

end

end A166630.P5868020878650703033

namespace A166630

/-- `A003959(A061142(n+1))*A166624(n+1)` -/
def P5868020878650703033.Spec : Prop :=
  ∀ n, P5868020878650703033.a n = A166630 (n + 1)

end A166630

/-! ## A166630.P14377424173556239698

`A166624(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A166630.P14377424173556239698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166630.P14377424173556239698

namespace A166630

/-- `A166624(n+1)/A003959(n+1)*A166643(n+1)` -/
def P14377424173556239698.Spec : Prop :=
  ∀ n, P14377424173556239698.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P14712220903153549916

`A166649(n+1)*A167338(n+1)/A167349(n+1)`
-/

namespace A166630.P14712220903153549916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166649 (n + 1) * A167338 (n + 1) : ℚ) / (A167349 (n + 1) : ℚ)

end

end A166630.P14712220903153549916

namespace A166630

/-- `A166649(n+1)*A167338(n+1)/A167349(n+1)` -/
def P14712220903153549916.Spec : Prop :=
  ∀ n, P14712220903153549916.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P8554474144505040467

`A167328(n+1)*A167342(n+1)/A167363(n+1)`
-/

namespace A166630.P8554474144505040467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167328 (n + 1) * A167342 (n + 1) : ℚ) / (A167363 (n + 1) : ℚ)

end

end A166630.P8554474144505040467

namespace A166630

/-- `A167328(n+1)*A167342(n+1)/A167363(n+1)` -/
def P8554474144505040467.Spec : Prop :=
  ∀ n, P8554474144505040467.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P13936874789495957143

`A166625(n+1)/(A061142(n+1)/A165824(n+1))²`
-/

namespace A166630.P13936874789495957143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166625 (n + 1) : ℚ) / ((A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)) ^ 2

end

end A166630.P13936874789495957143

namespace A166630

/-- `A166625(n+1)/(A061142(n+1)/A165824(n+1))²` -/
def P13936874789495957143.Spec : Prop :=
  ∀ n, P13936874789495957143.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P3321297650411932616

`A166624(A079065(n+1))/A079065(n+1)*A166624(n+1)`
-/

namespace A166630.P3321297650411932616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (A079065 (n + 1)).toNat : ℚ) / (A079065 (n + 1) : ℚ) * (A166624 (n + 1) : ℚ)

end

end A166630.P3321297650411932616

namespace A166630

/-- `A166624(A079065(n+1))/A079065(n+1)*A166624(n+1)` -/
def P3321297650411932616.Spec : Prop :=
  ∀ n, P3321297650411932616.a n = (A166630 (n + 1) : ℚ)

end A166630

/-! ## A166630.P7520622427232771051

`(n+1)*A003959(A165825(n+1))`
-/

namespace A166630.P7520622427232771051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003959 (A165825 (n + 1)).toNat

end

end A166630.P7520622427232771051

namespace A166630

/-- `(n+1)*A003959(A165825(n+1))` -/
def P7520622427232771051.Spec : Prop :=
  ∀ n, P7520622427232771051.a n = A166630 (n + 1)

end A166630

/-!
# A166631: Totally multiplicative sequence with a(p) = 10p for prime p.

The programs for A166631, the canonical program `A166631.P1808347137960991834` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166631 has offset 1).

The definition of A166631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165831, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166631.P1808347137960991834

`(n+1)*A165831(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166631

/-- `(n+1)*A165831(n+1)` -/
def P1808347137960991834.Spec : Prop :=
  ∀ n, P1808347137960991834.a n = A166631 (n + 1)

theorem P1808347137960991834.correct : P1808347137960991834.Spec := by
  intro n
  simp only [A166631, Nat.add_sub_cancel]

end A166631

/-! ## A166631.P4572769615976115068

`(n+1)*10^A001222(n+1)`
-/

namespace A166631.P4572769615976115068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166631.P4572769615976115068

namespace A166631

/-- `(n+1)*10^A001222(n+1)` -/
def P4572769615976115068.Spec : Prop :=
  ∀ n, P4572769615976115068.a n = (A166631 (n + 1) : ℚ)

end A166631

/-! ## A166631.P10943009208418570372

`(n+1)*10^∑{e}[n+1, #]`
-/

namespace A166631.P10943009208418570372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 10 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166631.P10943009208418570372

namespace A166631

/-- `(n+1)*10^∑{e}[n+1, #]` -/
def P10943009208418570372.Spec : Prop :=
  ∀ n, (P10943009208418570372.a n : ℤ) = A166631 (n + 1)

end A166631

/-! ## A166631.P18390198446259668716

`(n+1)*∏{e}[n+1, 10^#]`
-/

namespace A166631.P18390198446259668716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), 10 ^ Nat.factorization (f1 n) p)

end

end A166631.P18390198446259668716

namespace A166631

/-- `(n+1)*∏{e}[n+1, 10^#]` -/
def P18390198446259668716.Spec : Prop :=
  ∀ n, (P18390198446259668716.a n : ℤ) = A166631 (n + 1)

end A166631

/-! ## A166631.P5218703170872344056

`(n+1)*A011557(∑{e}[n+1, #])`
-/

namespace A166631.P5218703170872344056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011557 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166631.P5218703170872344056

namespace A166631

/-- `(n+1)*A011557(∑{e}[n+1, #])` -/
def P5218703170872344056.Spec : Prop :=
  ∀ n, P5218703170872344056.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P17825700063256644706

`(n+1)*A011557(∑{p}[n+1, val(n+1, #)])`
-/

namespace A166631.P17825700063256644706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011557 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A166631.P17825700063256644706

namespace A166631

/-- `(n+1)*A011557(∑{p}[n+1, val(n+1, #)])` -/
def P17825700063256644706.Spec : Prop :=
  ∀ n, P17825700063256644706.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P16042900119515666343

`(n+1)*A011557(Δ[A022559(n)])`
-/

namespace A166631.P16042900119515666343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011557 (f1 (n + 1) - f1 n).toNat

end

end A166631.P16042900119515666343

namespace A166631

/-- `(n+1)*A011557(Δ[A022559(n)])` -/
def P16042900119515666343.Spec : Prop :=
  ∀ n, P16042900119515666343.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P10700458873627285319

`(n+1)*A011557(A001222(n+1))`
-/

namespace A166631.P10700458873627285319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011557 (A001222 (n + 1)).toNat

end

end A166631.P10700458873627285319

namespace A166631

/-- `(n+1)*A011557(A001222(n+1))` -/
def P10700458873627285319.Spec : Prop :=
  ∀ n, P10700458873627285319.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P7582615718040310381

`(n+1)*A001739(A061142(n+1))`
-/

namespace A166631.P7582615718040310381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001739 (A061142 (n + 1)).toNat

end

end A166631.P7582615718040310381

namespace A166631

/-- `(n+1)*A001739(A061142(n+1))` -/
def P7582615718040310381.Spec : Prop :=
  ∀ n, P7582615718040310381.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P16347157357356944030

`(n+1)*A007924(A105560(n+1))`
-/

namespace A166631.P16347157357356944030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007924 (A105560 (n + 1)).toNat

end

end A166631.P16347157357356944030

namespace A166631

/-- `(n+1)*A007924(A105560(n+1))` -/
def P16347157357356944030.Spec : Prop :=
  ∀ n, P16347157357356944030.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P2384101716146812005

`A061142(n+1)*A166626(n+1)`
-/

namespace A166631.P2384101716146812005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166626 (n + 1)

end

end A166631.P2384101716146812005

namespace A166631

/-- `A061142(n+1)*A166626(n+1)` -/
def P2384101716146812005.Spec : Prop :=
  ∀ n, P2384101716146812005.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P10497634849712710438

`(n+1)*A004643(A255201(n+1))`
-/

namespace A166631.P10497634849712710438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004643 (A255201 (n + 1)).toNat

end

end A166631.P10497634849712710438

namespace A166631

/-- `(n+1)*A004643(A255201(n+1))` -/
def P10497634849712710438.Spec : Prop :=
  ∀ n, P10497634849712710438.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P1122204407245338159

`A123667(n+1)*A165826(n+1)`
-/

namespace A166631.P1122204407245338159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (n + 1) * A165826 (n + 1)

end

end A166631.P1122204407245338159

namespace A166631

/-- `A123667(n+1)*A165826(n+1)` -/
def P1122204407245338159.Spec : Prop :=
  ∀ n, P1122204407245338159.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P804135463596754205

`lcm(A123667(n+1), A166626(n+1))`
-/

namespace A166631.P804135463596754205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123667 (n + 1)) (A166626 (n + 1))

end

end A166631.P804135463596754205

namespace A166631

/-- `lcm(A123667(n+1), A166626(n+1))` -/
def P804135463596754205.Spec : Prop :=
  ∀ n, (P804135463596754205.a n : ℤ) = A166631 (n + 1)

end A166631

/-! ## A166631.P16414840598190794096

`(n+1)*A054841(A000040(A073093(n+1)))`
-/

namespace A166631.P16414840598190794096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054841 (A000040 (A073093 (n + 1)).toNat).toNat

end

end A166631.P16414840598190794096

namespace A166631

/-- `(n+1)*A054841(A000040(A073093(n+1)))` -/
def P16414840598190794096.Spec : Prop :=
  ∀ n, P16414840598190794096.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P2999772970594655530

`(n+1)*A167334(A061142(A079707(n+1)))`
-/

namespace A166631.P2999772970594655530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167334 (A061142 (A079707 (n + 1)).toNat).toNat

end

end A166631.P2999772970594655530

namespace A166631

/-- `(n+1)*A167334(A061142(A079707(n+1)))` -/
def P2999772970594655530.Spec : Prop :=
  ∀ n, P2999772970594655530.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P17080534107141952474

`A165826(n+1)/A061142(n+1)*A166625(n+1)`
-/

namespace A166631.P17080534107141952474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166625 (n + 1) : ℚ)

end

end A166631.P17080534107141952474

namespace A166631

/-- `A165826(n+1)/A061142(n+1)*A166625(n+1)` -/
def P17080534107141952474.Spec : Prop :=
  ∀ n, P17080534107141952474.a n = (A166631 (n + 1) : ℚ)

end A166631

/-! ## A166631.P6083230885967067887

`A003958(A166633(n+1)/A003958(n+1))*A166626(n+1)`
-/

namespace A166631.P6083230885967067887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat * A166626 (n + 1)

end

end A166631.P6083230885967067887

namespace A166631

/-- `A003958(A166633(n+1)/A003958(n+1))*A166626(n+1)` -/
def P6083230885967067887.Spec : Prop :=
  ∀ n, P6083230885967067887.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P16621400955979527023

`(n+1)*A002442(A165824(n+1))`
-/

namespace A166631.P16621400955979527023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002442 (A165824 (n + 1)).toNat

end

end A166631.P16621400955979527023

namespace A166631

/-- `(n+1)*A002442(A165824(n+1))` -/
def P16621400955979527023.Spec : Prop :=
  ∀ n, P16621400955979527023.a n = A166631 (n + 1)

end A166631

/-! ## A166631.P10057434558268728928

`(n+1)*A004284(A165825(n+1))`
-/

namespace A166631.P10057434558268728928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004284 (A165825 (n + 1)).toNat

end

end A166631.P10057434558268728928

namespace A166631

/-- `(n+1)*A004284(A165825(n+1))` -/
def P10057434558268728928.Spec : Prop :=
  ∀ n, P10057434558268728928.a n = A166631 (n + 1)

end A166631

/-!
# A166632: Totally multiplicative sequence with a(p) = 2*(p-1) for prime p.

The programs for A166632, the canonical program `A166632.P13851301173715982369` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166632 has offset 1).

The definition of A166632 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A061142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166632.P13851301173715982369

`A061142(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166632

/-- `A061142(n+1)*A003958(n+1)` -/
def P13851301173715982369.Spec : Prop :=
  ∀ n, P13851301173715982369.a n = A166632 (n + 1)

theorem P13851301173715982369.correct : P13851301173715982369.Spec := by
  intro n
  simp only [A166632, Nat.add_sub_cancel]

end A166632

/-! ## A166632.P3105683599918997163

`2^A001222(n+1)*A003958(n+1)`
-/

namespace A166632.P3105683599918997163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166632.P3105683599918997163

namespace A166632

/-- `2^A001222(n+1)*A003958(n+1)` -/
def P3105683599918997163.Spec : Prop :=
  ∀ n, P3105683599918997163.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P8453105326423068078

`A125131(n+1)*A165872(n+1)`
-/

namespace A166632.P8453105326423068078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (n + 1) * A165872 (n + 1)

end

end A166632.P8453105326423068078

namespace A166632

/-- `A125131(n+1)*A165872(n+1)` -/
def P8453105326423068078.Spec : Prop :=
  ∀ n, P8453105326423068078.a n = A166632 (n + 1)

end A166632

/-! ## A166632.P14799895570275447689

`A166634(n+1)/A061142(n+1)`
-/

namespace A166632.P14799895570275447689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166632.P14799895570275447689

namespace A166632

/-- `A166634(n+1)/A061142(n+1)` -/
def P14799895570275447689.Spec : Prop :=
  ∀ n, P14799895570275447689.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P5370680812719966823

`A166636(n+1)/A165824(n+1)`
-/

namespace A166632.P5370680812719966823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166636 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166632.P5370680812719966823

namespace A166632

/-- `A166636(n+1)/A165824(n+1)` -/
def P5370680812719966823.Spec : Prop :=
  ∀ n, P5370680812719966823.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P1368253088612119256

`A166638(n+1)/A165825(n+1)`
-/

namespace A166632.P1368253088612119256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166638 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166632.P1368253088612119256

namespace A166632

/-- `A166638(n+1)/A165825(n+1)` -/
def P1368253088612119256.Spec : Prop :=
  ∀ n, P1368253088612119256.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P7502718889312849758

`A166641(n+1)/A165826(n+1)`
-/

namespace A166632.P7502718889312849758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166641 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166632.P7502718889312849758

namespace A166632

/-- `A166641(n+1)/A165826(n+1)` -/
def P7502718889312849758.Spec : Prop :=
  ∀ n, P7502718889312849758.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P14834588987079517001

`gcd(A166634(n+1), A166636(n+1))`
-/

namespace A166632.P14834588987079517001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166634 (n + 1)) (A166636 (n + 1))

end

end A166632.P14834588987079517001

namespace A166632

/-- `gcd(A166634(n+1), A166636(n+1))` -/
def P14834588987079517001.Spec : Prop :=
  ∀ n, (P14834588987079517001.a n : ℤ) = A166632 (n + 1)

end A166632

/-! ## A166632.P16946985216758104368

`gcd(A166638(n+1), A166641(n+1))`
-/

namespace A166632.P16946985216758104368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166638 (n + 1)) (A166641 (n + 1))

end

end A166632.P16946985216758104368

namespace A166632

/-- `gcd(A166638(n+1), A166641(n+1))` -/
def P16946985216758104368.Spec : Prop :=
  ∀ n, (P16946985216758104368.a n : ℤ) = A166632 (n + 1)

end A166632

/-! ## A166632.P13714663403730438596

`sqrt(A165825(n+1))*A003958(n+1)`
-/

namespace A166632.P13714663403730438596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A003958 (n + 1) : ℝ)

end

end A166632.P13714663403730438596

namespace A166632

/-- `sqrt(A165825(n+1))*A003958(n+1)` -/
def P13714663403730438596.Spec : Prop :=
  ∀ n, P13714663403730438596.a n = (A166632 (n + 1) : ℝ)

end A166632

/-! ## A166632.P1671986100987809919

`A166638(n+1)/A061142(n+1)²`
-/

namespace A166632.P1671986100987809919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166638 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A166632.P1671986100987809919

namespace A166632

/-- `A166638(n+1)/A061142(n+1)²` -/
def P1671986100987809919.Spec : Prop :=
  ∀ n, P1671986100987809919.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P1520360079547442781

`A166634(n+1)²/A166638(n+1)`
-/

namespace A166632.P1520360079547442781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) ^ 2 : ℚ) / (A166638 (n + 1) : ℚ)

end

end A166632.P1520360079547442781

namespace A166632

/-- `A166634(n+1)²/A166638(n+1)` -/
def P1520360079547442781.Spec : Prop :=
  ∀ n, P1520360079547442781.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P5507854806484466575

`A003958(n+1)/A003959(n+1)*A166642(n+1)`
-/

namespace A166632.P5507854806484466575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166642 (n + 1) : ℚ)

end

end A166632.P5507854806484466575

namespace A166632

/-- `A003958(n+1)/A003959(n+1)*A166642(n+1)` -/
def P5507854806484466575.Spec : Prop :=
  ∀ n, P5507854806484466575.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P5969635277008833159

`A003958(n+1)/A133205(n+1)*A167338(n+1)`
-/

namespace A166632.P5969635277008833159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ) * (A167338 (n + 1) : ℚ)

end

end A166632.P5969635277008833159

namespace A166632

/-- `A003958(n+1)/A133205(n+1)*A167338(n+1)` -/
def P5969635277008833159.Spec : Prop :=
  ∀ n, P5969635277008833159.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P4031763130794825559

`A003958(n+1)/A167321(n+1)*A167323(n+1)`
-/

namespace A166632.P4031763130794825559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A166632.P4031763130794825559

namespace A166632

/-- `A003958(n+1)/A167321(n+1)*A167323(n+1)` -/
def P4031763130794825559.Spec : Prop :=
  ∀ n, P4031763130794825559.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P12250565424636892559

`A061142(n+1)/A165824(n+1)*A166633(n+1)`
-/

namespace A166632.P12250565424636892559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166633 (n + 1) : ℚ)

end

end A166632.P12250565424636892559

namespace A166632

/-- `A061142(n+1)/A165824(n+1)*A166633(n+1)` -/
def P12250565424636892559.Spec : Prop :=
  ∀ n, P12250565424636892559.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P6518184298609370138

`A061142(n+1)/A165826(n+1)*A166635(n+1)`
-/

namespace A166632.P6518184298609370138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166635 (n + 1) : ℚ)

end

end A166632.P6518184298609370138

namespace A166632

/-- `A061142(n+1)/A165826(n+1)*A166635(n+1)` -/
def P6518184298609370138.Spec : Prop :=
  ∀ n, P6518184298609370138.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P10382509111857440583

`A109624(n+1)*A165829(n+1)/A167323(n+1)`
-/

namespace A166632.P10382509111857440583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A165829 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ)

end

end A166632.P10382509111857440583

namespace A166632

/-- `A109624(n+1)*A165829(n+1)/A167323(n+1)` -/
def P10382509111857440583.Spec : Prop :=
  ∀ n, P10382509111857440583.a n = (A166632 (n + 1) : ℚ)

end A166632

/-! ## A166632.P6685574002108120968

`A061142(n+1)*A125131(A061142(n+1))*A125131(n+1)`
-/

namespace A166632.P6685574002108120968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A125131 (A061142 (n + 1)).toNat * A125131 (n + 1)

end

end A166632.P6685574002108120968

namespace A166632

/-- `A061142(n+1)*A125131(A061142(n+1))*A125131(n+1)` -/
def P6685574002108120968.Spec : Prop :=
  ∀ n, P6685574002108120968.a n = A166632 (n + 1)

end A166632

/-! ## A166632.P2383751595354255779

`A061142(n+1)/A166636(A061142(n+1))*A166636(n+1)`
-/

namespace A166632.P2383751595354255779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A166636 (A061142 (n + 1)).toNat : ℚ) * (A166636 (n + 1) : ℚ)

end

end A166632.P2383751595354255779

namespace A166632

/-- `A061142(n+1)/A166636(A061142(n+1))*A166636(n+1)` -/
def P2383751595354255779.Spec : Prop :=
  ∀ n, P2383751595354255779.a n = (A166632 (n + 1) : ℚ)

end A166632

/-!
# A166633: Totally multiplicative sequence with a(p) = 3*(p-1) for prime p.

The programs for A166633, the canonical program `A166633.P18344428989039297792` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166633 has offset 1).

The definition of A166633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166633.P18344428989039297792

`A165824(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166633

/-- `A165824(n+1)*A003958(n+1)` -/
def P18344428989039297792.Spec : Prop :=
  ∀ n, P18344428989039297792.a n = A166633 (n + 1)

theorem P18344428989039297792.correct : P18344428989039297792.Spec := by
  intro n
  simp only [A166633, Nat.add_sub_cancel]

end A166633

/-! ## A166633.P7145286906750214575

`3^A001222(n+1)*A003958(n+1)`
-/

namespace A166633.P7145286906750214575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166633.P7145286906750214575

namespace A166633

/-- `3^A001222(n+1)*A003958(n+1)` -/
def P7145286906750214575.Spec : Prop :=
  ∀ n, P7145286906750214575.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P13418604571314445491

`A166636(n+1)/A061142(n+1)`
-/

namespace A166633.P13418604571314445491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166636 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166633.P13418604571314445491

namespace A166633

/-- `A166636(n+1)/A061142(n+1)` -/
def P13418604571314445491.Spec : Prop :=
  ∀ n, P13418604571314445491.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P7709597035757470674

`A166640(n+1)/A165824(n+1)`
-/

namespace A166633.P7709597035757470674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166640 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166633.P7709597035757470674

namespace A166633

/-- `A166640(n+1)/A165824(n+1)` -/
def P7709597035757470674.Spec : Prop :=
  ∀ n, P7709597035757470674.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P15102284482554806021

`gcd(A166636(n+1), A166640(n+1))`
-/

namespace A166633.P15102284482554806021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166636 (n + 1)) (A166640 (n + 1))

end

end A166633.P15102284482554806021

namespace A166633

/-- `gcd(A166636(n+1), A166640(n+1))` -/
def P15102284482554806021.Spec : Prop :=
  ∀ n, (P15102284482554806021.a n : ℤ) = A166633 (n + 1)

end A166633

/-! ## A166633.P8219968635489876872

`(1-A322582(n+1)+n)*A165824(n+1)`
-/

namespace A166633.P8219968635489876872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A322582 (n + 1) + (n : ℤ)) * A165824 (n + 1)

end

end A166633.P8219968635489876872

namespace A166633

/-- `(1-A322582(n+1)+n)*A165824(n+1)` -/
def P8219968635489876872.Spec : Prop :=
  ∀ n, P8219968635489876872.a n = A166633 (n + 1)

end A166633

/-! ## A166633.P11803950940042568745

`A000244(A001222(n+1))*A003958(n+1)`
-/

namespace A166633.P11803950940042568745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A001222 (n + 1)).toNat * A003958 (n + 1)

end

end A166633.P11803950940042568745

namespace A166633

/-- `A000244(A001222(n+1))*A003958(n+1)` -/
def P11803950940042568745.Spec : Prop :=
  ∀ n, P11803950940042568745.a n = A166633 (n + 1)

end A166633

/-! ## A166633.P2641868292575582474

`A003958(n+1)*A003959(A061142(n+1))`
-/

namespace A166633.P2641868292575582474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (A061142 (n + 1)).toNat

end

end A166633.P2641868292575582474

namespace A166633

/-- `A003958(n+1)*A003959(A061142(n+1))` -/
def P2641868292575582474.Spec : Prop :=
  ∀ n, P2641868292575582474.a n = A166633 (n + 1)

end A166633

/-! ## A166633.P7742248177785958425

`A003958(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A166633.P7742248177785958425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166633.P7742248177785958425

namespace A166633

/-- `A003958(n+1)/A003959(n+1)*A166643(n+1)` -/
def P7742248177785958425.Spec : Prop :=
  ∀ n, P7742248177785958425.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P16803335535924980608

`A003958(n+1)/A061142(n+1)*A165827(n+1)`
-/

namespace A166633.P16803335535924980608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A165827 (n + 1) : ℚ)

end

end A166633.P16803335535924980608

namespace A166633

/-- `A003958(n+1)/A061142(n+1)*A165827(n+1)` -/
def P16803335535924980608.Spec : Prop :=
  ∀ n, P16803335535924980608.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P4919187372846489647

`A165824(n+1)/A061142(n+1)*A166632(n+1)`
-/

namespace A166633.P4919187372846489647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166632 (n + 1) : ℚ)

end

end A166633.P4919187372846489647

namespace A166633

/-- `A165824(n+1)/A061142(n+1)*A166632(n+1)` -/
def P4919187372846489647.Spec : Prop :=
  ∀ n, P4919187372846489647.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P4138841828066939987

`A109624(n+1)*A165824(n+1)/A166591(n+1)`
-/

namespace A166633.P4138841828066939987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A165824 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166633.P4138841828066939987

namespace A166633

/-- `A109624(n+1)*A165824(n+1)/A166591(n+1)` -/
def P4138841828066939987.Spec : Prop :=
  ∀ n, P4138841828066939987.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P16692464238887605510

`A165824(n+1)/A165825(n+1)*A166634(n+1)`
-/

namespace A166633.P16692464238887605510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166633.P16692464238887605510

namespace A166633

/-- `A165824(n+1)/A165825(n+1)*A166634(n+1)` -/
def P16692464238887605510.Spec : Prop :=
  ∀ n, P16692464238887605510.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P18032848984925867043

`A165824(n+1)/A165826(n+1)*A166635(n+1)`
-/

namespace A166633.P18032848984925867043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166635 (n + 1) : ℚ)

end

end A166633.P18032848984925867043

namespace A166633

/-- `A165824(n+1)/A165826(n+1)*A166635(n+1)` -/
def P18032848984925867043.Spec : Prop :=
  ∀ n, P18032848984925867043.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P1987189157422302235

`A165824(n+1)/A166590(n+1)*A167346(n+1)`
-/

namespace A166633.P1987189157422302235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167346 (n + 1) : ℚ)

end

end A166633.P1987189157422302235

namespace A166633

/-- `A165824(n+1)/A166590(n+1)*A167346(n+1)` -/
def P1987189157422302235.Spec : Prop :=
  ∀ n, P1987189157422302235.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P7462879360682562681

`A166643(n+1)*A167344(n+1)/A167349(n+1)`
-/

namespace A166633.P7462879360682562681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) * A167344 (n + 1) : ℚ) / (A167349 (n + 1) : ℚ)

end

end A166633.P7462879360682562681

namespace A166633

/-- `A166643(n+1)*A167344(n+1)/A167349(n+1)` -/
def P7462879360682562681.Spec : Prop :=
  ∀ n, P7462879360682562681.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P7993812841652680770

`A165824(n+1)/A061142(n+1)²*A166634(n+1)`
-/

namespace A166633.P7993812841652680770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166633.P7993812841652680770

namespace A166633

/-- `A165824(n+1)/A061142(n+1)²*A166634(n+1)` -/
def P7993812841652680770.Spec : Prop :=
  ∀ n, P7993812841652680770.a n = (A166633 (n + 1) : ℚ)

end A166633

/-! ## A166633.P7047166494444826051

`A003958(n+1)*A003959(A166632(n+1)/A003958(n+1))`
-/

namespace A166633.P7047166494444826051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A166633.P7047166494444826051

namespace A166633

/-- `A003958(n+1)*A003959(A166632(n+1)/A003958(n+1))` -/
def P7047166494444826051.Spec : Prop :=
  ∀ n, P7047166494444826051.a n = A166633 (n + 1)

end A166633

/-! ## A166633.P11638452633999002321

`A003958(n+1)*A003959(A166642(n+1)/A003959(n+1))`
-/

namespace A166633.P11638452633999002321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166633.P11638452633999002321

namespace A166633

/-- `A003958(n+1)*A003959(A166642(n+1)/A003959(n+1))` -/
def P11638452633999002321.Spec : Prop :=
  ∀ n, P11638452633999002321.a n = A166633 (n + 1)

end A166633

/-! ## A166633.P17213793455722298737

`A166636(n+1)/A003958(A165827(n+1))`
-/

namespace A166633.P17213793455722298737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166636 (n + 1) : ℚ) / (A003958 (A165827 (n + 1)).toNat : ℚ)

end

end A166633.P17213793455722298737

namespace A166633

/-- `A166636(n+1)/A003958(A165827(n+1))` -/
def P17213793455722298737.Spec : Prop :=
  ∀ n, P17213793455722298737.a n = (A166633 (n + 1) : ℚ)

end A166633

/-!
# A166634: Totally multiplicative sequence with a(p) = 4*(p-1) for prime p.

The programs for A166634, the canonical program `A166634.P14716069915323423295` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166634 has offset 1).

The definition of A166634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166634.P14716069915323423295

`A165825(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166634

/-- `A165825(n+1)*A003958(n+1)` -/
def P14716069915323423295.Spec : Prop :=
  ∀ n, P14716069915323423295.a n = A166634 (n + 1)

theorem P14716069915323423295.correct : P14716069915323423295.Spec := by
  intro n
  simp only [A166634, Nat.add_sub_cancel]

end A166634

/-! ## A166634.P15589550794136983588

`4^A001222(n+1)*A003958(n+1)`
-/

namespace A166634.P15589550794136983588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166634.P15589550794136983588

namespace A166634

/-- `4^A001222(n+1)*A003958(n+1)` -/
def P15589550794136983588.Spec : Prop :=
  ∀ n, P15589550794136983588.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P10325386626989983340

`A061142(n+1)*A166632(n+1)`
-/

namespace A166634.P10325386626989983340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166632 (n + 1)

end

end A166634.P10325386626989983340

namespace A166634

/-- `A061142(n+1)*A166632(n+1)` -/
def P10325386626989983340.Spec : Prop :=
  ∀ n, P10325386626989983340.a n = A166634 (n + 1)

end A166634

/-! ## A166634.P2190744784695321257

`A166638(n+1)/A061142(n+1)`
-/

namespace A166634.P2190744784695321257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166638 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166634.P2190744784695321257

namespace A166634

/-- `A166638(n+1)/A061142(n+1)` -/
def P2190744784695321257.Spec : Prop :=
  ∀ n, P2190744784695321257.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P12545218897559228647

`A061142(n+1)²*A003958(n+1)`
-/

namespace A166634.P12545218897559228647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A003958 (n + 1)

end

end A166634.P12545218897559228647

namespace A166634

/-- `A061142(n+1)²*A003958(n+1)` -/
def P12545218897559228647.Spec : Prop :=
  ∀ n, P12545218897559228647.a n = A166634 (n + 1)

end A166634

/-! ## A166634.P16430673942245923535

`A166632(n+1)²/A003958(n+1)`
-/

namespace A166634.P16430673942245923535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) ^ 2 : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166634.P16430673942245923535

namespace A166634

/-- `A166632(n+1)²/A003958(n+1)` -/
def P16430673942245923535.Spec : Prop :=
  ∀ n, P16430673942245923535.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P9469166497914428936

`A166636(n+1)²/A166640(n+1)`
-/

namespace A166634.P9469166497914428936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166636 (n + 1) ^ 2 : ℚ) / (A166640 (n + 1) : ℚ)

end

end A166634.P9469166497914428936

namespace A166634

/-- `A166636(n+1)²/A166640(n+1)` -/
def P9469166497914428936.Spec : Prop :=
  ∀ n, P9469166497914428936.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P5188124112457797607

`A003958(n+1)/A003959(n+1)*A166644(n+1)`
-/

namespace A166634.P5188124112457797607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A166634.P5188124112457797607

namespace A166634

/-- `A003958(n+1)/A003959(n+1)*A166644(n+1)` -/
def P5188124112457797607.Spec : Prop :=
  ∀ n, P5188124112457797607.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P12613759700175166941

`A109624(n+1)*A165825(n+1)/A166591(n+1)`
-/

namespace A166634.P12613759700175166941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A165825 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166634.P12613759700175166941

namespace A166634

/-- `A109624(n+1)*A165825(n+1)/A166591(n+1)` -/
def P12613759700175166941.Spec : Prop :=
  ∀ n, P12613759700175166941.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P9257894752734048639

`A165825(n+1)/A165824(n+1)*A166633(n+1)`
-/

namespace A166634.P9257894752734048639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166633 (n + 1) : ℚ)

end

end A166634.P9257894752734048639

namespace A166634

/-- `A165825(n+1)/A165824(n+1)*A166633(n+1)` -/
def P9257894752734048639.Spec : Prop :=
  ∀ n, P9257894752734048639.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P11607673710718372763

`A165825(n+1)/A165826(n+1)*A166635(n+1)`
-/

namespace A166634.P11607673710718372763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166635 (n + 1) : ℚ)

end

end A166634.P11607673710718372763

namespace A166634

/-- `A165825(n+1)/A165826(n+1)*A166635(n+1)` -/
def P11607673710718372763.Spec : Prop :=
  ∀ n, P11607673710718372763.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P7090354032869876047

`A166632(n+1)/A166651(n+1)*A167330(n+1)`
-/

namespace A166634.P7090354032869876047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166651 (n + 1) : ℚ) * (A167330 (n + 1) : ℚ)

end

end A166634.P7090354032869876047

namespace A166634

/-- `A166632(n+1)/A166651(n+1)*A167330(n+1)` -/
def P7090354032869876047.Spec : Prop :=
  ∀ n, P7090354032869876047.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P15078000222861518732

`A166632(n+1)/A166652(n+1)*A167331(n+1)`
-/

namespace A166634.P15078000222861518732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166652 (n + 1) : ℚ) * (A167331 (n + 1) : ℚ)

end

end A166634.P15078000222861518732

namespace A166634

/-- `A166632(n+1)/A166652(n+1)*A167331(n+1)` -/
def P15078000222861518732.Spec : Prop :=
  ∀ n, P15078000222861518732.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P10811474325807005069

`A166632(n+1)/A166653(n+1)*A167332(n+1)`
-/

namespace A166634.P10811474325807005069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166653 (n + 1) : ℚ) * (A167332 (n + 1) : ℚ)

end

end A166634.P10811474325807005069

namespace A166634

/-- `A166632(n+1)/A166653(n+1)*A167332(n+1)` -/
def P10811474325807005069.Spec : Prop :=
  ∀ n, P10811474325807005069.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P17567567878324262046

`A166632(n+1)/A166654(n+1)*A167333(n+1)`
-/

namespace A166634.P17567567878324262046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166654 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166634.P17567567878324262046

namespace A166634

/-- `A166632(n+1)/A166654(n+1)*A167333(n+1)` -/
def P17567567878324262046.Spec : Prop :=
  ∀ n, P17567567878324262046.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P14566279653409362743

`A166632(n+1)/A166660(n+1)*A167334(n+1)`
-/

namespace A166634.P14566279653409362743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166660 (n + 1) : ℚ) * (A167334 (n + 1) : ℚ)

end

end A166634.P14566279653409362743

namespace A166634

/-- `A166632(n+1)/A166660(n+1)*A167334(n+1)` -/
def P14566279653409362743.Spec : Prop :=
  ∀ n, P14566279653409362743.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P9978239579021420769

`A166632(n+1)/A166661(n+1)*A167335(n+1)`
-/

namespace A166634.P9978239579021420769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166661 (n + 1) : ℚ) * (A167335 (n + 1) : ℚ)

end

end A166634.P9978239579021420769

namespace A166634

/-- `A166632(n+1)/A166661(n+1)*A167335(n+1)` -/
def P9978239579021420769.Spec : Prop :=
  ∀ n, P9978239579021420769.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P17929443090132469395

`A166632(n+1)/A166662(n+1)*A167336(n+1)`
-/

namespace A166634.P17929443090132469395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166662 (n + 1) : ℚ) * (A167336 (n + 1) : ℚ)

end

end A166634.P17929443090132469395

namespace A166634

/-- `A166632(n+1)/A166662(n+1)*A167336(n+1)` -/
def P17929443090132469395.Spec : Prop :=
  ∀ n, P17929443090132469395.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P16308367110050499728

`A166632(n+1)/A166663(n+1)*A167337(n+1)`
-/

namespace A166634.P16308367110050499728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (n + 1) : ℚ) / (A166663 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166634.P16308367110050499728

namespace A166634

/-- `A166632(n+1)/A166663(n+1)*A167337(n+1)` -/
def P16308367110050499728.Spec : Prop :=
  ∀ n, P16308367110050499728.a n = (A166634 (n + 1) : ℚ)

end A166634

/-! ## A166634.P2955215645154319703

`(A166642(n+1)/A003959(n+1))²*A003958(n+1)`
-/

namespace A166634.P2955215645154319703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2 * (A003958 (n + 1) : ℚ)

end

end A166634.P2955215645154319703

namespace A166634

/-- `(A166642(n+1)/A003959(n+1))²*A003958(n+1)` -/
def P2955215645154319703.Spec : Prop :=
  ∀ n, P2955215645154319703.a n = (A166634 (n + 1) : ℚ)

end A166634

/-!
# A166635: Totally multiplicative sequence with a(p) = 5*(p-1) for prime p.

The programs for A166635, the canonical program `A166635.P13229008577035398350` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166635 has offset 1).

The definition of A166635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166635.P13229008577035398350

`A165826(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166635

/-- `A165826(n+1)*A003958(n+1)` -/
def P13229008577035398350.Spec : Prop :=
  ∀ n, P13229008577035398350.a n = A166635 (n + 1)

theorem P13229008577035398350.correct : P13229008577035398350.Spec := by
  intro n
  simp only [A166635, Nat.add_sub_cancel]

end A166635

/-! ## A166635.P18168391444765970852

`5^A001222(n+1)*A003958(n+1)`
-/

namespace A166635.P18168391444765970852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166635.P18168391444765970852

namespace A166635

/-- `5^A001222(n+1)*A003958(n+1)` -/
def P18168391444765970852.Spec : Prop :=
  ∀ n, P18168391444765970852.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P9637981279994623290

`A166641(n+1)/A061142(n+1)`
-/

namespace A166635.P9637981279994623290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166641 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166635.P9637981279994623290

namespace A166635

/-- `A166641(n+1)/A061142(n+1)` -/
def P9637981279994623290.Spec : Prop :=
  ∀ n, P9637981279994623290.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P15824443768307855833

`sqrt(A165846(n+1))*A003958(n+1)`
-/

namespace A166635.P15824443768307855833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165846 (n + 1) : ℝ) * (A003958 (n + 1) : ℝ)

end

end A166635.P15824443768307855833

namespace A166635

/-- `sqrt(A165846(n+1))*A003958(n+1)` -/
def P15824443768307855833.Spec : Prop :=
  ∀ n, P15824443768307855833.a n = (A166635 (n + 1) : ℝ)

end A166635

/-! ## A166635.P14380596993779647065

`(1-A322582(n+1)+n)*A165826(n+1)`
-/

namespace A166635.P14380596993779647065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A322582 (n + 1) + (n : ℤ)) * A165826 (n + 1)

end

end A166635.P14380596993779647065

namespace A166635

/-- `(1-A322582(n+1)+n)*A165826(n+1)` -/
def P14380596993779647065.Spec : Prop :=
  ∀ n, P14380596993779647065.a n = A166635 (n + 1)

end A166635

/-! ## A166635.P12119193662036615062

`A000351(A001222(n+1))*A003958(n+1)`
-/

namespace A166635.P12119193662036615062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A001222 (n + 1)).toNat * A003958 (n + 1)

end

end A166635.P12119193662036615062

namespace A166635

/-- `A000351(A001222(n+1))*A003958(n+1)` -/
def P12119193662036615062.Spec : Prop :=
  ∀ n, P12119193662036615062.a n = A166635 (n + 1)

end A166635

/-! ## A166635.P1529352658418263796

`A003958(n+1)*A109624(A061142(n+1))`
-/

namespace A166635.P1529352658418263796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A109624 (A061142 (n + 1)).toNat

end

end A166635.P1529352658418263796

namespace A166635

/-- `A003958(n+1)*A109624(A061142(n+1))` -/
def P1529352658418263796.Spec : Prop :=
  ∀ n, P1529352658418263796.a n = A166635 (n + 1)

end A166635

/-! ## A166635.P415672059126696066

`A003958(n+1)/A003959(n+1)*A166645(n+1)`
-/

namespace A166635.P415672059126696066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A166635.P415672059126696066

namespace A166635

/-- `A003958(n+1)/A003959(n+1)*A166645(n+1)` -/
def P415672059126696066.Spec : Prop :=
  ∀ n, P415672059126696066.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P17034619713361951264

`A109624(n+1)*A165826(n+1)/A166591(n+1)`
-/

namespace A166635.P17034619713361951264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A165826 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166635.P17034619713361951264

namespace A166635

/-- `A109624(n+1)*A165826(n+1)/A166591(n+1)` -/
def P17034619713361951264.Spec : Prop :=
  ∀ n, P17034619713361951264.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P3465301201981955195

`A165826(n+1)/A165825(n+1)*A166634(n+1)`
-/

namespace A166635.P3465301201981955195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166635.P3465301201981955195

namespace A166635

/-- `A165826(n+1)/A165825(n+1)*A166634(n+1)` -/
def P3465301201981955195.Spec : Prop :=
  ∀ n, P3465301201981955195.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P17291381794097473073

`A166652(A061142(n+1))/A061142(n+1)*A166632(n+1)`
-/

namespace A166635.P17291381794097473073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166652 (A061142 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ) * (A166632 (n + 1) : ℚ)

end

end A166635.P17291381794097473073

namespace A166635

/-- `A166652(A061142(n+1))/A061142(n+1)*A166632(n+1)` -/
def P17291381794097473073.Spec : Prop :=
  ∀ n, P17291381794097473073.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P2666007405030786765

`A167321(A061142(n+1))/A167321(n+1)*A109624(n+1)`
-/

namespace A166635.P2666007405030786765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (A061142 (n + 1)).toNat : ℚ) / (A167321 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A166635.P2666007405030786765

namespace A166635

/-- `A167321(A061142(n+1))/A167321(n+1)*A109624(n+1)` -/
def P2666007405030786765.Spec : Prop :=
  ∀ n, P2666007405030786765.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P5264875724982066184

`A167322(A061142(n+1))/A167322(n+1)*A109624(n+1)`
-/

namespace A166635.P5264875724982066184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (A061142 (n + 1)).toNat : ℚ) / (A167322 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A166635.P5264875724982066184

namespace A166635

/-- `A167322(A061142(n+1))/A167322(n+1)*A109624(n+1)` -/
def P5264875724982066184.Spec : Prop :=
  ∀ n, P5264875724982066184.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P10852765367476015708

`A167323(A061142(n+1))/A167323(n+1)*A109624(n+1)`
-/

namespace A166635.P10852765367476015708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (A061142 (n + 1)).toNat : ℚ) / (A167323 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A166635.P10852765367476015708

namespace A166635

/-- `A167323(A061142(n+1))/A167323(n+1)*A109624(n+1)` -/
def P10852765367476015708.Spec : Prop :=
  ∀ n, P10852765367476015708.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P3216182950551212341

`A167328(A061142(n+1))/A167328(n+1)*A109624(n+1)`
-/

namespace A166635.P3216182950551212341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167328 (A061142 (n + 1)).toNat : ℚ) / (A167328 (n + 1) : ℚ) * (A109624 (n + 1) : ℚ)

end

end A166635.P3216182950551212341

namespace A166635

/-- `A167328(A061142(n+1))/A167328(n+1)*A109624(n+1)` -/
def P3216182950551212341.Spec : Prop :=
  ∀ n, P3216182950551212341.a n = (A166635 (n + 1) : ℚ)

end A166635

/-! ## A166635.P6771898382074147323

`A003958(n+1)*A166590(A165824(n+1))`
-/

namespace A166635.P6771898382074147323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166590 (A165824 (n + 1)).toNat

end

end A166635.P6771898382074147323

namespace A166635

/-- `A003958(n+1)*A166590(A165824(n+1))` -/
def P6771898382074147323.Spec : Prop :=
  ∀ n, P6771898382074147323.a n = A166635 (n + 1)

end A166635

/-!
# A166636: Totally multiplicative sequence with a(p) = 6*(p-1) for prime p.

The programs for A166636, the canonical program `A166636.P4848819412909207625` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166636 has offset 1).

The definition of A166636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166636.P4848819412909207625

`A165827(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166636

/-- `A165827(n+1)*A003958(n+1)` -/
def P4848819412909207625.Spec : Prop :=
  ∀ n, P4848819412909207625.a n = A166636 (n + 1)

theorem P4848819412909207625.correct : P4848819412909207625.Spec := by
  intro n
  simp only [A166636, Nat.add_sub_cancel]

end A166636

/-! ## A166636.P13755344361435857437

`6^A001222(n+1)*A003958(n+1)`
-/

namespace A166636.P13755344361435857437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166636.P13755344361435857437

namespace A166636

/-- `6^A001222(n+1)*A003958(n+1)` -/
def P13755344361435857437.Spec : Prop :=
  ∀ n, P13755344361435857437.a n = (A166636 (n + 1) : ℚ)

end A166636

/-! ## A166636.P9076592497916067903

`A061142(n+1)*A166633(n+1)`
-/

namespace A166636.P9076592497916067903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166633 (n + 1)

end

end A166636.P9076592497916067903

namespace A166636

/-- `A061142(n+1)*A166633(n+1)` -/
def P9076592497916067903.Spec : Prop :=
  ∀ n, P9076592497916067903.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P2434414950555642200

`A165824(n+1)*A166632(n+1)`
-/

namespace A166636.P2434414950555642200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166632 (n + 1)

end

end A166636.P2434414950555642200

namespace A166636

/-- `A165824(n+1)*A166632(n+1)` -/
def P2434414950555642200.Spec : Prop :=
  ∀ n, P2434414950555642200.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P4111190891521297244

`lcm(A166632(n+1), A166633(n+1))`
-/

namespace A166636.P4111190891521297244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166632 (n + 1)) (A166633 (n + 1))

end

end A166636.P4111190891521297244

namespace A166636

/-- `lcm(A166632(n+1), A166633(n+1))` -/
def P4111190891521297244.Spec : Prop :=
  ∀ n, (P4111190891521297244.a n : ℤ) = A166636 (n + 1)

end A166636

/-! ## A166636.P4982335859730309755

`sqrt(A166634(n+1)*A166640(n+1))`
-/

namespace A166636.P4982335859730309755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166634 (n + 1) * A166640 (n + 1) : ℝ)

end

end A166636.P4982335859730309755

namespace A166636

/-- `sqrt(A166634(n+1)*A166640(n+1))` -/
def P4982335859730309755.Spec : Prop :=
  ∀ n, P4982335859730309755.a n = (A166636 (n + 1) : ℝ)

end A166636

/-! ## A166636.P2964279577957928839

`A003958(n+1)*A166642(A061142(n+1))`
-/

namespace A166636.P2964279577957928839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166642 (A061142 (n + 1)).toNat

end

end A166636.P2964279577957928839

namespace A166636

/-- `A003958(n+1)*A166642(A061142(n+1))` -/
def P2964279577957928839.Spec : Prop :=
  ∀ n, P2964279577957928839.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P2974731629458825357

`A003959(A061142(n+1))*A166632(n+1)`
-/

namespace A166636.P2974731629458825357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A061142 (n + 1)).toNat * A166632 (n + 1)

end

end A166636.P2974731629458825357

namespace A166636

/-- `A003959(A061142(n+1))*A166632(n+1)` -/
def P2974731629458825357.Spec : Prop :=
  ∀ n, P2974731629458825357.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P9273996887794950002

`A003958(n+1)*A061142(n+1)*A165824(n+1)`
-/

namespace A166636.P9273996887794950002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A061142 (n + 1) * A165824 (n + 1)

end

end A166636.P9273996887794950002

namespace A166636

/-- `A003958(n+1)*A061142(n+1)*A165824(n+1)` -/
def P9273996887794950002.Spec : Prop :=
  ∀ n, P9273996887794950002.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P13693014304269544194

`A003958(n+1)/A003959(n+1)*A166646(n+1)`
-/

namespace A166636.P13693014304269544194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166646 (n + 1) : ℚ)

end

end A166636.P13693014304269544194

namespace A166636

/-- `A003958(n+1)/A003959(n+1)*A166646(n+1)` -/
def P13693014304269544194.Spec : Prop :=
  ∀ n, P13693014304269544194.a n = (A166636 (n + 1) : ℚ)

end A166636

/-! ## A166636.P15587219110378441981

`A165824(n+1)/A061142(n+1)*A166634(n+1)`
-/

namespace A166636.P15587219110378441981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166636.P15587219110378441981

namespace A166636

/-- `A165824(n+1)/A061142(n+1)*A166634(n+1)` -/
def P15587219110378441981.Spec : Prop :=
  ∀ n, P15587219110378441981.a n = (A166636 (n + 1) : ℚ)

end A166636

/-! ## A166636.P5515338767610699929

`A003959(A166632(n+1)/A003958(n+1))*A166632(n+1)`
-/

namespace A166636.P5515338767610699929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (SequenceMachineLib.roundAway ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat * A166632 (n + 1)

end

end A166636.P5515338767610699929

namespace A166636

/-- `A003959(A166632(n+1)/A003958(n+1))*A166632(n+1)` -/
def P5515338767610699929.Spec : Prop :=
  ∀ n, P5515338767610699929.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P6620916503305511488

`A003958(n+1)*A166642(A166642(n+1)/A003959(n+1))`
-/

namespace A166636.P6620916503305511488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166642 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166636.P6620916503305511488

namespace A166636

/-- `A003958(n+1)*A166642(A166642(n+1)/A003959(n+1))` -/
def P6620916503305511488.Spec : Prop :=
  ∀ n, P6620916503305511488.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P16892413969882391431

`A003958(A165824(n+1))*A166633(n+1)`
-/

namespace A166636.P16892413969882391431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166633 (n + 1)

end

end A166636.P16892413969882391431

namespace A166636

/-- `A003958(A165824(n+1))*A166633(n+1)` -/
def P16892413969882391431.Spec : Prop :=
  ∀ n, P16892413969882391431.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P16746036424095831952

`A003958(A166633(n+1)/A003958(n+1))*A166633(n+1)`
-/

namespace A166636.P16746036424095831952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat * A166633 (n + 1)

end

end A166636.P16746036424095831952

namespace A166636

/-- `A003958(A166633(n+1)/A003958(n+1))*A166633(n+1)` -/
def P16746036424095831952.Spec : Prop :=
  ∀ n, P16746036424095831952.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P17388717415877328386

`A125131(n+1)*A165824(n+1)*A125131(A165824(n+1))`
-/

namespace A166636.P17388717415877328386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (n + 1) * A165824 (n + 1) * A125131 (A165824 (n + 1)).toNat

end

end A166636.P17388717415877328386

namespace A166636

/-- `A125131(n+1)*A165824(n+1)*A125131(A165824(n+1))` -/
def P17388717415877328386.Spec : Prop :=
  ∀ n, P17388717415877328386.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P17353941583763934459

`A109624(n+1)*A166591(A165824(n+1))/A166591(n+1)`
-/

namespace A166636.P17353941583763934459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A166591 (A165824 (n + 1)).toNat : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166636.P17353941583763934459

namespace A166636

/-- `A109624(n+1)*A166591(A165824(n+1))/A166591(n+1)` -/
def P17353941583763934459.Spec : Prop :=
  ∀ n, P17353941583763934459.a n = (A166636 (n + 1) : ℚ)

end A166636

/-! ## A166636.P9793160113636547652

`A003958(n+1)*A003959(A165826(n+1))`
-/

namespace A166636.P9793160113636547652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (A165826 (n + 1)).toNat

end

end A166636.P9793160113636547652

namespace A166636

/-- `A003958(n+1)*A003959(A165826(n+1))` -/
def P9793160113636547652.Spec : Prop :=
  ∀ n, P9793160113636547652.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P18356673342876823351

`A003958(n+1)*A003959(A166635(n+1)/A003958(n+1))`
-/

namespace A166636.P18356673342876823351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166635 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A166636.P18356673342876823351

namespace A166636

/-- `A003958(n+1)*A003959(A166635(n+1)/A003958(n+1))` -/
def P18356673342876823351.Spec : Prop :=
  ∀ n, P18356673342876823351.a n = A166636 (n + 1)

end A166636

/-! ## A166636.P210667712385224499

`A003958(n+1)*A003959(A166645(n+1)/A003959(n+1))`
-/

namespace A166636.P210667712385224499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166645 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166636.P210667712385224499

namespace A166636

/-- `A003958(n+1)*A003959(A166645(n+1)/A003959(n+1))` -/
def P210667712385224499.Spec : Prop :=
  ∀ n, P210667712385224499.a n = A166636 (n + 1)

end A166636

/-!
# A166637: Totally multiplicative sequence with a(p) = 7*(p-1) for prime p.

The programs for A166637, the canonical program `A166637.P15737962194861513579` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166637 has offset 1).

The definition of A166637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166637.P15737962194861513579

`A165828(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166637

/-- `A165828(n+1)*A003958(n+1)` -/
def P15737962194861513579.Spec : Prop :=
  ∀ n, P15737962194861513579.a n = A166637 (n + 1)

theorem P15737962194861513579.correct : P15737962194861513579.Spec := by
  intro n
  simp only [A166637, Nat.add_sub_cancel]

end A166637

/-! ## A166637.P10837891938128127709

`7^A001222(n+1)*A003958(n+1)`
-/

namespace A166637.P10837891938128127709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166637.P10837891938128127709

namespace A166637

/-- `7^A001222(n+1)*A003958(n+1)` -/
def P10837891938128127709.Spec : Prop :=
  ∀ n, P10837891938128127709.a n = (A166637 (n + 1) : ℚ)

end A166637

/-! ## A166637.P1441664855437847454

`sqrt(A165870(n+1))*A003958(n+1)`
-/

namespace A166637.P1441664855437847454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165870 (n + 1) : ℝ) * (A003958 (n + 1) : ℝ)

end

end A166637.P1441664855437847454

namespace A166637

/-- `sqrt(A165870(n+1))*A003958(n+1)` -/
def P1441664855437847454.Spec : Prop :=
  ∀ n, P1441664855437847454.a n = (A166637 (n + 1) : ℝ)

end A166637

/-! ## A166637.P3403618386602325278

`7^val(A167334(n+1), 2)*A003958(n+1)`
-/

namespace A166637.P3403618386602325278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ SequenceMachineLib.valuation (A167334 (n + 1)).toNat 2 : ℤ) * A003958 (n + 1)

end

end A166637.P3403618386602325278

namespace A166637

/-- `7^val(A167334(n+1), 2)*A003958(n+1)` -/
def P3403618386602325278.Spec : Prop :=
  ∀ n, P3403618386602325278.a n = A166637 (n + 1)

end A166637

/-! ## A166637.P8739025641591359345

`7^val(A165825(n+1), 4)*A003958(n+1)`
-/

namespace A166637.P8739025641591359345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ) * A003958 (n + 1)

end

end A166637.P8739025641591359345

namespace A166637

/-- `7^val(A165825(n+1), 4)*A003958(n+1)` -/
def P8739025641591359345.Spec : Prop :=
  ∀ n, P8739025641591359345.a n = A166637 (n + 1)

end A166637

/-! ## A166637.P14219250296831839104

`A166628(n+1)/(n+1)*A003958(n+1)`
-/

namespace A166637.P14219250296831839104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166628 (n + 1) : ℚ) / (n + 1 : ℚ) * (A003958 (n + 1) : ℚ)

end

end A166637.P14219250296831839104

namespace A166637

/-- `A166628(n+1)/(n+1)*A003958(n+1)` -/
def P14219250296831839104.Spec : Prop :=
  ∀ n, P14219250296831839104.a n = (A166637 (n + 1) : ℚ)

end A166637

/-! ## A166637.P3841562856115693784

`A000420(A001222(n+1))*A003958(n+1)`
-/

namespace A166637.P3841562856115693784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A001222 (n + 1)).toNat * A003958 (n + 1)

end

end A166637.P3841562856115693784

namespace A166637

/-- `A000420(A001222(n+1))*A003958(n+1)` -/
def P3841562856115693784.Spec : Prop :=
  ∀ n, P3841562856115693784.a n = A166637 (n + 1)

end A166637

/-! ## A166637.P9877156293407464504

`A003958(n+1)/A003959(n+1)*A166647(n+1)`
-/

namespace A166637.P9877156293407464504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166647 (n + 1) : ℚ)

end

end A166637.P9877156293407464504

namespace A166637

/-- `A003958(n+1)/A003959(n+1)*A166647(n+1)` -/
def P9877156293407464504.Spec : Prop :=
  ∀ n, P9877156293407464504.a n = (A166637 (n + 1) : ℚ)

end A166637

/-! ## A166637.P1474149692539130111

`A003958(n+1)*A037455(A165824(n+1))`
-/

namespace A166637.P1474149692539130111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A037455 (A165824 (n + 1)).toNat

end

end A166637.P1474149692539130111

namespace A166637

/-- `A003958(n+1)*A037455(A165824(n+1))` -/
def P1474149692539130111.Spec : Prop :=
  ∀ n, P1474149692539130111.a n = A166637 (n + 1)

end A166637

/-! ## A166637.P5827249220582038199

`A003958(n+1)*A166590(A165826(n+1))`
-/

namespace A166637.P5827249220582038199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166590 (A165826 (n + 1)).toNat

end

end A166637.P5827249220582038199

namespace A166637

/-- `A003958(n+1)*A166590(A165826(n+1))` -/
def P5827249220582038199.Spec : Prop :=
  ∀ n, P5827249220582038199.a n = A166637 (n + 1)

end A166637

/-!
# A166638: Totally multiplicative sequence with a(p) = 8*(p-1) for prime p.

The programs for A166638, the canonical program `A166638.P18397209696544303863` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166638 has offset 1).

The definition of A166638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166638.P18397209696544303863

`A165829(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166638

/-- `A165829(n+1)*A003958(n+1)` -/
def P18397209696544303863.Spec : Prop :=
  ∀ n, P18397209696544303863.a n = A166638 (n + 1)

theorem P18397209696544303863.correct : P18397209696544303863.Spec := by
  intro n
  simp only [A166638, Nat.add_sub_cancel]

end A166638

/-! ## A166638.P14623951127582747754

`8^A001222(n+1)*A003958(n+1)`
-/

namespace A166638.P14623951127582747754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166638.P14623951127582747754

namespace A166638

/-- `8^A001222(n+1)*A003958(n+1)` -/
def P14623951127582747754.Spec : Prop :=
  ∀ n, P14623951127582747754.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P14722161821496971031

`A061142(n+1)*A166634(n+1)`
-/

namespace A166638.P14722161821496971031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166634 (n + 1)

end

end A166638.P14722161821496971031

namespace A166638

/-- `A061142(n+1)*A166634(n+1)` -/
def P14722161821496971031.Spec : Prop :=
  ∀ n, P14722161821496971031.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P1178616744698235025

`A165825(n+1)*A166632(n+1)`
-/

namespace A166638.P1178616744698235025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166632 (n + 1)

end

end A166638.P1178616744698235025

namespace A166638

/-- `A165825(n+1)*A166632(n+1)` -/
def P1178616744698235025.Spec : Prop :=
  ∀ n, P1178616744698235025.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P16866440787294083253

`A061142(n+1)²*A166632(n+1)`
-/

namespace A166638.P16866440787294083253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166632 (n + 1)

end

end A166638.P16866440787294083253

namespace A166638

/-- `A061142(n+1)²*A166632(n+1)` -/
def P16866440787294083253.Spec : Prop :=
  ∀ n, P16866440787294083253.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P18134926074279591376

`A165872(n+1)²*A166632(n+1)`
-/

namespace A166638.P18134926074279591376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1) ^ 2 * A166632 (n + 1)

end

end A166638.P18134926074279591376

namespace A166638

/-- `A165872(n+1)²*A166632(n+1)` -/
def P18134926074279591376.Spec : Prop :=
  ∀ n, P18134926074279591376.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P9593377222050500883

`A003958(n+1)/A003959(n+1)*A166648(n+1)`
-/

namespace A166638.P9593377222050500883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166648 (n + 1) : ℚ)

end

end A166638.P9593377222050500883

namespace A166638

/-- `A003958(n+1)/A003959(n+1)*A166648(n+1)` -/
def P9593377222050500883.Spec : Prop :=
  ∀ n, P9593377222050500883.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P14277964131910624996

`A109624(n+1)*A165829(n+1)/A166591(n+1)`
-/

namespace A166638.P14277964131910624996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) * A165829 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ)

end

end A166638.P14277964131910624996

namespace A166638

/-- `A109624(n+1)*A165829(n+1)/A166591(n+1)` -/
def P14277964131910624996.Spec : Prop :=
  ∀ n, P14277964131910624996.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P16525557245979864532

`A003958(n+1)*A061142(n+1)*A061142(n+1)²`
-/

namespace A166638.P16525557245979864532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A061142 (n + 1) * A061142 (n + 1) ^ 2

end

end A166638.P16525557245979864532

namespace A166638

/-- `A003958(n+1)*A061142(n+1)*A061142(n+1)²` -/
def P16525557245979864532.Spec : Prop :=
  ∀ n, P16525557245979864532.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P5564181014904966500

`A125131(n+1)*A165872(n+1)*A165872(n+1)²`
-/

namespace A166638.P5564181014904966500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (n + 1) * A165872 (n + 1) * A165872 (n + 1) ^ 2

end

end A166638.P5564181014904966500

namespace A166638

/-- `A125131(n+1)*A165872(n+1)*A165872(n+1)²` -/
def P5564181014904966500.Spec : Prop :=
  ∀ n, P5564181014904966500.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P1309098153293456746

`A003958(n+1)*A165825(n+1)*sqrt(A165825(n+1))`
-/

namespace A166638.P1309098153293456746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) * A165825 (n + 1) : ℝ) * Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166638.P1309098153293456746

namespace A166638

/-- `A003958(n+1)*A165825(n+1)*sqrt(A165825(n+1))` -/
def P1309098153293456746.Spec : Prop :=
  ∀ n, P1309098153293456746.a n = (A166638 (n + 1) : ℝ)

end A166638

/-! ## A166638.P18182062249138836876

`(A166632(n+1)/A003958(n+1))²*A166632(n+1)`
-/

namespace A166638.P18182062249138836876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2 * (A166632 (n + 1) : ℚ)

end

end A166638.P18182062249138836876

namespace A166638

/-- `(A166632(n+1)/A003958(n+1))²*A166632(n+1)` -/
def P18182062249138836876.Spec : Prop :=
  ∀ n, P18182062249138836876.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P8861867705207378670

`(A166632(n+1)/A125131(n+1))²*A166632(n+1)`
-/

namespace A166638.P8861867705207378670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166632 (n + 1) : ℚ) / (A125131 (n + 1) : ℚ)) ^ 2 * (A166632 (n + 1) : ℚ)

end

end A166638.P8861867705207378670

namespace A166638

/-- `(A166632(n+1)/A125131(n+1))²*A166632(n+1)` -/
def P8861867705207378670.Spec : Prop :=
  ∀ n, P8861867705207378670.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P5336892471256267257

`A166634(n+1)²/gcd(A166634(n+1), A166636(n+1))`
-/

namespace A166638.P5336892471256267257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) ^ 2 : ℚ) / (Int.gcd (A166634 (n + 1)) (A166636 (n + 1)) : ℚ)

end

end A166638.P5336892471256267257

namespace A166638

/-- `A166634(n+1)²/gcd(A166634(n+1), A166636(n+1))` -/
def P5336892471256267257.Spec : Prop :=
  ∀ n, P5336892471256267257.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P10249047155897847633

`A003958(A165824(n+1))*A166634(n+1)`
-/

namespace A166638.P10249047155897847633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166634 (n + 1)

end

end A166638.P10249047155897847633

namespace A166638

/-- `A003958(A165824(n+1))*A166634(n+1)` -/
def P10249047155897847633.Spec : Prop :=
  ∀ n, P10249047155897847633.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P2511435883393555996

`A166632(A165824(n+1))*A166632(n+1)`
-/

namespace A166638.P2511435883393555996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166632 (A165824 (n + 1)).toNat * A166632 (n + 1)

end

end A166638.P2511435883393555996

namespace A166638

/-- `A166632(A165824(n+1))*A166632(n+1)` -/
def P2511435883393555996.Spec : Prop :=
  ∀ n, P2511435883393555996.a n = A166638 (n + 1)

end A166638

/-! ## A166638.P13478146364982371951

`A166634(A165824(n+1))/A165825(n+1)*A166634(n+1)`
-/

namespace A166638.P13478146364982371951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (A165824 (n + 1)).toNat : ℚ) / (A165825 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166638.P13478146364982371951

namespace A166638

/-- `A166634(A165824(n+1))/A165825(n+1)*A166634(n+1)` -/
def P13478146364982371951.Spec : Prop :=
  ∀ n, P13478146364982371951.a n = (A166638 (n + 1) : ℚ)

end A166638

/-! ## A166638.P6185725340206961902

`A166632(A123667(n+1))²/A166632(n+1)`
-/

namespace A166638.P6185725340206961902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166632 (A123667 (n + 1)).toNat ^ 2 : ℚ) / (A166632 (n + 1) : ℚ)

end

end A166638.P6185725340206961902

namespace A166638

/-- `A166632(A123667(n+1))²/A166632(n+1)` -/
def P6185725340206961902.Spec : Prop :=
  ∀ n, P6185725340206961902.a n = (A166638 (n + 1) : ℚ)

end A166638

/-!
# A166639: a(n) = 6*n + 3 + 4*(-1)^n.

The programs for A166639, the canonical program `A166639.P9438259259405059518` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166639 has offset 0).

The definition of A166639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+3+4*(-1)^n` (program `A166639.P9438259259405059518`, by `A166639.P9438259259405059518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166639.P9438259259405059518

`6*n+3+4*(-1)^n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166639

/-- `6*n+3+4*(-1)^n` -/
def P9438259259405059518.Spec : Prop :=
  ∀ n, P9438259259405059518.a n = A166639 n

theorem P9438259259405059518.correct : P9438259259405059518.Spec := by
  intro n
  simp only [A166639]

end A166639

/-! ## A166639.P8168966173606300321

`xor(2, xor(2, 6*n)+3)`
-/

namespace A166639.P8168966173606300321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor 2 (6 * n) + 3)

end

end A166639.P8168966173606300321

namespace A166639

/-- `xor(2, xor(2, 6*n)+3)` -/
def P8168966173606300321.Spec : Prop :=
  ∀ n, (P8168966173606300321.a n : ℤ) = A166639 n

end A166639

/-! ## A166639.P5560862122102160322

`∑[12-a(n-1)]` with `a(0)=7, a(1)=-2`
-/

namespace A166639.P5560862122102160322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, -2] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166639.P5560862122102160322

namespace A166639

/-- `∑[12-a(n-1)]` -/
def P5560862122102160322.Spec : Prop :=
  ∀ n, P5560862122102160322.a n = A166639 n

end A166639

/-! ## A166639.P6005143247961431534

`∑[∑[ogf((7-2x+7x^2)/(1+x))]]`
-/

namespace A166639.P6005143247961431534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -2, 7] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166639.P6005143247961431534

namespace A166639

/-- `∑[∑[ogf((7-2x+7x^2)/(1+x))]]` -/
def P6005143247961431534.Spec : Prop :=
  ∀ n, P6005143247961431534.a n = A166639 n

end A166639

/-! ## A166639.P10962696137532683961

`ogf((7-2x+7x^2)/(1-x-x^2+x^3))`
-/

namespace A166639.P10962696137532683961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -2, 7] [1, -1, -1, 1] n

end

end A166639.P10962696137532683961

namespace A166639

/-- `ogf((7-2x+7x^2)/(1-x-x^2+x^3))` -/
def P10962696137532683961.Spec : Prop :=
  ∀ n, P10962696137532683961.a n = A166639 n

end A166639

/-! ## A166639.P1766108889970122980

`xor(2, 1-xor(6*n, -4))`
-/

namespace A166639.P1766108889970122980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (1 - Int.xor (6 * n : ℤ) (-4))

end

end A166639.P1766108889970122980

namespace A166639

/-- `xor(2, 1-xor(6*n, -4))` -/
def P1766108889970122980.Spec : Prop :=
  ∀ n, P1766108889970122980.a n = A166639 n

end A166639

/-! ## A166639.P9955567439498725721

`A092242(xor(1, n)+1)`
-/

namespace A166639.P9955567439498725721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (Nat.xor 1 n + 1)

end

end A166639.P9955567439498725721

namespace A166639

/-- `A092242(xor(1, n)+1)` -/
def P9955567439498725721.Spec : Prop :=
  ∀ n, P9955567439498725721.a n = A166639 n

end A166639

/-! ## A166639.P8251054311892507741

`∑[log2(A040071(n))²-2]`
-/

namespace A166639.P8251054311892507741
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040071 n : ℝ) ^ 2 - 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166639.P8251054311892507741

namespace A166639

/-- `∑[log2(A040071(n))²-2]` -/
def P8251054311892507741.Spec : Prop :=
  ∀ n, P8251054311892507741.a n = (A166639 n : ℝ)

end A166639

/-! ## A166639.P287692715213937746

`A092242(A014681(n+1))`
-/

namespace A166639.P287692715213937746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (A014681 (n + 1)).toNat

end

end A166639.P287692715213937746

namespace A166639

/-- `A092242(A014681(n+1))` -/
def P287692715213937746.Spec : Prop :=
  ∀ n, P287692715213937746.a n = A166639 n

end A166639

/-! ## A166639.P6670913672828288642

`A092242(A103889(n+1))`
-/

namespace A166639.P6670913672828288642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (A103889 (n + 1)).toNat

end

end A166639.P6670913672828288642

namespace A166639

/-- `A092242(A103889(n+1))` -/
def P6670913672828288642.Spec : Prop :=
  ∀ n, P6670913672828288642.a n = A166639 n

end A166639

/-! ## A166639.P3641550744825514590

`A001520(n)%A259751(n+1)`
-/

namespace A166639.P3641550744825514590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A259751 (n + 1))

end

end A166639.P3641550744825514590

namespace A166639

/-- `A001520(n)%A259751(n+1)` -/
def P3641550744825514590.Spec : Prop :=
  ∀ n, P3641550744825514590.a n = A166639 n

end A166639

/-! ## A166639.P16393221606083460092

`A263536(A166517(n))`
-/

namespace A166639.P16393221606083460092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263536 (A166517 n).toNat

end

end A166639.P16393221606083460092

namespace A166639

/-- `A263536(A166517(n))` -/
def P16393221606083460092.Spec : Prop :=
  ∀ n, P16393221606083460092.a n = A166639 n

end A166639

/-! ## A166639.P14851981085287204120

`A038179(A357130(n+1))`
-/

namespace A166639.P14851981085287204120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (A357130 (n + 1)).toNat

end

end A166639.P14851981085287204120

namespace A166639

/-- `A038179(A357130(n+1))` -/
def P14851981085287204120.Spec : Prop :=
  ∀ n, P14851981085287204120.a n = A166639 n

end A166639

/-! ## A166639.P12622822718488632951

`A007310(A168329(n+1)-n)`
-/

namespace A166639.P12622822718488632951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A168329 (n + 1) - (n : ℤ)).toNat

end

end A166639.P12622822718488632951

namespace A166639

/-- `A007310(A168329(n+1)-n)` -/
def P12622822718488632951.Spec : Prop :=
  ∀ n, P12622822718488632951.a n = A166639 n

end A166639

/-! ## A166639.P14638090574360388414

`A007310(A047270(A109613(n))-n)`
-/

namespace A166639.P14638090574360388414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A047270 (A109613 n).toNat - (n : ℤ)).toNat

end

end A166639.P14638090574360388414

namespace A166639

/-- `A007310(A047270(A109613(n))-n)` -/
def P14638090574360388414.Spec : Prop :=
  ∀ n, P14638090574360388414.a n = A166639 n

end A166639

/-! ## A166639.P15446206654701578386

`A004443(A092242(n+1))`
-/

namespace A166639.P15446206654701578386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A092242 (n + 1)).toNat

end

end A166639.P15446206654701578386

namespace A166639

/-- `A004443(A092242(n+1))` -/
def P15446206654701578386.Spec : Prop :=
  ∀ n, P15446206654701578386.a n = A166639 n

end A166639

/-! ## A166639.P9647721353611267270

`A166519(A047243(n+1))`
-/

namespace A166639.P9647721353611267270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A047243 (n + 1)).toNat

end

end A166639.P9647721353611267270

namespace A166639

/-- `A166519(A047243(n+1))` -/
def P9647721353611267270.Spec : Prop :=
  ∀ n, P9647721353611267270.a n = A166639 n

end A166639

/-! ## A166639.P10783578657510329794

`A166519(A168277(n+1)+n+1)`
-/

namespace A166639.P10783578657510329794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A168277 (n + 1) + (n + 1 : ℤ)).toNat

end

end A166639.P10783578657510329794

namespace A166639

/-- `A166519(A168277(n+1)+n+1)` -/
def P10783578657510329794.Spec : Prop :=
  ∀ n, P10783578657510329794.a n = A166639 n

end A166639

/-! ## A166639.P197665003825587997

`A166519(A103889(2*n+1+n))`
-/

namespace A166639.P197665003825587997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A103889 (2 * n + 1 + n)).toNat

end

end A166639.P197665003825587997

namespace A166639

/-- `A166519(A103889(2*n+1+n))` -/
def P197665003825587997.Spec : Prop :=
  ∀ n, P197665003825587997.a n = A166639 n

end A166639

/-! ## A166639.P15985879915371675553

`A147677(A047461(n+1))`
-/

namespace A166639.P15985879915371675553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147677 (A047461 (n + 1)).toNat

end

end A166639.P15985879915371675553

namespace A166639

/-- `A147677(A047461(n+1))` -/
def P15985879915371675553.Spec : Prop :=
  ∀ n, P15985879915371675553.a n = A166639 n

end A166639

/-!
# A166640: Totally multiplicative sequence with a(p) = 9*(p-1) for prime p.

The programs for A166640, the canonical program `A166640.P9754235221064067065` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166640 has offset 1).

The definition of A166640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166640.P9754235221064067065

`A165830(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166640

/-- `A165830(n+1)*A003958(n+1)` -/
def P9754235221064067065.Spec : Prop :=
  ∀ n, P9754235221064067065.a n = A166640 (n + 1)

theorem P9754235221064067065.correct : P9754235221064067065.Spec := by
  intro n
  simp only [A166640, Nat.add_sub_cancel]

end A166640

/-! ## A166640.P10593354793427242210

`9^A001222(n+1)*A003958(n+1)`
-/

namespace A166640.P10593354793427242210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166640.P10593354793427242210

namespace A166640

/-- `9^A001222(n+1)*A003958(n+1)` -/
def P10593354793427242210.Spec : Prop :=
  ∀ n, P10593354793427242210.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P15333259542213899310

`A165824(n+1)*A166633(n+1)`
-/

namespace A166640.P15333259542213899310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166633 (n + 1)

end

end A166640.P15333259542213899310

namespace A166640

/-- `A165824(n+1)*A166633(n+1)` -/
def P15333259542213899310.Spec : Prop :=
  ∀ n, P15333259542213899310.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P7809025109670222565

`A165824(n+1)²*A003958(n+1)`
-/

namespace A166640.P7809025109670222565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A003958 (n + 1)

end

end A166640.P7809025109670222565

namespace A166640

/-- `A165824(n+1)²*A003958(n+1)` -/
def P7809025109670222565.Spec : Prop :=
  ∀ n, P7809025109670222565.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P17892744023712934665

`A166633(n+1)²/A003958(n+1)`
-/

namespace A166640.P17892744023712934665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) ^ 2 : ℚ) / (A003958 (n + 1) : ℚ)

end

end A166640.P17892744023712934665

namespace A166640

/-- `A166633(n+1)²/A003958(n+1)` -/
def P17892744023712934665.Spec : Prop :=
  ∀ n, P17892744023712934665.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P13800321738814256855

`A166636(n+1)²/A166634(n+1)`
-/

namespace A166640.P13800321738814256855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166636 (n + 1) ^ 2 : ℚ) / (A166634 (n + 1) : ℚ)

end

end A166640.P13800321738814256855

namespace A166640

/-- `A166636(n+1)²/A166634(n+1)` -/
def P13800321738814256855.Spec : Prop :=
  ∀ n, P13800321738814256855.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P17864404707093490744

`A003958(n+1)*A166643(A061142(n+1))`
-/

namespace A166640.P17864404707093490744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166643 (A061142 (n + 1)).toNat

end

end A166640.P17864404707093490744

namespace A166640

/-- `A003958(n+1)*A166643(A061142(n+1))` -/
def P17864404707093490744.Spec : Prop :=
  ∀ n, P17864404707093490744.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P9870496216220011674

`A166633(A061142(n+1))*A166633(n+1)`
-/

namespace A166640.P9870496216220011674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (A061142 (n + 1)).toNat * A166633 (n + 1)

end

end A166640.P9870496216220011674

namespace A166640

/-- `A166633(A061142(n+1))*A166633(n+1)` -/
def P9870496216220011674.Spec : Prop :=
  ∀ n, P9870496216220011674.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P11471896577224102638

`A003958(n+1)/A003959(n+1)*A166649(n+1)`
-/

namespace A166640.P11471896577224102638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166649 (n + 1) : ℚ)

end

end A166640.P11471896577224102638

namespace A166640

/-- `A003958(n+1)/A003959(n+1)*A166649(n+1)` -/
def P11471896577224102638.Spec : Prop :=
  ∀ n, P11471896577224102638.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P17582424585315623890

`A166633(n+1)/A003959(n+1)*A166643(n+1)`
-/

namespace A166640.P17582424585315623890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166640.P17582424585315623890

namespace A166640

/-- `A166633(n+1)/A003959(n+1)*A166643(n+1)` -/
def P17582424585315623890.Spec : Prop :=
  ∀ n, P17582424585315623890.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P9405655383762496597

`(A166643(n+1)/A003959(n+1))²*A003958(n+1)`
-/

namespace A166640.P9405655383762496597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2 * (A003958 (n + 1) : ℚ)

end

end A166640.P9405655383762496597

namespace A166640

/-- `(A166643(n+1)/A003959(n+1))²*A003958(n+1)` -/
def P9405655383762496597.Spec : Prop :=
  ∀ n, P9405655383762496597.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P15371036118542624088

`(A165827(n+1)/A061142(n+1))²*A003958(n+1)`
-/

namespace A166640.P15371036118542624088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165827 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A003958 (n + 1) : ℚ)

end

end A166640.P15371036118542624088

namespace A166640

/-- `(A165827(n+1)/A061142(n+1))²*A003958(n+1)` -/
def P15371036118542624088.Spec : Prop :=
  ∀ n, P15371036118542624088.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P6929907385247172008

`A003958(n+1)²/A109624(n+1)*A167328(n+1)`
-/

namespace A166640.P6929907385247172008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) ^ 2 : ℚ) / (A109624 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A166640.P6929907385247172008

namespace A166640

/-- `A003958(n+1)²/A109624(n+1)*A167328(n+1)` -/
def P6929907385247172008.Spec : Prop :=
  ∀ n, P6929907385247172008.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P3630904786210709080

`(A165824(n+1)/A061142(n+1))²*A166634(n+1)`
-/

namespace A166640.P3630904786210709080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A166634 (n + 1) : ℚ)

end

end A166640.P3630904786210709080

namespace A166640

/-- `(A165824(n+1)/A061142(n+1))²*A166634(n+1)` -/
def P3630904786210709080.Spec : Prop :=
  ∀ n, P3630904786210709080.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P5879215848845871559

`A165824(n+1)²/A061142(n+1)*A166632(n+1)`
-/

namespace A166640.P5879215848845871559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A061142 (n + 1) : ℚ) * (A166632 (n + 1) : ℚ)

end

end A166640.P5879215848845871559

namespace A166640

/-- `A165824(n+1)²/A061142(n+1)*A166632(n+1)` -/
def P5879215848845871559.Spec : Prop :=
  ∀ n, P5879215848845871559.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P16737221794249146559

`A109624(n+1)/A166591(n+1)*A165824(n+1)²`
-/

namespace A166640.P16737221794249146559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109624 (n + 1) : ℚ) / (A166591 (n + 1) : ℚ) * (A165824 (n + 1) ^ 2 : ℚ)

end

end A166640.P16737221794249146559

namespace A166640

/-- `A109624(n+1)/A166591(n+1)*A165824(n+1)²` -/
def P16737221794249146559.Spec : Prop :=
  ∀ n, P16737221794249146559.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P765428275150361981

`A165824(n+1)²/A165825(n+1)*A166634(n+1)`
-/

namespace A166640.P765428275150361981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℚ) / (A165825 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166640.P765428275150361981

namespace A166640

/-- `A165824(n+1)²/A165825(n+1)*A166634(n+1)` -/
def P765428275150361981.Spec : Prop :=
  ∀ n, P765428275150361981.a n = (A166640 (n + 1) : ℚ)

end A166640

/-! ## A166640.P7893230784126064065

`A003958(n+1)*A003959(A165825(n+1))`
-/

namespace A166640.P7893230784126064065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (A165825 (n + 1)).toNat

end

end A166640.P7893230784126064065

namespace A166640

/-- `A003958(n+1)*A003959(A165825(n+1))` -/
def P7893230784126064065.Spec : Prop :=
  ∀ n, P7893230784126064065.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P3336965485907756702

`A003958(n+1)*A003959(A061142(n+1)²)`
-/

namespace A166640.P3336965485907756702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (A061142 (n + 1) ^ 2).toNat

end

end A166640.P3336965485907756702

namespace A166640

/-- `A003958(n+1)*A003959(A061142(n+1)²)` -/
def P3336965485907756702.Spec : Prop :=
  ∀ n, P3336965485907756702.a n = A166640 (n + 1)

end A166640

/-! ## A166640.P3781242929936006286

`A003958(n+1)*A003959(A166634(n+1)/A003958(n+1))`
-/

namespace A166640.P3781242929936006286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166634 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A166640.P3781242929936006286

namespace A166640

/-- `A003958(n+1)*A003959(A166634(n+1)/A003958(n+1))` -/
def P3781242929936006286.Spec : Prop :=
  ∀ n, P3781242929936006286.a n = A166640 (n + 1)

end A166640

/-!
# A166641: Totally multiplicative sequence with a(p) = 10*(p-1) for prime p.

The programs for A166641, the canonical program `A166641.P8011602874884958725` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166641 has offset 1).

The definition of A166641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003958, A165831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166641.P8011602874884958725

`A165831(n+1)*A003958(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A166641

/-- `A165831(n+1)*A003958(n+1)` -/
def P8011602874884958725.Spec : Prop :=
  ∀ n, P8011602874884958725.a n = A166641 (n + 1)

theorem P8011602874884958725.correct : P8011602874884958725.Spec := by
  intro n
  simp only [A166641, Nat.add_sub_cancel]

end A166641

/-! ## A166641.P16442091115128143069

`10^A001222(n+1)*A003958(n+1)`
-/

namespace A166641.P16442091115128143069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003958 (n + 1) : ℚ)

end

end A166641.P16442091115128143069

namespace A166641

/-- `10^A001222(n+1)*A003958(n+1)` -/
def P16442091115128143069.Spec : Prop :=
  ∀ n, P16442091115128143069.a n = (A166641 (n + 1) : ℚ)

end A166641

/-! ## A166641.P6989876039481418562

`A061142(n+1)*A166635(n+1)`
-/

namespace A166641.P6989876039481418562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166635 (n + 1)

end

end A166641.P6989876039481418562

namespace A166641

/-- `A061142(n+1)*A166635(n+1)` -/
def P6989876039481418562.Spec : Prop :=
  ∀ n, P6989876039481418562.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P12611061023294830347

`A165826(n+1)*A166632(n+1)`
-/

namespace A166641.P12611061023294830347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166632 (n + 1)

end

end A166641.P12611061023294830347

namespace A166641

/-- `A165826(n+1)*A166632(n+1)` -/
def P12611061023294830347.Spec : Prop :=
  ∀ n, P12611061023294830347.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P6680370319663392080

`lcm(A166632(n+1), A166635(n+1))`
-/

namespace A166641.P6680370319663392080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166632 (n + 1)) (A166635 (n + 1))

end

end A166641.P6680370319663392080

namespace A166641

/-- `lcm(A166632(n+1), A166635(n+1))` -/
def P6680370319663392080.Spec : Prop :=
  ∀ n, (P6680370319663392080.a n : ℤ) = A166641 (n + 1)

end A166641

/-! ## A166641.P773456216381014644

`A003958(n+1)*A167321(A061142(n+1))`
-/

namespace A166641.P773456216381014644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A167321 (A061142 (n + 1)).toNat

end

end A166641.P773456216381014644

namespace A166641

/-- `A003958(n+1)*A167321(A061142(n+1))` -/
def P773456216381014644.Spec : Prop :=
  ∀ n, P773456216381014644.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P17822145771787789817

`A166632(n+1)*A166652(A061142(n+1))`
-/

namespace A166641.P17822145771787789817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166632 (n + 1) * A166652 (A061142 (n + 1)).toNat

end

end A166641.P17822145771787789817

namespace A166641

/-- `A166632(n+1)*A166652(A061142(n+1))` -/
def P17822145771787789817.Spec : Prop :=
  ∀ n, P17822145771787789817.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P3029733974454765780

`A003958(n+1)*A167321(sqrt(A165825(n+1)))`
-/

namespace A166641.P3029733974454765780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A167321 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A166641.P3029733974454765780

namespace A166641

/-- `A003958(n+1)*A167321(sqrt(A165825(n+1)))` -/
def P3029733974454765780.Spec : Prop :=
  ∀ n, P3029733974454765780.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P4601361033508576995

`A003958(n+1)/A003959(n+1)*A166650(n+1)`
-/

namespace A166641.P4601361033508576995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A166641.P4601361033508576995

namespace A166641

/-- `A003958(n+1)/A003959(n+1)*A166650(n+1)` -/
def P4601361033508576995.Spec : Prop :=
  ∀ n, P4601361033508576995.a n = (A166641 (n + 1) : ℚ)

end A166641

/-! ## A166641.P6853011466852710685

`A166650(n+1)*A167344(n+1)/A167349(n+1)`
-/

namespace A166641.P6853011466852710685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166650 (n + 1) * A167344 (n + 1) : ℚ) / (A167349 (n + 1) : ℚ)

end

end A166641.P6853011466852710685

namespace A166641

/-- `A166650(n+1)*A167344(n+1)/A167349(n+1)` -/
def P6853011466852710685.Spec : Prop :=
  ∀ n, P6853011466852710685.a n = (A166641 (n + 1) : ℚ)

end A166641

/-! ## A166641.P6194382577294767583

`A003958(n+1)*A167321(A167323(n+1)/A167321(n+1))`
-/

namespace A166641.P6194382577294767583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A167321 (SequenceMachineLib.roundAway ((A167323 (n + 1) : ℚ) / (A167321 (n + 1) : ℚ))).toNat

end

end A166641.P6194382577294767583

namespace A166641

/-- `A003958(n+1)*A167321(A167323(n+1)/A167321(n+1))` -/
def P6194382577294767583.Spec : Prop :=
  ∀ n, P6194382577294767583.a n = A166641 (n + 1)

end A166641

/-! ## A166641.P8632177952184261866

`A003958(A165824(n+1))*A166635(n+1)`
-/

namespace A166641.P8632177952184261866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166635 (n + 1)

end

end A166641.P8632177952184261866

namespace A166641

/-- `A003958(A165824(n+1))*A166635(n+1)` -/
def P8632177952184261866.Spec : Prop :=
  ∀ n, P8632177952184261866.a n = A166641 (n + 1)

end A166641

/-!
# A166642: Totally multiplicative sequence with a(p) = 2*(p+1) for prime p.

The programs for A166642, the canonical program `A166642.P13798496492744235224` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166642 has offset 1).

The definition of A166642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A061142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166642.P13798496492744235224

`A061142(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166642

/-- `A061142(n+1)*A003959(n+1)` -/
def P13798496492744235224.Spec : Prop :=
  ∀ n, P13798496492744235224.a n = A166642 (n + 1)

theorem P13798496492744235224.correct : P13798496492744235224.Spec := by
  intro n
  simp only [A166642, Nat.add_sub_cancel]

end A166642

/-! ## A166642.P9735890887659879038

`2^A001222(n+1)*A003959(n+1)`
-/

namespace A166642.P9735890887659879038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166642.P9735890887659879038

namespace A166642

/-- `2^A001222(n+1)*A003959(n+1)` -/
def P9735890887659879038.Spec : Prop :=
  ∀ n, P9735890887659879038.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P11249791150721827067

`A166644(n+1)/A061142(n+1)`
-/

namespace A166642.P11249791150721827067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166642.P11249791150721827067

namespace A166642

/-- `A166644(n+1)/A061142(n+1)` -/
def P11249791150721827067.Spec : Prop :=
  ∀ n, P11249791150721827067.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P3664176513559662990

`A166646(n+1)/A165824(n+1)`
-/

namespace A166642.P3664176513559662990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166642.P3664176513559662990

namespace A166642

/-- `A166646(n+1)/A165824(n+1)` -/
def P3664176513559662990.Spec : Prop :=
  ∀ n, P3664176513559662990.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P2981937799243429987

`A166648(n+1)/A165825(n+1)`
-/

namespace A166642.P2981937799243429987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166648 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ)

end

end A166642.P2981937799243429987

namespace A166642

/-- `A166648(n+1)/A165825(n+1)` -/
def P2981937799243429987.Spec : Prop :=
  ∀ n, P2981937799243429987.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P8998019056080277175

`A166650(n+1)/A165826(n+1)`
-/

namespace A166642.P8998019056080277175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166650 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ)

end

end A166642.P8998019056080277175

namespace A166642

/-- `A166650(n+1)/A165826(n+1)` -/
def P8998019056080277175.Spec : Prop :=
  ∀ n, P8998019056080277175.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P14589991345323995360

`gcd(A166644(n+1), A166646(n+1))`
-/

namespace A166642.P14589991345323995360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166644 (n + 1)) (A166646 (n + 1))

end

end A166642.P14589991345323995360

namespace A166642

/-- `gcd(A166644(n+1), A166646(n+1))` -/
def P14589991345323995360.Spec : Prop :=
  ∀ n, (P14589991345323995360.a n : ℤ) = A166642 (n + 1)

end A166642

/-! ## A166642.P5222341442107881344

`gcd(A166648(n+1), A166650(n+1))`
-/

namespace A166642.P5222341442107881344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166648 (n + 1)) (A166650 (n + 1))

end

end A166642.P5222341442107881344

namespace A166642

/-- `gcd(A166648(n+1), A166650(n+1))` -/
def P5222341442107881344.Spec : Prop :=
  ∀ n, (P5222341442107881344.a n : ℤ) = A166642 (n + 1)

end A166642

/-! ## A166642.P4617728122117830895

`sqrt(A165825(n+1))*A003959(n+1)`
-/

namespace A166642.P4617728122117830895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A003959 (n + 1) : ℝ)

end

end A166642.P4617728122117830895

namespace A166642

/-- `sqrt(A165825(n+1))*A003959(n+1)` -/
def P4617728122117830895.Spec : Prop :=
  ∀ n, P4617728122117830895.a n = (A166642 (n + 1) : ℝ)

end A166642

/-! ## A166642.P14776113373773016774

`A166648(n+1)/A061142(n+1)²`
-/

namespace A166642.P14776113373773016774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166648 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ)

end

end A166642.P14776113373773016774

namespace A166642

/-- `A166648(n+1)/A061142(n+1)²` -/
def P14776113373773016774.Spec : Prop :=
  ∀ n, P14776113373773016774.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P11720532988019121869

`A166644(n+1)²/A166648(n+1)`
-/

namespace A166642.P11720532988019121869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) ^ 2 : ℚ) / (A166648 (n + 1) : ℚ)

end

end A166642.P11720532988019121869

namespace A166642

/-- `A166644(n+1)²/A166648(n+1)` -/
def P11720532988019121869.Spec : Prop :=
  ∀ n, P11720532988019121869.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P12325201954447361689

`A166644(n+1)/sqrt(A165825(n+1))`
-/

namespace A166642.P12325201954447361689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166642.P12325201954447361689

namespace A166642

/-- `A166644(n+1)/sqrt(A165825(n+1))` -/
def P12325201954447361689.Spec : Prop :=
  ∀ n, P12325201954447361689.a n = (A166642 (n + 1) : ℝ)

end A166642

/-! ## A166642.P17258711258844353495

`A166646(n+1)/A003959(A061142(n+1))`
-/

namespace A166642.P17258711258844353495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) : ℚ) / (A003959 (A061142 (n + 1)).toNat : ℚ)

end

end A166642.P17258711258844353495

namespace A166642

/-- `A166646(n+1)/A003959(A061142(n+1))` -/
def P17258711258844353495.Spec : Prop :=
  ∀ n, P17258711258844353495.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P8637725628833946861

`A003959(n+1)/A003958(n+1)*A166632(n+1)`
-/

namespace A166642.P8637725628833946861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166632 (n + 1) : ℚ)

end

end A166642.P8637725628833946861

namespace A166642

/-- `A003959(n+1)/A003958(n+1)*A166632(n+1)` -/
def P8637725628833946861.Spec : Prop :=
  ∀ n, P8637725628833946861.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P10288791546330182336

`A003959(n+1)/A133205(n+1)*A167338(n+1)`
-/

namespace A166642.P10288791546330182336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ) * (A167338 (n + 1) : ℚ)

end

end A166642.P10288791546330182336

namespace A166642

/-- `A003959(n+1)/A133205(n+1)*A167338(n+1)` -/
def P10288791546330182336.Spec : Prop :=
  ∀ n, P10288791546330182336.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P6091892410998920773

`A003959(n+1)/A166590(n+1)*A167303(n+1)`
-/

namespace A166642.P6091892410998920773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167303 (n + 1) : ℚ)

end

end A166642.P6091892410998920773

namespace A166642

/-- `A003959(n+1)/A166590(n+1)*A167303(n+1)` -/
def P6091892410998920773.Spec : Prop :=
  ∀ n, P6091892410998920773.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P8720514828614616486

`A003959(n+1)/A167303(n+1)*A167305(n+1)`
-/

namespace A166642.P8720514828614616486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A166642.P8720514828614616486

namespace A166642

/-- `A003959(n+1)/A167303(n+1)*A167305(n+1)` -/
def P8720514828614616486.Spec : Prop :=
  ∀ n, P8720514828614616486.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P6684621718575224600

`A003959(n+1)/A167305(n+1)*A167309(n+1)`
-/

namespace A166642.P6684621718575224600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167305 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A166642.P6684621718575224600

namespace A166642

/-- `A003959(n+1)/A167305(n+1)*A167309(n+1)` -/
def P6684621718575224600.Spec : Prop :=
  ∀ n, P6684621718575224600.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P6802547732725995215

`A061142(n+1)/A165824(n+1)*A166643(n+1)`
-/

namespace A166642.P6802547732725995215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166642.P6802547732725995215

namespace A166642

/-- `A061142(n+1)/A165824(n+1)*A166643(n+1)` -/
def P6802547732725995215.Spec : Prop :=
  ∀ n, P6802547732725995215.a n = (A166642 (n + 1) : ℚ)

end A166642

/-! ## A166642.P7878651407987262037

`A061142(n+1)/A165826(n+1)*A166645(n+1)`
-/

namespace A166642.P7878651407987262037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A166642.P7878651407987262037

namespace A166642

/-- `A061142(n+1)/A165826(n+1)*A166645(n+1)` -/
def P7878651407987262037.Spec : Prop :=
  ∀ n, P7878651407987262037.a n = (A166642 (n + 1) : ℚ)

end A166642

/-!
# A166643: Totally multiplicative sequence with a(p) = 3*(p+1) for prime p.

The programs for A166643, the canonical program `A166643.P11291291286064258783` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166643 has offset 1).

The definition of A166643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166643.P11291291286064258783

`A165824(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166643

/-- `A165824(n+1)*A003959(n+1)` -/
def P11291291286064258783.Spec : Prop :=
  ∀ n, P11291291286064258783.a n = A166643 (n + 1)

theorem P11291291286064258783.correct : P11291291286064258783.Spec := by
  intro n
  simp only [A166643, Nat.add_sub_cancel]

end A166643

/-! ## A166643.P11675246452130149535

`3^A001222(n+1)*A003959(n+1)`
-/

namespace A166643.P11675246452130149535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166643.P11675246452130149535

namespace A166643

/-- `3^A001222(n+1)*A003959(n+1)` -/
def P11675246452130149535.Spec : Prop :=
  ∀ n, P11675246452130149535.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P16543270763808586760

`A166646(n+1)/A061142(n+1)`
-/

namespace A166643.P16543270763808586760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166643.P16543270763808586760

namespace A166643

/-- `A166646(n+1)/A061142(n+1)` -/
def P16543270763808586760.Spec : Prop :=
  ∀ n, P16543270763808586760.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P535151638069371077

`A166649(n+1)/A165824(n+1)`
-/

namespace A166643.P535151638069371077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166649 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ)

end

end A166643.P535151638069371077

namespace A166643

/-- `A166649(n+1)/A165824(n+1)` -/
def P535151638069371077.Spec : Prop :=
  ∀ n, P535151638069371077.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P4867033842147799610

`gcd(A166646(n+1), A166649(n+1))`
-/

namespace A166643.P4867033842147799610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166646 (n + 1)) (A166649 (n + 1))

end

end A166643.P4867033842147799610

namespace A166643

/-- `gcd(A166646(n+1), A166649(n+1))` -/
def P4867033842147799610.Spec : Prop :=
  ∀ n, (P4867033842147799610.a n : ℤ) = A166643 (n + 1)

end A166643

/-! ## A166643.P14187686357377479467

`sqrt(A167349(n+1))*A165824(n+1)`
-/

namespace A166643.P14187686357377479467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) * (A165824 (n + 1) : ℝ)

end

end A166643.P14187686357377479467

namespace A166643

/-- `sqrt(A167349(n+1))*A165824(n+1)` -/
def P14187686357377479467.Spec : Prop :=
  ∀ n, P14187686357377479467.a n = (A166643 (n + 1) : ℝ)

end A166643

/-! ## A166643.P15087083266351131027

`A003959(n+1)*A003959(A061142(n+1))`
-/

namespace A166643.P15087083266351131027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (A061142 (n + 1)).toNat

end

end A166643.P15087083266351131027

namespace A166643

/-- `A003959(n+1)*A003959(A061142(n+1))` -/
def P15087083266351131027.Spec : Prop :=
  ∀ n, P15087083266351131027.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P7978211152044085505

`A166649(n+1)/A003959(A061142(n+1))`
-/

namespace A166643.P7978211152044085505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166649 (n + 1) : ℚ) / (A003959 (A061142 (n + 1)).toNat : ℚ)

end

end A166643.P7978211152044085505

namespace A166643

/-- `A166649(n+1)/A003959(A061142(n+1))` -/
def P7978211152044085505.Spec : Prop :=
  ∀ n, P7978211152044085505.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P10409006768663487775

`A003959(n+1)*A003959(sqrt(A165825(n+1)))`
-/

namespace A166643.P10409006768663487775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (SequenceMachineLib.roundAway (Real.sqrt (A165825 (n + 1) : ℝ))).toNat

end

end A166643.P10409006768663487775

namespace A166643

/-- `A003959(n+1)*A003959(sqrt(A165825(n+1)))` -/
def P10409006768663487775.Spec : Prop :=
  ∀ n, P10409006768663487775.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P17381330633043755238

`A003959(n+1)/A003958(n+1)*A166633(n+1)`
-/

namespace A166643.P17381330633043755238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166633 (n + 1) : ℚ)

end

end A166643.P17381330633043755238

namespace A166643

/-- `A003959(n+1)/A003958(n+1)*A166633(n+1)` -/
def P17381330633043755238.Spec : Prop :=
  ∀ n, P17381330633043755238.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P6620716392948463032

`A003959(n+1)/A166590(n+1)*A167304(n+1)`
-/

namespace A166643.P6620716392948463032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167304 (n + 1) : ℚ)

end

end A166643.P6620716392948463032

namespace A166643

/-- `A003959(n+1)/A166590(n+1)*A167304(n+1)` -/
def P6620716392948463032.Spec : Prop :=
  ∀ n, P6620716392948463032.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P6765166439544999471

`A003959(n+1)/A167303(n+1)*A167307(n+1)`
-/

namespace A166643.P6765166439544999471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A166643.P6765166439544999471

namespace A166643

/-- `A003959(n+1)/A167303(n+1)*A167307(n+1)` -/
def P6765166439544999471.Spec : Prop :=
  ∀ n, P6765166439544999471.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P12169632544366367

`A166633(n+1)/A166635(n+1)*A166645(n+1)`
-/

namespace A166643.P12169632544366367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166633 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A166643.P12169632544366367

namespace A166643

/-- `A166633(n+1)/A166635(n+1)*A166645(n+1)` -/
def P12169632544366367.Spec : Prop :=
  ∀ n, P12169632544366367.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P16864205889489974143

`A165824(n+1)/A061142(n+1)²*A166644(n+1)`
-/

namespace A166643.P16864205889489974143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A166644 (n + 1) : ℚ)

end

end A166643.P16864205889489974143

namespace A166643

/-- `A165824(n+1)/A061142(n+1)²*A166644(n+1)` -/
def P16864205889489974143.Spec : Prop :=
  ∀ n, P16864205889489974143.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P18120538264524227423

`A167322(n+1)/A166591(n+1)²*A167353(n+1)`
-/

namespace A166643.P18120538264524227423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A166591 (n + 1) ^ 2 : ℚ) * (A167353 (n + 1) : ℚ)

end

end A166643.P18120538264524227423

namespace A166643

/-- `A167322(n+1)/A166591(n+1)²*A167353(n+1)` -/
def P18120538264524227423.Spec : Prop :=
  ∀ n, P18120538264524227423.a n = (A166643 (n + 1) : ℚ)

end A166643

/-! ## A166643.P7751046709540291425

`A003959(n+1)*A003959(A166632(n+1)/A003958(n+1))`
-/

namespace A166643.P7751046709540291425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A166643.P7751046709540291425

namespace A166643

/-- `A003959(n+1)*A003959(A166632(n+1)/A003958(n+1))` -/
def P7751046709540291425.Spec : Prop :=
  ∀ n, P7751046709540291425.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P8030502328278335457

`A003959(n+1)*A003959(A166642(n+1)/A003959(n+1))`
-/

namespace A166643.P8030502328278335457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166643.P8030502328278335457

namespace A166643

/-- `A003959(n+1)*A003959(A166642(n+1)/A003959(n+1))` -/
def P8030502328278335457.Spec : Prop :=
  ∀ n, P8030502328278335457.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P15674996765812253640

`A003959(n+1)*A003959(A167338(n+1)/A133205(n+1))`
-/

namespace A166643.P15674996765812253640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (SequenceMachineLib.roundAway ((A167338 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ))).toNat

end

end A166643.P15674996765812253640

namespace A166643

/-- `A003959(n+1)*A003959(A167338(n+1)/A133205(n+1))` -/
def P15674996765812253640.Spec : Prop :=
  ∀ n, P15674996765812253640.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P12737556995326077185

`A003959(A123667(n+1))`
-/

namespace A166643.P12737556995326077185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A123667 (n + 1)).toNat

end

end A166643.P12737556995326077185

namespace A166643

/-- `A003959(A123667(n+1))` -/
def P12737556995326077185.Spec : Prop :=
  ∀ n, P12737556995326077185.a n = A166643 (n + 1)

end A166643

/-! ## A166643.P15271161740382650785

`A003959((n+1)*A061142(n+1))`
-/

namespace A166643.P15271161740382650785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 ((n + 1 : ℤ) * A061142 (n + 1)).toNat

end

end A166643.P15271161740382650785

namespace A166643

/-- `A003959((n+1)*A061142(n+1))` -/
def P15271161740382650785.Spec : Prop :=
  ∀ n, P15271161740382650785.a n = A166643 (n + 1)

end A166643

/-!
# A166644: Totally multiplicative sequence with a(p) = 4*(p+1) for prime p.

The programs for A166644, the canonical program `A166644.P13854759516563883286` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166644 has offset 1).

The definition of A166644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166644.P13854759516563883286

`A165825(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166644

/-- `A165825(n+1)*A003959(n+1)` -/
def P13854759516563883286.Spec : Prop :=
  ∀ n, P13854759516563883286.a n = A166644 (n + 1)

theorem P13854759516563883286.correct : P13854759516563883286.Spec := by
  intro n
  simp only [A166644, Nat.add_sub_cancel]

end A166644

/-! ## A166644.P18178322142373606371

`4^A001222(n+1)*A003959(n+1)`
-/

namespace A166644.P18178322142373606371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166644.P18178322142373606371

namespace A166644

/-- `4^A001222(n+1)*A003959(n+1)` -/
def P18178322142373606371.Spec : Prop :=
  ∀ n, P18178322142373606371.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P17413235346221764703

`A061142(n+1)*A166642(n+1)`
-/

namespace A166644.P17413235346221764703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166642 (n + 1)

end

end A166644.P17413235346221764703

namespace A166644

/-- `A061142(n+1)*A166642(n+1)` -/
def P17413235346221764703.Spec : Prop :=
  ∀ n, P17413235346221764703.a n = A166644 (n + 1)

end A166644

/-! ## A166644.P16528547994168551996

`A166648(n+1)/A061142(n+1)`
-/

namespace A166644.P16528547994168551996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166648 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166644.P16528547994168551996

namespace A166644

/-- `A166648(n+1)/A061142(n+1)` -/
def P16528547994168551996.Spec : Prop :=
  ∀ n, P16528547994168551996.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P7757655610762117355

`A061142(n+1)²*A003959(n+1)`
-/

namespace A166644.P7757655610762117355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A003959 (n + 1)

end

end A166644.P7757655610762117355

namespace A166644

/-- `A061142(n+1)²*A003959(n+1)` -/
def P7757655610762117355.Spec : Prop :=
  ∀ n, P7757655610762117355.a n = A166644 (n + 1)

end A166644

/-! ## A166644.P9151680055852865665

`A166642(n+1)²/A003959(n+1)`
-/

namespace A166644.P9151680055852865665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166642 (n + 1) ^ 2 : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166644.P9151680055852865665

namespace A166644

/-- `A166642(n+1)²/A003959(n+1)` -/
def P9151680055852865665.Spec : Prop :=
  ∀ n, P9151680055852865665.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P1618107457061920780

`sqrt(A166642(n+1)*A166648(n+1))`
-/

namespace A166644.P1618107457061920780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166642 (n + 1) * A166648 (n + 1) : ℝ)

end

end A166644.P1618107457061920780

namespace A166644

/-- `sqrt(A166642(n+1)*A166648(n+1))` -/
def P1618107457061920780.Spec : Prop :=
  ∀ n, P1618107457061920780.a n = (A166644 (n + 1) : ℝ)

end A166644

/-! ## A166644.P595381188635447521

`A166646(n+1)²/A166649(n+1)`
-/

namespace A166644.P595381188635447521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) ^ 2 : ℚ) / (A166649 (n + 1) : ℚ)

end

end A166644.P595381188635447521

namespace A166644

/-- `A166646(n+1)²/A166649(n+1)` -/
def P595381188635447521.Spec : Prop :=
  ∀ n, P595381188635447521.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P17226978021706405081

`A003959(n+1)/A003958(n+1)*A166634(n+1)`
-/

namespace A166644.P17226978021706405081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166634 (n + 1) : ℚ)

end

end A166644.P17226978021706405081

namespace A166644

/-- `A003959(n+1)/A003958(n+1)*A166634(n+1)` -/
def P17226978021706405081.Spec : Prop :=
  ∀ n, P17226978021706405081.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P16575082734216943390

`A003959(n+1)/A061142(n+1)*A165829(n+1)`
-/

namespace A166644.P16575082734216943390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A165829 (n + 1) : ℚ)

end

end A166644.P16575082734216943390

namespace A166644

/-- `A003959(n+1)/A061142(n+1)*A165829(n+1)` -/
def P16575082734216943390.Spec : Prop :=
  ∀ n, P16575082734216943390.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P13221245540366401837

`A003959(n+1)/A166590(n+1)*A167305(n+1)`
-/

namespace A166644.P13221245540366401837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167305 (n + 1) : ℚ)

end

end A166644.P13221245540366401837

namespace A166644

/-- `A003959(n+1)/A166590(n+1)*A167305(n+1)` -/
def P13221245540366401837.Spec : Prop :=
  ∀ n, P13221245540366401837.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P14127074269114946392

`A003959(n+1)/A167303(n+1)*A167309(n+1)`
-/

namespace A166644.P14127074269114946392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A166644.P14127074269114946392

namespace A166644

/-- `A003959(n+1)/A167303(n+1)*A167309(n+1)` -/
def P14127074269114946392.Spec : Prop :=
  ∀ n, P14127074269114946392.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P10426849545052269619

`A165825(n+1)/A165824(n+1)*A166643(n+1)`
-/

namespace A166644.P10426849545052269619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166644.P10426849545052269619

namespace A166644

/-- `A165825(n+1)/A165824(n+1)*A166643(n+1)` -/
def P10426849545052269619.Spec : Prop :=
  ∀ n, P10426849545052269619.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P12155261685524369681

`A165825(n+1)/A165826(n+1)*A166645(n+1)`
-/

namespace A166644.P12155261685524369681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165825 (n + 1) : ℚ) / (A165826 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A166644.P12155261685524369681

namespace A166644

/-- `A165825(n+1)/A165826(n+1)*A166645(n+1)` -/
def P12155261685524369681.Spec : Prop :=
  ∀ n, P12155261685524369681.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P5245800598976746294

`A166634(n+1)/A166635(n+1)*A166645(n+1)`
-/

namespace A166644.P5245800598976746294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166634 (n + 1) : ℚ) / (A166635 (n + 1) : ℚ) * (A166645 (n + 1) : ℚ)

end

end A166644.P5245800598976746294

namespace A166644

/-- `A166634(n+1)/A166635(n+1)*A166645(n+1)` -/
def P5245800598976746294.Spec : Prop :=
  ∀ n, P5245800598976746294.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P13835472235061818015

`(A166632(n+1)/A003958(n+1))²*A003959(n+1)`
-/

namespace A166644.P13835472235061818015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2 * (A003959 (n + 1) : ℚ)

end

end A166644.P13835472235061818015

namespace A166644

/-- `(A166632(n+1)/A003958(n+1))²*A003959(n+1)` -/
def P13835472235061818015.Spec : Prop :=
  ∀ n, P13835472235061818015.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P5907389220779839540

`(A167338(n+1)/A133205(n+1))²*A003959(n+1)`
-/

namespace A166644.P5907389220779839540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167338 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ)) ^ 2 * (A003959 (n + 1) : ℚ)

end

end A166644.P5907389220779839540

namespace A166644

/-- `(A167338(n+1)/A133205(n+1))²*A003959(n+1)` -/
def P5907389220779839540.Spec : Prop :=
  ∀ n, P5907389220779839540.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P12262831374125344804

`A061142(n+1)²/A165824(n+1)*A166643(n+1)`
-/

namespace A166644.P12262831374125344804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165824 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166644.P12262831374125344804

namespace A166644

/-- `A061142(n+1)²/A165824(n+1)*A166643(n+1)` -/
def P12262831374125344804.Spec : Prop :=
  ∀ n, P12262831374125344804.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P1343449975317859733

`A061142(n+1)²/A165827(n+1)*A166646(n+1)`
-/

namespace A166644.P1343449975317859733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165827 (n + 1) : ℚ) * (A166646 (n + 1) : ℚ)

end

end A166644.P1343449975317859733

namespace A166644

/-- `A061142(n+1)²/A165827(n+1)*A166646(n+1)` -/
def P1343449975317859733.Spec : Prop :=
  ∀ n, P1343449975317859733.a n = (A166644 (n + 1) : ℚ)

end A166644

/-! ## A166644.P1732376556104064271

`A061142(n+1)²/A165828(n+1)*A166647(n+1)`
-/

namespace A166644.P1732376556104064271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061142 (n + 1) ^ 2 : ℚ) / (A165828 (n + 1) : ℚ) * (A166647 (n + 1) : ℚ)

end

end A166644.P1732376556104064271

namespace A166644

/-- `A061142(n+1)²/A165828(n+1)*A166647(n+1)` -/
def P1732376556104064271.Spec : Prop :=
  ∀ n, P1732376556104064271.a n = (A166644 (n + 1) : ℚ)

end A166644

/-!
# A166645: Totally multiplicative sequence with a(p) = 5*(p+1) for prime p.

The programs for A166645, the canonical program `A166645.P6436054707661887186` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166645 has offset 1).

The definition of A166645 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165826, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166645.P6436054707661887186

`A165826(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166645

/-- `A165826(n+1)*A003959(n+1)` -/
def P6436054707661887186.Spec : Prop :=
  ∀ n, P6436054707661887186.a n = A166645 (n + 1)

theorem P6436054707661887186.correct : P6436054707661887186.Spec := by
  intro n
  simp only [A166645, Nat.add_sub_cancel]

end A166645

/-! ## A166645.P6895129478106146221

`5^A001222(n+1)*A003959(n+1)`
-/

namespace A166645.P6895129478106146221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166645.P6895129478106146221

namespace A166645

/-- `5^A001222(n+1)*A003959(n+1)` -/
def P6895129478106146221.Spec : Prop :=
  ∀ n, P6895129478106146221.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P13851817855192114890

`A166650(n+1)/A061142(n+1)`
-/

namespace A166645.P13851817855192114890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166650 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166645.P13851817855192114890

namespace A166645

/-- `A166650(n+1)/A061142(n+1)` -/
def P13851817855192114890.Spec : Prop :=
  ∀ n, P13851817855192114890.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P7609153565932139097

`sqrt(A167349(n+1))*A165826(n+1)`
-/

namespace A166645.P7609153565932139097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) * (A165826 (n + 1) : ℝ)

end

end A166645.P7609153565932139097

namespace A166645

/-- `sqrt(A167349(n+1))*A165826(n+1)` -/
def P7609153565932139097.Spec : Prop :=
  ∀ n, P7609153565932139097.a n = (A166645 (n + 1) : ℝ)

end A166645

/-! ## A166645.P11064803706275458804

`5^Δ[A022559(n)]*A003959(n+1)`
-/

namespace A166645.P11064803706275458804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166645.P11064803706275458804

namespace A166645

/-- `5^Δ[A022559(n)]*A003959(n+1)` -/
def P11064803706275458804.Spec : Prop :=
  ∀ n, P11064803706275458804.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P3684424228880398695

`A000351(A001222(n+1))*A003959(n+1)`
-/

namespace A166645.P3684424228880398695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A001222 (n + 1)).toNat * A003959 (n + 1)

end

end A166645.P3684424228880398695

namespace A166645

/-- `A000351(A001222(n+1))*A003959(n+1)` -/
def P3684424228880398695.Spec : Prop :=
  ∀ n, P3684424228880398695.a n = A166645 (n + 1)

end A166645

/-! ## A166645.P16464871043585639888

`A003959(n+1)*A166591(A061142(n+1))`
-/

namespace A166645.P16464871043585639888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166591 (A061142 (n + 1)).toNat

end

end A166645.P16464871043585639888

namespace A166645

/-- `A003959(n+1)*A166591(A061142(n+1))` -/
def P16464871043585639888.Spec : Prop :=
  ∀ n, P16464871043585639888.a n = A166645 (n + 1)

end A166645

/-! ## A166645.P9175652110028148301

`A003959(n+1)/A003958(n+1)*A166635(n+1)`
-/

namespace A166645.P9175652110028148301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166635 (n + 1) : ℚ)

end

end A166645.P9175652110028148301

namespace A166645

/-- `A003959(n+1)/A003958(n+1)*A166635(n+1)` -/
def P9175652110028148301.Spec : Prop :=
  ∀ n, P9175652110028148301.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P11939610928543090408

`A003959(n+1)/A061142(n+1)*A165831(n+1)`
-/

namespace A166645.P11939610928543090408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A165831 (n + 1) : ℚ)

end

end A166645.P11939610928543090408

namespace A166645

/-- `A003959(n+1)/A061142(n+1)*A165831(n+1)` -/
def P11939610928543090408.Spec : Prop :=
  ∀ n, P11939610928543090408.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P1144775773545492970

`A003959(n+1)/A166642(n+1)*A166650(n+1)`
-/

namespace A166645.P1144775773545492970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A166645.P1144775773545492970

namespace A166645

/-- `A003959(n+1)/A166642(n+1)*A166650(n+1)` -/
def P1144775773545492970.Spec : Prop :=
  ∀ n, P1144775773545492970.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P4934754607303540890

`A003959(n+1)/A166590(n+1)*A167306(n+1)`
-/

namespace A166645.P4934754607303540890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167306 (n + 1) : ℚ)

end

end A166645.P4934754607303540890

namespace A166645

/-- `A003959(n+1)/A166590(n+1)*A167306(n+1)` -/
def P4934754607303540890.Spec : Prop :=
  ∀ n, P4934754607303540890.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P5472531822190841841

`A003959(n+1)/A167303(n+1)*A167311(n+1)`
-/

namespace A166645.P5472531822190841841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A166645.P5472531822190841841

namespace A166645

/-- `A003959(n+1)/A167303(n+1)*A167311(n+1)` -/
def P5472531822190841841.Spec : Prop :=
  ∀ n, P5472531822190841841.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P3102131955646534236

`A165826(n+1)/A165824(n+1)*A166643(n+1)`
-/

namespace A166645.P3102131955646534236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A166643 (n + 1) : ℚ)

end

end A166645.P3102131955646534236

namespace A166645

/-- `A165826(n+1)/A165824(n+1)*A166643(n+1)` -/
def P3102131955646534236.Spec : Prop :=
  ∀ n, P3102131955646534236.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P11548155004414662526

`A165826(n+1)/A165831(n+1)*A166650(n+1)`
-/

namespace A166645.P11548155004414662526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165826 (n + 1) : ℚ) / (A165831 (n + 1) : ℚ) * (A166650 (n + 1) : ℚ)

end

end A166645.P11548155004414662526

namespace A166645

/-- `A165826(n+1)/A165831(n+1)*A166650(n+1)` -/
def P11548155004414662526.Spec : Prop :=
  ∀ n, P11548155004414662526.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P11422890163344314047

`A167324(n+1)/A166591(n+1)²*A167353(n+1)`
-/

namespace A166645.P11422890163344314047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A166591 (n + 1) ^ 2 : ℚ) * (A167353 (n + 1) : ℚ)

end

end A166645.P11422890163344314047

namespace A166645

/-- `A167324(n+1)/A166591(n+1)²*A167353(n+1)` -/
def P11422890163344314047.Spec : Prop :=
  ∀ n, P11422890163344314047.a n = (A166645 (n + 1) : ℚ)

end A166645

/-! ## A166645.P16203988342689703110

`A003959(n+1)*A166590(A165824(n+1))`
-/

namespace A166645.P16203988342689703110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166590 (A165824 (n + 1)).toNat

end

end A166645.P16203988342689703110

namespace A166645

/-- `A003959(n+1)*A166590(A165824(n+1))` -/
def P16203988342689703110.Spec : Prop :=
  ∀ n, P16203988342689703110.a n = A166645 (n + 1)

end A166645

/-! ## A166645.P13343757352833683954

`A003959(n+1)*A166590(A167304(n+1)/A166590(n+1))`
-/

namespace A166645.P13343757352833683954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166590 (SequenceMachineLib.roundAway ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A166645.P13343757352833683954

namespace A166645

/-- `A003959(n+1)*A166590(A167304(n+1)/A166590(n+1))` -/
def P13343757352833683954.Spec : Prop :=
  ∀ n, P13343757352833683954.a n = A166645 (n + 1)

end A166645

/-!
# A166646: Totally multiplicative sequence with a(p) = 6*(p+1) for prime p.

The programs for A166646, the canonical program `A166646.P5418365843319295519` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166646 has offset 1).

The definition of A166646 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166646.P5418365843319295519

`A165827(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166646

/-- `A165827(n+1)*A003959(n+1)` -/
def P5418365843319295519.Spec : Prop :=
  ∀ n, P5418365843319295519.a n = A166646 (n + 1)

theorem P5418365843319295519.correct : P5418365843319295519.Spec := by
  intro n
  simp only [A166646, Nat.add_sub_cancel]

end A166646

/-! ## A166646.P12090185644068685123

`6^A001222(n+1)*A003959(n+1)`
-/

namespace A166646.P12090185644068685123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166646.P12090185644068685123

namespace A166646

/-- `6^A001222(n+1)*A003959(n+1)` -/
def P12090185644068685123.Spec : Prop :=
  ∀ n, P12090185644068685123.a n = (A166646 (n + 1) : ℚ)

end A166646

/-! ## A166646.P12068241659038952809

`A061142(n+1)*A166643(n+1)`
-/

namespace A166646.P12068241659038952809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166643 (n + 1)

end

end A166646.P12068241659038952809

namespace A166646

/-- `A061142(n+1)*A166643(n+1)` -/
def P12068241659038952809.Spec : Prop :=
  ∀ n, P12068241659038952809.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P5510337082213199745

`A165824(n+1)*A166642(n+1)`
-/

namespace A166646.P5510337082213199745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166642 (n + 1)

end

end A166646.P5510337082213199745

namespace A166646

/-- `A165824(n+1)*A166642(n+1)` -/
def P5510337082213199745.Spec : Prop :=
  ∀ n, P5510337082213199745.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P10707649717609063980

`lcm(A166642(n+1), A166643(n+1))`
-/

namespace A166646.P10707649717609063980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166642 (n + 1)) (A166643 (n + 1))

end

end A166646.P10707649717609063980

namespace A166646

/-- `lcm(A166642(n+1), A166643(n+1))` -/
def P10707649717609063980.Spec : Prop :=
  ∀ n, (P10707649717609063980.a n : ℤ) = A166646 (n + 1)

end A166646

/-! ## A166646.P17320824667871147614

`sqrt(A166644(n+1)*A166649(n+1))`
-/

namespace A166646.P17320824667871147614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166644 (n + 1) * A166649 (n + 1) : ℝ)

end

end A166646.P17320824667871147614

namespace A166646

/-- `sqrt(A166644(n+1)*A166649(n+1))` -/
def P17320824667871147614.Spec : Prop :=
  ∀ n, P17320824667871147614.a n = (A166646 (n + 1) : ℝ)

end A166646

/-! ## A166646.P1872156948780089268

`A003959(n+1)*A166624(A061142(n+1))`
-/

namespace A166646.P1872156948780089268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166624 (A061142 (n + 1)).toNat

end

end A166646.P1872156948780089268

namespace A166646

/-- `A003959(n+1)*A166624(A061142(n+1))` -/
def P1872156948780089268.Spec : Prop :=
  ∀ n, P1872156948780089268.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P8418793264474174029

`A133205(A061142(n+1))*A166642(n+1)`
-/

namespace A166646.P8418793264474174029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133205 (A061142 (n + 1)).toNat * A166642 (n + 1)

end

end A166646.P8418793264474174029

namespace A166646

/-- `A133205(A061142(n+1))*A166642(n+1)` -/
def P8418793264474174029.Spec : Prop :=
  ∀ n, P8418793264474174029.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P11411557190344500144

`A003959(n+1)*A061142(n+1)*A165824(n+1)`
-/

namespace A166646.P11411557190344500144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A061142 (n + 1) * A165824 (n + 1)

end

end A166646.P11411557190344500144

namespace A166646

/-- `A003959(n+1)*A061142(n+1)*A165824(n+1)` -/
def P11411557190344500144.Spec : Prop :=
  ∀ n, P11411557190344500144.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P3663583613837106184

`A003959(n+1)/A003958(n+1)*A166636(n+1)`
-/

namespace A166646.P3663583613837106184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166636 (n + 1) : ℚ)

end

end A166646.P3663583613837106184

namespace A166646

/-- `A003959(n+1)/A003958(n+1)*A166636(n+1)` -/
def P3663583613837106184.Spec : Prop :=
  ∀ n, P3663583613837106184.a n = (A166646 (n + 1) : ℚ)

end A166646

/-! ## A166646.P14846095050473516499

`A003959(n+1)/A166590(n+1)*A167307(n+1)`
-/

namespace A166646.P14846095050473516499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167307 (n + 1) : ℚ)

end

end A166646.P14846095050473516499

namespace A166646

/-- `A003959(n+1)/A166590(n+1)*A167307(n+1)` -/
def P14846095050473516499.Spec : Prop :=
  ∀ n, P14846095050473516499.a n = (A166646 (n + 1) : ℚ)

end A166646

/-! ## A166646.P16420876388796671704

`A165824(n+1)/A061142(n+1)*A166644(n+1)`
-/

namespace A166646.P16420876388796671704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A166644 (n + 1) : ℚ)

end

end A166646.P16420876388796671704

namespace A166646

/-- `A165824(n+1)/A061142(n+1)*A166644(n+1)` -/
def P16420876388796671704.Spec : Prop :=
  ∀ n, P16420876388796671704.a n = (A166646 (n + 1) : ℚ)

end A166646

/-! ## A166646.P14179939317869318231

`A003959(n+1)*A166642(A166642(n+1)/A003959(n+1))`
-/

namespace A166646.P14179939317869318231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166642 (SequenceMachineLib.roundAway ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166646.P14179939317869318231

namespace A166646

/-- `A003959(n+1)*A166642(A166642(n+1)/A003959(n+1))` -/
def P14179939317869318231.Spec : Prop :=
  ∀ n, P14179939317869318231.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P4772693299739915808

`A003959(n+1)*A167338(A167338(n+1)/A133205(n+1))`
-/

namespace A166646.P4772693299739915808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A167338 (SequenceMachineLib.roundAway ((A167338 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ))).toNat

end

end A166646.P4772693299739915808

namespace A166646

/-- `A003959(n+1)*A167338(A167338(n+1)/A133205(n+1))` -/
def P4772693299739915808.Spec : Prop :=
  ∀ n, P4772693299739915808.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P16936733586872172814

`A003958(A165824(n+1))*A166643(n+1)`
-/

namespace A166646.P16936733586872172814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165824 (n + 1)).toNat * A166643 (n + 1)

end

end A166646.P16936733586872172814

namespace A166646

/-- `A003958(A165824(n+1))*A166643(n+1)` -/
def P16936733586872172814.Spec : Prop :=
  ∀ n, P16936733586872172814.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P8457240484099522832

`A003958(A166643(n+1)/A003959(n+1))*A166643(n+1)`
-/

namespace A166646.P8457240484099522832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat * A166643 (n + 1)

end

end A166646.P8457240484099522832

namespace A166646

/-- `A003958(A166643(n+1)/A003959(n+1))*A166643(n+1)` -/
def P8457240484099522832.Spec : Prop :=
  ∀ n, P8457240484099522832.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P5187072453360039244

`A003959(n+1)*A166633(A165824(n+1))`
-/

namespace A166646.P5187072453360039244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166633 (A165824 (n + 1)).toNat

end

end A166646.P5187072453360039244

namespace A166646

/-- `A003959(n+1)*A166633(A165824(n+1))` -/
def P5187072453360039244.Spec : Prop :=
  ∀ n, P5187072453360039244.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P16135738216139762125

`A003959(n+1)*A166633(A166633(n+1)/A003958(n+1))`
-/

namespace A166646.P16135738216139762125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166633 (SequenceMachineLib.roundAway ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A166646.P16135738216139762125

namespace A166646

/-- `A003959(n+1)*A166633(A166633(n+1)/A003958(n+1))` -/
def P16135738216139762125.Spec : Prop :=
  ∀ n, P16135738216139762125.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P6667359887121572299

`A003959(n+1)*A166633(A166643(n+1)/A003959(n+1))`
-/

namespace A166646.P6667359887121572299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166633 (SequenceMachineLib.roundAway ((A166643 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ))).toNat

end

end A166646.P6667359887121572299

namespace A166646

/-- `A003959(n+1)*A166633(A166643(n+1)/A003959(n+1))` -/
def P6667359887121572299.Spec : Prop :=
  ∀ n, P6667359887121572299.a n = A166646 (n + 1)

end A166646

/-! ## A166646.P10565962748106061082

`A003959(n+1)*A003959(A165826(n+1))`
-/

namespace A166646.P10565962748106061082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (A165826 (n + 1)).toNat

end

end A166646.P10565962748106061082

namespace A166646

/-- `A003959(n+1)*A003959(A165826(n+1))` -/
def P10565962748106061082.Spec : Prop :=
  ∀ n, P10565962748106061082.a n = A166646 (n + 1)

end A166646

/-!
# A166647: Totally multiplicative sequence with a(p) = 7*(p+1) for prime p.

The programs for A166647, the canonical program `A166647.P7403839093025974561` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166647 has offset 1).

The definition of A166647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165828, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166647.P7403839093025974561

`A165828(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166647

/-- `A165828(n+1)*A003959(n+1)` -/
def P7403839093025974561.Spec : Prop :=
  ∀ n, P7403839093025974561.a n = A166647 (n + 1)

theorem P7403839093025974561.correct : P7403839093025974561.Spec := by
  intro n
  simp only [A166647, Nat.add_sub_cancel]

end A166647

/-! ## A166647.P16216118113685359333

`7^A001222(n+1)*A003959(n+1)`
-/

namespace A166647.P16216118113685359333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166647.P16216118113685359333

namespace A166647

/-- `7^A001222(n+1)*A003959(n+1)` -/
def P16216118113685359333.Spec : Prop :=
  ∀ n, P16216118113685359333.a n = (A166647 (n + 1) : ℚ)

end A166647

/-! ## A166647.P12771056699810250582

`sqrt(A167349(n+1))*A165828(n+1)`
-/

namespace A166647.P12771056699810250582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167349 (n + 1) : ℝ) * (A165828 (n + 1) : ℝ)

end

end A166647.P12771056699810250582

namespace A166647

/-- `sqrt(A167349(n+1))*A165828(n+1)` -/
def P12771056699810250582.Spec : Prop :=
  ∀ n, P12771056699810250582.a n = (A166647 (n + 1) : ℝ)

end A166647

/-! ## A166647.P8022745566969560487

`7^Δ[A022559(n)]*A003959(n+1)`
-/

namespace A166647.P8022745566969560487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166647.P8022745566969560487

namespace A166647

/-- `7^Δ[A022559(n)]*A003959(n+1)` -/
def P8022745566969560487.Spec : Prop :=
  ∀ n, P8022745566969560487.a n = (A166647 (n + 1) : ℚ)

end A166647

/-! ## A166647.P14557904040036191948

`A003959(n+1)*A166653(A061142(n+1))`
-/

namespace A166647.P14557904040036191948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166653 (A061142 (n + 1)).toNat

end

end A166647.P14557904040036191948

namespace A166647

/-- `A003959(n+1)*A166653(A061142(n+1))` -/
def P14557904040036191948.Spec : Prop :=
  ∀ n, P14557904040036191948.a n = A166647 (n + 1)

end A166647

/-! ## A166647.P5325996250649404429

`A003959(n+1)/A003958(n+1)*A166637(n+1)`
-/

namespace A166647.P5325996250649404429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166637 (n + 1) : ℚ)

end

end A166647.P5325996250649404429

namespace A166647

/-- `A003959(n+1)/A003958(n+1)*A166637(n+1)` -/
def P5325996250649404429.Spec : Prop :=
  ∀ n, P5325996250649404429.a n = (A166647 (n + 1) : ℚ)

end A166647

/-! ## A166647.P13376045504062705717

`A003959(n+1)/A166590(n+1)*A167308(n+1)`
-/

namespace A166647.P13376045504062705717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167308 (n + 1) : ℚ)

end

end A166647.P13376045504062705717

namespace A166647

/-- `A003959(n+1)/A166590(n+1)*A167308(n+1)` -/
def P13376045504062705717.Spec : Prop :=
  ∀ n, P13376045504062705717.a n = (A166647 (n + 1) : ℚ)

end A166647

/-! ## A166647.P3992312257100113703

`A003959(n+1)*A166590(A165826(n+1))`
-/

namespace A166647.P3992312257100113703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166590 (A165826 (n + 1)).toNat

end

end A166647.P3992312257100113703

namespace A166647

/-- `A003959(n+1)*A166590(A165826(n+1))` -/
def P3992312257100113703.Spec : Prop :=
  ∀ n, P3992312257100113703.a n = A166647 (n + 1)

end A166647

/-!
# A166648: Totally multiplicative sequence with a(p) = 8*(p+1) for prime p.

The programs for A166648, the canonical program `A166648.P17124068724058937579` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166648 has offset 1).

The definition of A166648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165829, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166648.P17124068724058937579

`A165829(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166648

/-- `A165829(n+1)*A003959(n+1)` -/
def P17124068724058937579.Spec : Prop :=
  ∀ n, P17124068724058937579.a n = A166648 (n + 1)

theorem P17124068724058937579.correct : P17124068724058937579.Spec := by
  intro n
  simp only [A166648, Nat.add_sub_cancel]

end A166648

/-! ## A166648.P4344760037825134804

`8^A001222(n+1)*A003959(n+1)`
-/

namespace A166648.P4344760037825134804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166648.P4344760037825134804

namespace A166648

/-- `8^A001222(n+1)*A003959(n+1)` -/
def P4344760037825134804.Spec : Prop :=
  ∀ n, P4344760037825134804.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P15240720673936775992

`A061142(n+1)*A166644(n+1)`
-/

namespace A166648.P15240720673936775992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166644 (n + 1)

end

end A166648.P15240720673936775992

namespace A166648

/-- `A061142(n+1)*A166644(n+1)` -/
def P15240720673936775992.Spec : Prop :=
  ∀ n, P15240720673936775992.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P2281794268760050187

`A165825(n+1)*A166642(n+1)`
-/

namespace A166648.P2281794268760050187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1) * A166642 (n + 1)

end

end A166648.P2281794268760050187

namespace A166648

/-- `A165825(n+1)*A166642(n+1)` -/
def P2281794268760050187.Spec : Prop :=
  ∀ n, P2281794268760050187.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P6463637993756816216

`A061142(n+1)²*A166642(n+1)`
-/

namespace A166648.P6463637993756816216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) ^ 2 * A166642 (n + 1)

end

end A166648.P6463637993756816216

namespace A166648

/-- `A061142(n+1)²*A166642(n+1)` -/
def P6463637993756816216.Spec : Prop :=
  ∀ n, P6463637993756816216.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P882165438771067653

`sqrt(A165825(n+1))*A166644(n+1)`
-/

namespace A166648.P882165438771067653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ) * (A166644 (n + 1) : ℝ)

end

end A166648.P882165438771067653

namespace A166648

/-- `sqrt(A165825(n+1))*A166644(n+1)` -/
def P882165438771067653.Spec : Prop :=
  ∀ n, P882165438771067653.a n = (A166648 (n + 1) : ℝ)

end A166648

/-! ## A166648.P5350328808652426183

`A166644(n+1)²/A166642(n+1)`
-/

namespace A166648.P5350328808652426183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) ^ 2 : ℚ) / (A166642 (n + 1) : ℚ)

end

end A166648.P5350328808652426183

namespace A166648

/-- `A166644(n+1)²/A166642(n+1)` -/
def P5350328808652426183.Spec : Prop :=
  ∀ n, P5350328808652426183.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P3957552248306797746

`A003959(n+1)*A167303(A061142(n+1))`
-/

namespace A166648.P3957552248306797746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A167303 (A061142 (n + 1)).toNat

end

end A166648.P3957552248306797746

namespace A166648

/-- `A003959(n+1)*A167303(A061142(n+1))` -/
def P3957552248306797746.Spec : Prop :=
  ∀ n, P3957552248306797746.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P4095771873580460308

`A003959(n+1)*A061142(n+1)*A165825(n+1)`
-/

namespace A166648.P4095771873580460308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A061142 (n + 1) * A165825 (n + 1)

end

end A166648.P4095771873580460308

namespace A166648

/-- `A003959(n+1)*A061142(n+1)*A165825(n+1)` -/
def P4095771873580460308.Spec : Prop :=
  ∀ n, P4095771873580460308.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P17825254412938174292

`A003959(n+1)/A003958(n+1)*A166638(n+1)`
-/

namespace A166648.P17825254412938174292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166638 (n + 1) : ℚ)

end

end A166648.P17825254412938174292

namespace A166648

/-- `A003959(n+1)/A003958(n+1)*A166638(n+1)` -/
def P17825254412938174292.Spec : Prop :=
  ∀ n, P17825254412938174292.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P5585343126911984191

`A003959(n+1)/A166590(n+1)*A167309(n+1)`
-/

namespace A166648.P5585343126911984191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167309 (n + 1) : ℚ)

end

end A166648.P5585343126911984191

namespace A166648

/-- `A003959(n+1)/A166590(n+1)*A167309(n+1)` -/
def P5585343126911984191.Spec : Prop :=
  ∀ n, P5585343126911984191.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P11465953597736896269

`A166644(n+1)/A133205(n+1)*A167338(n+1)`
-/

namespace A166648.P11465953597736896269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) : ℚ) / (A133205 (n + 1) : ℚ) * (A167338 (n + 1) : ℚ)

end

end A166648.P11465953597736896269

namespace A166648

/-- `A166644(n+1)/A133205(n+1)*A167338(n+1)` -/
def P11465953597736896269.Spec : Prop :=
  ∀ n, P11465953597736896269.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P14733786703183875662

`(A166642(n+1)/A003959(n+1))²*A166642(n+1)`
-/

namespace A166648.P14733786703183875662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166642 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ)) ^ 2 * (A166642 (n + 1) : ℚ)

end

end A166648.P14733786703183875662

namespace A166648

/-- `(A166642(n+1)/A003959(n+1))²*A166642(n+1)` -/
def P14733786703183875662.Spec : Prop :=
  ∀ n, P14733786703183875662.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P11979490795655789657

`A166644(n+1)²/gcd(A166644(n+1), A166646(n+1))`
-/

namespace A166648.P11979490795655789657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) ^ 2 : ℚ) / (Int.gcd (A166644 (n + 1)) (A166646 (n + 1)) : ℚ)

end

end A166648.P11979490795655789657

namespace A166648

/-- `A166644(n+1)²/gcd(A166644(n+1), A166646(n+1))` -/
def P11979490795655789657.Spec : Prop :=
  ∀ n, P11979490795655789657.a n = (A166648 (n + 1) : ℚ)

end A166648

/-! ## A166648.P15474857954490495071

`A003959(n+1)*A167303(A167303(n+1)/A166590(n+1))`
-/

namespace A166648.P15474857954490495071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A167303 (SequenceMachineLib.roundAway ((A167303 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ))).toNat

end

end A166648.P15474857954490495071

namespace A166648

/-- `A003959(n+1)*A167303(A167303(n+1)/A166590(n+1))` -/
def P15474857954490495071.Spec : Prop :=
  ∀ n, P15474857954490495071.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P11148394586638107437

`A003959(n+1)*A167303(A167305(n+1)/A167303(n+1))`
-/

namespace A166648.P11148394586638107437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A167303 (SequenceMachineLib.roundAway ((A167305 (n + 1) : ℚ) / (A167303 (n + 1) : ℚ))).toNat

end

end A166648.P11148394586638107437

namespace A166648

/-- `A003959(n+1)*A167303(A167305(n+1)/A167303(n+1))` -/
def P11148394586638107437.Spec : Prop :=
  ∀ n, P11148394586638107437.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P6826325005272677884

`A003959(n+1)*A061142(n+1)*A003959(A165824(n+1))`
-/

namespace A166648.P6826325005272677884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A061142 (n + 1) * A003959 (A165824 (n + 1)).toNat

end

end A166648.P6826325005272677884

namespace A166648

/-- `A003959(n+1)*A061142(n+1)*A003959(A165824(n+1))` -/
def P6826325005272677884.Spec : Prop :=
  ∀ n, P6826325005272677884.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P1647440014599218317

`A003958(A166633(n+1)/A003958(n+1))*A166644(n+1)`
-/

namespace A166648.P1647440014599218317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat * A166644 (n + 1)

end

end A166648.P1647440014599218317

namespace A166648

/-- `A003958(A166633(n+1)/A003958(n+1))*A166644(n+1)` -/
def P1647440014599218317.Spec : Prop :=
  ∀ n, P1647440014599218317.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P10447736927693512002

`A003959(n+1)*A166634(A165824(n+1))`
-/

namespace A166648.P10447736927693512002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166634 (A165824 (n + 1)).toNat

end

end A166648.P10447736927693512002

namespace A166648

/-- `A003959(n+1)*A166634(A165824(n+1))` -/
def P10447736927693512002.Spec : Prop :=
  ∀ n, P10447736927693512002.a n = A166648 (n + 1)

end A166648

/-! ## A166648.P11905226651883514687

`A003958(A165826(n+1))*A166642(n+1)`
-/

namespace A166648.P11905226651883514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A165826 (n + 1)).toNat * A166642 (n + 1)

end

end A166648.P11905226651883514687

namespace A166648

/-- `A003958(A165826(n+1))*A166642(n+1)` -/
def P11905226651883514687.Spec : Prop :=
  ∀ n, P11905226651883514687.a n = A166648 (n + 1)

end A166648

/-!
# A166649: Totally multiplicative sequence with a(p) = 9*(p+1) for prime p.

The programs for A166649, the canonical program `A166649.P15651069989115912745` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166649 has offset 1).

The definition of A166649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165830, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166649.P15651069989115912745

`A165830(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166649

/-- `A165830(n+1)*A003959(n+1)` -/
def P15651069989115912745.Spec : Prop :=
  ∀ n, P15651069989115912745.a n = A166649 (n + 1)

theorem P15651069989115912745.correct : P15651069989115912745.Spec := by
  intro n
  simp only [A166649, Nat.add_sub_cancel]

end A166649

/-! ## A166649.P2614051300348306976

`9^A001222(n+1)*A003959(n+1)`
-/

namespace A166649.P2614051300348306976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166649.P2614051300348306976

namespace A166649

/-- `9^A001222(n+1)*A003959(n+1)` -/
def P2614051300348306976.Spec : Prop :=
  ∀ n, P2614051300348306976.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P14542110934965296159

`A165824(n+1)*A166643(n+1)`
-/

namespace A166649.P14542110934965296159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) * A166643 (n + 1)

end

end A166649.P14542110934965296159

namespace A166649

/-- `A165824(n+1)*A166643(n+1)` -/
def P14542110934965296159.Spec : Prop :=
  ∀ n, P14542110934965296159.a n = A166649 (n + 1)

end A166649

/-! ## A166649.P15444065205309948768

`A165824(n+1)²*A003959(n+1)`
-/

namespace A166649.P15444065205309948768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1) ^ 2 * A003959 (n + 1)

end

end A166649.P15444065205309948768

namespace A166649

/-- `A165824(n+1)²*A003959(n+1)` -/
def P15444065205309948768.Spec : Prop :=
  ∀ n, P15444065205309948768.a n = A166649 (n + 1)

end A166649

/-! ## A166649.P11583359884705038614

`A166643(n+1)²/A003959(n+1)`
-/

namespace A166649.P11583359884705038614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) ^ 2 : ℚ) / (A003959 (n + 1) : ℚ)

end

end A166649.P11583359884705038614

namespace A166649

/-- `A166643(n+1)²/A003959(n+1)` -/
def P11583359884705038614.Spec : Prop :=
  ∀ n, P11583359884705038614.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P1971686641193778213

`A166646(n+1)²/A166644(n+1)`
-/

namespace A166649.P1971686641193778213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) ^ 2 : ℚ) / (A166644 (n + 1) : ℚ)

end

end A166649.P1971686641193778213

namespace A166649

/-- `A166646(n+1)²/A166644(n+1)` -/
def P1971686641193778213.Spec : Prop :=
  ∀ n, P1971686641193778213.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P14783025271866634918

`A165824(n+1)²*sqrt(A167349(n+1))`
-/

namespace A166649.P14783025271866634918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165824 (n + 1) ^ 2 : ℝ) * Real.sqrt (A167349 (n + 1) : ℝ)

end

end A166649.P14783025271866634918

namespace A166649

/-- `A165824(n+1)²*sqrt(A167349(n+1))` -/
def P14783025271866634918.Spec : Prop :=
  ∀ n, P14783025271866634918.a n = (A166649 (n + 1) : ℝ)

end A166649

/-! ## A166649.P16418555905352948734

`A003959(n+1)*A166643(A061142(n+1))`
-/

namespace A166649.P16418555905352948734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166643 (A061142 (n + 1)).toNat

end

end A166649.P16418555905352948734

namespace A166649

/-- `A003959(n+1)*A166643(A061142(n+1))` -/
def P16418555905352948734.Spec : Prop :=
  ∀ n, P16418555905352948734.a n = A166649 (n + 1)

end A166649

/-! ## A166649.P9432965711086374197

`A166633(A061142(n+1))*A166643(n+1)`
-/

namespace A166649.P9432965711086374197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (A061142 (n + 1)).toNat * A166643 (n + 1)

end

end A166649.P9432965711086374197

namespace A166649

/-- `A166633(A061142(n+1))*A166643(n+1)` -/
def P9432965711086374197.Spec : Prop :=
  ∀ n, P9432965711086374197.a n = A166649 (n + 1)

end A166649

/-! ## A166649.P9907657246781047285

`A003959(n+1)/A003958(n+1)*A166640(n+1)`
-/

namespace A166649.P9907657246781047285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166640 (n + 1) : ℚ)

end

end A166649.P9907657246781047285

namespace A166649

/-- `A003959(n+1)/A003958(n+1)*A166640(n+1)` -/
def P9907657246781047285.Spec : Prop :=
  ∀ n, P9907657246781047285.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P14097777402959788747

`A003959(n+1)/A166590(n+1)*A167310(n+1)`
-/

namespace A166649.P14097777402959788747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167310 (n + 1) : ℚ)

end

end A166649.P14097777402959788747

namespace A166649

/-- `A003959(n+1)/A166590(n+1)*A167310(n+1)` -/
def P14097777402959788747.Spec : Prop :=
  ∀ n, P14097777402959788747.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P11332052341873067919

`(A166633(n+1)/A003958(n+1))²*A003959(n+1)`
-/

namespace A166649.P11332052341873067919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ)) ^ 2 * (A003959 (n + 1) : ℚ)

end

end A166649.P11332052341873067919

namespace A166649

/-- `(A166633(n+1)/A003958(n+1))²*A003959(n+1)` -/
def P11332052341873067919.Spec : Prop :=
  ∀ n, P11332052341873067919.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P11187980019025203482

`(A167304(n+1)/A166590(n+1))²*A003959(n+1)`
-/

namespace A166649.P11187980019025203482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167304 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ)) ^ 2 * (A003959 (n + 1) : ℚ)

end

end A166649.P11187980019025203482

namespace A166649

/-- `(A167304(n+1)/A166590(n+1))²*A003959(n+1)` -/
def P11187980019025203482.Spec : Prop :=
  ∀ n, P11187980019025203482.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P1878200510746816689

`(A165824(n+1)/A061142(n+1))²*A166644(n+1)`
-/

namespace A166649.P1878200510746816689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165824 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 * (A166644 (n + 1) : ℚ)

end

end A166649.P1878200510746816689

namespace A166649

/-- `(A165824(n+1)/A061142(n+1))²*A166644(n+1)` -/
def P1878200510746816689.Spec : Prop :=
  ∀ n, P1878200510746816689.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P8640998477114673660

`A165827(n+1)/A061142(n+1)²*A166646(n+1)`
-/

namespace A166649.P8640998477114673660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165827 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A166646 (n + 1) : ℚ)

end

end A166649.P8640998477114673660

namespace A166649

/-- `A165827(n+1)/A061142(n+1)²*A166646(n+1)` -/
def P8640998477114673660.Spec : Prop :=
  ∀ n, P8640998477114673660.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P16038761108374201648

`A003959(n+1)/(A061142(n+1)/A165827(n+1))²`
-/

namespace A166649.P16038761108374201648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / ((A061142 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ)) ^ 2

end

end A166649.P16038761108374201648

namespace A166649

/-- `A003959(n+1)/(A061142(n+1)/A165827(n+1))²` -/
def P16038761108374201648.Spec : Prop :=
  ∀ n, P16038761108374201648.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P15964912087713732150

`(A166646(n+1)/A061142(n+1))²/A003959(n+1)`
-/

namespace A166649.P15964912087713732150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A166646 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)) ^ 2 / (A003959 (n + 1) : ℚ)

end

end A166649.P15964912087713732150

namespace A166649

/-- `(A166646(n+1)/A061142(n+1))²/A003959(n+1)` -/
def P15964912087713732150.Spec : Prop :=
  ∀ n, P15964912087713732150.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P7842018696465601265

`A166643(n+1)²/gcd(A166642(n+1), A166643(n+1))`
-/

namespace A166649.P7842018696465601265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) ^ 2 : ℚ) / (Int.gcd (A166642 (n + 1)) (A166643 (n + 1)) : ℚ)

end

end A166649.P7842018696465601265

namespace A166649

/-- `A166643(n+1)²/gcd(A166642(n+1), A166643(n+1))` -/
def P7842018696465601265.Spec : Prop :=
  ∀ n, P7842018696465601265.a n = (A166649 (n + 1) : ℚ)

end A166649

/-! ## A166649.P17818914889257976678

`A003959(n+1)*A003959(A061142(n+1))*A165824(n+1)`
-/

namespace A166649.P17818914889257976678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (A061142 (n + 1)).toNat * A165824 (n + 1)

end

end A166649.P17818914889257976678

namespace A166649

/-- `A003959(n+1)*A003959(A061142(n+1))*A165824(n+1)` -/
def P17818914889257976678.Spec : Prop :=
  ∀ n, P17818914889257976678.a n = A166649 (n + 1)

end A166649

/-! ## A166649.P11559482879409308816

`A003959(n+1)*A003959(A165825(n+1))`
-/

namespace A166649.P11559482879409308816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A003959 (A165825 (n + 1)).toNat

end

end A166649.P11559482879409308816

namespace A166649

/-- `A003959(n+1)*A003959(A165825(n+1))` -/
def P11559482879409308816.Spec : Prop :=
  ∀ n, P11559482879409308816.a n = A166649 (n + 1)

end A166649

/-!
# A166650: Totally multiplicative sequence with a(p) = 10*(p+1) for prime p.

The programs for A166650, the canonical program `A166650.P31481829163144906` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166650 has offset 1).

The definition of A166650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A165831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166650.P31481829163144906

`A165831(n+1)*A003959(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A166650

/-- `A165831(n+1)*A003959(n+1)` -/
def P31481829163144906.Spec : Prop :=
  ∀ n, P31481829163144906.a n = A166650 (n + 1)

theorem P31481829163144906.correct : P31481829163144906.Spec := by
  intro n
  simp only [A166650, Nat.add_sub_cancel]

end A166650

/-! ## A166650.P6200630724257576051

`10^A001222(n+1)*A003959(n+1)`
-/

namespace A166650.P6200630724257576051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A003959 (n + 1) : ℚ)

end

end A166650.P6200630724257576051

namespace A166650

/-- `10^A001222(n+1)*A003959(n+1)` -/
def P6200630724257576051.Spec : Prop :=
  ∀ n, P6200630724257576051.a n = (A166650 (n + 1) : ℚ)

end A166650

/-! ## A166650.P8108893621030994513

`A061142(n+1)*A166645(n+1)`
-/

namespace A166650.P8108893621030994513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166645 (n + 1)

end

end A166650.P8108893621030994513

namespace A166650

/-- `A061142(n+1)*A166645(n+1)` -/
def P8108893621030994513.Spec : Prop :=
  ∀ n, P8108893621030994513.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P13746644775198463359

`A165826(n+1)*A166642(n+1)`
-/

namespace A166650.P13746644775198463359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (n + 1) * A166642 (n + 1)

end

end A166650.P13746644775198463359

namespace A166650

/-- `A165826(n+1)*A166642(n+1)` -/
def P13746644775198463359.Spec : Prop :=
  ∀ n, P13746644775198463359.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P5793580054900227387

`lcm(A166642(n+1), A166645(n+1))`
-/

namespace A166650.P5793580054900227387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166642 (n + 1)) (A166645 (n + 1))

end

end A166650.P5793580054900227387

namespace A166650

/-- `lcm(A166642(n+1), A166645(n+1))` -/
def P5793580054900227387.Spec : Prop :=
  ∀ n, (P5793580054900227387.a n : ℤ) = A166650 (n + 1)

end A166650

/-! ## A166650.P12697174463591823947

`A003959(n+1)*A011557(A001222(n+1))`
-/

namespace A166650.P12697174463591823947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A011557 (A001222 (n + 1)).toNat

end

end A166650.P12697174463591823947

namespace A166650

/-- `A003959(n+1)*A011557(A001222(n+1))` -/
def P12697174463591823947.Spec : Prop :=
  ∀ n, P12697174463591823947.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P11126705598723648815

`A003959(n+1)*A166626(A061142(n+1))`
-/

namespace A166650.P11126705598723648815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166626 (A061142 (n + 1)).toNat

end

end A166650.P11126705598723648815

namespace A166650

/-- `A003959(n+1)*A166626(A061142(n+1))` -/
def P11126705598723648815.Spec : Prop :=
  ∀ n, P11126705598723648815.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P4836891002635053023

`A166642(n+1)*A166652(A061142(n+1))`
-/

namespace A166650.P4836891002635053023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166642 (n + 1) * A166652 (A061142 (n + 1)).toNat

end

end A166650.P4836891002635053023

namespace A166650

/-- `A166642(n+1)*A166652(A061142(n+1))` -/
def P4836891002635053023.Spec : Prop :=
  ∀ n, P4836891002635053023.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P6934529657578390355

`A003959(n+1)*A061142(n+1)*A165826(n+1)`
-/

namespace A166650.P6934529657578390355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A061142 (n + 1) * A165826 (n + 1)

end

end A166650.P6934529657578390355

namespace A166650

/-- `A003959(n+1)*A061142(n+1)*A165826(n+1)` -/
def P6934529657578390355.Spec : Prop :=
  ∀ n, P6934529657578390355.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P11943730113335584505

`A003959(n+1)/A003958(n+1)*A166641(n+1)`
-/

namespace A166650.P11943730113335584505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A166641 (n + 1) : ℚ)

end

end A166650.P11943730113335584505

namespace A166650

/-- `A003959(n+1)/A003958(n+1)*A166641(n+1)` -/
def P11943730113335584505.Spec : Prop :=
  ∀ n, P11943730113335584505.a n = (A166650 (n + 1) : ℚ)

end A166650

/-! ## A166650.P4867604830808657611

`A003959(n+1)/A166590(n+1)*A167311(n+1)`
-/

namespace A166650.P4867604830808657611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166590 (n + 1) : ℚ) * (A167311 (n + 1) : ℚ)

end

end A166650.P4867604830808657611

namespace A166650

/-- `A003959(n+1)/A166590(n+1)*A167311(n+1)` -/
def P4867604830808657611.Spec : Prop :=
  ∀ n, P4867604830808657611.a n = (A166650 (n + 1) : ℚ)

end A166650

/-! ## A166650.P5439179786625809920

`A003958(A166633(n+1)/A003958(n+1))*A166645(n+1)`
-/

namespace A166650.P5439179786625809920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A166633 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat * A166645 (n + 1)

end

end A166650.P5439179786625809920

namespace A166650

/-- `A003958(A166633(n+1)/A003958(n+1))*A166645(n+1)` -/
def P5439179786625809920.Spec : Prop :=
  ∀ n, P5439179786625809920.a n = A166650 (n + 1)

end A166650

/-! ## A166650.P15571063183062191375

`A003959(n+1)*A166635(A165824(n+1))`
-/

namespace A166650.P15571063183062191375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A166635 (A165824 (n + 1)).toNat

end

end A166650.P15571063183062191375

namespace A166650

/-- `A003959(n+1)*A166635(A165824(n+1))` -/
def P15571063183062191375.Spec : Prop :=
  ∀ n, P15571063183062191375.a n = A166650 (n + 1)

end A166650

/-!
# A166651: Totally multiplicative sequence with a(p) = 2p-1 for prime p.

The programs for A166651, the canonical program `A166651.P5914257921824398036` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166651 has offset 1).

The definition of A166651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166651.P5914257921824398036

`∏{d}[n+1, 2*A014963(#)-1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A166651

/-- `∏{d}[n+1, 2*A014963(#)-1]` -/
def P5914257921824398036.Spec : Prop :=
  ∀ n, P5914257921824398036.a n = A166651 (n + 1)

theorem P5914257921824398036.correct : P5914257921824398036.Spec := by
  intro n
  simp only [A166651, Nat.add_sub_cancel]

end A166651

/-! ## A166651.P16296173726270352236

`∏{d}[n+1, A004273(A014963(#))]`
-/

namespace A166651.P16296173726270352236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004273 (A014963 d).toNat

end

end A166651.P16296173726270352236

namespace A166651

/-- `∏{d}[n+1, A004273(A014963(#))]` -/
def P16296173726270352236.Spec : Prop :=
  ∀ n, P16296173726270352236.a n = A166651 (n + 1)

end A166651

/-! ## A166651.P3888954454285704533

`A167330(n+1)/A061142(n+1)`
-/

namespace A166651.P3888954454285704533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167330 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166651.P3888954454285704533

namespace A166651

/-- `A167330(n+1)/A061142(n+1)` -/
def P3888954454285704533.Spec : Prop :=
  ∀ n, P3888954454285704533.a n = (A166651 (n + 1) : ℚ)

end A166651

/-! ## A166651.P16975459022247750520

`A167330(n+1)/2^Δ[A022559(n)]`
-/

namespace A166651.P16975459022247750520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167330 (n + 1) : ℚ) / (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A166651.P16975459022247750520

namespace A166651

/-- `A167330(n+1)/2^Δ[A022559(n)]` -/
def P16975459022247750520.Spec : Prop :=
  ∀ n, P16975459022247750520.a n = (A166651 (n + 1) : ℚ)

end A166651

/-! ## A166651.P7737656202940820644

`A167330(n+1)/2^A001222(n+1)`
-/

namespace A166651.P7737656202940820644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167330 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166651.P7737656202940820644

namespace A166651

/-- `A167330(n+1)/2^A001222(n+1)` -/
def P7737656202940820644.Spec : Prop :=
  ∀ n, P7737656202940820644.a n = (A166651 (n + 1) : ℚ)

end A166651

/-! ## A166651.P14703162808222427897

`∏{d}[n+1, A133090(2*A014963(#))]`
-/

namespace A166651.P14703162808222427897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A133090 (2 * A014963 d).toNat

end

end A166651.P14703162808222427897

namespace A166651

/-- `∏{d}[n+1, A133090(2*A014963(#))]` -/
def P14703162808222427897.Spec : Prop :=
  ∀ n, P14703162808222427897.a n = A166651 (n + 1)

end A166651

/-! ## A166651.P8710276082347665945

`A000265(A167330(n+1))`
-/

namespace A166651.P8710276082347665945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A167330 (n + 1)).toNat

end

end A166651.P8710276082347665945

namespace A166651

/-- `A000265(A167330(n+1))` -/
def P8710276082347665945.Spec : Prop :=
  ∀ n, P8710276082347665945.a n = A166651 (n + 1)

end A166651

/-! ## A166651.P5693893547052175684

`∏{d}[n+1, A253580(A014963(#)²)]`
-/

namespace A166651.P5693893547052175684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A253580 (A014963 d ^ 2).toNat

end

end A166651.P5693893547052175684

namespace A166651

/-- `∏{d}[n+1, A253580(A014963(#)²)]` -/
def P5693893547052175684.Spec : Prop :=
  ∀ n, P5693893547052175684.a n = A166651 (n + 1)

end A166651

/-! ## A166651.P15582299875843985030

`∏{e}[A181821(n+1), A072055(#)-2]`
-/

namespace A166651.P15582299875843985030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A072055 (Nat.factorization (f1 n).natAbs p) - 2)

end

end A166651.P15582299875843985030

namespace A166651

/-- `∏{e}[A181821(n+1), A072055(#)-2]` -/
def P15582299875843985030.Spec : Prop :=
  ∀ n, P15582299875843985030.a n = A166651 (n + 1)

end A166651

/-!
# A166652: Totally multiplicative sequence with a(p) = 3p-1 for prime p.

The programs for A166652, there is no canonical definition to state claims against.
-/

/-! ## A166652.P17214432193310477313

`A167331(n+1)/A061142(n+1)`
-/

namespace A166652.P17214432193310477313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166652.P17214432193310477313

/-! ## A166652.P16711928297735497841

`abs(A167331(n+1)/A165872(n+1))`
-/

namespace A166652.P16711928297735497841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A167331 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ)|

end

end A166652.P16711928297735497841

/-! ## A166652.P14575133506138954490

`A167331(n+1)/sqrt(A165825(n+1))`
-/

namespace A166652.P14575133506138954490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166652.P14575133506138954490

/-! ## A166652.P720028899213255841

`A167331(n+1)/2^A001222(n+1)`
-/

namespace A166652.P720028899213255841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166652.P720028899213255841

/-! ## A166652.P7815766101595310928

`A167331(n+1)/A000079(Δ[A022559(n)])`
-/

namespace A166652.P7815766101595310928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (A000079 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A166652.P7815766101595310928

/-! ## A166652.P11650299459910778897

`A167331(n+1)/A011782(A073093(n+1))`
-/

namespace A166652.P11650299459910778897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (A011782 (A073093 (n + 1)).toNat : ℚ)

end

end A166652.P11650299459910778897

/-! ## A166652.P7926280063101508660

`A167331(n+1)/A122111(A105560(n+1))`
-/

namespace A166652.P7926280063101508660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (A122111 (A105560 (n + 1)).toNat : ℚ)

end

end A166652.P7926280063101508660

/-! ## A166652.P14213119360547019156

`A167331(n+1)/A016116(A255201(n+1))`
-/

namespace A166652.P14213119360547019156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167331 (n + 1) : ℚ) / (A016116 (A255201 (n + 1)).toNat : ℚ)

end

end A166652.P14213119360547019156

/-! ## A166652.P7643500770220422391

`A166651(n+1)/A167330(n+1)*A167331(n+1)`
-/

namespace A166652.P7643500770220422391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167331 (n + 1) : ℚ)

end

end A166652.P7643500770220422391

/-!
# A166653: Totally multiplicative sequence with a(p) = 4p-1 for prime p.

The programs for A166653, the canonical program `A166653.P16103000005196691296` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166653 has offset 1).

The definition of A166653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166653.P6151601293535797108

`A167332(n+1)/A061142(n+1)`
-/

namespace A166653.P6151601293535797108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167332 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166653.P6151601293535797108

namespace A166653

/-- `A167332(n+1)/A061142(n+1)` -/
def P6151601293535797108.Spec : Prop :=
  ∀ n, P6151601293535797108.a n = (A166653 (n + 1) : ℚ)

end A166653

/-! ## A166653.P7259761855479799635

`A167332(n+1)/sqrt(A165825(n+1))`
-/

namespace A166653.P7259761855479799635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167332 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166653.P7259761855479799635

namespace A166653

/-- `A167332(n+1)/sqrt(A165825(n+1))` -/
def P7259761855479799635.Spec : Prop :=
  ∀ n, P7259761855479799635.a n = (A166653 (n + 1) : ℝ)

end A166653

/-! ## A166653.P7790809444722913592

`A167332(n+1)/2^A001222(n+1)`
-/

namespace A166653.P7790809444722913592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167332 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166653.P7790809444722913592

namespace A166653

/-- `A167332(n+1)/2^A001222(n+1)` -/
def P7790809444722913592.Spec : Prop :=
  ∀ n, P7790809444722913592.a n = (A166653 (n + 1) : ℚ)

end A166653

/-! ## A166653.P13334080706353958803

`A167332(n+1)/A016116(2*A001222(n+1))`
-/

namespace A166653.P13334080706353958803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167332 (n + 1) : ℚ) / (A016116 (2 * A001222 (n + 1)).toNat : ℚ)

end

end A166653.P13334080706353958803

namespace A166653

/-- `A167332(n+1)/A016116(2*A001222(n+1))` -/
def P13334080706353958803.Spec : Prop :=
  ∀ n, P13334080706353958803.a n = (A166653 (n + 1) : ℚ)

end A166653

/-! ## A166653.P16103000005196691296

`∏{d}[n+1, A004273(A004273(A120007(#))+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166653

/-- `∏{d}[n+1, A004273(A004273(A120007(#))+1)]` -/
def P16103000005196691296.Spec : Prop :=
  ∀ n, P16103000005196691296.a n = A166653 (n + 1)

theorem P16103000005196691296.correct : P16103000005196691296.Spec := by
  intro n
  simp only [A166653, Nat.add_sub_cancel]

end A166653

/-! ## A166653.P5205713258577267421

`A167332(n+1)/A016116(A001222((n+1)²))`
-/

namespace A166653.P5205713258577267421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167332 (n + 1) : ℚ) / (A016116 (A001222 ((n + 1) ^ 2)).toNat : ℚ)

end

end A166653.P5205713258577267421

namespace A166653

/-- `A167332(n+1)/A016116(A001222((n+1)²))` -/
def P5205713258577267421.Spec : Prop :=
  ∀ n, P5205713258577267421.a n = (A166653 (n + 1) : ℚ)

end A166653

/-! ## A166653.P1763064177990671369

`A000265(A000265(n+1)/(n+1)*A167332(n+1))`
-/

namespace A166653.P1763064177990671369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) / (n + 1 : ℚ) * (A167332 (n + 1) : ℚ))).toNat

end

end A166653.P1763064177990671369

namespace A166653

/-- `A000265(A000265(n+1)/(n+1)*A167332(n+1))` -/
def P1763064177990671369.Spec : Prop :=
  ∀ n, P1763064177990671369.a n = A166653 (n + 1)

end A166653

/-!
# A166654: Totally multiplicative sequence with a(p) = 5p-1 for prime p.

The programs for A166654, there is no canonical definition to state claims against.
-/

/-! ## A166654.P330001180647014888

`A167333(n+1)/A061142(n+1)`
-/

namespace A166654.P330001180647014888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167333 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166654.P330001180647014888

/-! ## A166654.P13271389833043478400

`A167333(n+1)/2^A001222(n+1)`
-/

namespace A166654.P13271389833043478400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167333 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166654.P13271389833043478400

/-! ## A166654.P10386190604115966540

`A166651(n+1)/A167330(n+1)*A167333(n+1)`
-/

namespace A166654.P10386190604115966540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P10386190604115966540

/-! ## A166654.P8732689317734485903

`A167305(n+1)/A167309(n+1)*A167333(n+1)`
-/

namespace A166654.P8732689317734485903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167305 (n + 1) : ℚ) / (A167309 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P8732689317734485903

/-! ## A166654.P17529775796225346121

`A167306(n+1)/A167311(n+1)*A167333(n+1)`
-/

namespace A166654.P17529775796225346121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167306 (n + 1) : ℚ) / (A167311 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P17529775796225346121

/-! ## A166654.P14940997563981671007

`A167321(n+1)/A167323(n+1)*A167333(n+1)`
-/

namespace A166654.P14940997563981671007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167321 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P14940997563981671007

/-! ## A166654.P17047843895572494031

`A167322(n+1)/A167325(n+1)*A167333(n+1)`
-/

namespace A166654.P17047843895572494031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167322 (n + 1) : ℚ) / (A167325 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P17047843895572494031

/-! ## A166654.P7513764429204613553

`A167323(n+1)/A167327(n+1)*A167333(n+1)`
-/

namespace A166654.P7513764429204613553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167323 (n + 1) : ℚ) / (A167327 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P7513764429204613553

/-! ## A166654.P9401650131351676856

`A167324(n+1)/A167329(n+1)*A167333(n+1)`
-/

namespace A166654.P9401650131351676856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167324 (n + 1) : ℚ) / (A167329 (n + 1) : ℚ) * (A167333 (n + 1) : ℚ)

end

end A166654.P9401650131351676856

/-! ## A166654.P2545127211274674633

`A167333(n+1)/A000196(A165825(n+1))`
-/

namespace A166654.P2545127211274674633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167333 (n + 1) : ℚ) / (A000196 (A165825 (n + 1)).toNat : ℚ)

end

end A166654.P2545127211274674633

/-!
# A166655: Totally multiplicative sequence with a(p) = 6p-1 for prime p.

The programs for A166655, there is no canonical definition to state claims against.
-/

/-! ## A166655.P9297300350944074795

`∏{e}[A181821(n+1), A330410(#)]`
-/

namespace A166655.P9297300350944074795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A330410 (Nat.factorization (f1 n).natAbs p)

end

end A166655.P9297300350944074795

/-! ## A166655.P2112133521099120012

`∏{e}[A259939(n), A016969(#)]`
-/

namespace A166655.P2112133521099120012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016969 (Nat.factorization (f1 n).natAbs p)

end

end A166655.P2112133521099120012

/-! ## A166655.P2022094882136427505

`∏{e}[A037019(n+1), A016969(#)]`
-/

namespace A166655.P2022094882136427505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016969 (Nat.factorization (f1 n).natAbs p)

end

end A166655.P2022094882136427505

/-! ## A166655.P17766423242507077949

`∏{e}[A037019(n+1), A017041(#)-#]`
-/

namespace A166655.P17766423242507077949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017041 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166655.P17766423242507077949

/-! ## A166655.P1603358552680212965

`∏{e}[A037019(n+1), A016789(A005408(#))]`
-/

namespace A166655.P1603358552680212965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016789 (A005408 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166655.P1603358552680212965

/-!
# A166656: Totally multiplicative sequence with a(p) = 7p-1 for prime p.

The programs for A166656, there is no canonical definition to state claims against.
-/

/-! ## A166656.P12036866081299333718

`∏{e}[A259939(n), A017053(#)]`
-/

namespace A166656.P12036866081299333718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017053 (Nat.factorization (f1 n).natAbs p)

end

end A166656.P12036866081299333718

/-! ## A166656.P4712115283270726087

`∏{e}[A037019(n+1), A017053(#)]`
-/

namespace A166656.P4712115283270726087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017053 (Nat.factorization (f1 n).natAbs p)

end

end A166656.P4712115283270726087

/-! ## A166656.P18252985766586297968

`∏{e}[A037019(n+1), A017041(#)+1]`
-/

namespace A166656.P18252985766586297968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017041 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A166656.P18252985766586297968

/-! ## A166656.P11686601856966266873

`∏{e}[A340388(n+1), A017053(#)]`
-/

namespace A166656.P11686601856966266873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017053 (Nat.factorization (f1 n).natAbs p)

end

end A166656.P11686601856966266873

/-!
# A166657: Totally multiplicative sequence with a(p) = 8p-1 for prime p.

The programs for A166657, there is no canonical definition to state claims against.
-/

/-! ## A166657.P208500618511840

`∏{e}[A259939(n), A004771(#)]`
-/

namespace A166657.P208500618511840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004771 (Nat.factorization (f1 n).natAbs p)

end

end A166657.P208500618511840

/-! ## A166657.P3587406962624034892

`∏{e}[A037019(n+1), A004771(#)]`
-/

namespace A166657.P3587406962624034892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004771 (Nat.factorization (f1 n).natAbs p)

end

end A166657.P3587406962624034892

/-! ## A166657.P10698547479727211800

`∏{e}[A259939(n), A004768(#)-2]`
-/

namespace A166657.P10698547479727211800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004768 (Nat.factorization (f1 n).natAbs p) - 2)

end

end A166657.P10698547479727211800

/-! ## A166657.P12412037902562590325

`∏{e}[A259939(n), A017245(#)-#]`
-/

namespace A166657.P12412037902562590325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017245 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166657.P12412037902562590325

/-! ## A166657.P10278631969022568653

`∏{e}[A037019(n+1), A004768(#)-2]`
-/

namespace A166657.P10278631969022568653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004768 (Nat.factorization (f1 n).natAbs p) - 2)

end

end A166657.P10278631969022568653

/-!
# A166658: Totally multiplicative sequence with a(p) = 9p-1 for prime p.

The programs for A166658, there is no canonical definition to state claims against.
-/

/-! ## A166658.P10420635509115063923

`∏{e}[A259939(n), A017257(#)]`
-/

namespace A166658.P10420635509115063923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017257 (Nat.factorization (f1 n).natAbs p)

end

end A166658.P10420635509115063923

/-! ## A166658.P18214662353424536965

`∏{e}[A037019(n+1), A017257(#)]`
-/

namespace A166658.P18214662353424536965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017257 (Nat.factorization (f1 n).natAbs p)

end

end A166658.P18214662353424536965

/-! ## A166658.P7830936730793191553

`∏{e}[A259939(n), A017245(#)+1]`
-/

namespace A166658.P7830936730793191553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017245 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A166658.P7830936730793191553

/-! ## A166658.P14238593295037286435

`∏{e}[A037019(n+1), A017245(#)+1]`
-/

namespace A166658.P14238593295037286435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017245 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A166658.P14238593295037286435

/-! ## A166658.P2416573947969394672

`∏{e}[A037019(n+1), A016789(A016789(#))]`
-/

namespace A166658.P2416573947969394672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016789 (A016789 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166658.P2416573947969394672

/-!
# A166659: Totally multiplicative sequence with a(p) = 10p-1 for prime p.

The programs for A166659, there is no canonical definition to state claims against.
-/

/-! ## A166659.P12212689990486484116

`∏{e}[A037019(n+1), A017377(#)]`
-/

namespace A166659.P12212689990486484116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017377 (Nat.factorization (f1 n).natAbs p)

end

end A166659.P12212689990486484116

/-! ## A166659.P14874759574006485892

`∏{e}[A348199(n+1), A017377(#)]`
-/

namespace A166659.P14874759574006485892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017377 (Nat.factorization (f1 n).natAbs p)

end

end A166659.P14874759574006485892

/-! ## A166659.P6724688827123279785

`∏{e}[A018782(n+1), A017377(#)]`
-/

namespace A166659.P6724688827123279785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017377 (Nat.factorization (f1 n).natAbs p)

end

end A166659.P6724688827123279785

/-!
# A166660: Totally multiplicative sequence with a(p) = 2p+1 for prime p.

The programs for A166660, the canonical program `A166660.P8526980264530520736` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166660 has offset 1).

The definition of A166660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166660.P8526980264530520736

`∏{d}[n+1, A060640(A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A166660

/-- `∏{d}[n+1, A060640(A014963(#))]` -/
def P8526980264530520736.Spec : Prop :=
  ∀ n, P8526980264530520736.a n = A166660 (n + 1)

theorem P8526980264530520736.correct : P8526980264530520736.Spec := by
  intro n
  simp only [A166660, Nat.add_sub_cancel]

end A166660

/-! ## A166660.P3317326272812376167

`A167334(n+1)/A061142(n+1)`
-/

namespace A166660.P3317326272812376167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167334 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166660.P3317326272812376167

namespace A166660

/-- `A167334(n+1)/A061142(n+1)` -/
def P3317326272812376167.Spec : Prop :=
  ∀ n, P3317326272812376167.a n = (A166660 (n + 1) : ℚ)

end A166660

/-! ## A166660.P13912131844188403763

`∏{d}[n+1, A004273(A120007(#)+1)]`
-/

namespace A166660.P13912131844188403763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004273 (A120007 d + 1).toNat

end

end A166660.P13912131844188403763

namespace A166660

/-- `∏{d}[n+1, A004273(A120007(#)+1)]` -/
def P13912131844188403763.Spec : Prop :=
  ∀ n, P13912131844188403763.a n = A166660 (n + 1)

end A166660

/-! ## A166660.P4277822137112867750

`A167334(n+1)/sqrt(A165825(n+1))`
-/

namespace A166660.P4277822137112867750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167334 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166660.P4277822137112867750

namespace A166660

/-- `A167334(n+1)/sqrt(A165825(n+1))` -/
def P4277822137112867750.Spec : Prop :=
  ∀ n, P4277822137112867750.a n = (A166660 (n + 1) : ℝ)

end A166660

/-! ## A166660.P14629642115562076918

`∏{d}[A000027(n+1), A341038(A014963(#))]`
-/

namespace A166660.P14629642115562076918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A341038 (A014963 d).toNat

end

end A166660.P14629642115562076918

namespace A166660

/-- `∏{d}[A000027(n+1), A341038(A014963(#))]` -/
def P14629642115562076918.Spec : Prop :=
  ∀ n, P14629642115562076918.a n = A166660 (n + 1)

end A166660

/-! ## A166660.P5548585942670500178

`A167334(n+1)/A000079(A001222(n+1))`
-/

namespace A166660.P5548585942670500178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167334 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A166660.P5548585942670500178

namespace A166660

/-- `A167334(n+1)/A000079(A001222(n+1))` -/
def P5548585942670500178.Spec : Prop :=
  ∀ n, P5548585942670500178.a n = (A166660 (n + 1) : ℚ)

end A166660

/-! ## A166660.P15996600014946494540

`A166651(n+1)/A167330(n+1)*A167334(n+1)`
-/

namespace A166660.P15996600014946494540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167334 (n + 1) : ℚ)

end

end A166660.P15996600014946494540

namespace A166660

/-- `A166651(n+1)/A167330(n+1)*A167334(n+1)` -/
def P15996600014946494540.Spec : Prop :=
  ∀ n, P15996600014946494540.a n = (A166660 (n + 1) : ℚ)

end A166660

/-! ## A166660.P6646040928635951380

`A166663(n+1)*A167334(n+1)/A167337(n+1)`
-/

namespace A166660.P6646040928635951380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166663 (n + 1) * A167334 (n + 1) : ℚ) / (A167337 (n + 1) : ℚ)

end

end A166660.P6646040928635951380

namespace A166660

/-- `A166663(n+1)*A167334(n+1)/A167337(n+1)` -/
def P6646040928635951380.Spec : Prop :=
  ∀ n, P6646040928635951380.a n = (A166660 (n + 1) : ℚ)

end A166660

/-! ## A166660.P6622930854146145894

`∏{e}[A181821(n+1), A072055(#)]`
-/

namespace A166660.P6622930854146145894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072055 (Nat.factorization (f1 n).natAbs p)

end

end A166660.P6622930854146145894

namespace A166660

/-- `∏{e}[A181821(n+1), A072055(#)]` -/
def P6622930854146145894.Spec : Prop :=
  ∀ n, P6622930854146145894.a n = A166660 (n + 1)

end A166660

/-! ## A166660.P5894287455903059080

`A000265(ceil(A167334(n+1)/2))`
-/

namespace A166660.P5894287455903059080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ⌈(A167334 (n + 1) : ℚ) / 2⌉.toNat

end

end A166660.P5894287455903059080

namespace A166660

/-- `A000265(ceil(A167334(n+1)/2))` -/
def P5894287455903059080.Spec : Prop :=
  ∀ n, P5894287455903059080.a n = A166660 (n + 1)

end A166660

/-!
# A166661: Totally multiplicative sequence with a(p) = 3p+1 for prime p.

The programs for A166661, the canonical program `A166661.P3421275520976742187` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166661 has offset 1).

The definition of A166661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166661.P3421275520976742187

`∏{d}[n+1, 3*A120007(#)+1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166661

/-- `∏{d}[n+1, 3*A120007(#)+1]` -/
def P3421275520976742187.Spec : Prop :=
  ∀ n, P3421275520976742187.a n = A166661 (n + 1)

theorem P3421275520976742187.correct : P3421275520976742187.Spec := by
  intro n
  simp only [A166661, Nat.add_sub_cancel]

end A166661

/-! ## A166661.P1704951100079658883

`A167335(n+1)/A061142(n+1)`
-/

namespace A166661.P1704951100079658883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167335 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166661.P1704951100079658883

namespace A166661

/-- `A167335(n+1)/A061142(n+1)` -/
def P1704951100079658883.Spec : Prop :=
  ∀ n, P1704951100079658883.a n = (A166661 (n + 1) : ℚ)

end A166661

/-! ## A166661.P10180419962667359940

`A167335(n+1)/sqrt(A165825(n+1))`
-/

namespace A166661.P10180419962667359940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167335 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166661.P10180419962667359940

namespace A166661

/-- `A167335(n+1)/sqrt(A165825(n+1))` -/
def P10180419962667359940.Spec : Prop :=
  ∀ n, P10180419962667359940.a n = (A166661 (n + 1) : ℝ)

end A166661

/-! ## A166661.P16334510001149927948

`A167335(n+1)/A000079(A001222(n+1))`
-/

namespace A166661.P16334510001149927948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167335 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A166661.P16334510001149927948

namespace A166661

/-- `A167335(n+1)/A000079(A001222(n+1))` -/
def P16334510001149927948.Spec : Prop :=
  ∀ n, P16334510001149927948.a n = (A166661 (n + 1) : ℚ)

end A166661

/-! ## A166661.P15110626183650477770

`A167335(n+1)/A016116(A255201(n+1))`
-/

namespace A166661.P15110626183650477770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167335 (n + 1) : ℚ) / (A016116 (A255201 (n + 1)).toNat : ℚ)

end

end A166661.P15110626183650477770

namespace A166661

/-- `A167335(n+1)/A016116(A255201(n+1))` -/
def P15110626183650477770.Spec : Prop :=
  ∀ n, P15110626183650477770.a n = (A166661 (n + 1) : ℚ)

end A166661

/-! ## A166661.P13058767652908691667

`A166651(n+1)/A167330(n+1)*A167335(n+1)`
-/

namespace A166661.P13058767652908691667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167335 (n + 1) : ℚ)

end

end A166661.P13058767652908691667

namespace A166661

/-- `A166651(n+1)/A167330(n+1)*A167335(n+1)` -/
def P13058767652908691667.Spec : Prop :=
  ∀ n, P13058767652908691667.a n = (A166661 (n + 1) : ℚ)

end A166661

/-!
# A166662: Totally multiplicative sequence with a(p) = 4p+1 for prime p.

The programs for A166662, the canonical program `A166662.P6981319434609647440` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166662 has offset 1).

The definition of A166662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166662.P6981319434609647440

`∏{d}[n+1, 4*A120007(#)+1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166662

/-- `∏{d}[n+1, 4*A120007(#)+1]` -/
def P6981319434609647440.Spec : Prop :=
  ∀ n, P6981319434609647440.a n = A166662 (n + 1)

theorem P6981319434609647440.correct : P6981319434609647440.Spec := by
  intro n
  simp only [A166662, Nat.add_sub_cancel]

end A166662

/-! ## A166662.P5132880000350951107

`A167336(n+1)/A061142(n+1)`
-/

namespace A166662.P5132880000350951107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167336 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166662.P5132880000350951107

namespace A166662

/-- `A167336(n+1)/A061142(n+1)` -/
def P5132880000350951107.Spec : Prop :=
  ∀ n, P5132880000350951107.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P14150520716425333414

`abs(A167336(n+1)/A165872(n+1))`
-/

namespace A166662.P14150520716425333414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A167336 (n + 1) : ℚ) / (A165872 (n + 1) : ℚ)|

end

end A166662.P14150520716425333414

namespace A166662

/-- `abs(A167336(n+1)/A165872(n+1))` -/
def P14150520716425333414.Spec : Prop :=
  ∀ n, P14150520716425333414.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P964621651780977026

`A167336(n+1)/sqrt(A165825(n+1))`
-/

namespace A166662.P964621651780977026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167336 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166662.P964621651780977026

namespace A166662

/-- `A167336(n+1)/sqrt(A165825(n+1))` -/
def P964621651780977026.Spec : Prop :=
  ∀ n, P964621651780977026.a n = (A166662 (n + 1) : ℝ)

end A166662

/-! ## A166662.P14933675738983955232

`A167336(n+1)/A000079(Δ[A022559(n)])`
-/

namespace A166662.P14933675738983955232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167336 (n + 1) : ℚ) / (A000079 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A166662.P14933675738983955232

namespace A166662

/-- `A167336(n+1)/A000079(Δ[A022559(n)])` -/
def P14933675738983955232.Spec : Prop :=
  ∀ n, P14933675738983955232.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P5589863381060251341

`A167336(n+1)/A000079(A001222(n+1))`
-/

namespace A166662.P5589863381060251341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167336 (n + 1) : ℚ) / (A000079 (A001222 (n + 1)).toNat : ℚ)

end

end A166662.P5589863381060251341

namespace A166662

/-- `A167336(n+1)/A000079(A001222(n+1))` -/
def P5589863381060251341.Spec : Prop :=
  ∀ n, P5589863381060251341.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P12570722906049000220

`A167336(n+1)/A122111(A105560(n+1))`
-/

namespace A166662.P12570722906049000220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167336 (n + 1) : ℚ) / (A122111 (A105560 (n + 1)).toNat : ℚ)

end

end A166662.P12570722906049000220

namespace A166662

/-- `A167336(n+1)/A122111(A105560(n+1))` -/
def P12570722906049000220.Spec : Prop :=
  ∀ n, P12570722906049000220.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P2335899435021620274

`A003959(n+1)/A166642(n+1)*A167336(n+1)`
-/

namespace A166662.P2335899435021620274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A167336 (n + 1) : ℚ)

end

end A166662.P2335899435021620274

namespace A166662

/-- `A003959(n+1)/A166642(n+1)*A167336(n+1)` -/
def P2335899435021620274.Spec : Prop :=
  ∀ n, P2335899435021620274.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P7890535002293946319

`A166651(n+1)/A167330(n+1)*A167336(n+1)`
-/

namespace A166662.P7890535002293946319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167336 (n + 1) : ℚ)

end

end A166662.P7890535002293946319

namespace A166662

/-- `A166651(n+1)/A167330(n+1)*A167336(n+1)` -/
def P7890535002293946319.Spec : Prop :=
  ∀ n, P7890535002293946319.a n = (A166662 (n + 1) : ℚ)

end A166662

/-! ## A166662.P493525005569293326

`∏{d}[n+1, A004273(A004273(A120007(#)+1))]`
-/

namespace A166662.P493525005569293326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A004273 (A004273 (A120007 d + 1).toNat).toNat

end

end A166662.P493525005569293326

namespace A166662

/-- `∏{d}[n+1, A004273(A004273(A120007(#)+1))]` -/
def P493525005569293326.Spec : Prop :=
  ∀ n, P493525005569293326.a n = A166662 (n + 1)

end A166662

/-!
# A166663: Totally multiplicative sequence with a(p) = 5p+1 for prime p.

The programs for A166663, there is no canonical definition to state claims against.
-/

/-! ## A166663.P5347455462713745065

`A167337(n+1)/A061142(n+1)`
-/

namespace A166663.P5347455462713745065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166663.P5347455462713745065

/-! ## A166663.P1120723129167877008

`A167337(n+1)/sqrt(A165825(n+1))`
-/

namespace A166663.P1120723129167877008
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ)

end

end A166663.P1120723129167877008

/-! ## A166663.P4294534437890307554

`A167337(n+1)/2^A001222(n+1)`
-/

namespace A166663.P4294534437890307554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166663.P4294534437890307554

/-! ## A166663.P17211075687200553781

`A003958(n+1)/A166632(n+1)*A167337(n+1)`
-/

namespace A166663.P17211075687200553781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A166632 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P17211075687200553781

/-! ## A166663.P16674388491516318646

`A003959(n+1)/A166642(n+1)*A167337(n+1)`
-/

namespace A166663.P16674388491516318646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A166642 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P16674388491516318646

/-! ## A166663.P13434159245888838927

`A165832(n+1)/A165843(n+1)*A167337(n+1)`
-/

namespace A166663.P13434159245888838927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165832 (n + 1) : ℚ) / (A165843 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P13434159245888838927

/-! ## A166663.P14097718728043118502

`A165843(n+1)/A165865(n+1)*A167337(n+1)`
-/

namespace A166663.P14097718728043118502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165843 (n + 1) : ℚ) / (A165865 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P14097718728043118502

/-! ## A166663.P576278029225741345

`A166651(n+1)/A167330(n+1)*A167337(n+1)`
-/

namespace A166663.P576278029225741345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166651 (n + 1) : ℚ) / (A167330 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P576278029225741345

/-! ## A166663.P16900285778114812880

`A166652(n+1)/A167331(n+1)*A167337(n+1)`
-/

namespace A166663.P16900285778114812880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166652 (n + 1) : ℚ) / (A167331 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P16900285778114812880

/-! ## A166663.P414160615719472078

`A166653(n+1)/A167332(n+1)*A167337(n+1)`
-/

namespace A166663.P414160615719472078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166653 (n + 1) : ℚ) / (A167332 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P414160615719472078

/-! ## A166663.P1713143856650793952

`A166654(n+1)/A167333(n+1)*A167337(n+1)`
-/

namespace A166663.P1713143856650793952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166654 (n + 1) : ℚ) / (A167333 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P1713143856650793952

/-! ## A166663.P5886721575793228629

`A166660(n+1)/A167334(n+1)*A167337(n+1)`
-/

namespace A166663.P5886721575793228629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166660 (n + 1) : ℚ) / (A167334 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P5886721575793228629

/-! ## A166663.P13906968964463124627

`A166661(n+1)/A167335(n+1)*A167337(n+1)`
-/

namespace A166663.P13906968964463124627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166661 (n + 1) : ℚ) / (A167335 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P13906968964463124627

/-! ## A166663.P7507580664514104339

`A166662(n+1)/A167336(n+1)*A167337(n+1)`
-/

namespace A166663.P7507580664514104339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166662 (n + 1) : ℚ) / (A167336 (n + 1) : ℚ) * (A167337 (n + 1) : ℚ)

end

end A166663.P7507580664514104339

/-! ## A166663.P1446942104061356063

`A167337(n+1)/A166632(A166632(n+1)/A003958(n+1))`
-/

namespace A166663.P1446942104061356063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℚ) / (A166632 (SequenceMachineLib.roundAway ((A166632 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat : ℚ)

end

end A166663.P1446942104061356063

/-! ## A166663.P3468930774041450009

`A167337(n+1)/A046523(A165824(n+1))`
-/

namespace A166663.P3468930774041450009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℚ) / (A046523 (A165824 (n + 1)).toNat : ℚ)

end

end A166663.P3468930774041450009

/-! ## A166663.P11782427087303185393

`A167337(n+1)/A000005(A332462(n+1))`
-/

namespace A166663.P11782427087303185393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167337 (n + 1) : ℚ) / (A000005 (A332462 (n + 1)).toNat : ℚ)

end

end A166663.P11782427087303185393

/-!
# A166664: Totally multiplicative sequence with a(p) = 6p+1 for prime p.

The programs for A166664, there is no canonical definition to state claims against.
-/

/-! ## A166664.P7801309174745709643

`∏{e}[A181821(n+1), A330410(#)+2]`
-/

namespace A166664.P7801309174745709643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A330410 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166664.P7801309174745709643

/-! ## A166664.P12709228021083293195

`∏{e}[A259939(n), A016969(#)+2]`
-/

namespace A166664.P12709228021083293195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A016969 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166664.P12709228021083293195

/-! ## A166664.P15406500496139141718

`∏{e}[A037019(n+1), A016969(#)+2]`
-/

namespace A166664.P15406500496139141718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A016969 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166664.P15406500496139141718

/-! ## A166664.P17455053129142938600

`∏{e}[A348199(n+1), A016969(#)+2]`
-/

namespace A166664.P17455053129142938600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A016969 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166664.P17455053129142938600

/-! ## A166664.P92090826300181046

`A344329(A074736(n+1))`
-/

namespace A166664.P92090826300181046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344329 (A074736 (n + 1)).toNat

end

end A166664.P92090826300181046

/-!
# A166665: Totally multiplicative sequence with a(p) = 7p+1 for prime p.

The programs for A166665, there is no canonical definition to state claims against.
-/

/-! ## A166665.P17470181663909419753

`∏{e}[A259939(n), A017053(#)+2]`
-/

namespace A166665.P17470181663909419753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017053 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166665.P17470181663909419753

/-! ## A166665.P8502807167895194145

`∏{e}[A037019(n+1), A017053(#)+2]`
-/

namespace A166665.P8502807167895194145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017053 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166665.P8502807167895194145

/-! ## A166665.P2016499575718704683

`A343526(A074736(n+1))`
-/

namespace A166665.P2016499575718704683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343526 (A074736 (n + 1)).toNat

end

end A166665.P2016499575718704683

/-! ## A166665.P17763985941281035222

`∏{e}[A340388(n+1), A017053(#)+2]`
-/

namespace A166665.P17763985941281035222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017053 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166665.P17763985941281035222

/-!
# A166666: Totally multiplicative sequence with a(p) = 8p+1 for prime p.

The programs for A166666, the canonical program `A166666.P16984493858278454942` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166666 has offset 1).

The definition of A166666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166666.P16984493858278454942

`∏{d}[n+1, A017077(A120007(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166666

/-- `∏{d}[n+1, A017077(A120007(#))]` -/
def P16984493858278454942.Spec : Prop :=
  ∀ n, P16984493858278454942.a n = A166666 (n + 1)

theorem P16984493858278454942.correct : P16984493858278454942.Spec := by
  intro n
  simp only [A166666, Nat.add_sub_cancel]

end A166666

/-! ## A166666.P3250906152327603086

`∏{e}[A259939(n), A004768(#)]`
-/

namespace A166666.P3250906152327603086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004768 (Nat.factorization (f1 n).natAbs p)

end

end A166666.P3250906152327603086

namespace A166666

/-- `∏{e}[A259939(n), A004768(#)]` -/
def P3250906152327603086.Spec : Prop :=
  ∀ n, P3250906152327603086.a n = A166666 (n + 1)

end A166666

/-! ## A166666.P9933007068336581463

`∏{e}[A037019(n+1), A004768(#)]`
-/

namespace A166666.P9933007068336581463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004768 (Nat.factorization (f1 n).natAbs p)

end

end A166666.P9933007068336581463

namespace A166666

/-- `∏{e}[A037019(n+1), A004768(#)]` -/
def P9933007068336581463.Spec : Prop :=
  ∀ n, P9933007068336581463.a n = A166666 (n + 1)

end A166666

/-! ## A166666.P10872727364359666029

`∏{e}[A259939(n), A004771(#)+2]`
-/

namespace A166666.P10872727364359666029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004771 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166666.P10872727364359666029

namespace A166666

/-- `∏{e}[A259939(n), A004771(#)+2]` -/
def P10872727364359666029.Spec : Prop :=
  ∀ n, P10872727364359666029.a n = A166666 (n + 1)

end A166666

/-! ## A166666.P738957256073962501

`∏{e}[A037019(n+1), A004771(#)+2]`
-/

namespace A166666.P738957256073962501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004771 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166666.P738957256073962501

namespace A166666

/-- `∏{e}[A037019(n+1), A004771(#)+2]` -/
def P738957256073962501.Spec : Prop :=
  ∀ n, P738957256073962501.a n = A166666 (n + 1)

end A166666

/-!
# A166667: Totally multiplicative sequence with a(p) = 9p+1 for prime p.

The programs for A166667, there is no canonical definition to state claims against.
-/

/-! ## A166667.P9988284459790797362

`∏{e}[A259939(n), A017257(#)+2]`
-/

namespace A166667.P9988284459790797362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017257 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166667.P9988284459790797362

/-! ## A166667.P11204748384223191138

`∏{e}[A037019(n+1), A017257(#)+2]`
-/

namespace A166667.P11204748384223191138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017257 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166667.P11204748384223191138

/-! ## A166667.P18384793750678604821

`∏{e}[A348199(n+1), A017257(#)+2]`
-/

namespace A166667.P18384793750678604821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017257 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166667.P18384793750678604821

/-! ## A166667.P7651114714990677425

`A344336(A074736(n+1))`
-/

namespace A166667.P7651114714990677425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344336 (A074736 (n + 1)).toNat

end

end A166667.P7651114714990677425

/-! ## A166667.P13288280682369243695

`∏{e}[A343771(n+1), A052224(#)]`
-/

namespace A166667.P13288280682369243695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052224 (Nat.factorization (f1 n).natAbs p)

end

end A166667.P13288280682369243695

/-!
# A166668: Totally multiplicative sequence with a(p) = 10p+1 for prime p.

The programs for A166668, there is no canonical definition to state claims against.
-/

/-! ## A166668.P9804969075127349771

`∏{d}[n+1, A176558(A014963(#))]`
-/

namespace A166668.P9804969075127349771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A176558 (A014963 d).toNat

end

end A166668.P9804969075127349771

/-! ## A166668.P16241575247599283864

`∏{e}[A181821(n+1), A176558(A000040(#))]`
-/

namespace A166668.P16241575247599283864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A176558 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166668.P16241575247599283864

/-! ## A166668.P2826773573915492075

`∏{e}[A037019(n+1), A017377(#)+2]`
-/

namespace A166668.P2826773573915492075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017377 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166668.P2826773573915492075

/-! ## A166668.P8475792988887186470

`∏{e}[A348199(n+1), A017377(#)+2]`
-/

namespace A166668.P8475792988887186470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017377 (Nat.factorization (f1 n).natAbs p) + 2)

end

end A166668.P8475792988887186470

/-!
# A166669: Totally multiplicative sequence with a(p) = 3p-2 for prime p.

The programs for A166669, the canonical program `A166669.P4669415747542630696` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166669 has offset 1).

The definition of A166669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166669.P4669415747542630696

`∏{d}[n+1, 3*A014963(#)-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A166669

/-- `∏{d}[n+1, 3*A014963(#)-2]` -/
def P4669415747542630696.Spec : Prop :=
  ∀ n, P4669415747542630696.a n = A166669 (n + 1)

theorem P4669415747542630696.correct : P4669415747542630696.Spec := by
  intro n
  simp only [A166669, Nat.add_sub_cancel]

end A166669

/-! ## A166669.P10653434195771016900

`∏{d}[n+1, A062380(A014963(#))]`
-/

namespace A166669.P10653434195771016900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A062380 (A014963 d).toNat

end

end A166669.P10653434195771016900

namespace A166669

/-- `∏{d}[n+1, A062380(A014963(#))]` -/
def P10653434195771016900.Spec : Prop :=
  ∀ n, P10653434195771016900.a n = A166669 (n + 1)

end A166669

/-! ## A166669.P713848094395027714

`∏{d}[n+1, A016777(n%A014963(#))]`
-/

namespace A166669.P713848094395027714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A016777 (Int.tmod (n : ℤ) (A014963 d)).toNat

end

end A166669.P713848094395027714

namespace A166669

/-- `∏{d}[n+1, A016777(n%A014963(#))]` -/
def P713848094395027714.Spec : Prop :=
  ∀ n, P713848094395027714.a n = A166669 (n + 1)

end A166669

/-! ## A166669.P13178046477188563671

`∏{e}[A259939(n), A016777(#)]`
-/

namespace A166669.P13178046477188563671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016777 (Nat.factorization (f1 n).natAbs p)

end

end A166669.P13178046477188563671

namespace A166669

/-- `∏{e}[A259939(n), A016777(#)]` -/
def P13178046477188563671.Spec : Prop :=
  ∀ n, P13178046477188563671.a n = A166669 (n + 1)

end A166669

/-! ## A166669.P11586493349683133128

`∏{e}[A037019(n+1), A016777(#)]`
-/

namespace A166669.P11586493349683133128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016777 (Nat.factorization (f1 n).natAbs p)

end

end A166669.P11586493349683133128

namespace A166669

/-- `∏{e}[A037019(n+1), A016777(#)]` -/
def P11586493349683133128.Spec : Prop :=
  ∀ n, P11586493349683133128.a n = A166669 (n + 1)

end A166669

/-!
# A166670: Totally multiplicative sequence with a(p) = 5p-2 for prime p.

The programs for A166670, there is no canonical definition to state claims against.
-/

/-! ## A166670.P13619218155919861253

`∏{e}[A259939(n), A016885(#)]`
-/

namespace A166670.P13619218155919861253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016885 (Nat.factorization (f1 n).natAbs p)

end

end A166670.P13619218155919861253

/-! ## A166670.P14170585332112580142

`∏{e}[A037019(n+1), A016885(#)]`
-/

namespace A166670.P14170585332112580142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016885 (Nat.factorization (f1 n).natAbs p)

end

end A166670.P14170585332112580142

/-! ## A166670.P3470646925974866616

`∏{e}[A037019(n+1), A004767(#)+#]`
-/

namespace A166670.P3470646925974866616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004767 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166670.P3470646925974866616

/-! ## A166670.P12475067634828833561

`∏{e}[A018782(n+1), A016885(#)]`
-/

namespace A166670.P12475067634828833561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016885 (Nat.factorization (f1 n).natAbs p)

end

end A166670.P12475067634828833561

/-!
# A166671: Totally multiplicative sequence with a(p) = 7p-2 for prime p.

The programs for A166671, there is no canonical definition to state claims against.
-/

/-! ## A166671.P1509602964970674712

`∏{e}[A259939(n), A017041(#)]`
-/

namespace A166671.P1509602964970674712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017041 (Nat.factorization (f1 n).natAbs p)

end

end A166671.P1509602964970674712

/-! ## A166671.P17939209340278295586

`∏{e}[A037019(n+1), A017041(#)]`
-/

namespace A166671.P17939209340278295586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017041 (Nat.factorization (f1 n).natAbs p)

end

end A166671.P17939209340278295586

/-! ## A166671.P8622348810118894750

`∏{e}[A259939(n), A017053(#)-1]`
-/

namespace A166671.P8622348810118894750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017053 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A166671.P8622348810118894750

/-! ## A166671.P5305616101647618712

`∏{e}[A259939(n), A016969(#)+#]`
-/

namespace A166671.P5305616101647618712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A016969 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166671.P5305616101647618712

/-! ## A166671.P12883182236275081725

`∏{e}[A037019(n+1), A017053(#)-1]`
-/

namespace A166671.P12883182236275081725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017053 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A166671.P12883182236275081725

/-!
# A166672: Totally multiplicative sequence with a(p) = 9p-2 for prime p.

The programs for A166672, there is no canonical definition to state claims against.
-/

/-! ## A166672.P12292434840909461259

`∏{e}[A259939(n), A017245(#)]`
-/

namespace A166672.P12292434840909461259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017245 (Nat.factorization (f1 n).natAbs p)

end

end A166672.P12292434840909461259

/-! ## A166672.P291416731724590030

`∏{e}[A037019(n+1), A017245(#)]`
-/

namespace A166672.P291416731724590030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A017245 (Nat.factorization (f1 n).natAbs p)

end

end A166672.P291416731724590030

/-! ## A166672.P13019366283649574387

`∏{e}[A259939(n), A017257(#)-1]`
-/

namespace A166672.P13019366283649574387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017257 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A166672.P13019366283649574387

/-! ## A166672.P7972296748828910922

`∏{e}[A259939(n), A004771(#)+#]`
-/

namespace A166672.P7972296748828910922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004771 (Nat.factorization (f1 n).natAbs p) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166672.P7972296748828910922

/-! ## A166672.P9854943681815413918

`∏{e}[A037019(n+1), A017257(#)-1]`
-/

namespace A166672.P9854943681815413918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A017257 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A166672.P9854943681815413918

/-!
# A166673: Totally multiplicative sequence with a(p) = 3p+2 for prime p.

The programs for A166673, the canonical program `A166673.P4650330979156642246` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166673 has offset 1).

The definition of A166673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166673.P4650330979156642246

`∏{p}[n+1, A016789(#)^val(n+1, #)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A166673

/-- `∏{p}[n+1, A016789(#)^val(n+1, #)]` -/
def P4650330979156642246.Spec : Prop :=
  ∀ n, P4650330979156642246.a n = A166673 (n + 1)

theorem P4650330979156642246.correct : P4650330979156642246.Spec := by
  intro n
  simp only [A166673, Nat.add_sub_cancel]

end A166673

/-! ## A166673.P1385153159986589815

`∏{e}[A181821(n+1), A016789(A000040(#))]`
-/

namespace A166673.P1385153159986589815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016789 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166673.P1385153159986589815

namespace A166673

/-- `∏{e}[A181821(n+1), A016789(A000040(#))]` -/
def P1385153159986589815.Spec : Prop :=
  ∀ n, P1385153159986589815.a n = A166673 (n + 1)

end A166673

/-! ## A166673.P10590776567299956108

`∏{e}[A037019(n+1), A016789(#+1)]`
-/

namespace A166673.P10590776567299956108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016789 (Nat.factorization (f1 n).natAbs p + 1)

end

end A166673.P10590776567299956108

namespace A166673

/-- `∏{e}[A037019(n+1), A016789(#+1)]` -/
def P10590776567299956108.Spec : Prop :=
  ∀ n, P10590776567299956108.a n = A166673 (n + 1)

end A166673

/-! ## A166673.P1302380310086008926

`∏{e}[A037019(n+1), A129283(A103517(#))]`
-/

namespace A166673.P1302380310086008926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129283 (A103517 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A166673.P1302380310086008926

namespace A166673

/-- `∏{e}[A037019(n+1), A129283(A103517(#))]` -/
def P1302380310086008926.Spec : Prop :=
  ∀ n, P1302380310086008926.a n = A166673 (n + 1)

end A166673

/-! ## A166673.P11489519897944151676

`∏{e}[A348199(n+1), A016789(#+1)]`
-/

namespace A166673.P11489519897944151676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A016789 (Nat.factorization (f1 n).natAbs p + 1)

end

end A166673.P11489519897944151676

namespace A166673

/-- `∏{e}[A348199(n+1), A016789(#+1)]` -/
def P11489519897944151676.Spec : Prop :=
  ∀ n, P11489519897944151676.a n = A166673 (n + 1)

end A166673

/-!
# A166675: Totally multiplicative sequence with a(p) = 7p+2 for prime p.

The programs for A166675, there is no canonical definition to state claims against.
-/

/-! ## A166675.P13811320636265875130

`∏{e}[A259939(n), A004768(#)-#]`
-/

namespace A166675.P13811320636265875130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004768 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166675.P13811320636265875130

/-! ## A166675.P15997712013641622938

`∏{e}[A037019(n+1), A004768(#)-#]`
-/

namespace A166675.P15997712013641622938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004768 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166675.P15997712013641622938

/-! ## A166675.P14947771464814582803

`∏{e}[A348199(n+1), A004768(#)-#]`
-/

namespace A166675.P14947771464814582803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A004768 (Nat.factorization (f1 n).natAbs p) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A166675.P14947771464814582803

/-!
# A166676: Totally multiplicative sequence with a(p) = 9p+2 for prime p.

The programs for A166676, there is no canonical definition to state claims against.
-/

/-! ## A166676.P7796615705061078532

`A166661(A166664(n+1))/2^∑{e}[n+1, #]`
-/

namespace A166676.P7796615705061078532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166661 (A166664 (n + 1)).toNat : ℚ) / (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)

end

end A166676.P7796615705061078532

/-! ## A166676.P10300512370459088553

`A166661(A166664(n+1))/A061142(n+1)`
-/

namespace A166676.P10300512370459088553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166661 (A166664 (n + 1)).toNat : ℚ) / (A061142 (n + 1) : ℚ)

end

end A166676.P10300512370459088553

/-! ## A166676.P13623061734010323054

`A166661(A166664(n+1))/A004275(A105560(n+1))`
-/

namespace A166676.P13623061734010323054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166661 (A166664 (n + 1)).toNat : ℚ) / (A004275 (A105560 (n + 1)).toNat : ℚ)

end

end A166676.P13623061734010323054

/-!
# A166677: a(n)= n*(a(n-1)+4), a(0)=1.

The programs for A166677, the canonical program `A166677.P8914698583279496443` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166677 has offset 0).

The definition of A166677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+4)` (program `A166677.P8914698583279496443`, by `A166677.P8914698583279496443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166677.P8914698583279496443

`n*(a(n-1)+4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166677

/-- `n*(a(n-1)+4)` -/
def P8914698583279496443.Spec : Prop :=
  ∀ n, (P8914698583279496443.a n : ℤ) = A166677 n

theorem P8914698583279496443.correct : P8914698583279496443.Spec := by
  intro n
  simp only [A166677]

end A166677

/-! ## A166677.P12155196387804745916

`n*(4-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A166677.P12155196387804745916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (4 - (-a (n - 1)))

end

end A166677.P12155196387804745916

namespace A166677

/-- `n*(4-floor(-a(n-1)))` -/
def P12155196387804745916.Spec : Prop :=
  ∀ n, P12155196387804745916.a n = A166677 n

end A166677

/-! ## A166677.P14379100084256455378

`n*(4-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A166677.P14379100084256455378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (4 - (-a (n - 1)))

end

end A166677.P14379100084256455378

namespace A166677

/-- `n*(4-ceil(-a(n-1)))` -/
def P14379100084256455378.Spec : Prop :=
  ∀ n, P14379100084256455378.a n = A166677 n

end A166677

/-! ## A166677.P7410259156345812301

`n*(4-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A166677.P7410259156345812301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (4 - (-a (n - 1)))

end

end A166677.P7410259156345812301

namespace A166677

/-- `n*(4-round(-a(n-1)))` -/
def P7410259156345812301.Spec : Prop :=
  ∀ n, P7410259156345812301.a n = A166677 n

end A166677

/-! ## A166677.P2607937134437924112

`(a(n-1)+4)/tan(acot(n))` with `a(0)=1`
-/

namespace A166677.P2607937134437924112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 4) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A166677.P2607937134437924112

namespace A166677

/-- `(a(n-1)+4)/tan(acot(n))` -/
def P2607937134437924112.Spec : Prop :=
  ∀ n, P2607937134437924112.a n = (A166677 n : ℝ)

end A166677

/-! ## A166677.P2286536492747152572

`(a(n-1)+4)/n^(-1)` with `a(0)=1`
-/

namespace A166677.P2286536492747152572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 4) / (n : ℚ) ^ (-1 : ℤ)

end

end A166677.P2286536492747152572

namespace A166677

/-- `(a(n-1)+4)/n^(-1)` -/
def P2286536492747152572.Spec : Prop :=
  ∀ n, P2286536492747152572.a n = (A166677 n : ℚ)

end A166677

/-! ## A166677.P13352957604184953982

`5*n-n*(1-a(n-1))` with `a(0)=1`
-/

namespace A166677.P13352957604184953982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A166677.P13352957604184953982

namespace A166677

/-- `5*n-n*(1-a(n-1))` -/
def P13352957604184953982.Spec : Prop :=
  ∀ n, P13352957604184953982.a n = A166677 n

end A166677

/-! ## A166677.P1944769094633846844

`A019461(2*n+1)+A019463(2*n+1)-2`
-/

namespace A166677.P1944769094633846844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (2 * n + 1) + (A019463 (2 * n + 1) - 2)

end

end A166677.P1944769094633846844

namespace A166677

/-- `A019461(2*n+1)+A019463(2*n+1)-2` -/
def P1944769094633846844.Spec : Prop :=
  ∀ n, P1944769094633846844.a n = A166677 n

end A166677

/-! ## A166677.P16671962963519625540

`A033540(n+1)+A165813(n)-A000142(n)`
-/

namespace A166677.P16671962963519625540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033540 (n + 1) + (A165813 n - A000142 n)

end

end A166677.P16671962963519625540

namespace A166677

/-- `A033540(n+1)+A165813(n)-A000142(n)` -/
def P16671962963519625540.Spec : Prop :=
  ∀ n, P16671962963519625540.a n = A166677 n

end A166677

/-!
# A166678: a(n) = pi((sqrt(P(n))+1)^2) - pi(P(n)), where pi(n) = number of primes <= n and P(n) = n-th primorial.

The programs for A166678, there is no canonical definition to state claims against.
-/

/-! ## A166678.P7955430082946532149

`A066835(A120452(n+1))+A056323(n)`
-/

namespace A166678.P7955430082946532149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066835 (A120452 (n + 1)).toNat + A056323 n

end

end A166678.P7955430082946532149

/-! ## A166678.P7487656426098613274

`2*A116358(a(n-1))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A166678.P7487656426098613274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  2 * A116358 (a (n - 1)).toNat

end

end A166678.P7487656426098613274

/-! ## A166678.P14992298135584027358

`A342517(lt[n, n*n%6]+ceil(2^(n-1)))`
-/

namespace A166678.P14992298135584027358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A166678.P14992298135584027358

/-!
# A166680: a(n) = n*(a(n-1)-4), a(0) = 1.

The programs for A166680, the canonical program `A166680.P741833810061314338` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166680 has offset 0).

The definition of A166680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)-4)` (program `A166680.P741833810061314338`, by `A166680.P741833810061314338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166680.P741833810061314338

`n*(a(n-1)-4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A166680

/-- `n*(a(n-1)-4)` -/
def P741833810061314338.Spec : Prop :=
  ∀ n, P741833810061314338.a n = A166680 n

theorem P741833810061314338.correct : P741833810061314338.Spec := by
  intro n
  simp only [A166680]

end A166680

/-! ## A166680.P10941324361444871459

`(a(n-1)-4)/tan(acot(n))` with `a(0)=1`
-/

namespace A166680.P10941324361444871459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 4) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A166680.P10941324361444871459

namespace A166680

/-- `(a(n-1)-4)/tan(acot(n))` -/
def P10941324361444871459.Spec : Prop :=
  ∀ n, P10941324361444871459.a n = (A166680 n : ℝ)

end A166680

/-! ## A166680.P7269525507626134504

`(a(n-1)-4)/n^(-1)` with `a(0)=1`
-/

namespace A166680.P7269525507626134504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - 4) / (n : ℚ) ^ (-1 : ℤ)

end

end A166680.P7269525507626134504

namespace A166680

/-- `(a(n-1)-4)/n^(-1)` -/
def P7269525507626134504.Spec : Prop :=
  ∀ n, P7269525507626134504.a n = (A166680 n : ℚ)

end A166680

/-! ## A166680.P925918977768862752

`(4-a(n-1))/(1-(n+1)/n)` with `a(0)=1`
-/

namespace A166680.P925918977768862752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - a (n - 1)) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A166680.P925918977768862752

namespace A166680

/-- `(4-a(n-1))/(1-(n+1)/n)` -/
def P925918977768862752.Spec : Prop :=
  ∀ n, P925918977768862752.a n = (A166680 n : ℚ)

end A166680

/-! ## A166680.P14389128650834550125

`A165814(n)-n!*∑[n/n!]`
-/

namespace A166680.P14389128650834550125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165814 n : ℚ) - (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A166680.P14389128650834550125

namespace A166680

/-- `A165814(n)-n!*∑[n/n!]` -/
def P14389128650834550125.Spec : Prop :=
  ∀ n, P14389128650834550125.a n = (A166680 n : ℚ)

end A166680

/-! ## A166680.P3845119603784596924

`A165814(n)-A007526(n)`
-/

namespace A166680.P3845119603784596924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165814 n - A007526 n

end

end A166680.P3845119603784596924

namespace A166680

/-- `A165814(n)-A007526(n)` -/
def P3845119603784596924.Spec : Prop :=
  ∀ n, P3845119603784596924.a n = A166680 n

end A166680

/-! ## A166680.P4515624130658252038

`2*A165793(n)-A000142(n)`
-/

namespace A166680.P4515624130658252038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165793 n - A000142 n

end

end A166680.P4515624130658252038

namespace A166680

/-- `2*A165793(n)-A000142(n)` -/
def P4515624130658252038.Spec : Prop :=
  ∀ n, P4515624130658252038.a n = A166680 n

end A166680

/-! ## A166680.P5868371962684162725

`2*A000142(n)-A166677(n)`
-/

namespace A166680.P5868371962684162725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000142 n - A166677 n

end

end A166680.P5868371962684162725

namespace A166680

/-- `2*A000142(n)-A166677(n)` -/
def P5868371962684162725.Spec : Prop :=
  ∀ n, P5868371962684162725.a n = A166680 n

end A166680

/-! ## A166680.P16831098659960201763

`A165793(n)-2*A007526(n)`
-/

namespace A166680.P16831098659960201763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165793 n - 2 * A007526 n

end

end A166680.P16831098659960201763

namespace A166680

/-- `A165793(n)-2*A007526(n)` -/
def P16831098659960201763.Spec : Prop :=
  ∀ n, P16831098659960201763.a n = A166680 n

end A166680

/-! ## A166680.P9600681746339503644

`2*A165814(n)-A165793(n)`
-/

namespace A166680.P9600681746339503644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165814 n - A165793 n

end

end A166680.P9600681746339503644

namespace A166680

/-- `2*A165814(n)-A165793(n)` -/
def P9600681746339503644.Spec : Prop :=
  ∀ n, P9600681746339503644.a n = A166680 n

end A166680

/-!
# A166681: Primes p which have at least one prime anagram larger than p.

The programs for A166681, there is no canonical definition to state claims against.
-/

/-! ## A166681.P9003369441855462227

`p?[p?[A014681(n)]%A101989(n+1)]`
-/

namespace A166681.P9003369441855462227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P9003369441855462227

/-! ## A166681.P637613201524729212

`p?[A000040(n+1)%A101989(n+1)]`
-/

namespace A166681.P637613201524729212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P637613201524729212

/-! ## A166681.P7602036345016930781

`p?[A008578(n+2)%A101989(n+1)]`
-/

namespace A166681.P7602036345016930781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P7602036345016930781

/-! ## A166681.P18382883749930086589

`record[A008578(n+7)%A101989(n+6)]`
-/

namespace A166681.P18382883749930086589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 7)) (A101989 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166681.P18382883749930086589

/-! ## A166681.P3353275618281307913

`p?[sqrt(A001248(n+1))%A101989(n+1)]`
-/

namespace A166681.P3353275618281307913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P3353275618281307913

/-! ## A166681.P6688014626849689882

`p?[A006530(A001748(n+1))%A101989(n+1)]`
-/

namespace A166681.P6688014626849689882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A001748 (n + 1)).toNat) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P6688014626849689882

/-! ## A166681.P17678748636162121001

`p?[A006530(A001749(n+1))%A101989(n+1)]`
-/

namespace A166681.P17678748636162121001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A001749 (n + 1)).toNat) (A101989 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P17678748636162121001

/-! ## A166681.P6864763370139285312

`p?[A143051(A008864(n+1)%A101989(n+1))]`
-/

namespace A166681.P6864763370139285312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (Int.tmod (A008864 (n + 1)) (A101989 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166681.P6864763370139285312

/-!
# A166683: 

The programs for A166683, there is no canonical definition to state claims against.
-/

/-! ## A166683.P1856918806493442926

`record[34*a(floor(n/3))]` with `a(0)=1, a(1)=35`
-/

namespace A166683.P1856918806493442926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n f1 =>
  34 * f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166683.P1856918806493442926

/-! ## A166683.P4015328377939297318

`34*a(n%A203511(n)-1)` with `a(0)=1, a(1)=35`
-/

namespace A166683.P4015328377939297318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (Int.tmod (n : ℤ) (A203511 n) - 1).toNat

end

end A166683.P4015328377939297318

/-! ## A166683.P8589823694163103000

`34*a(A203524(n)%8+n-1)` with `a(0)=1, a(1)=35`
-/

namespace A166683.P8589823694163103000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (Int.tmod (A203524 n) 8 + (n : ℤ) - 1).toNat

end

end A166683.P8589823694163103000

/-!
# A166684: Numbers n such that d(n)

The programs for A166684, the canonical program `A166684.P17288971262866478246` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166684 has offset 1).

The definition of A166684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166684.P17288971262866478246

`∪[A000430(n+1), A008578(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166684

/-- `∪[A000430(n+1), A008578(n+1)]` -/
def P17288971262866478246.Spec : Prop :=
  ∀ n, (P17288971262866478246.a n : ℤ) = A166684 (n + 1)

theorem P17288971262866478246.correct : P17288971262866478246.Spec := by
  intro n
  simp only [A166684, Nat.add_sub_cancel]

end A166684

/-! ## A166684.P10163349309914147533

`∪[A001248(n+1), A008578(n+1)]`
-/

namespace A166684.P10163349309914147533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P10163349309914147533

namespace A166684

/-- `∪[A001248(n+1), A008578(n+1)]` -/
def P10163349309914147533.Spec : Prop :=
  ∀ n, (P10163349309914147533.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P869654159204549203

`∪[A000040(n+1), A280076(n+1)]`
-/

namespace A166684.P869654159204549203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P869654159204549203

namespace A166684

/-- `∪[A000040(n+1), A280076(n+1)]` -/
def P869654159204549203.Spec : Prop :=
  ∀ n, (P869654159204549203.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P10805732834052639605

`∪[A001248(n+1), A158611(n+2)]`
-/

namespace A166684.P10805732834052639605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P10805732834052639605

namespace A166684

/-- `∪[A001248(n+1), A158611(n+2)]` -/
def P10805732834052639605.Spec : Prop :=
  ∀ n, (P10805732834052639605.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P7301606312079020392

`∪[A008578(n+1), Δ[A007504(n)]²]`
-/

namespace A166684.P7301606312079020392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P7301606312079020392

namespace A166684

/-- `∪[A008578(n+1), Δ[A007504(n)]²]` -/
def P7301606312079020392.Spec : Prop :=
  ∀ n, (P7301606312079020392.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P5975655772560104663

`∪[A000040(n+1), A008578(n+1)²]`
-/

namespace A166684.P5975655772560104663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P5975655772560104663

namespace A166684

/-- `∪[A000040(n+1), A008578(n+1)²]` -/
def P5975655772560104663.Spec : Prop :=
  ∀ n, (P5975655772560104663.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P13053868214982349161

`∪[A008578(n+1), A008578(n+2)²]`
-/

namespace A166684.P13053868214982349161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P13053868214982349161

namespace A166684

/-- `∪[A008578(n+1), A008578(n+2)²]` -/
def P13053868214982349161.Spec : Prop :=
  ∀ n, (P13053868214982349161.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P10794954787015181415

`∪[(1-A028815(n))², A000040(n+1)]`
-/

namespace A166684.P10794954787015181415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A028815 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P10794954787015181415

namespace A166684

/-- `∪[(1-A028815(n))², A000040(n+1)]` -/
def P10794954787015181415.Spec : Prop :=
  ∀ n, (P10794954787015181415.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P3386240900598424615

`filter[A307360(n+1), A324290(#)]`
-/

namespace A166684.P3386240900598424615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A166684.P3386240900598424615

namespace A166684

/-- `filter[A307360(n+1), A324290(#)]` -/
def P3386240900598424615.Spec : Prop :=
  ∀ n, P3386240900598424615.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P1286260429567885572

`record[gcd(n+1, A006530(n+1)²)]`
-/

namespace A166684.P1286260429567885572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A006530 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166684.P1286260429567885572

namespace A166684

/-- `record[gcd(n+1, A006530(n+1)²)]` -/
def P1286260429567885572.Spec : Prop :=
  ∀ n, (P1286260429567885572.a n : ℤ) = A166684 (n + 1)

end A166684

/-! ## A166684.P17717384382715049283

`filter[A000961(n+1), A212793(#)]`
-/

namespace A166684.P17717384382715049283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A166684.P17717384382715049283

namespace A166684

/-- `filter[A000961(n+1), A212793(#)]` -/
def P17717384382715049283.Spec : Prop :=
  ∀ n, P17717384382715049283.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P17825392561813195317

`filter[A074583(n+1), A212793(#)]`
-/

namespace A166684.P17825392561813195317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A166684.P17825392561813195317

namespace A166684

/-- `filter[A074583(n+1), A212793(#)]` -/
def P17825392561813195317.Spec : Prop :=
  ∀ n, P17825392561813195317.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P14524480260394471532

`filter[A084400(n+1), A212793(#)]`
-/

namespace A166684.P14524480260394471532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A166684.P14524480260394471532

namespace A166684

/-- `filter[A084400(n+1), A212793(#)]` -/
def P14524480260394471532.Spec : Prop :=
  ∀ n, P14524480260394471532.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P16103243893826905707

`filter[A115975(n+1), A212793(#)]`
-/

namespace A166684.P16103243893826905707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A166684.P16103243893826905707

namespace A166684

/-- `filter[A115975(n+1), A212793(#)]` -/
def P16103243893826905707.Spec : Prop :=
  ∀ n, P16103243893826905707.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P17336360973018885

`filter[A000961(n+1), A359471(#)]`
-/

namespace A166684.P17336360973018885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A166684.P17336360973018885

namespace A166684

/-- `filter[A000961(n+1), A359471(#)]` -/
def P17336360973018885.Spec : Prop :=
  ∀ n, P17336360973018885.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P14638214085582782204

`filter[A164336(n+1), A212793(#)]`
-/

namespace A166684.P14638214085582782204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A166684.P14638214085582782204

namespace A166684

/-- `filter[A164336(n+1), A212793(#)]` -/
def P14638214085582782204.Spec : Prop :=
  ∀ n, P14638214085582782204.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P4201252407929474457

`filter[A074583(n+1), A359471(#)]`
-/

namespace A166684.P4201252407929474457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A166684.P4201252407929474457

namespace A166684

/-- `filter[A074583(n+1), A359471(#)]` -/
def P4201252407929474457.Spec : Prop :=
  ∀ n, P4201252407929474457.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P16578592402814905568

`filter[A084400(n+1), A359471(#)]`
-/

namespace A166684.P16578592402814905568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A166684.P16578592402814905568

namespace A166684

/-- `filter[A084400(n+1), A359471(#)]` -/
def P16578592402814905568.Spec : Prop :=
  ∀ n, P16578592402814905568.a n = A166684 (n + 1)

end A166684

/-! ## A166684.P9801729751312038694

`filter[A115975(n+1), A355937(#)]`
-/

namespace A166684.P9801729751312038694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A166684.P9801729751312038694

namespace A166684

/-- `filter[A115975(n+1), A355937(#)]` -/
def P9801729751312038694.Spec : Prop :=
  ∀ n, P9801729751312038694.a n = A166684 (n + 1)

end A166684

/-!
# A166685: Odd numbers that are the sum of two consecutive nonprimes.

The programs for A166685, the canonical program `A166685.P7030529592364102208` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166685 has offset 1).

The definition of A166685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166685.P1945094542766962717

`∩[2*n+1, A166037(n+1)]`
-/

namespace A166685.P1945094542766962717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P1945094542766962717

namespace A166685

/-- `∩[2*n+1, A166037(n+1)]` -/
def P1945094542766962717.Spec : Prop :=
  ∀ n, (P1945094542766962717.a n : ℤ) = A166685 (n + 1)

end A166685

/-! ## A166685.P7030529592364102208

`record[A093178(A166037(n+1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166685

/-- `record[A093178(A166037(n+1))]` -/
def P7030529592364102208.Spec : Prop :=
  ∀ n, P7030529592364102208.a n = A166685 (n + 1)

theorem P7030529592364102208.correct : P7030529592364102208.Spec := by
  intro n
  simp only [A166685, Nat.add_sub_cancel]

end A166685

/-! ## A166685.P6054912697428270423

`filter[A166037(n+1), A000035(#)]`
-/

namespace A166685.P6054912697428270423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A166685.P6054912697428270423

namespace A166685

/-- `filter[A166037(n+1), A000035(#)]` -/
def P6054912697428270423.Spec : Prop :=
  ∀ n, P6054912697428270423.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P15980001224841837365

`filter[A166037(n+1), A035263(#)]`
-/

namespace A166685.P15980001224841837365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A166685.P15980001224841837365

namespace A166685

/-- `filter[A166037(n+1), A035263(#)]` -/
def P15980001224841837365.Spec : Prop :=
  ∀ n, P15980001224841837365.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P15298649501327660928

`filter[A166037(n+1), A093719(#)]`
-/

namespace A166685.P15298649501327660928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A166685.P15298649501327660928

namespace A166685

/-- `filter[A166037(n+1), A093719(#)]` -/
def P15298649501327660928.Spec : Prop :=
  ∀ n, P15298649501327660928.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P17311102731041426616

`filter[A166037(n+1), A104106(#)]`
-/

namespace A166685.P17311102731041426616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A166685.P17311102731041426616

namespace A166685

/-- `filter[A166037(n+1), A104106(#)]` -/
def P17311102731041426616.Spec : Prop :=
  ∀ n, P17311102731041426616.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P5972060436719776521

`filter[A166037(n+1), A105234(#)]`
-/

namespace A166685.P5972060436719776521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A166685.P5972060436719776521

namespace A166685

/-- `filter[A166037(n+1), A105234(#)]` -/
def P5972060436719776521.Spec : Prop :=
  ∀ n, P5972060436719776521.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P16256193890878381367

`filter[A166037(n+1), A141260(#)]`
-/

namespace A166685.P16256193890878381367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A166685.P16256193890878381367

namespace A166685

/-- `filter[A166037(n+1), A141260(#)]` -/
def P16256193890878381367.Spec : Prop :=
  ∀ n, P16256193890878381367.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P7106787266689237584

`filter[A166037(n+1), A152822(#)]`
-/

namespace A166685.P7106787266689237584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A166685.P7106787266689237584

namespace A166685

/-- `filter[A166037(n+1), A152822(#)]` -/
def P7106787266689237584.Spec : Prop :=
  ∀ n, P7106787266689237584.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P11186965853519149441

`filter[A166037(n+1), A259044(#)]`
-/

namespace A166685.P11186965853519149441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A166685.P11186965853519149441

namespace A166685

/-- `filter[A166037(n+1), A259044(#)]` -/
def P11186965853519149441.Spec : Prop :=
  ∀ n, P11186965853519149441.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P11289570803175487785

`filter[A166037(n+1), A259599(#)]`
-/

namespace A166685.P11289570803175487785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A166685.P11289570803175487785

namespace A166685

/-- `filter[A166037(n+1), A259599(#)]` -/
def P11289570803175487785.Spec : Prop :=
  ∀ n, P11289570803175487785.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P10289571264730703488

`filter[A166037(n+1), A260390(#)]`
-/

namespace A166685.P10289571264730703488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A166685.P10289571264730703488

namespace A166685

/-- `filter[A166037(n+1), A260390(#)]` -/
def P10289571264730703488.Spec : Prop :=
  ∀ n, P10289571264730703488.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P12748403625605311886

`filter[A166037(n+1), A267256(#)]`
-/

namespace A166685.P12748403625605311886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A166685.P12748403625605311886

namespace A166685

/-- `filter[A166037(n+1), A267256(#)]` -/
def P12748403625605311886.Spec : Prop :=
  ∀ n, P12748403625605311886.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P1800331743463749024

`filter[A166037(n+1), A373157(#)]`
-/

namespace A166685.P1800331743463749024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A166685.P1800331743463749024

namespace A166685

/-- `filter[A166037(n+1), A373157(#)]` -/
def P1800331743463749024.Spec : Prop :=
  ∀ n, P1800331743463749024.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P11542187237063015144

`filter[A166037(n+1), A379952(#)]`
-/

namespace A166685.P11542187237063015144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A166685.P11542187237063015144

namespace A166685

/-- `filter[A166037(n+1), A379952(#)]` -/
def P11542187237063015144.Spec : Prop :=
  ∀ n, P11542187237063015144.a n = A166685 (n + 1)

end A166685

/-! ## A166685.P15531203821640524591

`∩[A166037(n+1), A004273(n)]`
-/

namespace A166685.P15531203821640524591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P15531203821640524591

namespace A166685

/-- `∩[A166037(n+1), A004273(n)]` -/
def P15531203821640524591.Spec : Prop :=
  ∀ n, (P15531203821640524591.a n : ℤ) = A166685 (n + 1)

end A166685

/-! ## A166685.P3039005970587305406

`∩[A166037(n+1), A004274(n)]`
-/

namespace A166685.P3039005970587305406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P3039005970587305406

namespace A166685

/-- `∩[A166037(n+1), A004274(n)]` -/
def P3039005970587305406.Spec : Prop :=
  ∀ n, (P3039005970587305406.a n : ℤ) = A166685 (n + 1)

end A166685

/-! ## A166685.P11173629814262859824

`∩[A166037(n+1), A004276(n)]`
-/

namespace A166685.P11173629814262859824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P11173629814262859824

namespace A166685

/-- `∩[A166037(n+1), A004276(n)]` -/
def P11173629814262859824.Spec : Prop :=
  ∀ n, (P11173629814262859824.a n : ℤ) = A166685 (n + 1)

end A166685

/-! ## A166685.P254274273826436674

`∩[A166037(n+1), A004281(n)]`
-/

namespace A166685.P254274273826436674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P254274273826436674

namespace A166685

/-- `∩[A166037(n+1), A004281(n)]` -/
def P254274273826436674.Spec : Prop :=
  ∀ n, (P254274273826436674.a n : ℤ) = A166685 (n + 1)

end A166685

/-! ## A166685.P17421631747830948758

`∩[A166037(n+1), A060747(n)]`
-/

namespace A166685.P17421631747830948758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166685.P17421631747830948758

namespace A166685

/-- `∩[A166037(n+1), A060747(n)]` -/
def P17421631747830948758.Spec : Prop :=
  ∀ n, (P17421631747830948758.a n : ℤ) = A166685 (n + 1)

end A166685

/-!
# A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

The programs for A166687, the canonical program `A166687.P18219030986989704232` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166687 has offset 1).

The definition of A166687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A166687

/-- `A001481(n+1)+1` -/
def P18219030986989704232.Spec : Prop :=
  ∀ n, P18219030986989704232.a n = A166687 (n + 1)

theorem P18219030986989704232.correct : P18219030986989704232.Spec := by
  intro n
  simp only [A166687, Nat.add_sub_cancel]

end A166687

/-! ## A166687.P13238219498233490368

`eq[1, A229062(n)]+1`
-/

namespace A166687.P13238219498233490368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166687.P13238219498233490368

namespace A166687

/-- `eq[1, A229062(n)]+1` -/
def P13238219498233490368.Spec : Prop :=
  ∀ n, (P13238219498233490368.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P2308436048408459923

`A256435(n)+a(n-1)` with `a(0)=1`
-/

namespace A166687.P2308436048408459923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256435 n + a (n - 1)

end

end A166687.P2308436048408459923

namespace A166687

/-- `A256435(n)+a(n-1)` -/
def P2308436048408459923.Spec : Prop :=
  ∀ n, P2308436048408459923.a n = A166687 (n + 1)

end A166687

/-! ## A166687.P11956793296581808053

`floor(A128106(n+1)/2)+1`
-/

namespace A166687.P11956793296581808053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋ + 1

end

end A166687.P11956793296581808053

namespace A166687

/-- `floor(A128106(n+1)/2)+1` -/
def P11956793296581808053.Spec : Prop :=
  ∀ n, P11956793296581808053.a n = A166687 (n + 1)

end A166687

/-! ## A166687.P14113983428110699733

`∪[A000404(n+1), n²]+1`
-/

namespace A166687.P14113983428110699733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A166687.P14113983428110699733

namespace A166687

/-- `∪[A000404(n+1), n²]+1` -/
def P14113983428110699733.Spec : Prop :=
  ∀ n, (P14113983428110699733.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P4347581714380368529

`∪[A000415(n+1), n²]+1`
-/

namespace A166687.P4347581714380368529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A166687.P4347581714380368529

namespace A166687

/-- `∪[A000415(n+1), n²]+1` -/
def P4347581714380368529.Spec : Prop :=
  ∀ n, (P4347581714380368529.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P18111036716114432972

`A125110(n+1)^(1/3)+1`
-/

namespace A166687.P18111036716114432972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) + 1

end

end A166687.P18111036716114432972

namespace A166687

/-- `A125110(n+1)^(1/3)+1` -/
def P18111036716114432972.Spec : Prop :=
  ∀ n, P18111036716114432972.a n = (A166687 (n + 1) : ℝ)

end A166687

/-! ## A166687.P14411295854571635667

`∪[A166265(n+1), A002522(n)]`
-/

namespace A166687.P14411295854571635667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166687.P14411295854571635667

namespace A166687

/-- `∪[A166265(n+1), A002522(n)]` -/
def P14411295854571635667.Spec : Prop :=
  ∀ n, (P14411295854571635667.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P1489157165468921554

`∪[A001983(n+1), A000982(n)]+1`
-/

namespace A166687.P1489157165468921554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A166687.P1489157165468921554

namespace A166687

/-- `∪[A001983(n+1), A000982(n)]+1` -/
def P1489157165468921554.Spec : Prop :=
  ∀ n, (P1489157165468921554.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P12797679225224447835

`∪[A001983(n+1), A001105(n)]+1`
-/

namespace A166687.P12797679225224447835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A166687.P12797679225224447835

namespace A166687

/-- `∪[A001983(n+1), A001105(n)]+1` -/
def P12797679225224447835.Spec : Prop :=
  ∀ n, (P12797679225224447835.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P2955747801319474831

`∑[A256435(n+1)]+1-A256435(n+1)`
-/

namespace A166687.P2955747801319474831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A256435 (n + 1))

end

end A166687.P2955747801319474831

namespace A166687

/-- `∑[A256435(n+1)]+1-A256435(n+1)` -/
def P2955747801319474831.Spec : Prop :=
  ∀ n, P2955747801319474831.a n = A166687 (n + 1)

end A166687

/-! ## A166687.P17606610114993026274

`eq[0, A070176(n)]+1`
-/

namespace A166687.P17606610114993026274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166687.P17606610114993026274

namespace A166687

/-- `eq[0, A070176(n)]+1` -/
def P17606610114993026274.Spec : Prop :=
  ∀ n, (P17606610114993026274.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P14422702008237265891

`lt[0, A000161(n)]+1`
-/

namespace A166687.P14422702008237265891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166687.P14422702008237265891

namespace A166687

/-- `lt[0, A000161(n)]+1` -/
def P14422702008237265891.Spec : Prop :=
  ∀ n, (P14422702008237265891.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P1705490832132897468

`lt[0, A000925(n)]+1`
-/

namespace A166687.P1705490832132897468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166687.P1705490832132897468

namespace A166687

/-- `lt[0, A000925(n)]+1` -/
def P1705490832132897468.Spec : Prop :=
  ∀ n, (P1705490832132897468.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P11201298062432956298

`lt[0, A004018(n)]+1`
-/

namespace A166687.P11201298062432956298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166687.P11201298062432956298

namespace A166687

/-- `lt[0, A004018(n)]+1` -/
def P11201298062432956298.Spec : Prop :=
  ∀ n, (P11201298062432956298.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P12897178570080795599

`a(n-1)+A070176(a(n-1))+1` with `a(0)=1`
-/

namespace A166687.P12897178570080795599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A070176 (a (n - 1)).toNat + 1)

end

end A166687.P12897178570080795599

namespace A166687

/-- `a(n-1)+A070176(a(n-1))+1` -/
def P12897178570080795599.Spec : Prop :=
  ∀ n, P12897178570080795599.a n = A166687 (n + 1)

end A166687

/-! ## A166687.P15905025467773782497

`eq[1, A245474(A245474(n))]+1`
-/

namespace A166687.P15905025467773782497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 (A245474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166687.P15905025467773782497

namespace A166687

/-- `eq[1, A245474(A245474(n))]+1` -/
def P15905025467773782497.Spec : Prop :=
  ∀ n, (P15905025467773782497.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P13084137304609378601

`lt[A025427(n), A000164(n)]+1`
-/

namespace A166687.P13084137304609378601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A166687.P13084137304609378601

namespace A166687

/-- `lt[A025427(n), A000164(n)]+1` -/
def P13084137304609378601.Spec : Prop :=
  ∀ n, (P13084137304609378601.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P876503741655882542

`lt[0, abs(A133573(n))]+1`
-/

namespace A166687.P876503741655882542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133573 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166687.P876503741655882542

namespace A166687

/-- `lt[0, abs(A133573(n))]+1` -/
def P876503741655882542.Spec : Prop :=
  ∀ n, (P876503741655882542.a n : ℤ) = A166687 (n + 1)

end A166687

/-! ## A166687.P6929329676195570332

`eq[1, char[A069011(n)+1]]`
-/

namespace A166687.P6929329676195570332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166687.P6929329676195570332

namespace A166687

/-- `eq[1, char[A069011(n)+1]]` -/
def P6929329676195570332.Spec : Prop :=
  ∀ n, (P6929329676195570332.a n : ℤ) = A166687 (n + 1)

end A166687

/-!
# A166692: Triangle T(n,k) read by rows: T(n,k) = 2^(k-1), k>0, T(n,0) = (n+1) mod 2.

The programs for A166692, the canonical program `A166692.P3793629774854990532` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166692 has offset 0).

The definition of A166692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166692.P9409492670881056428

`A197870(n)+A166918(n)`
-/

namespace A166692.P9409492670881056428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n + A166918 n

end

end A166692.P9409492670881056428

namespace A166692

/-- `A197870(n)+A166918(n)` -/
def P9409492670881056428.Spec : Prop :=
  ∀ n, P9409492670881056428.a n = A166692 n

end A166692

/-! ## A166692.P16216829071417177240

`A059268(n)-A166918(n)`
-/

namespace A166692.P16216829071417177240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A166918 n

end

end A166692.P16216829071417177240

namespace A166692

/-- `A059268(n)-A166918(n)` -/
def P16216829071417177240.Spec : Prop :=
  ∀ n, P16216829071417177240.a n = A166692 n

end A166692

/-! ## A166692.P16536934334236406211

`gcd(A053117(n), A140531(n))`
-/

namespace A166692.P16536934334236406211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053117 n) (A140531 n)

end

end A166692.P16536934334236406211

namespace A166692

/-- `gcd(A053117(n), A140531(n))` -/
def P16536934334236406211.Spec : Prop :=
  ∀ n, (P16536934334236406211.a n : ℤ) = A166692 n

end A166692

/-! ## A166692.P14265827763338326733

`xor(A010054(n), A166918(n))`
-/

namespace A166692.P14265827763338326733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A166918 n)

end

end A166692.P14265827763338326733

namespace A166692

/-- `xor(A010054(n), A166918(n))` -/
def P14265827763338326733.Spec : Prop :=
  ∀ n, P14265827763338326733.a n = A166692 n

end A166692

/-! ## A166692.P14608764961754147134

`(A197870(n)+A059268(n))/2`
-/

namespace A166692.P14608764961754147134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197870 n + A059268 n : ℚ) / 2

end

end A166692.P14608764961754147134

namespace A166692

/-- `(A197870(n)+A059268(n))/2` -/
def P14608764961754147134.Spec : Prop :=
  ∀ n, P14608764961754147134.a n = (A166692 n : ℚ)

end A166692

/-! ## A166692.P3107720722653649114

`2^A002262(n)-A166918(n)`
-/

namespace A166692.P3107720722653649114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) - (A166918 n : ℚ)

end

end A166692.P3107720722653649114

namespace A166692

/-- `2^A002262(n)-A166918(n)` -/
def P3107720722653649114.Spec : Prop :=
  ∀ n, P3107720722653649114.a n = (A166692 n : ℚ)

end A166692

/-! ## A166692.P14572007565321375335

`and(A143802(n+1), A232089(n))`
-/

namespace A166692.P14572007565321375335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143802 (n + 1)) (A232089 n)

end

end A166692.P14572007565321375335

namespace A166692

/-- `and(A143802(n+1), A232089(n))` -/
def P14572007565321375335.Spec : Prop :=
  ∀ n, P14572007565321375335.a n = A166692 n

end A166692

/-! ## A166692.P3793629774854990532

`and(A232089(n), A360033(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A166692

/-- `and(A232089(n), A360033(n+1))` -/
def P3793629774854990532.Spec : Prop :=
  ∀ n, P3793629774854990532.a n = A166692 n

theorem P3793629774854990532.correct : P3793629774854990532.Spec := by
  intro n
  simp only [A166692]

end A166692

/-! ## A166692.P5219269442600716345

`ceil(A059268(n)/(A178737(n)+2))`
-/

namespace A166692.P5219269442600716345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / (A178737 n + 2 : ℚ)⌉

end

end A166692.P5219269442600716345

namespace A166692

/-- `ceil(A059268(n)/(A178737(n)+2))` -/
def P5219269442600716345.Spec : Prop :=
  ∀ n, P5219269442600716345.a n = A166692 n

end A166692

/-! ## A166692.P6897029236611576814

`2^A002260(n+1)/2-A166918(n)`
-/

namespace A166692.P6897029236611576814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) / 2 - (A166918 n : ℚ)

end

end A166692.P6897029236611576814

namespace A166692

/-- `2^A002260(n+1)/2-A166918(n)` -/
def P6897029236611576814.Spec : Prop :=
  ∀ n, P6897029236611576814.a n = (A166692 n : ℚ)

end A166692

/-! ## A166692.P6070889603065748221

`2^(A002260(2*n+1-n)-1)-A166918(n)`
-/

namespace A166692.P6070889603065748221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (2 * n + 1 - n) - 1 : ℤ) - (A166918 n : ℚ)

end

end A166692.P6070889603065748221

namespace A166692

/-- `2^(A002260(2*n+1-n)-1)-A166918(n)` -/
def P6070889603065748221.Spec : Prop :=
  ∀ n, P6070889603065748221.a n = (A166692 n : ℚ)

end A166692

/-! ## A166692.P8663102124030035247

`A166444(A197870(n)+A002260(n+1))`
-/

namespace A166692.P8663102124030035247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A197870 n + A002260 (n + 1)).toNat

end

end A166692.P8663102124030035247

namespace A166692

/-- `A166444(A197870(n)+A002260(n+1))` -/
def P8663102124030035247.Spec : Prop :=
  ∀ n, P8663102124030035247.a n = A166692 n

end A166692

/-! ## A166692.P16457882458676642510

`A011782(A002260(n+1))-A166918(n)`
-/

namespace A166692.P16457882458676642510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat - A166918 n

end

end A166692.P16457882458676642510

namespace A166692

/-- `A011782(A002260(n+1))-A166918(n)` -/
def P16457882458676642510.Spec : Prop :=
  ∀ n, P16457882458676642510.a n = A166692 n

end A166692

/-! ## A166692.P18044025032340591196

`gcd(A034008(A002260(n+1)), A053120(n))`
-/

namespace A166692.P18044025032340591196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034008 (A002260 (n + 1)).toNat) (A053120 n)

end

end A166692.P18044025032340591196

namespace A166692

/-- `gcd(A034008(A002260(n+1)), A053120(n))` -/
def P18044025032340591196.Spec : Prop :=
  ∀ n, (P18044025032340591196.a n : ℤ) = A166692 n

end A166692

/-! ## A166692.P1850974569719378949

`A000225(A002260(n+1)-1)+1-A166918(n)`
-/

namespace A166692.P1850974569719378949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1) - 1).toNat + 1 - A166918 n

end

end A166692.P1850974569719378949

namespace A166692

/-- `A000225(A002260(n+1)-1)+1-A166918(n)` -/
def P1850974569719378949.Spec : Prop :=
  ∀ n, P1850974569719378949.a n = A166692 n

end A166692

/-! ## A166692.P10353395284470050172

`A210036(n+1)/A210034(n+1)-A166918(n)`
-/

namespace A166692.P10353395284470050172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210036 (n + 1) : ℚ) / (A210034 (n + 1) : ℚ) - (A166918 n : ℚ)

end

end A166692.P10353395284470050172

namespace A166692

/-- `A210036(n+1)/A210034(n+1)-A166918(n)` -/
def P10353395284470050172.Spec : Prop :=
  ∀ n, P10353395284470050172.a n = (A166692 n : ℚ)

end A166692

/-! ## A166692.P489948774278033162

`A135530(A002262(n)+A002260(n+1))-A166918(n)`
-/

namespace A166692.P489948774278033162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A002262 n + A002260 (n + 1)).toNat - A166918 n

end

end A166692.P489948774278033162

namespace A166692

/-- `A135530(A002262(n)+A002260(n+1))-A166918(n)` -/
def P489948774278033162.Spec : Prop :=
  ∀ n, P489948774278033162.a n = A166692 n

end A166692

/-! ## A166692.P1244772416892906487

`A166918(A066182(n+1))`
-/

namespace A166692.P1244772416892906487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 (A066182 (n + 1)).toNat

end

end A166692.P1244772416892906487

namespace A166692

/-- `A166918(A066182(n+1))` -/
def P1244772416892906487.Spec : Prop :=
  ∀ n, P1244772416892906487.a n = A166692 n

end A166692

/-! ## A166692.P14329339080114197540

`A166918(comp[∑[n-1]])`
-/

namespace A166692.P14329339080114197540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166692.P14329339080114197540

namespace A166692

/-- `A166918(comp[∑[n-1]])` -/
def P14329339080114197540.Spec : Prop :=
  ∀ n, P14329339080114197540.a n = A166692 n

end A166692

/-! ## A166692.P18141397523363839628

`A166918(A007401(n+1)+1)-A166918(n)`
-/

namespace A166692.P18141397523363839628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 (A007401 (n + 1) + 1).toNat - A166918 n

end

end A166692.P18141397523363839628

namespace A166692

/-- `A166918(A007401(n+1)+1)-A166918(n)` -/
def P18141397523363839628.Spec : Prop :=
  ∀ n, P18141397523363839628.a n = A166692 n

end A166692

/-!
# A166694: A transform of the large Schroeder numbers, A006318.

The programs for A166694, there is no canonical definition to state claims against.
-/

/-! ## A166694.P6049705774838744227

`A254636(A291728(n))+A015451(n)`
-/

namespace A166694.P6049705774838744227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A291728 n).toNat + A015451 n

end

end A166694.P6049705774838744227

/-! ## A166694.P15380991362798310015

`A325401(n)+A077028(A288751(n))`
-/

namespace A166694.P15380991362798310015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n + A077028 (A288751 (n + 10)).toNat

end

end A166694.P15380991362798310015

/-!
# A166696: A transform of A103210.

The programs for A166696, there is no canonical definition to state claims against.
-/

/-! ## A166696.P1150200411790765834

`A360320(A056764(n+1))`
-/

namespace A166696.P1150200411790765834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360320 (A056764 (n + 1)).toNat

end

end A166696.P1150200411790765834

/-!
# A166697: A "Morgan Voyce" transform of A103210.

The programs for A166697, there is no canonical definition to state claims against.
-/

/-! ## A166697.P12256374039356879014

`∑[A166696(n)]`
-/

namespace A166697.P12256374039356879014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166697.P12256374039356879014

/-! ## A166697.P15100128685276819992

`a(n-1)+A166696(n)+A000007(n)` with `a(0)=1`
-/

namespace A166697.P15100128685276819992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A166696 n + A000007 n)

end

end A166697.P15100128685276819992

/-!
# A166698: Totally multiplicative sequence with a(p) = a(p-1) - 1 for prime p.

The programs for A166698, the canonical program `A166698.P12793159027236630514` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166698 has offset 1).

The definition of A166698 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166698.P12793159027236630514

`A353557(n+1)-A353558(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A166698

/-- `A353557(n+1)-A353558(n+1)` -/
def P12793159027236630514.Spec : Prop :=
  ∀ n, P12793159027236630514.a n = A166698 (n + 1)

theorem P12793159027236630514.correct : P12793159027236630514.Spec := by
  intro n
  simp only [A166698, Nat.add_sub_cancel]

end A166698

/-! ## A166698.P12288170751324502099

`A000035(n+1)*A008836(n+1)`
-/

namespace A166698.P12288170751324502099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A008836 (n + 1)

end

end A166698.P12288170751324502099

namespace A166698

/-- `A000035(n+1)*A008836(n+1)` -/
def P12288170751324502099.Spec : Prop :=
  ∀ n, P12288170751324502099.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P4819030852207309419

`(and(1, n)-1)^∑{e}[n+1, #]`
-/

namespace A166698.P4819030852207309419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166698.P4819030852207309419

namespace A166698

/-- `(and(1, n)-1)^∑{e}[n+1, #]` -/
def P4819030852207309419.Spec : Prop :=
  ∀ n, P4819030852207309419.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P11513013346323882474

`∏{e}[n+1, (and(1, n)-1)^#]`
-/

namespace A166698.P11513013346323882474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.land 1 n : ℤ) - 1) ^ Nat.factorization (f1 n) p

end

end A166698.P11513013346323882474

namespace A166698

/-- `∏{e}[n+1, (and(1, n)-1)^#]` -/
def P11513013346323882474.Spec : Prop :=
  ∀ n, P11513013346323882474.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P16273595483876214961

`(-and(1, n+1))^∑{e}[n+1, #]`
-/

namespace A166698.P16273595483876214961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (n + 1) : ℤ)) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A166698.P16273595483876214961

namespace A166698

/-- `(-and(1, n+1))^∑{e}[n+1, #]` -/
def P16273595483876214961.Spec : Prop :=
  ∀ n, P16273595483876214961.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P2667586259559855619

`∏{e}[n+1, (-and(1, n+1))^#]`
-/

namespace A166698.P2667586259559855619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.land 1 (n + 1) : ℤ)) ^ Nat.factorization (f1 n) p

end

end A166698.P2667586259559855619

namespace A166698

/-- `∏{e}[n+1, (-and(1, n+1))^#]` -/
def P2667586259559855619.Spec : Prop :=
  ∀ n, P2667586259559855619.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P18417885172694201070

`(-1)^∑{e}[n+1, #]*∑[(-1)^n]`
-/

namespace A166698.P18417885172694201070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A166698.P18417885172694201070

namespace A166698

/-- `(-1)^∑{e}[n+1, #]*∑[(-1)^n]` -/
def P18417885172694201070.Spec : Prop :=
  ∀ n, P18417885172694201070.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P11293572590241273085

`(char[2*n+1]-1)^∑{e}[n+1, #]`
-/

namespace A166698.P11293572590241273085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A166698.P11293572590241273085

namespace A166698

/-- `(char[2*n+1]-1)^∑{e}[n+1, #]` -/
def P11293572590241273085.Spec : Prop :=
  ∀ n, P11293572590241273085.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P8234909463003507633

`A358839(6*(n+1))`
-/

namespace A166698.P8234909463003507633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (6 * (n + 1))

end

end A166698.P8234909463003507633

namespace A166698

/-- `A358839(6*(n+1))` -/
def P8234909463003507633.Spec : Prop :=
  ∀ n, P8234909463003507633.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P9395199068994404880

`A061019(n+1)%2`
-/

namespace A166698.P9395199068994404880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061019 (n + 1)) 2

end

end A166698.P9395199068994404880

namespace A166698

/-- `A061019(n+1)%2` -/
def P9395199068994404880.Spec : Prop :=
  ∀ n, P9395199068994404880.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P7418069685686081992

`((1-n)%2)^A001222(n+1)`
-/

namespace A166698.P7418069685686081992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (1 - (n : ℤ)) 2 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A166698.P7418069685686081992

namespace A166698

/-- `((1-n)%2)^A001222(n+1)` -/
def P7418069685686081992.Spec : Prop :=
  ∀ n, P7418069685686081992.a n = (A166698 (n + 1) : ℚ)

end A166698

/-! ## A166698.P7390564059171595738

`A359819(A141310(n))`
-/

namespace A166698.P7390564059171595738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359819 (A141310 n).toNat

end

end A166698.P7390564059171595738

namespace A166698

/-- `A359819(A141310(n))` -/
def P7390564059171595738.Spec : Prop :=
  ∀ n, P7390564059171595738.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P15450309988970565392

`A087003(A038387(n+1))`
-/

namespace A166698.P15450309988970565392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A038387 (n + 1)).toNat

end

end A166698.P15450309988970565392

namespace A166698

/-- `A087003(A038387(n+1))` -/
def P15450309988970565392.Spec : Prop :=
  ∀ n, P15450309988970565392.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P11973779675072173327

`A091337(A079065(n+1))`
-/

namespace A166698.P11973779675072173327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A079065 (n + 1)).toNat

end

end A166698.P11973779675072173327

namespace A166698

/-- `A091337(A079065(n+1))` -/
def P11973779675072173327.Spec : Prop :=
  ∀ n, P11973779675072173327.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P4863779967483935792

`A101455(A092089(n+1))`
-/

namespace A166698.P4863779967483935792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A092089 (n + 1)).toNat

end

end A166698.P4863779967483935792

namespace A166698

/-- `A101455(A092089(n+1))` -/
def P4863779967483935792.Spec : Prop :=
  ∀ n, P4863779967483935792.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P166179321803952629

`A359792(n+1)+A101455(n)`
-/

namespace A166698.P166179321803952629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359792 (n + 1) + A101455 n

end

end A166698.P166179321803952629

namespace A166698

/-- `A359792(n+1)+A101455(n)` -/
def P166179321803952629.Spec : Prop :=
  ∀ n, P166179321803952629.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P13563620475841934910

`A008836(n+1)*A059841(n)`
-/

namespace A166698.P13563620475841934910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A059841 n

end

end A166698.P13563620475841934910

namespace A166698

/-- `A008836(n+1)*A059841(n)` -/
def P13563620475841934910.Spec : Prop :=
  ∀ n, P13563620475841934910.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P9851084919794499009

`A056594(n)*A209661(n+1)`
-/

namespace A166698.P9851084919794499009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A209661 (n + 1)

end

end A166698.P9851084919794499009

namespace A166698

/-- `A056594(n)*A209661(n+1)` -/
def P9851084919794499009.Spec : Prop :=
  ∀ n, P9851084919794499009.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P15699850567650589429

`A059841(n)*A359154(n+1)`
-/

namespace A166698.P15699850567650589429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359154 (n + 1)

end

end A166698.P15699850567650589429

namespace A166698

/-- `A059841(n)*A359154(n+1)` -/
def P15699850567650589429.Spec : Prop :=
  ∀ n, P15699850567650589429.a n = A166698 (n + 1)

end A166698

/-! ## A166698.P7202576843576118316

`A059841(n)*A359792(n+1)`
-/

namespace A166698.P7202576843576118316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A359792 (n + 1)

end

end A166698.P7202576843576118316

namespace A166698

/-- `A059841(n)*A359792(n+1)` -/
def P7202576843576118316.Spec : Prop :=
  ∀ n, P7202576843576118316.a n = A166698 (n + 1)

end A166698

/-!
# A166699: Totally multiplicative sequence with a(p) = a(p-1) + 2 for prime p.

The programs for A166699, there is no canonical definition to state claims against.
-/

/-! ## A166699.P5055840016654276250

`A028897(A166707(n+1))`
-/

namespace A166699.P5055840016654276250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A166707 (n + 1)).toNat

end

end A166699.P5055840016654276250

/-! ## A166699.P16075934888156071064

`A284117(A131244(n))+A064988(n+1)`
-/

namespace A166699.P16075934888156071064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (A131244 n).toNat + A064988 (n + 1)

end

end A166699.P16075934888156071064

/-! ## A166699.P14181633987896131043

`A319985(n+1)+A284117(A131244(n))`
-/

namespace A166699.P14181633987896131043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319985 (n + 1) + A284117 (A131244 n).toNat

end

end A166699.P14181633987896131043

/-! ## A166699.P6605904084836362038

`A306605(A000931(2*n))+A064988(n+1)`
-/

namespace A166699.P6605904084836362038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306605 (A000931 (2 * n)).toNat + A064988 (n + 1)

end

end A166699.P6605904084836362038

/-! ## A166699.P8655752721796628028

`A088806(A332746(2*(n+1)))+A064988(n+1)`
-/

namespace A166699.P8655752721796628028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (A332746 (2 * (n + 1))).toNat + A064988 (n + 1)

end

end A166699.P8655752721796628028

