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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A096000: Cupolar numbers: a(n) = (n+1)*(5*n^2 + 7*n + 3)/3.

The programs for A096000, the canonical program `A096000.P7512817449052559028` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096000 has offset 0).

The definition of A096000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(5*n²+7*n+3)/3` (program `A096000.P6585676990795344427`, by `A096000.P6585676990795344427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096000.P9697682995952705580

`ogf((1+6x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A096000.P9697682995952705580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 3] [1, -4, 6, -4, 1] n

end

end A096000.P9697682995952705580

namespace A096000

/-- `ogf((1+6x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P9697682995952705580.Spec : Prop :=
  ∀ n, P9697682995952705580.a n = A096000 n

end A096000

/-! ## A096000.P6585676990795344427

`(n+1)*(5*n²+7*n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096000.P6585676990795344427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (5 * n ^ 2 + 7 * n + 3) : ℚ) / 3

end

end A096000.P6585676990795344427

namespace A096000

/-- `(n+1)*(5*n²+7*n+3)/3` -/
def P6585676990795344427.Spec : Prop :=
  ∀ n, P6585676990795344427.a n = (A096000 n : ℚ)

theorem P6585676990795344427.correct : P6585676990795344427.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A096000, Nat.add_sub_cancel, A096000.P6585676990795344427.a, A096000.P7512817449052559028.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A096000, Nat.add_sub_cancel, A096000.P6585676990795344427.a, A096000.P7512817449052559028.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096000

/-! ## A096000.P7512817449052559028

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=37, a(3)=92`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096000

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7512817449052559028.Spec : Prop :=
  ∀ n, P7512817449052559028.a n = A096000 n

theorem P7512817449052559028.correct : P7512817449052559028.Spec := by
  intro n
  simp only [A096000]

end A096000

/-! ## A096000.P9115996415592484353

`∑[∑[a(n-1)+10]]` with `a(0)=1, a(1)=8`
-/

namespace A096000.P9115996415592484353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P9115996415592484353

namespace A096000

/-- `∑[∑[a(n-1)+10]]` -/
def P9115996415592484353.Spec : Prop :=
  ∀ n, (P9115996415592484353.a n : ℤ) = A096000 n

end A096000

/-! ## A096000.P4151467483349019590

`∑[∑[ogf((1+6x+3x^2)/(1-2x+x^2))]]`
-/

namespace A096000.P4151467483349019590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P4151467483349019590

namespace A096000

/-- `∑[∑[ogf((1+6x+3x^2)/(1-2x+x^2))]]` -/
def P4151467483349019590.Spec : Prop :=
  ∀ n, P4151467483349019590.a n = A096000 n

end A096000

/-! ## A096000.P14425318157723899930

`∑[(2*n+1)²]+∑[lcm(n, n-1)]`
-/

namespace A096000.P14425318157723899930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A096000.P14425318157723899930

namespace A096000

/-- `∑[(2*n+1)²]+∑[lcm(n, n-1)]` -/
def P14425318157723899930.Spec : Prop :=
  ∀ n, (P14425318157723899930.a n : ℤ) = A096000 n

end A096000

/-! ## A096000.P15130555698923856730

`∑[C(2*n, 2)]+(2*n+1)*∑[n+1]`
-/

namespace A096000.P15130555698923856730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A096000.P15130555698923856730

namespace A096000

/-- `∑[C(2*n, 2)]+(2*n+1)*∑[n+1]` -/
def P15130555698923856730.Spec : Prop :=
  ∀ n, (P15130555698923856730.a n : ℤ) = A096000 n

end A096000

/-! ## A096000.P8096215331629781156

`(2*n+1)²+a(n-1)+n²-n` with `a(0)=1`
-/

namespace A096000.P8096215331629781156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) + ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A096000.P8096215331629781156

namespace A096000

/-- `(2*n+1)²+a(n-1)+n²-n` -/
def P8096215331629781156.Spec : Prop :=
  ∀ n, P8096215331629781156.a n = A096000 n

end A096000

/-! ## A096000.P7599909222081620198

`∑[(2*n+1)*(n+1)]+lcm(2*n+1, ∑[n])`
-/

namespace A096000.P7599909222081620198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A096000.P7599909222081620198

namespace A096000

/-- `∑[(2*n+1)*(n+1)]+lcm(2*n+1, ∑[n])` -/
def P7599909222081620198.Spec : Prop :=
  ∀ n, (P7599909222081620198.a n : ℤ) = A096000 n

end A096000

/-! ## A096000.P3410417259072582907

`A057813(n)-n^3`
-/

namespace A096000.P3410417259072582907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - (n ^ 3 : ℤ)

end

end A096000.P3410417259072582907

namespace A096000

/-- `A057813(n)-n^3` -/
def P3410417259072582907.Spec : Prop :=
  ∀ n, P3410417259072582907.a n = A096000 n

end A096000

/-! ## A096000.P7467501911144925062

`∑[A033951(n)+n²]`
-/

namespace A096000.P7467501911144925062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P7467501911144925062

namespace A096000

/-- `∑[A033951(n)+n²]` -/
def P7467501911144925062.Spec : Prop :=
  ∀ n, P7467501911144925062.a n = A096000 n

end A096000

/-! ## A096000.P18194413369393425159

`A051662(n)+∑[n²]`
-/

namespace A096000.P18194413369393425159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096000.P18194413369393425159

namespace A096000

/-- `A051662(n)+∑[n²]` -/
def P18194413369393425159.Spec : Prop :=
  ∀ n, P18194413369393425159.a n = A096000 n

end A096000

/-! ## A096000.P12641206271396583244

`∑[A085473(n)-n²]`
-/

namespace A096000.P12641206271396583244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P12641206271396583244

namespace A096000

/-- `∑[A085473(n)-n²]` -/
def P12641206271396583244.Spec : Prop :=
  ∀ n, P12641206271396583244.a n = A096000 n

end A096000

/-! ## A096000.P15690118376259651394

`A005920(n)+∑[∑[n]]`
-/

namespace A096000.P15690118376259651394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096000.P15690118376259651394

namespace A096000

/-- `A005920(n)+∑[∑[n]]` -/
def P15690118376259651394.Spec : Prop :=
  ∀ n, P15690118376259651394.a n = A096000 n

end A096000

/-! ## A096000.P10927714259957049619

`A100179(n+1)+∑[n]`
-/

namespace A096000.P10927714259957049619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100179 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096000.P10927714259957049619

namespace A096000

/-- `A100179(n+1)+∑[n]` -/
def P10927714259957049619.Spec : Prop :=
  ∀ n, P10927714259957049619.a n = A096000 n

end A096000

/-! ## A096000.P1996747517675311896

`∑[A168668(n)+n+1]`
-/

namespace A096000.P1996747517675311896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P1996747517675311896

namespace A096000

/-- `∑[A168668(n)+n+1]` -/
def P1996747517675311896.Spec : Prop :=
  ∀ n, P1996747517675311896.a n = A096000 n

end A096000

/-! ## A096000.P1140376947525850137

`∑[A273982(n+1)+n]`
-/

namespace A096000.P1140376947525850137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P1140376947525850137

namespace A096000

/-- `∑[A273982(n+1)+n]` -/
def P1140376947525850137.Spec : Prop :=
  ∀ n, P1140376947525850137.a n = A096000 n

end A096000

/-! ## A096000.P17101294620967936972

`∑[A079273(n+1)-n]`
-/

namespace A096000.P17101294620967936972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096000.P17101294620967936972

namespace A096000

/-- `∑[A079273(n+1)-n]` -/
def P17101294620967936972.Spec : Prop :=
  ∀ n, P17101294620967936972.a n = A096000 n

end A096000

/-! ## A096000.P9825251784446967223

`A102296(n)-∑[n+1]`
-/

namespace A096000.P9825251784446967223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102296 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A096000.P9825251784446967223

namespace A096000

/-- `A102296(n)-∑[n+1]` -/
def P9825251784446967223.Spec : Prop :=
  ∀ n, P9825251784446967223.a n = A096000 n

end A096000

/-! ## A096000.P4704434681939575576

`2*A162148(n)+n+1`
-/

namespace A096000.P4704434681939575576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162148 n + (n + 1 : ℤ)

end

end A096000.P4704434681939575576

namespace A096000

/-- `2*A162148(n)+n+1` -/
def P4704434681939575576.Spec : Prop :=
  ∀ n, P4704434681939575576.a n = A096000 n

end A096000

/-!
# A096001: Least number k such that the number of divisors of k which are < log(k) equals n.

The programs for A096001, there is no canonical definition to state claims against.
-/

/-! ## A096001.P7676533041286340953

`record[A290096(n+1)%A265759(n+1)]`
-/

namespace A096001.P7676533041286340953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290096 (n + 1)) (A265759 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096001.P7676533041286340953

/-! ## A096001.P13129834991405503632

`record[A350626(2*n+1)+A010051(n+1)]`
-/

namespace A096001.P13129834991405503632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350626 (2 * n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096001.P13129834991405503632

/-! ## A096001.P3472557411549562718

`A005349(A350293(n+1)+A275609(n))`
-/

namespace A096001.P3472557411549562718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (A350293 (n + 1) + A275609 n).toNat

end

end A096001.P3472557411549562718

/-!
# A096002: Let {b(n)} = A095996; then a(n) = number of terms {b(1),b(2),...,b(n-1)} which are coprime to n.

The programs for A096002, there is no canonical definition to state claims against.
-/

/-! ## A096002.P8808663689456437904

`A333496(n+1)-A070887(A050732(n+1))`
-/

namespace A096002.P8808663689456437904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333496 (n + 1) - A070887 (A050732 (n + 1)).toNat

end

end A096002.P8808663689456437904

/-! ## A096002.P3132733569986516964

`A211100(A054432(n+1))*A267537(n+3)`
-/

namespace A096002.P3132733569986516964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A054432 (n + 1)).toNat * A267537 (n + 3)

end

end A096002.P3132733569986516964

/-! ## A096002.P7785858961901860154

`A122376(A122376(2*(n+1)))%A128344(n+4)`
-/

namespace A096002.P7785858961901860154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122376 (A122376 (2 * (n + 1))).toNat) (A128344 (n + 4))

end

end A096002.P7785858961901860154

/-! ## A096002.P13822938311254519038

`A000523(A005179(2*(n+1)))-A038566(n+1)`
-/

namespace A096002.P13822938311254519038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A005179 (2 * (n + 1))).toNat - A038566 (n + 1)

end

end A096002.P13822938311254519038

/-!
# A096003: Smallest semiprime (A001358) which is at the end of an arithmetic progression of n semiprimes.

The programs for A096003, there is no canonical definition to state claims against.
-/

/-! ## A096003.P5798788126285479655

`A226833(∑[n+1])`
-/

namespace A096003.P5798788126285479655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096003.P5798788126285479655

/-! ## A096003.P15718793238388196142

`record[A226833(A038722(n+1))]`
-/

namespace A096003.P15718793238388196142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096003.P15718793238388196142

/-! ## A096003.P700357966736015186

`record[A226833(A049777(n+1))]`
-/

namespace A096003.P700357966736015186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096003.P700357966736015186

/-! ## A096003.P10761183027036561598

`record[A226833(A061579(n)+1)]`
-/

namespace A096003.P10761183027036561598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096003.P10761183027036561598

/-! ## A096003.P4549651071705367842

`record[A226833(A064789(n+1))]`
-/

namespace A096003.P4549651071705367842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226833 (A064789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096003.P4549651071705367842

/-!
# A096004: Number of convex triangular polyominoes containing n cells.

The programs for A096004, there is no canonical definition to state claims against.
-/

/-! ## A096004.P17918820799214721023

`A218541(A003051(n+1)^4)`
-/

namespace A096004.P17918820799214721023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218541 (A003051 (n + 1) ^ 4).toNat

end

end A096004.P17918820799214721023

/-! ## A096004.P5936785008195728195

`A218541(A003051(n+1)²²)`
-/

namespace A096004.P5936785008195728195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218541 ((A003051 (n + 1) ^ 2) ^ 2).toNat

end

end A096004.P5936785008195728195

/-! ## A096004.P13011862234169087416

`A070939(A000984(A066301(A263931(n))))`
-/

namespace A096004.P13011862234169087416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000984 (A066301 (A263931 n).toNat).toNat).toNat

end

end A096004.P13011862234169087416

/-! ## A096004.P1646821691177517674

`A008616(A209639(n)+A000005(A011782(n)))`
-/

namespace A096004.P1646821691177517674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A209639 n + A000005 (A011782 n).toNat).toNat

end

end A096004.P1646821691177517674

/-! ## A096004.P3587372040507512258

`A297772(A109920(n+2))`
-/

namespace A096004.P3587372040507512258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A109920 (n + 2)).toNat

end

end A096004.P3587372040507512258

/-!
# A096005: For k >= 1, let b(k) = ceiling( Sum_{i=1..k} 1/i ); a(n) = number of b(k) that are equal to n.

The programs for A096005, there is no canonical definition to state claims against.
-/

/-! ## A096005.P5260293159940143997

`record[Δ[A002387(floor(n/2))]]`
-/

namespace A096005.P5260293159940143997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096005.P5260293159940143997

/-! ## A096005.P7151553909164000284

`Δ[A002387(log2(ceil(2^(n-1))))]`
-/

namespace A096005.P7151553909164000284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096005.P7151553909164000284

/-! ## A096005.P7712500182486906448

`A002387(n)-A002387(A028310(n)-1)`
-/

namespace A096005.P7712500182486906448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - A002387 (A028310 n - 1).toNat

end

end A096005.P7712500182486906448

/-! ## A096005.P12001384905621627459

`A002387(n)-A002387(A057428(n)+n)`
-/

namespace A096005.P12001384905621627459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - A002387 (A057428 n + (n : ℤ)).toNat

end

end A096005.P12001384905621627459

/-! ## A096005.P14270437499291748442

`A002387(n)-A002387(A004273(n)-n)`
-/

namespace A096005.P14270437499291748442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 n - A002387 (A004273 n - (n : ℤ)).toNat

end

end A096005.P14270437499291748442

/-!
# A096006: Triangle read by rows: T(n,k) = largest prime factor of binomial(n,k), 1 <= k <= n-1.

The programs for A096006, the canonical program `A096006.P16450818413955098233` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096006 has offset 2).

The definition of A096006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096006.P16450818413955098233

`p?[A098802(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096006

/-- `p?[A098802(n)]` -/
def P16450818413955098233.Spec : Prop :=
  ∀ n, P16450818413955098233.a n = A096006 (n + 2)

theorem P16450818413955098233.correct : P16450818413955098233.Spec := by
  intro n
  simp only [A096006, Nat.add_sub_cancel]

end A096006

/-! ## A096006.P3992419668606088690

`A098802(lt[1, A007318(n)])`
-/

namespace A096006.P3992419668606088690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096006.P3992419668606088690

namespace A096006

/-- `A098802(lt[1, A007318(n)])` -/
def P3992419668606088690.Spec : Prop :=
  ∀ n, P3992419668606088690.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P3581178108547217648

`A098802(lt[1, A098802(n)])`
-/

namespace A096006.P3581178108547217648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096006.P3581178108547217648

namespace A096006

/-- `A098802(lt[1, A098802(n)])` -/
def P3581178108547217648.Spec : Prop :=
  ∀ n, P3581178108547217648.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P15001116222274128152

`filter[A098802(n), A010051(#)]`
-/

namespace A096006.P15001116222274128152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A096006.P15001116222274128152

namespace A096006

/-- `filter[A098802(n), A010051(#)]` -/
def P15001116222274128152.Spec : Prop :=
  ∀ n, P15001116222274128152.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P7234411946674065149

`filter[A098802(n), A014306(#)]`
-/

namespace A096006.P7234411946674065149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A096006.P7234411946674065149

namespace A096006

/-- `filter[A098802(n), A014306(#)]` -/
def P7234411946674065149.Spec : Prop :=
  ∀ n, P7234411946674065149.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P8692311639545069181

`filter[A098802(n), A049240(#)]`
-/

namespace A096006.P8692311639545069181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A096006.P8692311639545069181

namespace A096006

/-- `filter[A098802(n), A049240(#)]` -/
def P8692311639545069181.Spec : Prop :=
  ∀ n, P8692311639545069181.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P15604007382661467235

`filter[A098802(n), A053867(#)]`
-/

namespace A096006.P15604007382661467235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A096006.P15604007382661467235

namespace A096006

/-- `filter[A098802(n), A053867(#)]` -/
def P15604007382661467235.Spec : Prop :=
  ∀ n, P15604007382661467235.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P16812052900501758271

`filter[A098802(n), A066829(#)]`
-/

namespace A096006.P16812052900501758271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A096006.P16812052900501758271

namespace A096006

/-- `filter[A098802(n), A066829(#)]` -/
def P16812052900501758271.Spec : Prop :=
  ∀ n, P16812052900501758271.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P9055540577378628646

`filter[A098802(n), A069513(#)]`
-/

namespace A096006.P9055540577378628646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A096006.P9055540577378628646

namespace A096006

/-- `filter[A098802(n), A069513(#)]` -/
def P9055540577378628646.Spec : Prop :=
  ∀ n, P9055540577378628646.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P16541149630060922085

`filter[A098802(n), A092248(#)]`
-/

namespace A096006.P16541149630060922085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A096006.P16541149630060922085

namespace A096006

/-- `filter[A098802(n), A092248(#)]` -/
def P16541149630060922085.Spec : Prop :=
  ∀ n, P16541149630060922085.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P10286641819230173806

`filter[A098802(n), A099104(#)]`
-/

namespace A096006.P10286641819230173806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A096006.P10286641819230173806

namespace A096006

/-- `filter[A098802(n), A099104(#)]` -/
def P10286641819230173806.Spec : Prop :=
  ∀ n, P10286641819230173806.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P2380816318714015733

`filter[A098802(n), A101040(#)]`
-/

namespace A096006.P2380816318714015733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A096006.P2380816318714015733

namespace A096006

/-- `filter[A098802(n), A101040(#)]` -/
def P2380816318714015733.Spec : Prop :=
  ∀ n, P2380816318714015733.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P38655365127691860

`filter[A098802(n), A144101(#)]`
-/

namespace A096006.P38655365127691860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A096006.P38655365127691860

namespace A096006

/-- `filter[A098802(n), A144101(#)]` -/
def P38655365127691860.Spec : Prop :=
  ∀ n, P38655365127691860.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P14480052967774644768

`filter[A098802(n), A165560(#)]`
-/

namespace A096006.P14480052967774644768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A096006.P14480052967774644768

namespace A096006

/-- `filter[A098802(n), A165560(#)]` -/
def P14480052967774644768.Spec : Prop :=
  ∀ n, P14480052967774644768.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P15276735419145884441

`p?[A006530(A007318(n))]`
-/

namespace A096006.P15276735419145884441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096006.P15276735419145884441

namespace A096006

/-- `p?[A006530(A007318(n))]` -/
def P15276735419145884441.Spec : Prop :=
  ∀ n, P15276735419145884441.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P13917179018054492858

`p?[A006530(A074909(n))]`
-/

namespace A096006.P13917179018054492858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096006.P13917179018054492858

namespace A096006

/-- `p?[A006530(A074909(n))]` -/
def P13917179018054492858.Spec : Prop :=
  ∀ n, P13917179018054492858.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P61282152064033519

`A006530(A014430(n)+1)`
-/

namespace A096006.P61282152064033519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014430 n + 1).toNat

end

end A096006.P61282152064033519

namespace A096006

/-- `A006530(A014430(n)+1)` -/
def P61282152064033519.Spec : Prop :=
  ∀ n, P61282152064033519.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P14164344013053220722

`A006530(A014410(n+2))`
-/

namespace A096006.P14164344013053220722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014410 (n + 2)).toNat

end

end A096006.P14164344013053220722

namespace A096006

/-- `A006530(A014410(n+2))` -/
def P14164344013053220722.Spec : Prop :=
  ∀ n, P14164344013053220722.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P4509768293730194909

`A006530(A028327(n)/2)`
-/

namespace A096006.P4509768293730194909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A028327 n : ℚ) / 2)).toNat

end

end A096006.P4509768293730194909

namespace A096006

/-- `A006530(A028327(n)/2)` -/
def P4509768293730194909.Spec : Prop :=
  ∀ n, P4509768293730194909.a n = A096006 (n + 2)

end A096006

/-! ## A096006.P12026561845002773644

`A006530(ceil(sqrt(A065420(n))))`
-/

namespace A096006.P12026561845002773644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌈Real.sqrt (A065420 n : ℝ)⌉.toNat

end

end A096006.P12026561845002773644

namespace A096006

/-- `A006530(ceil(sqrt(A065420(n))))` -/
def P12026561845002773644.Spec : Prop :=
  ∀ n, P12026561845002773644.a n = A096006 (n + 2)

end A096006

/-!
# A096007: Triangle read by rows: T(n,k) = smallest prime factor of binomial(n,k), 1 <= k <= n-1.

The programs for A096007, the canonical program `A096007.P246349866642765926` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096007 has offset 2).

The definition of A096007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096007.P246349866642765926

`A020639((A014430(n)+1)%A046092(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A096007

/-- `A020639((A014430(n)+1)%A046092(n+1))` -/
def P246349866642765926.Spec : Prop :=
  ∀ n, P246349866642765926.a n = A096007 (n + 2)

theorem P246349866642765926.correct : P246349866642765926.Spec := by
  intro n
  simp only [A096007, Nat.add_sub_cancel]

end A096007

/-! ## A096007.P7262212012705088494

`p?[A020639(A007318(n))]`
-/

namespace A096007.P7262212012705088494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096007.P7262212012705088494

namespace A096007

/-- `p?[A020639(A007318(n))]` -/
def P7262212012705088494.Spec : Prop :=
  ∀ n, P7262212012705088494.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P18149267899039426774

`p?[A020639(A074909(n))]`
-/

namespace A096007.P18149267899039426774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096007.P18149267899039426774

namespace A096007

/-- `p?[A020639(A074909(n))]` -/
def P18149267899039426774.Spec : Prop :=
  ∀ n, P18149267899039426774.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P2218059765985902924

`p?[A020639(A135225(n))]`
-/

namespace A096007.P2218059765985902924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096007.P2218059765985902924

namespace A096007

/-- `p?[A020639(A135225(n))]` -/
def P2218059765985902924.Spec : Prop :=
  ∀ n, P2218059765985902924.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P14903484094964584685

`p?[A020639(A135278(n))]`
-/

namespace A096007.P14903484094964584685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096007.P14903484094964584685

namespace A096007

/-- `p?[A020639(A135278(n))]` -/
def P14903484094964584685.Spec : Prop :=
  ∀ n, P14903484094964584685.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P16724325166079381180

`A020639(A014430(n)+1)`
-/

namespace A096007.P16724325166079381180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014430 n + 1).toNat

end

end A096007.P16724325166079381180

namespace A096007

/-- `A020639(A014430(n)+1)` -/
def P16724325166079381180.Spec : Prop :=
  ∀ n, P16724325166079381180.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P7305053186836534844

`A020639(A014410(n+2))`
-/

namespace A096007.P7305053186836534844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014410 (n + 2)).toNat

end

end A096007.P7305053186836534844

namespace A096007

/-- `A020639(A014410(n+2))` -/
def P7305053186836534844.Spec : Prop :=
  ∀ n, P7305053186836534844.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P13096740982809441384

`A020639(A028327(n)/2)`
-/

namespace A096007.P13096740982809441384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A028327 n : ℚ) / 2)).toNat

end

end A096007.P13096740982809441384

namespace A096007

/-- `A020639(A028327(n)/2)` -/
def P13096740982809441384.Spec : Prop :=
  ∀ n, P13096740982809441384.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P16405776601151684149

`A020639(ceil(sqrt(A065420(n))))`
-/

namespace A096007.P16405776601151684149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈Real.sqrt (A065420 n : ℝ)⌉.toNat

end

end A096007.P16405776601151684149

namespace A096007

/-- `A020639(ceil(sqrt(A065420(n))))` -/
def P16405776601151684149.Spec : Prop :=
  ∀ n, P16405776601151684149.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P2891238014214872611

`A020639(A074909(comp[∑[n]]))`
-/

namespace A096007.P2891238014214872611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A096007.P2891238014214872611

namespace A096007

/-- `A020639(A074909(comp[∑[n]]))` -/
def P2891238014214872611.Spec : Prop :=
  ∀ n, P2891238014214872611.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P8507518121332757508

`A020639(sqrt(A014719(n+2)))`
-/

namespace A096007.P8507518121332757508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A014719 (n + 2) : ℝ))).toNat

end

end A096007.P8507518121332757508

namespace A096007

/-- `A020639(sqrt(A014719(n+2)))` -/
def P8507518121332757508.Spec : Prop :=
  ∀ n, P8507518121332757508.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P3464727666439880518

`A020639(A135278(A007401(n+1)))`
-/

namespace A096007.P3464727666439880518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135278 (A007401 (n + 1)).toNat).toNat

end

end A096007.P3464727666439880518

namespace A096007

/-- `A020639(A135278(A007401(n+1)))` -/
def P3464727666439880518.Spec : Prop :=
  ∀ n, P3464727666439880518.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P2765241208800715979

`A020639(A007318(lt[1, A007318(n)]))`
-/

namespace A096007.P2765241208800715979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat

end

end A096007.P2765241208800715979

namespace A096007

/-- `A020639(A007318(lt[1, A007318(n)]))` -/
def P2765241208800715979.Spec : Prop :=
  ∀ n, P2765241208800715979.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P11178147390186033894

`A020639(A051597(n)+A007318(n))`
-/

namespace A096007.P11178147390186033894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051597 n + A007318 n).toNat

end

end A096007.P11178147390186033894

namespace A096007

/-- `A020639(A051597(n)+A007318(n))` -/
def P11178147390186033894.Spec : Prop :=
  ∀ n, P11178147390186033894.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P1218447255902117018

`A020639(A028263(n)-A007318(n))`
-/

namespace A096007.P1218447255902117018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028263 n - A007318 n).toNat

end

end A096007.P1218447255902117018

namespace A096007

/-- `A020639(A028263(n)-A007318(n))` -/
def P1218447255902117018.Spec : Prop :=
  ∀ n, P1218447255902117018.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P3002302962377917931

`A020639(A074909(n+1)+A074909(n))`
-/

namespace A096007.P3002302962377917931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A074909 (n + 1) + A074909 n).toNat

end

end A096007.P3002302962377917931

namespace A096007

/-- `A020639(A074909(n+1)+A074909(n))` -/
def P3002302962377917931.Spec : Prop :=
  ∀ n, P3002302962377917931.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P8138182136437994978

`A020639(A007318(eq[2, 2%A007318(n)²]))`
-/

namespace A096007.P8138182136437994978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A007318 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A096007.P8138182136437994978

namespace A096007

/-- `A020639(A007318(eq[2, 2%A007318(n)²]))` -/
def P8138182136437994978.Spec : Prop :=
  ∀ n, P8138182136437994978.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P2230329915964356602

`A020639(A051597(n)+ceil(A134059(n)/3))`
-/

namespace A096007.P2230329915964356602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051597 n + ⌈(A134059 n : ℚ) / 3⌉).toNat

end

end A096007.P2230329915964356602

namespace A096007

/-- `A020639(A051597(n)+ceil(A134059(n)/3))` -/
def P2230329915964356602.Spec : Prop :=
  ∀ n, P2230329915964356602.a n = A096007 (n + 2)

end A096007

/-! ## A096007.P8872814079960293872

`A020639(A051597(n)+ceil(A134060(n)/3))`
-/

namespace A096007.P8872814079960293872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051597 n + ⌈(A134060 n : ℚ) / 3⌉).toNat

end

end A096007.P8872814079960293872

namespace A096007

/-- `A020639(A051597(n)+ceil(A134060(n)/3))` -/
def P8872814079960293872.Spec : Prop :=
  ∀ n, P8872814079960293872.a n = A096007 (n + 2)

end A096007

/-!
# A096008: Irregular triangle read by rows where n-th row contains all quadratic residues (including zero) mod n.

The programs for A096008, there is no canonical definition to state claims against.
-/

/-! ## A096008.P18386152584621643894

`A170964((A184720(2*(n+1))+1)²-2)`
-/

namespace A096008.P18386152584621643894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170964 ((A184720 (2 * (n + 1)) + 1) ^ 2 - 2).toNat

end

end A096008.P18386152584621643894

/-! ## A096008.P1381012499523031097

`p?[A026659(2*n+1)]%A140207(2*n+1)`
-/

namespace A096008.P1381012499523031097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026659 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A140207 (2 * n + 1))

end

end A096008.P1381012499523031097

/-! ## A096008.P13758140277846944888

`A155014(A001405(n))%A238279(n)`
-/

namespace A096008.P13758140277846944888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155014 (A001405 n).toNat) (A238279 n)

end

end A096008.P13758140277846944888

/-! ## A096008.P8784083418648802649

`A126226(and(A054142(2*n), A126223(2*n)))`
-/

namespace A096008.P8784083418648802649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126226 (Int.land (A054142 (2 * n)) (A126223 (2 * n))).toNat

end

end A096008.P8784083418648802649

/-! ## A096008.P17003109799841964135

`A330979(A205255(n+2))%A184720(2*(n+1))`
-/

namespace A096008.P17003109799841964135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330979 (A205255 (n + 2)).toNat) (A184720 (2 * (n + 1)))

end

end A096008.P17003109799841964135

/-!
# A096010: Number of different cycles computed with the generalized 3x+1 problem using C=2, B=Cn+m, A=C^m.

The programs for A096010, the canonical program `A096010.P2772366757510892005` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096010 has offset 1).

The definition of A096010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096010.P2772366757510892005

`A000016(n+1)+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096010

