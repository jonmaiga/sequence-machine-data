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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A126700: Twin simili-primes of order 2.

The programs for A126700, there is no canonical definition to state claims against.
-/

/-! ## A126700.P11375952665780493776

`∪[A126699(n+1)+3, A126699(n+1)]`
-/

namespace A126700.P11375952665780493776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126699 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126700.P11375952665780493776

/-! ## A126700.P1356982452448437718

`A173664(A105290(n+1))`
-/

namespace A126700.P1356982452448437718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173664 (A105290 (n + 1)).toNat

end

end A126700.P1356982452448437718

/-!
# A126701: a(n) = number of primes <= !n, where !n is subfactorial n.

The programs for A126701, there is no canonical definition to state claims against.
-/

/-! ## A126701.P11842808992946886985

`A000720(A093464(n+1))`
-/

namespace A126701.P11842808992946886985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093464 (n + 1)).toNat

end

end A126701.P11842808992946886985

/-! ## A126701.P2836847149380885465

`A000720(A000166(comp[26*n+1]))`
-/

namespace A126701.P2836847149380885465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000166 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A126701.P2836847149380885465

/-! ## A126701.P3553973539484912807

`A000720(xor(n²%3, A000240(n+1)))`
-/

namespace A126701.P3553973539484912807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor ((n ^ 2 % 3 : ℕ) : ℤ) (A000240 (n + 1))).toNat

end

end A126701.P3553973539484912807

/-! ## A126701.P13857173979644516741

`A000720(A260092(n+1)+C(2, n+2))`
-/

namespace A126701.P13857173979644516741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260092 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A126701.P13857173979644516741

/-!
# A126702: a(n) = prime(!n), where !n is subfactorial n.

The programs for A126702, the canonical program `A126702.P10490105464819873889` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126702 has offset 2).

The definition of A126702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126702.P10490105464819873889

`A000040(A000166(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126702

/-- `A000040(A000166(n+2))` -/
def P10490105464819873889.Spec : Prop :=
  ∀ n, P10490105464819873889.a n = A126702 (n + 2)

theorem P10490105464819873889.correct : P10490105464819873889.Spec := by
  intro n
  simp only [A126702, Nat.add_sub_cancel]

end A126702

/-! ## A126702.P4452523506047709363

`A051831(record[A000166(n)])+1`
-/

namespace A126702.P4452523506047709363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051831 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A126702.P4452523506047709363

namespace A126702

/-- `A051831(record[A000166(n)])+1` -/
def P4452523506047709363.Spec : Prop :=
  ∀ n, P4452523506047709363.a n = A126702 (n + 2)

end A126702

/-! ## A126702.P10619783724562985883

`A001749(record[A000166(n)])/4`
-/

namespace A126702.P10619783724562985883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 4

end

end A126702.P10619783724562985883

namespace A126702

/-- `A001749(record[A000166(n)])/4` -/
def P10619783724562985883.Spec : Prop :=
  ∀ n, P10619783724562985883.a n = (A126702 (n + 2) : ℚ)

end A126702

/-!
# A126704: Prime numbers that are the sum of three distinct positive sixth powers.

The programs for A126704, there is no canonical definition to state claims against.
-/

/-! ## A126704.P7918414454255675655

`∩[A194769(n+1), A283017(n+1)]`
-/

namespace A126704.P7918414454255675655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126704.P7918414454255675655

/-! ## A126704.P12249978841183689531

`record[p?[A194769(A338833(n+1))]]`
-/

namespace A126704.P12249978841183689531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194769 (A338833 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126704.P12249978841183689531

/-!
# A126705: A097806 * A054523 as infinite lower triangular matrices.

The programs for A126705, there is no canonical definition to state claims against.
-/

/-! ## A126705.P11661999852518834069

`A130296(n+1)-A010815(A007373(n+4))`
-/

namespace A126705.P11661999852518834069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) - A010815 (A007373 (n + 4)).toNat

end

end A126705.P11661999852518834069

/-! ## A126705.P9668337849369784610

`A130028(A185870(n+1))`
-/

namespace A126705.P9668337849369784610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (A185870 (n + 1)).toNat

end

end A126705.P9668337849369784610

/-! ## A126705.P17810719047706807122

`A130028(A185869(n+1)+1)`
-/

namespace A126705.P17810719047706807122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (A185869 (n + 1) + 1).toNat

end

end A126705.P17810719047706807122

/-! ## A126705.P17884647840134662531

`A084558(A128185(n+1)^n)`
-/

namespace A126705.P17884647840134662531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A128185 (n + 1) ^ n).toNat

end

end A126705.P17884647840134662531

/-! ## A126705.P9750004497991295002

`A130028(A114327(n)+A004767(n))`
-/

namespace A126705.P9750004497991295002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130028 (A114327 n + A004767 n).toNat

end

end A126705.P9750004497991295002

/-!
# A126706: Positive integers which are neither squarefree integers nor prime powers.

The programs for A126706, the canonical program `A126706.P11121898802900401573` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126706 has offset 1).

The definition of A126706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126706.P12395801973378208421

`sqrt(A380857(n+1))`
-/

namespace A126706.P12395801973378208421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A380857 (n + 1) : ℝ)

end

end A126706.P12395801973378208421

namespace A126706

/-- `sqrt(A380857(n+1))` -/
def P12395801973378208421.Spec : Prop :=
  ∀ n, P12395801973378208421.a n = (A126706 (n + 1) : ℝ)

end A126706

/-! ## A126706.P11121898802900401573

`eq[1, A355447(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A126706

/-- `eq[1, A355447(n+1)]+1` -/
def P11121898802900401573.Spec : Prop :=
  ∀ n, (P11121898802900401573.a n : ℤ) = A126706 (n + 1)

theorem P11121898802900401573.correct : P11121898802900401573.Spec := by
  intro n
  simp only [A126706, Nat.add_sub_cancel]

end A126706

/-! ## A126706.P5309192239023881186

`lt[1, A304779(n+1)]+1`
-/

namespace A126706.P5309192239023881186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A126706.P5309192239023881186

namespace A126706

/-- `lt[1, A304779(n+1)]+1` -/
def P5309192239023881186.Spec : Prop :=
  ∀ n, (P5309192239023881186.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P11746579645802375466

`lt[1, A340654(n+1)]+1`
-/

namespace A126706.P11746579645802375466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A126706.P11746579645802375466

namespace A126706

/-- `lt[1, A340654(n+1)]+1` -/
def P11746579645802375466.Spec : Prop :=
  ∀ n, (P11746579645802375466.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P8577594045369834426

`A065642(A360719(n+1))`
-/

namespace A126706.P8577594045369834426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A360719 (n + 1)).toNat

end

end A126706.P8577594045369834426

namespace A126706

/-- `A065642(A360719(n+1))` -/
def P8577594045369834426.Spec : Prop :=
  ∀ n, P8577594045369834426.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P12305231953897298110

`filter[A344180(n), A355447(#)]`
-/

namespace A126706.P12305231953897298110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P12305231953897298110

namespace A126706

/-- `filter[A344180(n), A355447(#)]` -/
def P12305231953897298110.Spec : Prop :=
  ∀ n, P12305231953897298110.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P3334904550128719835

`filter[A013929(n+3), A355447(#)]`
-/

namespace A126706.P3334904550128719835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P3334904550128719835

namespace A126706

/-- `filter[A013929(n+3), A355447(#)]` -/
def P3334904550128719835.Spec : Prop :=
  ∀ n, P3334904550128719835.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P7325224667395964775

`A365783(n+1)*A365784(n+1)`
-/

namespace A126706.P7325224667395964775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365783 (n + 1) * A365784 (n + 1)

end

end A126706.P7325224667395964775

namespace A126706

/-- `A365783(n+1)*A365784(n+1)` -/
def P7325224667395964775.Spec : Prop :=
  ∀ n, P7325224667395964775.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P5284481001911451638

`A376720(n+1)/A365783(n+1)`
-/

namespace A126706.P5284481001911451638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376720 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)

end

end A126706.P5284481001911451638

namespace A126706

/-- `A376720(n+1)/A365783(n+1)` -/
def P5284481001911451638.Spec : Prop :=
  ∀ n, P5284481001911451638.a n = (A126706 (n + 1) : ℚ)

end A126706

/-! ## A126706.P16396657619277818635

`∪[A036785(n+1), A059404(n+1)]`
-/

namespace A126706.P16396657619277818635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126706.P16396657619277818635

namespace A126706

/-- `∪[A036785(n+1), A059404(n+1)]` -/
def P16396657619277818635.Spec : Prop :=
  ∀ n, (P16396657619277818635.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P11553433943429659835

`∪[A059404(n+1), A067341(n+1)]`
-/

namespace A126706.P11553433943429659835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126706.P11553433943429659835

namespace A126706

/-- `∪[A059404(n+1), A067341(n+1)]` -/
def P11553433943429659835.Spec : Prop :=
  ∀ n, (P11553433943429659835.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P5006578047068456127

`eq[A008683(n+1), A069513(n+1)]+1`
-/

namespace A126706.P5006578047068456127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A126706.P5006578047068456127

namespace A126706

/-- `eq[A008683(n+1), A069513(n+1)]+1` -/
def P5006578047068456127.Spec : Prop :=
  ∀ n, (P5006578047068456127.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P11368328834124605909

`lt[A327527(n+1), A000005(n+1)]+1`
-/

namespace A126706.P11368328834124605909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A126706.P11368328834124605909

namespace A126706

/-- `lt[A327527(n+1), A000005(n+1)]+1` -/
def P11368328834124605909.Spec : Prop :=
  ∀ n, (P11368328834124605909.a n : ℤ) = A126706 (n + 1)

end A126706

/-! ## A126706.P500852359953382737

`A007947(A360719(n+1))*A365784(n+1)`
-/

namespace A126706.P500852359953382737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A360719 (n + 1)).toNat * A365784 (n + 1)

end

end A126706.P500852359953382737

namespace A126706

/-- `A007947(A360719(n+1))*A365784(n+1)` -/
def P500852359953382737.Spec : Prop :=
  ∀ n, P500852359953382737.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P9726038248220668719

`A120944(A365785(n+1))*A365784(n+1)`
-/

namespace A126706.P9726038248220668719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A365785 (n + 1)).toNat * A365784 (n + 1)

end

end A126706.P9726038248220668719

namespace A126706

/-- `A120944(A365785(n+1))*A365784(n+1)` -/
def P9726038248220668719.Spec : Prop :=
  ∀ n, P9726038248220668719.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P9562057614772709376

`filter[A080756(n+1), A355447(#)]`
-/

namespace A126706.P9562057614772709376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P9562057614772709376

namespace A126706

/-- `filter[A080756(n+1), A355447(#)]` -/
def P9562057614772709376.Spec : Prop :=
  ∀ n, P9562057614772709376.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P14589804181473556545

`filter[A162966(n+1), A355447(#)]`
-/

namespace A126706.P14589804181473556545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P14589804181473556545

namespace A126706

/-- `filter[A162966(n+1), A355447(#)]` -/
def P14589804181473556545.Spec : Prop :=
  ∀ n, P14589804181473556545.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P6267940014242019032

`filter[A354360(n+1), A355447(#)]`
-/

namespace A126706.P6267940014242019032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P6267940014242019032

namespace A126706

/-- `filter[A354360(n+1), A355447(#)]` -/
def P6267940014242019032.Spec : Prop :=
  ∀ n, P6267940014242019032.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P14407312093351212117

`filter[A389462(n+1), A355447(#)]`
-/

namespace A126706.P14407312093351212117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P14407312093351212117

namespace A126706

/-- `filter[A389462(n+1), A355447(#)]` -/
def P14407312093351212117.Spec : Prop :=
  ∀ n, P14407312093351212117.a n = A126706 (n + 1)

end A126706

/-! ## A126706.P6642542515860544171

`filter[A363597(n+1), A355447(#)]`
-/

namespace A126706.P6642542515860544171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A126706.P6642542515860544171

namespace A126706

/-- `filter[A363597(n+1), A355447(#)]` -/
def P6642542515860544171.Spec : Prop :=
  ∀ n, P6642542515860544171.a n = A126706 (n + 1)

end A126706

/-!
# A126711: Primes of the form p*q*r*s+2 with p,q,r,s odd primes.

The programs for A126711, the canonical program `A126711.P3238805726536964657` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126711 has offset 1).

The definition of A126711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126711.P3238805726536964657

`p?[A046317(n+1)+2]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A126711

/-- `p?[A046317(n+1)+2]` -/
def P3238805726536964657.Spec : Prop :=
  ∀ n, P3238805726536964657.a n = A126711 (n + 1)

theorem P3238805726536964657.correct : P3238805726536964657.Spec := by
  intro n
  simp only [A126711, Nat.add_sub_cancel]

end A126711

/-! ## A126711.P17038628493338675858

`record[A006530(A046317(n+1)+2)]`
-/

namespace A126711.P17038628493338675858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126711.P17038628493338675858

namespace A126711

/-- `record[A006530(A046317(n+1)+2)]` -/
def P17038628493338675858.Spec : Prop :=
  ∀ n, P17038628493338675858.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P17127289812770252515

`record[A020639(A046317(n+1)+2)]`
-/

namespace A126711.P17127289812770252515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126711.P17127289812770252515

namespace A126711

/-- `record[A020639(A046317(n+1)+2)]` -/
def P17127289812770252515.Spec : Prop :=
  ∀ n, P17127289812770252515.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P11988580747248478013

`p?[A014613(n+1)+2]`
-/

namespace A126711.P11988580747248478013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P11988580747248478013

namespace A126711

/-- `p?[A014613(n+1)+2]` -/
def P11988580747248478013.Spec : Prop :=
  ∀ n, P11988580747248478013.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P5930140357907142830

`p?[A323350(n+1)+2]`
-/

namespace A126711.P5930140357907142830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323350 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P5930140357907142830

namespace A126711

/-- `p?[A323350(n+1)+2]` -/
def P5930140357907142830.Spec : Prop :=
  ∀ n, P5930140357907142830.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P12729557589181447472

`record[A014963(A046317(n+1)+2)]`
-/

namespace A126711.P12729557589181447472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126711.P12729557589181447472

namespace A126711

/-- `record[A014963(A046317(n+1)+2)]` -/
def P12729557589181447472.Spec : Prop :=
  ∀ n, P12729557589181447472.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P10336220755058854415

`record[A117818(A046317(n+1)+2)]`
-/

namespace A126711.P10336220755058854415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A046317 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126711.P10336220755058854415

namespace A126711

/-- `record[A117818(A046317(n+1)+2)]` -/
def P10336220755058854415.Spec : Prop :=
  ∀ n, P10336220755058854415.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P5531297363127283244

`p?[A000720(A124282(n+1))+2]`
-/

namespace A126711.P5531297363127283244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124282 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P5531297363127283244

namespace A126711

/-- `p?[A000720(A124282(n+1))+2]` -/
def P5531297363127283244.Spec : Prop :=
  ∀ n, P5531297363127283244.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P10942420526632933556

`p?[A004525(A014614(n+1)+2)+1]`
-/

namespace A126711.P10942420526632933556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A014614 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P10942420526632933556

namespace A126711

/-- `p?[A004525(A014614(n+1)+2)+1]` -/
def P10942420526632933556.Spec : Prop :=
  ∀ n, P10942420526632933556.a n = A126711 (n + 1)

end A126711

/-! ## A126711.P1859026823304226610

`p?[A026741(A014614(n+1)+2)+1]`
-/

namespace A126711.P1859026823304226610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014614 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126711.P1859026823304226610

namespace A126711

/-- `p?[A026741(A014614(n+1)+2)+1]` -/
def P1859026823304226610.Spec : Prop :=
  ∀ n, P1859026823304226610.a n = A126711 (n + 1)

end A126711

/-!
# A126712: Height of steps in Recamán's sequence A064389.

The programs for A126712, there is no canonical definition to state claims against.
-/

/-! ## A126712.P1449079408541711928

`A078759(A078758(n+1))-1`
-/

namespace A126712.P1449079408541711928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078759 (A078758 (n + 1)).toNat - 1

end

end A126712.P1449079408541711928

/-! ## A126712.P13698762923161435627

`A307428(A000040(n+1))+A078759(A078758(n+1))`
-/

namespace A126712.P13698762923161435627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A000040 (n + 1)).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P13698762923161435627

/-! ## A126712.P4266062036892264585

`A307428(A005385(n+1))+A078759(A078758(n+1))`
-/

namespace A126712.P4266062036892264585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A005385 (n + 1)).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P4266062036892264585

/-! ## A126712.P3749023631010053449

`A307428(A006567(n+1))+A078759(A078758(n+1))`
-/

namespace A126712.P3749023631010053449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A006567 (n + 1)).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P3749023631010053449

/-! ## A126712.P17967942611995675563

`A307428(A030432(n+1))+A078759(A078758(n+1))`
-/

namespace A126712.P17967942611995675563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A030432 (n + 1)).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P17967942611995675563

/-! ## A126712.P10802841022471380895

`A307428(A006530(n+2))+A078759(A078758(n+1))`
-/

namespace A126712.P10802841022471380895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A006530 (n + 2)).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P10802841022471380895

/-! ## A126712.P16667151608198888947

`A307428(A093178(2*n)+1)+A078759(A078758(n+1))`
-/

namespace A126712.P16667151608198888947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A093178 (2 * n) + 1).toNat + A078759 (A078758 (n + 1)).toNat

end

end A126712.P16667151608198888947

/-!
# A126714: Dual Wythoff array read along antidiagonals downwards.

The programs for A126714, there is no canonical definition to state claims against.
-/

/-! ## A126714.P17888258618501161801

`A083047(A352520(n))%(2^n)+1`
-/

namespace A126714.P17888258618501161801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083047 (A352520 n).toNat) (2 ^ n : ℤ) + 1

end

end A126714.P17888258618501161801

/-! ## A126714.P9412595729575818474

`A083047(A352520(n))+A057427(n)`
-/

namespace A126714.P9412595729575818474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + A057427 n

end

end A126714.P9412595729575818474

/-! ## A126714.P3174085535300832300

`A178334(n)+A083047(A352520(n))`
-/

namespace A126714.P3174085535300832300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A083047 (A352520 n).toNat

end

end A126714.P3174085535300832300

/-! ## A126714.P3249919172156453146

`A083047(A352520(n))-A057428(n)`
-/

namespace A126714.P3249919172156453146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat - A057428 n

end

end A126714.P3249919172156453146

/-! ## A126714.P5451911712727617245

`A083047(A352520(n))+char[A291769(n)]`
-/

namespace A126714.P5451911712727617245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A126714.P5451911712727617245

/-! ## A126714.P14717603757828334876

`A083047(A352520(n))+1-A000007(n)`
-/

namespace A126714.P14717603757828334876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + (1 - A000007 n)

end

end A126714.P14717603757828334876

/-! ## A126714.P15466382665986847822

`A083047(A352520(n))+A000040(n+1)%2`
-/

namespace A126714.P15466382665986847822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A126714.P15466382665986847822

/-! ## A126714.P71750166576931425

`A083047(A352520(n))+A020639(A000010(n+2))-1`
-/

namespace A126714.P71750166576931425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + (A020639 (A000010 (n + 2)).toNat - 1)

end

end A126714.P71750166576931425

/-! ## A126714.P14168541583064938160

`A083047(A352520(n))+A001221(A098355(n))`
-/

namespace A126714.P14168541583064938160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A352520 n).toNat + A001221 (A098355 n).toNat

end

end A126714.P14168541583064938160

/-!
# A126715: a(n) is the smallest odd prime p such that p*2^n - 1 is prime.

The programs for A126715, there is no canonical definition to state claims against.
-/

/-! ## A126715.P825425949006545321

`A000040(A187467(round(acot(n)+n)))`
-/

namespace A126715.P825425949006545321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A187467 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A126715.P825425949006545321

/-! ## A126715.P94971643690499980

`A000040(A187467(round(sqrt(n²+1))))`
-/

namespace A126715.P94971643690499980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A187467 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A126715.P94971643690499980

/-!
# A126716: Least i such that prime(i)*2^(10^n) - 1 is prime.

The programs for A126716, there is no canonical definition to state claims against.
-/

/-! ## A126716.P8099789499187787689

`A000720(A126715(10^n))`
-/

namespace A126716.P8099789499187787689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126715 (10 ^ n)).toNat

end

end A126716.P8099789499187787689

/-!
# A126717: Least odd k such that k*2^n-1 is prime.

The programs for A126717, there is no canonical definition to state claims against.
-/

/-! ## A126717.P7266173212979304233

`(A201914(n)+1)/A000079(n)`
-/

namespace A126717.P7266173212979304233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (A000079 n : ℚ)

end

end A126717.P7266173212979304233

/-! ## A126717.P11154219806062427611

`(A201914(n)+1)/Δ[A000051(n)]`
-/

namespace A126717.P11154219806062427611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126717.P11154219806062427611

/-! ## A126717.P1569968955359156613

`(A201914(n)+1)/Δ[A000225(n)]`
-/

namespace A126717.P1569968955359156613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126717.P1569968955359156613

/-! ## A126717.P3195541019625911588

`(A201914(n)+1)/Δ[A000918(n)]`
-/

namespace A126717.P3195541019625911588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A126717.P3195541019625911588

/-! ## A126717.P13094146665033008560

`(A201914(n)+1)/A166444(n+2)`
-/

namespace A126717.P13094146665033008560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (A166444 (n + 2) : ℚ)

end

end A126717.P13094146665033008560

/-! ## A126717.P3034412329104174017

`(A201914(n)+1)/record[A243505(n+1)]`
-/

namespace A126717.P3034412329104174017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243505 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A126717.P3034412329104174017

/-! ## A126717.P4525356113490032385

`(A201914(n)+1)/record[A059268(n)]`
-/

namespace A126717.P4525356113490032385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201914 n + 1 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A126717.P4525356113490032385

/-!
# A126718: a(n) is the number of nonnegative integers k less than 10^n such that the decimal representation of k lacks the digits 1,2,3, at least one of digits 4,5, at least one of digits 6,7 and at least one of digits 8,9.

The programs for A126718, the canonical program `A126718.P13969018438012484406` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126718 has offset 1).

The definition of A126718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126718.P13969018438012484406

`8*4^(n+1)-12*3^(n+1)+6*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126718

/-- `8*4^(n+1)-12*3^(n+1)+6*2^(n+1)-1` -/
def P13969018438012484406.Spec : Prop :=
  ∀ n, P13969018438012484406.a n = A126718 (n + 1)

theorem P13969018438012484406.correct : P13969018438012484406.Spec := by
  intro n
  simp only [A126718, Nat.add_sub_cancel]

end A126718

/-! ## A126718.P2989504352179057056

`ogf((7-27x+50x^2-24x^3)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A126718.P2989504352179057056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -27, 50, -24] [1, -10, 35, -50, 24] n

end

end A126718.P2989504352179057056

namespace A126718

/-- `ogf((7-27x+50x^2-24x^3)/(1-10x+35x^2-50x^3+24x^4))` -/
def P2989504352179057056.Spec : Prop :=
  ∀ n, P2989504352179057056.a n = A126718 (n + 1)

end A126718

/-!
# A126719: a(n) = -n^2 + 9*n + 23.

The programs for A126719, the canonical program `A126719.P4771010176811707918` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126719 has offset 0).

The definition of A126719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-n²+9*n+23` (program `A126719.P4771010176811707918`, by `A126719.P4771010176811707918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126719.P4771010176811707918

`-n²+9*n+23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126719

/-- `-n²+9*n+23` -/
def P4771010176811707918.Spec : Prop :=
  ∀ n, P4771010176811707918.a n = A126719 n

theorem P4771010176811707918.correct : P4771010176811707918.Spec := by
  intro n
  simp only [A126719]

end A126719

/-! ## A126719.P10966143671645112967

`ogf((23-38x+13x^2)/(1-3x+3x^2-x^3))`
-/

namespace A126719.P10966143671645112967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, -38, 13] [1, -3, 3, -1] n

end

end A126719.P10966143671645112967

namespace A126719

/-- `ogf((23-38x+13x^2)/(1-3x+3x^2-x^3))` -/
def P10966143671645112967.Spec : Prop :=
  ∀ n, P10966143671645112967.a n = A126719 n

end A126719

/-! ## A126719.P6000988523733099457

`∑[a(n-1)-2]` with `a(0)=23, a(1)=8`
-/

namespace A126719.P6000988523733099457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23, 8] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126719.P6000988523733099457

namespace A126719

/-- `∑[a(n-1)-2]` -/
def P6000988523733099457.Spec : Prop :=
  ∀ n, P6000988523733099457.a n = A126719 n

end A126719

/-! ## A126719.P2217489076243423644

`or((n+2)*A022967(n), 1)`
-/

namespace A126719.P2217489076243423644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 2 : ℤ) * A022967 n) 1

