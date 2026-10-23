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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273500: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A273500, the canonical program `A273500.P16328251982798064153` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273500 has offset 0).

The definition of A273500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273500.P16328251982798064153

`∑[A273499(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273500

/-- `∑[A273499(n)]` -/
def P16328251982798064153.Spec : Prop :=
  ∀ n, P16328251982798064153.a n = A273500 n

theorem P16328251982798064153.correct : P16328251982798064153.Spec := by
  intro n
  simp only [A273500]

end A273500

/-! ## A273500.P7005561513746471930

`∑[∑[A273501(n)]+1-A273501(n)]`
-/

namespace A273500.P7005561513746471930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273501 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P7005561513746471930

namespace A273500

/-- `∑[∑[A273501(n)]+1-A273501(n)]` -/
def P7005561513746471930.Spec : Prop :=
  ∀ n, P7005561513746471930.a n = A273500 n

end A273500

/-! ## A273500.P12009824958644998455

`∑[A016754(n)-A189007(n+1)]+1`
-/

namespace A273500.P12009824958644998455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A189007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273500.P12009824958644998455

namespace A273500

/-- `∑[A016754(n)-A189007(n+1)]+1` -/
def P12009824958644998455.Spec : Prop :=
  ∀ n, P12009824958644998455.a n = A273500 n

end A273500

/-! ## A273500.P14878983899035999494

`A273499(n%A273499(n))+a(n-1)` with `a(0)=1`
-/

namespace A273500.P14878983899035999494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273499 (Int.tmod (n : ℤ) (A273499 n)).toNat + a (n - 1)

end

end A273500.P14878983899035999494

namespace A273500

/-- `A273499(n%A273499(n))+a(n-1)` -/
def P14878983899035999494.Spec : Prop :=
  ∀ n, P14878983899035999494.a n = A273500 n

end A273500

/-! ## A273500.P17212201110842116543

`∑[A008740(A008458(n))-A189007(n+1)]`
-/

namespace A273500.P17212201110842116543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A189007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P17212201110842116543

namespace A273500

/-- `∑[A008740(A008458(n))-A189007(n+1)]` -/
def P17212201110842116543.Spec : Prop :=
  ∀ n, P17212201110842116543.a n = A273500 n

end A273500

/-! ## A273500.P17852015609975794407

`∑[A016754(n)-A008475(A189007(n+1))]`
-/

namespace A273500.P17852015609975794407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A008475 (A189007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P17852015609975794407

namespace A273500

/-- `∑[A016754(n)-A008475(A189007(n+1))]` -/
def P17852015609975794407.Spec : Prop :=
  ∀ n, P17852015609975794407.a n = A273500 n

end A273500

/-! ## A273500.P16960034952379515154

`∑[A093178(A016754(n)-A189007(n+1))]`
-/

namespace A273500.P16960034952379515154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A016754 n - A189007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P16960034952379515154

namespace A273500

/-- `∑[A093178(A016754(n)-A189007(n+1))]` -/
def P16960034952379515154.Spec : Prop :=
  ∀ n, P16960034952379515154.a n = A273500 n

end A273500

/-! ## A273500.P14989983031069988002

`∑[A109613(A016754(n)-A189007(n+1))]`
-/

namespace A273500.P14989983031069988002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A016754 n - A189007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273500.P14989983031069988002

namespace A273500

/-- `∑[A109613(A016754(n)-A189007(n+1))]` -/
def P14989983031069988002.Spec : Prop :=
  ∀ n, P14989983031069988002.a n = A273500 n

end A273500

/-!
# A273501: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A273501, the canonical program `A273501.P2635603986377445307` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273501 has offset 0).

The definition of A273501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273501.P2635603986377445307

`Δ[A273499(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273501

/-- `Δ[A273499(n)]` -/
def P2635603986377445307.Spec : Prop :=
  ∀ n, P2635603986377445307.a n = A273501 n

theorem P2635603986377445307.correct : P2635603986377445307.Spec := by
  intro n
  simp only [A273501]

end A273501

/-! ## A273501.P815891907534093696

`A273499(n+1)-A273499(n)`
-/

namespace A273501.P815891907534093696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - A273499 n

end

end A273501.P815891907534093696

namespace A273501

/-- `A273499(n+1)-A273499(n)` -/
def P815891907534093696.Spec : Prop :=
  ∀ n, P815891907534093696.a n = A273501 n

theorem P815891907534093696.correct : P815891907534093696.Spec := by
  intro n
  simp only [A273501, Nat.add_sub_cancel, A273501.P815891907534093696.a, A273501.P2635603986377445307.f1, A273501.P2635603986377445307.a, SequenceMachineLib.memo_apply]

end A273501

/-! ## A273501.P6749301280389712041

`Δ[or(1, A016754(n)-A189007(n+1))]`
-/

namespace A273501.P6749301280389712041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016754 n - A189007 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P6749301280389712041

namespace A273501

/-- `Δ[or(1, A016754(n)-A189007(n+1))]` -/
def P6749301280389712041.Spec : Prop :=
  ∀ n, P6749301280389712041.a n = A273501 n

end A273501

/-! ## A273501.P12340690827463947140

`8*(n+1)-A270107(A004273(n)+1-n)`
-/

namespace A273501.P12340690827463947140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) - A270107 (A004273 n + (1 - (n : ℤ))).toNat

end

end A273501.P12340690827463947140

namespace A273501

/-- `8*(n+1)-A270107(A004273(n)+1-n)` -/
def P12340690827463947140.Spec : Prop :=
  ∀ n, P12340690827463947140.a n = A273501 n

end A273501

/-! ## A273501.P1695653248541967571

`Δ[A008574(A002378(n))]-A270107(n)`
-/

namespace A273501.P1695653248541967571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A002378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270107 n

end

end A273501.P1695653248541967571

namespace A273501

/-- `Δ[A008574(A002378(n))]-A270107(n)` -/
def P1695653248541967571.Spec : Prop :=
  ∀ n, P1695653248541967571.a n = A273501 n

end A273501

/-! ## A273501.P2039953842023153537

`Δ[A028310(A016754(n)-A189007(n+1))]`
-/

namespace A273501.P2039953842023153537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016754 n - A189007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P2039953842023153537

namespace A273501

/-- `Δ[A028310(A016754(n)-A189007(n+1))]` -/
def P2039953842023153537.Spec : Prop :=
  ∀ n, P2039953842023153537.a n = A273501 n

end A273501

/-! ## A273501.P6920431845902216612

`Δ[A029578(A016754(n)-A189007(n+1))]`
-/

namespace A273501.P6920431845902216612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A016754 n - A189007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273501.P6920431845902216612

namespace A273501

/-- `Δ[A029578(A016754(n)-A189007(n+1))]` -/
def P6920431845902216612.Spec : Prop :=
  ∀ n, P6920431845902216612.a n = A273501 n

end A273501

/-!
# A273502: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A273502, there is no canonical definition to state claims against.
-/

/-! ## A273502.P15855707887971102294

`A273505(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273502.P15855707887971102294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273505 (n - 1) + a (n - 1)

end

end A273502.P15855707887971102294

/-! ## A273502.P5491585461489375379

`Δ[A273504(n)]-A273505(n)`
-/

namespace A273502.P5491585461489375379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273505 n

end

end A273502.P5491585461489375379

/-! ## A273502.P9858852770570268080

`A273504(n+1)-(A273505(n)+A273504(n))`
-/

namespace A273502.P9858852770570268080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273504 (n + 1) - (A273505 n + A273504 n)

end

end A273502.P9858852770570268080

/-! ## A273502.P4123625636939961543

`A020985(n)²+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P4123625636939961543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P4123625636939961543

/-! ## A273502.P42039220582051818

`A057427(n+1)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P42039220582051818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P42039220582051818

/-! ## A273502.P18247256660045978391

`A000034(2*n)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P18247256660045978391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P18247256660045978391

/-! ## A273502.P9127241220900930820

`A057979(2*n)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P9127241220900930820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P9127241220900930820

/-! ## A273502.P8613234806531994186

`A000035(2*n+1)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P8613234806531994186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P8613234806531994186

/-! ## A273502.P305006730695115684

`A001511(2*n+1)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P305006730695115684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P305006730695115684

/-! ## A273502.P2112440236997084438

`A019425(2*(n+1))+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P2112440236997084438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P2112440236997084438

/-! ## A273502.P2160770329986858058

`A209615(2*n+1)²+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P2160770329986858058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P2160770329986858058

/-! ## A273502.P10920198287891825226

`A000027(∑[A273505(n)]-A273505(n)+1)`
-/

namespace A273502.P10920198287891825226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n + 1).toNat

end

end A273502.P10920198287891825226

/-! ## A273502.P6329652275284292014

`A000265(∑[A273505(n)]-A273505(n)+1)`
-/

namespace A273502.P6329652275284292014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n + 1).toNat

end

end A273502.P6329652275284292014

/-! ## A273502.P10969434404698528904

`A105570(∑[A273505(n)]-A273505(n))+1`
-/

namespace A273502.P10969434404698528904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n).toNat + 1

end

end A273502.P10969434404698528904

/-! ## A273502.P16593682916747127901

`A005408((∑[A273505(n)]-A273505(n))/2)`
-/

namespace A273502.P16593682916747127901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273505 n : ℤ) : ℚ) / 2)).toNat

end

end A273502.P16593682916747127901

/-! ## A273502.P10773490874601367579

`A141310(∑[A273505(n)]-A273505(n))`
-/

namespace A273502.P10773490874601367579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n).toNat

end

end A273502.P10773490874601367579

/-! ## A273502.P10126275450957265638

`A328399(2*(∑[A273505(n)]-A273505(n)))`
-/

namespace A273502.P10126275450957265638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)).toNat

end

end A273502.P10126275450957265638

/-! ## A273502.P1898493471472966600

`A004442(∑[A273505(n)]-A273505(n))`
-/

namespace A273502.P1898493471472966600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n).toNat

end

end A273502.P1898493471472966600

/-! ## A273502.P17294307312266756157

`A109043(∑[A273505(n)]-A273505(n))+1`
-/

namespace A273502.P17294307312266756157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n).toNat + 1

end

end A273502.P17294307312266756157

/-! ## A273502.P2825789904368299141

`A265695(n²)+∑[A273505(n)]-A273505(n)`
-/

namespace A273502.P2825789904368299141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265695 (n ^ 2) + (∑ j ∈ Finset.range (n + 1), f1 j - A273505 n)

end

end A273502.P2825789904368299141

/-!
# A273503: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A273503, there is no canonical definition to state claims against.
-/

/-! ## A273503.P4934804572011525863

`A273502(2^n-1)`
-/

namespace A273503.P4934804572011525863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 (2 ^ n - 1)

end

end A273503.P4934804572011525863

/-! ## A273503.P10072065770323110085

`record[A273502(A091264(n))]`
-/

namespace A273503.P10072065770323110085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273503.P10072065770323110085

/-! ## A273503.P9588251676175291699

`record[A273502(A227351(n))]`
-/

namespace A273503.P9588251676175291699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273503.P9588251676175291699

/-! ## A273503.P5818476955600103356

`record[A273502(A255067(n))]`
-/

namespace A273503.P5818476955600103356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273503.P5818476955600103356

/-! ## A273503.P18276985256582467735

`or(1, A273502(A000225(n)))`
-/

namespace A273503.P18276985256582467735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273502 (A000225 n).toNat)

end

end A273503.P18276985256582467735

/-!
# A273504: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A273504, there is no canonical definition to state claims against.
-/

/-! ## A273504.P510776970203555737

`∑[∑[A273505(n)]-A273505(n)+1]`
-/

namespace A273504.P510776970203555737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273505 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P510776970203555737

/-! ## A273504.P15668060795066748023

`∑[A273502(n)]`
-/

namespace A273504.P15668060795066748023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P15668060795066748023

/-! ## A273504.P16040972729062140637

`A273502(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A273504.P16040972729062140637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273502 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A273504.P16040972729062140637

/-! ## A273504.P15413916851279913989

`∑[A005408((∑[A273505(n)]-A273505(n))/2)]`
-/

namespace A273504.P15413916851279913989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - A273505 n : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P15413916851279913989

/-! ## A273504.P12584327159611235619

`∑[A141310(∑[A273505(n)]-A273505(n))]`
-/

namespace A273504.P12584327159611235619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f2 j - A273505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P12584327159611235619

/-! ## A273504.P15501638871909171908

`∑[A328399(2*(∑[A273505(n)]-A273505(n)))]`
-/

namespace A273504.P15501638871909171908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * (∑ j ∈ Finset.range (n + 1), f2 j - A273505 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P15501638871909171908

/-! ## A273504.P16467272073502793451

`∑[A004442(∑[A273505(n)]-A273505(n))]`
-/

namespace A273504.P16467272073502793451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f2 j - A273505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273504.P16467272073502793451

/-!
# A273505: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A273505, there is no canonical definition to state claims against.
-/

/-! ## A273505.P17585522847150685492

`Δ[A273502(n)]`
-/

namespace A273505.P17585522847150685492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273505.P17585522847150685492

/-! ## A273505.P7851394299897401944

`A273502(n+1)-A273502(n)`
-/

namespace A273505.P7851394299897401944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273502 (n + 1) - A273502 n

end

end A273505.P7851394299897401944

/-! ## A273505.P18149494565768075791

`A273609(n)^A036427(n)!`
-/

namespace A273505.P18149494565768075791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n ^ Nat.factorial (A036427 n).toNat

end

end A273505.P18149494565768075791

/-! ## A273505.P15521380082034936465

`A273609(n)^A120043(n)!`
-/

namespace A273505.P15521380082034936465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273609 n ^ Nat.factorial (A120043 n).toNat

end

end A273505.P15521380082034936465

/-! ## A273505.P9108381637647209086

`A273609(n)%p?[A273581(n)]`
-/

namespace A273505.P9108381637647209086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273609 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A273505.P9108381637647209086

/-!
# A273511: Expansion of log(10) in base 2.

The programs for A273511, there is no canonical definition to state claims against.
-/

/-! ## A273511.P12085479343812856834

`xor(A029691(n+1), A051731(A063008(n)))`
-/

namespace A273511.P12085479343812856834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029691 (n + 1)) (A051731 (A063008 n).toNat)

end

end A273511.P12085479343812856834

/-! ## A273511.P12001494068993777224

`A267152(xor(2*(n+1), A276086(n+2)))`
-/

namespace A273511.P12001494068993777224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (Int.xor (2 * (n + 1) : ℤ) (A276086 (n + 2))).toNat

end

end A273511.P12001494068993777224

/-! ## A273511.P16042503878930461975

`A068431(p?[n²+7])`
-/

namespace A273511.P16042503878930461975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068431 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A273511.P16042503878930461975

/-! ## A273511.P12896254757557930334

`and(1, A249029((12*n+11)²))`
-/

namespace A273511.P12896254757557930334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A249029 ((12 * n + 11) ^ 2))

end

end A273511.P12896254757557930334

/-! ## A273511.P4055157878020125756

`A068431(A079138(n+1))`
-/

namespace A273511.P4055157878020125756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068431 (A079138 (n + 1)).toNat

end

end A273511.P4055157878020125756

/-!
# A273512: Expansion of Lemniscate constant or Gauss's constant in base 2.

The programs for A273512, there is no canonical definition to state claims against.
-/

/-! ## A273512.P6103528923679532281

`A257680(6*A120177(n+1))`
-/

namespace A273512.P6103528923679532281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (6 * A120177 (n + 1)).toNat

end

end A273512.P6103528923679532281

/-! ## A273512.P3264603386194798276

`A267037(A344358(n+1)%A344381(n))`
-/

namespace A273512.P3264603386194798276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267037 (Int.tmod (A344358 (n + 1)) (A344381 n)).toNat

end

end A273512.P3264603386194798276

/-! ## A273512.P16112667086774671848

`A092220(and(A142381(n+1), A142387(n+1)))`
-/

namespace A273512.P16112667086774671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (Int.land (A142381 (n + 1)) (A142387 (n + 1))).toNat

end

end A273512.P16112667086774671848

/-! ## A273512.P9525753643723947704

`A188044(A096231(n)+A064323(n))`
-/

namespace A273512.P9525753643723947704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (A096231 n + A064323 n).toNat

end

end A273512.P9525753643723947704

/-! ## A273512.P6468127628192384961

`A179850(A244212(n+2))`
-/

namespace A273512.P6468127628192384961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179850 (A244212 (n + 2)).toNat

end

end A273512.P6468127628192384961

/-!
# A273513: a(n) is the number of arithmetic triples n

The programs for A273513, there is no canonical definition to state claims against.
-/

/-! ## A273513.P6096259871020193308

`A262097(A157671(n+1)-(2*n+1))`
-/

namespace A273513.P6096259871020193308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A157671 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A273513.P6096259871020193308

/-! ## A273513.P214837148093537447

`A273515(n)-(A273514(n)+A262097(n))`
-/

namespace A273513.P214837148093537447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n - (A273514 n + A262097 n)

end

end A273513.P214837148093537447

/-! ## A273513.P16427830562089201427

`A262097(A117967(n)+A004488(n))`
-/

namespace A273513.P16427830562089201427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A117967 n + A004488 n).toNat