/-- `A000016(n+1)+1` -/
def P2772366757510892005.Spec : Prop :=
  ∀ n, P2772366757510892005.a n = A096010 (n + 1)

theorem P2772366757510892005.correct : P2772366757510892005.Spec := by
  intro n
  simp only [A096010, Nat.add_sub_cancel]

end A096010

/-! ## A096010.P6185602833773110024

`A091696(n+1)+2-A256217(n+1)`
-/

namespace A096010.P6185602833773110024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) + (2 - A256217 (n + 1))

end

end A096010.P6185602833773110024

namespace A096010

/-- `A091696(n+1)+2-A256217(n+1)` -/
def P6185602833773110024.Spec : Prop :=
  ∀ n, P6185602833773110024.a n = A096010 (n + 1)

end A096010

/-! ## A096010.P3919392817089663159

`Δ[A133670(n)]+1`
-/

namespace A096010.P3919392817089663159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A096010.P3919392817089663159

namespace A096010

/-- `Δ[A133670(n)]+1` -/
def P3919392817089663159.Spec : Prop :=
  ∀ n, P3919392817089663159.a n = A096010 (n + 1)

end A096010

/-! ## A096010.P7191824724705225035

`ceil(A283843(n+1)/2)`
-/

namespace A096010.P7191824724705225035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283843 (n + 1) : ℚ) / 2⌉

end

end A096010.P7191824724705225035

namespace A096010

/-- `ceil(A283843(n+1)/2)` -/
def P7191824724705225035.Spec : Prop :=
  ∀ n, P7191824724705225035.a n = A096010 (n + 1)

end A096010

/-! ## A096010.P4903496547079153273

`A063776(n+1)/2+1`
-/

namespace A096010.P4903496547079153273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (n + 1) : ℚ) / 2 + 1

end

end A096010.P4903496547079153273

namespace A096010

/-- `A063776(n+1)/2+1` -/
def P4903496547079153273.Spec : Prop :=
  ∀ n, P4903496547079153273.a n = (A096010 (n + 1) : ℚ)

end A096010

/-! ## A096010.P5970003272348063801

`(A082550(n+1)+3)/2`
-/

namespace A096010.P5970003272348063801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082550 (n + 1) + 3 : ℚ) / 2

end

end A096010.P5970003272348063801

namespace A096010

/-- `(A082550(n+1)+3)/2` -/
def P5970003272348063801.Spec : Prop :=
  ∀ n, P5970003272348063801.a n = (A096010 (n + 1) : ℚ)

end A096010

/-! ## A096010.P14272710354563807130

`1-Δ[a(n-1)-A000016(n)]` with `a(0)=1`
-/

namespace A096010.P14272710354563807130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A096010.P14272710354563807130

namespace A096010

/-- `1-Δ[a(n-1)-A000016(n)]` -/
def P14272710354563807130.Spec : Prop :=
  ∀ n, P14272710354563807130.a n = A096010 (n + 1)

end A096010

/-! ## A096010.P7500490029315439870

`A000031(n+1)-A056295(n+1)`
-/

namespace A096010.P7500490029315439870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) - A056295 (n + 1)

end

end A096010.P7500490029315439870

namespace A096010

/-- `A000031(n+1)-A056295(n+1)` -/
def P7500490029315439870.Spec : Prop :=
  ∀ n, P7500490029315439870.a n = A096010 (n + 1)

theorem P7500490029315439870.correct : P7500490029315439870.Spec := by
  intro n
  simp only [A096010, Nat.add_sub_cancel, A096010.P7500490029315439870.a, A096010.P2772366757510892005.a, A000016, A000016.P8500875009608658723.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A056295, A056295.P9438402425658344231.a, A008965, A008965.P16924218572130557635.a, A011782, A011782.P7461078519819856082.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A327477, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096010

/-! ## A096010.P4211443716852353348

`A000031(n+1)+1-A000013(n+1)`
-/

namespace A096010.P4211443716852353348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 1) + (1 - A000013 (n + 1))

end

end A096010.P4211443716852353348

namespace A096010

/-- `A000031(n+1)+1-A000013(n+1)` -/
def P4211443716852353348.Spec : Prop :=
  ∀ n, P4211443716852353348.a n = A096010 (n + 1)

end A096010

/-! ## A096010.P6464752133843426134

`A008965(n+1)+1-A056295(n+1)`
-/

namespace A096010.P6464752133843426134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) + (1 - A056295 (n + 1))

end

end A096010.P6464752133843426134

namespace A096010

/-- `A008965(n+1)+1-A056295(n+1)` -/
def P6464752133843426134.Spec : Prop :=
  ∀ n, P6464752133843426134.a n = A096010 (n + 1)

theorem P6464752133843426134.correct : P6464752133843426134.Spec := by
  intro n
  simp only [A096010, Nat.add_sub_cancel, A096010.P6464752133843426134.a, A096010.P2772366757510892005.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, A056295, A056295.P9438402425658344231.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A011782, A011782.P7461078519819856082.a, A327477, A327477.P17478202587199191785.f1, A327477.P17478202587199191785.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A327471, A327471.P11969612927539878657.a, A000051, A000051.P14067217022188782580.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A133670, A133670.P186027561368392954.f1, A133670.P186027561368392954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096010

/-! ## A096010.P15190096889307631135

`(Δ[A327475(n)]+3)/2`
-/

namespace A096010.P15190096889307631135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 3 : ℚ) / 2

end

end A096010.P15190096889307631135

namespace A096010

/-- `(Δ[A327475(n)]+3)/2` -/
def P15190096889307631135.Spec : Prop :=
  ∀ n, P15190096889307631135.a n = (A096010 (n + 1) : ℚ)

end A096010

/-! ## A096010.P10886840759236664964

`A053633(∑[n])+1`
-/

namespace A096010.P10886840759236664964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A096010.P10886840759236664964

namespace A096010

/-- `A053633(∑[n])+1` -/
def P10886840759236664964.Spec : Prop :=
  ∀ n, P10886840759236664964.a n = A096010 (n + 1)

end A096010

/-!
# A096011: Arrange numbers n such that A071364(n) <> A046523(n) by prime signature, cf. A071365.

The programs for A096011, there is no canonical definition to state claims against.
-/

/-! ## A096011.P17627377358609511230

`A246631(A193911(n+3)²)`
-/

namespace A096011.P17627377358609511230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (A193911 (n + 3) ^ 2).toNat

end

end A096011.P17627377358609511230

/-!
# A096012: Numbers k such that k^2+1 and (k+2)^2+1 are both prime; twin k^2+1 primes.

The programs for A096012, there is no canonical definition to state claims against.
-/

/-! ## A096012.P16774526844845917465

`A108814(n+1)-1`
-/

namespace A096012.P16774526844845917465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1) - 1

end

end A096012.P16774526844845917465

/-! ## A096012.P8872850524447360700

`2*A293621(n+1)`
-/

namespace A096012.P8872850524447360700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293621 (n + 1)

end

end A096012.P8872850524447360700

/-! ## A096012.P16276401273956994872

`xor(A165326(n)², A108814(n+1))`
-/

namespace A096012.P16276401273956994872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165326 n ^ 2) (A108814 (n + 1))

end

end A096012.P16276401273956994872

/-! ## A096012.P18425856400278607282

`A293621(A000027(n+1))+A293621(n+1)`
-/

namespace A096012.P18425856400278607282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293621 (A000027 (n + 1)).toNat + A293621 (n + 1)

end

end A096012.P18425856400278607282

/-! ## A096012.P1611484841672411797

`xor(A108814(n+1), A165326(A158405(n+1)))`
-/

namespace A096012.P1611484841672411797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A108814 (n + 1)) (A165326 (A158405 (n + 1)).toNat)

end

end A096012.P1611484841672411797

/-! ## A096012.P18135098336849798040

`xor(A052126(A052248(n+2)), A108814(n+1))`
-/

namespace A096012.P18135098336849798040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052126 (A052248 (n + 2)).toNat) (A108814 (n + 1))

end

end A096012.P18135098336849798040

/-! ## A096012.P18369551143056923906

`xor(A052126(A000040(n+1)), A108814(n+1))`
-/

namespace A096012.P18369551143056923906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052126 (A000040 (n + 1)).toNat) (A108814 (n + 1))

end

end A096012.P18369551143056923906

/-! ## A096012.P9278509818268621361

`floor(sqrt(A206328(n+1)))`
-/

namespace A096012.P9278509818268621361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A206328 (n + 1))

end

end A096012.P9278509818268621361

/-! ## A096012.P16428389615331490248

`floor(sqrt(A217583(n+1)))-1`
-/

namespace A096012.P16428389615331490248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A217583 (n + 1)) - 1

end

end A096012.P16428389615331490248

/-! ## A096012.P14157737989596831473

`A005574(eq[1, A206400(n+1)]+1)`
-/

namespace A096012.P14157737989596831473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096012.P14157737989596831473

/-! ## A096012.P17680924002751687088

`2*A001912(eq[1, A206400(n+1)])`
-/

namespace A096012.P17680924002751687088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A096012.P17680924002751687088

/-! ## A096012.P3881078536583392355

`∩[A005574(n+2), ∑[A214516(n+2)]]`
-/

namespace A096012.P3881078536583392355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096012.P3881078536583392355

/-! ## A096012.P5865648125839647693

`∩[A005574(n+1), A089593(n+1)-1]`
-/

namespace A096012.P5865648125839647693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096012.P5865648125839647693

/-! ## A096012.P16817187905417134627

`∩[A089593(n+1), A090693(n+1)]-1`
-/

namespace A096012.P16817187905417134627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A096012.P16817187905417134627

/-! ## A096012.P8698585012346065671

`∩[A005574(n+1)-2, A005574(n+2)]`
-/

namespace A096012.P8698585012346065671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096012.P8698585012346065671

/-! ## A096012.P17941409646674458916

`A005574(record[(n+1)/A214517(n+1)+1])`
-/

namespace A096012.P17941409646674458916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214517 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A096012.P17941409646674458916

/-! ## A096012.P6977751764498174975

`2*A001912(record[(n+1)/A214517(n+1)])`
-/

namespace A096012.P6977751764498174975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214517 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A096012.P6977751764498174975

/-! ## A096012.P13368551935445053628

`A005574(eq[2, A005574(n+2)-A005574(n+1)]+1)`
-/

namespace A096012.P13368551935445053628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A096012.P13368551935445053628

/-! ## A096012.P10805386274266139058

`and(∑[A000079(n+1)], A108814(n+1))`
-/

namespace A096012.P10805386274266139058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A108814 (n + 1))

end

end A096012.P10805386274266139058

/-! ## A096012.P17220885676321328384

`A004277(A293621(n+1))`
-/

namespace A096012.P17220885676321328384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A293621 (n + 1)).toNat

end

end A096012.P17220885676321328384

/-!
# A096013: Irregular triangle read by rows: row n lists quadratic nonresidues modulo n.

The programs for A096013, there is no canonical definition to state claims against.
-/

/-! ## A096013.P5351395787141544933

`A165916(n+3)^A165913(n+1)^A165878(n)`
-/

namespace A096013.P5351395787141544933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A165916 (n + 3) : ℝ) ^ ((A165913 (n + 1) : ℚ) ^ (A165878 n : ℤ) : ℝ)

end

end A096013.P5351395787141544933

/-! ## A096013.P13168090120542301802

`A165916(n+3)%A089085(n+5)`
-/

namespace A096013.P13168090120542301802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165916 (n + 3)) (A089085 (n + 5))

end

end A096013.P13168090120542301802

/-! ## A096013.P12889004611869229643

`A165916(n+3)+A051344(A005251(n))`
-/

namespace A096013.P12889004611869229643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165916 (n + 3) + A051344 (A005251 n).toNat

end

end A096013.P12889004611869229643

/-! ## A096013.P9493049235638526655

`A165916(n+3)+A055641(A221073(n))`
-/

namespace A096013.P9493049235638526655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165916 (n + 3) + A055641 (A221073 n).toNat

end

end A096013.P9493049235638526655

/-! ## A096013.P8518116540267595979

`A165916(n+3)+A000007(A290656(n))`
-/

namespace A096013.P8518116540267595979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165916 (n + 3) + A000007 (A290656 n).toNat

end

end A096013.P8518116540267595979

/-!
# A096014: a(n) = (smallest prime factor of n) * (least prime that is not a factor of n), with a(1)=2.

The programs for A096014, there is no canonical definition to state claims against.
-/

/-! ## A096014.P6187788122554220653

`A020639(n+1)*A053669(n+1)`
-/

namespace A096014.P6187788122554220653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A053669 (n + 1)

end

end A096014.P6187788122554220653

/-! ## A096014.P4668182020944771509

`2*A096015(n+1)`
-/

namespace A096014.P4668182020944771509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096015 (n + 1)

end

end A096014.P4668182020944771509

/-! ## A096014.P15584414661394084018

`A004277(A096015(n+1))`
-/

namespace A096014.P15584414661394084018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A096015 (n + 1)).toNat

end

end A096014.P15584414661394084018

/-! ## A096014.P7631723471034433895

`(A071222(n)+1)*A020639(n+1)`
-/

namespace A096014.P7631723471034433895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071222 n + 1) * A020639 (n + 1)

end

end A096014.P7631723471034433895

/-! ## A096014.P9807245988888433474

`A087560(n+1)/A032742(n+1)`
-/

namespace A096014.P9807245988888433474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087560 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A096014.P9807245988888433474

/-! ## A096014.P13054911086476889053

`lcm(A020639(∏{p}[n+1, #]), A053669(n+1))`
-/

namespace A096014.P13054911086476889053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A053669 (n + 1))

end

end A096014.P13054911086476889053

/-! ## A096014.P7615218388811013180

`(A079578(n+1)-(n+1))*A020639(n+1)`
-/

namespace A096014.P7615218388811013180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079578 (n + 1) - (n + 1 : ℤ)) * A020639 (n + 1)

end

end A096014.P7615218388811013180

/-! ## A096014.P9201637498991586247

`A020639(n+1)*A020639(A328571(n+1))`
-/

namespace A096014.P9201637498991586247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (A328571 (n + 1)).toNat

end

end A096014.P9201637498991586247

/-! ## A096014.P7742316987615075657

`A020639(n+1)*A020639(A381805(n+1))`
-/

namespace A096014.P7742316987615075657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (A381805 (n + 1)).toNat

end

end A096014.P7742316987615075657

/-! ## A096014.P8618061197091563948

`A020639(n+1)*A020639(A382248(n+1))`
-/

namespace A096014.P8618061197091563948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (A382248 (n + 1)).toNat

end

end A096014.P8618061197091563948

/-! ## A096014.P2977172054833566111

`A020639(n+1)*A020639(A382767(n+1))`
-/

namespace A096014.P2977172054833566111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A020639 (A382767 (n + 1)).toNat

end

end A096014.P2977172054833566111

/-! ## A096014.P15989848796543647225

`lcm(A020639(A000027(n+1)), A053669(n+1))`
-/

namespace A096014.P15989848796543647225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A000027 (n + 1)).toNat) (A053669 (n + 1))

end

end A096014.P15989848796543647225

/-! ## A096014.P1705691075728058815

`lcm(2, A096015((n+1)²))`
-/

namespace A096014.P1705691075728058815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A096015 ((n + 1) ^ 2))

end

end A096014.P1705691075728058815

/-! ## A096014.P15657734438552166033

`A096015((n+1)²)+A096015(n+1)`
-/

namespace A096014.P15657734438552166033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096015 ((n + 1) ^ 2) + A096015 (n + 1)

end

end A096014.P15657734438552166033

/-!
# A096015: a(n) = A096014(n) / 2.

The programs for A096015, there is no canonical definition to state claims against.
-/

/-! ## A096015.P7351804068797384151

`A096014(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096015.P7351804068797384151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096014 (n + 1) : ℚ) / 2

end

end A096015.P7351804068797384151

/-! ## A096015.P11895333300986465653

`A000265(A096014(n+1))`
-/

namespace A096015.P11895333300986465653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A096014 (n + 1)).toNat

end

end A096015.P11895333300986465653

/-! ## A096015.P2222562013769912328

`∑{p}[A096014(n+1), A000010(#)]`
-/

namespace A096015.P2222562013769912328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 p

end

end A096015.P2222562013769912328

/-! ## A096015.P8980299518577352004

`A020639(n+1)+A071222(n)-1`
-/

namespace A096015.P8980299518577352004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A071222 n - 1)

end

end A096015.P8980299518577352004

/-! ## A096015.P7267228681061269898

`A020639(∑{p}[A096014(n+1), #-1])`
-/

namespace A096015.P7267228681061269898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A096015.P7267228681061269898

/-! ## A096015.P5043966798414375011

`A020639(n+1)^log2(A053669(n+1))`
-/

namespace A096015.P5043966798414375011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℝ) ^ (Real.logb 2 (A053669 (n + 1) : ℝ))

end

end A096015.P5043966798414375011

/-! ## A096015.P14070570587735504372

`A087560(n+1)/(2*A032742(n+1))`
-/

namespace A096015.P14070570587735504372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087560 (n + 1) : ℚ) / (2 * A032742 (n + 1) : ℚ)

end

end A096015.P14070570587735504372

/-! ## A096015.P14884991218220833480

`A020639(A020639(n+1)/2*A053669(n+1))`
-/

namespace A096015.P14884991218220833480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) / 2 * (A053669 (n + 1) : ℚ))).toNat

end

end A096015.P14884991218220833480

/-! ## A096015.P11155084328961316215

`A020639(lcm(A020639(n+1), A053669(n+1))/2)`
-/

namespace A096015.P11155084328961316215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((Int.lcm (A020639 (n + 1)) (A053669 (n + 1)) : ℚ) / 2)).toNat

end

end A096015.P11155084328961316215

/-! ## A096015.P17110841669007180753

`A032742(A087560(n+1)/A032742(n+1))`
-/

namespace A096015.P17110841669007180753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A087560 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A096015.P17110841669007180753

/-! ## A096015.P16181446451247339123

`A002265(2*A096014(n+1))`
-/

namespace A096015.P16181446451247339123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A096014 (n + 1)).toNat

end

end A096015.P16181446451247339123

/-! ## A096015.P13339448362331909286

`A385349(2*A096014(n+1))`
-/

namespace A096015.P13339448362331909286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385349 (2 * A096014 (n + 1)).toNat

end

end A096015.P13339448362331909286

/-! ## A096015.P15395985777328660183

`A385349(A096014(n+1)+A096014(n+1))`
-/

namespace A096015.P15395985777328660183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385349 (A096014 (n + 1) + A096014 (n + 1)).toNat

end

end A096015.P15395985777328660183

/-! ## A096015.P3185372432029936641

`A020639(A276147(∏{p}[n+1, #]))`
-/

namespace A096015.P3185372432029936641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276147 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A096015.P3185372432029936641

/-! ## A096015.P8759345650784552204

`A276147(n+1)%A096014(n+1)`
-/

namespace A096015.P8759345650784552204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276147 (n + 1)) (A096014 (n + 1))

end

end A096015.P8759345650784552204

/-! ## A096015.P5171437705255656813

`A337471(n+1)%A096014(n+1)`
-/

namespace A096015.P5171437705255656813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337471 (n + 1)) (A096014 (n + 1))

end

end A096015.P5171437705255656813

/-! ## A096015.P8391507809294466457

`A323499(n+2)%A096014(n+1)`
-/

namespace A096015.P8391507809294466457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323499 (n + 2)) (A096014 (n + 1))

end

end A096015.P8391507809294466457

/-! ## A096015.P14565780765064407117

`A385349(A096014((n+1)²))`
-/

namespace A096015.P14565780765064407117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385349 (A096014 ((n + 1) ^ 2)).toNat

end

end A096015.P14565780765064407117

/-! ## A096015.P15806362774510776915

`A020639(n+1)^log2(A007978((n+1)²))`
-/

namespace A096015.P15806362774510776915
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℝ) ^ (Real.logb 2 (A007978 ((n + 1) ^ 2) : ℝ))

end

end A096015.P15806362774510776915

/-! ## A096015.P4605814830582911572

`A033677(A309491(A096014((n+1)*(n+1))))`
-/

namespace A096015.P4605814830582911572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A309491 (A096014 ((n + 1) * (n + 1))).toNat).toNat

end

end A096015.P4605814830582911572

/-!
# A096016: A modified Fibonacci sequence controlled by a toggle switch. The toggle switch (initial state of 2) flips between 2 and 3 after each reduction.

The programs for A096016, there is no canonical definition to state claims against.
-/

/-! ## A096016.P17011875632109823512

`∑{e}[2^n, A123274(#)]`
-/

namespace A096016.P17011875632109823512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A123274 (Nat.factorization (f1 n) p)

end

end A096016.P17011875632109823512

/-! ## A096016.P106923357362393266

`and(record[A331217(n)], A123274(n))`
-/

namespace A096016.P106923357362393266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A123274 n)

end

end A096016.P106923357362393266

/-! ## A096016.P6636661468114766508

`A123274(A008554(n+1))-floor(acot(n))`
-/

namespace A096016.P6636661468114766508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123274 (A008554 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A096016.P6636661468114766508

/-! ## A096016.P803629111377359856

`A123274(n)+A010815(A076338(n))`
-/

namespace A096016.P803629111377359856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123274 n + A010815 (A076338 n).toNat

end

end A096016.P803629111377359856

/-! ## A096016.P4224078070336373336

`A123274(n)%A005185(A324214(n+1))`
-/

namespace A096016.P4224078070336373336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123274 n) (A005185 (A324214 (n + 1)).toNat)

end

end A096016.P4224078070336373336

/-!
# A096017: Numbers n such that 4^k*n, for k >= 0, have a unique partition into three distinct positive squares.

The programs for A096017, there is no canonical definition to state claims against.
-/

/-! ## A096017.P2877336484739986930

`eq[1, A224772(n+1)]+1`
-/

namespace A096017.P2877336484739986930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096017.P2877336484739986930

/-! ## A096017.P2893986885621469569

`eq[1, A224772(A028310(n))]`
-/

namespace A096017.P2893986885621469569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224772 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096017.P2893986885621469569

/-! ## A096017.P3944058173641886221

`eq[A010130(n), A025442(n)]`
-/

namespace A096017.P3944058173641886221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P3944058173641886221

/-! ## A096017.P3411164307857629442

`eq[A010153(n), A025442(n)]`
-/

namespace A096017.P3411164307857629442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P3411164307857629442

/-! ## A096017.P14949128628754714405

`eq[A010195(n), A025442(n)]`
-/

namespace A096017.P14949128628754714405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P14949128628754714405

/-! ## A096017.P1020095256254767011

`eq[A025442(n), A040200(n)]`
-/

namespace A096017.P1020095256254767011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P1020095256254767011

/-! ## A096017.P5227191306646693414

`eq[A025442(n), A040294(n)]`
-/

namespace A096017.P5227191306646693414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040294 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P5227191306646693414

/-! ## A096017.P18323754155869188581

`eq[A025442(n), A040329(n)]`
-/

namespace A096017.P18323754155869188581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P18323754155869188581

/-! ## A096017.P12323157581573391760

`eq[A025442(n), A040406(n)]`
-/

namespace A096017.P12323157581573391760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040406 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P12323157581573391760

/-! ## A096017.P17080298854911406978

`eq[A025442(n), A040536(n)]`
-/

namespace A096017.P17080298854911406978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040536 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P17080298854911406978

/-! ## A096017.P9287030247596221764

`eq[A025442(n), A040583(n)]`
-/

namespace A096017.P9287030247596221764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040583 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P9287030247596221764

/-! ## A096017.P7482818674079086024

`eq[A025442(n), A040684(n)]`
-/

namespace A096017.P7482818674079086024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P7482818674079086024

/-! ## A096017.P266544517247656684

`eq[A025442(n), A040850(n)]`
-/

namespace A096017.P266544517247656684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P266544517247656684

/-! ## A096017.P14600558528267034987

`eq[A025442(n), A040909(n)]`
-/

namespace A096017.P14600558528267034987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P14600558528267034987

/-! ## A096017.P16118396884858947508

`eq[A010121(n)², A025442(n)]`
-/

namespace A096017.P16118396884858947508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P16118396884858947508

/-! ## A096017.P2726017890186264414

`eq[A010209(n)², A025442(n)]`
-/

namespace A096017.P2726017890186264414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P2726017890186264414

/-! ## A096017.P14791982999642631796

`eq[A025442(n)², A040037(n)]`
-/

namespace A096017.P14791982999642631796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P14791982999642631796

/-! ## A096017.P7766683770738490069

`eq[A025442(n)², A040446(n)]`
-/

namespace A096017.P7766683770738490069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040446 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P7766683770738490069

/-! ## A096017.P3046980286098030913

`eq[A025442(n)², A040632(n)]`
-/

namespace A096017.P3046980286098030913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096017.P3046980286098030913

/-! ## A096017.P5946807709303164518

`filter[A025339(n+1), A166486(#)]`
-/

namespace A096017.P5946807709303164518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A096017.P5946807709303164518

/-!
# A096018: Number of Pythagorean quadruples mod n; i.e., number of solutions to w^2 + x^2 + y^2 = z^2 mod n.