end

end A126719.P2217489076243423644

namespace A126719

/-- `or((n+2)*A022967(n), 1)` -/
def P2217489076243423644.Spec : Prop :=
  ∀ n, P2217489076243423644.a n = A126719 n

end A126719

/-! ## A126719.P9062088420369956647

`Δ[A228319(n+1)-∑[A002378(n)]]`
-/

namespace A126719.P9062088420369956647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228319 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126719.P9062088420369956647

namespace A126719

/-- `Δ[A228319(n+1)-∑[A002378(n)]]` -/
def P9062088420369956647.Spec : Prop :=
  ∀ n, P9062088420369956647.a n = A126719 n

end A126719

/-! ## A126719.P11537595840694461868

`xor((n+2)*A022967(n), A014963(xor(42, n)+n))`
-/

namespace A126719.P11537595840694461868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 2 : ℤ) * A022967 n) (A014963 (Nat.xor 42 n + n))

end

end A126719.P11537595840694461868

namespace A126719

/-- `xor((n+2)*A022967(n), A014963(xor(42, n)+n))` -/
def P11537595840694461868.Spec : Prop :=
  ∀ n, P11537595840694461868.a n = A126719 n

end A126719

/-! ## A126719.P10078593886137034790

`Δ[A179297(n+1)+A016777(A059845(n))]`
-/

namespace A126719.P10078593886137034790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (n + 1) + A016777 (A059845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126719.P10078593886137034790

namespace A126719

/-- `Δ[A179297(n+1)+A016777(A059845(n))]` -/
def P10078593886137034790.Spec : Prop :=
  ∀ n, P10078593886137034790.a n = A126719 n

end A126719

/-!
# A126720: Primes p such that p - q = 24, where q is the previous prime before p; or prime numbers preceded by precisely 23 composite numbers.

The programs for A126720, there is no canonical definition to state claims against.
-/

/-! ## A126720.P7663024541815056750

`A098974(n+1)+24`
-/

namespace A126720.P7663024541815056750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098974 (n + 1) + 24

end

end A126720.P7663024541815056750

/-! ## A126720.P16982541984995195582

`A001748(A320710(n+1)+1)/3`
-/

namespace A126720.P16982541984995195582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A320710 (n + 1) + 1).toNat : ℚ) / 3

end

end A126720.P16982541984995195582

/-! ## A126720.P2474615011840948120

`A045319(A320710(n+1))`
-/

namespace A126720.P2474615011840948120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320710 (n + 1)).toNat

end

end A126720.P2474615011840948120

/-! ## A126720.P8328065221255593364

`A000040(A320710(n+1)+1)`
-/

namespace A126720.P8328065221255593364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320710 (n + 1) + 1).toNat

end

end A126720.P8328065221255593364

/-! ## A126720.P3854970086161908138

`A006005(A320710(n+1)+1)`
-/

namespace A126720.P3854970086161908138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A320710 (n + 1) + 1).toNat

end

end A126720.P3854970086161908138

/-! ## A126720.P10293285354089720057

`A004139(A320710(n+1)-1)`
-/

namespace A126720.P10293285354089720057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320710 (n + 1) - 1).toNat

end

end A126720.P10293285354089720057

/-! ## A126720.P4252168119894810679

`A008578(A320710(n+1)+2)`
-/

namespace A126720.P4252168119894810679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320710 (n + 1) + 2).toNat

end

end A126720.P4252168119894810679

/-! ## A126720.P14144858808604125732

`A175787(A320710(n+1)+2)`
-/

namespace A126720.P14144858808604125732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320710 (n + 1) + 2).toNat

end

end A126720.P14144858808604125732

/-! ## A126720.P11030239745900624165

`A093515(2*A320710(n+1))`
-/

namespace A126720.P11030239745900624165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A320710 (n + 1)).toNat

end

end A126720.P11030239745900624165

/-! ## A126720.P17216565719610188766

`A006093(A320710(n+1)+1)+1`
-/

namespace A126720.P17216565719610188766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A320710 (n + 1) + 1).toNat + 1

end

end A126720.P17216565719610188766

/-! ## A126720.P621908029505516530

`A040976(A320710(n+1)+1)+2`
-/

namespace A126720.P621908029505516530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A320710 (n + 1) + 1).toNat + 2

end

end A126720.P621908029505516530

/-! ## A126720.P9635228151737365452

`∑{d}[A320710(n+1)+1, A007444(#)]`
-/

namespace A126720.P9635228151737365452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320710 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A126720.P9635228151737365452

/-! ## A126720.P14991401388599329991

`A065091(2*A320710(n+1)-A320710(n+1))`
-/

namespace A126720.P14991401388599329991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * A320710 (n + 1) - A320710 (n + 1)).toNat

end

end A126720.P14991401388599329991

/-! ## A126720.P12887148463755650469

`A151800(A098974(n+1))`
-/

namespace A126720.P12887148463755650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A098974 (n + 1)).toNat

end

end A126720.P12887148463755650469

/-!
# A126721: Primes p such that q-p = 40, where q is the next prime after p.

The programs for A126721, there is no canonical definition to state claims against.
-/

/-! ## A126721.P10585463710276104979

`A231609(eq[19, A193592(n)])`
-/

namespace A126721.P10585463710276104979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126721.P10585463710276104979

/-! ## A126721.P12323427894772404000

`A055670(A320718(n+1))-1`
-/

namespace A126721.P12323427894772404000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320718 (n + 1)).toNat - 1

end

end A126721.P12323427894772404000

/-! ## A126721.P5384327121811474034

`A000040(A320718(n+1))`
-/

namespace A126721.P5384327121811474034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320718 (n + 1)).toNat

end

end A126721.P5384327121811474034

/-! ## A126721.P6192903900701077108

`A008578(A320718(n+1)+1)`
-/

namespace A126721.P6192903900701077108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320718 (n + 1) + 1).toNat

end

end A126721.P6192903900701077108

/-! ## A126721.P5506263418501370952

`A175787(A320718(n+1)+1)`
-/

namespace A126721.P5506263418501370952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A320718 (n + 1) + 1).toNat

end

end A126721.P5506263418501370952

/-!
# A126723: Irregular triangle read by rows: row n (>= 1) gives coefficients c(0), c(1), c(2),... arising from the greedy-algorithm representation of n as n = c(0)/x + c(1)/x^2 + c(2)/x^3 + ..., where x = (1+sqrt(5))/2.

The programs for A126723, there is no canonical definition to state claims against.
-/

/-! ## A126723.P7029993512591675827

`A129921(n)%A130893(A114043(n+1))`
-/

namespace A126723.P7029993512591675827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129921 n) (A130893 (A114043 (n + 1)).toNat)

end

end A126723.P7029993512591675827

/-! ## A126723.P9679616346867865475

`A219260(A276326(n))%A328579(n)`
-/

namespace A126723.P9679616346867865475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219260 (A276326 n).toNat) (A328579 n)

end

end A126723.P9679616346867865475

/-! ## A126723.P4691665866356039130

`and(A160752(A160766(n+1)), A160760(n+1))`
-/

namespace A126723.P4691665866356039130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160752 (A160766 (n + 1)).toNat) (A160760 (n + 1))

end

end A126723.P4691665866356039130

/-! ## A126723.P10238760413023742175

`and(A001055(3*n+2), A333227(A023201(n+1)))`
-/

namespace A126723.P10238760413023742175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (3 * n + 2)) (A333227 (A023201 (n + 1)).toNat)

end

end A126723.P10238760413023742175

/-!
# A126725: a(1)=0, a(2)=1; for n>2, a(n) = C(n,2)*(1+a(n-2)).

The programs for A126725, the canonical program `A126725.P13002814126553727806` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126725 has offset 1).

The definition of A126725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+1, 2)*(1+a(n-2))` (program `A126725.P13002814126553727806`, by `A126725.P13002814126553727806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A126725.P13002814126553727806