end

end A273513.P16427830562089201427

/-! ## A273513.P8843246628362476739

`A262097(A338242(n))`
-/

namespace A273513.P8843246628362476739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A338242 n).toNat

end

end A273513.P8843246628362476739

/-! ## A273513.P497093236102037094

`A262097(A338243(n+1))`
-/

namespace A273513.P497093236102037094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A338243 (n + 1)).toNat

end

end A273513.P497093236102037094

/-!
# A273514: a(n) is the number of arithmetic progressions m < n < p (three numbers in arithmetic progression) such that m and p contain no 2's in their ternary representation.

The programs for A273514, the canonical program `A273514.P15425265425330946745` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273514 has offset 0).

The definition of A273514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273514.P10386141911482295303

`A273515(n)-(A273513(n)+A262097(n))`
-/

namespace A273514.P10386141911482295303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n - (A273513 n + A262097 n)

end

end A273514.P10386141911482295303

namespace A273514

/-- `A273515(n)-(A273513(n)+A262097(n))` -/
def P10386141911482295303.Spec : Prop :=
  ∀ n, P10386141911482295303.a n = A273514 n

end A273514

/-! ## A273514.P15425265425330946745

`floor(A120880(2*n)/2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273514

/-- `floor(A120880(2*n)/2)` -/
def P15425265425330946745.Spec : Prop :=
  ∀ n, P15425265425330946745.a n = A273514 n

theorem P15425265425330946745.correct : P15425265425330946745.Spec := by
  intro n
  simp only [A273514]

end A273514

/-! ## A273514.P5145148421597007276

`A004526(A120880(2*n))`
-/

namespace A273514.P5145148421597007276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A120880 (2 * n)).toNat

end

end A273514.P5145148421597007276

namespace A273514

/-- `A004526(A120880(2*n))` -/
def P5145148421597007276.Spec : Prop :=
  ∀ n, P5145148421597007276.a n = A273514 n

end A273514

/-! ## A273514.P2090161679768508645

`A001057(A120880(2*n)-1)`
-/

namespace A273514.P2090161679768508645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A120880 (2 * n) - 1).toNat

end

end A273514.P2090161679768508645

namespace A273514

/-- `A001057(A120880(2*n)-1)` -/
def P2090161679768508645.Spec : Prop :=
  ∀ n, P2090161679768508645.a n = A273514 n

end A273514

/-! ## A273514.P2223142325489876864

`A110654(A120880(2*n)-1)`
-/

namespace A273514.P2223142325489876864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A120880 (2 * n) - 1).toNat

end

end A273514.P2223142325489876864

namespace A273514

/-- `A110654(A120880(2*n)-1)` -/
def P2223142325489876864.Spec : Prop :=
  ∀ n, P2223142325489876864.a n = A273514 n

end A273514

/-! ## A273514.P6126726363616766208

`A205565(2*n)-A039966(n)`
-/

namespace A273514.P6126726363616766208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (2 * n) - A039966 n

end

end A273514.P6126726363616766208

namespace A273514

/-- `A205565(2*n)-A039966(n)` -/
def P6126726363616766208.Spec : Prop :=
  ∀ n, P6126726363616766208.a n = A273514 n

end A273514

/-! ## A273514.P6030209084615775450

`A004001(A120880(2*n)+1)-1`
-/

namespace A273514.P6030209084615775450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A120880 (2 * n) + 1).toNat - 1

end

end A273514.P6030209084615775450

namespace A273514

/-- `A004001(A120880(2*n)+1)-1` -/
def P6030209084615775450.Spec : Prop :=
  ∀ n, P6030209084615775450.a n = A273514 n

end A273514

/-! ## A273514.P173891775277294069

`A120880(2*n)-A205565(2*n)`
-/

namespace A273514.P173891775277294069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 (2 * n) - A205565 (2 * n)

end

end A273514.P173891775277294069

namespace A273514

/-- `A120880(2*n)-A205565(2*n)` -/
def P173891775277294069.Spec : Prop :=
  ∀ n, P173891775277294069.a n = A273514 n

end A273514

/-! ## A273514.P9716217525419648177

`(A120880(2*n)-A039966(n))/2`
-/

namespace A273514.P9716217525419648177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 (2 * n) - A039966 n : ℚ) / 2

end

end A273514.P9716217525419648177

namespace A273514

/-- `(A120880(2*n)-A039966(n))/2` -/
def P9716217525419648177.Spec : Prop :=
  ∀ n, P9716217525419648177.a n = (A273514 n : ℚ)

end A273514

/-! ## A273514.P8855381708819436773

`A205565(2*n)*A316829(2*n)`
-/

namespace A273514.P8855381708819436773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (2 * n) * A316829 (2 * n)

end

end A273514.P8855381708819436773

namespace A273514

/-- `A205565(2*n)*A316829(2*n)` -/
def P8855381708819436773.Spec : Prop :=
  ∀ n, P8855381708819436773.a n = A273514 n

end A273514

/-! ## A273514.P4175680592575448578

`A105220(2*n)+A205565(2*n)-2`
-/

namespace A273514.P4175680592575448578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (2 * n) + (A205565 (2 * n) - 2)

end

end A273514.P4175680592575448578

namespace A273514

/-- `A105220(2*n)+A205565(2*n)-2` -/
def P4175680592575448578.Spec : Prop :=
  ∀ n, P4175680592575448578.a n = A273514 n

end A273514

/-! ## A273514.P17627607430819111408

`(A120880(2*n)-A088917(2*n))/2`
-/

namespace A273514.P17627607430819111408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 (2 * n) - A088917 (2 * n) : ℚ) / 2

end

end A273514.P17627607430819111408

namespace A273514

/-- `(A120880(2*n)-A088917(2*n))/2` -/
def P17627607430819111408.Spec : Prop :=
  ∀ n, P17627607430819111408.a n = (A273514 n : ℚ)

end A273514

/-! ## A273514.P1024244935533399710

`A120880(2*n)*A316829(2*n)/2`
-/

namespace A273514.P1024244935533399710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 (2 * n) * A316829 (2 * n) : ℚ) / 2

end

end A273514.P1024244935533399710

namespace A273514

/-- `A120880(2*n)*A316829(2*n)/2` -/
def P1024244935533399710.Spec : Prop :=
  ∀ n, P1024244935533399710.a n = (A273514 n : ℚ)

end A273514

/-! ## A273514.P16012745868955753097

`A120880(2*n)-A120880(2*n)/A105220(2*n)`
-/

namespace A273514.P16012745868955753097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 (2 * n) : ℚ) - (A120880 (2 * n) : ℚ) / (A105220 (2 * n) : ℚ)

end

end A273514.P16012745868955753097

namespace A273514

/-- `A120880(2*n)-A120880(2*n)/A105220(2*n)` -/
def P16012745868955753097.Spec : Prop :=
  ∀ n, P16012745868955753097.a n = (A273514 n : ℚ)

end A273514

/-! ## A273514.P2670590389759415767

`lcm(A205565(2*n+1)-A205565(2*n), A205565(2*n))`
-/

namespace A273514.P2670590389759415767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A205565 (2 * n + 1) - A205565 (2 * n)) (A205565 (2 * n))

end

end A273514.P2670590389759415767

namespace A273514

/-- `lcm(A205565(2*n+1)-A205565(2*n), A205565(2*n))` -/
def P2670590389759415767.Spec : Prop :=
  ∀ n, (P2670590389759415767.a n : ℤ) = A273514 n

end A273514

/-!
# A273515: The number of times n is rejected from the Stanley sequence S(0,1), A005836.

The programs for A273515, there is no canonical definition to state claims against.
-/

/-! ## A273515.P1663866199504428256

`A273513(n)+A273514(n)+A262097(n)`
-/

namespace A273515.P1663866199504428256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n + A273514 n + A262097 n

end

end A273515.P1663866199504428256

/-! ## A273515.P7276826584203294304

`A273513(n)+A273514(n)+A273513(A338242(n))`
-/

namespace A273515.P7276826584203294304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n + (A273514 n + A273513 (A338242 n).toNat)

end

end A273515.P7276826584203294304

/-! ## A273515.P6264167481204598237

`A098893(A059128(2*n)²)`
-/

namespace A273515.P6264167481204598237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098893 (A059128 (2 * n) ^ 2).toNat

end

end A273515.P6264167481204598237

/-!
# A273523: Numbers n such that 13*14^n-1 is prime.

The programs for A273523, there is no canonical definition to state claims against.
-/

/-! ## A273523.P8494304284287044218

`A003961(n+1)*A272351(A126646(2*n))`
-/

namespace A273523.P8494304284287044218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A272351 (A126646 (2 * n)).toNat

end

end A273523.P8494304284287044218

/-! ## A273523.P258525975895425878

`A003961(n+1)*A115561(A005809(n))`
-/

namespace A273523.P258525975895425878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A115561 (A005809 n).toNat

end

end A273523.P258525975895425878

/-!
# A273524: Numbers n such that 7^n-6^(n-1) is prime.

The programs for A273524, there is no canonical definition to state claims against.
-/

/-! ## A273524.P983051512675217098

`∑[A138330(A195865(2*(n+2)))*A238552(2*(n+2))]`
-/

namespace A273524.P983051512675217098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (A195865 (2 * (n + 2))).toNat * A238552 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273524.P983051512675217098

/-!
# A273525: Start with the set {0, 1}. At each step replace the set with the set of means of all its nonempty subsets. a(n) is the size of the set after the n-th step.

The programs for A273525, there is no canonical definition to state claims against.
-/

/-! ## A273525.P16224916885080950658

`A147788(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A273525.P16224916885080950658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A147788 (a (n - 1)).toNat

end

end A273525.P16224916885080950658

/-!
# A273526: Number of 123-avoiding indecomposable permutations.

The programs for A273526, the canonical program `A273526.P17885839122535737632` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273526 has offset 1).

The definition of A273526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273526.P17885839122535737632

`C(2*(n+1), n+1)/(n+2)-(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273526

/-- `C(2*(n+1), n+1)/(n+2)-(n+1)+1` -/
def P17885839122535737632.Spec : Prop :=
  ∀ n, P17885839122535737632.a n = (A273526 (n + 1) : ℚ)

end A273526

/-! ## A273526.P17360247111059704396

`∏[2*(2*n+1)/(n+2)]-n`
-/

namespace A273526.P17360247111059704396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A273526.P17360247111059704396

namespace A273526

/-- `∏[2*(2*n+1)/(n+2)]-n` -/
def P17360247111059704396.Spec : Prop :=
  ∀ n, P17360247111059704396.a n = (A273526 (n + 1) : ℚ)

end A273526

/-! ## A273526.P3109969726555546109

`∑[abs(Δ[A246604(n)])]`
-/

namespace A273526.P3109969726555546109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273526.P3109969726555546109

namespace A273526

/-- `∑[abs(Δ[A246604(n)])]` -/
def P3109969726555546109.Spec : Prop :=
  ∀ n, P3109969726555546109.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P8582541492014829241

`∑[abs(1-A000245(n))]`
-/

namespace A273526.P8582541492014829241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000245 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273526.P8582541492014829241

namespace A273526

/-- `∑[abs(1-A000245(n))]` -/
def P8582541492014829241.Spec : Prop :=
  ∀ n, P8582541492014829241.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P17657824297595020246

`abs(∑[A071724(n)]-n)`
-/

namespace A273526.P17657824297595020246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A273526.P17657824297595020246

namespace A273526

/-- `abs(∑[A071724(n)]-n)` -/
def P17657824297595020246.Spec : Prop :=
  ∀ n, P17657824297595020246.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P2591190771785089883

`abs(n-record[A097331(n)])`
-/

namespace A273526.P2591190771785089883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A273526.P2591190771785089883

namespace A273526

/-- `abs(n-record[A097331(n)])` -/
def P2591190771785089883.Spec : Prop :=
  ∀ n, P2591190771785089883.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P9537550735203621078

`abs(A000108(n+1)-n)`
-/

namespace A273526.P9537550735203621078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (n + 1) - (n : ℤ)|

end

end A273526.P9537550735203621078

namespace A273526

/-- `abs(A000108(n+1)-n)` -/
def P9537550735203621078.Spec : Prop :=
  ∀ n, P9537550735203621078.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P1696335795270513106

`abs(A120588(n+2)-n)`
-/

namespace A273526.P1696335795270513106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120588 (n + 2) - (n : ℤ)|

end

end A273526.P1696335795270513106

namespace A273526

/-- `abs(A120588(n+2)-n)` -/
def P1696335795270513106.Spec : Prop :=
  ∀ n, P1696335795270513106.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P1926945919723903592

`∑[abs(1-Δ[A000108(n)])]`
-/

namespace A273526.P1926945919723903592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273526.P1926945919723903592

namespace A273526

/-- `∑[abs(1-Δ[A000108(n)])]` -/
def P1926945919723903592.Spec : Prop :=
  ∀ n, P1926945919723903592.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P12729982400144614920

`abs(n-A000108(2*n-(n-1)))`
-/

namespace A273526.P12729982400144614920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A000108 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat|

end

end A273526.P12729982400144614920

namespace A273526

/-- `abs(n-A000108(2*n-(n-1)))` -/
def P12729982400144614920.Spec : Prop :=
  ∀ n, P12729982400144614920.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P2330559927878255735

`abs(n-Δ[A014137(n)])`
-/

namespace A273526.P2330559927878255735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A273526.P2330559927878255735

namespace A273526

/-- `abs(n-Δ[A014137(n)])` -/
def P2330559927878255735.Spec : Prop :=
  ∀ n, P2330559927878255735.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P5009215210109901945

`floor(A068875(n+1)/2-n)`
-/

namespace A273526.P5009215210109901945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068875 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A273526.P5009215210109901945

namespace A273526

/-- `floor(A068875(n+1)/2-n)` -/
def P5009215210109901945.Spec : Prop :=
  ∀ n, P5009215210109901945.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P15042850717678248978

`Δ[A014138(n)-A161680(n)]`
-/

namespace A273526.P15042850717678248978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273526.P15042850717678248978

namespace A273526

/-- `Δ[A014138(n)-A161680(n)]` -/
def P15042850717678248978.Spec : Prop :=
  ∀ n, P15042850717678248978.a n = A273526 (n + 1)

end A273526

/-! ## A273526.P13813602287367931071

`abs(A099364(2*n)-n)`
-/

namespace A273526.P13813602287367931071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099364 (2 * n) - (n : ℤ)|

end

end A273526.P13813602287367931071

namespace A273526

/-- `abs(A099364(2*n)-n)` -/
def P13813602287367931071.Spec : Prop :=
  ∀ n, P13813602287367931071.a n = A273526 (n + 1)

end A273526

/-!
# A273527: a(n) is the smallest exponent > 1 such that p^a(n) begins with p, where p is the n-th prime.

The programs for A273527, there is no canonical definition to state claims against.
-/

/-! ## A273527.P16601160328524984063

`A051248(A000040(n+1))`
-/

namespace A273527.P16601160328524984063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (A000040 (n + 1)).toNat

end

end A273527.P16601160328524984063

/-! ## A273527.P7573044939847830721

`A051248(p?[comp[n²]])`
-/

namespace A273527.P7573044939847830721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A273527.P7573044939847830721

/-! ## A273527.P16685278933719041130

`A051248(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A273527.P16685278933719041130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273527.P16685278933719041130

/-! ## A273527.P9562920538086795241

`A051248(Δ[A007504(n)])`
-/

namespace A273527.P9562920538086795241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (n + 1) - f1 n).toNat