The programs for A096018, there is no canonical definition to state claims against.
-/

/-! ## A096018.P11088154761409682230

`(n+1)*A106446(A106446((n+1)²))`
-/

namespace A096018.P11088154761409682230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106446 (A106446 ((n + 1) ^ 2)).toNat

end

end A096018.P11088154761409682230

/-! ## A096018.P6250354302504591910

`and(A071904(A277462(n)), A235226(n+1))`
-/

namespace A096018.P6250354302504591910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071904 (A277462 n).toNat) (A235226 (n + 1))

end

end A096018.P6250354302504591910

/-!
# A096019: a(0)=3, a(n) = 3*a(n-1) + 2*(-1)^n.

The programs for A096019, the canonical program `A096019.P2970911028119401743` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096019 has offset 0).

The definition of A096019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*(-1)^n` (program `A096019.P2970911028119401743`, by `A096019.P2970911028119401743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096019.P10705692659597987941

`ogf((3+x)/(1-2x-3x^2))`
-/

namespace A096019.P10705692659597987941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -2, -3] n

end

end A096019.P10705692659597987941

namespace A096019

/-- `ogf((3+x)/(1-2x-3x^2))` -/
def P10705692659597987941.Spec : Prop :=
  ∀ n, P10705692659597987941.a n = A096019 n

end A096019

/-! ## A096019.P9856366420993244207

`10*3^(n-1)-a(n-1)` with `a(0)=3`
-/

namespace A096019.P9856366420993244207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  10 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A096019.P9856366420993244207

namespace A096019

/-- `10*3^(n-1)-a(n-1)` -/
def P9856366420993244207.Spec : Prop :=
  ∀ n, P9856366420993244207.a n = (A096019 n : ℚ)

end A096019

/-! ## A096019.P2970911028119401743

`3*a(n-1)+2*(-1)^n` with `a(0)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096019

/-- `3*a(n-1)+2*(-1)^n` -/
def P2970911028119401743.Spec : Prop :=
  ∀ n, P2970911028119401743.a n = A096019 n

theorem P2970911028119401743.correct : P2970911028119401743.Spec := by
  intro n
  simp only [A096019]

end A096019

/-! ## A096019.P16887118035363646634

`3^(n+1)-(3^n-(-1)^n)/2`
-/

namespace A096019.P16887118035363646634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℚ) - ((3 ^ n : ℤ) - (-1) ^ n : ℚ) / 2

end

end A096019.P16887118035363646634

namespace A096019

/-- `3^(n+1)-(3^n-(-1)^n)/2` -/
def P16887118035363646634.Spec : Prop :=
  ∀ n, P16887118035363646634.a n = (A096019 n : ℚ)

theorem P16887118035363646634.correct : P16887118035363646634.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096019, Nat.add_sub_cancel, A096019.P16887118035363646634.a, A096019.P2970911028119401743.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096019, Nat.add_sub_cancel, A096019.P16887118035363646634.a, A096019.P2970911028119401743.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096019

/-! ## A096019.P8972832826828600753

`or(1, floor(5*3^n/2))`
-/

namespace A096019.P8972832826828600753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 * 3 ^ n : ℚ) / 2⌋

end

end A096019.P8972832826828600753

namespace A096019

/-- `or(1, floor(5*3^n/2))` -/
def P8972832826828600753.Spec : Prop :=
  ∀ n, P8972832826828600753.a n = A096019 n

end A096019

/-! ## A096019.P6258241307165877494

`abs(or(3, (5*3^n-3)/2))`
-/

namespace A096019.P6258241307165877494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (SequenceMachineLib.roundAway (((5 * 3 ^ n : ℤ) - 3 : ℚ) / 2))|

end

end A096019.P6258241307165877494

namespace A096019

/-- `abs(or(3, (5*3^n-3)/2))` -/
def P6258241307165877494.Spec : Prop :=
  ∀ n, P6258241307165877494.a n = A096019 n

end A096019

/-! ## A096019.P5548295449219244577

`ceil(5*3^n/2-and(1, n))`
-/

namespace A096019.P5548295449219244577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * 3 ^ n : ℚ) / 2 - (Nat.land 1 n : ℚ)⌉

end

end A096019.P5548295449219244577

namespace A096019

/-- `ceil(5*3^n/2-and(1, n))` -/
def P5548295449219244577.Spec : Prop :=
  ∀ n, P5548295449219244577.a n = A096019 n

end A096019

/-! ## A096019.P16772243737455116477

`Δ[A060925(n)]`
-/

namespace A096019.P16772243737455116477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096019.P16772243737455116477

namespace A096019

/-- `Δ[A060925(n)]` -/
def P16772243737455116477.Spec : Prop :=
  ∀ n, P16772243737455116477.a n = A096019 n

end A096019

/-! ## A096019.P11921046050133314658

`Δ[Δ[A153773(n+1)]]`
-/

namespace A096019.P11921046050133314658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096019.P11921046050133314658

namespace A096019

/-- `Δ[Δ[A153773(n+1)]]` -/
def P11921046050133314658.Spec : Prop :=
  ∀ n, P11921046050133314658.a n = A096019 n

end A096019

/-! ## A096019.P1935286849973306262

`A137340(n+1)/3`
-/

namespace A096019.P1935286849973306262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137340 (n + 1) : ℚ) / 3

end

end A096019.P1935286849973306262

namespace A096019

/-- `A137340(n+1)/3` -/
def P1935286849973306262.Spec : Prop :=
  ∀ n, P1935286849973306262.a n = (A096019 n : ℚ)

end A096019

/-! ## A096019.P13614416213336246232

`Δ[A321573(n+1)/2]`
-/

namespace A096019.P13614416213336246232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321573 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096019.P13614416213336246232

namespace A096019

/-- `Δ[A321573(n+1)/2]` -/
def P13614416213336246232.Spec : Prop :=
  ∀ n, P13614416213336246232.a n = (A096019 n : ℚ)

end A096019

/-! ## A096019.P1412470540483826249

`Δ[A135522(n+1)/3]`
-/

namespace A096019.P1412470540483826249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135522 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096019.P1412470540483826249

namespace A096019

/-- `Δ[A135522(n+1)/3]` -/
def P1412470540483826249.Spec : Prop :=
  ∀ n, P1412470540483826249.a n = (A096019 n : ℚ)

end A096019

/-!
# A096020: Number of Pythagorean quintuples mod n; i.e., number of solutions to v^2 + w^2 + x^2 + y^2 = z^2 mod n.

The programs for A096020, there is no canonical definition to state claims against.
-/

/-! ## A096020.P4512845053347874905

`A000005(5^n)*A097248(n+1)*(n+1)²`
-/

namespace A096020.P4512845053347874905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 ^ n) * A097248 (n + 1) * ((n + 1) ^ 2 : ℤ)

end

end A096020.P4512845053347874905

/-! ## A096020.P2317908604089239000

`A000120(A047653(n+2))*A352172(n+1)`
-/

namespace A096020.P2317908604089239000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A047653 (n + 2)).toNat * A352172 (n + 1)

end

end A096020.P2317908604089239000

/-! ## A096020.P6693477200785510222

`(2*A331996(n+1)-A088964(n+1))*A351870(A087687(n+1))`
-/

namespace A096020.P6693477200785510222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A331996 (n + 1) - A088964 (n + 1)) * A351870 (A087687 (n + 1)).toNat

end

end A096020.P6693477200785510222

/-!
# A096022: Numbers that are congruent to {15, 27, 39, 51} mod 60.

The programs for A096022, the canonical program `A096022.P17924546964070783650` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096022 has offset 1).

The definition of A096022 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A096022.anchor (n : ℕ) (hn : 1 ≤ n) : A096022 n = (Nat.nth (fun k => k % 60 ∈ ({15, 27, 39, 51} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A096.A096022`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096022.P13983530896248154499

`ogf((15+12x+12x^2+12x^3+9x^4)/(1-x-x^4+x^5))`
-/

namespace A096022.P13983530896248154499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 12, 12, 12, 9] [1, -1, 0, 0, -1, 1] n

end

end A096022.P13983530896248154499

namespace A096022

/-- `ogf((15+12x+12x^2+12x^3+9x^4)/(1-x-x^4+x^5))` -/
def P13983530896248154499.Spec : Prop :=
  ∀ n, P13983530896248154499.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P17924546964070783650

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=15, a(1)=27, a(2)=39, a(3)=51, a(4)=75`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096022

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17924546964070783650.Spec : Prop :=
  ∀ n, P17924546964070783650.a n = A096022 (n + 1)

theorem P17924546964070783650.correct : P17924546964070783650.Spec := by
  intro n
  simp only [A096022, Nat.add_sub_cancel]

end A096022

/-! ## A096022.P10280490570977566813

`12*comp[5*n]+3`
-/

namespace A096022.P10280490570977566813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3

end

end A096022.P10280490570977566813

namespace A096022

/-- `12*comp[5*n]+3` -/
def P10280490570977566813.Spec : Prop :=
  ∀ n, (P10280490570977566813.a n : ℤ) = A096022 (n + 1)

end A096022

/-! ## A096022.P12280279564522003004

`or(3, 12*comp[5*n])`
-/

namespace A096022.P12280279564522003004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096022.P12280279564522003004

namespace A096022

/-- `or(3, 12*comp[5*n])` -/
def P12280279564522003004.Spec : Prop :=
  ∀ n, (P12280279564522003004.a n : ℤ) = A096022 (n + 1)

end A096022

/-! ## A096022.P10342225316715724493

`xor(3, 12*comp[5*n])`
-/

namespace A096022.P10342225316715724493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096022.P10342225316715724493

namespace A096022

/-- `xor(3, 12*comp[5*n])` -/
def P10342225316715724493.Spec : Prop :=
  ∀ n, (P10342225316715724493.a n : ℤ) = A096022 (n + 1)

end A096022

/-! ## A096022.P6579836614763003927

`3*(or(3, 5*n)+2)`
-/

namespace A096022.P6579836614763003927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lor 3 (5 * n) + 2)

end

end A096022.P6579836614763003927

namespace A096022

/-- `3*(or(3, 5*n)+2)` -/
def P6579836614763003927.Spec : Prop :=
  ∀ n, (P6579836614763003927.a n : ℤ) = A096022 (n + 1)

end A096022

/-! ## A096022.P2338492442535939346

`record[3*(lcm(5, n+1)-n)]`
-/

namespace A096022.P2338492442535939346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lcm 5 (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096022.P2338492442535939346

namespace A096022

/-- `record[3*(lcm(5, n+1)-n)]` -/
def P2338492442535939346.Spec : Prop :=
  ∀ n, P2338492442535939346.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P14459463423148311651

`3*(5*(n+1)-n%4)`
-/

namespace A096022.P14459463423148311651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((5 * (n + 1) : ℤ) - ((n % 4 : ℕ) : ℤ))

end

end A096022.P14459463423148311651

namespace A096022

/-- `3*(5*(n+1)-n%4)` -/
def P14459463423148311651.Spec : Prop :=
  ∀ n, P14459463423148311651.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P17069311375684466885

`3*(5*(n+1)-and(3, n))`
-/

namespace A096022.P17069311375684466885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((5 * (n + 1) : ℤ) - (Nat.land 3 n : ℤ))

end

end A096022.P17069311375684466885

namespace A096022

/-- `3*(5*(n+1)-and(3, n))` -/
def P17069311375684466885.Spec : Prop :=
  ∀ n, P17069311375684466885.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P16669026872734904271

`3*(A004767(floor(5*n/4))+2)`
-/

namespace A096022.P16669026872734904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A004767 ⌊5 * ((n : ℚ) / 4)⌋.toNat + 2)

end

end A096022.P16669026872734904271

namespace A096022

/-- `3*(A004767(floor(5*n/4))+2)` -/
def P16669026872734904271.Spec : Prop :=
  ∀ n, P16669026872734904271.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P34864065413362896

`A017557(A047201(n+1))`
-/

namespace A096022.P34864065413362896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (A047201 (n + 1)).toNat

end

end A096022.P34864065413362896

namespace A096022

/-- `A017557(A047201(n+1))` -/
def P34864065413362896.Spec : Prop :=
  ∀ n, P34864065413362896.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P5865346544180502584

`A017557(A008621(n)+n)`
-/

namespace A096022.P5865346544180502584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (A008621 n + (n : ℤ)).toNat

end

end A096022.P5865346544180502584

namespace A096022

/-- `A017557(A008621(n)+n)` -/
def P5865346544180502584.Spec : Prop :=
  ∀ n, P5865346544180502584.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P11940987539623446488

`A316320(A047203(n+2))`
-/

namespace A096022.P11940987539623446488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 (A047203 (n + 2)).toNat

end

end A096022.P11940987539623446488

namespace A096022

/-- `A316320(A047203(n+2))` -/
def P11940987539623446488.Spec : Prop :=
  ∀ n, P11940987539623446488.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P1158205033688937235

`A016945(2*comp[5*n])`
-/

namespace A096022.P1158205033688937235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096022.P1158205033688937235

namespace A096022

/-- `A016945(2*comp[5*n])` -/
def P1158205033688937235.Spec : Prop :=
  ∀ n, P1158205033688937235.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P3879211423253953931

`A017593(A217562(n+1))/2`
-/

namespace A096022.P3879211423253953931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017593 (A217562 (n + 1)).toNat : ℚ) / 2

end

end A096022.P3879211423253953931

namespace A096022

/-- `A017593(A217562(n+1))/2` -/
def P3879211423253953931.Spec : Prop :=
  ∀ n, P3879211423253953931.a n = (A096022 (n + 1) : ℚ)

end A096022

/-! ## A096022.P7310484125640030780

`A270545(A047227(n+1)+2+n)`
-/

namespace A096022.P7310484125640030780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 (A047227 (n + 1) + 2 + (n : ℤ)).toNat

end

end A096022.P7310484125640030780

namespace A096022

/-- `A270545(A047227(n+1)+2+n)` -/
def P7310484125640030780.Spec : Prop :=
  ∀ n, P7310484125640030780.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P14351032955047441745

`record[2*A160413(A047203(n+3))+1]`
-/

namespace A096022.P14351032955047441745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160413 (A047203 (n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096022.P14351032955047441745

namespace A096022

/-- `record[2*A160413(A047203(n+3))+1]` -/
def P14351032955047441745.Spec : Prop :=
  ∀ n, P14351032955047441745.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P15362766705539307370

`A004767(3*(A002265(n)+1+n))`
-/

namespace A096022.P15362766705539307370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (3 * (A002265 n + 1 + (n : ℤ))).toNat

end

end A096022.P15362766705539307370

namespace A096022

/-- `A004767(3*(A002265(n)+1+n))` -/
def P15362766705539307370.Spec : Prop :=
  ∀ n, P15362766705539307370.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P7807698321727643871

`A017557(A008621(5*n))`
-/

namespace A096022.P7807698321727643871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (A008621 (5 * n)).toNat

end

end A096022.P7807698321727643871

namespace A096022

/-- `A017557(A008621(5*n))` -/
def P7807698321727643871.Spec : Prop :=
  ∀ n, P7807698321727643871.a n = A096022 (n + 1)

end A096022

/-! ## A096022.P14409031353595088082

`A008486(2*A217562(n+1)+1)`
-/

namespace A096022.P14409031353595088082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * A217562 (n + 1) + 1).toNat

end

end A096022.P14409031353595088082

namespace A096022

/-- `A008486(2*A217562(n+1)+1)` -/
def P14409031353595088082.Spec : Prop :=
  ∀ n, P14409031353595088082.a n = A096022 (n + 1)

end A096022

/-!
# A096023: Numbers congruent to {63, 123, 183, 243, 303, 363} mod 420.

The programs for A096023, the canonical program `A096023.P1085591677468782510` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096023 has offset 1).

The definition of A096023 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A096023.anchor (n : ℕ) (hn : 1 ≤ n) : A096023 n = (Nat.nth (fun k => k % 420 ∈ ({63, 123, 183, 243, 303, 363} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A096.A096023`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096023.P1085591677468782510

`a(n-6)+420` with `a(0)=63, a(1)=123, a(2)=183, a(3)=243, a(4)=303, a(5)=363`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096023

/-- `a(n-6)+420` -/
def P1085591677468782510.Spec : Prop :=
  ∀ n, (P1085591677468782510.a n : ℤ) = A096023 (n + 1)

theorem P1085591677468782510.correct : P1085591677468782510.Spec := by
  intro n
  simp only [A096023, Nat.add_sub_cancel]

end A096023

/-! ## A096023.P17143691254626403301

`ogf((63+60x+60x^2+60x^3+60x^4+60x^5+57x^6)/(1-x-x^6+x^7))`
-/

namespace A096023.P17143691254626403301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [63, 60, 60, 60, 60, 60, 57] [1, -1, 0, 0, 0, 0, -1, 1] n

end

end A096023.P17143691254626403301

namespace A096023

/-- `ogf((63+60x+60x^2+60x^3+60x^4+60x^5+57x^6)/(1-x-x^6+x^7))` -/
def P17143691254626403301.Spec : Prop :=
  ∀ n, P17143691254626403301.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P5657084105369128071

`A139222(or(1, A047292(n+1)))`
-/

namespace A096023.P5657084105369128071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (Int.lor 1 (A047292 (n + 1))).toNat

end

end A096023.P5657084105369128071

namespace A096023

/-- `A139222(or(1, A047292(n+1)))` -/
def P5657084105369128071.Spec : Prop :=
  ∀ n, P5657084105369128071.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P9150236146582464148

`A017557(A067761(n+1))`
-/

namespace A096023.P9150236146582464148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (A067761 (n + 1)).toNat

end

end A096023.P9150236146582464148

namespace A096023

/-- `A017557(A067761(n+1))` -/
def P9150236146582464148.Spec : Prop :=
  ∀ n, P9150236146582464148.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P8596478305563918250

`A017305(A008458(comp[7*n]))`
-/

namespace A096023.P8596478305563918250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A008458 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A096023.P8596478305563918250

namespace A096023

/-- `A017305(A008458(comp[7*n]))` -/
def P8596478305563918250.Spec : Prop :=
  ∀ n, P8596478305563918250.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P13913649921091640706

`A016885(12*A047304(n+1))`
-/

namespace A096023.P13913649921091640706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (12 * A047304 (n + 1)).toNat

end

end A096023.P13913649921091640706

namespace A096023

/-- `A016885(12*A047304(n+1))` -/
def P13913649921091640706.Spec : Prop :=
  ∀ n, P13913649921091640706.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P17287671116055219438

`A016885(A008594(A047304(n+1)))`
-/

namespace A096023.P17287671116055219438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A008594 (A047304 (n + 1)).toNat).toNat

end

end A096023.P17287671116055219438

namespace A096023

/-- `A016885(A008594(A047304(n+1)))` -/
def P17287671116055219438.Spec : Prop :=
  ∀ n, P17287671116055219438.a n = A096023 (n + 1)

end A096023

/-! ## A096023.P6478951779602932412

`A004767(15*A047304(n+1))`
-/

namespace A096023.P6478951779602932412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (15 * A047304 (n + 1)).toNat

end

end A096023.P6478951779602932412

namespace A096023

/-- `A004767(15*A047304(n+1))` -/
def P6478951779602932412.Spec : Prop :=
  ∀ n, P6478951779602932412.a n = A096023 (n + 1)

end A096023

/-!
# A096024: Numbers n such that (n+j) mod (2+j) = 1 for j from 0 to 5 and (n+6) mod 8 <> 1.

The programs for A096024, the canonical program `A096024.P370047018516267505` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096024 has offset 1).

The definition of A096024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096024.P370047018516267505

`840*(n+1)-417`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096024

/-- `840*(n+1)-417` -/
def P370047018516267505.Spec : Prop :=
  ∀ n, P370047018516267505.a n = A096024 (n + 1)

theorem P370047018516267505.correct : P370047018516267505.Spec := by
  intro n
  simp only [A096024, Nat.add_sub_cancel]

end A096024

/-!
# A096025: Numbers n such that (n+j) mod (2+j) = 1 for j from 0 to 6 and (n+7) mod 9 <> 1.

The programs for A096025, the canonical program `A096025.P1791786436206012647` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096025 has offset 1).

The definition of A096025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096025.P1791786436206012647

`ogf((843+840x+837x^2)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096025

/-- `ogf((843+840x+837x^2)/(1-x-x^2+x^3))` -/
def P1791786436206012647.Spec : Prop :=
  ∀ n, P1791786436206012647.a n = A096025 (n + 1)

theorem P1791786436206012647.correct : P1791786436206012647.Spec := by
  intro n
  simp only [A096025, Nat.add_sub_cancel]

end A096025

/-! ## A096025.P7078143833614312369

`42*20*comp[3*n]+3`
-/

namespace A096025.P7078143833614312369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (20 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 3

end

end A096025.P7078143833614312369

namespace A096025

/-- `42*20*comp[3*n]+3` -/
def P7078143833614312369.Spec : Prop :=
  ∀ n, (P7078143833614312369.a n : ℤ) = A096025 (n + 1)

end A096025

/-! ## A096025.P707748265024233942

`xor(3, 42*20*comp[3*n])`
-/

namespace A096025.P707748265024233942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (42 * (20 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A096025.P707748265024233942

namespace A096025

/-- `xor(3, 42*20*comp[3*n])` -/
def P707748265024233942.Spec : Prop :=
  ∀ n, (P707748265024233942.a n : ℤ) = A096025 (n + 1)

end A096025

/-! ## A096025.P10727160978152225480

`abs(837-840*A294732(n+3))`
-/

namespace A096025.P10727160978152225480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |837 - 840 * A294732 (n + 3)|

end

end A096025.P10727160978152225480

namespace A096025

/-- `abs(837-840*A294732(n+3))` -/
def P10727160978152225480.Spec : Prop :=
  ∀ n, P10727160978152225480.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P14591121202264966511

`or(3, A169827(comp[3*n]))`
-/

namespace A096025.P14591121202264966511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A169827 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A096025.P14591121202264966511

namespace A096025

/-- `or(3, A169827(comp[3*n]))` -/
def P14591121202264966511.Spec : Prop :=
  ∀ n, P14591121202264966511.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P1305295751469561751

`A139222(A161714(comp[3*n]))`
-/

namespace A096025.P1305295751469561751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (A161714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A096025.P1305295751469561751

namespace A096025

/-- `A139222(A161714(comp[3*n]))` -/
def P1305295751469561751.Spec : Prop :=
  ∀ n, P1305295751469561751.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P1136582082880218027

`A017557(10*7*comp[3*n])`
-/

namespace A096025.P1136582082880218027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (10 * (7 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A096025.P1136582082880218027

namespace A096025

/-- `A017557(10*7*comp[3*n])` -/
def P1136582082880218027.Spec : Prop :=
  ∀ n, P1136582082880218027.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P10973368032876876119

`A017305(12*A089644(n+1))`
-/

namespace A096025.P10973368032876876119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (12 * A089644 (n + 1)).toNat

end

end A096025.P10973368032876876119

namespace A096025

/-- `A017305(12*A089644(n+1))` -/
def P10973368032876876119.Spec : Prop :=
  ∀ n, P10973368032876876119.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P10662336783531514692

`A017305(21*A092259(n+1))`
-/

namespace A096025.P10662336783531514692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (21 * A092259 (n + 1)).toNat

end

end A096025.P10662336783531514692

namespace A096025

/-- `A017305(21*A092259(n+1))` -/
def P10662336783531514692.Spec : Prop :=
  ∀ n, P10662336783531514692.a n = A096025 (n + 1)

end A096025

/-! ## A096025.P4418963961295703195

`A017305(42*A047235(n+1))`
-/

namespace A096025.P4418963961295703195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (42 * A047235 (n + 1)).toNat

end

end A096025.P4418963961295703195

namespace A096025

/-- `A017305(42*A047235(n+1))` -/
def P4418963961295703195.Spec : Prop :=
  ∀ n, P4418963961295703195.a n = A096025 (n + 1)

end A096025

/-!
# A096026: Numbers k such that (k+j) mod (2+j) = 1 for j from 0 to 8 and (k+9) mod 11 <> 1.

The programs for A096026, the canonical program `A096026.P10109195778755460978` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096026 has offset 1).

The definition of A096026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096026.P10109195778755460978

`A166931(record[A106612(n+1)])+4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096026

/-- `A166931(record[A106612(n+1)])+4` -/
def P10109195778755460978.Spec : Prop :=
  ∀ n, P10109195778755460978.a n = A096026 (n + 1)

theorem P10109195778755460978.correct : P10109195778755460978.Spec := by
  intro n
  simp only [A096026, Nat.add_sub_cancel]

end A096026

/-! ## A096026.P3097425704653556798

`A017557(A360146(n+1))`
-/

namespace A096026.P3097425704653556798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (A360146 (n + 1)).toNat

end

end A096026.P3097425704653556798

namespace A096026

/-- `A017557(A360146(n+1))` -/
def P3097425704653556798.Spec : Prop :=
  ∀ n, P3097425704653556798.a n = A096026 (n + 1)

end A096026

/-! ## A096026.P441907730772880909

`A316320(A360146(n+1)+1)`
-/

namespace A096026.P441907730772880909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 (A360146 (n + 1) + 1).toNat

end

end A096026.P441907730772880909

namespace A096026

/-- `A316320(A360146(n+1)+1)` -/
def P441907730772880909.Spec : Prop :=
  ∀ n, P441907730772880909.a n = A096026 (n + 1)

end A096026

/-! ## A096026.P12290261839956851129

`A016945(2*A360146(n+1))`
-/

namespace A096026.P12290261839956851129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (2 * A360146 (n + 1)).toNat

end

end A096026.P12290261839956851129

namespace A096026

/-- `A016945(2*A360146(n+1))` -/
def P12290261839956851129.Spec : Prop :=
  ∀ n, P12290261839956851129.a n = A096026 (n + 1)

end A096026

/-!
# A096028: Numbers of the form (Fibonacci(p+1))/p, where p are primes ending in 3 or 7 (i.e., A003631).

The programs for A096028, there is no canonical definition to state claims against.
-/

/-! ## A096028.P17552817861665816302

`∏{e}[A000079(n), A094809(#)]`
-/

namespace A096028.P17552817861665816302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A094809 (Nat.factorization (f1 n).natAbs p)

end

end A096028.P17552817861665816302

/-! ## A096028.P3854170521304939821

`A094809(A028310(n))^ceil(n/98)`
-/

namespace A096028.P3854170521304939821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094809 (A028310 n).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A096028.P3854170521304939821

/-! ## A096028.P327279686155538544

`A094809(A028310(n))-A000038(n)`
-/

namespace A096028.P327279686155538544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094809 (A028310 n).toNat - A000038 n

end

end A096028.P327279686155538544

/-! ## A096028.P11642734277358913699

`A094809(A065033(2*n))-A000038(n)`
-/

namespace A096028.P11642734277358913699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094809 (A065033 (2 * n)).toNat - A000038 n

end

end A096028.P11642734277358913699

/-! ## A096028.P15913093942544537806

`A094809(A065033(2*n))^A001222(A008578(n+1))`
-/

namespace A096028.P15913093942544537806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094809 (A065033 (2 * n)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A096028.P15913093942544537806

/-!
# A096029: Values (x+y-1)/2, where x^2+y^2=p runs over the Pythagorean primes A002144.

The programs for A096029, there is no canonical definition to state claims against.
-/

/-! ## A096029.P1730460029716119283

`(A079886(n+1)-1)/2`
-/

namespace A096029.P1730460029716119283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079886 (n + 1) - 1 : ℚ) / 2