`C(n+1, 2)*(1+a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126725

/-- `C(n+1, 2)*(1+a(n-2))` -/
def P13002814126553727806.Spec : Prop :=
  ∀ n, (P13002814126553727806.a n : ℤ) = A126725 (n + 1)

theorem P13002814126553727806.correct : P13002814126553727806.Spec := by
  intro n
  simp only [A126725, Nat.add_sub_cancel]

end A126725

/-! ## A126725.P5018872094928757287

`A087214(n+1)-1`
-/

namespace A126725.P5018872094928757287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087214 (n + 1) - 1

end

end A126725.P5018872094928757287

namespace A126725

/-- `A087214(n+1)-1` -/
def P5018872094928757287.Spec : Prop :=
  ∀ n, P5018872094928757287.a n = A126725 (n + 1)

end A126725

/-! ## A126725.P10200086509953565640

`(a(n-2)+1)*∑[n]` with `a(0)=0, a(1)=1`
-/

namespace A126725.P10200086509953565640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126725.P10200086509953565640

namespace A126725

/-- `(a(n-2)+1)*∑[n]` -/
def P10200086509953565640.Spec : Prop :=
  ∀ n, (P10200086509953565640.a n : ℤ) = A126725 (n + 1)

end A126725

/-! ## A126725.P6629735438815465001

`(a(n-2)+1)/∑[n]^(-1)` with `a(0)=0, a(1)=1`
-/

namespace A126725.P6629735438815465001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) + 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A126725.P6629735438815465001

namespace A126725

/-- `(a(n-2)+1)/∑[n]^(-1)` -/
def P6629735438815465001.Spec : Prop :=
  ∀ n, P6629735438815465001.a n = (A126725 (n + 1) : ℚ)

end A126725

/-! ## A126725.P4156892781180961467

`∑[abs(Δ[A087214(n)])]`
-/

namespace A126725.P4156892781180961467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126725.P4156892781180961467

namespace A126725

/-- `∑[abs(Δ[A087214(n)])]` -/
def P4156892781180961467.Spec : Prop :=
  ∀ n, P4156892781180961467.a n = A126725 (n + 1)

end A126725

/-! ## A126725.P15337072422158058935

`record[Δ[A087214(A049084(n+1))]]`
-/

namespace A126725.P15337072422158058935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087214 (A049084 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126725.P15337072422158058935

namespace A126725

/-- `record[Δ[A087214(A049084(n+1))]]` -/
def P15337072422158058935.Spec : Prop :=
  ∀ n, P15337072422158058935.a n = A126725 (n + 1)

end A126725

/-! ## A126725.P13525875970967598146

`∑[Δ[A087214(n)]*A057427(n)]`
-/

namespace A126725.P13525875970967598146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126725.P13525875970967598146

namespace A126725

/-- `∑[Δ[A087214(n)]*A057427(n)]` -/
def P13525875970967598146.Spec : Prop :=
  ∀ n, P13525875970967598146.a n = A126725 (n + 1)

end A126725

/-!
# A126726: Number of squares (of nonnegative integers) that require n binary (base-2) digits.

The programs for A126726, the canonical program `A126726.P1979793542192437975` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126726 has offset 0).

The definition of A126726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126726.P1979793542192437975

`char[1]+Δ[A116601(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126726

/-- `char[1]+Δ[A116601(n+1)]` -/
def P1979793542192437975.Spec : Prop :=
  ∀ n, P1979793542192437975.a n = A126726 n

theorem P1979793542192437975.correct : P1979793542192437975.Spec := by
  intro n
  simp only [A126726]

end A126726

/-! ## A126726.P6337523338816320061

`Δ[A157928(n)+A116601(n+1)]`
-/

namespace A126726.P6337523338816320061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A116601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126726.P6337523338816320061

namespace A126726

/-- `Δ[A157928(n)+A116601(n+1)]` -/
def P6337523338816320061.Spec : Prop :=
  ∀ n, P6337523338816320061.a n = A126726 n

end A126726

/-! ## A126726.P6129050804875612328

`Δ[A116601(n+1)]-A159075(n)`
-/

namespace A126726.P6129050804875612328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A159075 n

end

end A126726.P6129050804875612328

namespace A126726

/-- `Δ[A116601(n+1)]-A159075(n)` -/
def P6129050804875612328.Spec : Prop :=
  ∀ n, P6129050804875612328.a n = A126726 n

end A126726

/-! ## A126726.P10287380371099876700

`Δ[A116601(n+1)]+A159075(n)^A020639(n+1)`
-/

namespace A126726.P10287380371099876700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A159075 n : ℚ) ^ (A020639 (n + 1) : ℤ)

end

end A126726.P10287380371099876700

namespace A126726

/-- `Δ[A116601(n+1)]+A159075(n)^A020639(n+1)` -/
def P10287380371099876700.Spec : Prop :=
  ∀ n, P10287380371099876700.a n = (A126726 n : ℚ)

end A126726

/-! ## A126726.P1563133154808829559

`Δ[A116601(n+1)-A008683(A127473(n+1))]`
-/

namespace A126726.P1563133154808829559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1) - A008683 (A127473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A126726.P1563133154808829559

namespace A126726

/-- `Δ[A116601(n+1)-A008683(A127473(n+1))]` -/
def P1563133154808829559.Spec : Prop :=
  ∀ n, P1563133154808829559.a n = A126726 n

end A126726

/-! ## A126726.P16383073896909587684

`A014963(A005563(n+1))*Δ[A116601(n+1)]`
-/

namespace A126726.P16383073896909587684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005563 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A126726.P16383073896909587684

namespace A126726

/-- `A014963(A005563(n+1))*Δ[A116601(n+1)]` -/
def P16383073896909587684.Spec : Prop :=
  ∀ n, P16383073896909587684.a n = A126726 n

end A126726

/-!
# A126727: Numbers missing from A033491.

The programs for A126727, there is no canonical definition to state claims against.
-/

/-! ## A126727.P9232611511053616037

`comp[A033491(n)-1]+1`
-/

namespace A126727.P9232611511053616037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A126727.P9232611511053616037

/-! ## A126727.P10459962603540893845

`lt[1, A337144(n+1)]+1`
-/

namespace A126727.P10459962603540893845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A126727.P10459962603540893845

/-! ## A126727.P10120294802493648413

`comp[A337149(n+1)-1]+1`
-/

namespace A126727.P10120294802493648413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337149 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A126727.P10120294802493648413

/-! ## A126727.P1765540366567714712

`lt[1, A337144(A028310(n))]`
-/

namespace A126727.P1765540366567714712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A126727.P1765540366567714712

/-! ## A126727.P2767819901045340174

`comp[A033491(n)%A294478(n)]`
-/

namespace A126727.P2767819901045340174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033491 n) (A294478 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A126727.P2767819901045340174

/-! ## A126727.P4835609661047520489

`eq[char[A033491(n)], A000007(n)]`
-/

namespace A126727.P4835609661047520489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A126727.P4835609661047520489

/-! ## A126727.P8517993527453061623

`eq[char[A033491(n)], A000038(n)]`
-/

namespace A126727.P8517993527453061623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033491 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A126727.P8517993527453061623

/-! ## A126727.P11739456946353097373

`eq[3, A000037(a(A337144(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A126727.P11739456946353097373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000037 (f2 (A337144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126727.P11739456946353097373

/-! ## A126727.P3695551627369622374

`eq[3, A000040(a(A337144(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A126727.P3695551627369622374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000040 (f2 (A337144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126727.P3695551627369622374

/-! ## A126727.P6406075241641541278

`eq[3, A000043(a(A337144(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A126727.P6406075241641541278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000043 (f2 (A337144 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126727.P6406075241641541278

/-!
# A126728: Number of graphs on n nodes with edge chromatic number 2.

The programs for A126728, there is no canonical definition to state claims against.
-/

/-! ## A126728.P4400037729022775588

`floor((A325325(3*n)+n+n)/5)`
-/

namespace A126728.P4400037729022775588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325325 (3 * n) + (n : ℤ) + (n : ℤ) : ℚ) / 5⌋

end

end A126728.P4400037729022775588

/-! ## A126728.P8712558679603147179

`A003403(n)-A143862(n)`
-/

namespace A126728.P8712558679603147179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003403 n - A143862 n

end

end A126728.P8712558679603147179

/-! ## A126728.P14325923127936191789

`A003403(n)-A189357(n)`
-/

namespace A126728.P14325923127936191789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003403 n - A189357 n

end

end A126728.P14325923127936191789

/-! ## A126728.P14216335049544870436

`A003403(n)-A323523(n)`
-/

namespace A126728.P14216335049544870436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003403 n - A323523 n

end

end A126728.P14216335049544870436

/-! ## A126728.P4873602270329855671

`A374737(n)-A127971(n)`
-/

namespace A126728.P4873602270329855671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374737 n - A127971 n

end

end A126728.P4873602270329855671

/-!
# A126729: Number of graphs on n nodes with edge chromatic number 3.

The programs for A126729, there is no canonical definition to state claims against.
-/

/-! ## A126729.P6915023991175819455

`2*A257520(n)-1-A283314(A109613(n))`
-/

namespace A126729.P6915023991175819455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 n - 1 - A283314 (A109613 n).toNat

end

end A126729.P6915023991175819455

/-! ## A126729.P17083821942415133438

`∑[(1-n)*A167022(n)]-A283314(A109613(n))`
-/

namespace A126729.P17083821942415133438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283314 (A109613 n).toNat

end

end A126729.P17083821942415133438

/-! ## A126729.P10746183749287001763

`∑[(1-n)*A168058(n)]-A283314(A109613(n))`
-/

namespace A126729.P10746183749287001763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283314 (A109613 n).toNat

end

end A126729.P10746183749287001763

/-!
# A126730: Number of graphs on n nodes with edge chromatic number 4.

The programs for A126730, there is no canonical definition to state claims against.
-/

/-! ## A126730.P9938933265012400012

`A157271(n!)-A206703(n)`
-/

namespace A126730.P9938933265012400012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Nat.factorial n) - A206703 n

end

end A126730.P9938933265012400012

/-! ## A126730.P15142301785862401474

`A231880(C(A097683(n+1), n+1))`
-/

namespace A126730.P15142301785862401474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231880 (Nat.choose (A097683 (n + 1)).toNat (n + 1))

end

end A126730.P15142301785862401474

/-! ## A126730.P18017168045716546795

`A000978(3*n+1)%A000203(A276095(n+1))`
-/

namespace A126730.P18017168045716546795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000978 (3 * n + 1)) (A000203 (A276095 (n + 1)).toNat)

end

end A126730.P18017168045716546795

/-!
# A126731: Number of graphs on n nodes with edge chromatic number 5.

The programs for A126731, there is no canonical definition to state claims against.
-/

/-! ## A126731.P4556703259126224560

`A027870(n*A335509(n))`
-/

namespace A126731.P4556703259126224560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 ((n : ℤ) * A335509 n).toNat

end

end A126731.P4556703259126224560

/-! ## A126731.P3419913879469315374

`A340964(n)%A368000(A054357(n))`
-/

namespace A126731.P3419913879469315374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340964 (n + 16)) (A368000 (A054357 n).toNat)

end

end A126731.P3419913879469315374

/-! ## A126731.P10009875367745228824

`A197629(A200404(n+1)-A130362(n))`
-/

namespace A126731.P10009875367745228824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197629 (A200404 (n + 1) - A130362 n).toNat

end

end A126731.P10009875367745228824

/-!
# A126732: Triangle read by rows: T(n,k) (n>=0, k=0..n) gives number of connected graphs on n nodes with edge chromatic number k.

The programs for A126732, there is no canonical definition to state claims against.
-/

/-! ## A126732.P16199749910585780812

`A072966(A275043(n))^A001221(A336768(n+4))`
-/

namespace A126732.P16199749910585780812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072966 (A275043 n).toNat : ℚ) ^ (A001221 (A336768 (n + 4)).toNat : ℤ)

end

end A126732.P16199749910585780812

/-!
# A126733: Number of connected graphs on n nodes with edge chromatic number 3.

The programs for A126733, there is no canonical definition to state claims against.
-/

/-! ## A126733.P4394874383143722841

`A126732(A350660(n+3))`
-/

namespace A126733.P4394874383143722841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A350660 (n + 3)).toNat

end

end A126733.P4394874383143722841

/-! ## A126733.P13668669279496182992

`A126732(A134189(n+1)+4)`
-/

namespace A126733.P13668669279496182992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A134189 (n + 1) + 4).toNat

end

end A126733.P13668669279496182992

/-! ## A126733.P12730717194173098969

`A126732(A133263(n)+2+n)`
-/

namespace A126733.P12730717194173098969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A133263 n + 2 + (n : ℤ)).toNat

end

end A126733.P12730717194173098969

/-! ## A126733.P15115543781447609194

`A126732(A055999(n)+3-comp[2*(n+1)])`
-/

namespace A126733.P15115543781447609194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A055999 n + 3 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A126733.P15115543781447609194

/-! ## A126733.P11529527382596406818

`A126732(A141214(n)-A004273(n))`
-/

namespace A126733.P11529527382596406818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A141214 n - A004273 n).toNat

end

end A126733.P11529527382596406818

/-!
# A126734: Number of connected graphs on n nodes with edge chromatic number 4.

The programs for A126734, there is no canonical definition to state claims against.
-/

/-! ## A126734.P18119386532449265761

`A126732(∑[n+1]+4)`
-/

namespace A126734.P18119386532449265761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A126734.P18119386532449265761

/-! ## A126734.P2268604100827944405

`A079691(A114801(n!))`
-/

namespace A126734.P2268604100827944405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 (A114801 (Nat.factorial n)).toNat

end

end A126734.P2268604100827944405

/-! ## A126734.P12907205315553771949

`A049687(A351881(n))-1`
-/

namespace A126734.P12907205315553771949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A351881 n).toNat - 1

end

end A126734.P12907205315553771949

/-!
# A126735: Number of connected graphs on n nodes with edge chromatic number 5.

The programs for A126735, there is no canonical definition to state claims against.
-/

/-! ## A126735.P12256302813772588204

`A126732(A350660(n+3)+2)`
-/

namespace A126735.P12256302813772588204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (A350660 (n + 3) + 2).toNat

end

end A126735.P12256302813772588204

/-! ## A126735.P13695544678378416192

`A126732(A167499(n))%A000262(n)`
-/

namespace A126735.P13695544678378416192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126732 (A167499 n).toNat) (A000262 n)

end

end A126735.P13695544678378416192

/-! ## A126735.P790640327904321141

`A126732(A167499(n)%A303041(n+1))`
-/

namespace A126735.P790640327904321141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126732 (Int.tmod (A167499 n) (A303041 (n + 1))).toNat

end

end A126735.P790640327904321141

/-!
# A126737: Number of connected graphs on n nodes with chromatic number 3.

The programs for A126737, there is no canonical definition to state claims against.
-/

/-! ## A126737.P3836415448089855544

`A084269(A133263(n)+1)`
-/

namespace A126737.P3836415448089855544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A133263 n + 1).toNat

end

end A126737.P3836415448089855544

/-! ## A126737.P1711956760171270253

`A076322(n+1)-A005142(n+1)`
-/

namespace A126737.P1711956760171270253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076322 (n + 1) - A005142 (n + 1)

end

end A126737.P1711956760171270253

/-! ## A126737.P17872299563414879982

`A084269(A172471(3*n+2)+A000982(n))`
-/

namespace A126737.P17872299563414879982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A172471 (3 * n + 2) + A000982 n).toNat

end

end A126737.P17872299563414879982

/-!
# A126738: Number of connected graphs on n nodes with chromatic number 4.

The programs for A126738, there is no canonical definition to state claims against.
-/

/-! ## A126738.P14955692190794654690

`A076323(n+1)-A076322(n+1)`
-/

namespace A126738.P14955692190794654690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076323 (n + 1) - A076322 (n + 1)

end

end A126738.P14955692190794654690

/-! ## A126738.P13331434035379820639

`A361849(A032254(n))`
-/

namespace A126738.P13331434035379820639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361849 (A032254 n).toNat

end

end A126738.P13331434035379820639

/-! ## A126738.P13223819398879790394

`A361849(A332835(n))`
-/

namespace A126738.P13223819398879790394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361849 (A332835 n).toNat

end

end A126738.P13223819398879790394

/-!
# A126739: Number of connected graphs on n nodes with chromatic number 5.

The programs for A126739, there is no canonical definition to state claims against.
-/

/-! ## A126739.P12092818314415345333

`A084269(A077169(n+1))`
-/

namespace A126739.P12092818314415345333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A077169 (n + 1)).toNat

end

end A126739.P12092818314415345333

/-! ## A126739.P4233296233798622016

`A076324(n+1)-A076323(n+1)`
-/

namespace A126739.P4233296233798622016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076324 (n + 1) - A076323 (n + 1)

end

end A126739.P4233296233798622016

/-!
# A126740: Number of connected graphs on n nodes with chromatic number 6.

The programs for A126740, there is no canonical definition to state claims against.
-/

/-! ## A126740.P17363068673302775081

`A084269(A025708(n+1))`
-/

namespace A126740.P17363068673302775081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A025708 (n + 1)).toNat

end

end A126740.P17363068673302775081

/-! ## A126740.P11175030400739436127

`A076325(n+1)-A076324(n+1)`
-/

namespace A126740.P11175030400739436127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076325 (n + 1) - A076324 (n + 1)

end

end A126740.P11175030400739436127

/-!
# A126743: Triangle read by rows: T(n,k) (n>=1) gives the number of n-indecomposable polyominoes with k cells (k >= 2n).

The programs for A126743, there is no canonical definition to state claims against.
-/

/-! ## A126743.P11562280291593184327

`and(1, A130855(n))*A125753(n+1)`
-/

namespace A126743.P11562280291593184327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A130855 n) * A125753 (n + 1)

end

end A126743.P11562280291593184327

/-! ## A126743.P17362405377573357832

`and(1, A130855(n))*A125761(n+1)`
-/

namespace A126743.P17362405377573357832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A130855 n) * A125761 (n + 1)

end

end A126743.P17362405377573357832

/-! ## A126743.P7301505954544613501

`A000035(A130855(n))*A125753(n+1)`
-/

namespace A126743.P7301505954544613501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130855 n).toNat * A125753 (n + 1)

end

end A126743.P7301505954544613501

/-! ## A126743.P17310398158478612429

`A000035(A130855(n))*A125761(n+1)`
-/

namespace A126743.P17310398158478612429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A130855 n).toNat * A125761 (n + 1)

end

end A126743.P17310398158478612429

/-!
# A126745: Number of connected graphs on n nodes with clique number 3.

The programs for A126745, there is no canonical definition to state claims against.
-/

/-! ## A126745.P11088776075966946011

`A079574(n+1)-A024607(n+1)`
-/

namespace A126745.P11088776075966946011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - A024607 (n + 1)

end

end A126745.P11088776075966946011

/-! ## A126745.P2826324359535769171

`A128240(n+1)-A243244(n+1)`
-/

namespace A126745.P2826324359535769171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128240 (n + 1) - A243244 (n + 1)

end

end A126745.P2826324359535769171

/-! ## A126745.P16476494832193126254

`A079574(n+1)-A283417(∑[n+1]+1)`
-/

namespace A126745.P16476494832193126254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - A283417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126745.P16476494832193126254

/-! ## A126745.P5518257085216542369

`A079574(n+1)-(A001349(n+1)-A128240(n+1))`
-/

namespace A126745.P5518257085216542369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - (A001349 (n + 1) - A128240 (n + 1))

end

end A126745.P5518257085216542369

/-! ## A126745.P17008211431549881353

`A001349(n+1)-A024607(n+1)-A243244(n+1)`
-/

namespace A126745.P17008211431549881353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A024607 (n + 1) - A243244 (n + 1)

end

end A126745.P17008211431549881353

/-!
# A126746: Number of connected graphs on n nodes with clique number 4.

The programs for A126746, there is no canonical definition to state claims against.
-/

/-! ## A126746.P10224237197581762706

`A241782(n+1)-A079574(n+1)`
-/

namespace A126746.P10224237197581762706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241782 (n + 1) - A079574 (n + 1)

end

end A126746.P10224237197581762706

/-! ## A126746.P7373347617513817975

`A243244(n+1)-A243242(n+1)`
-/

namespace A126746.P7373347617513817975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243244 (n + 1) - A243242 (n + 1)

end

end A126746.P7373347617513817975

/-! ## A126746.P7394889288159513022

`A241782(n+1)-(A126745(n+1)+A024607(n+1))`
-/

namespace A126746.P7394889288159513022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241782 (n + 1) - (A126745 (n + 1) + A024607 (n + 1))

end

end A126746.P7394889288159513022

/-! ## A126746.P11074845316110335413

`A241782(n+1)-(A243333(n+1)+A243327(n+1))`
-/

namespace A126746.P11074845316110335413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241782 (n + 1) - (A243333 (n + 1) + A243327 (n + 1))

end

end A126746.P11074845316110335413

/-! ## A126746.P7293543233388588935

`A001349(n+1)-A243242(n+1)-A079574(n+1)`
-/

namespace A126746.P7293543233388588935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243242 (n + 1) - A079574 (n + 1)

end

end A126746.P7293543233388588935

/-!
# A126747: Number of connected graphs on n nodes with clique number 5.

The programs for A126747, there is no canonical definition to state claims against.
-/

/-! ## A126747.P2843498470062276263

`A025443(xor(1, n)*A147075(n+1))`
-/

namespace A126747.P2843498470062276263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 ((Nat.xor 1 n : ℤ) * A147075 (n + 1)).toNat

end

end A126747.P2843498470062276263

/-! ## A126747.P18373694440396480119

`A187494(A003522(n))-A007318(n)`
-/

namespace A126747.P18373694440396480119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187494 ((A003522 n).toNat + 43) - A007318 n

end

end A126747.P18373694440396480119

/-! ## A126747.P5523743566278549199

`A025462(A137958(n)-A172307(n))`
-/

namespace A126747.P5523743566278549199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A137958 n - A172307 n).toNat

end

end A126747.P5523743566278549199

/-! ## A126747.P8985996985455916583

`A025462(xor(A137958(n), A172307(n)))`
-/

namespace A126747.P8985996985455916583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (Int.xor (A137958 n) (A172307 n)).toNat

end

end A126747.P8985996985455916583

/-!
# A126748: Number of connected graphs on n nodes with clique number 6.

The programs for A126748, there is no canonical definition to state claims against.
-/

/-! ## A126748.P12471766513896505899

`∑[A144118(∑[A323951(n)])]`
-/

namespace A126748.P12471766513896505899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144118 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126748.P12471766513896505899

/-! ## A126748.P7448086624425451718

`A126740(n+1)-A324412(A120178(2*n+3))`
-/

namespace A126748.P7448086624425451718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126740 (n + 1) - A324412 (A120178 (2 * n + 3)).toNat

end

end A126748.P7448086624425451718

/-!
# A126750: Number of 2-connected (or biconnected) graphs on n nodes with chromatic number 2.

The programs for A126750, there is no canonical definition to state claims against.
-/

/-! ## A126750.P9608774102675062269

`A126749(A028310(∑[n])+1)`
-/

namespace A126750.P9608774102675062269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A126750.P9608774102675062269

/-! ## A126750.P122228856631574559

`A126749(A179865(n+1)+1)`
-/

namespace A126750.P122228856631574559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A179865 (n + 1) + 1).toNat

end

end A126750.P122228856631574559

/-! ## A126750.P500243014206682490

`A126749(A175631(n+2)+2)`
-/

namespace A126750.P500243014206682490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A175631 (n + 2) + 2).toNat

end

end A126750.P500243014206682490

/-! ## A126750.P5379506560155273529

`A126749(A000217(abs(1-n)+1)+1)`
-/

namespace A126750.P5379506560155273529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A000217 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

end

end A126750.P5379506560155273529

/-! ## A126750.P17501407316453241667

`A126749(A000124(A000007(n)+n))`
-/

namespace A126750.P17501407316453241667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A000124 (A000007 n + (n : ℤ)).toNat).toNat

end

end A126750.P17501407316453241667

/-!
# A126751: Number of biconnected graphs on n nodes with chromatic number 3.

The programs for A126751, there is no canonical definition to state claims against.
-/

/-! ## A126751.P1563682825737592584

`A126749(A212342(n)+1)`
-/

namespace A126751.P1563682825737592584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126749 (A212342 n + 1).toNat

end

end A126751.P1563682825737592584

/-! ## A126751.P11608717443975564985

`A124790(A325878(n+3))`
-/

namespace A126751.P11608717443975564985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124790 (A325878 (n + 3)).toNat

end

end A126751.P11608717443975564985

/-! ## A126751.P10136019204534537706

`A096397(or(n, A001192(n)))`
-/

namespace A126751.P10136019204534537706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 (Int.lor (n : ℤ) (A001192 n)).toNat

end

end A126751.P10136019204534537706

/-!
# A126752: Number of biconnected graphs on n nodes with chromatic number 4.

The programs for A126752, there is no canonical definition to state claims against.
-/

/-! ## A126752.P9273208930294446234

`abs(A112963(∑{e}[n!, #]!))`
-/

namespace A126752.P9273208930294446234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112963 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))|

end

end A126752.P9273208930294446234

/-! ## A126752.P15824691923330869917

`A008676(A000699(n)+1)`
-/

namespace A126752.P15824691923330869917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A000699 n + 1).toNat

end

end A126752.P15824691923330869917

/-! ## A126752.P10249348282402040113

`A308069(A176856(n+1))`
-/

namespace A126752.P10249348282402040113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308069 (A176856 (n + 1)).toNat

end

end A126752.P10249348282402040113

/-!
# A126753: Number of biconnected graphs on n nodes with chromatic number 5.

The programs for A126753, there is no canonical definition to state claims against.
-/

/-! ## A126753.P18329851584759052614

`A059995(∑[∏[A298673(n+1)]])`
-/

namespace A126753.P18329851584759052614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126753.P18329851584759052614

/-! ## A126753.P6597851828646776042

`A005117(A006283(a(n-2)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A126753.P6597851828646776042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A005117 (A006283 (a (n - 2)).toNat).toNat

end

end A126753.P6597851828646776042

/-! ## A126753.P5563038903396644704

`A242868(A061602(n))%A344790(n)`
-/

namespace A126753.P5563038903396644704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242868 (A061602 n).toNat) (A344790 n)

end

end A126753.P5563038903396644704

/-! ## A126753.P9283998227449501498

`A116361(n)*A126209(A123954(n+1))`
-/

namespace A126753.P9283998227449501498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 n * A126209 (A123954 (n + 1)).toNat

end

end A126753.P9283998227449501498

/-!
# A126755: Braille numberdromes: numbers which read the same backwards and forwards in Braille.

The programs for A126755, there is no canonical definition to state claims against.
-/

/-! ## A126755.P13183989967948177070

`A124588(n+1)-A297025(A276547(n+1))`
-/

namespace A126755.P13183989967948177070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1) - A297025 (A276547 (n + 1)).toNat

end

end A126755.P13183989967948177070

/-! ## A126755.P8623276384794784926

`A069924(lcm(A000700(2*n+1), A219554(n)))`
-/

namespace A126755.P8623276384794784926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (Int.lcm (A000700 (2 * n + 1)) (A219554 n))

end

end A126755.P8623276384794784926

/-! ## A126755.P15684766621724799195

`A302496(A138048(n+1)+A115584(2*n+3))`
-/

namespace A126755.P15684766621724799195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (A138048 (n + 1) + A115584 (2 * n + 3)).toNat

end

end A126755.P15684766621724799195

/-!
# A126756: Number of biconnected triangle-free graphs on n nodes with chromatic number 3.

The programs for A126756, there is no canonical definition to state claims against.
-/

/-! ## A126756.P8389050036970489653

`A025460(A365104(n)+A000217(n))`
-/

namespace A126756.P8389050036970489653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A365104 n + A000217 n).toNat

end

end A126756.P8389050036970489653

/-! ## A126756.P9143075548540371076

`A065744(A038205(n)+A020473(n+1))`
-/

namespace A126756.P9143075548540371076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A038205 n + A020473 (n + 1)).toNat

end

end A126756.P9143075548540371076

/-! ## A126756.P12382634935932137777

`A107189(n+2)%A115323(A178381(n))`
-/

namespace A126756.P12382634935932137777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107189 (n + 2)) (A115323 (A178381 n).toNat)

end

end A126756.P12382634935932137777

/-!
# A126757: Number of n-node connected graphs with no cycles of length less than 5.

The programs for A126757, there is no canonical definition to state claims against.
-/

/-! ## A126757.P12482953995370845189

`A077269(n+1)-A126758(n+1)`
-/

namespace A126757.P12482953995370845189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) - A126758 (n + 1)

end

end A126757.P12482953995370845189

/-! ## A126757.P9693684834248168934

`A300756(∑[n+1]+1)-A126758(n+1)`
-/

namespace A126757.P9693684834248168934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A126758 (n + 1)

end

end A126757.P9693684834248168934

/-! ## A126757.P2180085860617396132

`A000007(n)+record[A300756(n+1)]-A126758(n+1)`
-/

namespace A126757.P2180085860617396132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126758 (n + 1)

end

end A126757.P2180085860617396132

/-! ## A126757.P16224261114858406339

`A300705(∑[n+1]+1)`
-/

namespace A126757.P16224261114858406339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126757.P16224261114858406339

/-! ## A126757.P16964960458097316057

`A300705(A000124(n+1))%A357671(n)`
-/

namespace A126757.P16964960458097316057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300705 (A000124 (n + 1)).toNat) (A357671 n)

end

end A126757.P16964960458097316057

/-!
# A126758: Number of biconnected 4-cycle-free graphs on n nodes with clique number 3.

The programs for A126758, there is no canonical definition to state claims against.
-/

/-! ## A126758.P9580482133741379522

`A077269(n+1)-A126757(n+1)`
-/

namespace A126758.P9580482133741379522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) - A126757 (n + 1)

end

end A126758.P9580482133741379522

/-! ## A126758.P17190041148292628366

`A300756(∑[n+1]+1)-A126757(n+1)`
-/

namespace A126758.P17190041148292628366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A126757 (n + 1)

end

end A126758.P17190041148292628366

/-! ## A126758.P12320485128999373575

`or(char[1], A300756(A000124(n+1)))-A126757(n+1)`
-/

namespace A126758.P12320485128999373575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300756 (A000124 (n + 1)).toNat) - A126757 (n + 1)

end

end A126758.P12320485128999373575

/-! ## A126758.P7861863855366092738

`A000007(n)+record[A300756(n+1)]-A126757(n+1)`
-/

namespace A126758.P7861863855366092738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126757 (n + 1)

end

end A126758.P7861863855366092738

/-! ## A126758.P9511205248396665304

`A077269(n+1)-A300705(∑[n+1]+1)`
-/

namespace A126758.P9511205248396665304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) - A300705 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126758.P9511205248396665304

/-!
# A126759: a(0) = 1; a(2n) = a(n); a(3n) = a(n); otherwise write n = 6i+j, where j = 1 or 5 and set a(n) = 2i+2 if j = 1, otherwise a(n) = 2i+3.

The programs for A126759, there is no canonical definition to state claims against.
-/

/-! ## A126759.P12311666461002840689

`A126760(n)+1`
-/

namespace A126759.P12311666461002840689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n + 1

end

end A126759.P12311666461002840689

/-! ## A126759.P12713242187885362304

`∑{d}[n, A347233(#)]+1`
-/

namespace A126759.P12713242187885362304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347233 d + 1

end

end A126759.P12713242187885362304

/-! ## A126759.P11330723169879108400

`A008619(2*A126760(n))`
-/

namespace A126759.P11330723169879108400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A126760 n).toNat

end

end A126759.P11330723169879108400

/-! ## A126759.P14158679623251432789

`A028242(2*A126760(n))`
-/

namespace A126759.P14158679623251432789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A126760 n).toNat

end

end A126759.P14158679623251432789

/-! ## A126759.P9015476140148479765

`A052938(2*A126760(n))`
-/

namespace A126759.P9015476140148479765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A126760 n).toNat

end

end A126759.P9015476140148479765

/-! ## A126759.P14637071962163853501

`A242112(2*A126760(n))`
-/

namespace A126759.P14637071962163853501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (2 * A126760 n).toNat

end

end A126759.P14637071962163853501

/-! ## A126759.P11895002819300808374

`A330393(2*A126760(n))`
-/

namespace A126759.P11895002819300808374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 (2 * A126760 n).toNat

end

end A126759.P11895002819300808374

/-! ## A126759.P11657175426663192804

`1-A001057(2*A126760(n))`
-/

namespace A126759.P11657175426663192804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A126760 n).toNat

end

end A126759.P11657175426663192804

/-! ## A126759.P12809497704863392329

`A001316(A001316(n))-(1-A126760(n))`
-/

namespace A126759.P12809497704863392329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n).toNat - (1 - A126760 n)

end

end A126759.P12809497704863392329

/-! ## A126759.P6928089757362966129

`A254048(lcm(2, n))+1`
-/

namespace A126759.P6928089757362966129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (Nat.lcm 2 n) + 1

end

end A126759.P6928089757362966129

/-! ## A126759.P2359783374655498627

`A254048(A109043(n))+1`
-/

namespace A126759.P2359783374655498627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A109043 n).toNat + 1

end

end A126759.P2359783374655498627

/-! ## A126759.P8875311832026496121

`A254048(A342369(n))+1`
-/

namespace A126759.P8875311832026496121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A342369 n).toNat + 1

end

end A126759.P8875311832026496121

/-! ## A126759.P12998631175165825478

`A254048(2*n)+1`
-/

namespace A126759.P12998631175165825478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (2 * n) + 1

end

end A126759.P12998631175165825478

/-! ## A126759.P3276040192729202084

`2-(A093178(2*n)-A126760(2*n))`
-/

namespace A126759.P3276040192729202084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A093178 (2 * n) - A126760 (2 * n))

end

end A126759.P3276040192729202084

/-! ## A126759.P6006663256808346321

`A253887(A007494(A254048(n+n))+1)`
-/

namespace A126759.P6006663256808346321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (A007494 (A254048 (n + n)).toNat + 1).toNat

end

end A126759.P6006663256808346321

/-! ## A126759.P15740678812962004831

`A359165(A004277(n))+1`
-/

namespace A126759.P15740678812962004831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A004277 n).toNat + 1