end

end A273527.P9562920538086795241

/-! ## A273527.P14791140613160732985

`A051248(A008578(n+2))`
-/

namespace A273527.P14791140613160732985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (A008578 (n + 2)).toNat

end

end A273527.P14791140613160732985

/-! ## A273527.P1756127133453252682

`A051248(A182986(n+2))`
-/

namespace A273527.P1756127133453252682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (A182986 (n + 2)).toNat

end

end A273527.P1756127133453252682

/-! ## A273527.P10054186131541753488

`A051248(eq[0, A051699(n)])`
-/

namespace A273527.P10054186131541753488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273527.P10054186131541753488

/-! ## A273527.P11286085503850468503

`A051248(eq[1, A003415(n)])`
-/

namespace A273527.P11286085503850468503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273527.P11286085503850468503

/-! ## A273527.P5893852761671289179

`A051248(eq[1, A032741(n)])`
-/

namespace A273527.P5893852761671289179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273527.P5893852761671289179

/-! ## A273527.P6634796174931450744

`A051248(record[p?[A051274(n)]])`
-/

namespace A273527.P6634796174931450744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273527.P6634796174931450744

/-! ## A273527.P9502026749848896081

`A051248(record[p?[A051275(n)]])`
-/

namespace A273527.P9502026749848896081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273527.P9502026749848896081

/-! ## A273527.P10386516878686050588

`A051248(record[A006530(n+2)])`
-/

namespace A273527.P10386516878686050588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273527.P10386516878686050588

/-! ## A273527.P3180021291770276200

`A051248(record[A014963(n+2)])`
-/

namespace A273527.P3180021291770276200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273527.P3180021291770276200

/-! ## A273527.P1938672415746193623

`A051248(record[A020639(n+2)])`
-/

namespace A273527.P1938672415746193623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273527.P1938672415746193623

/-! ## A273527.P14581467328485807835

`A051248(A001748(n+1)/3)`
-/

namespace A273527.P14581467328485807835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A273527.P14581467328485807835

/-! ## A273527.P12776460498991035023

`A051248(∏{d}[p?[A018252(n+1)-7], #])`
-/

namespace A273527.P12776460498991035023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A273527.P12776460498991035023

/-! ## A273527.P14567032104689387710

`A051248(∏{d}[A000040(2*n-(n-1)), #])`
-/

namespace A273527.P14567032104689387710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A273527.P14567032104689387710

/-! ## A273527.P1981041139250695164

`A051248(A007504(n+1)-A007504(n))`
-/

namespace A273527.P1981041139250695164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (A007504 (n + 1) - A007504 n).toNat

end

end A273527.P1981041139250695164

/-!
# A273528: Triangle T(n,m) (n >= 1, 0 <= m < n) giving coefficients of (n-1)! P_n, where P_n is the polynomial formula for row n of A213086.

The programs for A273528, there is no canonical definition to state claims against.
-/

/-! ## A273528.P11844516686118242630

`A325799(A008458(n))+A291680(n)`
-/

namespace A273528.P11844516686118242630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (A008458 n).toNat + A291680 n

end

end A273528.P11844516686118242630

/-! ## A273528.P8447953120110963311

`A286334(3*A143396(n))`
-/

namespace A273528.P8447953120110963311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (3 * A143396 n).toNat

end

end A273528.P8447953120110963311

/-! ## A273528.P11772658280406826975

`∑{e}[A293230(A261719(n)), #]`
-/

namespace A273528.P11772658280406826975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 (A261719 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A273528.P11772658280406826975

/-! ## A273528.P16801640010128883926

`A051699(A227562(n)+A000081(n))`
-/

namespace A273528.P16801640010128883926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A227562 (n + 19) + A000081 n).toNat

end

end A273528.P16801640010128883926

/-! ## A273528.P14435053033515558434

`A291680(n)+A216600(A128363(n+1))`
-/

namespace A273528.P14435053033515558434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 n + A216600 (A128363 (n + 1)).toNat

end

end A273528.P14435053033515558434

/-!
# A273529: Primes p of the form x^2 + y^2 such that p+1 is the sum of the two nonzero squares in exactly 2 ways.

The programs for A273529, the canonical program `A273529.P14030670400839210133` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273529 has offset 1).

The definition of A273529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273529.P14030670400839210133