end

end A096029.P1730460029716119283

/-! ## A096029.P5352736794441530210

`floor(A079886(n+1)/2)`
-/

namespace A096029.P5352736794441530210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079886 (n + 1) : ℚ) / 2⌋

end

end A096029.P5352736794441530210

/-! ## A096029.P7198561593389713941

`A004524(A079886(n+1))`
-/

namespace A096029.P7198561593389713941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A079886 (n + 1)).toNat

end

end A096029.P7198561593389713941

/-! ## A096029.P12174641819483280263

`A001281(A079886(n+1)-1)`
-/

namespace A096029.P12174641819483280263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A079886 (n + 1) - 1).toNat

end

end A096029.P12174641819483280263

/-! ## A096029.P14307965754605934318

`A208295(n+1)+A002973(n+1)`
-/

namespace A096029.P14307965754605934318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208295 (n + 1) + A002973 (n + 1)

end

end A096029.P14307965754605934318

/-! ## A096029.P15407459770960153310

`A096030(n+1)+A002331(n+2)`
-/

namespace A096029.P15407459770960153310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096030 (n + 1) + A002331 (n + 2)

end

end A096029.P15407459770960153310

/-! ## A096029.P244555675882037339

`A079886(n+1)+A096030(n+1)-A002330(n+2)`
-/

namespace A096029.P244555675882037339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) + (A096030 (n + 1) - A002330 (n + 2))

end

end A096029.P244555675882037339

/-! ## A096029.P14818933680696007532

`A096030(n+1)+A002330(n+2)-A079887(n+1)`
-/

namespace A096029.P14818933680696007532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096030 (n + 1) + (A002330 (n + 2) - A079887 (n + 1))

end

end A096029.P14818933680696007532

/-! ## A096029.P3086594305716187366

`floor(A262689(2*p?[4*n+1])/2)`
-/

namespace A096029.P3086594305716187366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262689 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A096029.P3086594305716187366

/-! ## A096029.P10072168474087192847

`A103223(p?[4*n+1])/2`
-/

namespace A096029.P10072168474087192847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A096029.P10072168474087192847

/-! ## A096029.P10263162100280310951

`floor(A133388(2*p?[4*n+1])/2)`
-/

namespace A096029.P10263162100280310951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133388 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A096029.P10263162100280310951

/-! ## A096029.P176054264621589341

`A103223(or(1, p?[4*n-7]-1))/2`
-/

namespace A096029.P176054264621589341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103223 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2

end

end A096029.P176054264621589341

/-! ## A096029.P11818559683447120297

`A103223(xor(1, p?[4*n-7]-1))/2`
-/

namespace A096029.P11818559683447120297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103223 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2

end

end A096029.P11818559683447120297

/-! ## A096029.P12574201246078659826

`A103223(A055131(n))/4`
-/

namespace A096029.P12574201246078659826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103223 (A055131 n).toNat : ℚ) / 4

end

end A096029.P12574201246078659826

/-!
# A096030: Values (y-x-1)/2, where x^2+y^2=p,(x<y) runs over the Pythagorean primes A002144.

The programs for A096030, there is no canonical definition to state claims against.
-/

/-! ## A096030.P1247640569195008230

`(A079887(n+1)-1)/2`
-/

namespace A096030.P1247640569195008230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079887 (n + 1) - 1 : ℚ) / 2

end

end A096030.P1247640569195008230

/-! ## A096030.P602687627250693135

`floor(A079887(n+1)/2)`
-/

namespace A096030.P602687627250693135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079887 (n + 1) : ℚ) / 2⌋

end

end A096030.P602687627250693135

/-! ## A096030.P3022405127315135217

`floor(sqrt((p?[4*n+1]-1)/4-A070151(n+1)))`
-/

namespace A096030.P3022405127315135217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 4 - (A070151 (n + 1) : ℚ) : ℝ)⌋

end

end A096030.P3022405127315135217

/-! ## A096030.P13357798312402149490

`A004524(A079887(n+1))`
-/

namespace A096030.P13357798312402149490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A079887 (n + 1)).toNat

end

end A096030.P13357798312402149490

/-! ## A096030.P11108338670968726989

`A096029(n+1)-A002331(n+2)`
-/

namespace A096030.P11108338670968726989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (n + 1) - A002331 (n + 2)

end

end A096030.P11108338670968726989

/-! ## A096030.P12842165658083896231

`A096029(n+1)+A002330(n+2)-A079886(n+1)`
-/

namespace A096030.P12842165658083896231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (n + 1) + (A002330 (n + 2) - A079886 (n + 1))

end

end A096030.P12842165658083896231

/-! ## A096030.P15598675707515136564

`A079887(n+1)+A096029(n+1)-A002330(n+2)`
-/

namespace A096030.P15598675707515136564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079887 (n + 1) + (A096029 (n + 1) - A002330 (n + 2))

end

end A096030.P15598675707515136564

/-! ## A096030.P5989123740211614862

`floor(A205790(2*p?[4*n+1])/2)`
-/

namespace A096030.P5989123740211614862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A096030.P5989123740211614862

/-! ## A096030.P8174101958110954316

`floor(A205790(2*xor(1, p?[4*n-7]-1))/2)`
-/

namespace A096030.P8174101958110954316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205790 (2 * Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2⌋

end

end A096030.P8174101958110954316

/-! ## A096030.P9865100660653289892

`A004524(A205790(2*p?[4*n+1]))`
-/

namespace A096030.P9865100660653289892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A096030.P9865100660653289892

/-! ## A096030.P8648896966215390911

`A004525(A205790(2*p?[4*n+1])-1)`
-/

namespace A096030.P8648896966215390911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1).toNat

end

end A096030.P8648896966215390911

/-! ## A096030.P16530238939870241334

`A110654(A205790(2*p?[4*n+1])-1)`
-/

namespace A096030.P16530238939870241334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1).toNat

end

end A096030.P16530238939870241334

/-! ## A096030.P18425619824504723020

`A004525(xor(1, A205790(2*p?[4*n+1])))`
-/

namespace A096030.P18425619824504723020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor 1 (A205790 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))).toNat

end

end A096030.P18425619824504723020

/-! ## A096030.P15992182899091516431

`floor(A205790(4*or(1, p?[4*n-7]-1))/2)`
-/

namespace A096030.P15992182899091516431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205790 (4 * Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)).toNat : ℚ) / 2⌋

end

end A096030.P15992182899091516431

/-!
# A096033: Difference between leg and hypotenuse in primitive Pythagorean triangles.

The programs for A096033, the canonical program `A096033.P16162008501540658033` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096033 has offset 1).

The definition of A096033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096033.P16162008501540658033

`∪[2*(n+1)², (2*n+1)²]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096033

/-- `∪[2*(n+1)², (2*n+1)²]` -/
def P16162008501540658033.Spec : Prop :=
  ∀ n, (P16162008501540658033.a n : ℤ) = A096033 (n + 1)

theorem P16162008501540658033.correct : P16162008501540658033.Spec := by
  intro n
  simp only [A096033, Nat.add_sub_cancel]

end A096033

/-! ## A096033.P13109948637812547346

`A155946(n+1)+1`
-/

namespace A096033.P13109948637812547346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155946 (n + 1) + 1

end

end A096033.P13109948637812547346

namespace A096033

/-- `A155946(n+1)+1` -/
def P13109948637812547346.Spec : Prop :=
  ∀ n, P13109948637812547346.a n = A096033 (n + 1)

theorem P13109948637812547346.correct : P13109948637812547346.Spec := by
  intro n
  simp only [A096033, Nat.add_sub_cancel, A096033.P13109948637812547346.a, A096033.P16162008501540658033.f1, A096033.P16162008501540658033.f2, A096033.P16162008501540658033.a, A155946, A155946.P13812767345114228886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A096033

/-! ## A096033.P212107320944273247

`A028982(A001951(n+1))`
-/

namespace A096033.P212107320944273247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A001951 (n + 1)).toNat

end

end A096033.P212107320944273247

namespace A096033

/-- `A028982(A001951(n+1))` -/
def P212107320944273247.Spec : Prop :=
  ∀ n, P212107320944273247.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P6775028319411341035

`A028982(A286666(n+1)-n)`
-/

namespace A096033.P6775028319411341035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A286666 (n + 1) - (n : ℤ)).toNat

end

end A096033.P6775028319411341035

namespace A096033

/-- `A028982(A286666(n+1)-n)` -/
def P6775028319411341035.Spec : Prop :=
  ∀ n, P6775028319411341035.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P7982259677696759575

`A028982(A003151(n+1)-(n+1))`
-/

namespace A096033.P7982259677696759575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A003151 (n + 1) - (n + 1 : ℤ)).toNat

end

end A096033.P7982259677696759575

namespace A096033

/-- `A028982(A003151(n+1)-(n+1))` -/
def P7982259677696759575.Spec : Prop :=
  ∀ n, P7982259677696759575.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P15921867843169133613

`A028982(A080754(n+1)-(n+2))`
-/

namespace A096033.P15921867843169133613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A080754 (n + 1) - (n + 2 : ℤ)).toNat

end

end A096033.P15921867843169133613

namespace A096033

/-- `A028982(A080754(n+1)-(n+2))` -/
def P15921867843169133613.Spec : Prop :=
  ∀ n, P15921867843169133613.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P15670374912347653147

`A028982(2*n-A074840(n+1)+1)`
-/

namespace A096033.P15670374912347653147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 ((2 * n : ℤ) - A074840 (n + 1) + 1).toNat

end

end A096033.P15670374912347653147

namespace A096033

/-- `A028982(2*n-A074840(n+1)+1)` -/
def P15670374912347653147.Spec : Prop :=
  ∀ n, P15670374912347653147.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P1387533150016085190

`A028982(A022804(n+1)-A001952(n+1))`
-/

namespace A096033.P1387533150016085190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A022804 (n + 1) - A001952 (n + 1)).toNat

end

end A096033.P1387533150016085190

namespace A096033

/-- `A028982(A022804(n+1)-A001952(n+1))` -/
def P1387533150016085190.Spec : Prop :=
  ∀ n, P1387533150016085190.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P8168748622107487500

`filter[A028982(n+1), A359770(#)]`
-/

namespace A096033.P8168748622107487500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A096033.P8168748622107487500

namespace A096033

/-- `filter[A028982(n+1), A359770(#)]` -/
def P8168748622107487500.Spec : Prop :=
  ∀ n, P8168748622107487500.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P13609327261271268479

`filter[A028982(n+1), A359832(#)]`
-/

namespace A096033.P13609327261271268479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A096033.P13609327261271268479

namespace A096033

/-- `filter[A028982(n+1), A359832(#)]` -/
def P13609327261271268479.Spec : Prop :=
  ∀ n, P13609327261271268479.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P7654188632769816022

`filter[A392696(n+1), A359770(#)]`
-/

namespace A096033.P7654188632769816022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A096033.P7654188632769816022

namespace A096033

/-- `filter[A392696(n+1), A359770(#)]` -/
def P7654188632769816022.Spec : Prop :=
  ∀ n, P7654188632769816022.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P9905742899833271177

`lt[1, A214304(n)]`
-/

namespace A096033.P9905742899833271177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A096033.P9905742899833271177

namespace A096033

/-- `lt[1, A214304(n)]` -/
def P9905742899833271177.Spec : Prop :=
  ∀ n, (P9905742899833271177.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P13446941305319131490

`filter[A269860(n+1), A053866(#)]`
-/

namespace A096033.P13446941305319131490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A096033.P13446941305319131490

namespace A096033

/-- `filter[A269860(n+1), A053866(#)]` -/
def P13446941305319131490.Spec : Prop :=
  ∀ n, P13446941305319131490.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P4403539928464926344

`filter[A359771(n+1), A053866(#)]`
-/

namespace A096033.P4403539928464926344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A096033.P4403539928464926344

namespace A096033

/-- `filter[A359771(n+1), A053866(#)]` -/
def P4403539928464926344.Spec : Prop :=
  ∀ n, P4403539928464926344.a n = A096033 (n + 1)

end A096033

/-! ## A096033.P169072023154151693

`eq[1, A000035(A320111(n+1))]+1`
-/

namespace A096033.P169072023154151693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A320111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A096033.P169072023154151693

namespace A096033

/-- `eq[1, A000035(A320111(n+1))]+1` -/
def P169072023154151693.Spec : Prop :=
  ∀ n, (P169072023154151693.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P8951270141133547460

`∩[A028982(n+1), A269860(n+1)]`
-/

namespace A096033.P8951270141133547460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096033.P8951270141133547460

namespace A096033

/-- `∩[A028982(n+1), A269860(n+1)]` -/
def P8951270141133547460.Spec : Prop :=
  ∀ n, (P8951270141133547460.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P3947590622805713615

`∩[A028982(n+1), A359771(n+1)]`
-/

namespace A096033.P3947590622805713615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096033.P3947590622805713615

namespace A096033

/-- `∩[A028982(n+1), A359771(n+1)]` -/
def P3947590622805713615.Spec : Prop :=
  ∀ n, (P3947590622805713615.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P7471417171934005311

`∩[A359771(n+1), A392696(n+1)]`
-/

namespace A096033.P7471417171934005311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096033.P7471417171934005311

namespace A096033

/-- `∩[A359771(n+1), A392696(n+1)]` -/
def P7471417171934005311.Spec : Prop :=
  ∀ n, (P7471417171934005311.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P2779460544757987179

`eq[A053867(n+1), A191254(n+1)]+1`
-/

namespace A096033.P2779460544757987179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096033.P2779460544757987179

namespace A096033

/-- `eq[A053867(n+1), A191254(n+1)]+1` -/
def P2779460544757987179.Spec : Prop :=
  ∀ n, (P2779460544757987179.a n : ℤ) = A096033 (n + 1)

end A096033

/-! ## A096033.P15617482947004082441

`filter[A359794(n+1), A053866(#)]`
-/

namespace A096033.P15617482947004082441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A096033.P15617482947004082441

namespace A096033

/-- `filter[A359794(n+1), A053866(#)]` -/
def P15617482947004082441.Spec : Prop :=
  ∀ n, P15617482947004082441.a n = A096033 (n + 1)

end A096033

/-!
# A096034: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^3-M)/2, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096034, the canonical program `A096034.P9733165752376480381` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096034 has offset 1).

The definition of A096034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096034.P4795030808285751022

`2*A131049(n+1)-A131047(n+1)`
-/

namespace A096034.P4795030808285751022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131049 (n + 1) - A131047 (n + 1)

end

end A096034.P4795030808285751022

namespace A096034

/-- `2*A131049(n+1)-A131047(n+1)` -/
def P4795030808285751022.Spec : Prop :=
  ∀ n, P4795030808285751022.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P9733165752376480381

`A003462(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096034

/-- `A003462(A004736(n+1))*A074909(n)` -/
def P9733165752376480381.Spec : Prop :=
  ∀ n, P9733165752376480381.a n = A096034 (n + 1)

theorem P9733165752376480381.correct : P9733165752376480381.Spec := by
  intro n
  simp only [A096034, Nat.add_sub_cancel]

end A096034

/-! ## A096034.P8588414011454172650

`A003462(A025581(n)+1)*A074909(n)`
-/

namespace A096034.P8588414011454172650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A025581 n + 1).toNat * A074909 n

end

end A096034.P8588414011454172650

namespace A096034

/-- `A003462(A025581(n)+1)*A074909(n)` -/
def P8588414011454172650.Spec : Prop :=
  ∀ n, P8588414011454172650.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P14131242716822376502

`A003462(A004736(n+1))*A007318(A007401(n+1))`
-/

namespace A096034.P14131242716822376502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A004736 (n + 1)).toNat * A007318 (A007401 (n + 1)).toNat

end

end A096034.P14131242716822376502

namespace A096034

/-- `A003462(A004736(n+1))*A007318(A007401(n+1))` -/
def P14131242716822376502.Spec : Prop :=
  ∀ n, P14131242716822376502.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P17522028609049496873

`A007318(A007401(n+1))*A003462(A025581(n)+1)`
-/

namespace A096034.P17522028609049496873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat * A003462 (A025581 n + 1).toNat

end

end A096034.P17522028609049496873

namespace A096034

/-- `A007318(A007401(n+1))*A003462(A025581(n)+1)` -/
def P17522028609049496873.Spec : Prop :=
  ∀ n, P17522028609049496873.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P8038247353823796525

`A193673(A007401(n+1))-A074909(n)`
-/

namespace A096034.P8038247353823796525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193673 (A007401 (n + 1)).toNat - A074909 n

end

end A096034.P8038247353823796525

namespace A096034

/-- `A193673(A007401(n+1))-A074909(n)` -/
def P8038247353823796525.Spec : Prop :=
  ∀ n, P8038247353823796525.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P625178608119268629

`A003973(A130321(n))*A074909(n)`
-/

namespace A096034.P625178608119268629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A130321 n).toNat * A074909 n

end

end A096034.P625178608119268629

namespace A096034

/-- `A003973(A130321(n))*A074909(n)` -/
def P625178608119268629.Spec : Prop :=
  ∀ n, P625178608119268629.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P14470142632595266563

`C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A000203(3^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A096034.P14470142632595266563
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A000203 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A096034.P14470142632595266563

namespace A096034

/-- `C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))*A000203(3^(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P14470142632595266563.Spec : Prop :=
  ∀ n, P14470142632595266563.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P16260519693255413917

`A000203(A140303(n))*A074909(n)`
-/

namespace A096034.P16260519693255413917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A140303 n).toNat * A074909 n

end

end A096034.P16260519693255413917

namespace A096034

/-- `A000203(A140303(n))*A074909(n)` -/
def P16260519693255413917.Spec : Prop :=
  ∀ n, P16260519693255413917.a n = A096034 (n + 1)

end A096034

/-! ## A096034.P723747208642098620

`A007318(A007401(n+1))*A000203(A140303(n))`
-/

namespace A096034.P723747208642098620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat * A000203 (A140303 n).toNat

end

end A096034.P723747208642098620

namespace A096034

/-- `A007318(A007401(n+1))*A000203(A140303(n))` -/
def P723747208642098620.Spec : Prop :=
  ∀ n, P723747208642098620.a n = A096034 (n + 1)

end A096034

/-!
# A096035: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^4-M)/3, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096035, the canonical program `A096035.P15456840272449225223` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096035 has offset 1).

The definition of A096035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096035.P15456840272449225223

`A000975(A099375(n))*A074909(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096035

/-- `A000975(A099375(n))*A074909(n)` -/
def P15456840272449225223.Spec : Prop :=
  ∀ n, P15456840272449225223.a n = A096035 (n + 1)

theorem P15456840272449225223.correct : P15456840272449225223.Spec := by
  intro n
  simp only [A096035, Nat.add_sub_cancel]

end A096035

/-! ## A096035.P18335466968276558632

`A002450(A004736(n+1))*A074909(n)`
-/

namespace A096035.P18335466968276558632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A004736 (n + 1)).toNat * A074909 n

end

end A096035.P18335466968276558632

namespace A096035

/-- `A002450(A004736(n+1))*A074909(n)` -/
def P18335466968276558632.Spec : Prop :=
  ∀ n, P18335466968276558632.a n = A096035 (n + 1)

end A096035

/-! ## A096035.P16726078862399203412

`A052992(A185782(n+1))*A074909(n)`
-/

namespace A096035.P16726078862399203412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (A185782 (n + 1)).toNat * A074909 n

end

end A096035.P16726078862399203412

namespace A096035

/-- `A052992(A185782(n+1))*A074909(n)` -/
def P16726078862399203412.Spec : Prop :=
  ∀ n, P16726078862399203412.a n = A096035 (n + 1)

end A096035

/-! ## A096035.P12975652999550427851

`A001045(2*A004736(n+1))*A074909(n)`
-/

namespace A096035.P12975652999550427851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * A004736 (n + 1)).toNat * A074909 n

end

end A096035.P12975652999550427851

namespace A096035

/-- `A001045(2*A004736(n+1))*A074909(n)` -/
def P12975652999550427851.Spec : Prop :=
  ∀ n, P12975652999550427851.a n = A096035 (n + 1)

end A096035

/-! ## A096035.P15865205114997432600

`A002450(A004736(n+1))*A007318(A007401(n+1))`
-/

namespace A096035.P15865205114997432600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A004736 (n + 1)).toNat * A007318 (A007401 (n + 1)).toNat

end

end A096035.P15865205114997432600

namespace A096035

/-- `A002450(A004736(n+1))*A007318(A007401(n+1))` -/
def P15865205114997432600.Spec : Prop :=
  ∀ n, P15865205114997432600.a n = A096035 (n + 1)

end A096035

/-! ## A096035.P7599589665749135909

`A327317(n+1)/A059268(n)`
-/

namespace A096035.P7599589665749135909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327317 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A096035.P7599589665749135909

namespace A096035

/-- `A327317(n+1)/A059268(n)` -/
def P7599589665749135909.Spec : Prop :=
  ∀ n, P7599589665749135909.a n = (A096035 (n + 1) : ℚ)

end A096035

/-! ## A096035.P11627126717941594460

`A001157(A130321(n))*A074909(n)`
-/

namespace A096035.P11627126717941594460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A130321 n).toNat * A074909 n

end

end A096035.P11627126717941594460

namespace A096035

/-- `A001157(A130321(n))*A074909(n)` -/
def P11627126717941594460.Spec : Prop :=
  ∀ n, P11627126717941594460.a n = A096035 (n + 1)

end A096035

/-! ## A096035.P12690483938539054675

`A074909(n)*A342634(A130330(n))`
-/

namespace A096035.P12690483938539054675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A342634 (A130330 n).toNat

end

end A096035.P12690483938539054675

namespace A096035

/-- `A074909(n)*A342634(A130330(n))` -/
def P12690483938539054675.Spec : Prop :=
  ∀ n, P12690483938539054675.a n = A096035 (n + 1)

end A096035

/-!
# A096036: a(n) = ceiling(n/a(ceiling(n/2))); a(1) = 1.

The programs for A096036, the canonical program `A096036.P1366054186717088022` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096036 has offset 1).

The definition of A096036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/a(ceil((n+1)/2)-1))` (program `A096036.P1366054186717088022`, by `A096036.P1366054186717088022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096036.P1366054186717088022

`ceil((n+1)/a(ceil((n+1)/2)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096036

/-- `ceil((n+1)/a(ceil((n+1)/2)-1))` -/
def P1366054186717088022.Spec : Prop :=
  ∀ n, P1366054186717088022.a n = A096036 (n + 1)

theorem P1366054186717088022.correct : P1366054186717088022.Spec := by
  intro n
  simp only [A096036, Nat.add_sub_cancel]

end A096036

/-! ## A096036.P2579463199901115478

`floor(n/a(floor(n/2)))+1` with `a(0)=1`
-/

namespace A096036.P2579463199901115478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌋ + 1

end

end A096036.P2579463199901115478

namespace A096036

/-- `floor(n/a(floor(n/2)))+1` -/
def P2579463199901115478.Spec : Prop :=
  ∀ n, P2579463199901115478.a n = A096036 (n + 1)

end A096036

/-! ## A096036.P8122984858723938665

`ceil(1/(a(floor(n/2))*acot(n)))` with `a(0)=1`
-/

namespace A096036.P8122984858723938665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈1 / ((a ⌊(n : ℚ) / 2⌋.toNat : ℝ) * SequenceMachineLib.acot (n : ℝ))⌉

end

end A096036.P8122984858723938665

namespace A096036

/-- `ceil(1/(a(floor(n/2))*acot(n)))` -/
def P8122984858723938665.Spec : Prop :=
  ∀ n, P8122984858723938665.a n = A096036 (n + 1)

end A096036

/-! ## A096036.P11625898483475361659

`ceil(Δ[n²]/(2*a(floor(n/2))))` with `a(0)=1`
-/

namespace A096036.P11625898483475361659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (2 * a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌉

end

end A096036.P11625898483475361659

namespace A096036

/-- `ceil(Δ[n²]/(2*a(floor(n/2))))` -/
def P11625898483475361659.Spec : Prop :=
  ∀ n, P11625898483475361659.a n = A096036 (n + 1)

end A096036

/-! ## A096036.P15654557951014690880

`ceil((n+1)/ceil(a(A123108(n))))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A096036.P15654557951014690880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n + 1 : ℚ) / (a (A123108 n).toNat : ℚ)⌉

end

end A096036.P15654557951014690880

namespace A096036

/-- `ceil((n+1)/ceil(a(A123108(n))))` -/
def P15654557951014690880.Spec : Prop :=
  ∀ n, P15654557951014690880.a n = A096036 (n + 1)

end A096036

/-!
# A096037: Triangle T(n,m) = (3*n+3*m-2)*(n+1-m)/2 read by rows.

The programs for A096037, the canonical program `A096037.P14088750410499945596` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096037 has offset 1).

The definition of A096037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(row(n)+1)+3*(col(n)+1)-2)*(row(n)+2-(col(n)+1))/2` (program `A096037.P3181478143696326318`, by `A096037.P3181478143696326318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096037.P3181478143696326318