end

end A126759.P15740678812962004831

/-! ## A126759.P4749085458475923578

`2-(A000034(2*n)-A126760(2*n))`
-/

namespace A126759.P4749085458475923578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A126760 (2 * n))

end

end A126759.P4749085458475923578

/-! ## A126759.P7063396175208565458

`2-(A152271(2*n)-A126760(2*n))`
-/

namespace A126759.P7063396175208565458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A152271 (2 * n) - A126760 (2 * n))

end

end A126759.P7063396175208565458

/-! ## A126759.P16673798298150781667

`2-(A266072(2*n)-A126760(2*n))`
-/

namespace A126759.P16673798298150781667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A266072 (2 * n) - A126760 (2 * n))

end

end A126759.P16673798298150781667

/-! ## A126759.P13629103564135137285

`2-(A266591(2*n)-A126760(2*n))`
-/

namespace A126759.P13629103564135137285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A266591 (2 * n) - A126760 (2 * n))

end

end A126759.P13629103564135137285

/-!
# A126760: a(0) = 0, a(2n) = a(n), a(3n) = a(n), a(6n+1) = 2n + 1, a(6n+5) = 2n + 2.

The programs for A126760, there is no canonical definition to state claims against.
-/

/-! ## A126760.P14845184172401238287

`A126759(n)-1`
-/

namespace A126760.P14845184172401238287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n - 1

end

end A126760.P14845184172401238287

/-! ## A126760.P11238789479278390245

`∑{d}[n, A347233(#)]`
-/

namespace A126760.P11238789479278390245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347233 d

end

end A126760.P11238789479278390245

/-! ## A126760.P15234771245162256787

`A289207(A126759(n)+1)`
-/

namespace A126760.P15234771245162256787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A126759 n + 1).toNat

end

end A126760.P15234771245162256787

/-! ## A126760.P3224924153917298723

`A289207(2*A126759(n))/2`
-/

namespace A126760.P3224924153917298723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A126759 n).toNat : ℚ) / 2

end

end A126760.P3224924153917298723

/-! ## A126760.P7628102202911829656

`A153881(A331634(n+2))+A126759(n)`
-/

namespace A126760.P7628102202911829656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A331634 (n + 2)).toNat + A126759 n

end

end A126760.P7628102202911829656

/-! ## A126760.P5527126725264119981

`A254048(lcm(2, n))`
-/

namespace A126760.P5527126725264119981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (Nat.lcm 2 n)

end

end A126760.P5527126725264119981

/-! ## A126760.P3145744554682932956

`A254048(A109043(n))`
-/

namespace A126760.P3145744554682932956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A109043 n).toNat

end

end A126760.P3145744554682932956

/-! ## A126760.P10350719399664486869

`A254048(A342369(n))`
-/

namespace A126760.P10350719399664486869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (A342369 n).toNat

end

end A126760.P10350719399664486869

/-! ## A126760.P9679865328624075125

`A254048(A109045(n)/2)`
-/

namespace A126760.P9679865328624075125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (SequenceMachineLib.roundAway ((A109045 n : ℚ) / 2)).toNat

end

end A126760.P9679865328624075125

/-! ## A126760.P357557504493783760

`A254048(2*n)`
-/

namespace A126760.P357557504493783760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (2 * n)

end

end A126760.P357557504493783760

/-! ## A126760.P12004450887688120823

`gcd(A254048(n+n), A255308(n))`
-/

namespace A126760.P12004450887688120823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254048 (n + n)) (A255308 n)

end

end A126760.P12004450887688120823

/-! ## A126760.P11213045061983409160

`A359165(A004277(n))`
-/

namespace A126760.P11213045061983409160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A004277 n).toNat

end

end A126760.P11213045061983409160

/-! ## A126760.P18285874517463494894

`A359165(A008486(n))`
-/

namespace A126760.P18285874517463494894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A008486 n).toNat

end