`p?[A017077(A064816(n+1))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A273529

/-- `p?[A017077(A064816(n+1))]` -/
def P14030670400839210133.Spec : Prop :=
  ∀ n, P14030670400839210133.a n = A273529 (n + 1)

theorem P14030670400839210133.correct : P14030670400839210133.Spec := by
  intro n
  simp only [A273529, Nat.add_sub_cancel]

end A273529

/-! ## A273529.P8589578059056404285

`p?[A042948(A085625(n+1))]`
-/

namespace A273529.P8589578059056404285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A085625 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P8589578059056404285

namespace A273529

/-- `p?[A042948(A085625(n+1))]` -/
def P8589578059056404285.Spec : Prop :=
  ∀ n, P8589578059056404285.a n = A273529 (n + 1)

end A273529

/-! ## A273529.P13993961480062146546

`p?[A042963(A085625(n+2))]`
-/

namespace A273529.P13993961480062146546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A085625 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P13993961480062146546

namespace A273529

/-- `p?[A042963(A085625(n+2))]` -/
def P13993961480062146546.Spec : Prop :=
  ∀ n, P13993961480062146546.a n = A273529 (n + 1)

end A273529

/-! ## A273529.P4803785184729148508

`p?[A009001(A025285(n+1)-1)]`
-/

namespace A273529.P4803785184729148508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A025285 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P4803785184729148508

namespace A273529

/-- `p?[A009001(A025285(n+1)-1)]` -/
def P4803785184729148508.Spec : Prop :=
  ∀ n, P4803785184729148508.a n = A273529 (n + 1)

end A273529

/-! ## A273529.P17236682165121712614

`p?[A005408(4*A064816(n+1))]`
-/

namespace A273529.P17236682165121712614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (4 * A064816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273529.P17236682165121712614

namespace A273529

/-- `p?[A005408(4*A064816(n+1))]` -/
def P17236682165121712614.Spec : Prop :=
  ∀ n, P17236682165121712614.a n = A273529 (n + 1)

end A273529

/-!
# A273531: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A273531, the canonical program `A273531.P16096127716137226056` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273531 has offset 0).

The definition of A273531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273531.P7642068649394337571

`A274216(n%2+n)`
-/

namespace A273531.P7642068649394337571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 (n % 2 + n)

end

end A273531.P7642068649394337571

namespace A273531

/-- `A274216(n%2+n)` -/
def P7642068649394337571.Spec : Prop :=
  ∀ n, P7642068649394337571.a n = A273531 n

end A273531

/-! ## A273531.P5622164293985967398

`A274216(Δ[A007590(n)])`
-/

namespace A273531.P5622164293985967398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 (f1 (n + 1) - f1 n).toNat

end

end A273531.P5622164293985967398

namespace A273531

/-- `A274216(Δ[A007590(n)])` -/
def P5622164293985967398.Spec : Prop :=
  ∀ n, P5622164293985967398.a n = A273531 n

end A273531

/-! ## A273531.P17195858782332509678

`A274216(A052928(n+1))`
-/

namespace A273531.P17195858782332509678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 (A052928 (n + 1)).toNat

end

end A273531.P17195858782332509678

namespace A273531

/-- `A274216(A052928(n+1))` -/
def P17195858782332509678.Spec : Prop :=
  ∀ n, P17195858782332509678.a n = A273531 n

end A273531

/-! ## A273531.P8241883215406643692

`A277917(2*A065033(n))`
-/

namespace A273531.P8241883215406643692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277917 (2 * A065033 n).toNat

end

end A273531.P8241883215406643692

namespace A273531

/-- `A277917(2*A065033(n))` -/
def P8241883215406643692.Spec : Prop :=
  ∀ n, P8241883215406643692.a n = A273531 n

end A273531

/-! ## A273531.P5260528841665162635

`A277932(2*A065033(n))`
-/

namespace A273531.P5260528841665162635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277932 (2 * A065033 n).toNat

end

end A273531.P5260528841665162635

namespace A273531

/-- `A277932(2*A065033(n))` -/
def P5260528841665162635.Spec : Prop :=
  ∀ n, P5260528841665162635.a n = A273531 n

end A273531

/-! ## A273531.P2793723545371867621

`A277932(2*A110654(n))`
-/

namespace A273531.P2793723545371867621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277932 (2 * A110654 n).toNat

end

end A273531.P2793723545371867621

namespace A273531

/-- `A277932(2*A110654(n))` -/
def P2793723545371867621.Spec : Prop :=
  ∀ n, P2793723545371867621.a n = A273531 n

end A273531

/-! ## A273531.P9376004903989148357

`A274216(2*n-A052928(n))`
-/

namespace A273531.P9376004903989148357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 ((2 * n : ℤ) - A052928 n).toNat

end

end A273531.P9376004903989148357

namespace A273531

/-- `A274216(2*n-A052928(n))` -/
def P9376004903989148357.Spec : Prop :=
  ∀ n, P9376004903989148357.a n = A273531 n

end A273531

/-! ## A273531.P378021738561889874

`A274216(n-(A052928(n)-n))`
-/

namespace A273531.P378021738561889874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A273531.P378021738561889874

namespace A273531

/-- `A274216(n-(A052928(n)-n))` -/
def P378021738561889874.Spec : Prop :=
  ∀ n, P378021738561889874.a n = A273531 n

end A273531

/-! ## A273531.P16096127716137226056

`A006943(2*2*A164089(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A273531

/-- `A006943(2*2*A164089(n+1))` -/
def P16096127716137226056.Spec : Prop :=
  ∀ n, P16096127716137226056.a n = A273531 n

theorem P16096127716137226056.correct : P16096127716137226056.Spec := by
  intro n
  simp only [A273531]

end A273531

/-! ## A273531.P11315209853223917963

`A277917(A004277(A065033(n)))`
-/

namespace A273531.P11315209853223917963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277917 (A004277 (A065033 n).toNat).toNat

end

end A273531.P11315209853223917963

namespace A273531

/-- `A277917(A004277(A065033(n)))` -/
def P11315209853223917963.Spec : Prop :=
  ∀ n, P11315209853223917963.a n = A273531 n

end A273531

/-! ## A273531.P4324356835068932696

`A274216(A007590(n+1)-A007590(n))`
-/

namespace A273531.P4324356835068932696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274216 (A007590 (n + 1) - A007590 n).toNat

end

end A273531.P4324356835068932696

namespace A273531

/-- `A274216(A007590(n+1)-A007590(n))` -/
def P4324356835068932696.Spec : Prop :=
  ∀ n, P4324356835068932696.a n = A273531 n

end A273531

/-!
# A273532: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A273532, there is no canonical definition to state claims against.
-/

/-! ## A273532.P3111220589492048743

`∑[A273414(n)]`
-/

namespace A273532.P3111220589492048743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273532.P3111220589492048743

/-! ## A273532.P11168830115017834402

`∑[A273533(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273532.P11168830115017834402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273533 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273532.P11168830115017834402

/-! ## A273532.P7422452888769621920

`∑[∑[A273533(n)]+1-A273533(n)]`
-/

namespace A273532.P7422452888769621920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273532.P7422452888769621920

/-! ## A273532.P5011200298794107605

`a(n-1)+A273414(n)%A186707(n)` with `a(0)=1`
-/

namespace A273532.P5011200298794107605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273414 n) (A186707 n)

end

end A273532.P5011200298794107605

/-! ## A273532.P17870562482174331903

`A273414(n+1)+a(n-1)-A273533(n)` with `a(0)=1`
-/

namespace A273532.P17870562482174331903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273414 (n + 1) + (a (n - 1) - A273533 n)

end

end A273532.P17870562482174331903

/-!
# A273533: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A273533, there is no canonical definition to state claims against.
-/

/-! ## A273533.P17678639789664241998

`Δ[A273414(n)]`
-/

namespace A273533.P17678639789664241998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273533.P17678639789664241998

/-! ## A273533.P2422960842900534455

`A273414(n+1)-A273414(n)`
-/

namespace A273533.P2422960842900534455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273414 (n + 1) - A273414 n

end

end A273533.P2422960842900534455

/-!
# A273534: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A273534, there is no canonical definition to state claims against.
-/

/-! ## A273534.P11911134077924260102

`A273537(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273534.P11911134077924260102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273537 (n - 1) + a (n - 1)

end

end A273534.P11911134077924260102

/-! ## A273534.P17651367981680380366

`Δ[A273536(n)]-A273537(n)`
-/

namespace A273534.P17651367981680380366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273537 n

end

end A273534.P17651367981680380366

/-! ## A273534.P3481013420714930182

`∑[A273537(A028310(n)-1)]-3`
-/

namespace A273534.P3481013420714930182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273537 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A273534.P3481013420714930182

/-! ## A273534.P10675660114369943246

`A273537(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A273534.P10675660114369943246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273537 (n - 1) - (A000007 n - a (n - 1))

end

end A273534.P10675660114369943246

/-! ## A273534.P4880773521446683333

`A273536(n+1)-(A273537(n)+A273536(n))`
-/

namespace A273534.P4880773521446683333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273536 (n + 1) - (A273537 n + A273536 n)

end

end A273534.P4880773521446683333

/-!
# A273535: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A273535, there is no canonical definition to state claims against.
-/

/-! ## A273535.P2301204691647274075

`A273534(2^n-1)`
-/

namespace A273535.P2301204691647274075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 (2 ^ n - 1)

end

end A273535.P2301204691647274075

/-! ## A273535.P682156636212705657

`record[A273534(A173787(n))]`
-/

namespace A273535.P682156636212705657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273535.P682156636212705657

/-! ## A273535.P5828590884093251008

`or(1, A273534(A000225(n)))`
-/

namespace A273535.P5828590884093251008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273534 (A000225 n).toNat)

end

end A273535.P5828590884093251008

/-! ## A273535.P117589234469226376

`record[A273534(Δ[A228693(n)])]`
-/

namespace A273535.P117589234469226376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273535.P117589234469226376

/-! ## A273535.P2548563365922608262

`record[A273534(A323243(n+1))]`
-/

namespace A273535.P2548563365922608262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273535.P2548563365922608262

/-!
# A273536: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A273536, there is no canonical definition to state claims against.
-/

/-! ## A273536.P7146364609302919130

`∑[A273534(n)]`
-/

namespace A273536.P7146364609302919130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273536.P7146364609302919130

/-! ## A273536.P15098117410098631058

`A273534(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273536.P15098117410098631058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273534 n + a (A023443 n).toNat

end

end A273536.P15098117410098631058

/-! ## A273536.P9814952103785187893

`a(n-1)+A273534(n)+A000007(n)` with `a(0)=1`
-/

namespace A273536.P9814952103785187893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273534 n + A000007 n)

end

end A273536.P9814952103785187893

/-! ## A273536.P17450277479920579396

`a(n-1)+A273534(n)+A000038(n+1)` with `a(0)=1`
-/

namespace A273536.P17450277479920579396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273534 n + A000038 (n + 1))

end

end A273536.P17450277479920579396

/-! ## A273536.P7957804399128853257

`A273534(n%A007434(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273536.P7957804399128853257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273534 (Int.tmod (n : ℤ) (A007434 (n + 1))).toNat + a (n - 1)

end

end A273536.P7957804399128853257

/-! ## A273536.P10299024081673691302

`a(n-1)-A008683(A001359(n+1))*A273534(n)` with `a(0)=1`
-/

namespace A273536.P10299024081673691302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A001359 (n + 1)).toNat * A273534 n

end

end A273536.P10299024081673691302

/-! ## A273536.P2871468999931940257

`a(n-1)+A273534(n)%A198277(n)` with `a(0)=1`
-/

namespace A273536.P2871468999931940257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273534 n) (A198277 n)

end

end A273536.P2871468999931940257

/-!
# A273537: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A273537, there is no canonical definition to state claims against.
-/

/-! ## A273537.P15461964375829412439

`Δ[A273534(n)]`
-/

namespace A273537.P15461964375829412439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273537.P15461964375829412439

/-! ## A273537.P3671536075815342592

`A273534(n+1)-A273534(n)`
-/

namespace A273537.P3671536075815342592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273534 (n + 1) - A273534 n

end

end A273537.P3671536075815342592

/-!
# A273538: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A273538, there is no canonical definition to state claims against.
-/

/-! ## A273538.P17253389373896386954

`A273541(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273538.P17253389373896386954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273541 (n - 1) + a (n - 1)

end

end A273538.P17253389373896386954

/-! ## A273538.P12463428629051185077

`Δ[A273540(n)]-A273541(n)`
-/

namespace A273538.P12463428629051185077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273541 n

end

end A273538.P12463428629051185077

/-! ## A273538.P14205958862726046626

`A273540(n+1)-(A273541(n)+A273540(n))`
-/

namespace A273538.P14205958862726046626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273540 (n + 1) - (A273541 n + A273540 n)

end

end A273538.P14205958862726046626

/-!
# A273539: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A273539, the canonical program `A273539.P3471177294944563189` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273539 has offset 0).

The definition of A273539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273539.P3471177294944563189

`(1-∑[2^n])²+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273539

/-- `(1-∑[2^n])²+1` -/
def P3471177294944563189.Spec : Prop :=
  ∀ n, P3471177294944563189.a n = A273539 n

theorem P3471177294944563189.correct : P3471177294944563189.Spec := by
  intro n
  simp only [A273539]

end A273539

/-! ## A273539.P1718806889948918115

`or(1, (1-∑[2^n])²)`
-/

namespace A273539.P1718806889948918115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2)

end

end A273539.P1718806889948918115

namespace A273539

/-- `or(1, (1-∑[2^n])²)` -/
def P1718806889948918115.Spec : Prop :=
  ∀ n, P1718806889948918115.a n = A273539 n

end A273539

/-! ## A273539.P12266257167291034964

`xor(1, (1-∑[2^n])²)`
-/

namespace A273539.P12266257167291034964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2)

end

end A273539.P12266257167291034964

namespace A273539

/-- `xor(1, (1-∑[2^n])²)` -/
def P12266257167291034964.Spec : Prop :=
  ∀ n, P12266257167291034964.a n = A273539 n

end A273539

/-! ## A273539.P6486569648204458219

`∑[4*(a(n-1)+2^n)]` with `a(0)=1, a(1)=4`
-/

namespace A273539.P6486569648204458219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273539.P6486569648204458219

namespace A273539

/-- `∑[4*(a(n-1)+2^n)]` -/
def P6486569648204458219.Spec : Prop :=
  ∀ n, (P6486569648204458219.a n : ℤ) = A273539 n

end A273539

/-! ## A273539.P8566485524770897755

`∑[2^n*A131128(n)]`
-/

namespace A273539.P8566485524770897755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A131128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273539.P8566485524770897755

namespace A273539

/-- `∑[2^n*A131128(n)]` -/
def P8566485524770897755.Spec : Prop :=
  ∀ n, P8566485524770897755.a n = A273539 n

end A273539

/-! ## A273539.P17241553733809681591

`∑[abs(A000079(n+2)-Δ[4^n])]`
-/

namespace A273539.P17241553733809681591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 2) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273539.P17241553733809681591

namespace A273539

/-- `∑[abs(A000079(n+2)-Δ[4^n])]` -/
def P17241553733809681591.Spec : Prop :=
  ∀ n, P17241553733809681591.a n = A273539 n

end A273539

/-! ## A273539.P14013591484168914790

`abs(A057428(n)-A095121(n)²)`
-/

namespace A273539.P14013591484168914790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A095121 n ^ 2|

end

end A273539.P14013591484168914790

namespace A273539

/-- `abs(A057428(n)-A095121(n)²)` -/
def P14013591484168914790.Spec : Prop :=
  ∀ n, P14013591484168914790.a n = A273539 n

end A273539

/-! ## A273539.P2648406401193286405

`∑[xor(1, A000225(n)*A052940(n))]`
-/

namespace A273539.P2648406401193286405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000225 n * A052940 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273539.P2648406401193286405

namespace A273539

/-- `∑[xor(1, A000225(n)*A052940(n))]` -/
def P2648406401193286405.Spec : Prop :=
  ∀ n, P2648406401193286405.a n = A273539 n

end A273539

/-! ## A273539.P11255821826160638636

`ceil(((A052955(2*(n+1))-3)²+3)/4)`
-/

namespace A273539.P11255821826160638636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A052955 (2 * (n + 1)) - 3) ^ 2 + 3 : ℚ) / 4⌉

end

end A273539.P11255821826160638636

namespace A273539

/-- `ceil(((A052955(2*(n+1))-3)²+3)/4)` -/
def P11255821826160638636.Spec : Prop :=
  ∀ n, P11255821826160638636.a n = A273539 n

end A273539

/-!
# A273540: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A273540, there is no canonical definition to state claims against.
-/

/-! ## A273540.P8845253746783248314

`∑[A016754(n)-A122108(n+1)]+1`
-/

namespace A273540.P8845253746783248314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A122108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273540.P8845253746783248314

/-! ## A273540.P7744996412923702687

`∑[A273538(n)]`
-/

namespace A273540.P7744996412923702687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273540.P7744996412923702687

/-! ## A273540.P4562184331748319154

`a(n-1)+A273538(n)+A215240(2*n+1)` with `a(0)=1`
-/

namespace A273540.P4562184331748319154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273538 n + A215240 (2 * n + 1))

end

end A273540.P4562184331748319154

/-! ## A273540.P11683171872856779419

`∑[∑[A273541(n)]+1-A273541(n)]`
-/

namespace A273540.P11683171872856779419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273541 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273540.P11683171872856779419

/-!
# A273541: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A273541, there is no canonical definition to state claims against.
-/

/-! ## A273541.P18276645734268216708

`Δ[A273538(n)]`
-/

namespace A273541.P18276645734268216708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273541.P18276645734268216708

/-! ## A273541.P3927524416531978325

`A273538(n+1)-A273538(n)`
-/

namespace A273541.P3927524416531978325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 (n + 1) - A273538 n

end

end A273541.P3927524416531978325

/-! ## A273541.P6182732705601323801

`Δ[A181385(A016825(n))]-A269714(n)`
-/

namespace A273541.P6182732705601323801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269714 n

end

end A273541.P6182732705601323801

/-!
# A273542: Numbers k such that (238*10^k - 1)/3 is prime.

The programs for A273542, there is no canonical definition to state claims against.
-/

/-! ## A273542.P17931595408359689209

`eq[A029364(n), A029402(A029394(2*n+1))]`
-/

namespace A273542.P17931595408359689209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029364 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 (A029394 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273542.P17931595408359689209

/-! ## A273542.P1815832265356050861

`lt[A269851(A269876(n)), A269847(3*(n+1))]`
-/

namespace A273542.P1815832265356050861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269851 (A269876 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273542.P1815832265356050861

/-! ## A273542.P6293466900244637200

`lt[A269851(A269876(n)), A269857(3*(n+1))]`
-/

namespace A273542.P6293466900244637200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269851 (A269876 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269857 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273542.P6293466900244637200

/-! ## A273542.P11780887425604573931

`eq[A000010(A332741(2*(n+1))), A175327(n+3)]`
-/

namespace A273542.P11780887425604573931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A332741 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175327 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273542.P11780887425604573931

/-!
# A273543: Numbers for which 9 is a nontrivial quadratic residue.

The programs for A273543, there is no canonical definition to state claims against.
-/

/-! ## A273543.P18307347931468112294

`lt[A360721(A360683(n+3)), A360670(n)]`
-/

namespace A273543.P18307347931468112294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (A360683 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A273543.P18307347931468112294

/-! ## A273543.P12813218529836148446

`lt[log2(A193144(n+1)), A005128(n)]`
-/

namespace A273543.P12813218529836148446
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A193144 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A273543.P12813218529836148446

/-! ## A273543.P15024529316693969053

`record[A355740(n+4)-A164735(2*n+5)]`
-/

namespace A273543.P15024529316693969053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 4) - A164735 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273543.P15024529316693969053

/-! ## A273543.P8104826194062949637

`lt[4, gcd(n, A025487(n*A100254(n+1)+1))-9]`
-/

namespace A273543.P8104826194062949637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A025487 ((n : ℤ) * A100254 (n + 1) + 1).toNat) : ℤ) - 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A273543.P8104826194062949637

/-! ## A273543.P13519135088143339907

`eq[A122922(n), A127750(A122897(n))]`
-/

namespace A273543.P13519135088143339907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (A122897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273543.P13519135088143339907

/-!
# A273544: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 838", based on the 5-celled von Neumann neighborhood.

The programs for A273544, there is no canonical definition to state claims against.
-/

/-! ## A273544.P101746326731316892

`A273682(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273544.P101746326731316892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273682 (n - 1) + a (n - 1)

end

end A273544.P101746326731316892

/-! ## A273544.P6961120368806320670

`Δ[A273681(n)]-A273682(n)`
-/

namespace A273544.P6961120368806320670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273682 n

end

end A273544.P6961120368806320670

/-! ## A273544.P13354314487977564546

`A273681(n+1)-(A273682(n)+A273681(n))`
-/

namespace A273544.P13354314487977564546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273681 (n + 1) - (A273682 n + A273681 n)

end

end A273544.P13354314487977564546

/-! ## A273544.P2102280548009003142

`A008621(4*n)-(n-(∑[A273682(n)]-A273682(n)))`
-/

namespace A273544.P2102280548009003142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * n) - ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A273682 n))

end

end A273544.P2102280548009003142

/-! ## A273544.P6811393359636189440

`A092486(∑[A273682(n)]-A273682(n))-2`
-/

namespace A273544.P6811393359636189440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (∑ j ∈ Finset.range (n + 1), f1 j - A273682 n).toNat - 2

end

end A273544.P6811393359636189440

/-! ## A273544.P2650907392801281712

`A141310(∑[A273682(n)]-A273682(n))`
-/

namespace A273544.P2650907392801281712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273682 n).toNat

end

end A273544.P2650907392801281712

/-! ## A273544.P5646621689441714813

`A004442(∑[A273682(n)]-A273682(n))`
-/

namespace A273544.P5646621689441714813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273682 n).toNat

end

end A273544.P5646621689441714813

/-! ## A273544.P2104134054957184157

`A109613(∑[A273682(n)]-A273682(n))`
-/

namespace A273544.P2104134054957184157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273682 n).toNat

end

end A273544.P2104134054957184157

/-!
# A273548: Primes of the form 2^(2^k) + 163.

The programs for A273548, the canonical program `A273548.P32671516476653702` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273548 has offset 1).

The definition of A273548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273548.P32671516476653702

`2^2^(n+1)+163`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273548

/-- `2^2^(n+1)+163` -/
def P32671516476653702.Spec : Prop :=
  ∀ n, (P32671516476653702.a n : ℤ) = A273548 (n + 1)

theorem P32671516476653702.correct : P32671516476653702.Spec := by
  intro n
  simp only [A273548, Nat.add_sub_cancel]

end A273548

/-!
# A273554: Numbers n such that n is the sum of two nonzero squares while n^2 is the sum of two positive cubes.

The programs for A273554, there is no canonical definition to state claims against.
-/

/-! ## A273554.P12970122729474902366

`∩[A000404(n+1), A050801(n+1)]`
-/

namespace A273554.P12970122729474902366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273554.P12970122729474902366

/-!
# A273555: a(n) = A001235(n) - floor(A001235(n)^(1/3))^3.

The programs for A273555, there is no canonical definition to state claims against.
-/

/-! ## A273555.P5778481693747231234

`A001235(n+1)-floor(A001235(n+1)^(1/3))^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273555.P5778481693747231234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1) - ⌊(A001235 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3

end

end A273555.P5778481693747231234

/-!
# A273557: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A273557, there is no canonical definition to state claims against.
-/

/-! ## A273557.P1462745546296998235

`A273560(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273557.P1462745546296998235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273560 (n - 1) + a (n - 1)

end

end A273557.P1462745546296998235

/-! ## A273557.P14045197701532948970

`Δ[A273559(n)]-A273560(n)`
-/

namespace A273557.P14045197701532948970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273560 n

end

end A273557.P14045197701532948970

/-! ## A273557.P16135049554603094446

`A273559(n+1)-(A273560(n)+A273559(n))`
-/

namespace A273557.P16135049554603094446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273559 (n + 1) - (A273560 n + A273559 n)

end

end A273557.P16135049554603094446

/-! ## A273557.P13822565788308921672

`A273559(-xor(n, -1))%(A273560(n)+A273559(n))`
-/

namespace A273557.P13822565788308921672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273559 (-Int.xor (n : ℤ) (-1)).toNat) (A273560 n + A273559 n)