`(3*(row(n)+1)+3*(col(n)+1)-2)*(row(n)+2-(col(n)+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096037.P3181478143696326318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (SequenceMachineLib.triRow n + 1) + 3 * (SequenceMachineLib.triCol n + 1) : ℤ) - 2) * ((SequenceMachineLib.triRow n + 2 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) : ℚ) / 2

end

end A096037.P3181478143696326318

namespace A096037

/-- `(3*(row(n)+1)+3*(col(n)+1)-2)*(row(n)+2-(col(n)+1))/2` -/
def P3181478143696326318.Spec : Prop :=
  ∀ n, P3181478143696326318.a n = (A096037 (n + 1) : ℚ)

theorem P3181478143696326318.correct : P3181478143696326318.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P3181478143696326318.a, A096037.P14088750410499945596.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P8604689094367708915

`T(n-1,k)+3*row(n)+2` with `a(0)=2`
-/

namespace A096037.P8604689094367708915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.triUp a n + 3 * SequenceMachineLib.triRow n + 2

end

end A096037.P8604689094367708915

namespace A096037

/-- `T(n-1,k)+3*row(n)+2` -/
def P8604689094367708915.Spec : Prop :=
  ∀ n, (P8604689094367708915.a n : ℤ) = A096037 (n + 1)

end A096037

/-! ## A096037.P2061436887294037281

`A096038(n+1)+1`
-/

namespace A096037.P2061436887294037281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + 1

end

end A096037.P2061436887294037281

namespace A096037

/-- `A096038(n+1)+1` -/
def P2061436887294037281.Spec : Prop :=
  ∀ n, P2061436887294037281.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P3830176959407479280

`A104587(n)+A003991(n+1)`
-/

namespace A096037.P3830176959407479280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n + A003991 (n + 1)

end

end A096037.P3830176959407479280

namespace A096037

/-- `A104587(n)+A003991(n+1)` -/
def P3830176959407479280.Spec : Prop :=
  ∀ n, P3830176959407479280.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P16738627770737707243

`A059036(n)+A104587(n)+1`
-/

namespace A096037.P16738627770737707243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + (A104587 n + 1)

end

end A096037.P16738627770737707243

namespace A096037

/-- `A059036(n)+A104587(n)+1` -/
def P16738627770737707243.Spec : Prop :=
  ∀ n, P16738627770737707243.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P10585700106206991169

`A104572(n+1)+A101468(n)`
-/

namespace A096037.P10585700106206991169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1) + A101468 n

end

end A096037.P10585700106206991169

namespace A096037

/-- `A104572(n+1)+A101468(n)` -/
def P10585700106206991169.Spec : Prop :=
  ∀ n, P10585700106206991169.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P341932643921331466

`A128116(n+1)+A101447(n)`
-/

namespace A096037.P341932643921331466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128116 (n + 1) + A101447 n

end

end A096037.P341932643921331466

namespace A096037

/-- `A128116(n+1)+A101447(n)` -/
def P341932643921331466.Spec : Prop :=
  ∀ n, P341932643921331466.a n = A096037 (n + 1)

theorem P341932643921331466.correct : P341932643921331466.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P341932643921331466.a, A096037.P14088750410499945596.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A101447, A101447.P4489853314784773764.a, A128116, A128116.P12706371843886189910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P3771567459049306794

`A141429(n+1)+A134480(n)`
-/

namespace A096037.P3771567459049306794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A134480 n

end

end A096037.P3771567459049306794

namespace A096037

/-- `A141429(n+1)+A134480(n)` -/
def P3771567459049306794.Spec : Prop :=
  ∀ n, P3771567459049306794.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P14782831491992471023

`A095871(n+1)+A004736(n+1)`
-/

namespace A096037.P14782831491992471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) + A004736 (n + 1)

end

end A096037.P14782831491992471023

namespace A096037

/-- `A095871(n+1)+A004736(n+1)` -/
def P14782831491992471023.Spec : Prop :=
  ∀ n, P14782831491992471023.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P4889742592189192444

`A095871(n+1)+A025581(n)+1`
-/

namespace A096037.P4889742592189192444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) + (A025581 n + 1)

end

end A096037.P4889742592189192444

namespace A096037

/-- `A095871(n+1)+A025581(n)+1` -/
def P4889742592189192444.Spec : Prop :=
  ∀ n, P4889742592189192444.a n = A096037 (n + 1)

theorem P4889742592189192444.correct : P4889742592189192444.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P4889742592189192444.a, A096037.P14088750410499945596.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A095871, A095871.P12080170565042940400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P14088750410499945596

`A094728(n+1)+A049777(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A096037

/-- `A094728(n+1)+A049777(n+1)` -/
def P14088750410499945596.Spec : Prop :=
  ∀ n, P14088750410499945596.a n = A096037 (n + 1)

theorem P14088750410499945596.correct : P14088750410499945596.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel]

end A096037

/-! ## A096037.P886835437179464321

`A131416(n+1)+A128140(n+1)`
-/

namespace A096037.P886835437179464321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131416 (n + 1) + A128140 (n + 1)

end

end A096037.P886835437179464321

namespace A096037

/-- `A131416(n+1)+A128140(n+1)` -/
def P886835437179464321.Spec : Prop :=
  ∀ n, P886835437179464321.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P7570230734350804917

`A205136(n+1)-A212012(n+1)`
-/

namespace A096037.P7570230734350804917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205136 (n + 1) - A212012 (n + 1)

end

end A096037.P7570230734350804917

namespace A096037

/-- `A205136(n+1)-A212012(n+1)` -/
def P7570230734350804917.Spec : Prop :=
  ∀ n, P7570230734350804917.a n = A096037 (n + 1)

theorem P7570230734350804917.correct : P7570230734350804917.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P7570230734350804917.a, A096037.P14088750410499945596.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A205136, A205136.P11482582398427600183.a, A212012, A212012.P10131555541362374622.a, A004736, A004736.P10337537277358081527.a, A099375, A099375.P13700148065993022910.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P7403425689994376275

`A213822(n+1)-A213828(n+1)`
-/

namespace A096037.P7403425689994376275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - A213828 (n + 1)

end

end A096037.P7403425689994376275

namespace A096037

/-- `A213822(n+1)-A213828(n+1)` -/
def P7403425689994376275.Spec : Prop :=
  ∀ n, P7403425689994376275.a n = A096037 (n + 1)

theorem P7403425689994376275.correct : P7403425689994376275.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P7403425689994376275.a, A096037.P14088750410499945596.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A213822, A213822.P7065334176716146466.a, A213828, A213828.P12143672118156655501.a, A213750, A213750.P11543633709042919296.a, A213752, A213752.P6712457032791748921.a, A213821, A213821.P9578737112397043331.a, A055461, A055461.P13333228572909301680.a, A122432, A122432.P16515211422386222308.a, A213500, A213500.P10415559373979276509.a, A213751, A213751.P3389573996948061720.a, A213771, A213771.P15097200566803793023.a, A000292, A000292.P18322089543142633594.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P16112744757063613497.a, A062707, A062707.P16581809348093358218.a, A089594, A089594.P11384896157500879908.a, A104633, A104633.P310418357099449208.a, A104634, A104634.P15724108096827104955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P16759888673137294537

`A101468(n)+A000326(A004736(n+1))`
-/

namespace A096037.P16759888673137294537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 n + A000326 (A004736 (n + 1)).toNat

end

end A096037.P16759888673137294537

namespace A096037

/-- `A101468(n)+A000326(A004736(n+1))` -/
def P16759888673137294537.Spec : Prop :=
  ∀ n, P16759888673137294537.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P15722489282134196392

`A094930(n+1)/A016789(A002262(n))`
-/

namespace A096037.P15722489282134196392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094930 (n + 1) : ℚ) / (A016789 (A002262 n).toNat : ℚ)

end

end A096037.P15722489282134196392

namespace A096037

/-- `A094930(n+1)/A016789(A002262(n))` -/
def P15722489282134196392.Spec : Prop :=
  ∀ n, P15722489282134196392.a n = (A096037 (n + 1) : ℚ)

end A096037

/-! ## A096037.P8099384172157528518

`A049777(n+1)+A271668(n)+A049780(n)`
-/

namespace A096037.P8099384172157528518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A271668 n + A049780 n)

end

end A096037.P8099384172157528518

namespace A096037

/-- `A049777(n+1)+A271668(n)+A049780(n)` -/
def P8099384172157528518.Spec : Prop :=
  ∀ n, P8099384172157528518.a n = A096037 (n + 1)

theorem P8099384172157528518.correct : P8099384172157528518.Spec := by
  intro n
  simp only [A096037, Nat.add_sub_cancel, A096037.P8099384172157528518.a, A096037.P14088750410499945596.a, A049777, A049777.P8069278756495172327.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, A271668, A271668.P273675855261280975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A096037

/-! ## A096037.P9376711532618713484

`A104587(n)+A002260(n+1)*A004736(n+1)`
-/

namespace A096037.P9376711532618713484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n + A002260 (n + 1) * A004736 (n + 1)

end

end A096037.P9376711532618713484

namespace A096037

/-- `A104587(n)+A002260(n+1)*A004736(n+1)` -/
def P9376711532618713484.Spec : Prop :=
  ∀ n, P9376711532618713484.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P17704123663376055304

`A008585(A049777(n+1))-A004736(n+1)`
-/

namespace A096037.P17704123663376055304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049777 (n + 1)).toNat - A004736 (n + 1)

end

end A096037.P17704123663376055304

namespace A096037

/-- `A008585(A049777(n+1))-A004736(n+1)` -/
def P17704123663376055304.Spec : Prop :=
  ∀ n, P17704123663376055304.a n = A096037 (n + 1)

end A096037

/-! ## A096037.P15639432710158309580

`A016777(A049777(n+1))-(A025581(n)+2)`
-/

namespace A096037.P15639432710158309580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A049777 (n + 1)).toNat - (A025581 n + 2)

end

end A096037.P15639432710158309580

namespace A096037

/-- `A016777(A049777(n+1))-(A025581(n)+2)` -/
def P15639432710158309580.Spec : Prop :=
  ∀ n, P15639432710158309580.a n = A096037 (n + 1)

end A096037

/-!
# A096038: Triangle T(n,m) = (3*n^2-3*m^2+5*m-4+n)/2 read by rows.

The programs for A096038, the canonical program `A096038.P12589696669190235938` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096038 has offset 1).

The definition of A096038 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A096038.anchor (n : ℕ) : (A096038 (n + 1) : ℚ) = ((3 * (SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - (3 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ) + (5 * (SequenceMachineLib.triCol n + 1) : ℤ) - 4 + (SequenceMachineLib.triRow n + 1 : ℤ) : ℚ) / 2` in `Proof.A096.A096038`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096038.P12589696669190235938

`(3*(row(n)+1)²-3*(col(n)+1)²+5*(col(n)+1)-4+row(n)+1)/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096038

/-- `(3*(row(n)+1)²-3*(col(n)+1)²+5*(col(n)+1)-4+row(n)+1)/2` -/
def P12589696669190235938.Spec : Prop :=
  ∀ n, P12589696669190235938.a n = (A096038 (n + 1) : ℚ)

end A096038

/-! ## A096038.P12246479114707872370

`A096037(n+1)-1`
-/

namespace A096038.P12246479114707872370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - 1

end

end A096038.P12246479114707872370

namespace A096038

/-- `A096037(n+1)-1` -/
def P12246479114707872370.Spec : Prop :=
  ∀ n, P12246479114707872370.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P7360216917920709489

`A104587(n)+A059036(n)`
-/

namespace A096038.P7360216917920709489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n + A059036 n

end

end A096038.P7360216917920709489

namespace A096038

/-- `A104587(n)+A059036(n)` -/
def P7360216917920709489.Spec : Prop :=
  ∀ n, P7360216917920709489.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P1782109370710457006

`A095871(n+1)+A025581(n)`
-/

namespace A096038.P1782109370710457006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095871 (n + 1) + A025581 n

end

end A096038.P1782109370710457006

namespace A096038

/-- `A095871(n+1)+A025581(n)` -/
def P1782109370710457006.Spec : Prop :=
  ∀ n, P1782109370710457006.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P826393632114319047

`A134480(n)+A127738(n+1)`
-/

namespace A096038.P826393632114319047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134480 n + A127738 (n + 1)

end

end A096038.P826393632114319047

namespace A096038

/-- `A134480(n)+A127738(n+1)` -/
def P826393632114319047.Spec : Prop :=
  ∀ n, P826393632114319047.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P12936525125372381108

`A003991(n+1)+A104587(n)-1`
-/

namespace A096038.P12936525125372381108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A104587 n - 1)

end

end A096038.P12936525125372381108

namespace A096038

/-- `A003991(n+1)+A104587(n)-1` -/
def P12936525125372381108.Spec : Prop :=
  ∀ n, P12936525125372381108.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P6494838293673638250

`A104572(n+1)+A101468(n)-1`
-/

namespace A096038.P6494838293673638250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104572 (n + 1) + (A101468 n - 1)

end

end A096038.P6494838293673638250

namespace A096038

/-- `A104572(n+1)+A101468(n)-1` -/
def P6494838293673638250.Spec : Prop :=
  ∀ n, P6494838293673638250.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P18000895561991070692

`A128116(n+1)+A101447(n)-1`
-/

namespace A096038.P18000895561991070692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128116 (n + 1) + (A101447 n - 1)

end

end A096038.P18000895561991070692

namespace A096038

/-- `A128116(n+1)+A101447(n)-1` -/
def P18000895561991070692.Spec : Prop :=
  ∀ n, P18000895561991070692.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P5765699637695804583

`A004736(n+1)+A095871(n+1)-1`
-/

namespace A096038.P5765699637695804583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A095871 (n + 1) - 1)

end

end A096038.P5765699637695804583

namespace A096038

/-- `A004736(n+1)+A095871(n+1)-1` -/
def P5765699637695804583.Spec : Prop :=
  ∀ n, P5765699637695804583.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P2860550994027862319

`A049777(n+1)+A094728(n+1)-1`
-/

namespace A096038.P2860550994027862319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A094728 (n + 1) - 1)

end

end A096038.P2860550994027862319

namespace A096038

/-- `A049777(n+1)+A094728(n+1)-1` -/
def P2860550994027862319.Spec : Prop :=
  ∀ n, P2860550994027862319.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P13321417594829143762

`A128140(n+1)+A131416(n+1)-1`
-/

namespace A096038.P13321417594829143762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + (A131416 (n + 1) - 1)

end

end A096038.P13321417594829143762

namespace A096038

/-- `A128140(n+1)+A131416(n+1)-1` -/
def P13321417594829143762.Spec : Prop :=
  ∀ n, P13321417594829143762.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P13544053178990926299

`A205136(n+1)-(A212012(n+1)+1)`
-/

namespace A096038.P13544053178990926299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205136 (n + 1) - (A212012 (n + 1) + 1)

end

end A096038.P13544053178990926299

namespace A096038

/-- `A205136(n+1)-(A212012(n+1)+1)` -/
def P13544053178990926299.Spec : Prop :=
  ∀ n, P13544053178990926299.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P7306419757400870433

`A213822(n+1)-(A213828(n+1)+1)`
-/

namespace A096038.P7306419757400870433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213822 (n + 1) - (A213828 (n + 1) + 1)

end

end A096038.P7306419757400870433

namespace A096038

/-- `A213822(n+1)-(A213828(n+1)+1)` -/
def P7306419757400870433.Spec : Prop :=
  ∀ n, P7306419757400870433.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P9994046680097345473

`A000326(A004736(n+1))+A101468(n)-1`
-/

namespace A096038.P9994046680097345473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A004736 (n + 1)).toNat + (A101468 n - 1)

end

end A096038.P9994046680097345473

namespace A096038

/-- `A000326(A004736(n+1))+A101468(n)-1` -/
def P9994046680097345473.Spec : Prop :=
  ∀ n, P9994046680097345473.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P11560008957299061485

`A094930(n+1)/A016789(A002262(n))-1`
-/

namespace A096038.P11560008957299061485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094930 (n + 1) : ℚ) / (A016789 (A002262 n).toNat : ℚ) - 1

end

end A096038.P11560008957299061485

namespace A096038

/-- `A094930(n+1)/A016789(A002262(n))-1` -/
def P11560008957299061485.Spec : Prop :=
  ∀ n, P11560008957299061485.a n = (A096038 (n + 1) : ℚ)

end A096038

/-! ## A096038.P15949549789288358722

`A094728(n+1)+A271668(n)-A002260(n+1)`
-/

namespace A096038.P15949549789288358722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) + (A271668 n - A002260 (n + 1))

end

end A096038.P15949549789288358722

namespace A096038

/-- `A094728(n+1)+A271668(n)-A002260(n+1)` -/
def P15949549789288358722.Spec : Prop :=
  ∀ n, P15949549789288358722.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P12895900755038682962

`A016777(A049777(n+1)-1)-A025581(n)`
-/

namespace A096038.P12895900755038682962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A049777 (n + 1) - 1).toNat - A025581 n

end

end A096038.P12895900755038682962

namespace A096038

/-- `A016777(A049777(n+1)-1)-A025581(n)` -/
def P12895900755038682962.Spec : Prop :=
  ∀ n, P12895900755038682962.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P9221655140869361643

`A008585(A049777(n+1))-(A004736(n+1)+1)`
-/

namespace A096038.P9221655140869361643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A049777 (n + 1)).toNat - (A004736 (n + 1) + 1)

end

end A096038.P9221655140869361643

namespace A096038

/-- `A008585(A049777(n+1))-(A004736(n+1)+1)` -/
def P9221655140869361643.Spec : Prop :=
  ∀ n, P9221655140869361643.a n = A096038 (n + 1)

end A096038

/-! ## A096038.P9315182108209379726

`A023443(A096037(n+1))`
-/

namespace A096038.P9315182108209379726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A096037 (n + 1)).toNat

end

end A096038.P9315182108209379726

namespace A096038

/-- `A023443(A096037(n+1))` -/
def P9315182108209379726.Spec : Prop :=
  ∀ n, P9315182108209379726.a n = A096038 (n + 1)

end A096038

/-!
# A096039: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^5-M)/4, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096039, the canonical program `A096039.P14324154058973614487` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096039 has offset 1).

The definition of A096039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8532 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096039.P14324154058973614487

`A003463(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096039

/-- `A003463(A004736(n+1))*A074909(n)` -/
def P14324154058973614487.Spec : Prop :=
  ∀ n, P14324154058973614487.a n = A096039 (n + 1)

theorem P14324154058973614487.correct : P14324154058973614487.Spec := by
  intro n
  simp only [A096039, Nat.add_sub_cancel]

end A096039

/-! ## A096039.P12949170796360191925

`A074909(n)*A354205(A130321(n))`
-/

namespace A096039.P12949170796360191925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A354205 (A130321 n).toNat

end

end A096039.P12949170796360191925

namespace A096039

/-- `A074909(n)*A354205(A130321(n))` -/
def P12949170796360191925.Spec : Prop :=
  ∀ n, P12949170796360191925.a n = A096039 (n + 1)

end A096039

/-! ## A096039.P5995395721869958247

`A033042(A130330(n))*A074909(n)`
-/

namespace A096039.P5995395721869958247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A130330 n).toNat * A074909 n

end

end A096039.P5995395721869958247

namespace A096039

/-- `A033042(A130330(n))*A074909(n)` -/
def P5995395721869958247.Spec : Prop :=
  ∀ n, P5995395721869958247.a n = A096039 (n + 1)

end A096039

/-! ## A096039.P12777980574420315135

`A003973(A140303(n))*A074909(n)`
-/

namespace A096039.P12777980574420315135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A140303 n).toNat * A074909 n

end

end A096039.P12777980574420315135

namespace A096039

/-- `A003973(A140303(n))*A074909(n)` -/
def P12777980574420315135.Spec : Prop :=
  ∀ n, P12777980574420315135.a n = A096039 (n + 1)

end A096039

/-!
# A096040: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^6-M)/5, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096040, the canonical program `A096040.P9837614522675498103` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096040 has offset 1).

The definition of A096040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096040.P9837614522675498103

`A003464(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096040

/-- `A003464(A004736(n+1))*A074909(n)` -/
def P9837614522675498103.Spec : Prop :=
  ∀ n, P9837614522675498103.a n = A096040 (n + 1)

theorem P9837614522675498103.correct : P9837614522675498103.Spec := by
  intro n
  simp only [A096040, Nat.add_sub_cancel]

end A096040

/-! ## A096040.P13618260174854567786

`A033043(A130330(n))*A074909(n)`
-/

namespace A096040.P13618260174854567786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A130330 n).toNat * A074909 n

end

end A096040.P13618260174854567786

namespace A096040

/-- `A033043(A130330(n))*A074909(n)` -/
def P13618260174854567786.Spec : Prop :=
  ∀ n, P13618260174854567786.a n = A096040 (n + 1)

end A096040

/-!
# A096041: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^7-M)/6, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096041, the canonical program `A096041.P7952884623463201919` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096041 has offset 1).

The definition of A096041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096041.P7952884623463201919

`A023000(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096041

/-- `A023000(A004736(n+1))*A074909(n)` -/
def P7952884623463201919.Spec : Prop :=
  ∀ n, P7952884623463201919.a n = A096041 (n + 1)

theorem P7952884623463201919.correct : P7952884623463201919.Spec := by
  intro n
  simp only [A096041, Nat.add_sub_cancel]

end A096041

/-! ## A096041.P12565418972554972212

`A007318(A007401(n+1))*A023000(A004736(n+1))`
-/

namespace A096041.P12565418972554972212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007401 (n + 1)).toNat * A023000 (A004736 (n + 1)).toNat

end

end A096041.P12565418972554972212

namespace A096041

/-- `A007318(A007401(n+1))*A023000(A004736(n+1))` -/
def P12565418972554972212.Spec : Prop :=
  ∀ n, P12565418972554972212.a n = A096041 (n + 1)

end A096041

/-! ## A096041.P8437464310849385495

`A007318(A003056(n)+1+n)*A023000(A004736(n+1))`
-/

namespace A096041.P8437464310849385495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003056 n + 1 + (n : ℤ)).toNat * A023000 (A004736 (n + 1)).toNat

end

end A096041.P8437464310849385495

namespace A096041

/-- `A007318(A003056(n)+1+n)*A023000(A004736(n+1))` -/
def P8437464310849385495.Spec : Prop :=
  ∀ n, P8437464310849385495.a n = A096041 (n + 1)

end A096041

/-!
# A096042: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^8-M)/7, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096042, the canonical program `A096042.P55449679465903240` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096042 has offset 1).

The definition of A096042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5679 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096042.P55449679465903240

`A023001(A004736(n+1))*A074909(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096042

/-- `A023001(A004736(n+1))*A074909(n)` -/
def P55449679465903240.Spec : Prop :=
  ∀ n, P55449679465903240.a n = A096042 (n + 1)

theorem P55449679465903240.correct : P55449679465903240.Spec := by
  intro n
  simp only [A096042, Nat.add_sub_cancel]

end A096042

/-! ## A096042.P2048668194898718801

`A001158(A130321(n))*A074909(n)`
-/

namespace A096042.P2048668194898718801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A130321 n).toNat * A074909 n

end

end A096042.P2048668194898718801

namespace A096042

/-- `A001158(A130321(n))*A074909(n)` -/
def P2048668194898718801.Spec : Prop :=
  ∀ n, P2048668194898718801.a n = A096042 (n + 1)

end A096042

/-!
# A096043: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^9-M)/8, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096043, the canonical program `A096043.P12251455895721356345` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096043 has offset 1).

The definition of A096043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096043.P12251455895721356345

`A006342(A099375(n))*A074909(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096043

/-- `A006342(A099375(n))*A074909(n)` -/
def P12251455895721356345.Spec : Prop :=
  ∀ n, P12251455895721356345.a n = A096043 (n + 1)

theorem P12251455895721356345.correct : P12251455895721356345.Spec := by
  intro n
  simp only [A096043, Nat.add_sub_cancel]

end A096043

/-! ## A096043.P18268643235184822654

`A002452(A004736(n+1))*A074909(n)`
-/

namespace A096043.P18268643235184822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 (A004736 (n + 1)).toNat * A074909 n

end

end A096043.P18268643235184822654

namespace A096043

/-- `A002452(A004736(n+1))*A074909(n)` -/
def P18268643235184822654.Spec : Prop :=
  ∀ n, P18268643235184822654.a n = A096043 (n + 1)

end A096043

/-! ## A096043.P13602674970957209165

`A046717(A004736(n+1))*A131049(n+1)`
-/

namespace A096043.P13602674970957209165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (A004736 (n + 1)).toNat * A131049 (n + 1)

end

end A096043.P13602674970957209165

namespace A096043

/-- `A046717(A004736(n+1))*A131049(n+1)` -/
def P13602674970957209165.Spec : Prop :=
  ∀ n, P13602674970957209165.a n = A096043 (n + 1)

end A096043

/-! ## A096043.P14939355352556281838

`A033046(A130330(n))*A074909(n)`
-/

namespace A096043.P14939355352556281838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (A130330 n).toNat * A074909 n

end

end A096043.P14939355352556281838

namespace A096043

/-- `A033046(A130330(n))*A074909(n)` -/
def P14939355352556281838.Spec : Prop :=
  ∀ n, P14939355352556281838.a n = A096043 (n + 1)

end A096043

/-! ## A096043.P17580540433932534004

`A001157(A140303(n))*A074909(n)`
-/

namespace A096043.P17580540433932534004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A140303 n).toNat * A074909 n

end

end A096043.P17580540433932534004

namespace A096043

/-- `A001157(A140303(n))*A074909(n)` -/
def P17580540433932534004.Spec : Prop :=
  ∀ n, P17580540433932534004.a n = A096043 (n + 1)

end A096043

/-!
# A096044: Triangle read by rows: T(n,k) = (n+1,k)-th element of (M^10-M)/9, where M is the infinite lower Pascal's triangle matrix, 1<=k<=n.

The programs for A096044, the canonical program `A096044.P15577968179775367660` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096044 has offset 1).

The definition of A096044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096044.P15577968179775367660

`A074909(n)*A094026(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096044

/-- `A074909(n)*A094026(A099375(n))` -/
def P15577968179775367660.Spec : Prop :=
  ∀ n, P15577968179775367660.a n = A096044 (n + 1)

theorem P15577968179775367660.correct : P15577968179775367660.Spec := by
  intro n
  simp only [A096044, Nat.add_sub_cancel]

end A096044

/-! ## A096044.P13010979781534410801

`A002275(A004736(n+1))*A074909(n)`
-/

namespace A096044.P13010979781534410801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A004736 (n + 1)).toNat * A074909 n

end

end A096044.P13010979781534410801

namespace A096044

/-- `A002275(A004736(n+1))*A074909(n)` -/
def P13010979781534410801.Spec : Prop :=
  ∀ n, P13010979781534410801.a n = A096044 (n + 1)

end A096044

/-! ## A096044.P3925094095462406292

`A002275(A025581(n)+1)*A074909(n)`
-/

namespace A096044.P3925094095462406292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A025581 n + 1).toNat * A074909 n

end

end A096044.P3925094095462406292

namespace A096044

/-- `A002275(A025581(n)+1)*A074909(n)` -/
def P3925094095462406292.Spec : Prop :=
  ∀ n, P3925094095462406292.a n = A096044 (n + 1)

end A096044

/-! ## A096044.P9213543952834028990

`A002275(A004736(n+1))*A007318(A007401(n+1))`
-/

namespace A096044.P9213543952834028990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A004736 (n + 1)).toNat * A007318 (A007401 (n + 1)).toNat

end

end A096044.P9213543952834028990

namespace A096044

/-- `A002275(A004736(n+1))*A007318(A007401(n+1))` -/
def P9213543952834028990.Spec : Prop :=
  ∀ n, P9213543952834028990.a n = A096044 (n + 1)

end A096044

/-! ## A096044.P13354425287536879071

`A007318(A003056(n)+1+n)*A094026(A099375(n))`
-/

namespace A096044.P13354425287536879071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003056 n + 1 + (n : ℤ)).toNat * A094026 (A099375 n).toNat

end

end A096044.P13354425287536879071

namespace A096044

/-- `A007318(A003056(n)+1+n)*A094026(A099375(n))` -/
def P13354425287536879071.Spec : Prop :=
  ∀ n, P13354425287536879071.a n = A096044 (n + 1)

end A096044

/-! ## A096044.P17831560074059866548

`A007088(A130330(n))*A074909(n)`
-/

namespace A096044.P17831560074059866548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A130330 n).toNat * A074909 n

end

end A096044.P17831560074059866548

namespace A096044

/-- `A007088(A130330(n))*A074909(n)` -/
def P17831560074059866548.Spec : Prop :=
  ∀ n, P17831560074059866548.a n = A096044 (n + 1)

end A096044

/-! ## A096044.P7233769887088087950

`A074909(n)*A255765(A130321(n))`
-/

namespace A096044.P7233769887088087950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A255765 (A130321 n).toNat

end

end A096044.P7233769887088087950

namespace A096044

/-- `A074909(n)*A255765(A130321(n))` -/
def P7233769887088087950.Spec : Prop :=
  ∀ n, P7233769887088087950.a n = A096044 (n + 1)

end A096044

/-!
# A096045: a(n) = B(2*n, 2)/B(2*n) (see formula section).

The programs for A096045, the canonical program `A096045.P15010219694620711667` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096045 has offset 0).

The definition of A096045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096045.P15010219694620711667