end A126760.P18285874517463494894

/-! ## A126760.P15353219780999331124

`A359165(A008574(n)-n)`
-/

namespace A126760.P15353219780999331124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A008574 n - (n : ℤ)).toNat

end

end A126760.P15353219780999331124

/-! ## A126760.P11998151376531233494

`A359165(A008574(n))`
-/

namespace A126760.P11998151376531233494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A008574 n).toNat

end

end A126760.P11998151376531233494

/-! ## A126760.P10631945244430341155

`A323882(2*A008574(n))`
-/

namespace A126760.P10631945244430341155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (2 * A008574 n).toNat

end

end A126760.P10631945244430341155

/-! ## A126760.P6717828618382580704

`A323882(A008574(n)+A008574(n)+n)`
-/

namespace A126760.P6717828618382580704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (A008574 n + (A008574 n + (n : ℤ))).toNat

end

end A126760.P6717828618382580704

/-! ## A126760.P256257582858779645

`A359165(A008458(n))`
-/

namespace A126760.P256257582858779645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A008458 n).toNat

end

end A126760.P256257582858779645

/-! ## A126760.P1433306383120841805

`A359165(A022144(n))`
-/

namespace A126760.P1433306383120841805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (A022144 n).toNat

end

end A126760.P1433306383120841805

/-! ## A126760.P14031623257765242810

`A323882(A019442(n+2))`
-/

namespace A126760.P14031623257765242810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (A019442 (n + 2)).toNat

end

end A126760.P14031623257765242810

/-!
# A126762: a(n) is the least k > n such that the remainder when n^k is divided by k is n.

The programs for A126762, there is no canonical definition to state claims against.
-/

/-! ## A126762.P4809490492136712988

`A082048(n+1)-A055641(A182944(n+1))`
-/

namespace A126762.P4809490492136712988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082048 (n + 1) - A055641 (A182944 (n + 1)).toNat

end

end A126762.P4809490492136712988

/-!
# A126764: Number of L-convex polyominoes with n cells, that is, convex polyominoes where any two cells can be connected by a path internal to the polyomino and which has at most 1 change of direction (i.e., one of the four orientations of the letter L).

The programs for A126764, there is no canonical definition to state claims against.
-/

/-! ## A126764.P6918561842965902994

`A262689(A293016(n)+A020699(n))`
-/

namespace A126764.P6918561842965902994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A293016 n + A020699 n).toNat

end

end A126764.P6918561842965902994

/-! ## A126764.P11360950656636365925

`A000267(A081909(n))-A004277(n)`
-/

namespace A126764.P11360950656636365925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A081909 n).toNat - A004277 n

end

end A126764.P11360950656636365925

/-! ## A126764.P12256103634043579078

`A005041(A150149(n)-A109900(n))`
-/

namespace A126764.P12256103634043579078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A150149 n - A109900 n).toNat

end

end A126764.P12256103634043579078

/-!
# A126765: a(n) = number of L-convex polyominoes inscribed in an (n+1) X (n+1) box.

The programs for A126765, there is no canonical definition to state claims against.
-/

/-! ## A126765.P17635897384439500762

`A181370(∑[4*n]+1)`
-/

namespace A126765.P17635897384439500762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A126765.P17635897384439500762

/-!
# A126769: Primes p of the form k^4 + s where k > 1, s >= 1 and k^2 + s is also prime.

The programs for A126769, there is no canonical definition to state claims against.
-/

/-! ## A126769.P5677225480743237115

`p?[(n+14)*A306615(n+1)]`
-/

namespace A126769.P5677225480743237115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 14 : ℤ) * A306615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126769.P5677225480743237115

/-! ## A126769.P631394749982500364

`record[A156323(A319848(n+1)+1)]`
-/

namespace A126769.P631394749982500364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156323 (A319848 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126769.P631394749982500364

/-! ## A126769.P15228815866923908554

`p?[A128984(n+4)+A020639(A128984(2*n+11))+11]`
-/

namespace A126769.P15228815866923908554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128984 (n + 4) + A020639 (A128984 (2 * n + 11)).toNat + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126769.P15228815866923908554

/-! ## A126769.P16586609834518241605

`record[A156323(A319848(n+2))]`
-/

namespace A126769.P16586609834518241605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156323 (A319848 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126769.P16586609834518241605

/-!
# A126770: Unsigned version of A056588.

The programs for A126770, the canonical program `A126770.P1531991507527192649` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126770 has offset 0).

The definition of A126770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126770.P1531991507527192649

`A000045(row(n)-col(n)+1)*T(n-1,k-1)+A000045(col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126770

/-- `A000045(row(n)-col(n)+1)*T(n-1,k-1)+A000045(col(n)+1)*T(n-1,k)` -/
def P1531991507527192649.Spec : Prop :=
  ∀ n, P1531991507527192649.a n = A126770 n

theorem P1531991507527192649.correct : P1531991507527192649.Spec := by
  intro n
  simp only [A126770]

end A126770

/-! ## A126770.P7065118097865042174

`abs(A056588(n))`
-/

namespace A126770.P7065118097865042174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056588 n|

end

end A126770.P7065118097865042174

namespace A126770

/-- `abs(A056588(n))` -/
def P7065118097865042174.Spec : Prop :=
  ∀ n, P7065118097865042174.a n = A126770 n

end A126770

/-! ## A126770.P17357225565888202918

`root(A056588(2*n-n)², 2)`
-/

namespace A126770.P17357225565888202918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056588 (2 * n - n) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A126770.P17357225565888202918

namespace A126770

/-- `root(A056588(2*n-n)², 2)` -/
def P17357225565888202918.Spec : Prop :=
  ∀ n, P17357225565888202918.a n = (A126770 n : ℝ)

end A126770

/-! ## A126770.P4870660486125841374

`lcm((-1)^n, A056588(char[1]+n))`
-/

namespace A126770.P4870660486125841374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A056588 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A126770.P4870660486125841374

namespace A126770

/-- `lcm((-1)^n, A056588(char[1]+n))` -/
def P4870660486125841374.Spec : Prop :=
  ∀ n, (P4870660486125841374.a n : ℤ) = A126770 n

end A126770

/-! ## A126770.P8918460638204127301

`gcd(A000038(n), A056588(n))`
-/

namespace A126770.P8918460638204127301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056588 n)

end

end A126770.P8918460638204127301

namespace A126770

/-- `gcd(A000038(n), A056588(n))` -/
def P8918460638204127301.Spec : Prop :=
  ∀ n, (P8918460638204127301.a n : ℤ) = A126770 n

end A126770

/-! ## A126770.P15914586463403096764

`lcm(A056588(n), A057077(n))`
-/

namespace A126770.P15914586463403096764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056588 n) (A057077 n)

end

end A126770.P15914586463403096764

namespace A126770

/-- `lcm(A056588(n), A057077(n))` -/
def P15914586463403096764.Spec : Prop :=
  ∀ n, (P15914586463403096764.a n : ℤ) = A126770 n

end A126770

/-! ## A126770.P10272871593239188087

`gcd(-A056588(n), A025466(n))`
-/

namespace A126770.P10272871593239188087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A056588 n) (A025466 n)

end

end A126770.P10272871593239188087

namespace A126770

/-- `gcd(-A056588(n), A025466(n))` -/
def P10272871593239188087.Spec : Prop :=
  ∀ n, (P10272871593239188087.a n : ℤ) = A126770 n

end A126770

/-! ## A126770.P5825639214829584313

`sqrt(A056588(n)^A020639(2*(n+1)))`
-/

namespace A126770.P5825639214829584313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A056588 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A126770.P5825639214829584313

namespace A126770

/-- `sqrt(A056588(n)^A020639(2*(n+1)))` -/
def P5825639214829584313.Spec : Prop :=
  ∀ n, P5825639214829584313.a n = (A126770 n : ℝ)

end A126770

/-! ## A126770.P11600679506786594362

`sqrt(A056588(2*n-n)*A056588(n))`
-/

namespace A126770.P11600679506786594362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056588 (2 * n - n) * A056588 n : ℝ)

end

end A126770.P11600679506786594362

namespace A126770

/-- `sqrt(A056588(2*n-n)*A056588(n))` -/
def P11600679506786594362.Spec : Prop :=
  ∀ n, P11600679506786594362.a n = (A126770 n : ℝ)

end A126770

/-! ## A126770.P3851213765429231619

`A000045(col(n)+1)*T(n-1,k)+A000045(row(n)-col(n)+1)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A126770.P3851213765429231619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * SequenceMachineLib.triUpLeft a n

end

end A126770.P3851213765429231619

namespace A126770

/-- `A000045(col(n)+1)*T(n-1,k)+A000045(row(n)-col(n)+1)*T(n-1,k-1)` -/
def P3851213765429231619.Spec : Prop :=
  ∀ n, P3851213765429231619.a n = A126770 n

end A126770

/-!
# A126771: Primes p such that q-p = 60, where q is the next prime after p.

The programs for A126771, there is no canonical definition to state claims against.
-/

/-! ## A126771.P8750484990458549500

`A231609(eq[29, A193592(n)])`
-/

namespace A126771.P8750484990458549500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126771.P8750484990458549500

/-!
# A126772: Padovan factorials: a(n) is the product of the first n terms of the Padovan sequence. Similar to the Fibonacci factorial.

The programs for A126772, there is no canonical definition to state claims against.
-/

/-! ## A126772.P9454285136406968878

`∏[a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A126772.P9454285136406968878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126772.P9454285136406968878

/-! ## A126772.P877714298941678020

`∏[∑[A000931(n)]]`
-/

namespace A126772.P877714298941678020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126772.P877714298941678020

/-! ## A126772.P6897862373388933677

`∏[A173749(∑[n])]`
-/

namespace A126772.P6897862373388933677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173749 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126772.P6897862373388933677

/-! ## A126772.P7391046591407063158

`∏[A134816(n+1)]`
-/

namespace A126772.P7391046591407063158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126772.P7391046591407063158

/-! ## A126772.P1679329475760490766

`∏[A182097(n+2)]`
-/

namespace A126772.P1679329475760490766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A126772.P1679329475760490766

/-!
# A126773: a(n) = largest divisor of n which is coprime to the largest proper divisor of n. (a(1)=1.).

The programs for A126773, the canonical program `A126773.P10723208805660989938` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126773 has offset 1).

The definition of A126773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126773.P17995046352731268370

`lcm(n+1, A020639(n+1)²)/(n+1)`
-/

namespace A126773.P17995046352731268370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A020639 (n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A126773.P17995046352731268370

namespace A126773

/-- `lcm(n+1, A020639(n+1)²)/(n+1)` -/
def P17995046352731268370.Spec : Prop :=
  ∀ n, P17995046352731268370.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P10723208805660989938

`A055231(A028233(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A126773

/-- `A055231(A028233(n+1))` -/
def P10723208805660989938.Spec : Prop :=
  ∀ n, P10723208805660989938.a n = A126773 (n + 1)

theorem P10723208805660989938.correct : P10723208805660989938.Spec := by
  intro n
  simp only [A126773, Nat.add_sub_cancel]

end A126773

/-! ## A126773.P15746547536352163390

`A055231((n+1)/A028234(n+1))`
-/

namespace A126773.P15746547536352163390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A126773.P15746547536352163390

namespace A126773

/-- `A055231((n+1)/A028234(n+1))` -/
def P15746547536352163390.Spec : Prop :=
  ∀ n, P15746547536352163390.a n = A126773 (n + 1)

end A126773

/-! ## A126773.P7056520282801226838

`A134194((n+1)/A028234(n+1))`
-/

namespace A126773.P7056520282801226838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A126773.P7056520282801226838

namespace A126773

/-- `A134194((n+1)/A028234(n+1))` -/
def P7056520282801226838.Spec : Prop :=
  ∀ n, P7056520282801226838.a n = A126773 (n + 1)

end A126773

/-! ## A126773.P4832866171631016071

`A277698((n+1)/A028234(n+1))`
-/

namespace A126773.P4832866171631016071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat

end

end A126773.P4832866171631016071

namespace A126773

/-- `A277698((n+1)/A028234(n+1))` -/
def P4832866171631016071.Spec : Prop :=
  ∀ n, P4832866171631016071.a n = A126773 (n + 1)

end A126773

/-! ## A126773.P11873695979884862802

`A371573(n+1)/A032742(n+1)`
-/

namespace A126773.P11873695979884862802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371573 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A126773.P11873695979884862802

namespace A126773

/-- `A371573(n+1)/A032742(n+1)` -/
def P11873695979884862802.Spec : Prop :=
  ∀ n, P11873695979884862802.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P7052869843582238552

`gcd(A020639(n+1), A055231(n+1))`
-/

namespace A126773.P7052869843582238552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (n + 1)) (A055231 (n + 1))

end

end A126773.P7052869843582238552

namespace A126773

/-- `gcd(A020639(n+1), A055231(n+1))` -/
def P7052869843582238552.Spec : Prop :=
  ∀ n, (P7052869843582238552.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P6794671181042039556

`gcd(A088377(n+1), A099208(n+1))`
-/

namespace A126773.P6794671181042039556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088377 (n + 1)) (A099208 (n + 1))

end

end A126773.P6794671181042039556

namespace A126773

/-- `gcd(A088377(n+1), A099208(n+1))` -/
def P6794671181042039556.Spec : Prop :=
  ∀ n, (P6794671181042039556.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P15802876354210251310

`gcd(A061228(n+1), A277698(n+1))`
-/

namespace A126773.P15802876354210251310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061228 (n + 1)) (A277698 (n + 1))

end

end A126773.P15802876354210251310

namespace A126773

/-- `gcd(A061228(n+1), A277698(n+1))` -/
def P15802876354210251310.Spec : Prop :=
  ∀ n, (P15802876354210251310.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P12936766090381474801

`A340078(gcd(n+1, A068794(n+1)))`
-/

namespace A126773.P12936766090381474801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340078 (Int.gcd (n + 1 : ℤ) (A068794 (n + 1)))

end

end A126773.P12936766090381474801

namespace A126773

/-- `A340078(gcd(n+1, A068794(n+1)))` -/
def P12936766090381474801.Spec : Prop :=
  ∀ n, P12936766090381474801.a n = A126773 (n + 1)

end A126773

/-! ## A126773.P3383825361334400943

`gcd(n*A020639(n+1), A353274(n+1))`
-/

namespace A126773.P3383825361334400943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A020639 (n + 1)) (A353274 (n + 1))

end

end A126773.P3383825361334400943

namespace A126773

/-- `gcd(n*A020639(n+1), A353274(n+1))` -/
def P3383825361334400943.Spec : Prop :=
  ∀ n, (P3383825361334400943.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P5062551605067361701

`A007947(n+1)/A007947(A032742(n+1))`
-/

namespace A126773.P5062551605067361701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A032742 (n + 1)).toNat : ℚ)

end

end A126773.P5062551605067361701

namespace A126773

/-- `A007947(n+1)/A007947(A032742(n+1))` -/
def P5062551605067361701.Spec : Prop :=
  ∀ n, P5062551605067361701.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P18026958946466978000

`A020639(n+1)/A014673(A028233(n+1))`
-/

namespace A126773.P18026958946466978000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (A014673 (A028233 (n + 1)).toNat : ℚ)

end

end A126773.P18026958946466978000

namespace A126773

/-- `A020639(n+1)/A014673(A028233(n+1))` -/
def P18026958946466978000.Spec : Prop :=
  ∀ n, P18026958946466978000.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P1121830249107171438

`A007913(A056192((n+1)/A028234(n+1)))`
-/

namespace A126773.P1121830249107171438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A056192 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (n + 1) : ℚ))).toNat).toNat

end

end A126773.P1121830249107171438

namespace A126773

/-- `A007913(A056192((n+1)/A028234(n+1)))` -/
def P1121830249107171438.Spec : Prop :=
  ∀ n, P1121830249107171438.a n = A126773 (n + 1)

end A126773

/-! ## A126773.P17009204620352989558

`gcd(A020639(A000027(n+1)), A347120(n+1))`
-/

namespace A126773.P17009204620352989558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A000027 (n + 1)).toNat) (A347120 (n + 1))

end

end A126773.P17009204620352989558

namespace A126773

/-- `gcd(A020639(A000027(n+1)), A347120(n+1))` -/
def P17009204620352989558.Spec : Prop :=
  ∀ n, (P17009204620352989558.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P536093446013910292

`gcd(A020639(A020639(n+1)), A353274(n+1))`
-/

namespace A126773.P536093446013910292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A020639 (n + 1)).toNat) (A353274 (n + 1))

end

end A126773.P536093446013910292

namespace A126773

/-- `gcd(A020639(A020639(n+1)), A353274(n+1))` -/
def P536093446013910292.Spec : Prop :=
  ∀ n, (P536093446013910292.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P12232428457180260705

`gcd((n+1)/A032742(n+1), A318505(A028233(n+1)))`
-/

namespace A126773.P12232428457180260705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))) (A318505 (A028233 (n + 1)).toNat)

end

end A126773.P12232428457180260705

namespace A126773

/-- `gcd((n+1)/A032742(n+1), A318505(A028233(n+1)))` -/
def P12232428457180260705.Spec : Prop :=
  ∀ n, (P12232428457180260705.a n : ℤ) = A126773 (n + 1)

end A126773

/-! ## A126773.P17596009501522068890

`lcm(A020639(n+1), A032742(n+1))/A032742(n+1)`
-/

namespace A126773.P17596009501522068890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020639 (n + 1)) (A032742 (n + 1)) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A126773.P17596009501522068890

namespace A126773

/-- `lcm(A020639(n+1), A032742(n+1))/A032742(n+1)` -/
def P17596009501522068890.Spec : Prop :=
  ∀ n, P17596009501522068890.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P14241077359909422020

`A020639(n+1)/A071773(A020639(n+1)*A071773(n+1))`
-/