end

end A273557.P13822565788308921672

/-! ## A273557.P12447182005862930796

`∑[A273560(log2(ceil(2^(n-1))))]-2`
-/

namespace A273557.P12447182005862930796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273560 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273557.P12447182005862930796

/-!
# A273558: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A273558, there is no canonical definition to state claims against.
-/

/-! ## A273558.P6063796033660883275

`A273557(2^n-1)`
-/

namespace A273558.P6063796033660883275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (2 ^ n - 1)

end

end A273558.P6063796033660883275

/-! ## A273558.P16675457041856235504

`record[A273557(A252756(n+1))]`
-/

namespace A273558.P16675457041856235504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273558.P16675457041856235504

/-! ## A273558.P10711167988939335643

`record[A273557(A350770(n+1))]`
-/

namespace A273558.P10711167988939335643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (A350770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273558.P10711167988939335643

/-! ## A273558.P14335675810772337139

`A273557(A000225(n))+char[24]`
-/

namespace A273558.P14335675810772337139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273558.P14335675810772337139

/-! ## A273558.P3548324718653644035

`record[A036987(n)*A273557(n)]`
-/

namespace A273558.P3548324718653644035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A273557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273558.P3548324718653644035

/-!
# A273559: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A273559, there is no canonical definition to state claims against.
-/

/-! ## A273559.P7705144689226636637

`∑[∑[A273560(n)]+1-A273560(n)]`
-/

namespace A273559.P7705144689226636637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273559.P7705144689226636637

/-! ## A273559.P6230451427828309238

`∑[A273557(n)]`
-/

namespace A273559.P6230451427828309238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273559.P6230451427828309238

/-! ## A273559.P17258442558688595905

`A273557(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273559.P17258442558688595905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273557 n + a (A023443 n).toNat

end

end A273559.P17258442558688595905

/-! ## A273559.P3222424744781149136

`A273557(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A273559.P3222424744781149136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273557 n + a (A028310 n - 1).toNat

end

end A273559.P3222424744781149136

/-! ## A273559.P8734415465741804034

`a(n-1)+A273557(n)+A000007(n)` with `a(0)=1`
-/

namespace A273559.P8734415465741804034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273557 n + A000007 n)

end

end A273559.P8734415465741804034

/-!
# A273560: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

The programs for A273560, there is no canonical definition to state claims against.
-/

/-! ## A273560.P4966979523059913740

`Δ[A273557(n)]`
-/

namespace A273560.P4966979523059913740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273560.P4966979523059913740

/-! ## A273560.P3886364652232390354

`A273557(n+1)-A273557(n)`
-/

namespace A273560.P3886364652232390354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273557 (n + 1) - A273557 n

end

end A273560.P3886364652232390354

/-!
# A273561: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A273561, the canonical program `A273561.P17437193732767183359` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273561 has offset 0).

The definition of A273561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273561.P17437193732767183359

`∑[4*(n+1)-A270107(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273561

/-- `∑[4*(n+1)-A270107(n)]` -/
def P17437193732767183359.Spec : Prop :=
  ∀ n, P17437193732767183359.a n = A273561 n

theorem P17437193732767183359.correct : P17437193732767183359.Spec := by
  intro n
  simp only [A273561]

end A273561

/-! ## A273561.P4173453748021139248

`A273563(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273561.P4173453748021139248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273563 (n - 1) + a (n - 1)

end

end A273561.P4173453748021139248

namespace A273561

/-- `A273563(n-1)+a(n-1)` -/
def P4173453748021139248.Spec : Prop :=
  ∀ n, P4173453748021139248.a n = A273561 n

end A273561

/-! ## A273561.P16990854362739228505

`Δ[A273562(n)]-A273563(n)`
-/

namespace A273561.P16990854362739228505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273563 n

end

end A273561.P16990854362739228505

namespace A273561

/-- `Δ[A273562(n)]-A273563(n)` -/
def P16990854362739228505.Spec : Prop :=
  ∀ n, P16990854362739228505.a n = A273561 n

end A273561

/-! ## A273561.P16241802125563930213

`A273562(n+1)-(A273563(n)+A273562(n))`
-/

namespace A273561.P16241802125563930213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273562 (n + 1) - (A273563 n + A273562 n)

end

end A273561.P16241802125563930213

namespace A273561

/-- `A273562(n+1)-(A273563(n)+A273562(n))` -/
def P16241802125563930213.Spec : Prop :=
  ∀ n, P16241802125563930213.a n = A273561 n

end A273561

/-! ## A273561.P6988264999825615681

`A273499(n+1)-A046092(n+1)`
-/

namespace A273561.P6988264999825615681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - A046092 (n + 1)

end

end A273561.P6988264999825615681

namespace A273561

/-- `A273499(n+1)-A046092(n+1)` -/
def P6988264999825615681.Spec : Prop :=
  ∀ n, P6988264999825615681.a n = A273561 n

end A273561

/-! ## A273561.P7590253313931788392

`A273499(n+1)-(A090288(n)+2)`
-/

namespace A273561.P7590253313931788392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - (A090288 n + 2)

end

end A273561.P7590253313931788392

namespace A273561

/-- `A273499(n+1)-(A090288(n)+2)` -/
def P7590253313931788392.Spec : Prop :=
  ∀ n, P7590253313931788392.a n = A273561 n

end A273561

/-! ## A273561.P3862542011377870653

`A273499(n+1)+1-A001844(n+1)`
-/

namespace A273561.P3862542011377870653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) + (1 - A001844 (n + 1))

end

end A273561.P3862542011377870653

namespace A273561

/-- `A273499(n+1)+1-A001844(n+1)` -/
def P3862542011377870653.Spec : Prop :=
  ∀ n, P3862542011377870653.a n = A273561 n

end A273561

/-! ## A273561.P13687911541414152110

`A273499(n+1)-2*A002378(n+1)`
-/

namespace A273561.P13687911541414152110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - 2 * A002378 (n + 1)

end

end A273561.P13687911541414152110

namespace A273561

/-- `A273499(n+1)-2*A002378(n+1)` -/
def P13687911541414152110.Spec : Prop :=
  ∀ n, P13687911541414152110.a n = A273561 n

end A273561

/-! ## A273561.P11334274819973837099

`A273499(n+1)-(n+1)*A005843(n+2)`
-/

namespace A273561.P11334274819973837099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - (n + 1 : ℤ) * A005843 (n + 2)

end

end A273561.P11334274819973837099

namespace A273561

/-- `A273499(n+1)-(n+1)*A005843(n+2)` -/
def P11334274819973837099.Spec : Prop :=
  ∀ n, P11334274819973837099.a n = A273561 n

end A273561

/-! ## A273561.P18378789331658219647

`∑[A273501(n)-Δ[A132209(n)]]`
-/

namespace A273561.P18378789331658219647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273561.P18378789331658219647

namespace A273561

/-- `∑[A273501(n)-Δ[A132209(n)]]` -/
def P18378789331658219647.Spec : Prop :=
  ∀ n, P18378789331658219647.a n = A273561 n

end A273561

/-! ## A273561.P14654739881676973914

`∑[A273501(n)]-A132209(n+1)`
-/

namespace A273561.P14654739881676973914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A132209 (n + 1)

end

end A273561.P14654739881676973914

namespace A273561

/-- `∑[A273501(n)]-A132209(n+1)` -/
def P14654739881676973914.Spec : Prop :=
  ∀ n, P14654739881676973914.a n = A273561 n

end A273561

/-! ## A273561.P13833700324079922342

`Δ[A273500(n)]-∑[A008586(n+1)]`
-/

namespace A273561.P13833700324079922342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A273561.P13833700324079922342

namespace A273561

/-- `Δ[A273500(n)]-∑[A008586(n+1)]` -/
def P13833700324079922342.Spec : Prop :=
  ∀ n, P13833700324079922342.a n = A273561 n

end A273561

/-!
# A273562: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A273562, the canonical program `A273562.P16263863284680203859` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273562 has offset 0).

The definition of A273562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273562.P16263863284680203859

`∑[A273561(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A273562

/-- `∑[A273561(n)]` -/
def P16263863284680203859.Spec : Prop :=
  ∀ n, P16263863284680203859.a n = A273562 n

theorem P16263863284680203859.correct : P16263863284680203859.Spec := by
  intro n
  simp only [A273562]

end A273562

/-! ## A273562.P15617573042157656038

`∑[A273563(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273562.P15617573042157656038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273563 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273562.P15617573042157656038

namespace A273562

/-- `∑[A273563(n-1)+a(n-1)]` -/
def P15617573042157656038.Spec : Prop :=
  ∀ n, P15617573042157656038.a n = A273562 n

end A273562

/-! ## A273562.P7125505460307391287

`A273561(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A273562.P7125505460307391287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273561 n + a (A004273 n - (n : ℤ)).toNat

end

end A273562.P7125505460307391287

namespace A273562

/-- `A273561(n)+a(A004273(n)-n)` -/
def P7125505460307391287.Spec : Prop :=
  ∀ n, P7125505460307391287.a n = A273562 n

end A273562

/-! ## A273562.P8180377923007557888

`∑[∑[A273563(n)]+1-A273563(n)]`
-/

namespace A273562.P8180377923007557888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273563 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273562.P8180377923007557888

namespace A273562

/-- `∑[∑[A273563(n)]+1-A273563(n)]` -/
def P8180377923007557888.Spec : Prop :=
  ∀ n, P8180377923007557888.a n = A273562 n

end A273562

/-! ## A273562.P8241432064426643217

`A273561(n%A273561(n))+a(n-1)` with `a(0)=1`
-/

namespace A273562.P8241432064426643217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273561 (Int.tmod (n : ℤ) (A273561 n)).toNat + a (n - 1)

end

end A273562.P8241432064426643217

namespace A273562

/-- `A273561(n%A273561(n))+a(n-1)` -/
def P8241432064426643217.Spec : Prop :=
  ∀ n, P8241432064426643217.a n = A273562 n

end A273562

/-! ## A273562.P10339773247719862315

`A273561(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A273562.P10339773247719862315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273561 n + a (A028242 (A004273 n).toNat).toNat

end

end A273562.P10339773247719862315

namespace A273562

/-- `A273561(n)+a(A028242(A004273(n)))` -/
def P10339773247719862315.Spec : Prop :=
  ∀ n, P10339773247719862315.a n = A273562 n

end A273562

/-! ## A273562.P17952274505405673129

`∑[A273499(n+1)-A046092(n+1)]`
-/

namespace A273562.P17952274505405673129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - A046092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273562.P17952274505405673129

namespace A273562

/-- `∑[A273499(n+1)-A046092(n+1)]` -/
def P17952274505405673129.Spec : Prop :=
  ∀ n, P17952274505405673129.a n = A273562 n

end A273562

/-!
# A273563: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 790", based on the 5-celled von Neumann neighborhood.

The programs for A273563, the canonical program `A273563.P9685023777793405849` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273563 has offset 0).

The definition of A273563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273563.P9685023777793405849

`Δ[A273561(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A273563

/-- `Δ[A273561(n)]` -/
def P9685023777793405849.Spec : Prop :=
  ∀ n, P9685023777793405849.a n = A273563 n

theorem P9685023777793405849.correct : P9685023777793405849.Spec := by
  intro n
  simp only [A273563]

end A273563

/-! ## A273563.P7364136024876161513

`A273561(n+1)-A273561(n)`
-/

namespace A273563.P7364136024876161513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273561 (n + 1) - A273561 n

end

end A273563.P7364136024876161513

namespace A273563

/-- `A273561(n+1)-A273561(n)` -/
def P7364136024876161513.Spec : Prop :=
  ∀ n, P7364136024876161513.a n = A273563 n

theorem P7364136024876161513.correct : P7364136024876161513.Spec := by
  intro n
  simp only [A273563, Nat.add_sub_cancel, A273563.P7364136024876161513.a, A273563.P9685023777793405849.f1, A273563.P9685023777793405849.a, SequenceMachineLib.memo_apply]

end A273563

/-! ## A273563.P13712783215719565010

`Δ[A273499(n+1)-A001844(n+1)]`
-/

namespace A273563.P13712783215719565010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273499 (n + 1) - A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273563.P13712783215719565010

namespace A273563

/-- `Δ[A273499(n+1)-A001844(n+1)]` -/
def P13712783215719565010.Spec : Prop :=
  ∀ n, P13712783215719565010.a n = A273563 n

end A273563

/-! ## A273563.P13971770850641547296

`∑[Δ[A273501(n)]-4]`
-/

namespace A273563.P13971770850641547296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273563.P13971770850641547296

namespace A273563

/-- `∑[Δ[A273501(n)]-4]` -/
def P13971770850641547296.Spec : Prop :=
  ∀ n, P13971770850641547296.a n = A273563 n

end A273563

/-! ## A273563.P393543204321084126

`A273501(n+1)-4*(n+2)`
-/

namespace A273563.P393543204321084126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 (n + 1) - (4 * (n + 2) : ℤ)

end

end A273563.P393543204321084126

namespace A273563

/-- `A273501(n+1)-4*(n+2)` -/
def P393543204321084126.Spec : Prop :=
  ∀ n, P393543204321084126.a n = A273563 n

end A273563

/-!
# A273564: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A273564, there is no canonical definition to state claims against.
-/

/-! ## A273564.P17183978264841932247

`A273567(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273564.P17183978264841932247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273567 (n - 1) + a (n - 1)

end

end A273564.P17183978264841932247

/-! ## A273564.P11944866749390981731

`∑[A273567(A004273(n)-n)]-2`
-/

namespace A273564.P11944866749390981731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273567 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273564.P11944866749390981731

/-! ## A273564.P9842108594743915864

`∑[A273567(val(3*2^n, 2))]+1-A273567(n)`
-/

namespace A273564.P9842108594743915864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273567 (SequenceMachineLib.valuation (3 * 2 ^ n) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273567 n)

end

end A273564.P9842108594743915864

/-! ## A273564.P13265959315815284282

`Δ[A273566(n)]-A273567(n)`
-/

namespace A273564.P13265959315815284282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273567 n

end

end A273564.P13265959315815284282

/-! ## A273564.P2853452513591847507

`Δ[A273566(abs(1-n))%A273566(n)]`
-/

namespace A273564.P2853452513591847507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273566 |1 - (n : ℤ)|.toNat) (A273566 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273564.P2853452513591847507

/-! ## A273564.P8815907441830035613

`A273566(n+1)-(A273567(n)+A273566(n))`
-/

namespace A273564.P8815907441830035613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273566 (n + 1) - (A273567 n + A273566 n)

end

end A273564.P8815907441830035613

/-!
# A273565: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A273565, the canonical program `A273565.P3375922846288573717` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273565 has offset 0).

The definition of A273565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273565.P3375922846288573717

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=28, a(3)=141, a(4)=625`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273565

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P3375922846288573717.Spec : Prop :=
  ∀ n, P3375922846288573717.a n = A273565 n

theorem P3375922846288573717.correct : P3375922846288573717.Spec := by
  intro n
  simp only [A273565]

end A273565

/-! ## A273565.P17156281239888592056

`A273564(2^n-1)`
-/

namespace A273565.P17156281239888592056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (2 ^ n - 1)

end

end A273565.P17156281239888592056

namespace A273565

/-- `A273564(2^n-1)` -/
def P17156281239888592056.Spec : Prop :=
  ∀ n, P17156281239888592056.a n = A273565 n

end A273565

/-! ## A273565.P4747143974450411832

`record[A273564(A232751(n))]`
-/

namespace A273565.P4747143974450411832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273565.P4747143974450411832

namespace A273565

/-- `record[A273564(A232751(n))]` -/
def P4747143974450411832.Spec : Prop :=
  ∀ n, P4747143974450411832.a n = A273565 n

end A273565

/-! ## A273565.P12187091909951043020

`record[A273564(A303765(n))]`
-/

namespace A273565.P12187091909951043020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273565.P12187091909951043020

namespace A273565

/-- `record[A273564(A303765(n))]` -/
def P12187091909951043020.Spec : Prop :=
  ∀ n, P12187091909951043020.a n = A273565 n

end A273565

/-! ## A273565.P9113129665438989802

`record[A273564(A243071(n+1))]`
-/

namespace A273565.P9113129665438989802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273565.P9113129665438989802

namespace A273565

/-- `record[A273564(A243071(n+1))]` -/
def P9113129665438989802.Spec : Prop :=
  ∀ n, P9113129665438989802.a n = A273565 n

end A273565

/-!
# A273566: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A273566, there is no canonical definition to state claims against.
-/

/-! ## A273566.P806923917395305722

`∑[A273564(n)]`
-/

namespace A273566.P806923917395305722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273566.P806923917395305722

/-! ## A273566.P9916130345316284148

`∑[∑[A273567(n)]+1-A273567(n)]`
-/

namespace A273566.P9916130345316284148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273566.P9916130345316284148

/-! ## A273566.P15153593740587288820

`a(n-1)+A273564(n)+A000007(n)` with `a(0)=1`
-/

namespace A273566.P15153593740587288820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273564 n + A000007 n)

end

end A273566.P15153593740587288820

/-! ## A273566.P17790681303554618308

`a(n-1)+A273564(n)+A000038(n)` with `a(0)=1`
-/

namespace A273566.P17790681303554618308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273564 n + A000038 n)

end

end A273566.P17790681303554618308

/-! ## A273566.P16860588095189662320

`a(n-1)+A273564(n)%A017066(n)` with `a(0)=1`
-/

namespace A273566.P16860588095189662320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273564 n) (A017066 n)

end

end A273566.P16860588095189662320

/-!
# A273567: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 793", based on the 5-celled von Neumann neighborhood.

The programs for A273567, there is no canonical definition to state claims against.
-/

/-! ## A273567.P7436049654136844128

`Δ[A273564(n)]`
-/

namespace A273567.P7436049654136844128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273567.P7436049654136844128

/-! ## A273567.P12322041466146537081

`A273564(n+1)-A273564(n)`
-/

namespace A273567.P12322041466146537081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (n + 1) - A273564 n

end

end A273567.P12322041466146537081

/-!
# A273568: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 with w + x + 2*y - 4*z twice a nonnegative cube, where w is an integer and x,y,z are nonnegative integers.

The programs for A273568, there is no canonical definition to state claims against.
-/

/-! ## A273568.P10103291691544373488

`A324868(A297570(n))`
-/

namespace A273568.P10103291691544373488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (A297570 n).toNat

end

end A273568.P10103291691544373488

/-!
# A273569: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A273569, there is no canonical definition to state claims against.
-/

/-! ## A273569.P18425085428966216220

`∑[4*(n+1)-A269714(n)]`
-/

namespace A273569.P18425085428966216220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A269714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273569.P18425085428966216220

/-! ## A273569.P10506068240250504109

`A273572(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273569.P10506068240250504109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273572 (n - 1) + a (n - 1)

end

end A273569.P10506068240250504109

/-! ## A273569.P12612017817264663492

`Δ[A273571(n)]-A273572(n)`
-/

namespace A273569.P12612017817264663492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273572 n

end

end A273569.P12612017817264663492

/-! ## A273569.P2182687015038088776

`∑[A016897(n)-(A269714(n)+n)]`
-/

namespace A273569.P2182687015038088776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - (A269714 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273569.P2182687015038088776

/-! ## A273569.P5802751404393338392

`abs(∑[A008586(n+1)-A269714(n)])`
-/

namespace A273569.P5802751404393338392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A269714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A273569.P5802751404393338392

/-! ## A273569.P2900242001036203907

`A273571(n+1)-(A273572(n)+A273571(n))`
-/

namespace A273569.P2900242001036203907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273571 (n + 1) - (A273572 n + A273571 n)

end

end A273569.P2900242001036203907

/-! ## A273569.P3722832361582851153

`A273538(n+1)-∑[A008574(n+1)]`
-/

namespace A273569.P3722832361582851153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273569.P3722832361582851153

/-! ## A273569.P15463885149036997131

`A273538(n+1)-A033996(n+1)/2`
-/

namespace A273569.P15463885149036997131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273538 (n + 1) : ℚ) - (A033996 (n + 1) : ℚ) / 2

end

end A273569.P15463885149036997131

/-!
# A273570: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A273570, the canonical program `A273570.P8660691063617513690` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273570 has offset 0).

The definition of A273570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273570.P8660691063617513690

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=93, a(4)=429`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273570

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P8660691063617513690.Spec : Prop :=
  ∀ n, P8660691063617513690.a n = A273570 n

theorem P8660691063617513690.correct : P8660691063617513690.Spec := by
  intro n
  simp only [A273570]

end A273570

/-! ## A273570.P12554008964391234479

`2*4^n-A256258(∑[ceil(atan(n))^n])`
-/

namespace A273570.P12554008964391234479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A256258 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273570.P12554008964391234479

namespace A273570

/-- `2*4^n-A256258(∑[ceil(atan(n))^n])` -/
def P12554008964391234479.Spec : Prop :=
  ∀ n, P12554008964391234479.a n = A273570 n

end A273570

/-! ## A273570.P732511888948540912

`2*A000079(n)²-A256258(A095121(n))`
-/

namespace A273570.P732511888948540912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A256258 (A095121 n).toNat

end

end A273570.P732511888948540912

namespace A273570

/-- `2*A000079(n)²-A256258(A095121(n))` -/
def P732511888948540912.Spec : Prop :=
  ∀ n, P732511888948540912.a n = A273570 n

end A273570

/-! ## A273570.P5069848846731889109

`A000079(2*n+1)-A256258(A095121(n))`
-/

namespace A273570.P5069848846731889109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A256258 (A095121 n).toNat

end

end A273570.P5069848846731889109

namespace A273570

/-- `A000079(2*n+1)-A256258(A095121(n))` -/
def P5069848846731889109.Spec : Prop :=
  ∀ n, P5069848846731889109.a n = A273570 n

end A273570

/-! ## A273570.P7704443396614878954

`A273569(2^n-1)`
-/

namespace A273570.P7704443396614878954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273569 (2 ^ n - 1)

end

end A273570.P7704443396614878954

namespace A273570

/-- `A273569(2^n-1)` -/
def P7704443396614878954.Spec : Prop :=
  ∀ n, P7704443396614878954.a n = A273570 n

end A273570

/-!
# A273571: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A273571, there is no canonical definition to state claims against.
-/

/-! ## A273571.P11337237088238204187

`∑[∑[A008574(n+1)-A269714(n)]]`
-/

namespace A273571.P11337237088238204187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A269714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273571.P11337237088238204187

/-! ## A273571.P16684012291948747970

`∑[∑[A008586(n+1)-A269714(n)]]`
-/

namespace A273571.P16684012291948747970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) - A269714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273571.P16684012291948747970

/-! ## A273571.P11022539785283913688

`∑[∑[A016897(n)-n-A269714(n)]]`
-/

namespace A273571.P11022539785283913688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - (n : ℤ) - A269714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273571.P11022539785283913688

/-! ## A273571.P4064922150772045724

`∑[A273569(n)]`
-/

namespace A273571.P4064922150772045724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273571.P4064922150772045724

/-! ## A273571.P7189287286905493862

`∑[A273538(n+1)-∑[4*(n+1)]]`
-/

namespace A273571.P7189287286905493862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273571.P7189287286905493862

/-!
# A273572: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 798", based on the 5-celled von Neumann neighborhood.

The programs for A273572, there is no canonical definition to state claims against.
-/

/-! ## A273572.P11245452006530904278

`1-∑[Δ[A269714(n)]-4]`
-/

namespace A273572.P11245452006530904278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269714 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273572.P11245452006530904278

/-! ## A273572.P11437687315440974438

`4*(n+1)-(A269714(n+1)-4)`
-/

namespace A273572.P11437687315440974438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A269714 (n + 1) - 4)

end

end A273572.P11437687315440974438

/-! ## A273572.P4721229763341124375

`A016825(n+1)+2-A269714(n+1)`
-/

namespace A273572.P4721229763341124375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) + (2 - A269714 (n + 1))

end

end A273572.P4721229763341124375

/-! ## A273572.P4776112652315406580

`Δ[A273569(n)]`
-/

namespace A273572.P4776112652315406580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273572.P4776112652315406580

/-! ## A273572.P10373027074947578439

`A273569(n+1)-A273569(n)`
-/

namespace A273572.P10373027074947578439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273569 (n + 1) - A273569 n

end

end A273572.P10373027074947578439

/-! ## A273572.P11345000848864299927

`∑[Δ[Δ[A273538(n)]]-4]`
-/

namespace A273572.P11345000848864299927
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273572.P11345000848864299927

/-! ## A273572.P13531243469887819626

`∑[Δ[A273541(n)]-4]`
-/

namespace A273572.P13531243469887819626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273572.P13531243469887819626

/-!
# A273573: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A273573, there is no canonical definition to state claims against.
-/

/-! ## A273573.P17859629409351809737

`A273576(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273573.P17859629409351809737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273576 (n - 1) + a (n - 1)

end

end A273573.P17859629409351809737

/-! ## A273573.P8329926785051924984

`∑[A273576((2*n)%(n+1))]-2`
-/

namespace A273573.P8329926785051924984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273576 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273573.P8329926785051924984

/-! ## A273573.P6442964744089141280

`∑[A273576((n-1)%(n*a(n-1)))]` with `a(0)=1`
-/

namespace A273573.P6442964744089141280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273576 (Int.tmod ((n : ℤ) - 1) ((n : ℤ) * f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273573.P6442964744089141280

/-! ## A273573.P4557696436760748695

`Δ[A273575(n)]-A273576(n)`
-/

namespace A273573.P4557696436760748695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273576 n

end

end A273573.P4557696436760748695

/-! ## A273573.P5909139973506100782

`A273575(n+1)-(A273576(n)+A273575(n))`
-/

namespace A273573.P5909139973506100782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273575 (n + 1) - (A273576 n + A273575 n)

end

end A273573.P5909139973506100782

/-!
# A273574: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A273574, there is no canonical definition to state claims against.
-/

/-! ## A273574.P3917776307710976219

`A273573(2^n-1)`
-/

namespace A273574.P3917776307710976219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (2 ^ n - 1)

end

end A273574.P3917776307710976219

/-! ## A273574.P728741782590904186

`record[A273573(A227351(n))]`
-/

namespace A273574.P728741782590904186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273574.P728741782590904186

/-! ## A273574.P15633419757833266012

`record[A273573(A255565(n))]`
-/

namespace A273574.P15633419757833266012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273574.P15633419757833266012

/-! ## A273574.P10936113878814920022

`and(-3, A273573(A000225(n)))`
-/

namespace A273574.P10936113878814920022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A273573 (A000225 n).toNat)

end

end A273574.P10936113878814920022

/-! ## A273574.P1257006054484678093

`record[A273573(A243354(n+1))]`
-/

namespace A273574.P1257006054484678093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273574.P1257006054484678093

/-!
# A273575: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A273575, there is no canonical definition to state claims against.
-/

/-! ## A273575.P11071233454901831862

`∑[A273573(n)]`
-/

namespace A273575.P11071233454901831862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273575.P11071233454901831862

/-! ## A273575.P6216790037275387364

`A273573(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A273575.P6216790037275387364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273573 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A273575.P6216790037275387364

/-! ## A273575.P6428340392451136059

`a(n-1)-(A000007(n)-A273573(n))` with `a(0)=1`
-/

namespace A273575.P6428340392451136059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A273573 n)

end

end A273575.P6428340392451136059

/-! ## A273575.P2618488219451891307

`a(n-1)+A057427(n)*A273573(n)` with `a(0)=1`
-/

namespace A273575.P2618488219451891307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A273573 n

end

end A273575.P2618488219451891307

/-! ## A273575.P12730417861128237361

`A273573(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A273575.P12730417861128237361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273573 n + a (A028242 (A004273 n).toNat).toNat

end

end A273575.P12730417861128237361

/-! ## A273575.P3851891571104395451

`∑[A273576(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273575.P3851891571104395451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273576 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273575.P3851891571104395451

/-! ## A273575.P8311192783596019484

`∑[∑[A273576(n)]+1-A273576(n)]`
-/

namespace A273575.P8311192783596019484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273576 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273575.P8311192783596019484

/-!
# A273576: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A273576, there is no canonical definition to state claims against.
-/

/-! ## A273576.P14547498868520195212

`Δ[A273573(n)]`
-/

namespace A273576.P14547498868520195212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273576.P14547498868520195212

/-! ## A273576.P15749998654425944339

`A273573(n+1)-A273573(n)`
-/

namespace A273576.P15749998654425944339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (n + 1) - A273573 n

end

end A273576.P15749998654425944339

/-! ## A273576.P13127920676869268471

`A273573(n+1)+A001489(A273573(n)+1)+1`
-/

namespace A273576.P13127920676869268471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273573 (n + 1) + (A001489 (A273573 n + 1).toNat + 1)

end

end A273576.P13127920676869268471

/-!
# A273577: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

The programs for A273577, the canonical program `A273577.P15347930587704899884` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273577 has offset 0).

The definition of A273577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273577.P15347930587704899884

`A069894(n)-or(1, A102376(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273577

/-- `A069894(n)-or(1, A102376(n))` -/
def P15347930587704899884.Spec : Prop :=
  ∀ n, P15347930587704899884.a n = A273577 n

theorem P15347930587704899884.correct : P15347930587704899884.Spec := by
  intro n
  simp only [A273577]

end A273577

/-! ## A273577.P12466015516662683503

`Δ[n²]²-A014681(A038573(n))²`
-/

namespace A273577.P12466015516662683503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A014681 (A038573 n).toNat ^ 2

end

end A273577.P12466015516662683503

namespace A273577

/-- `Δ[n²]²-A014681(A038573(n))²` -/
def P12466015516662683503.Spec : Prop :=
  ∀ n, P12466015516662683503.a n = A273577 n

end A273577

/-! ## A273577.P7379063252604181988

`(n+1)*A008574(n)+1-A102376(n)`
-/

namespace A273577.P7379063252604181988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008574 n + (1 - A102376 n)

end

end A273577.P7379063252604181988

namespace A273577

/-- `(n+1)*A008574(n)+1-A102376(n)` -/
def P7379063252604181988.Spec : Prop :=
  ∀ n, P7379063252604181988.a n = A273577 n

end A273577

/-! ## A273577.P411645533374253256

`(2*n+1)²+A000007(n)-A102376(n)`
-/

namespace A273577.P411645533374253256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + (A000007 n - A102376 n)

end

end A273577.P411645533374253256

namespace A273577

/-- `(2*n+1)²+A000007(n)-A102376(n)` -/
def P411645533374253256.Spec : Prop :=
  ∀ n, P411645533374253256.a n = A273577 n

end A273577

/-! ## A273577.P12028675726919223989

`A069894(n)-A034676(A001316(n))`
-/

namespace A273577.P12028675726919223989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A034676 (A001316 n).toNat

end

end A273577.P12028675726919223989

namespace A273577

/-- `A069894(n)-A034676(A001316(n))` -/
def P12028675726919223989.Spec : Prop :=
  ∀ n, P12028675726919223989.a n = A273577 n

end A273577

/-! ## A273577.P4349279690091997257

`A016754(n)-A106545(A001316(n))`
-/

namespace A273577.P4349279690091997257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A106545 (A001316 n).toNat

end

end A273577.P4349279690091997257

namespace A273577

/-- `A016754(n)-A106545(A001316(n))` -/
def P4349279690091997257.Spec : Prop :=
  ∀ n, P4349279690091997257.a n = A273577 n

end A273577

/-! ## A273577.P14071711860870075514

`A033996(n)-A181106(A001316(n))`
-/

namespace A273577.P14071711860870075514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A181106 (A001316 n).toNat

end

end A273577.P14071711860870075514

namespace A273577

/-- `A033996(n)-A181106(A001316(n))` -/
def P14071711860870075514.Spec : Prop :=
  ∀ n, P14071711860870075514.a n = A273577 n

end A273577

/-! ## A273577.P5343714759451923429

`A273579(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273577.P5343714759451923429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273579 (n - 1) + a (n - 1)

end

end A273577.P5343714759451923429

namespace A273577

/-- `A273579(n-1)+a(n-1)` -/
def P5343714759451923429.Spec : Prop :=
  ∀ n, P5343714759451923429.a n = A273577 n

end A273577

/-! ## A273577.P11042719164313078919

`∑[A273579(n)]+1-A273579(n)`
-/

namespace A273577.P11042719164313078919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273579 n)

end

end A273577.P11042719164313078919

namespace A273577

/-- `∑[A273579(n)]+1-A273579(n)` -/
def P11042719164313078919.Spec : Prop :=
  ∀ n, P11042719164313078919.a n = A273577 n

end A273577

/-! ## A273577.P1525018220080898948

`A273578(n+1)-(A273579(n)+A273578(n))`
-/

namespace A273577.P1525018220080898948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273578 (n + 1) - (A273579 n + A273578 n)

end

end A273577.P1525018220080898948

namespace A273577

/-- `A273578(n+1)-(A273579(n)+A273578(n))` -/
def P1525018220080898948.Spec : Prop :=
  ∀ n, P1525018220080898948.a n = A273577 n

end A273577

/-! ## A273577.P5944999741118061362

`A181385(A016825(n))-A102376(n)`
-/

namespace A273577.P5944999741118061362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A102376 n

end

end A273577.P5944999741118061362

namespace A273577

/-- `A181385(A016825(n))-A102376(n)` -/
def P5944999741118061362.Spec : Prop :=
  ∀ n, P5944999741118061362.a n = A273577 n

end A273577

/-! ## A273577.P8861743062657150109

`A181385(A016825(n))-A001316(n)²`
-/

namespace A273577.P8861743062657150109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A001316 n ^ 2

end

end A273577.P8861743062657150109

namespace A273577

/-- `A181385(A016825(n))-A001316(n)²` -/
def P8861743062657150109.Spec : Prop :=
  ∀ n, P8861743062657150109.a n = A273577 n

end A273577

/-! ## A273577.P10444589433020145212

`A008740(A008458(n))-A102376(n)`
-/

namespace A273577.P10444589433020145212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A102376 n

end

end A273577.P10444589433020145212

namespace A273577

/-- `A008740(A008458(n))-A102376(n)` -/
def P10444589433020145212.Spec : Prop :=
  ∀ n, P10444589433020145212.a n = A273577 n

end A273577

/-! ## A273577.P17925603775061354977

`A016754(n)-A008475(A102376(n))`
-/

namespace A273577.P17925603775061354977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A008475 (A102376 n).toNat

end

end A273577.P17925603775061354977

namespace A273577

/-- `A016754(n)-A008475(A102376(n))` -/
def P17925603775061354977.Spec : Prop :=
  ∀ n, P17925603775061354977.a n = A273577 n

end A273577

/-! ## A273577.P15142777347118351047

`A022144(A000217(n))+1-A102376(n)`
-/

namespace A273577.P15142777347118351047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat + (1 - A102376 n)

end

end A273577.P15142777347118351047

namespace A273577

/-- `A022144(A000217(n))+1-A102376(n)` -/
def P15142777347118351047.Spec : Prop :=
  ∀ n, P15142777347118351047.a n = A273577 n

end A273577

/-! ## A273577.P3058759586809515368

`A069894(n)-A109613(A102376(n))`
-/

namespace A273577.P3058759586809515368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A109613 (A102376 n).toNat

end

end A273577.P3058759586809515368

namespace A273577

/-- `A069894(n)-A109613(A102376(n))` -/
def P3058759586809515368.Spec : Prop :=
  ∀ n, P3058759586809515368.a n = A273577 n

end A273577

/-! ## A273577.P14602444524870143667

`A008574(n²+n)+1-A102376(n)`
-/

namespace A273577.P14602444524870143667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n ^ 2 + n) + (1 - A102376 n)

end

end A273577.P14602444524870143667

namespace A273577

/-- `A008574(n²+n)+1-A102376(n)` -/
def P14602444524870143667.Spec : Prop :=
  ∀ n, P14602444524870143667.a n = A273577 n

end A273577

/-!
# A273578: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

The programs for A273578, the canonical program `A273578.P16949239199051931656` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273578 has offset 0).

The definition of A273578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273578.P16949239199051931656

`∑[A273577(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273578

/-- `∑[A273577(n)]` -/
def P16949239199051931656.Spec : Prop :=
  ∀ n, P16949239199051931656.a n = A273578 n

theorem P16949239199051931656.correct : P16949239199051931656.Spec := by
  intro n
  simp only [A273578]

end A273578

/-! ## A273578.P16187465994760696568

`∑[A016754(n)-A102376(n)]+1`
-/

namespace A273578.P16187465994760696568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273578.P16187465994760696568

namespace A273578

/-- `∑[A016754(n)-A102376(n)]+1` -/
def P16187465994760696568.Spec : Prop :=
  ∀ n, P16187465994760696568.a n = A273578 n

end A273578

/-! ## A273578.P16984064606385792509

`A273577(n%A057029(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A273578.P16984064606385792509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273577 (Int.tmod (n : ℤ) (A057029 (n + 1))).toNat + a (n - 1)

end

end A273578.P16984064606385792509

namespace A273578

/-- `A273577(n%A057029(n+1))+a(n-1)` -/
def P16984064606385792509.Spec : Prop :=
  ∀ n, P16984064606385792509.a n = A273578 n

end A273578

/-! ## A273578.P328934642898307789

`a(n-1)+A273577(n)%A090076(n+1)` with `a(0)=1`
-/

namespace A273578.P328934642898307789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273577 n) (A090076 (n + 1))

end

end A273578.P328934642898307789

namespace A273578

/-- `a(n-1)+A273577(n)%A090076(n+1)` -/
def P328934642898307789.Spec : Prop :=
  ∀ n, P328934642898307789.a n = A273578 n

end A273578

/-! ## A273578.P17429967765476406420

`∑[A016754(n)-A106545(A001316(n))]`
-/

namespace A273578.P17429967765476406420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A106545 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P17429967765476406420

namespace A273578

/-- `∑[A016754(n)-A106545(A001316(n))]` -/
def P17429967765476406420.Spec : Prop :=
  ∀ n, P17429967765476406420.a n = A273578 n

end A273578

/-! ## A273578.P4309297348825990351

`∑[A069894(n)-A228564(A001316(n))]`
-/

namespace A273578.P4309297348825990351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A228564 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P4309297348825990351

namespace A273578

/-- `∑[A069894(n)-A228564(A001316(n))]` -/
def P4309297348825990351.Spec : Prop :=
  ∀ n, P4309297348825990351.a n = A273578 n

end A273578

/-! ## A273578.P8661035122225882368

`∑[∑[A273579(n)]+1-A273579(n)]`
-/

namespace A273578.P8661035122225882368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273579 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P8661035122225882368

namespace A273578

/-- `∑[∑[A273579(n)]+1-A273579(n)]` -/
def P8661035122225882368.Spec : Prop :=
  ∀ n, P8661035122225882368.a n = A273578 n

end A273578

/-! ## A273578.P2762284286240568917

`∑[A181385(A016825(n))-A102376(n)]`
-/

namespace A273578.P2762284286240568917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P2762284286240568917

namespace A273578

/-- `∑[A181385(A016825(n))-A102376(n)]` -/
def P2762284286240568917.Spec : Prop :=
  ∀ n, P2762284286240568917.a n = A273578 n

end A273578

/-! ## A273578.P10727036646401787322

`∑[A008740(A008458(n))-A102376(n)]`
-/

namespace A273578.P10727036646401787322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273578.P10727036646401787322

namespace A273578

/-- `∑[A008740(A008458(n))-A102376(n)]` -/
def P10727036646401787322.Spec : Prop :=
  ∀ n, P10727036646401787322.a n = A273578 n

end A273578

/-!
# A273579: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 803", based on the 5-celled von Neumann neighborhood.

The programs for A273579, the canonical program `A273579.P3856066556281764701` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273579 has offset 0).

The definition of A273579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273579.P3856066556281764701

`Δ[A273577(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A273579

/-- `Δ[A273577(n)]` -/
def P3856066556281764701.Spec : Prop :=
  ∀ n, P3856066556281764701.a n = A273579 n

theorem P3856066556281764701.correct : P3856066556281764701.Spec := by
  intro n
  simp only [A273579]

end A273579

/-! ## A273579.P4893742007512422120

`A273577(n+1)-A273577(n)`
-/

namespace A273579.P4893742007512422120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273577 (n + 1) - A273577 n

end

end A273579.P4893742007512422120

namespace A273579

/-- `A273577(n+1)-A273577(n)` -/
def P4893742007512422120.Spec : Prop :=
  ∀ n, P4893742007512422120.a n = A273579 n

theorem P4893742007512422120.correct : P4893742007512422120.Spec := by
  intro n
  simp only [A273579, Nat.add_sub_cancel, A273579.P4893742007512422120.a, A273579.P3856066556281764701.f1, A273579.P3856066556281764701.a, SequenceMachineLib.memo_apply]

end A273579

/-! ## A273579.P14529212951769315982

`Δ[A016754(n)-A034676(A001316(n))]`
-/

namespace A273579.P14529212951769315982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A034676 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P14529212951769315982

namespace A273579

/-- `Δ[A016754(n)-A034676(A001316(n))]` -/
def P14529212951769315982.Spec : Prop :=
  ∀ n, P14529212951769315982.a n = A273579 n

end A273579

/-! ## A273579.P406422431516430921

`Δ[A069894(n)-A106545(A001316(n))]`
-/

namespace A273579.P406422431516430921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A106545 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P406422431516430921

namespace A273579

/-- `Δ[A069894(n)-A106545(A001316(n))]` -/
def P406422431516430921.Spec : Prop :=
  ∀ n, P406422431516430921.a n = A273579 n

end A273579

/-! ## A273579.P6291401682463124083

`Δ[A181385(A016825(n))-A102376(n)]`
-/

namespace A273579.P6291401682463124083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P6291401682463124083

namespace A273579

/-- `Δ[A181385(A016825(n))-A102376(n)]` -/
def P6291401682463124083.Spec : Prop :=
  ∀ n, P6291401682463124083.a n = A273579 n

end A273579

/-! ## A273579.P6689281921781419326

`Δ[A008740(A008458(n))-A102376(n)]`
-/

namespace A273579.P6689281921781419326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P6689281921781419326

namespace A273579

/-- `Δ[A008740(A008458(n))-A102376(n)]` -/
def P6689281921781419326.Spec : Prop :=
  ∀ n, P6689281921781419326.a n = A273579 n

end A273579

/-! ## A273579.P9236114093443502158

`Δ[A022144(A000217(n))-A102376(n)]`
-/

namespace A273579.P9236114093443502158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat - A102376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273579.P9236114093443502158

namespace A273579

/-- `Δ[A022144(A000217(n))-A102376(n)]` -/
def P9236114093443502158.Spec : Prop :=
  ∀ n, P9236114093443502158.a n = A273579 n

end A273579

/-!
# A273581: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 825", based on the 5-celled von Neumann neighborhood.

The programs for A273581, there is no canonical definition to state claims against.
-/

/-! ## A273581.P17959881570771506784

`∑[A273430(n)]`
-/

namespace A273581.P17959881570771506784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273581.P17959881570771506784

/-! ## A273581.P12889083614781947404

`A273430(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273581.P12889083614781947404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273430 n + a (A023443 n).toNat

end

end A273581.P12889083614781947404

/-! ## A273581.P5943907702382967050

`a(n-1)+A057427(n)*A273430(n)` with `a(0)=1`
-/

namespace A273581.P5943907702382967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A273430 n

end

end A273581.P5943907702382967050

/-! ## A273581.P12847408127648773500

`a(n-1)+A273430(n)%A060834(n+1)` with `a(0)=1`
-/

namespace A273581.P12847408127648773500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273430 n) (A060834 (n + 1))

end

end A273581.P12847408127648773500

/-! ## A273581.P8109528595542180383

`a(n-1)+A273430(n)*A285341(2*n+1)` with `a(0)=1`
-/

namespace A273581.P8109528595542180383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A273430 n * A285341 (2 * n + 1)

end

end A273581.P8109528595542180383

/-! ## A273581.P18407155611871055098

`∑[∑[A273674(n)]+1-A273674(n)]`
-/

namespace A273581.P18407155611871055098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273674 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273674 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273581.P18407155611871055098

/-!
# A273582: Number of solid standard Young tableaux of n cells and height two.

The programs for A273582, there is no canonical definition to state claims against.
-/

/-! ## A273582.P8149425726313895127

`A215087(n+2)-A000085(n+2)`
-/

namespace A273582.P8149425726313895127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215087 (n + 2) - A000085 (n + 2)

end

end A273582.P8149425726313895127

/-! ## A273582.P3366990823816969897

`record[A214753(∑[n]+2)]`
-/

namespace A273582.P3366990823816969897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273582.P3366990823816969897

/-! ## A273582.P7763882071752332092

`A214753(∑[n+2]+3)`
-/

namespace A273582.P7763882071752332092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A273582.P7763882071752332092

/-! ## A273582.P1720935702268954157

`record[A010054(n)*A214753(n+2)]`
-/

namespace A273582.P1720935702268954157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A214753 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273582.P1720935702268954157

/-!
# A273583: Number of solid standard Young tableaux of n cells and height three.

The programs for A273583, there is no canonical definition to state claims against.
-/

/-! ## A273583.P1150012662659618062

`A320180(n+3)-A215087(n+3)`
-/

namespace A273583.P1150012662659618062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320180 (n + 3) - A215087 (n + 3)

end

end A273583.P1150012662659618062

/-! ## A273583.P153142181391004864

`A214753(∑[n+3]+6)`
-/

namespace A273583.P153142181391004864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A273583.P153142181391004864

/-! ## A273583.P8916875264652624122

`A214753(A167614(n+2))+char[19]`
-/

namespace A273583.P8916875264652624122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A167614 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273583.P8916875264652624122

/-! ## A273583.P4713253958939181731

`A007318(C(2, n))*A214753(A167614(n+2))`
-/

namespace A273583.P4713253958939181731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A214753 (A167614 (n + 2)).toNat

end

end A273583.P4713253958939181731

/-! ## A273583.P11588012814360591542

`A214753(A167614(n+2))/A007318(C(n, 2))`
-/

namespace A273583.P11588012814360591542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214753 (A167614 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A273583.P11588012814360591542

/-!
# A273584: Number of solid standard Young tableaux of n cells and height four.

The programs for A273584, there is no canonical definition to state claims against.
-/

/-! ## A273584.P5656714273609921607

`A214753(A145018(n+5))`
-/

namespace A273584.P5656714273609921607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A145018 (n + 5)).toNat

end

end A273584.P5656714273609921607

/-! ## A273584.P7605388399924800378

`A214753(A155212(n)+12)`
-/

namespace A273584.P7605388399924800378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A155212 n + 12).toNat

end

end A273584.P7605388399924800378

/-! ## A273584.P10736777571727745487

`A214753(A056000(n)+14)`
-/

namespace A273584.P10736777571727745487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A056000 n + 14).toNat

end

end A273584.P10736777571727745487

/-! ## A273584.P8614673902754642160

`A214753(eq[3, A141169(n)])`
-/

namespace A273584.P8614673902754642160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273584.P8614673902754642160

/-! ## A273584.P17974023644931435478

`A214753(eq[4, A002262(n)])`
-/

namespace A273584.P17974023644931435478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273584.P17974023644931435478

/-!
# A273585: Number of solid standard Young tableaux of n cells and height five.

The programs for A273585, there is no canonical definition to state claims against.
-/

/-! ## A273585.P14162095374306886836

`A214753(∑[n+5]+15)`
-/

namespace A273585.P14162095374306886836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A273585.P14162095374306886836

/-! ## A273585.P12036055066109164552

`record[A054527(n+1)*A214753(n)]`
-/

namespace A273585.P12036055066109164552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A214753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273585.P12036055066109164552

/-! ## A273585.P12241078712477189159

`char[A008612(n)]*A214753(A167499(n+4))`
-/

namespace A273585.P12241078712477189159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A214753 (A167499 (n + 4)).toNat

end

end A273585.P12241078712477189159

/-!
# A273586: Number of solid standard Young tableaux of n cells and height six.

The programs for A273586, there is no canonical definition to state claims against.
-/

/-! ## A273586.P495804825132566972

`A320183(n+6)-A320182(n+6)`
-/

namespace A273586.P495804825132566972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320183 (n + 6) - A320182 (n + 6)

end

end A273586.P495804825132566972

/-! ## A273586.P4325060012246659042

`A214753(eq[6, A002262(n)])`
-/

namespace A273586.P4325060012246659042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273586.P4325060012246659042

/-! ## A273586.P8991058459782871431

`A214753(eq[8, A141169(n)])`
-/

namespace A273586.P8991058459782871431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273586.P8991058459782871431

/-! ## A273586.P14169489839080036077

`A214753(eq[64, A059268(n)])`
-/

namespace A273586.P14169489839080036077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273586.P14169489839080036077

/-! ## A273586.P9634857821087308270

`A214753(A133263(n+6)+4)`
-/

namespace A273586.P9634857821087308270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A133263 (n + 6) + 4).toNat

end

end A273586.P9634857821087308270

/-!
# A273587: Number of solid standard Young tableaux of n cells and height seven.

The programs for A273587, there is no canonical definition to state claims against.
-/

/-! ## A273587.P15108872209021295357

`A214753(eq[7, A002262(n)])`
-/

namespace A273587.P15108872209021295357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273587.P15108872209021295357

/-! ## A273587.P1612167325871462562

`A214753(eq[7, A133233(n)])`
-/

namespace A273587.P1612167325871462562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273587.P1612167325871462562

/-! ## A273587.P16642082564803922983

`A214753(eq[13, A141169(n)])`
-/

namespace A273587.P16642082564803922983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273587.P16642082564803922983

/-! ## A273587.P16704334747607902075

`A214753(A167499(n+6)+2)`
-/

namespace A273587.P16704334747607902075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A167499 (n + 6) + 2).toNat

end

end A273587.P16704334747607902075

/-! ## A273587.P5338799463110507036

`A214753(A000096(n+6)+8)`
-/

namespace A273587.P5338799463110507036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A000096 (n + 6) + 8).toNat

end

end A273587.P5338799463110507036

/-!
# A273588: Number of solid standard Young tableaux of n cells and height eight.

The programs for A273588, there is no canonical definition to state claims against.
-/

/-! ## A273588.P6655918216025851986

`A214753(eq[8, A002262(n)])`
-/

namespace A273588.P6655918216025851986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273588.P6655918216025851986

/-! ## A273588.P16351532859147976644

`A214753(eq[8, A025668(n+1)])`
-/

namespace A273588.P16351532859147976644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273588.P16351532859147976644

/-! ## A273588.P9429642263157162670

`A214753(eq[8, A130270(n+1)])`
-/

namespace A273588.P9429642263157162670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273588.P9429642263157162670

/-! ## A273588.P9929651831472873272

`A214753(eq[8, A144328(n+1)])`
-/

namespace A273588.P9929651831472873272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273588.P9929651831472873272

/-!
# A273589: Number of solid standard Young tableaux of n cells and height nine.

The programs for A273589, there is no canonical definition to state claims against.
-/

/-! ## A273589.P13301268839110644738

`A214753(eq[9, A002262(n)])`
-/

namespace A273589.P13301268839110644738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273589.P13301268839110644738

/-! ## A273589.P1216951191289131577

`A214753(eq[9, A133233(n)])`
-/

namespace A273589.P1216951191289131577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273589.P1216951191289131577

/-! ## A273589.P9973607801503840714

`A214753(A000096(n+8)+10)`
-/

namespace A273589.P9973607801503840714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A000096 (n + 8) + 10).toNat

end

end A273589.P9973607801503840714

/-! ## A273589.P4738393897442301469

`A214753(eq[9, A025668(n+1)])`
-/

namespace A273589.P4738393897442301469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273589.P4738393897442301469

/-!
# A273590: Number of solid standard Young tableaux of n cells and height ten.

The programs for A273590, there is no canonical definition to state claims against.
-/

/-! ## A273590.P10216518726149456673

`record[A214753(A033443(n))]`
-/

namespace A273590.P10216518726149456673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A033443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273590.P10216518726149456673

/-! ## A273590.P17965776686038347667

`A214753(eq[10, A002262(n)])`
-/

namespace A273590.P17965776686038347667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273590.P17965776686038347667

/-! ## A273590.P13052014471304888376

`A214753(A133263(n+10)+8)`
-/

namespace A273590.P13052014471304888376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A133263 (n + 10) + 8).toNat

end

end A273590.P13052014471304888376

/-! ## A273590.P7003644765291478533

`A214753(A000217(n+10)+10)`
-/

namespace A273590.P7003644765291478533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A000217 (n + 10) + 10).toNat

end

end A273590.P7003644765291478533

/-! ## A273590.P12541301741268366586

`A214753(eq[10, A025668(n+1)])`
-/

namespace A273590.P12541301741268366586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273590.P12541301741268366586

/-!
# A273591: Number of solid standard Young tableaux of 2n cells and height n.

The programs for A273591, there is no canonical definition to state claims against.
-/

/-! ## A273591.P15975418676346956212

`A214753(∑[4*n])`
-/

namespace A273591.P15975418676346956212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273591.P15975418676346956212

/-! ## A273591.P15496520632487224700

`record[A214753(A050187(n))]`
-/

namespace A273591.P15496520632487224700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (A050187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273591.P15496520632487224700

/-! ## A273591.P4991354878380981184

`record[A214753(∑[A071045(n)])]`
-/

namespace A273591.P4991354878380981184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273591.P4991354878380981184

/-! ## A273591.P18409953812904161202

`record[A214753(∑[A110657(n)])]`
-/

namespace A273591.P18409953812904161202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273591.P18409953812904161202

/-! ## A273591.P13976661263217199449

`record[A214753(∑[A266724(n)])]`
-/

namespace A273591.P13976661263217199449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273591.P13976661263217199449

/-!
# A273592: a(n) = A010057(A273555(n)).

The programs for A273592, there is no canonical definition to state claims against.
-/

/-! ## A273592.P14560978713710638636

`A025446(A273555(n+1))`
-/

namespace A273592.P14560978713710638636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A273555 (n + 1)).toNat

end

end A273592.P14560978713710638636

/-! ## A273592.P10278589061155389987

`A368916(A270613(n+2)+A133265(n))`
-/

namespace A273592.P10278589061155389987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 (A270613 (n + 2) + A133265 n).toNat

end

end A273592.P10278589061155389987

/-! ## A273592.P17275475952434916338

`A127254(A138674(n+5)*A250120(3*n+1))`
-/

namespace A273592.P17275475952434916338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 (A138674 (n + 5) * A250120 (3 * n + 1)).toNat

end

end A273592.P17275475952434916338

/-! ## A273592.P6372769906013990675

`abs(A008683(lcm(n+1, A000607(2*(n+1)))+1))`
-/

namespace A273592.P6372769906013990675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (Int.lcm (n + 1 : ℤ) (A000607 (2 * (n + 1))) + 1)|

end

end A273592.P6372769906013990675

/-! ## A273592.P1295290631161670767

`A079978(A010814(n+1)*A357994(n+1))`
-/

namespace A273592.P1295290631161670767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A010814 (n + 1) * A357994 (n + 1)).toNat

end

end A273592.P1295290631161670767

/-!
# A273595: Least q > 0 such that min { x >= 0 | q + prime(n)*x + x^2 is composite } is a (local) maximum, cf. A273756 & A273770.

The programs for A273595, there is no canonical definition to state claims against.
-/

/-! ## A273595.P581335801611197019

`A273756(record[A285982(n)])`
-/

namespace A273595.P581335801611197019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273756 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273595.P581335801611197019

/-! ## A273595.P9340024106056025144

`A273756(A005097(n+1))`
-/

namespace A273595.P9340024106056025144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273756 (A005097 (n + 1)).toNat

end

end A273595.P9340024106056025144

/-! ## A273595.P2597522016907190435

`A273756(A139791(n+1))`
-/

namespace A273595.P2597522016907190435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273756 (A139791 (n + 1)).toNat

end

end A273595.P2597522016907190435

/-! ## A273595.P184065746130195133

`A273756(A102781(n+2))`
-/

namespace A273595.P184065746130195133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273756 (A102781 (n + 2)).toNat

end

end A273595.P184065746130195133

/-! ## A273595.P5302205360978237436

`A273756(A130290(n+2))`
-/

namespace A273595.P5302205360978237436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273756 (A130290 (n + 2)).toNat

end

end A273595.P5302205360978237436

/-!
# A273596: For n >= 2, a(n) is the number of slim rectangular diagrams of length n.

The programs for A273596, the canonical program `A273596.P17331484015668680667` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273596 has offset 2).

The definition of A273596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273596.P17331484015668680667

`n*a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A273596

/-- `n*a(n-1)+a(n-2)+2` -/
def P17331484015668680667.Spec : Prop :=
  ∀ n, (P17331484015668680667.a n : ℤ) = A273596 (n + 2)

theorem P17331484015668680667.correct : P17331484015668680667.Spec := by
  intro n
  simp only [A273596, Nat.add_sub_cancel]

end A273596

/-! ## A273596.P11528005959087996016

`∑[A155857(n)]`
-/

namespace A273596.P11528005959087996016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273596.P11528005959087996016

namespace A273596

/-- `∑[A155857(n)]` -/
def P11528005959087996016.Spec : Prop :=
  ∀ n, P11528005959087996016.a n = A273596 (n + 2)

end A273596

/-! ## A273596.P14083196152507754822

`A155857(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273596.P14083196152507754822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155857 n + a (A023443 n).toNat

end

end A273596.P14083196152507754822

namespace A273596

/-- `A155857(n)+a(A023443(n))` -/
def P14083196152507754822.Spec : Prop :=
  ∀ n, P14083196152507754822.a n = A273596 (n + 2)

end A273596

/-! ## A273596.P5269350497742112872

`A155857(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A273596.P5269350497742112872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155857 n + a (A028310 n - 1).toNat

end

end A273596.P5269350497742112872

namespace A273596

/-- `A155857(n)+a(A028310(n)-1)` -/
def P5269350497742112872.Spec : Prop :=
  ∀ n, P5269350497742112872.a n = A273596 (n + 2)

end A273596

/-! ## A273596.P7699481161071427713

`A155857(n)+a(A005843(n)-n-1)` with `a(0)=1`
-/

namespace A273596.P7699481161071427713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155857 n + a (A005843 n - (n : ℤ) - 1).toNat

end

end A273596.P7699481161071427713

namespace A273596

/-- `A155857(n)+a(A005843(n)-n-1)` -/
def P7699481161071427713.Spec : Prop :=
  ∀ n, P7699481161071427713.a n = A273596 (n + 2)

end A273596

/-!
# A273597: min { x >= 0 | A273595(n) + prime(n)*x + x^2 is composite }, where A273595(n) is such that this is a local maximum.

The programs for A273597, there is no canonical definition to state claims against.
-/

/-! ## A273597.P17060462688461347922

`A273770((p?[2*n+1]+9)/2-5)`
-/

namespace A273597.P17060462688461347922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273770 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 9 : ℚ) / 2 - 5)).toNat

end

end A273597.P17060462688461347922

/-! ## A273597.P8858962492724731815

`A273770(record[A285982(n)])`
-/

namespace A273597.P8858962492724731815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273770 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273597.P8858962492724731815

/-! ## A273597.P12795302903120122087

`A273770(A005097(n+1))`
-/

namespace A273597.P12795302903120122087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273770 (A005097 (n + 1)).toNat

end

end A273597.P12795302903120122087

/-! ## A273597.P111705834726699784

`A273770(A139791(n+1))`
-/

namespace A273597.P111705834726699784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273770 (A139791 (n + 1)).toNat

end

end A273597.P111705834726699784

/-! ## A273597.P16565712405408179268

`A273770(A102781(n+2))`
-/

namespace A273597.P16565712405408179268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273770 (A102781 (n + 2)).toNat

end

end A273597.P16565712405408179268

/-!
# A273598: Numbers k such that (11^k - 6^k)/5 is prime.

The programs for A273598, there is no canonical definition to state claims against.
-/

/-! ## A273598.P15405883002654012454

`p?[A111439(∑[A213671(n+1)])]`
-/

namespace A273598.P15405883002654012454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213671 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273598.P15405883002654012454