`3*4^n-2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096045

/-- `3*4^n-2` -/
def P15010219694620711667.Spec : Prop :=
  ∀ n, P15010219694620711667.a n = A096045 n

theorem P15010219694620711667.correct : P15010219694620711667.Spec := by
  intro n
  simp only [A096045]

end A096045

/-! ## A096045.P2958613295171790765

`ogf((1+5x)/(1-5x+4x^2))`
-/

namespace A096045.P2958613295171790765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -5, 4] n

end

end A096045.P2958613295171790765

namespace A096045

/-- `ogf((1+5x)/(1-5x+4x^2))` -/
def P2958613295171790765.Spec : Prop :=
  ∀ n, P2958613295171790765.a n = A096045 n

end A096045

/-! ## A096045.P6632629595573565668

`abs(2-lcm(3, 4^n))`
-/

namespace A096045.P6632629595573565668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 3 (4 ^ n) : ℤ)|

end

end A096045.P6632629595573565668

namespace A096045

/-- `abs(2-lcm(3, 4^n))` -/
def P6632629595573565668.Spec : Prop :=
  ∀ n, P6632629595573565668.a n = A096045 n

end A096045

/-! ## A096045.P17117899396892499637

`-or(2, Δ[-4^n])`
-/

namespace A096045.P17117899396892499637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (f1 (n + 1) - f1 n)

end

end A096045.P17117899396892499637

namespace A096045

/-- `-or(2, Δ[-4^n])` -/
def P17117899396892499637.Spec : Prop :=
  ∀ n, P17117899396892499637.a n = A096045 n

end A096045

/-! ## A096045.P4706464049428478449

`-xor(2, Δ[-4^n])`
-/

namespace A096045.P4706464049428478449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (f1 (n + 1) - f1 n)

end

end A096045.P4706464049428478449

namespace A096045

/-- `-xor(2, Δ[-4^n])` -/
def P4706464049428478449.Spec : Prop :=
  ∀ n, P4706464049428478449.a n = A096045 n

end A096045

/-! ## A096045.P17064665523437852290

`∑[4*a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A096045.P17064665523437852290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096045.P17064665523437852290

namespace A096045

/-- `∑[4*a(n-1)]` -/
def P17064665523437852290.Spec : Prop :=
  ∀ n, (P17064665523437852290.a n : ℤ) = A096045 n

end A096045

/-! ## A096045.P11367201009260764482

`or(6, 4*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A096045.P11367201009260764482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.lor 6 (4 * a (n - 1))

end

end A096045.P11367201009260764482

namespace A096045

/-- `or(6, 4*a(n-1))` -/
def P11367201009260764482.Spec : Prop :=
  ∀ n, (P11367201009260764482.a n : ℤ) = A096045 n

end A096045

/-! ## A096045.P10842138380390926178

`xor(6, 4*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A096045.P10842138380390926178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.xor 6 (4 * a (n - 1))

end

end A096045.P10842138380390926178

namespace A096045

/-- `xor(6, 4*a(n-1))` -/
def P10842138380390926178.Spec : Prop :=
  ∀ n, (P10842138380390926178.a n : ℤ) = A096045 n

end A096045

/-! ## A096045.P16304732318732079061

`abs(4*a(n-1)+6)` with `a(0)=1`
-/

namespace A096045.P16304732318732079061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + 6

end

end A096045.P16304732318732079061

namespace A096045

/-- `abs(4*a(n-1)+6)` -/
def P16304732318732079061.Spec : Prop :=
  ∀ n, (P16304732318732079061.a n : ℤ) = A096045 n

theorem P16304732318732079061.correct : P16304732318732079061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096045, Nat.add_sub_cancel, A096045.P16304732318732079061.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096045, Nat.add_sub_cancel, A096045.P16304732318732079061.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096045

/-! ## A096045.P9577637517114723664

`floor(4*(a(n-1)+ϕ))` with `a(0)=1`
-/

namespace A096045.P9577637517114723664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 * ((a (n - 1) : ℝ) + Real.goldenRatio)⌋

end

end A096045.P9577637517114723664

namespace A096045

/-- `floor(4*(a(n-1)+ϕ))` -/
def P9577637517114723664.Spec : Prop :=
  ∀ n, P9577637517114723664.a n = A096045 n

end A096045

/-! ## A096045.P12466876432656391261

`2*(2*a(n-1)+3)` with `a(0)=1`
-/

namespace A096045.P12466876432656391261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (n - 1) + 3)

end

end A096045.P12466876432656391261

namespace A096045

/-- `2*(2*a(n-1)+3)` -/
def P12466876432656391261.Spec : Prop :=
  ∀ n, (P12466876432656391261.a n : ℤ) = A096045 n

theorem P12466876432656391261.correct : P12466876432656391261.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096045, Nat.add_sub_cancel, A096045.P12466876432656391261.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096045, Nat.add_sub_cancel, A096045.P12466876432656391261.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096045

/-! ## A096045.P9374517185731620417

`2*(5-2*(1-a(n-1)))` with `a(0)=1`
-/

namespace A096045.P9374517185731620417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 - 2 * (1 - a (n - 1)))

end

end A096045.P9374517185731620417

namespace A096045

/-- `2*(5-2*(1-a(n-1)))` -/
def P9374517185731620417.Spec : Prop :=
  ∀ n, P9374517185731620417.a n = A096045 n

theorem P9374517185731620417.correct : P9374517185731620417.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096045, Nat.add_sub_cancel, A096045.P9374517185731620417.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096045, Nat.add_sub_cancel, A096045.P9374517185731620417.a, A096045.P15010219694620711667.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096045

/-! ## A096045.P10781469217942118679

`lcm(2, a(n-1)+a(n-1)+3)` with `a(0)=1`
-/

namespace A096045.P10781469217942118679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (n - 1) + (a (n - 1) + 3))

end

end A096045.P10781469217942118679

namespace A096045

/-- `lcm(2, a(n-1)+a(n-1)+3)` -/
def P10781469217942118679.Spec : Prop :=
  ∀ n, (P10781469217942118679.a n : ℤ) = A096045 n

end A096045

/-! ## A096045.P11513345313556027001

`∑[∑[a(n-1)+a(n-1)]²]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A096045.P11513345313556027001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096045.P11513345313556027001

namespace A096045

/-- `∑[∑[a(n-1)+a(n-1)]²]` -/
def P11513345313556027001.Spec : Prop :=
  ∀ n, (P11513345313556027001.a n : ℤ) = A096045 n

end A096045

/-! ## A096045.P2033263592116827798

`Δ[A100102(n)]`
-/

namespace A096045.P2033263592116827798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096045.P2033263592116827798

namespace A096045

/-- `Δ[A100102(n)]` -/
def P2033263592116827798.Spec : Prop :=
  ∀ n, P2033263592116827798.a n = A096045 n

end A096045

/-! ## A096045.P7726040206416098750

`Δ[A100103(n)]`
-/

namespace A096045.P7726040206416098750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096045.P7726040206416098750

namespace A096045

/-- `Δ[A100103(n)]` -/
def P7726040206416098750.Spec : Prop :=
  ∀ n, P7726040206416098750.a n = A096045 n

end A096045

/-! ## A096045.P10296726107833025820

`A033484(2*n)`
-/

namespace A096045.P10296726107833025820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * n)

end

end A096045.P10296726107833025820

namespace A096045

/-- `A033484(2*n)` -/
def P10296726107833025820.Spec : Prop :=
  ∀ n, P10296726107833025820.a n = A096045 n

end A096045

/-! ## A096045.P3842422756378247045

`A259713(2*n)`
-/

namespace A096045.P3842422756378247045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259713 (2 * n)

end

end A096045.P3842422756378247045

namespace A096045

/-- `A259713(2*n)` -/
def P3842422756378247045.Spec : Prop :=
  ∀ n, P3842422756378247045.a n = A096045 n

end A096045

/-! ## A096045.P10738719903666233893

`A280173(2*n)`
-/

namespace A096045.P10738719903666233893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280173 (2 * n)

end

end A096045.P10738719903666233893

namespace A096045

/-- `A280173(2*n)` -/
def P10738719903666233893.Spec : Prop :=
  ∀ n, P10738719903666233893.a n = A096045 n

end A096045

/-! ## A096045.P5846807835624922735

`A027383(4*n)`
-/

namespace A096045.P5846807835624922735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (4 * n)

end

end A096045.P5846807835624922735

namespace A096045

/-- `A027383(4*n)` -/
def P5846807835624922735.Spec : Prop :=
  ∀ n, P5846807835624922735.a n = A096045 n

end A096045

/-!
# A096046: a(n) = B(2n,3)/B(2n) (see comment).

The programs for A096046, the canonical program `A096046.P6688461106004607615` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096046 has offset 0).

The definition of A096046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096046.P10533571453289554197

`ogf((1+5x)/(1-10x+9x^2))`
-/

namespace A096046.P10533571453289554197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -10, 9] n

end

end A096046.P10533571453289554197

namespace A096046

/-- `ogf((1+5x)/(1-10x+9x^2))` -/
def P10533571453289554197.Spec : Prop :=
  ∀ n, P10533571453289554197.a n = A096046 n

end A096046

/-! ## A096046.P6688461106004607615

`9*a(n-1)+6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096046

/-- `9*a(n-1)+6` -/
def P6688461106004607615.Spec : Prop :=
  ∀ n, (P6688461106004607615.a n : ℤ) = A096046 n

theorem P6688461106004607615.correct : P6688461106004607615.Spec := by
  intro n
  simp only [A096046]

end A096046

/-! ## A096046.P9252227053516532840

`A199565(n)-1`
-/

namespace A096046.P9252227053516532840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199565 n - 1

end

end A096046.P9252227053516532840

namespace A096046

/-- `A199565(n)-1` -/
def P9252227053516532840.Spec : Prop :=
  ∀ n, P9252227053516532840.a n = A096046 n

end A096046

/-! ## A096046.P5617699045222089827

`(A198964(n)-1)/2`
-/

namespace A096046.P5617699045222089827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198964 n - 1 : ℚ) / 2

end

end A096046.P5617699045222089827

namespace A096046

/-- `(A198964(n)-1)/2` -/
def P5617699045222089827.Spec : Prop :=
  ∀ n, P5617699045222089827.a n = (A096046 n : ℚ)

end A096046

/-! ## A096046.P3644036636452001570

`(A199566(n)-2)/2`
-/

namespace A096046.P3644036636452001570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199566 n - 2 : ℚ) / 2

end

end A096046.P3644036636452001570

namespace A096046

/-- `(A199566(n)-2)/2` -/
def P3644036636452001570.Spec : Prop :=
  ∀ n, P3644036636452001570.a n = (A096046 n : ℚ)

end A096046

/-! ## A096046.P7241528148573824196

`(7*9^n-3)/4`
-/

namespace A096046.P7241528148573824196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 9 ^ n : ℤ) - 3 : ℚ) / 4

end

end A096046.P7241528148573824196

namespace A096046

/-- `(7*9^n-3)/4` -/
def P7241528148573824196.Spec : Prop :=
  ∀ n, P7241528148573824196.a n = (A096046 n : ℚ)

theorem P7241528148573824196.correct : P7241528148573824196.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096046, Nat.add_sub_cancel, A096046.P7241528148573824196.a, A096046.P6688461106004607615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096046, Nat.add_sub_cancel, A096046.P7241528148573824196.a, A096046.P6688461106004607615.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096046

/-! ## A096046.P10953083063897071967

`∑[9*a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A096046.P10953083063897071967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096046.P10953083063897071967

namespace A096046

/-- `∑[9*a(n-1)]` -/
def P10953083063897071967.Spec : Prop :=
  ∀ n, (P10953083063897071967.a n : ℤ) = A096046 n

end A096046

/-! ## A096046.P14940445584766547733

`6-floor(-(9*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A096046.P14940445584766547733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - (-(9 * a (n - 1)))

end

end A096046.P14940445584766547733

namespace A096046

/-- `6-floor(-(9*a(n-1)))` -/
def P14940445584766547733.Spec : Prop :=
  ∀ n, P14940445584766547733.a n = A096046 n

end A096046

/-! ## A096046.P4752954762296859740

`6-ceil(-(9*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A096046.P4752954762296859740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 - (-(9 * a (n - 1)))

end

end A096046.P4752954762296859740

namespace A096046

/-- `6-ceil(-(9*a(n-1)))` -/
def P4752954762296859740.Spec : Prop :=
  ∀ n, P4752954762296859740.a n = A096046 n

end A096046

/-! ## A096046.P12074530139461149624

`a(n-1)/(1/3)²+6` with `a(0)=1`
-/

namespace A096046.P12074530139461149624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 6

end

end A096046.P12074530139461149624

namespace A096046

/-- `a(n-1)/(1/3)²+6` -/
def P12074530139461149624.Spec : Prop :=
  ∀ n, P12074530139461149624.a n = (A096046 n : ℚ)

end A096046

/-! ## A096046.P3479739881153072767

`3*(5-3*(1-a(n-1)))` with `a(0)=1`
-/

namespace A096046.P3479739881153072767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (5 - 3 * (1 - a (n - 1)))

end

end A096046.P3479739881153072767

namespace A096046

/-- `3*(5-3*(1-a(n-1)))` -/
def P3479739881153072767.Spec : Prop :=
  ∀ n, P3479739881153072767.a n = A096046 n

end A096046

/-! ## A096046.P262112402982003713

`2*A187709(n)-1`
-/

namespace A096046.P262112402982003713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187709 n - 1

end

end A096046.P262112402982003713

namespace A096046

/-- `2*A187709(n)-1` -/
def P262112402982003713.Spec : Prop :=
  ∀ n, P262112402982003713.a n = A096046 n

end A096046

/-! ## A096046.P7796608363265576615

`A199566(n)/2-1`
-/

namespace A096046.P7796608363265576615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199566 n : ℚ) / 2 - 1

end

end A096046.P7796608363265576615

namespace A096046

/-- `A199566(n)/2-1` -/
def P7796608363265576615.Spec : Prop :=
  ∀ n, P7796608363265576615.a n = (A096046 n : ℚ)

end A096046

/-! ## A096046.P17858954837343281693

`7*A054879(n)-6`
-/

namespace A096046.P17858954837343281693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A054879 n - 6

end

end A096046.P17858954837343281693

namespace A096046

/-- `7*A054879(n)-6` -/
def P17858954837343281693.Spec : Prop :=
  ∀ n, P17858954837343281693.a n = A096046 n

end A096046

/-! ## A096046.P4738088539115361088

`A108765(2*n)+n`
-/

namespace A096046.P4738088539115361088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 (2 * n) + (n : ℤ)

end

end A096046.P4738088539115361088

namespace A096046

/-- `A108765(2*n)+n` -/
def P4738088539115361088.Spec : Prop :=
  ∀ n, P4738088539115361088.a n = A096046 n

end A096046

/-! ## A096046.P14609192303040341038

`∑[2*A270472(n)]-1`
-/

namespace A096046.P14609192303040341038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A096046.P14609192303040341038

namespace A096046

/-- `∑[2*A270472(n)]-1` -/
def P14609192303040341038.Spec : Prop :=
  ∀ n, P14609192303040341038.a n = A096046 n

end A096046

/-! ## A096046.P5885214203124070212

`A307685(2*(n+1))-2`
-/

namespace A096046.P5885214203124070212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307685 (2 * (n + 1)) - 2

end

end A096046.P5885214203124070212

namespace A096046

/-- `A307685(2*(n+1))-2` -/
def P5885214203124070212.Spec : Prop :=
  ∀ n, P5885214203124070212.a n = A096046 n

end A096046

/-! ## A096046.P479859074314486674

`A199109(2*n)/2-1`
-/

namespace A096046.P479859074314486674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199109 (2 * n) : ℚ) / 2 - 1

end

end A096046.P479859074314486674

namespace A096046

/-- `A199109(2*n)/2-1` -/
def P479859074314486674.Spec : Prop :=
  ∀ n, P479859074314486674.a n = (A096046 n : ℚ)

end A096046

/-! ## A096046.P10772972656728179959

`A103177(2*n)-(n+2)`
-/

namespace A096046.P10772972656728179959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 (2 * n) - (n + 2 : ℤ)

end

end A096046.P10772972656728179959

namespace A096046

/-- `A103177(2*n)-(n+2)` -/
def P10772972656728179959.Spec : Prop :=
  ∀ n, P10772972656728179959.a n = A096046 n

end A096046

/-! ## A096046.P6606464899559167863

`2*A153774(2*n+1)-1`
-/

namespace A096046.P6606464899559167863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153774 (2 * n + 1) - 1

end

end A096046.P6606464899559167863

namespace A096046

/-- `2*A153774(2*n+1)-1` -/
def P6606464899559167863.Spec : Prop :=
  ∀ n, P6606464899559167863.a n = A096046 n

end A096046

/-!
# A096047: a(n) = B(2n,4)/B(2n) (see comment).

The programs for A096047, the canonical program `A096047.P14202442922924104543` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096047 has offset 0).

The definition of A096047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096047.P15098454076381186259

`ogf((1+x-32x^2)/(1-21x+84x^2-64x^3))`
-/

namespace A096047.P15098454076381186259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -32] [1, -21, 84, -64] n

end

end A096047.P15098454076381186259

namespace A096047

/-- `ogf((1+x-32x^2)/(1-21x+84x^2-64x^3))` -/
def P15098454076381186259.Spec : Prop :=
  ∀ n, P15098454076381186259.a n = A096047 n

end A096047

/-! ## A096047.P670217974166546622

`1/3*(4*16^n+4^n-2)`
-/

namespace A096047.P670217974166546622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((4 * 16 ^ n + 4 ^ n : ℤ) - 2 : ℚ)

end

end A096047.P670217974166546622

namespace A096047

/-- `1/3*(4*16^n+4^n-2)` -/
def P670217974166546622.Spec : Prop :=
  ∀ n, P670217974166546622.a n = (A096047 n : ℚ)

theorem P670217974166546622.correct : P670217974166546622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A096047, Nat.add_sub_cancel, A096047.P670217974166546622.a, A096047.P14202442922924104543.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A096047, Nat.add_sub_cancel, A096047.P670217974166546622.a, A096047.P14202442922924104543.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096047

/-! ## A096047.P14202442922924104543

`21*a(n-1)-84*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=22, a(2)=346`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096047

/-- `21*a(n-1)-84*a(n-2)+64*a(n-3)` -/
def P14202442922924104543.Spec : Prop :=
  ∀ n, P14202442922924104543.a n = A096047 n

theorem P14202442922924104543.correct : P14202442922924104543.Spec := by
  intro n
  simp only [A096047]

end A096047

/-! ## A096047.P12764090624875124936

`or(4^n*∑[4^n], ∑[floor(4^n/2)])`
-/

namespace A096047.P12764090624875124936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A096047.P12764090624875124936

namespace A096047

/-- `or(4^n*∑[4^n], ∑[floor(4^n/2)])` -/
def P12764090624875124936.Spec : Prop :=
  ∀ n, P12764090624875124936.a n = A096047 n

end A096047

/-! ## A096047.P441552646978889467

`A321579(2*(n+1))/6`
-/

namespace A096047.P441552646978889467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321579 (2 * (n + 1)) : ℚ) / 6

end

end A096047.P441552646978889467

namespace A096047

/-- `A321579(2*(n+1))/6` -/
def P441552646978889467.Spec : Prop :=
  ∀ n, P441552646978889467.a n = (A096047 n : ℚ)

end A096047

/-! ## A096047.P5372751287158141476

`floor(A001576(2*(n+1))/12)`
-/

namespace A096047.P5372751287158141476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001576 (2 * (n + 1)) : ℚ) / 12⌋

end

end A096047.P5372751287158141476

namespace A096047

/-- `floor(A001576(2*(n+1))/12)` -/
def P5372751287158141476.Spec : Prop :=
  ∀ n, P5372751287158141476.a n = A096047 n

end A096047

/-! ## A096047.P16178124539651082079

`(A192467(2*(n+1))-1)/2`
-/

namespace A096047.P16178124539651082079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192467 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A096047.P16178124539651082079

namespace A096047

/-- `(A192467(2*(n+1))-1)/2` -/
def P16178124539651082079.Spec : Prop :=
  ∀ n, P16178124539651082079.a n = (A096047 n : ℚ)

end A096047

/-! ## A096047.P15711023895567099485

`A002450(Δ[n²])+∑[floor(2^(n-1))²]`
-/

namespace A096047.P15711023895567099485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A096047.P15711023895567099485

namespace A096047

/-- `A002450(Δ[n²])+∑[floor(2^(n-1))²]` -/
def P15711023895567099485.Spec : Prop :=
  ∀ n, P15711023895567099485.a n = A096047 n

end A096047

/-! ## A096047.P16006631593280990342

`A167193(2*n+1)+4^n*∑[4^n]`
-/

namespace A096047.P16006631593280990342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 (2 * n + 1) + ((4 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A096047.P16006631593280990342

namespace A096047

/-- `A167193(2*n+1)+4^n*∑[4^n]` -/
def P16006631593280990342.Spec : Prop :=
  ∀ n, P16006631593280990342.a n = A096047 n

end A096047

/-! ## A096047.P9782193476428533348

`A024036(n)+3*(∑[4*a(n-1)]²-1)/4+1` with `a(0)=1`
-/

namespace A096047.P9782193476428533348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024036 n : ℚ) + (3 * (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1 : ℚ) / 4) + 1)

end

end A096047.P9782193476428533348

namespace A096047

/-- `A024036(n)+3*(∑[4*a(n-1)]²-1)/4+1` -/
def P9782193476428533348.Spec : Prop :=
  ∀ n, P9782193476428533348.a n = (A096047 n : ℚ)

end A096047

/-!
# A096048: a(n) = B(2n,6)/B(2n) (see comment).

The programs for A096048, the canonical program `A096048.P11704023431220057131` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096048 has offset 0).

The definition of A096048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096048.P11704023431220057131

`(11*36^n+2*9^n+3*4^n-6)/10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096048

/-- `(11*36^n+2*9^n+3*4^n-6)/10` -/
def P11704023431220057131.Spec : Prop :=
  ∀ n, P11704023431220057131.a n = (A096048 n : ℚ)

end A096048

/-!
# A096053: a(n) = (3*9^n - 1)/2.

The programs for A096053, the canonical program `A096053.P13732010011741541308` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096053 has offset 0).

The definition of A096053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*9^n-1)/2` (program `A096053.P11712690325511315825`, by `A096053.P11712690325511315825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096053.P2428417423903755868

`ogf((1+3x)/(1-10x+9x^2))`
-/

namespace A096053.P2428417423903755868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -10, 9] n

end

end A096053.P2428417423903755868

namespace A096053

/-- `ogf((1+3x)/(1-10x+9x^2))` -/
def P2428417423903755868.Spec : Prop :=
  ∀ n, P2428417423903755868.a n = A096053 n

end A096053

/-! ## A096053.P11712690325511315825

`(3*9^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096053.P11712690325511315825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ n : ℤ) - 1 : ℚ) / 2

end

end A096053.P11712690325511315825

namespace A096053

/-- `(3*9^n-1)/2` -/
def P11712690325511315825.Spec : Prop :=
  ∀ n, P11712690325511315825.a n = (A096053 n : ℚ)

theorem P11712690325511315825.correct : P11712690325511315825.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A096053, Nat.add_sub_cancel, A096053.P11712690325511315825.a, A096053.P13732010011741541308.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A096053, Nat.add_sub_cancel, A096053.P11712690325511315825.a, A096053.P13732010011741541308.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A096053

/-! ## A096053.P13732010011741541308

`9*a(n-1)+4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096053

/-- `9*a(n-1)+4` -/
def P13732010011741541308.Spec : Prop :=
  ∀ n, (P13732010011741541308.a n : ℤ) = A096053 n

theorem P13732010011741541308.correct : P13732010011741541308.Spec := by
  intro n
  simp only [A096053]

end A096053

/-! ## A096053.P17303302491937276678

`∑{#}[n, C(2*n+1, 2*#)*4^#]`
-/

namespace A096053.P17303302491937276678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 1) (2 * k) * 4 ^ k

end

end A096053.P17303302491937276678

namespace A096053

/-- `∑{#}[n, C(2*n+1, 2*#)*4^#]` -/
def P17303302491937276678.Spec : Prop :=
  ∀ n, (P17303302491937276678.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P5498735454540577483

`∑{#}[2*n, 3^#]`
-/

namespace A096053.P5498735454540577483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k

end

end A096053.P5498735454540577483

namespace A096053

/-- `∑{#}[2*n, 3^#]` -/
def P5498735454540577483.Spec : Prop :=
  ∀ n, (P5498735454540577483.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P18381530136299000413

`filter[∑[3^n], #%2]`
-/

namespace A096053.P18381530136299000413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A096053.P18381530136299000413

namespace A096053

/-- `filter[∑[3^n], #%2]` -/
def P18381530136299000413.Spec : Prop :=
  ∀ n, (P18381530136299000413.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P12983307420531388085

`filter[∑[3^n], gcd(2, #)]`
-/

namespace A096053.P12983307420531388085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 2 (f1 j) = 1) n)

end

end A096053.P12983307420531388085

namespace A096053

/-- `filter[∑[3^n], gcd(2, #)]` -/
def P12983307420531388085.Spec : Prop :=
  ∀ n, (P12983307420531388085.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P17247172983189664414

`filter[∑[3^n], and(1, #)]`
-/

namespace A096053.P17247172983189664414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.land 1 (f1 j) = 1) n)

end

end A096053.P17247172983189664414

namespace A096053