namespace A126773.P14241077359909422020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (A071773 (A020639 (n + 1) * A071773 (n + 1)).toNat : ℚ)

end

end A126773.P14241077359909422020

namespace A126773

/-- `A020639(n+1)/A071773(A020639(n+1)*A071773(n+1))` -/
def P14241077359909422020.Spec : Prop :=
  ∀ n, P14241077359909422020.a n = (A126773 (n + 1) : ℚ)

end A126773

/-! ## A126773.P1488540192213570665

`A020639(n+1)/A249739(A020639(n+1)*A249739(n+1))`
-/

namespace A126773.P1488540192213570665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (A249739 (A020639 (n + 1) * A249739 (n + 1)).toNat : ℚ)

end

end A126773.P1488540192213570665

namespace A126773

/-- `A020639(n+1)/A249739(A020639(n+1)*A249739(n+1))` -/
def P1488540192213570665.Spec : Prop :=
  ∀ n, P1488540192213570665.a n = (A126773 (n + 1) : ℚ)

end A126773

/-!
# A126775: a(n) = phi(n)^2 * d(n), where phi = A000010, d = A000005.

The programs for A126775, the canonical program `A126775.P10311173591226257013` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126775 has offset 1).

The definition of A126775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126775.P10311173591226257013

`A000010(n+1)²*A000005(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A126775

/-- `A000010(n+1)²*A000005(n+1)` -/
def P10311173591226257013.Spec : Prop :=
  ∀ n, P10311173591226257013.a n = A126775 (n + 1)

theorem P10311173591226257013.correct : P10311173591226257013.Spec := by
  intro n
  simp only [A126775, Nat.add_sub_cancel]

end A126775

/-! ## A126775.P156683995482554702

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²*∏{e}[n+1, #+1]`
-/

namespace A126775.P156683995482554702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2 * ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℚ)

end

end A126775.P156683995482554702

namespace A126775

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²*∏{e}[n+1, #+1]` -/
def P156683995482554702.Spec : Prop :=
  ∀ n, P156683995482554702.a n = (A126775 (n + 1) : ℚ)

end A126775

/-! ## A126775.P16246832698721620030

`(∑{d}[n+1, #+1]-∑{d}[n+1, #])*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²`
-/

namespace A126775.P16246832698721620030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)) ^ 2

end

end A126775.P16246832698721620030

namespace A126775

/-- `(∑{d}[n+1, #+1]-∑{d}[n+1, #])*((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])²` -/
def P16246832698721620030.Spec : Prop :=
  ∀ n, P16246832698721620030.a n = (A126775 (n + 1) : ℚ)

end A126775

/-! ## A126775.P10912962053575627437

`∑{d}[n+1, A000010(lcm(#, n+1))²]`
-/

namespace A126775.P10912962053575627437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.lcm d (n + 1)) ^ 2

end

end A126775.P10912962053575627437

namespace A126775

/-- `∑{d}[n+1, A000010(lcm(#, n+1))²]` -/
def P10912962053575627437.Spec : Prop :=
  ∀ n, P10912962053575627437.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P1503920876198438729

`∑{d}[n+1, A000010(gcd(n, #)+n)²]`
-/

namespace A126775.P1503920876198438729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Nat.gcd n d + n) ^ 2

end

end A126775.P1503920876198438729

namespace A126775

/-- `∑{d}[n+1, A000010(gcd(n, #)+n)²]` -/
def P1503920876198438729.Spec : Prop :=
  ∀ n, P1503920876198438729.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P13608548475090575390

`∑{d}[n+1, A000010(abs(n+1-#)+#)²]`
-/

namespace A126775.P13608548475090575390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (|(n + 1 : ℤ) - (d : ℤ)| + (d : ℤ)).toNat ^ 2

end

end A126775.P13608548475090575390

namespace A126775

/-- `∑{d}[n+1, A000010(abs(n+1-#)+#)²]` -/
def P13608548475090575390.Spec : Prop :=
  ∀ n, P13608548475090575390.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P18105238362455363063

`A000010(n+1)*A062355(n+1)`
-/

namespace A126775.P18105238362455363063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A062355 (n + 1)

end

end A126775.P18105238362455363063

namespace A126775

/-- `A000010(n+1)*A062355(n+1)` -/
def P18105238362455363063.Spec : Prop :=
  ∀ n, P18105238362455363063.a n = A126775 (n + 1)

theorem P18105238362455363063.correct : P18105238362455363063.Spec := by
  intro n
  simp only [A126775, Nat.add_sub_cancel, A126775.P18105238362455363063.a, A126775.P10311173591226257013.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A062355, A062355.P11902626262927596143.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126775

/-! ## A126775.P13063393090877710778

`A000005(n+1)*A127473(n+1)`
-/

namespace A126775.P13063393090877710778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A127473 (n + 1)

end

end A126775.P13063393090877710778

namespace A126775

/-- `A000005(n+1)*A127473(n+1)` -/
def P13063393090877710778.Spec : Prop :=
  ∀ n, P13063393090877710778.a n = A126775 (n + 1)

theorem P13063393090877710778.correct : P13063393090877710778.Spec := by
  intro n
  simp only [A126775, Nat.add_sub_cancel, A126775.P13063393090877710778.a, A126775.P10311173591226257013.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A127473, A127473.P9698007400369304439.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126775

/-! ## A126775.P9224598703739652723

`Δ[A002088(n)]²*A000005(n+1)`
-/

namespace A126775.P9224598703739652723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000005 (n + 1)

end

end A126775.P9224598703739652723

namespace A126775

/-- `Δ[A002088(n)]²*A000005(n+1)` -/
def P9224598703739652723.Spec : Prop :=
  ∀ n, P9224598703739652723.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P285950158827691788

`Δ[A005728(n)]²*A000005(n+1)`
-/

namespace A126775.P285950158827691788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A000005 (n + 1)

end

end A126775.P285950158827691788

namespace A126775

/-- `Δ[A005728(n)]²*A000005(n+1)` -/
def P285950158827691788.Spec : Prop :=
  ∀ n, P285950158827691788.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P9488661311220547009

`A000010(n+1)²*Δ[A006218(n)]`
-/

namespace A126775.P9488661311220547009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A126775.P9488661311220547009

namespace A126775

/-- `A000010(n+1)²*Δ[A006218(n)]` -/
def P9488661311220547009.Spec : Prop :=
  ∀ n, P9488661311220547009.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P6497359551502076239

`A000010(n+1)²*Δ[A054519(n)]`
-/

namespace A126775.P6497359551502076239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A126775.P6497359551502076239

namespace A126775

/-- `A000010(n+1)²*Δ[A054519(n)]` -/
def P6497359551502076239.Spec : Prop :=
  ∀ n, P6497359551502076239.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P13787436685291261506

`A062355(n+1)²/A000005(n+1)`
-/

namespace A126775.P13787436685291261506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062355 (n + 1) ^ 2 : ℚ) / (A000005 (n + 1) : ℚ)

end

end A126775.P13787436685291261506

namespace A126775

/-- `A062355(n+1)²/A000005(n+1)` -/
def P13787436685291261506.Spec : Prop :=
  ∀ n, P13787436685291261506.a n = (A126775 (n + 1) : ℚ)

end A126775

/-! ## A126775.P3313455314797313288

`abs(A000010(n+1)²*A329484(n+1))`
-/

namespace A126775.P3313455314797313288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (n + 1) ^ 2 * A329484 (n + 1)|

end

end A126775.P3313455314797313288

namespace A126775

/-- `abs(A000010(n+1)²*A329484(n+1))` -/
def P3313455314797313288.Spec : Prop :=
  ∀ n, P3313455314797313288.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P9717119301558990603

`A000010(n+1)²*sqrt(A035116(n+1))`
-/

namespace A126775.P9717119301558990603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ 2 : ℝ) * Real.sqrt (A035116 (n + 1) : ℝ)

end

end A126775.P9717119301558990603

namespace A126775

/-- `A000010(n+1)²*sqrt(A035116(n+1))` -/
def P9717119301558990603.Spec : Prop :=
  ∀ n, P9717119301558990603.a n = (A126775 (n + 1) : ℝ)

end A126775

/-! ## A126775.P4310235711798636589

`A000010(n+1)²*log2(A338506(n+1))`
-/

namespace A126775.P4310235711798636589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ 2 : ℝ) * Real.logb 2 (A338506 (n + 1) : ℝ)

end

end A126775.P4310235711798636589

namespace A126775

/-- `A000010(n+1)²*log2(A338506(n+1))` -/
def P4310235711798636589.Spec : Prop :=
  ∀ n, P4310235711798636589.a n = (A126775 (n + 1) : ℝ)

end A126775

/-! ## A126775.P16968667806179520029

`A000010(n+1)²*∑[A341062(n+1)]`
-/

namespace A126775.P16968667806179520029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126775.P16968667806179520029

namespace A126775

/-- `A000010(n+1)²*∑[A341062(n+1)]` -/
def P16968667806179520029.Spec : Prop :=
  ∀ n, P16968667806179520029.a n = A126775 (n + 1)

end A126775

/-! ## A126775.P14001523311969337890

`(A109606(n+1)+1)²*A000005(n+1)`
-/

namespace A126775.P14001523311969337890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) ^ 2 * A000005 (n + 1)

end

end A126775.P14001523311969337890

namespace A126775

/-- `(A109606(n+1)+1)²*A000005(n+1)` -/
def P14001523311969337890.Spec : Prop :=
  ∀ n, P14001523311969337890.a n = A126775 (n + 1)

theorem P14001523311969337890.correct : P14001523311969337890.Spec := by
  intro n
  simp only [A126775, Nat.add_sub_cancel, A126775.P14001523311969337890.a, A126775.P10311173591226257013.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126775

/-! ## A126775.P2727078152009959284

`(1-A039649(n+1))²*A000005(n+1)`
-/

namespace A126775.P2727078152009959284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A039649 (n + 1)) ^ 2 * A000005 (n + 1)

end

end A126775.P2727078152009959284

namespace A126775

/-- `(1-A039649(n+1))²*A000005(n+1)` -/
def P2727078152009959284.Spec : Prop :=
  ∀ n, P2727078152009959284.a n = A126775 (n + 1)

theorem P2727078152009959284.correct : P2727078152009959284.Spec := by
  intro n
  simp only [A126775, Nat.add_sub_cancel, A126775.P2727078152009959284.a, A126775.P10311173591226257013.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A126775

/-! ## A126775.P16264425465077101140

`∑{d}[n+1, A000010(n+1)²-A000010(#)]+n+1`
-/

namespace A126775.P16264425465077101140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (n + 1) ^ 2 - A000010 d) + (n + 1 : ℤ)

end

end A126775.P16264425465077101140

namespace A126775

/-- `∑{d}[n+1, A000010(n+1)²-A000010(#)]+n+1` -/
def P16264425465077101140.Spec : Prop :=
  ∀ n, P16264425465077101140.a n = A126775 (n + 1)

end A126775

/-!
# A126776: Basis orbits of n-dimensional cubes.

The programs for A126776, there is no canonical definition to state claims against.
-/

/-! ## A126776.P859011537899194061

`∑[A048486(a(n-1)+2*n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A126776.P859011537899194061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A048486 (f1 (n - 1) + (2 * n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A126776.P859011537899194061

/-!
# A126777: Size of unconstrained level set on Diamond(5) Diagonal Peg Solitaire at level n.

The programs for A126777, there is no canonical definition to state claims against.
-/

/-! ## A126777.P2766516310495245224

`A008619(n*A148159(2*n))`
-/

namespace A126777.P2766516310495245224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A148159 (2 * n)).toNat

end

end A126777.P2766516310495245224

/-!
# A126778: Number of functions f:{1,2,...,n}->{1,2,...,n} such that Im(f) contain two fixed elements.

The programs for A126778, the canonical program `A126778.P14055246872616603540` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126778 has offset 2).

The definition of A126778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126778.P14055246872616603540

`(n+2)^(n+2)-2*(n+1)^(n+2)+n^(n+2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126778

/-- `(n+2)^(n+2)-2*(n+1)^(n+2)+n^(n+2)` -/
def P14055246872616603540.Spec : Prop :=
  ∀ n, P14055246872616603540.a n = A126778 (n + 2)

theorem P14055246872616603540.correct : P14055246872616603540.Spec := by
  intro n
  simp only [A126778, Nat.add_sub_cancel]

end A126778

/-! ## A126778.P6665239188505607328

`2*A281596(n+2)`
-/

namespace A126778.P6665239188505607328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281596 (n + 2)

end

end A126778.P6665239188505607328

namespace A126778

/-- `2*A281596(n+2)` -/
def P6665239188505607328.Spec : Prop :=
  ∀ n, P6665239188505607328.a n = A126778 (n + 2)

end A126778

/-! ## A126778.P11975730515251604379

`A174551(∑[n+2]+3)`
-/

namespace A126778.P11975730515251604379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A126778.P11975730515251604379

namespace A126778

/-- `A174551(∑[n+2]+3)` -/
def P11975730515251604379.Spec : Prop :=
  ∀ n, P11975730515251604379.a n = A126778 (n + 2)

end A126778

/-! ## A126778.P14274331219310093052

`A391488(C(n+3, 2))`
-/

namespace A126778.P14274331219310093052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391488 (Nat.choose (n + 3) 2)

end

end A126778.P14274331219310093052

namespace A126778

/-- `A391488(C(n+3, 2))` -/
def P14274331219310093052.Spec : Prop :=
  ∀ n, P14274331219310093052.a n = A126778 (n + 2)

end A126778

/-! ## A126778.P11031622574297928039

`A391488(A253145(n+1))`
-/

namespace A126778.P11031622574297928039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391488 (A253145 (n + 1)).toNat

end

end A126778.P11031622574297928039

namespace A126778

/-- `A391488(A253145(n+1))` -/
def P11031622574297928039.Spec : Prop :=
  ∀ n, P11031622574297928039.a n = A126778 (n + 2)

end A126778

/-!
# A126779: Number of functions f:{1,2,...,n}->{1,2,...,n} such that Im(f) contains 3 fixed elements.

The programs for A126779, the canonical program `A126779.P2184081412226088387` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126779 has offset 3).

The definition of A126779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126779.P2184081412226088387