/-- `filter[∑[3^n], and(1, #)]` -/
def P17247172983189664414.Spec : Prop :=
  ∀ n, (P17247172983189664414.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P10725824441075173919

`lcm(9, a(n-1))+4` with `a(0)=1`
-/

namespace A096053.P10725824441075173919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 4

end

end A096053.P10725824441075173919

namespace A096053

/-- `lcm(9, a(n-1))+4` -/
def P10725824441075173919.Spec : Prop :=
  ∀ n, (P10725824441075173919.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P18012190680277553951

`∑[9*a(n-1)]` with `a(0)=1, a(1)=12`
-/

namespace A096053.P18012190680277553951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096053.P18012190680277553951

namespace A096053

/-- `∑[9*a(n-1)]` -/
def P18012190680277553951.Spec : Prop :=
  ∀ n, (P18012190680277553951.a n : ℤ) = A096053 n

end A096053

/-! ## A096053.P12633557154201339411

`record[(-3)^n-a(n-1)]` with `a(0)=1`
-/

namespace A096053.P12633557154201339411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (-3) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096053.P12633557154201339411

namespace A096053

/-- `record[(-3)^n-a(n-1)]` -/
def P12633557154201339411.Spec : Prop :=
  ∀ n, P12633557154201339411.a n = A096053 n

end A096053

/-! ## A096053.P12877952657440798693

`a(n-1)/(1/3)²+4` with `a(0)=1`
-/

namespace A096053.P12877952657440798693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

end

end A096053.P12877952657440798693

namespace A096053

/-- `a(n-1)/(1/3)²+4` -/
def P12877952657440798693.Spec : Prop :=
  ∀ n, P12877952657440798693.a n = (A096053 n : ℚ)

end A096053

/-! ## A096053.P6726209511359265242

`4-(a(n-1)-10*a(n-1))` with `a(0)=1`
-/

namespace A096053.P6726209511359265242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (a (n - 1) - 10 * a (n - 1))

end

end A096053.P6726209511359265242

namespace A096053

/-- `4-(a(n-1)-10*a(n-1))` -/
def P6726209511359265242.Spec : Prop :=
  ∀ n, P6726209511359265242.a n = A096053 n

end A096053

/-! ## A096053.P7201380030718855113

`Δ[A004004(n)]`
-/

namespace A096053.P7201380030718855113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A096053.P7201380030718855113

namespace A096053

/-- `Δ[A004004(n)]` -/
def P7201380030718855113.Spec : Prop :=
  ∀ n, P7201380030718855113.a n = A096053 n

end A096053

/-! ## A096053.P15157846357078365111

`A199560(n)-1`
-/

namespace A096053.P15157846357078365111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199560 n - 1

end

end A096053.P15157846357078365111

namespace A096053

/-- `A199560(n)-1` -/
def P15157846357078365111.Spec : Prop :=
  ∀ n, P15157846357078365111.a n = A096053 n

end A096053

/-! ## A096053.P5735322908854482471

`A164907(2*n)`
-/

namespace A096053.P5735322908854482471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 (2 * n)

end

end A096053.P5735322908854482471

namespace A096053

/-- `A164907(2*n)` -/
def P5735322908854482471.Spec : Prop :=
  ∀ n, P5735322908854482471.a n = A096053 n

end A096053

/-! ## A096053.P8502263726689986807

`A052993(4*n)`
-/

namespace A096053.P8502263726689986807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (4 * n)

end

end A096053.P8502263726689986807

namespace A096053

/-- `A052993(4*n)` -/
def P8502263726689986807.Spec : Prop :=
  ∀ n, P8502263726689986807.a n = A096053 n

end A096053

/-! ## A096053.P9581660012740432720

`A094025(4*n)`
-/

namespace A096053.P9581660012740432720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094025 (4 * n)

end

end A096053.P9581660012740432720

namespace A096053

/-- `A094025(4*n)` -/
def P9581660012740432720.Spec : Prop :=
  ∀ n, P9581660012740432720.a n = A096053 n

end A096053

/-! ## A096053.P17957925451778459578

`A140298(6*n)`
-/

namespace A096053.P17957925451778459578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (6 * n)

end

end A096053.P17957925451778459578

namespace A096053

/-- `A140298(6*n)` -/
def P17957925451778459578.Spec : Prop :=
  ∀ n, P17957925451778459578.a n = A096053 n

end A096053

/-!
# A096054: a(n) = (36^n/6)*B(2n,1/6)/B(2n) where B(n,x) is the n-th Bernoulli polynomial and B(k) = B(k,0) is the k-th Bernoulli number.

The programs for A096054, the canonical program `A096054.P16999628995201403967` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096054 has offset 1).

The definition of A096054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096054.P16999628995201403967

`1/12*(36^(n+1)-2*9^(n+1)-3*4^(n+1)+6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096054

/-- `1/12*(36^(n+1)-2*9^(n+1)-3*4^(n+1)+6)` -/
def P16999628995201403967.Spec : Prop :=
  ∀ n, P16999628995201403967.a n = (A096054 (n + 1) : ℚ)

end A096054

/-! ## A096054.P453655251244699826

`A160869(Δ[n²])`
-/

namespace A096054.P453655251244699826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A096054.P453655251244699826

namespace A096054

/-- `A160869(Δ[n²])` -/
def P453655251244699826.Spec : Prop :=
  ∀ n, P453655251244699826.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P6657503497351377079

`A059387(2*n+1)/2`
-/

namespace A096054.P6657503497351377079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059387 (2 * n + 1) : ℚ) / 2

end

end A096054.P6657503497351377079

namespace A096054

/-- `A059387(2*n+1)/2` -/
def P6657503497351377079.Spec : Prop :=
  ∀ n, P6657503497351377079.a n = (A096054 (n + 1) : ℚ)

end A096054

/-! ## A096054.P18344787813647997783

`or(1, A160869(2*n+1))`
-/

namespace A096054.P18344787813647997783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A160869 (2 * n + 1))

end

end A096054.P18344787813647997783

namespace A096054

/-- `or(1, A160869(2*n+1))` -/
def P18344787813647997783.Spec : Prop :=
  ∀ n, P18344787813647997783.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P12693900965854628874

`abs(A076040(2*n+1)*A083420(n))`
-/

namespace A096054.P12693900965854628874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076040 (2 * n + 1) * A083420 n|

end

end A096054.P12693900965854628874

namespace A096054

/-- `abs(A076040(2*n+1)*A083420(n))` -/
def P12693900965854628874.Spec : Prop :=
  ∀ n, P12693900965854628874.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P17972243956308025371

`record[gcd(A007814(n+1), A160869(n+1))]`
-/

namespace A096054.P17972243956308025371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A160869 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096054.P17972243956308025371

namespace A096054

/-- `record[gcd(A007814(n+1), A160869(n+1))]` -/
def P17972243956308025371.Spec : Prop :=
  ∀ n, (P17972243956308025371.a n : ℤ) = A096054 (n + 1)

end A096054

/-! ## A096054.P4204208421535205408

`A036551(2*n+1)-A007051(2*n+1)`
-/

namespace A096054.P4204208421535205408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036551 (2 * n + 1) - A007051 (2 * n + 1)

end

end A096054.P4204208421535205408

namespace A096054

/-- `A036551(2*n+1)-A007051(2*n+1)` -/
def P4204208421535205408.Spec : Prop :=
  ∀ n, P4204208421535205408.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P13000283404602596960

`2*A016129(2*n)-A003462(2*n+1)`
-/

namespace A096054.P13000283404602596960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016129 (2 * n) - A003462 (2 * n + 1)

end

end A096054.P13000283404602596960

namespace A096054

/-- `2*A016129(2*n)-A003462(2*n+1)` -/
def P13000283404602596960.Spec : Prop :=
  ∀ n, P13000283404602596960.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P16432206050162515871

`A003462(2*n+1)+2*A059945(2*(n+1))`
-/

namespace A096054.P16432206050162515871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n + 1) + 2 * A059945 (2 * (n + 1))

end

end A096054.P16432206050162515871

namespace A096054

/-- `A003462(2*n+1)+2*A059945(2*(n+1))` -/
def P16432206050162515871.Spec : Prop :=
  ∀ n, P16432206050162515871.a n = A096054 (n + 1)

end A096054

/-! ## A096054.P11631076253754278050

`(A062394(2*n+1)-A007689(2*n+1))/2`
-/

namespace A096054.P11631076253754278050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062394 (2 * n + 1) - A007689 (2 * n + 1) : ℚ) / 2

end

end A096054.P11631076253754278050

namespace A096054

/-- `(A062394(2*n+1)-A007689(2*n+1))/2` -/
def P11631076253754278050.Spec : Prop :=
  ∀ n, P11631076253754278050.a n = (A096054 (n + 1) : ℚ)

end A096054

/-!
# A096055: Let {s(i)}, i=0,1,2,... be a sequence of finite sequences with terms s(i)(j), j=1,2,3,... Start with s(0)={1}. Then, for k>0, let s(k) = s(k-1) U s(k-1) if s(k-1)(k)=0, s(k) = s(k-1) U {0} U s(k-1) if s(k-1)(k)=1, where s(i)(j) is the j-th element of s(i) and U denotes concatenation of the terms of the two operands. {a(n)} is the limit of s(k) as k goes to infinity.

The programs for A096055, there is no canonical definition to state claims against.
-/

/-! ## A096055.P4360510625208494825

`A359465(A137843(n+1))`
-/

namespace A096055.P4360510625208494825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359465 (A137843 (n + 1)).toNat

end

end A096055.P4360510625208494825

/-! ## A096055.P8646865151661605271

`A008683(A137843(n+1)²)`
-/

namespace A096055.P8646865151661605271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A137843 (n + 1) ^ 2).toNat

end

end A096055.P8646865151661605271

/-! ## A096055.P16955167387081983635

`A359377(A137843(n+1)²)`
-/

namespace A096055.P16955167387081983635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (A137843 (n + 1) ^ 2).toNat

end

end A096055.P16955167387081983635

/-! ## A096055.P13936406109752116094

`A374466(2*A137843(n+1))`
-/

namespace A096055.P13936406109752116094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (2 * A137843 (n + 1)).toNat

end

end A096055.P13936406109752116094

/-! ## A096055.P7393402269084065188

`A330682(A137843(n+1)²²)`
-/

namespace A096055.P7393402269084065188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 ((A137843 (n + 1) ^ 2) ^ 2).toNat

end

end A096055.P7393402269084065188

/-! ## A096055.P15109051762152025228

`A004530(A137843(n+1)²-1)`
-/

namespace A096055.P15109051762152025228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A137843 (n + 1) ^ 2 - 1).toNat

end

end A096055.P15109051762152025228

/-! ## A096055.P7928987153742477056

`and(1, A000010(A137843(n+1)²))`
-/

namespace A096055.P7928987153742477056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A137843 (n + 1) ^ 2).toNat)

end

end A096055.P7928987153742477056

/-! ## A096055.P9184246995214947471

`A001221(ceil(2/A137843(n+1)))`
-/

namespace A096055.P9184246995214947471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈2 / (A137843 (n + 1) : ℚ)⌉.toNat

end

end A096055.P9184246995214947471

/-! ## A096055.P15572105764765548995

`A000010(A137843(n+1)+1)%2`
-/

namespace A096055.P15572105764765548995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A137843 (n + 1) + 1).toNat) 2

end

end A096055.P15572105764765548995

/-! ## A096055.P11177029731488516703

`A000035(A007954(A137843(n+1)²))`
-/

namespace A096055.P11177029731488516703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007954 (A137843 (n + 1) ^ 2).toNat).toNat

end

end A096055.P11177029731488516703

/-! ## A096055.P17616767516125057308

`A000035(A181587(A137843(n+1))²)`
-/

namespace A096055.P17616767516125057308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A181587 (A137843 (n + 1)).toNat ^ 2).toNat

end

end A096055.P17616767516125057308

/-! ## A096055.P13686676566805588930

`A374466(A137843(n+1)+A137843(n+1))`
-/

namespace A096055.P13686676566805588930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374466 (A137843 (n + 1) + A137843 (n + 1)).toNat

end

end A096055.P13686676566805588930

/-! ## A096055.P3151230239014399083

`A112306(n+1)%2`
-/

namespace A096055.P3151230239014399083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112306 (n + 1)) 2

end

end A096055.P3151230239014399083

/-! ## A096055.P16808280677163545324

`A112306(n+1)-2*A112306(n)`
-/

namespace A096055.P16808280677163545324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112306 (n + 1) - 2 * A112306 n

end

end A096055.P16808280677163545324

/-! ## A096055.P234570684143286701

`A239735((2*A137843(n+1))²)`
-/

namespace A096055.P234570684143286701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239735 ((2 * A137843 (n + 1)) ^ 2).toNat

end

end A096055.P234570684143286701

/-! ## A096055.P15937662664539970669

`A000035(A131577(A137843(n+1))²)`
-/

namespace A096055.P15937662664539970669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A131577 (A137843 (n + 1)).toNat ^ 2).toNat

end

end A096055.P15937662664539970669

/-! ## A096055.P2688672035933466090

`A353519(A291753(A137843(n+1))²)`
-/

namespace A096055.P2688672035933466090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353519 (A291753 (A137843 (n + 1)).toNat ^ 2).toNat

end

end A096055.P2688672035933466090

/-! ## A096055.P7387923373016658875

`A353519(A291754(A137843(n+1))²)`
-/

namespace A096055.P7387923373016658875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353519 (A291754 (A137843 (n + 1)).toNat ^ 2).toNat

end

end A096055.P7387923373016658875

/-! ## A096055.P12566353815648284348

`A369253(A291753(A137843(n+1))²)`
-/

namespace A096055.P12566353815648284348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369253 (A291753 (A137843 (n + 1)).toNat ^ 2).toNat

end

end A096055.P12566353815648284348

/-!
# A096057: a(1) = 1, a(n) = least prime divisor of b(n), where b(1) = 1, b(n) = n*b(n-1) + 1 = A002627(n).

The programs for A096057, there is no canonical definition to state claims against.
-/

/-! ## A096057.P9598494716171502271

`A020639(∏{d}[(n+1)*a(n-1)+1, #])` with `a(0)=1`
-/

namespace A096057.P9598494716171502271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A096057.P9598494716171502271

/-! ## A096057.P9872337064246527541

`A020639(A000210((n+1)!))`
-/

namespace A096057.P9872337064246527541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000210 (Nat.factorial (n + 1))).toNat

end

end A096057.P9872337064246527541

/-!
# A096058: a(1) = 1, a(n) = largest prime divisor of b(n), where b(1) = 1, b(n) = n*b(n-1) + 1 = A002627(n).

The programs for A096058, the canonical program `A096058.P15095193995148871617` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096058 has offset 1).

The definition of A096058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A096058.P15095193995148871617

`A006530(A002627(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A096058

/-- `A006530(A002627(n+1))` -/
def P15095193995148871617.Spec : Prop :=
  ∀ n, P15095193995148871617.a n = A096058 (n + 1)

theorem P15095193995148871617.correct : P15095193995148871617.Spec := by
  intro n
  simp only [A096058, Nat.add_sub_cancel]

end A096058

/-! ## A096058.P15588369923798808585

`A006530(A120265(n+1))`
-/

namespace A096058.P15588369923798808585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A120265 (n + 1)).toNat

end

end A096058.P15588369923798808585

namespace A096058

/-- `A006530(A120265(n+1))` -/
def P15588369923798808585.Spec : Prop :=
  ∀ n, P15588369923798808585.a n = A096058 (n + 1)

end A096058

/-! ## A096058.P10266727006691114854

`A006530(A061354(n+1)-A061355(n+1))`
-/

namespace A096058.P10266727006691114854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061354 (n + 1) - A061355 (n + 1)).toNat

end

end A096058.P10266727006691114854

namespace A096058

/-- `A006530(A061354(n+1)-A061355(n+1))` -/
def P10266727006691114854.Spec : Prop :=
  ∀ n, P10266727006691114854.a n = A096058 (n + 1)

end A096058

/-! ## A096058.P2002032098598280891

`A006530((A000522(n+1)-A000142(n+1))/A093101(n+1))`
-/

namespace A096058.P2002032098598280891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000522 (n + 1) - A000142 (n + 1) : ℚ) / (A093101 (n + 1) : ℚ))).toNat

end

end A096058.P2002032098598280891

namespace A096058

/-- `A006530((A000522(n+1)-A000142(n+1))/A093101(n+1))` -/
def P2002032098598280891.Spec : Prop :=
  ∀ n, P2002032098598280891.a n = A096058 (n + 1)

end A096058

/-! ## A096058.P9950819157370498201

`A006530(A061354(n+1)-A000142(n+1)/A093101(n+1))`
-/

namespace A096058.P9950819157370498201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A061354 (n + 1) : ℚ) - (A000142 (n + 1) : ℚ) / (A093101 (n + 1) : ℚ))).toNat

end

end A096058.P9950819157370498201

namespace A096058

/-- `A006530(A061354(n+1)-A000142(n+1)/A093101(n+1))` -/
def P9950819157370498201.Spec : Prop :=
  ∀ n, P9950819157370498201.a n = A096058 (n + 1)

end A096058

/-!
# A096059: Numbers m such that for all k, (m^k-1)/(m-1) is not prime.

The programs for A096059, there is no canonical definition to state claims against.
-/

/-! ## A096059.P10288314622546813976

`A126589(comp[∑[n]])`
-/

namespace A096059.P10288314622546813976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126589 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A096059.P10288314622546813976

/-! ## A096059.P12703753567253280502

`A227650(A299542(n))`
-/

namespace A096059.P12703753567253280502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227650 (A299542 n).toNat

end

end A096059.P12703753567253280502

/-! ## A096059.P7739572796733600121

`A302554(A066049(n+1))`
-/

namespace A096059.P7739572796733600121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302554 (A066049 (n + 1)).toNat

end

end A096059.P7739572796733600121

/-! ## A096059.P2172402867970421640

`A227650(A144724(n+1))`
-/

namespace A096059.P2172402867970421640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227650 (A144724 (n + 1)).toNat

end

end A096059.P2172402867970421640

/-! ## A096059.P9978411205192446253

`A302554(A186511(n+1))`
-/

namespace A096059.P9978411205192446253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302554 (A186511 (n + 1)).toNat

end

end A096059.P9978411205192446253

/-!
# A096060: (2^(p-1)-1)/(3*p) where p = prime(n).

The programs for A096060, the canonical program `A096060.P1960581539626183162` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096060 has offset 3).

The definition of A096060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096060.P1960581539626183162

`A007663(n+3)/3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A096060

/-- `A007663(n+3)/3` -/
def P1960581539626183162.Spec : Prop :=
  ∀ n, P1960581539626183162.a n = (A096060 (n + 3) : ℚ)

end A096060

/-! ## A096060.P9093709861496169245

`(2^(A000040(n+3)-1)-1)/(3*A000040(n+3))`
-/

namespace A096060.P9093709861496169245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 3) - 1 : ℤ) - 1) / (3 * A000040 (n + 3) : ℚ)

end

end A096060.P9093709861496169245

namespace A096060

/-- `(2^(A000040(n+3)-1)-1)/(3*A000040(n+3))` -/
def P9093709861496169245.Spec : Prop :=
  ∀ n, P9093709861496169245.a n = (A096060 (n + 3) : ℚ)

end A096060

/-! ## A096060.P7166647277044552856

`A001045(A000040(n+3)-1)/A000040(n+3)`
-/

namespace A096060.P7166647277044552856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (A000040 (n + 3) - 1).toNat : ℚ) / (A000040 (n + 3) : ℚ)

end

end A096060.P7166647277044552856

namespace A096060

/-- `A001045(A000040(n+3)-1)/A000040(n+3)` -/
def P7166647277044552856.Spec : Prop :=
  ∀ n, P7166647277044552856.a n = (A096060 (n + 3) : ℚ)

end A096060

/-! ## A096060.P5039515274925992353

`A145756(n+1)/2`
-/

namespace A096060.P5039515274925992353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145756 (n + 1) : ℚ) / 2

end

end A096060.P5039515274925992353

namespace A096060

/-- `A145756(n+1)/2` -/
def P5039515274925992353.Spec : Prop :=
  ∀ n, P5039515274925992353.a n = (A096060 (n + 3) : ℚ)

end A096060

/-! ## A096060.P7523825757126083473

`A064535(n+3)/6`
-/

namespace A096060.P7523825757126083473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064535 (n + 3) : ℚ) / 6

end

end A096060.P7523825757126083473

namespace A096060

/-- `A064535(n+3)/6` -/
def P7523825757126083473.Spec : Prop :=
  ∀ n, P7523825757126083473.a n = (A096060 (n + 3) : ℚ)

end A096060

/-! ## A096060.P11565641282991466193

`A011957(A004139(n+1))`
-/

namespace A096060.P11565641282991466193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011957 (A004139 (n + 1)).toNat

end

end A096060.P11565641282991466193

namespace A096060

/-- `A011957(A004139(n+1))` -/
def P11565641282991466193.Spec : Prop :=
  ∀ n, P11565641282991466193.a n = A096060 (n + 3)

end A096060

/-! ## A096060.P5744493987793930454

`A011957(A066047(n+1))`
-/

namespace A096060.P5744493987793930454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011957 (A066047 (n + 1)).toNat

end

end A096060.P5744493987793930454

namespace A096060

/-- `A011957(A066047(n+1))` -/
def P5744493987793930454.Spec : Prop :=
  ∀ n, P5744493987793930454.a n = A096060 (n + 3)

end A096060

/-! ## A096060.P8705392256925111362

`A011957(A215848(n+1))`
-/

namespace A096060.P8705392256925111362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011957 (A215848 (n + 1)).toNat

end

end A096060.P8705392256925111362

namespace A096060

/-- `A011957(A215848(n+1))` -/
def P8705392256925111362.Spec : Prop :=
  ∀ n, P8705392256925111362.a n = A096060 (n + 3)

end A096060

/-! ## A096060.P2432666027520114199

`A011957(A240710(n+1))`
-/

namespace A096060.P2432666027520114199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011957 (A240710 (n + 1)).toNat

end

end A096060.P2432666027520114199

namespace A096060

/-- `A011957(A240710(n+1))` -/
def P2432666027520114199.Spec : Prop :=
  ∀ n, P2432666027520114199.a n = A096060 (n + 3)

end A096060

/-! ## A096060.P12418895930746830061

`A011957(A045319(n+2))`
-/

namespace A096060.P12418895930746830061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011957 (A045319 (n + 2)).toNat

end

end A096060.P12418895930746830061

namespace A096060

/-- `A011957(A045319(n+2))` -/
def P12418895930746830061.Spec : Prop :=
  ∀ n, P12418895930746830061.a n = A096060 (n + 3)

end A096060

/-!
# A096061: a(n) = floor((Sum of the first n natural numbers)/(Sum of the first n terms of the harmonic series)).

The programs for A096061, the canonical program `A096061.P6929213565617973771` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096061 has offset 1).

The definition of A096061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096061.P6929213565617973771

`floor(∑[n+1]/∑[1/(n+1)])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096061

/-- `floor(∑[n+1]/∑[1/(n+1)])` -/
def P6929213565617973771.Spec : Prop :=
  ∀ n, P6929213565617973771.a n = A096061 (n + 1)

theorem P6929213565617973771.correct : P6929213565617973771.Spec := by
  intro n
  simp only [A096061, Nat.add_sub_cancel]

end A096061

/-! ## A096061.P13924486930042704494

`A065033(A214294(n+1))+n`
-/

namespace A096061.P13924486930042704494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A214294 (n + 1)).toNat + (n : ℤ)

end

end A096061.P13924486930042704494

namespace A096061

/-- `A065033(A214294(n+1))+n` -/
def P13924486930042704494.Spec : Prop :=
  ∀ n, P13924486930042704494.a n = A096061 (n + 1)

end A096061

/-! ## A096061.P4620638396725886139

`A008619(A214294(n+1)+A004280(n+1))`
-/

namespace A096061.P4620638396725886139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A214294 (n + 1) + A004280 (n + 1)).toNat

end

end A096061.P4620638396725886139

namespace A096061

/-- `A008619(A214294(n+1)+A004280(n+1))` -/
def P4620638396725886139.Spec : Prop :=
  ∀ n, P4620638396725886139.a n = A096061 (n + 1)

end A096061

/-! ## A096061.P13715371825609889562

`∑[A043560(A211861(n)²)]`
-/

namespace A096061.P13715371825609889562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043560 (A211861 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096061.P13715371825609889562

namespace A096061

/-- `∑[A043560(A211861(n)²)]` -/
def P13715371825609889562.Spec : Prop :=
  ∀ n, P13715371825609889562.a n = A096061 (n + 1)

end A096061

/-! ## A096061.P3834487930212969045

`lt[A006171(n), A097609(A250120(n+4))]`
-/

namespace A096061.P3834487930212969045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097609 (A250120 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096061.P3834487930212969045

namespace A096061

/-- `lt[A006171(n), A097609(A250120(n+4))]` -/
def P3834487930212969045.Spec : Prop :=
  ∀ n, (P3834487930212969045.a n : ℤ) = A096061 (n + 1)

end A096061

/-!
# A096062: a(1) = a(2) = 1; for n > 2, if a(n-2) + a(n-1) > n then a(n) = abs(a(n-2) - a(n-1)) else a(n) = a(n-2) + a(n-1).

The programs for A096062, the canonical program `A096062.P13903668739528480523` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096062 has offset 1).

The definition of A096062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A096062.P13903668739528480523

`ogf((1+x+x^2+x^3+3x^4-x^5+x^6+x^7-x^8-x^9+5x^10+x^11-2x^12+2x^13)/(1-x^2-x^3+x^4+x^5-x^6-x^7+x^8+x^9-x^10-x^11+x^13))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096062

/-- `ogf((1+x+x^2+x^3+3x^4-x^5+x^6+x^7-x^8-x^9+5x^10+x^11-2x^12+2x^13)/(1-x^2-x^3+x^4+x^5-x^6-x^7+x^8+x^9-x^10-x^11+x^13))` -/
def P13903668739528480523.Spec : Prop :=
  ∀ n, P13903668739528480523.a n = A096062 (n + 1)

theorem P13903668739528480523.correct : P13903668739528480523.Spec := by
  intro n
  simp only [A096062, Nat.add_sub_cancel]

end A096062

/-! ## A096062.P4979501048991270079

`A053166(A042069(n))%10`
-/

namespace A096062.P4979501048991270079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053166 (A042069 n).toNat) 10

end

end A096062.P4979501048991270079

namespace A096062

/-- `A053166(A042069(n))%10` -/
def P4979501048991270079.Spec : Prop :=
  ∀ n, P4979501048991270079.a n = A096062 (n + 1)

end A096062

/-!
# A096064: Let p(k) = k-th prime; sequence gives primes q of the form q = k*p(k) + 1 for some k.

The programs for A096064, there is no canonical definition to state claims against.
-/

/-! ## A096064.P7829581278110318496

`A086172(n+1)*A192611(n+1)+1`
-/

namespace A096064.P7829581278110318496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086172 (n + 1) * A192611 (n + 1) + 1

end

end A096064.P7829581278110318496

/-! ## A096064.P8475436858487978303

`lcm(A086172(A000027(n+1)), A192611(n+1))+1`
-/

namespace A096064.P8475436858487978303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086172 (A000027 (n + 1)).toNat) (A192611 (n + 1)) + 1

end

end A096064.P8475436858487978303

/-! ## A096064.P9685625603878750490

`A033286(A086172(n+1))+1`
-/

namespace A096064.P9685625603878750490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A086172 (n + 1)).toNat + 1

end

end A096064.P9685625603878750490

/-! ## A096064.P17167803035783859989

`A033286(∑{d}[A192611(n+1), A066328(#)])+1`
-/

namespace A096064.P17167803035783859989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d).toNat + 1

end

end A096064.P17167803035783859989

/-! ## A096064.P15218065858431424932

`A066328(A192611(n+1))%A034844(n+1)*A192611(n+1)+1`
-/

namespace A096064.P15218065858431424932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066328 (A192611 (n + 1)).toNat) (A034844 (n + 1)) * A192611 (n + 1) + 1

end

end A096064.P15218065858431424932

/-! ## A096064.P14383217093352531101

`A079779(A086172(n+1))`
-/

namespace A096064.P14383217093352531101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079779 (A086172 (n + 1)).toNat

end

end A096064.P14383217093352531101

/-! ## A096064.P18320468626760257275

`A128913(A192611(n+1))+1`
-/

namespace A096064.P18320468626760257275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128913 (A192611 (n + 1)).toNat + 1

end

end A096064.P18320468626760257275

/-!
# A096065: Let p(k) = k-th prime; sequence gives primes q of the form q = k*p(k) - 1 for some k.

The programs for A096065, there is no canonical definition to state claims against.
-/

/-! ## A096065.P6346520693793617402

`p?[(n+1)*p?[abs(xor(n, -2))]-1]`
-/

namespace A096065.P6346520693793617402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096065.P6346520693793617402

/-! ## A096065.P481265915210923325

`p?[(n+1)*p?[xor(1, n)+1]-1]`
-/

namespace A096065.P481265915210923325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096065.P481265915210923325

/-! ## A096065.P13587119242019673482

`p?[A033286(n+1)-1]`
-/

namespace A096065.P13587119242019673482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096065.P13587119242019673482

/-! ## A096065.P6813637079695395478

`p?[A083726(n)-(n+1)]`
-/

namespace A096065.P6813637079695395478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083726 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096065.P6813637079695395478

/-! ## A096065.P14010024348028938424

`p?[A083723(n+1)-(n+1)]`
-/

namespace A096065.P14010024348028938424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083723 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096065.P14010024348028938424

/-!
# A096067: Number of 3-smooth numbers between successive numbers that are powers of 2 or of 3.

The programs for A096067, the canonical program `A096067.P16179009666601499113` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096067 has offset 1).

The definition of A096067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096067.P16179009666601499113

`Δ[∪[A022330(n), A022331(n)]]-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A096067

/-- `Δ[∪[A022330(n), A022331(n)]]-1` -/
def P16179009666601499113.Spec : Prop :=
  ∀ n, P16179009666601499113.a n = A096067 (n + 1)

theorem P16179009666601499113.correct : P16179009666601499113.Spec := by
  intro n
  simp only [A096067, Nat.add_sub_cancel]

end A096067

/-! ## A096067.P11329729368513579571

`Δ[A374484(n+1)]-1`
-/

namespace A096067.P11329729368513579571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A096067.P11329729368513579571

namespace A096067

/-- `Δ[A374484(n+1)]-1` -/
def P11329729368513579571.Spec : Prop :=
  ∀ n, P11329729368513579571.a n = A096067 (n + 1)

end A096067

/-! ## A096067.P17471762432399710824

`Δ[eq[A069352(n+1), A086414(n+1)]]-1`
-/

namespace A096067.P17471762432399710824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086414 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A096067.P17471762432399710824

namespace A096067

/-- `Δ[eq[A069352(n+1), A086414(n+1)]]-1` -/
def P17471762432399710824.Spec : Prop :=
  ∀ n, P17471762432399710824.a n = A096067 (n + 1)

end A096067

/-! ## A096067.P15361229816508577455

`Δ[eq[A086410(n+1), A086411(n+1)]]-1`
-/

namespace A096067.P15361229816508577455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086410 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A096067.P15361229816508577455

namespace A096067

/-- `Δ[eq[A086410(n+1), A086411(n+1)]]-1` -/
def P15361229816508577455.Spec : Prop :=
  ∀ n, P15361229816508577455.a n = A096067 (n + 1)

end A096067

/-! ## A096067.P13110867037918369064

`A122201(C(Δ[A374484(n+1)], 2))`
-/

namespace A096067.P13110867037918369064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (Nat.choose (f1 (n + 1) - f1 n).toNat 2)

end

end A096067.P13110867037918369064

namespace A096067

/-- `A122201(C(Δ[A374484(n+1)], 2))` -/
def P13110867037918369064.Spec : Prop :=
  ∀ n, P13110867037918369064.a n = A096067 (n + 1)

end A096067

/-!
# A096068: Concatenated in binary representation: largest proper divisor of n and smallest prime factor of n.

The programs for A096068, there is no canonical definition to state claims against.
-/

/-! ## A096068.P17218389173701550633

`or(A020639(A077168(n)), ∑[∑[(3-n)*(-1)^n]])`
-/

namespace A096068.P17218389173701550633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A077168 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096068.P17218389173701550633

/-!
# A096071: Primes arising as a partial sum of A096070.

The programs for A096071, there is no canonical definition to state claims against.
-/

/-! ## A096071.P12215974062788544952

`p?[∑[A096070(n+1)]]`
-/

namespace A096071.P12215974062788544952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096071.P12215974062788544952

/-! ## A096071.P10833260721671679220

`∩[A000040(n+1), ∑[A096070(n+1)]]`
-/

namespace A096071.P10833260721671679220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096071.P10833260721671679220

/-! ## A096071.P10406404467515207373

`∩[∑[A096070(n+1)], A005180(n+3)]`
-/

namespace A096071.P10406404467515207373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A096071.P10406404467515207373

/-! ## A096071.P14557568374480901291

`∑[A096070(2*n+1)+A096070(2*(n+1))]`
-/

namespace A096071.P14557568374480901291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (2 * n + 1) + A096070 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096071.P14557568374480901291

/-! ## A096071.P10459815397020688768

`A000040(A095116(n+1)+record[A170980(n)]-1)`
-/

namespace A096071.P10459815397020688768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095116 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1).toNat

end

end A096071.P10459815397020688768

/-!
# A096072: Numbers whose position is not changed by the rearrangement defined by A096070; or k such that A096070(k) = k.

The programs for A096072, there is no canonical definition to state claims against.
-/

/-! ## A096072.P3490079764923141030

`record[gcd(n+1, A096070(n+1))]`
-/

namespace A096072.P3490079764923141030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A096070 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096072.P3490079764923141030

/-! ## A096072.P8127214856478051672

`eq[n, A096070(A028310(n))]`
-/

namespace A096072.P8127214856478051672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096072.P8127214856478051672

/-! ## A096072.P6264971339076436027

`eq[n, A096070(A000007(n)+n)]`
-/

namespace A096072.P6264971339076436027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096072.P6264971339076436027

/-! ## A096072.P12945966431410176077

`record[gcd(A096070(n+1), A165998(n))]`
-/

namespace A096072.P12945966431410176077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096070 (n + 1)) (A165998 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096072.P12945966431410176077

/-! ## A096072.P7577047488867490543

`eq[n, A096070(A008619(A004275(n)))]`
-/

namespace A096072.P7577047488867490543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096072.P7577047488867490543

/-! ## A096072.P9403089129551508385

`eq[n+1, A096070(n+1)]-A057428(A016727(n))`
-/

namespace A096072.P9403089129551508385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A057428 (A016727 n).toNat

end

end A096072.P9403089129551508385

/-!
# A096075: Least common multiple of first n 3-smooth numbers.

The programs for A096075, there is no canonical definition to state claims against.
-/

/-! ## A096075.P1785108682144413971

`∏[A033031(n+1)%5]`
-/

namespace A096075.P1785108682144413971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033031 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096075.P1785108682144413971

/-! ## A096075.P6270212063107080007

`lcm(a(n-1), ∑[A061987(n)])` with `a(0)=1`
-/

namespace A096075.P6270212063107080007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096075.P6270212063107080007

/-! ## A096075.P17652719353713201064

`lcm(-a(n-1), A003586(n+1))` with `a(0)=1`
-/

namespace A096075.P17652719353713201064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A003586 (n + 1))

end

end A096075.P17652719353713201064

/-! ## A096075.P17161165474172107673

`∏[A099636(A003586(n+1))]`
-/

namespace A096075.P17161165474172107673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096075.P17161165474172107673

/-! ## A096075.P6701891267355206867

`∏[A014963(∑[A061987(n)])]`
-/

namespace A096075.P6701891267355206867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096075.P6701891267355206867

/-! ## A096075.P12476957081973289058

`∏[A014963(Δ[A259823(n)])]`
-/

namespace A096075.P12476957081973289058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A096075.P12476957081973289058

/-!
# A096076: Not the sum of two relatively prime composite numbers.

The programs for A096076, there is no canonical definition to state claims against.
-/

/-! ## A096076.P6483389146288587209

`eq[A224708(n+1), A345039(n+1)]+1`
-/

namespace A096076.P6483389146288587209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A096076.P6483389146288587209

/-! ## A096076.P14058261212381644537

`lt[A042988(A098743(n)), A064896(n+1)]`
-/

namespace A096076.P14058261212381644537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 (A098743 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096076.P14058261212381644537

/-! ## A096076.P10879964228598189098

`lt[A069010(A238874(n)), A304442(n)]`
-/

namespace A096076.P10879964228598189098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A238874 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096076.P10879964228598189098

/-! ## A096076.P17326456383567260377

`lt[A019320(A017906(n)), A236356(n+1)]`
-/

namespace A096076.P17326456383567260377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A017906 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096076.P17326456383567260377

/-! ## A096076.P14579113518813928838

`lt[A279228(n+1), A003963(2*n+3)]+1`
-/

namespace A096076.P14579113518813928838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096076.P14579113518813928838

/-!
# A096078: Triangle read by rows: T(n,k) = (k+1)*T(n-1,k) + (n-k+1)*T(n,k-1).

The programs for A096078, the canonical program `A096078.P13440055860924715051` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096078 has offset 0).

The definition of A096078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*T(n-1,k)+(row(n)-col(n)+1)*T(n,k-1)` (program `A096078.P13440055860924715051`, by `A096078.P13440055860924715051.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096078.P13440055860924715051

`(col(n)+1)*T(n-1,k)+(row(n)-col(n)+1)*T(n,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096078

/-- `(col(n)+1)*T(n-1,k)+(row(n)-col(n)+1)*T(n,k-1)` -/
def P13440055860924715051.Spec : Prop :=
  ∀ n, P13440055860924715051.a n = A096078 n

theorem P13440055860924715051.correct : P13440055860924715051.Spec := by
  intro n
  simp only [A096078]

end A096078

/-! ## A096078.P17222898198918222624

`A094503(A056537(n+1))`
-/

namespace A096078.P17222898198918222624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094503 (A056537 (n + 1)).toNat

end

end A096078.P17222898198918222624

namespace A096078

/-- `A094503(A056537(n+1))` -/
def P17222898198918222624.Spec : Prop :=
  ∀ n, P17222898198918222624.a n = A096078 n

end A096078

/-! ## A096078.P9692640498064520974

`A094503(A194061(n+1)+1)`
-/

namespace A096078.P9692640498064520974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094503 (A194061 (n + 1) + 1).toNat

end

end A096078.P9692640498064520974

namespace A096078

/-- `A094503(A194061(n+1)+1)` -/
def P9692640498064520974.Spec : Prop :=
  ∀ n, P9692640498064520974.a n = A096078 n

end A096078

/-! ## A096078.P6957543573252728481

`A101280(A056537(n+1))/A059268(n)`
-/

namespace A096078.P6957543573252728481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101280 (A056537 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)

end

end A096078.P6957543573252728481

namespace A096078

/-- `A101280(A056537(n+1))/A059268(n)` -/
def P6957543573252728481.Spec : Prop :=
  ∀ n, P6957543573252728481.a n = (A096078 n : ℚ)

end A096078

/-! ## A096078.P7422621281736021792

`A113897(A194061(n+1))`
-/

namespace A096078.P7422621281736021792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 (A194061 (n + 1)).toNat

end

end A096078.P7422621281736021792

namespace A096078

/-- `A113897(A194061(n+1))` -/
def P7422621281736021792.Spec : Prop :=
  ∀ n, P7422621281736021792.a n = A096078 n

end A096078

/-!
# A096079: Near hypotenuse numbers, i.e., n such that n^2 -+ 1 = a^2 + b^2, with a, b > 1.

The programs for A096079, the canonical program `A096079.P11427664201264587869` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096079 has offset 1).

The definition of A096079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A096079.P11427664201264587869

`∪[A050795(n+1), A050796(n+2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A096079

/-- `∪[A050795(n+1), A050796(n+2)]` -/
def P11427664201264587869.Spec : Prop :=
  ∀ n, (P11427664201264587869.a n : ℤ) = A096079 (n + 1)

theorem P11427664201264587869.correct : P11427664201264587869.Spec := by
  intro n
  simp only [A096079, Nat.add_sub_cancel]

end A096079

/-! ## A096079.P3770906461992872141

`lt[A118206(n), A288596(A070528(n+1))]`
-/

namespace A096079.P3770906461992872141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (A070528 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A096079.P3770906461992872141

namespace A096079

/-- `lt[A118206(n), A288596(A070528(n+1))]` -/
def P3770906461992872141.Spec : Prop :=
  ∀ n, (P3770906461992872141.a n : ℤ) = A096079 (n + 1)

end A096079

/-!
# A096080: a(n) = floor((a(n-2)*a(n-1))/(a(n-1)+a(n-2))) + a(n-1) + a(n-2), a(0) = 0, a(1) = 1, a(2) = 1, ...

The programs for A096080, the canonical program `A096080.P15283506238945521482` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096080 has offset 0).

The definition of A096080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-2)*a(n-1)/(a(n-1)+a(n-2)))+a(n-1)+a(n-2)` (program `A096080.P15283506238945521482`, by `A096080.P15283506238945521482.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096080.P15283506238945521482

`floor(a(n-2)*a(n-1)/(a(n-1)+a(n-2)))+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096080

/-- `floor(a(n-2)*a(n-1)/(a(n-1)+a(n-2)))+a(n-1)+a(n-2)` -/
def P15283506238945521482.Spec : Prop :=
  ∀ n, P15283506238945521482.a n = A096080 n

theorem P15283506238945521482.correct : P15283506238945521482.Spec := by
  intro n
  simp only [A096080]

end A096080

/-! ## A096080.P8984430796130312184

`A054404(ceil(sqrt(A094854(n))))`
-/

namespace A096080.P8984430796130312184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈Real.sqrt (A094854 n : ℝ)⌉.toNat

end

end A096080.P8984430796130312184

namespace A096080

/-- `A054404(ceil(sqrt(A094854(n))))` -/
def P8984430796130312184.Spec : Prop :=
  ∀ n, P8984430796130312184.a n = A096080 n

end A096080

/-! ## A096080.P16672892861992960690

`A055086(A255270(n)+A214198(n))`
-/

namespace A096080.P16672892861992960690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A255270 n + A214198 n).toNat

end

end A096080.P16672892861992960690

namespace A096080

/-- `A055086(A255270(n)+A214198(n))` -/
def P16672892861992960690.Spec : Prop :=
  ∀ n, P16672892861992960690.a n = A096080 n

end A096080

/-! ## A096080.P2398087000789411376

`A055086(A316078(n)+A214198(n))`
-/

namespace A096080.P2398087000789411376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A316078 n + A214198 n).toNat

end

end A096080.P2398087000789411376

namespace A096080

/-- `A055086(A316078(n)+A214198(n))` -/
def P2398087000789411376.Spec : Prop :=
  ∀ n, P2398087000789411376.a n = A096080 n

end A096080

/-! ## A096080.P8932171724484970488

`A055086(or(A030101(n), A214198(n)))`
-/

namespace A096080.P8932171724484970488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A030101 n) (A214198 n)).toNat

end

end A096080.P8932171724484970488

namespace A096080

/-- `A055086(or(A030101(n), A214198(n)))` -/
def P8932171724484970488.Spec : Prop :=
  ∀ n, P8932171724484970488.a n = A096080 n

end A096080

/-!
# A096081: a(n) = floor(a(n-2)^2/a(n-1)) + a(n-1) + a(n-2), a(0) = 0, a(1) = 1, a(2) = 1, ...

The programs for A096081, the canonical program `A096081.P6866942797141084914` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A096081 has offset 0).

The definition of A096081 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-2)²/a(n-1))+a(n-1)+a(n-2)` (program `A096081.P6866942797141084914`, by `A096081.P6866942797141084914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A096081.P6866942797141084914

`floor(a(n-2)²/a(n-1))+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A096081

/-- `floor(a(n-2)²/a(n-1))+a(n-1)+a(n-2)` -/
def P6866942797141084914.Spec : Prop :=
  ∀ n, P6866942797141084914.a n = A096081 n

theorem P6866942797141084914.correct : P6866942797141084914.Spec := by
  intro n
  simp only [A096081]

end A096081

/-! ## A096081.P9580553054310866361

`A008965(n+1)-A134914(A000669(n+1))`
-/

namespace A096081.P9580553054310866361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A134914 (A000669 (n + 1)).toNat

end

end A096081.P9580553054310866361

namespace A096081

/-- `A008965(n+1)-A134914(A000669(n+1))` -/
def P9580553054310866361.Spec : Prop :=
  ∀ n, P9580553054310866361.a n = A096081 n

end A096081

/-! ## A096081.P15276968060898280279

`A351359(n+1)-A171182(A329813(3*n+1))`
-/

namespace A096081.P15276968060898280279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351359 (n + 1) - A171182 (A329813 (3 * n + 1)).toNat

end

end A096081.P15276968060898280279

namespace A096081

/-- `A351359(n+1)-A171182(A329813(3*n+1))` -/
def P15276968060898280279.Spec : Prop :=
  ∀ n, P15276968060898280279.a n = A096081 n

end A096081

/-! ## A096081.P3063360289203944236

`A003056(A293744(n))-A029352(n)`
-/

namespace A096081.P3063360289203944236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A293744 n).toNat - A029352 n

end

end A096081.P3063360289203944236

namespace A096081

/-- `A003056(A293744(n))-A029352(n)` -/
def P3063360289203944236.Spec : Prop :=
  ∀ n, P3063360289203944236.a n = A096081 n

end A096081

/-! ## A096081.P6151963269577575663

`A000194(A201204(n)-A151575(n))`
-/

namespace A096081.P6151963269577575663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A201204 n - A151575 n).toNat

end

end A096081.P6151963269577575663

namespace A096081

/-- `A000194(A201204(n)-A151575(n))` -/
def P6151963269577575663.Spec : Prop :=
  ∀ n, P6151963269577575663.a n = A096081 n

end A096081

/-!
# A096082: Smallest odd prime p such that p^2 | n^(p-1) - 1.

The programs for A096082, there is no canonical definition to state claims against.
-/

/-! ## A096082.P15480407459634637280

`or(1, A247072(A004086(n+1)))`
-/

namespace A096082.P15480407459634637280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247072 (A004086 (n + 1)).toNat)

end

end A096082.P15480407459634637280

/-! ## A096082.P14269728387669922095

`or(1, A247072(A208450(n+1)))`
-/

namespace A096082.P14269728387669922095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A247072 (A208450 (n + 1)).toNat)

end

end A096082.P14269728387669922095

/-!
# A096085: a(n) is the least positive integer such that for 1 <= k <= n, the concatenation of the k terms a(n-k+1) through a(n) is a multiple of k.

The programs for A096085, there is no canonical definition to state claims against.
-/

/-! ## A096085.P12663078266608679012

`A019555(A103619(n)*A116018(n+1))`
-/

namespace A096085.P12663078266608679012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A103619 n * A116018 (n + 1)).toNat

end

end A096085.P12663078266608679012

/-! ## A096085.P2773569003526300662

`A351460(n+1)*A351460(A243953(n))`
-/

namespace A096085.P2773569003526300662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351460 (n + 1) * A351460 (A243953 n).toNat

end

end A096085.P2773569003526300662

/-!
# A096087: Triangle read by rows: row n lists cubic remainders modulo n.

The programs for A096087, there is no canonical definition to state claims against.
-/

/-! ## A096087.P7272010606674445713

`A002262(lt[1, A136625(n+2)])`
-/

namespace A096087.P7272010606674445713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096087.P7272010606674445713

/-! ## A096087.P12076006778326732882

`A002262(lt[1, A136625(n)]-2)`
-/

namespace A096087.P12076006778326732882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A096087.P12076006778326732882

/-! ## A096087.P10595288937755297577

`A002262(lt[1, A338158(2*(n+1))])`
-/

namespace A096087.P10595288937755297577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338158 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A096087.P10595288937755297577

/-! ## A096087.P5396669189755681426

`A002262(A138302(n+1))%A333223(3*(n+1))`
-/

namespace A096087.P5396669189755681426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 (A138302 (n + 1)).toNat) (A333223 (3 * (n + 1)))

end

end A096087.P5396669189755681426

/-! ## A096087.P388054221389349079

`A002262(A138302(n+1)%A376878(2*n+3))`
-/

namespace A096087.P388054221389349079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.tmod (A138302 (n + 1)) (A376878 (2 * n + 3))).toNat

end

end A096087.P388054221389349079

/-!
# A096088: Triangle read by rows: row n lists quartic remainders modulo n.

The programs for A096088, there is no canonical definition to state claims against.
-/

/-! ## A096088.P12240572095830271702

`A381348(n+2)+A000007(A096110(2*(n+1)))`
-/

namespace A096088.P12240572095830271702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381348 (n + 2) + A000007 (A096110 (2 * (n + 1))).toNat

end

end A096088.P12240572095830271702

/-! ## A096088.P17530003600261907208

`A381348(n+2)+A000007(A099756(2*(n+1)))`
-/

namespace A096088.P17530003600261907208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381348 (n + 2) + A000007 (A099756 (2 * (n + 1))).toNat

end

end A096088.P17530003600261907208

/-! ## A096088.P2709345102340326827

`A096008(lt[A130092(n+1), A358170(3*n+2)])`
-/

namespace A096088.P2709345102340326827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096088.P2709345102340326827

/-! ## A096088.P14462100780436903726

`A096008(lt[A002374(n+7), A358170(3*n+2)])`
-/

namespace A096088.P14462100780436903726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096088.P14462100780436903726

/-! ## A096088.P14715760731607308271

`A096008(lt[A047994(2*n+5), A358170(3*n+2)])`
-/

namespace A096088.P14715760731607308271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096088.P14715760731607308271

/-!
# A096089: Let f(n) = largest number formed using digits of n, g(n) = smallest number formed using digits of n; then a(n) = floor(f(n)/g(n)).

The programs for A096089, there is no canonical definition to state claims against.
-/

/-! ## A096089.P12036559523695739086

`floor(A004186(n+1)/A004185(n+1))`
-/

namespace A096089.P12036559523695739086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004186 (n + 1) : ℚ) / (A004185 (n + 1) : ℚ)⌋

end

end A096089.P12036559523695739086

/-! ## A096089.P10379319479929838469

`A068159(A004186(n+1))`
-/

namespace A096089.P10379319479929838469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068159 (A004186 (n + 1)).toNat

end

end A096089.P10379319479929838469

/-! ## A096089.P6239605827422483183

`A068159(A068637(A068159(A068779(n+1))))`
-/

namespace A096089.P6239605827422483183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068159 (A068637 (A068159 (A068779 (n + 1)).toNat).toNat).toNat

end

end A096089.P6239605827422483183

/-!
# A096090: Index of the first occurrence of n in A096089, or 0 if n never appears.

The programs for A096090, there is no canonical definition to state claims against.
-/

/-! ## A096090.P24023859847427960

`A001414(n+1)+record[A139393(A331199(n+1))]`
-/

namespace A096090.P24023859847427960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139393 (A331199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096090.P24023859847427960

/-!
# A096091: Numbers n with property that largest number formed from digits of n (A004186(n)) is divisible by smallest number formed from digits of n (A004185(n)).

The programs for A096091, there is no canonical definition to state claims against.
-/

/-! ## A096091.P16474354005448520732

`eq[1, A225416(A004186(n))]`
-/

namespace A096091.P16474354005448520732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225416 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A096091.P16474354005448520732

/-! ## A096091.P79954355096806510

`eq[A000007(n), A061467(A004186(n))]`
-/

namespace A096091.P79954355096806510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061467 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096091.P79954355096806510

/-! ## A096091.P3325774318148424567

`eq[A000038(n), A061649(A004186(n))]`
-/

namespace A096091.P3325774318148424567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061649 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096091.P3325774318148424567

/-! ## A096091.P16152639549630713602

`eq[(2*A061393(n))%4, A061649(A004186(n))]`
-/

namespace A096091.P16152639549630713602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A061393 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061649 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096091.P16152639549630713602

/-!
# A096092: Numbers whose digits can be permuted to get a proper divisor.

The programs for A096092, there is no canonical definition to state claims against.
-/

/-! ## A096092.P3501586327213883220

`∪[A008579(2*(n+1))+2, A260461(n+1)]`
-/

namespace A096092.P3501586327213883220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 (2 * (n + 1)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A096092.P3501586327213883220

/-! ## A096092.P6204530107899488778

`record[A070565(A247627(n+1))]`
-/

namespace A096092.P6204530107899488778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 (A247627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096092.P6204530107899488778

/-! ## A096092.P17074446325874910840

`filter[A247627(n+1), A217096(#)]`
-/

namespace A096092.P17074446325874910840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217096 (f1 j).toNat = 1) n)

end

end A096092.P17074446325874910840

/-! ## A096092.P17194987810068155945

`∩[A011540(n+1), A247627(n+1)]`
-/

namespace A096092.P17194987810068155945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096092.P17194987810068155945

/-! ## A096092.P10600517477517809757

`∩[A061430(n+1), A247627(n+1)]`
-/

namespace A096092.P10600517477517809757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A096092.P10600517477517809757

/-!
# A096093: Numbers, not divisible by 10, whose digits can be permuted to get a proper divisor.

The programs for A096093, there is no canonical definition to state claims against.
-/

/-! ## A096093.P8340433029648862308

`record[A004151(A090055(n+1))]`
-/

namespace A096093.P8340433029648862308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A090055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A096093.P8340433029648862308

/-! ## A096093.P6125579983822970808

`filter[A090055(n+1), A168184(#)]`
-/

namespace A096093.P6125579983822970808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A096093.P6125579983822970808

/-! ## A096093.P4555002007530518298

`A090055(lt[A274145(n), A007913(n+4)])`
-/

namespace A096093.P4555002007530518298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274145 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090055 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A096093.P4555002007530518298

/-!
# A096094: Analog of A094091 for S=3.

The programs for A096094, there is no canonical definition to state claims against.
-/

/-! ## A096094.P14461379649024756404

`char[∑[abs(a(n-3))]]` with `a(0)=6, a(1)=4, a(2)=1, a(3)=4, a(4)=1, a(5)=2`
-/

namespace A096094.P14461379649024756404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 4, 1, 4, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A096094.P14461379649024756404

/-! ## A096094.P4407015118579729711

`char[∑[floor(a(n-3))]]` with `a(0)=6, a(1)=4, a(2)=1, a(3)=4, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A096094.P4407015118579729711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 4, 1, 4, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A096094.P4407015118579729711

/-! ## A096094.P5428041953967311116

`char[∑[ceil(a(n-3))]]` with `a(0)=6, a(1)=4, a(2)=1, a(3)=4, a(4)=1, a(5)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A096094.P5428041953967311116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 4, 1, 4, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A096094.P5428041953967311116

/-! ## A096094.P8607486342579602108

`(((n-1)*2^n+2)%(2^(C(comp[∑[n]]-n, 2)-n)-1))%2`
-/

namespace A096094.P8607486342579602108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (((n : ℤ) - 1) * (2 ^ n : ℤ) + 2) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1))) 2

end

end A096094.P8607486342579602108

/-! ## A096094.P15268395463950375255

`val(or(7, A225475(n)), 3)`
-/

namespace A096094.P15268395463950375255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor 7 (A225475 n)).toNat 3

end

end A096094.P15268395463950375255

/-!
# A096095: Digital Fibonacci numbers: a(0) = a(1) = 1; a(n+2) = a(n) ++ a(n+1) where ++ stands for digit-wise sum (with no carries).

The programs for A096095, there is no canonical definition to state claims against.
-/

/-! ## A096095.P799135755440924375

`A111705(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A096095.P799135755440924375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A111705 (a (n - 1)).toNat + a (n - 2)

end

end A096095.P799135755440924375

/-! ## A096095.P6344908181537696157

`A226763(A061978(n+1))-n`
-/

namespace A096095.P6344908181537696157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A061978 (n + 1)).toNat - (n : ℤ)

end

end A096095.P6344908181537696157

/-! ## A096095.P6071345942416066015

`A184955((3-n)²)+A000045(n+1)`
-/

namespace A096095.P6071345942416066015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 ((3 - (n : ℤ)) ^ 2).toNat + A000045 (n + 1)

end

end A096095.P6071345942416066015

/-! ## A096095.P7514929185594633472

`A205295(2*(n+1))+A000045(n+1)`
-/

namespace A096095.P7514929185594633472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (2 * (n + 1)) + A000045 (n + 1)

end

end A096095.P7514929185594633472