`(n+3)^(n+3)-3*(n+2)^(n+3)+3*(n+1)^(n+3)-n^(n+3)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126779

/-- `(n+3)^(n+3)-3*(n+2)^(n+3)+3*(n+1)^(n+3)-n^(n+3)` -/
def P2184081412226088387.Spec : Prop :=
  ∀ n, P2184081412226088387.a n = A126779 (n + 3)

theorem P2184081412226088387.correct : P2184081412226088387.Spec := by
  intro n
  simp only [A126779, Nat.add_sub_cancel]

end A126779

/-! ## A126779.P5744661949876701592

`6*A281595(n+3)`
-/

namespace A126779.P5744661949876701592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A281595 (n + 3)

end

end A126779.P5744661949876701592

namespace A126779

/-- `6*A281595(n+3)` -/
def P5744661949876701592.Spec : Prop :=
  ∀ n, P5744661949876701592.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P1151280670312007125

`A174551(A167614(n+2))`
-/

namespace A126779.P1151280670312007125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (A167614 (n + 2)).toNat

end

end A126779.P1151280670312007125

namespace A126779

/-- `A174551(A167614(n+2))` -/
def P1151280670312007125.Spec : Prop :=
  ∀ n, P1151280670312007125.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P2259961570766426615

`A174551(A052905(n)+8)`
-/

namespace A126779.P2259961570766426615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (A052905 n + 8).toNat

end

end A126779.P2259961570766426615

namespace A126779

/-- `A174551(A052905(n)+8)` -/
def P2259961570766426615.Spec : Prop :=
  ∀ n, P2259961570766426615.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P4031001437528801205

`A174551(eq[2, A141169(n)])`
-/

namespace A126779.P4031001437528801205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126779.P4031001437528801205

namespace A126779

/-- `A174551(eq[2, A141169(n)])` -/
def P4031001437528801205.Spec : Prop :=
  ∀ n, P4031001437528801205.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P12695203667955102867

`A174551(eq[3, A002262(n)])`
-/

namespace A126779.P12695203667955102867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126779.P12695203667955102867

namespace A126779

/-- `A174551(eq[3, A002262(n)])` -/
def P12695203667955102867.Spec : Prop :=
  ∀ n, P12695203667955102867.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P18444670535747717164

`A174551(eq[8, A059268(n)])`
-/

namespace A126779.P18444670535747717164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126779.P18444670535747717164

namespace A126779

/-- `A174551(eq[8, A059268(n)])` -/
def P18444670535747717164.Spec : Prop :=
  ∀ n, P18444670535747717164.a n = A126779 (n + 3)

end A126779

/-! ## A126779.P16992684619629022498

`A174551(eq[4, A002260(n+1)])`
-/

namespace A126779.P16992684619629022498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126779.P16992684619629022498

namespace A126779

/-- `A174551(eq[4, A002260(n+1)])` -/
def P16992684619629022498.Spec : Prop :=
  ∀ n, P16992684619629022498.a n = A126779 (n + 3)

end A126779

/-!
# A126780: Number of functions f:{1,2,...,n}->{1,2,...,n} such that Im(f) contains 4 fixed elements.

The programs for A126780, there is no canonical definition to state claims against.
-/

/-! ## A126780.P9394142182475870912

`A174551(eq[3, A141169(n)])`
-/

namespace A126780.P9394142182475870912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126780.P9394142182475870912

/-! ## A126780.P10413803940091098047

`A174551(eq[4, A002262(n)])`
-/

namespace A126780.P10413803940091098047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126780.P10413803940091098047

/-! ## A126780.P11730056492037547007

`A174551(eq[16, A059268(n)])`
-/

namespace A126780.P11730056492037547007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126780.P11730056492037547007

/-! ## A126780.P8591547399708598837

`A174551(eq[5, A002260(n+1)])`
-/

namespace A126780.P8591547399708598837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126780.P8591547399708598837

/-! ## A126780.P7470818013622531516

`A174551(eq[11, A037126(n+1)])`
-/

namespace A126780.P7470818013622531516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126780.P7470818013622531516

/-!
# A126781: Number of functions f:{1,2,...,n}->{1,2,...,n} such that Im(f) contains 6 fixed elements.

The programs for A126781, there is no canonical definition to state claims against.
-/

/-! ## A126781.P8595090518202741987

`A174551(eq[6, A002262(n)])`
-/

namespace A126781.P8595090518202741987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126781.P8595090518202741987

/-! ## A126781.P17011254105610915302

`A174551(eq[8, A141169(n)])`
-/

namespace A126781.P17011254105610915302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126781.P17011254105610915302

/-! ## A126781.P6283740184772426052

`A174551(eq[8, sqrt(A059268(n))])`
-/

namespace A126781.P6283740184772426052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059268 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A126781.P6283740184772426052

/-! ## A126781.P10490462081524556799

`A174551(A167499(n+5)+1)`
-/

namespace A126781.P10490462081524556799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (A167499 (n + 5) + 1).toNat

end

end A126781.P10490462081524556799

/-! ## A126781.P6071342575546757694

`A174551(eq[7, A002260(n+1)])`
-/

namespace A126781.P6071342575546757694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A126781.P6071342575546757694

/-!
# A126782: Primes of the form [n! mod (n!!+1)]/2, with n>=1.

The programs for A126782, there is no canonical definition to state claims against.
-/

/-! ## A126782.P6483869947303685810

`p?[ceil(Δ[A128882(n)/2])]`
-/

namespace A126782.P6483869947303685810
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128882 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126782.P6483869947303685810

/-! ## A126782.P873884710756756840

`p?[ceil(A007911(n+3)/2)]`
-/

namespace A126782.P873884710756756840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007911 (n + 3) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126782.P873884710756756840

/-!
# A126784: Primes p such that q-p = 32, where q is the next prime after p.

The programs for A126784, there is no canonical definition to state claims against.
-/

/-! ## A126784.P5677491911069717978

`A231609(A000124(n+15)+n)`
-/

namespace A126784.P5677491911069717978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A000124 (n + 15) + (n : ℤ)).toNat

end

end A126784.P5677491911069717978

/-! ## A126784.P3358937321256264331

`A231609(A000217(n+15)+n+1)`
-/

namespace A126784.P3358937321256264331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A000217 (n + 15) + (n + 1 : ℤ)).toNat

end

end A126784.P3358937321256264331

/-! ## A126784.P11169601295369726281

`A055670(A320714(n+1))-1`
-/

namespace A126784.P11169601295369726281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320714 (n + 1)).toNat - 1

end

end A126784.P11169601295369726281

/-! ## A126784.P3589619275735218051

`A153881(n+2)+A055670(A320714(n+1))`
-/

namespace A126784.P3589619275735218051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A055670 (A320714 (n + 1)).toNat

end

end A126784.P3589619275735218051

/-! ## A126784.P9278009826255056091

`A062157(2*(n+2))+A055670(A320714(n+1))`
-/

namespace A126784.P9278009826255056091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 2)) + A055670 (A320714 (n + 1)).toNat

end

end A126784.P9278009826255056091

/-!
# A126785: Numbers k such that 10*k + 11 is prime.

The programs for A126785, the canonical program `A126785.P45359050336835554` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126785 has offset 1).

The definition of A126785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126785.P5516435059815462608

`A024912(n+1)-1`
-/

namespace A126785.P5516435059815462608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) - 1

end

end A126785.P5516435059815462608

namespace A126785

/-- `A024912(n+1)-1` -/
def P5516435059815462608.Spec : Prop :=
  ∀ n, P5516435059815462608.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P4804020422604051144

`floor(A081759(n+1)/2)`
-/

namespace A126785.P4804020422604051144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081759 (n + 1) : ℚ) / 2⌋

end

end A126785.P4804020422604051144

namespace A126785

/-- `floor(A081759(n+1)/2)` -/
def P4804020422604051144.Spec : Prop :=
  ∀ n, P4804020422604051144.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P2099173592647041046

`A024894(n+1)/2-1`
-/

namespace A126785.P2099173592647041046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024894 (n + 1) : ℚ) / 2 - 1

end

end A126785.P2099173592647041046

namespace A126785

/-- `A024894(n+1)/2-1` -/
def P2099173592647041046.Spec : Prop :=
  ∀ n, P2099173592647041046.a n = (A126785 (n + 1) : ℚ)

end A126785

/-! ## A126785.P9015698019434339315

`floor(A030430(n+1)/10)-1`
-/

namespace A126785.P9015698019434339315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030430 (n + 1) : ℚ) / 10⌋ - 1

end

end A126785.P9015698019434339315

namespace A126785

/-- `floor(A030430(n+1)/10)-1` -/
def P9015698019434339315.Spec : Prop :=
  ∀ n, P9015698019434339315.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P45359050336835554

`A014682(A024894(n+1))-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126785

/-- `A014682(A024894(n+1))-1` -/
def P45359050336835554.Spec : Prop :=
  ∀ n, P45359050336835554.a n = A126785 (n + 1)

theorem P45359050336835554.correct : P45359050336835554.Spec := by
  intro n
  simp only [A126785, Nat.add_sub_cancel]

end A126785

/-! ## A126785.P4680906509673278209

`A081759(n+1)%A024912(n+1)`
-/

namespace A126785.P4680906509673278209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081759 (n + 1)) (A024912 (n + 1))

end

end A126785.P4680906509673278209

namespace A126785

/-- `A081759(n+1)%A024912(n+1)` -/
def P4680906509673278209.Spec : Prop :=
  ∀ n, P4680906509673278209.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P11363344767377747456

`A109039(A006047(n))+A024912(n+1)`
-/

namespace A126785.P11363344767377747456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A006047 n).toNat + A024912 (n + 1)

end

end A126785.P11363344767377747456

namespace A126785

/-- `A109039(A006047(n))+A024912(n+1)` -/
def P11363344767377747456.Spec : Prop :=
  ∀ n, P11363344767377747456.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P7122121476541241485

`A081759(n+1)-(A139368(n+1)+A102342(n+1))`
-/

namespace A126785.P7122121476541241485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) - (A139368 (n + 1) + A102342 (n + 1))

end

end A126785.P7122121476541241485

namespace A126785

/-- `A081759(n+1)-(A139368(n+1)+A102342(n+1))` -/
def P7122121476541241485.Spec : Prop :=
  ∀ n, P7122121476541241485.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P14907198165480285082

`A103876(A049511(n+1))-1`
-/

namespace A126785.P14907198165480285082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103876 (A049511 (n + 1)).toNat - 1

end

end A126785.P14907198165480285082

namespace A126785

/-- `A103876(A049511(n+1))-1` -/
def P14907198165480285082.Spec : Prop :=
  ∀ n, P14907198165480285082.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P11299192526032125486

`eq[1, A068695(n+1)]`
-/

namespace A126785.P11299192526032125486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126785.P11299192526032125486

namespace A126785

/-- `eq[1, A068695(n+1)]` -/
def P11299192526032125486.Spec : Prop :=
  ∀ n, (P11299192526032125486.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P3659786185305182882

`eq[1, A091088(n+1)]`
-/

namespace A126785.P3659786185305182882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126785.P3659786185305182882

namespace A126785

/-- `eq[1, A091088(n+1)]` -/
def P3659786185305182882.Spec : Prop :=
  ∀ n, (P3659786185305182882.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P16234845382406664380

`eq[1, A091088(n)]-1`
-/

namespace A126785.P16234845382406664380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A126785.P16234845382406664380

namespace A126785

/-- `eq[1, A091088(n)]-1` -/
def P16234845382406664380.Spec : Prop :=
  ∀ n, P16234845382406664380.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P8339063848435258902

`lt[A000005(10*n+11), 3]`
-/

namespace A126785.P8339063848435258902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126785.P8339063848435258902

namespace A126785

/-- `lt[A000005(10*n+11), 3]` -/
def P8339063848435258902.Spec : Prop :=
  ∀ n, (P8339063848435258902.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P14228296585310139174

`eq[1, A001222(10*(n+1)+1)]`
-/

namespace A126785.P14228296585310139174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126785.P14228296585310139174

namespace A126785

/-- `eq[1, A001222(10*(n+1)+1)]` -/
def P14228296585310139174.Spec : Prop :=
  ∀ n, (P14228296585310139174.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P12399683993065704083

`eq[2, A000005(10*(n+1)+1)]`
-/

namespace A126785.P12399683993065704083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126785.P12399683993065704083

namespace A126785

/-- `eq[2, A000005(10*(n+1)+1)]` -/
def P12399683993065704083.Spec : Prop :=
  ∀ n, (P12399683993065704083.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P2783725363627422546

`lt[Δ[n²], A020639(10*n+11)]`
-/

namespace A126785.P2783725363627422546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A126785.P2783725363627422546

namespace A126785

/-- `lt[Δ[n²], A020639(10*n+11)]` -/
def P2783725363627422546.Spec : Prop :=
  ∀ n, (P2783725363627422546.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P18391501933328816549

`lt[A001222(2*(5*n+2)+7), 2]`
-/

namespace A126785.P18391501933328816549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (5 * n + 2) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A126785.P18391501933328816549

namespace A126785

/-- `lt[A001222(2*(5*n+2)+7), 2]` -/
def P18391501933328816549.Spec : Prop :=
  ∀ n, (P18391501933328816549.a n : ℤ) = A126785 (n + 1)

end A126785

/-! ## A126785.P9471621410499559837

`A023443(A024912(n+1))`
-/

namespace A126785.P9471621410499559837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A024912 (n + 1)).toNat

end

end A126785.P9471621410499559837

namespace A126785

/-- `A023443(A024912(n+1))` -/
def P9471621410499559837.Spec : Prop :=
  ∀ n, P9471621410499559837.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P14525490690832211890

`eq[1, A001222(A017281(n))]-1`
-/

namespace A126785.P14525490690832211890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A126785.P14525490690832211890

namespace A126785

/-- `eq[1, A001222(A017281(n))]-1` -/
def P14525490690832211890.Spec : Prop :=
  ∀ n, P14525490690832211890.a n = A126785 (n + 1)

end A126785

/-! ## A126785.P7421810801463465004

`eq[6, A389358(2*n+1)]`
-/

namespace A126785.P7421810801463465004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389358 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A126785.P7421810801463465004

namespace A126785

/-- `eq[6, A389358(2*n+1)]` -/
def P7421810801463465004.Spec : Prop :=
  ∀ n, (P7421810801463465004.a n : ℤ) = A126785 (n + 1)

end A126785

/-!
# A126787: G.f.: B(x)*B(2!*x^2)*B(3!*x^3)*..., where B(x) is g.f. of A000142.

The programs for A126787, there is no canonical definition to state claims against.
-/

/-! ## A126787.P5756570987262458668

`A194403(A149412(n))`
-/

namespace A126787.P5756570987262458668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A149412 n).toNat

end

end A126787.P5756570987262458668

/-! ## A126787.P12126629658924684086

`A060715(3*A187018(n))`
-/

namespace A126787.P12126629658924684086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (3 * A187018 n).toNat

end

end A126787.P12126629658924684086

/-!
# A126788: Least prime q such that q*prime(n)# - 1 and q*prime(n)# + 1 are twin primes where p(i)# = i-th primorial.

The programs for A126788, there is no canonical definition to state claims against.
-/

/-! ## A126788.P3184567899587470830

`A046930(A119709(2*n+1)+A000111(n))+1`
-/

namespace A126788.P3184567899587470830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (A119709 (2 * n + 1) + A000111 n).toNat + 1

end

end A126788.P3184567899587470830

/-!
# A126789: a(n) is the smallest number such that the product of its digits is n times the sum of its digits, or 0 if no such number exists.

The programs for A126789, there is no canonical definition to state claims against.
-/

/-! ## A126789.P10250667942947788741

`A176623(∑[(n-∑{digits}[n, #])!])`
-/

namespace A126789.P10250667942947788741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126789.P10250667942947788741

/-! ## A126789.P13843761112890242081

`A176623(A062399(n+1))`
-/

namespace A126789.P13843761112890242081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176623 (A062399 (n + 1)).toNat

end

end A126789.P13843761112890242081

/-! ## A126789.P5072409250194815364

`A176623(A351870(n+1))`
-/

namespace A126789.P5072409250194815364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176623 (A351870 (n + 1)).toNat

end

end A126789.P5072409250194815364

/-! ## A126789.P1414895734468040722

`A176623(C(A038367(n+1), n))`
-/

namespace A126789.P1414895734468040722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176623 (Nat.choose (A038367 (n + 1)).toNat n)

end

end A126789.P1414895734468040722

/-! ## A126789.P12621749502157465158

`A176623(C(A161350(n+1), n))`
-/

namespace A126789.P12621749502157465158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176623 (Nat.choose (A161350 (n + 1)).toNat n)

end

end A126789.P12621749502157465158

/-!
# A126790: Prime numbers that are not Higgs' primes (numbers in A000040 not in A007459).

The programs for A126790, there is no canonical definition to state claims against.
-/

/-! ## A126790.P18312116751016518528

`p?[A028807(3*n+5)+A028782(n+1)]`
-/

namespace A126790.P18312116751016518528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028807 (3 * n + 5) + A028782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126790.P18312116751016518528

/-! ## A126790.P13766431075492027851

`p?[eq[A033264(n+1), A101422(n+3)]]`
-/

namespace A126790.P13766431075492027851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101422 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A126790.P13766431075492027851

/-!
# A126791: Binomial matrix applied to A111418.

The programs for A126791, there is no canonical definition to state claims against.
-/

/-! ## A126791.P9447792053533316730

`2*A110165(n)-A124733(n+1)`
-/

namespace A126791.P9447792053533316730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110165 n - A124733 (n + 1)

end

end A126791.P9447792053533316730

/-! ## A126791.P15533225215880205406

`A110165(n)+A110165(n+1)%A110165(n)`
-/

namespace A126791.P15533225215880205406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 n + Int.tmod (A110165 (n + 1)) (A110165 n)

end

end A126791.P15533225215880205406

/-! ## A126791.P9617338825343772521

`A026374(∑[char[∑[n]]]²+C(comp[∑[n]]-n, 2)+n)`
-/

namespace A126791.P9617338825343772521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n))

end

end A126791.P9617338825343772521

/-! ## A126791.P9258722685956012723

`A026374(A185869(n+1)+A025581(n))`
-/

namespace A126791.P9258722685956012723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A185869 (n + 1) + A025581 n).toNat

end

end A126791.P9258722685956012723

/-! ## A126791.P17704073754044813213

`A026386(A185869(n+1)+A025581(n))`
-/

namespace A126791.P17704073754044813213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A185869 (n + 1) + A025581 n).toNat

end

end A126791.P17704073754044813213

/-! ## A126791.P9738411110598995887

`A026374(A093995(n+1)+A064801(n+1))`
-/

namespace A126791.P9738411110598995887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A093995 (n + 1) + A064801 (n + 1)).toNat

end

end A126791.P9738411110598995887

/-! ## A126791.P609545135678831342

`A026386(A093995(n+1)+A064801(n+1))`
-/

namespace A126791.P609545135678831342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026386 (A093995 (n + 1) + A064801 (n + 1)).toNat

end

end A126791.P609545135678831342

/-!
# A126792: Removing the first, fourth, seventh, tenth ... term of the sequence yields the original sequence, augmented by 1.

The programs for A126792, the canonical program `A126792.P15384401414342231186` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126792 has offset 0).

The definition of A126792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126792.P15384401414342231186

`a(A004523(A038502(n)))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126792

/-- `a(A004523(A038502(n)))+1` -/
def P15384401414342231186.Spec : Prop :=
  ∀ n, (P15384401414342231186.a n : ℤ) = A126792 n

theorem P15384401414342231186.correct : P15384401414342231186.Spec := by
  intro n
  simp only [A126792]

end A126792

/-! ## A126792.P6375541479036678517

`A001222(A309104(n)+A036355(n))`
-/

namespace A126792.P6375541479036678517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A309104 n + A036355 n).toNat

end

end A126792.P6375541479036678517

namespace A126792

/-- `A001222(A309104(n)+A036355(n))` -/
def P6375541479036678517.Spec : Prop :=
  ∀ n, P6375541479036678517.a n = A126792 n

end A126792

/-! ## A126792.P14720673653867846478

`A001222(A002387(n)-A011929(n))`
-/

namespace A126792.P14720673653867846478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002387 n - A011929 n).toNat

end

end A126792.P14720673653867846478

namespace A126792

/-- `A001222(A002387(n)-A011929(n))` -/
def P14720673653867846478.Spec : Prop :=
  ∀ n, P14720673653867846478.a n = A126792 n

end A126792

/-! ## A126792.P6102876317247146440

`A302242(A185237(2*n+3)+A069274(n+1))`
-/

namespace A126792.P6102876317247146440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A185237 (2 * n + 3) + A069274 (n + 1)).toNat

end

end A126792.P6102876317247146440

namespace A126792

/-- `A302242(A185237(2*n+3)+A069274(n+1))` -/
def P6102876317247146440.Spec : Prop :=
  ∀ n, P6102876317247146440.a n = A126792 n

end A126792

/-!
# A126793: a(1) = 1; a(n+1) = Sum_{k|n} floor(a(k)/a(n/k)).

The programs for A126793, there is no canonical definition to state claims against.
-/

/-! ## A126793.P11256749583644729572

`A035984(A266362(∑[n]+1))-A035998(n+1)`
-/

namespace A126793.P11256749583644729572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035984 (A266362 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - A035998 (n + 1)

end

end A126793.P11256749583644729572

/-!
# A126794: a(1)=1. a(n+1) = a(n) + a(floor(sqrt(n))).

The programs for A126794, the canonical program `A126794.P14750002517863165336` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126794 has offset 1).

The definition of A126794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126794.P14750002517863165336

`a(n-1)+a(floor(sqrt(n))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A126794

/-- `a(n-1)+a(floor(sqrt(n))-1)` -/
def P14750002517863165336.Spec : Prop :=
  ∀ n, (P14750002517863165336.a n : ℤ) = A126794 (n + 1)

theorem P14750002517863165336.correct : P14750002517863165336.Spec := by
  intro n
  simp only [A126794, Nat.add_sub_cancel]

end A126794

/-! ## A126794.P10763504091031357493

`A132085((n+2)²)`
-/

namespace A126794.P10763504091031357493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 ((n + 2) ^ 2)

end

end A126794.P10763504091031357493

namespace A126794

/-- `A132085((n+2)²)` -/
def P10763504091031357493.Spec : Prop :=
  ∀ n, P10763504091031357493.a n = A126794 (n + 1)

end A126794

/-! ## A126794.P9994746501154556619

`A132015((n+2)²)/2`
-/

namespace A126794.P9994746501154556619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132015 ((n + 2) ^ 2) : ℚ) / 2

end

end A126794.P9994746501154556619

namespace A126794

/-- `A132015((n+2)²)/2` -/
def P9994746501154556619.Spec : Prop :=
  ∀ n, P9994746501154556619.a n = (A126794 (n + 1) : ℚ)

end A126794

/-! ## A126794.P7965667233336515494

`record[A132085(A291769(n)²)]`
-/

namespace A126794.P7965667233336515494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A291769 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A126794.P7965667233336515494

namespace A126794

/-- `record[A132085(A291769(n)²)]` -/
def P7965667233336515494.Spec : Prop :=
  ∀ n, P7965667233336515494.a n = A126794 (n + 1)

end A126794

/-! ## A126794.P8314000765124338645

`A001281(A132015((n+2)²))`
-/

namespace A126794.P8314000765124338645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A132015 ((n + 2) ^ 2)).toNat

end

end A126794.P8314000765124338645

namespace A126794

/-- `A001281(A132015((n+2)²))` -/
def P8314000765124338645.Spec : Prop :=
  ∀ n, P8314000765124338645.a n = A126794 (n + 1)

end A126794

/-! ## A126794.P16432921634379975627

`A000463(A132015((n+2)²)-1)`
-/

namespace A126794.P16432921634379975627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A132015 ((n + 2) ^ 2) - 1).toNat

end

end A126794.P16432921634379975627

namespace A126794

/-- `A000463(A132015((n+2)²)-1)` -/
def P16432921634379975627.Spec : Prop :=
  ∀ n, P16432921634379975627.a n = A126794 (n + 1)

end A126794

/-! ## A126794.P10035613416520481787

`A008619(A132015((n+2)²)-1)`
-/

namespace A126794.P10035613416520481787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132015 ((n + 2) ^ 2) - 1).toNat

end

end A126794.P10035613416520481787

namespace A126794

/-- `A008619(A132015((n+2)²)-1)` -/
def P10035613416520481787.Spec : Prop :=
  ∀ n, P10035613416520481787.a n = A126794 (n + 1)

end A126794

/-!
# A126795: a(n) = gcd(n, Product_{p|n} (p+1)), where the product is over the distinct primes p that divide n.

The programs for A126795, the canonical program `A126795.P799784804237801689` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126795 has offset 1).

The definition of A126795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A126795.P799784804237801689

`gcd(n+1, A048250(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126795

/-- `gcd(n+1, A048250(n+1))` -/
def P799784804237801689.Spec : Prop :=
  ∀ n, (P799784804237801689.a n : ℤ) = A126795 (n + 1)

theorem P799784804237801689.correct : P799784804237801689.Spec := by
  intro n
  simp only [A126795, Nat.add_sub_cancel]

end A126795

/-! ## A126795.P9062658639707600067

`gcd(n+1, ∏{p}[n+1, #+1])`
-/

namespace A126795.P9062658639707600067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A126795.P9062658639707600067

namespace A126795

/-- `gcd(n+1, ∏{p}[n+1, #+1])` -/
def P9062658639707600067.Spec : Prop :=
  ∀ n, (P9062658639707600067.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P4926117714167100375

`gcd(xor(n, -1), A325313(n+1))`
-/

namespace A126795.P4926117714167100375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A325313 (n + 1))

end

end A126795.P4926117714167100375

namespace A126795

/-- `gcd(xor(n, -1), A325313(n+1))` -/
def P4926117714167100375.Spec : Prop :=
  ∀ n, (P4926117714167100375.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P5839429353430214751

`gcd(A048250(n+1), A131738(n))`
-/

namespace A126795.P5839429353430214751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (n + 1)) (A131738 n)

end

end A126795.P5839429353430214751

namespace A126795

/-- `gcd(A048250(n+1), A131738(n))` -/
def P5839429353430214751.Spec : Prop :=
  ∀ n, (P5839429353430214751.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P11776825653734444104

`gcd(A153152(n), A323363(n+1))`
-/

namespace A126795.P11776825653734444104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153152 n) (A323363 (n + 1))

end

end A126795.P11776825653734444104

namespace A126795

/-- `gcd(A153152(n), A323363(n+1))` -/
def P11776825653734444104.Spec : Prop :=
  ∀ n, (P11776825653734444104.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P5805761420351034095

`gcd(A014683(n+1), A293228(n+1))`
-/

namespace A126795.P5805761420351034095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A293228 (n + 1))

end

end A126795.P5805761420351034095

namespace A126795

/-- `gcd(A014683(n+1), A293228(n+1))` -/
def P5805761420351034095.Spec : Prop :=
  ∀ n, (P5805761420351034095.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P12350723431097735028

`gcd(A306695(n+1), A323364(n+1))`
-/

namespace A126795.P12350723431097735028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306695 (n + 1)) (A323364 (n + 1))

end

end A126795.P12350723431097735028

namespace A126795

/-- `gcd(A306695(n+1), A323364(n+1))` -/
def P12350723431097735028.Spec : Prop :=
  ∀ n, (P12350723431097735028.a n : ℤ) = A126795 (n + 1)

end A126795

/-! ## A126795.P8260460083451286770

`A322318(A064549(n+1))`
-/

namespace A126795.P8260460083451286770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322318 (A064549 (n + 1)).toNat

end

end A126795.P8260460083451286770

namespace A126795

/-- `A322318(A064549(n+1))` -/
def P8260460083451286770.Spec : Prop :=
  ∀ n, P8260460083451286770.a n = A126795 (n + 1)

end A126795

/-! ## A126795.P16828858623055509312

`A322318((n+1)*A007947(n+1))`
-/

namespace A126795.P16828858623055509312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322318 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A126795.P16828858623055509312

namespace A126795

/-- `A322318((n+1)*A007947(n+1))` -/
def P16828858623055509312.Spec : Prop :=
  ∀ n, P16828858623055509312.a n = A126795 (n + 1)

end A126795

/-! ## A126795.P11373438457916396557

`A322318((n+1)²/A322318(n+1))`
-/

namespace A126795.P11373438457916396557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322318 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A322318 (n + 1) : ℚ))).toNat

end

end A126795.P11373438457916396557

namespace A126795

/-- `A322318((n+1)²/A322318(n+1))` -/
def P11373438457916396557.Spec : Prop :=
  ∀ n, P11373438457916396557.a n = A126795 (n + 1)

end A126795

/-! ## A126795.P7274277564276131105

`A322318(A304203(n+1))`
-/

namespace A126795.P7274277564276131105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322318 (A304203 (n + 1)).toNat

end

end A126795.P7274277564276131105

namespace A126795

/-- `A322318(A304203(n+1))` -/
def P7274277564276131105.Spec : Prop :=
  ∀ n, P7274277564276131105.a n = A126795 (n + 1)

end A126795

/-! ## A126795.P17009002727175793425

`gcd(A323363(n+1)+A060401(n+1)², A060401(n+1))`
-/

namespace A126795.P17009002727175793425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323363 (n + 1) + A060401 (n + 1) ^ 2) (A060401 (n + 1))

end

end A126795.P17009002727175793425

namespace A126795

/-- `gcd(A323363(n+1)+A060401(n+1)², A060401(n+1))` -/
def P17009002727175793425.Spec : Prop :=
  ∀ n, (P17009002727175793425.a n : ℤ) = A126795 (n + 1)

end A126795

/-!
# A126796: Number of complete partitions of n.

The programs for A126796, there is no canonical definition to state claims against.
-/

/-! ## A126796.P5102411152339803367

`A000041(n)-A365924(n)`
-/

namespace A126796.P5102411152339803367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365924 n

end

end A126796.P5102411152339803367

/-! ## A126796.P194773670880716177

`A027187(n)+A027193(n)-A365924(n)`
-/

namespace A126796.P194773670880716177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A365924 n)

end

end A126796.P194773670880716177

/-! ## A126796.P3049473374625616581

`∑[A002865(n)]-A365924(n)`
-/

namespace A126796.P3049473374625616581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365924 n

end

end A126796.P3049473374625616581

/-! ## A126796.P9465301714746042129

`∑[A085811(n+3)]-A365924(n)`
-/

namespace A126796.P9465301714746042129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365924 n

end

end A126796.P9465301714746042129

/-! ## A126796.P11992354815880949784

`A003106(n)+A039900(n)-A365924(n)`
-/

namespace A126796.P11992354815880949784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A365924 n)

end

end A126796.P11992354815880949784

/-! ## A126796.P7422344722226889486

`A035363(2*n)-A365924(n)`
-/

namespace A126796.P7422344722226889486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A365924 n

end

end A126796.P7422344722226889486

/-! ## A126796.P11829662339350193479

`A261036(∑[A002265(A166304(n))])`
-/

namespace A126796.P11829662339350193479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A166304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126796.P11829662339350193479

/-! ## A126796.P12603423490604006104

`A261036(n^ceil(atan(n))+n)`
-/

namespace A126796.P12603423490604006104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ))).toNat

end

end A126796.P12603423490604006104

/-! ## A126796.P4764801498024305034

`A261036(∑[gcd(n, C(2, n))+n])`
-/

namespace A126796.P4764801498024305034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A126796.P4764801498024305034

/-! ## A126796.P3812341228921977301

`A261036(round(1/acot(n))+n²)`
-/

namespace A126796.P3812341228921977301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n ^ 2 : ℤ)).toNat

end

end A126796.P3812341228921977301

/-! ## A126796.P1965937497164522886

`A261036(∑[2*n]+floor(acot(n)))`
-/

namespace A126796.P1965937497164522886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A126796.P1965937497164522886

/-! ## A126796.P16628712520770863162

`A261036(floor(acot(n))+n²+n)`
-/

namespace A126796.P16628712520770863162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n ^ 2 + n : ℤ)).toNat

end

end A126796.P16628712520770863162

/-! ## A126796.P3546080559913049475

`A261036(∑[2*n-char[1]]+1)`
-/

namespace A126796.P3546080559913049475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A126796.P3546080559913049475

/-! ## A126796.P4840109332747970007

`or(char[1], A261036((n+1)²))`
-/

namespace A126796.P4840109332747970007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261036 ((n + 1) ^ 2))

end

end A126796.P4840109332747970007

/-! ## A126796.P14073693293607819179

`A261036((n+1)²)^A178334(n)`
-/

namespace A126796.P14073693293607819179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261036 ((n + 1) ^ 2) : ℚ) ^ (A178334 n : ℤ)

end

end A126796.P14073693293607819179

/-! ## A126796.P17223277876913731564

`A261036((n+1)²)%A048573(n)`
-/

namespace A126796.P17223277876913731564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261036 ((n + 1) ^ 2)) (A048573 n)

end

end A126796.P17223277876913731564

/-! ## A126796.P17975797235626967929

`gcd(A000038(n), A261036((n+1)²))`
-/

namespace A126796.P17975797235626967929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261036 ((n + 1) ^ 2))

end

end A126796.P17975797235626967929

/-! ## A126796.P8220236152935094583

`A261036((n+1)²)+A000007(n+1)`
-/

namespace A126796.P8220236152935094583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 ((n + 1) ^ 2) + A000007 (n + 1)

end

end A126796.P8220236152935094583

/-! ## A126796.P5492828307957888077

`A007318(C(2, n))*A261036((n+1)²)`
-/

namespace A126796.P5492828307957888077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A261036 ((n + 1) ^ 2)

end

end A126796.P5492828307957888077

/-! ## A126796.P17491454861714660376

`A261036((n+1)²)+A008683(4*(n+1))`
-/

namespace A126796.P17491454861714660376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261036 ((n + 1) ^ 2) + A008683 (4 * (n + 1))

end

end A126796.P17491454861714660376

/-!
# A126797: Number of terms of A372187 that do not exceed 10^n.

The programs for A126797, there is no canonical definition to state claims against.
-/

/-! ## A126797.P11021336334658049668

`A325835(A307074(n))`
-/

namespace A126797.P11021336334658049668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325835 (A307074 n).toNat

end

end A126797.P11021336334658049668

/-! ## A126797.P12439128539418671939

`A071335(∑[A012244(n)])`
-/

namespace A126797.P12439128539418671939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A126797.P12439128539418671939

/-!
# A126798: A number k is included if, for at least one distinct prime p dividing n, p+1 divides k.

The programs for A126798, there is no canonical definition to state claims against.
-/

/-! ## A126798.P6231224439685036163

`lt[A322702(n+1), A323155(n+1)]+1`
-/

namespace A126798.P6231224439685036163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A126798.P6231224439685036163

/-! ## A126798.P15747129309191004542

`A014681(lt[A322702(n+1), A323155(n+1)])`
-/

namespace A126798.P15747129309191004542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A126798.P15747129309191004542

/-! ## A126798.P17165234072676950295

`∩[A088723(n+1), A318981(n+1)]`
-/

namespace A126798.P17165234072676950295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126798.P17165234072676950295

/-! ## A126798.P13929149629463258824

`∩[A088723(n+1), A135412(n+1)]`
-/

namespace A126798.P13929149629463258824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126798.P13929149629463258824

/-! ## A126798.P10563659813818087302

`filter[A045506(n+1), A374197(#)]`
-/

namespace A126798.P10563659813818087302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A126798.P10563659813818087302

/-!
# A126799: Triangle read by rows, 1 <= m <= n: t(n,m) = gcd(s(n,m), S(n,m)), where s(n,m) is an unsigned Stirling number of the first kind and S(n,m) is a Stirling number of the second kind.

The programs for A126799, the canonical program `A126799.P3102740258487970202` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A126799 has offset 1).

The definition of A126799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A126799.P3102740258487970202

`gcd(A048994(A080036(n)), A080417(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A126799

/-- `gcd(A048994(A080036(n)), A080417(n+1))` -/
def P3102740258487970202.Spec : Prop :=
  ∀ n, (P3102740258487970202.a n : ℤ) = A126799 (n + 1)

theorem P3102740258487970202.correct : P3102740258487970202.Spec := by
  intro n
  simp only [A126799, Nat.add_sub_cancel]

end A126799

/-! ## A126799.P14583091401958447563

`gcd(A008277(n+1), A130534(n))`
-/

namespace A126799.P14583091401958447563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008277 (n + 1)) (A130534 n)

end

end A126799.P14583091401958447563

namespace A126799

/-- `gcd(A008277(n+1), A130534(n))` -/
def P14583091401958447563.Spec : Prop :=
  ∀ n, (P14583091401958447563.a n : ℤ) = A126799 (n + 1)

end A126799

/-! ## A126799.P5910040921003018207

`gcd(A008275(n+1), A048993(comp[C(n, 2)]))`
-/

namespace A126799.P5910040921003018207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008275 (n + 1)) (A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A126799.P5910040921003018207

namespace A126799

/-- `gcd(A008275(n+1), A048993(comp[C(n, 2)]))` -/
def P5910040921003018207.Spec : Prop :=
  ∀ n, (P5910040921003018207.a n : ℤ) = A126799 (n + 1)

end A126799

/-! ## A126799.P16002142620905588405

`gcd(-A008275(n+1), A008278(A038722(n+1)))`
-/

namespace A126799.P16002142620905588405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A008275 (n + 1)) (A008278 (A038722 (n + 1)).toNat)

end

end A126799.P16002142620905588405

namespace A126799

/-- `gcd(-A008275(n+1), A008278(A038722(n+1)))` -/
def P16002142620905588405.Spec : Prop :=
  ∀ n, (P16002142620905588405.a n : ℤ) = A126799 (n + 1)

end A126799

/-! ## A126799.P9760410876507704377

`gcd(A019538(n+1), A048594(n+1))/A166350(n+1)`
-/

namespace A126799.P9760410876507704377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A019538 (n + 1)) (A048594 (n + 1)) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A126799.P9760410876507704377

namespace A126799

/-- `gcd(A019538(n+1), A048594(n+1))/A166350(n+1)` -/
def P9760410876507704377.Spec : Prop :=
  ∀ n, P9760410876507704377.a n = (A126799 (n + 1) : ℚ)

end A126799

/-! ## A126799.P17371800825520519448

`gcd(A130534(n), A213735(A061579(n)))`
-/

namespace A126799.P17371800825520519448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130534 n) (A213735 (A061579 n).toNat)

end

end A126799.P17371800825520519448

namespace A126799

/-- `gcd(A130534(n), A213735(A061579(n)))` -/
def P17371800825520519448.Spec : Prop :=
  ∀ n, (P17371800825520519448.a n : ℤ) = A126799 (n + 1)

end A126799

