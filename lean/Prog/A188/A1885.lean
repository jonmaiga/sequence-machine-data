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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A188500: Number of n X n binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188500, there is no canonical definition to state claims against.
-/

/-! ## A188500.P13919461372169133

`A188508(∑[4*n]+1)`
-/

namespace A188500.P13919461372169133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188500.P13919461372169133

/-! ## A188500.P10242330817177735181

`record[A003982(n)*A188508(n+1)]`
-/

namespace A188500.P10242330817177735181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188500.P10242330817177735181

/-! ## A188500.P15587693003998603423

`record[root(A188508(n+1), A027420(n))]`
-/

namespace A188500.P15587693003998603423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188508 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188500.P15587693003998603423

/-! ## A188500.P2263727376992799529

`record[gcd(A008482(n), A188508(n+1))]`
-/

namespace A188500.P2263727376992799529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A188508 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188500.P2263727376992799529

/-! ## A188500.P5201471186282743091

`or(A188508(A001844(n)), A257685(n))`
-/

namespace A188500.P5201471186282743091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188508 (A001844 n).toNat) (A257685 n)

end

end A188500.P5201471186282743091

/-!
# A188501: Number of n X 2 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188501, the canonical program `A188501.P7612355594432178402` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188501 has offset 1).

The definition of A188501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188501.P7612355594432178402

`record[a(n-2)-a(n-3)]²` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188501

/-- `record[a(n-2)-a(n-3)]²` -/
def P7612355594432178402.Spec : Prop :=
  ∀ n, P7612355594432178402.a n = A188501 (n + 1)

theorem P7612355594432178402.correct : P7612355594432178402.Spec := by
  intro n
  simp only [A188501, Nat.add_sub_cancel]

end A188501

/-! ## A188501.P1545852781889994607

`ogf((4+4x+5x^2+x^3-2x^4-x^5)/(1-3x+x^2-3x^3-3x^4+x^5+x^6))`
-/

namespace A188501.P1545852781889994607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 5, 1, -2, -1] [1, -3, 1, -3, -3, 1, 1] n

end

end A188501.P1545852781889994607

namespace A188501

/-- `ogf((4+4x+5x^2+x^3-2x^4-x^5)/(1-3x+x^2-3x^3-3x^4+x^5+x^6))` -/
def P1545852781889994607.Spec : Prop :=
  ∀ n, P1545852781889994607.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P14024294431405793183

`(A077855(n)+1)²`
-/

namespace A188501.P14024294431405793183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077855 n + 1) ^ 2

end

end A188501.P14024294431405793183

namespace A188501

/-- `(A077855(n)+1)²` -/
def P14024294431405793183.Spec : Prop :=
  ∀ n, P14024294431405793183.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P757851341745339358

`A005251(n+4)²`
-/

namespace A188501.P757851341745339358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4) ^ 2

end

end A188501.P757851341745339358

namespace A188501

/-- `A005251(n+4)²` -/
def P757851341745339358.Spec : Prop :=
  ∀ n, P757851341745339358.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P3522812909055907974

`Δ[Δ[A010901(n)]]²`
-/

namespace A188501.P3522812909055907974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P3522812909055907974

namespace A188501

/-- `Δ[Δ[A010901(n)]]²` -/
def P3522812909055907974.Spec : Prop :=
  ∀ n, P3522812909055907974.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P16081723106458554239

`Δ[Δ[A018918(n)]]²`
-/

namespace A188501.P16081723106458554239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P16081723106458554239

namespace A188501

/-- `Δ[Δ[A018918(n)]]²` -/
def P16081723106458554239.Spec : Prop :=
  ∀ n, P16081723106458554239.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P1365105900987547778

`Δ[Δ[A020736(n)]]²`
-/

namespace A188501.P1365105900987547778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P1365105900987547778

namespace A188501

/-- `Δ[Δ[A020736(n)]]²` -/
def P1365105900987547778.Spec : Prop :=
  ∀ n, P1365105900987547778.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P10662563162086555091

`A172020(2*(n+2))`
-/

namespace A188501.P10662563162086555091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172020 (2 * (n + 2))

end

end A188501.P10662563162086555091

namespace A188501

/-- `A172020(2*(n+2))` -/
def P10662563162086555091.Spec : Prop :=
  ∀ n, P10662563162086555091.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P10925235248447787924

`A302655(4*(n+2))`
-/

namespace A188501.P10925235248447787924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302655 (4 * (n + 2))

end

end A188501.P10925235248447787924

namespace A188501

/-- `A302655(4*(n+2))` -/
def P10925235248447787924.Spec : Prop :=
  ∀ n, P10925235248447787924.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P2558188281731793601

`A133037(2*n+9)`
-/

namespace A188501.P2558188281731793601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 (2 * n + 9)

end

end A188501.P2558188281731793601

namespace A188501

/-- `A133037(2*n+9)` -/
def P2558188281731793601.Spec : Prop :=
  ∀ n, P2558188281731793601.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P11238022699429289445

`Δ[A018908(n+1)]²`
-/

namespace A188501.P11238022699429289445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P11238022699429289445

namespace A188501

/-- `Δ[A018908(n+1)]²` -/
def P11238022699429289445.Spec : Prop :=
  ∀ n, P11238022699429289445.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P6641298465713072860

`Δ[A005314(n+3)]²`
-/

namespace A188501.P6641298465713072860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P6641298465713072860

namespace A188501

/-- `Δ[A005314(n+3)]²` -/
def P6641298465713072860.Spec : Prop :=
  ∀ n, P6641298465713072860.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P7884430262672660444

`Δ[A289692(n+3)]²`
-/

namespace A188501.P7884430262672660444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P7884430262672660444

namespace A188501

/-- `Δ[A289692(n+3)]²` -/
def P7884430262672660444.Spec : Prop :=
  ∀ n, P7884430262672660444.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P10774113454639589464

`Δ[A054405(2*n)]²`
-/

namespace A188501.P10774113454639589464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188501.P10774113454639589464

namespace A188501

/-- `Δ[A054405(2*n)]²` -/
def P10774113454639589464.Spec : Prop :=
  ∀ n, P10774113454639589464.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P1819741923865208248

`A164001(2*(n+1))²`
-/

namespace A188501.P1819741923865208248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 1)) ^ 2

end

end A188501.P1819741923865208248

namespace A188501

/-- `A164001(2*(n+1))²` -/
def P1819741923865208248.Spec : Prop :=
  ∀ n, P1819741923865208248.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P6338600655812508284

`A228361(2*(n+2))²`
-/

namespace A188501.P6338600655812508284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * (n + 2)) ^ 2

end

end A188501.P6338600655812508284

namespace A188501

/-- `A228361(2*(n+2))²` -/
def P6338600655812508284.Spec : Prop :=
  ∀ n, P6338600655812508284.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P11668761679668844764

`(A164394(n+2)/2)²`
-/

namespace A188501.P11668761679668844764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A164394 (n + 2) : ℚ) / 2) ^ 2

end

end A188501.P11668761679668844764

namespace A188501

/-- `(A164394(n+2)/2)²` -/
def P11668761679668844764.Spec : Prop :=
  ∀ n, P11668761679668844764.a n = (A188501 (n + 1) : ℚ)

end A188501

/-! ## A188501.P11033185048181045221

`A182097(2*(n+3))²`
-/

namespace A188501.P11033185048181045221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * (n + 3)) ^ 2

end

end A188501.P11033185048181045221

namespace A188501

/-- `A182097(2*(n+3))²` -/
def P11033185048181045221.Spec : Prop :=
  ∀ n, P11033185048181045221.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P6364453633385484071

`A127682(4*(n+2))²`
-/

namespace A188501.P6364453633385484071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (4 * (n + 2)) ^ 2

end

end A188501.P6364453633385484071

namespace A188501

/-- `A127682(4*(n+2))²` -/
def P6364453633385484071.Spec : Prop :=
  ∀ n, P6364453633385484071.a n = A188501 (n + 1)

end A188501

/-! ## A188501.P11008486120056619556

`A134816(2*n+5)²`
-/

namespace A188501.P11008486120056619556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 5) ^ 2

end

end A188501.P11008486120056619556

namespace A188501

/-- `A134816(2*n+5)²` -/
def P11008486120056619556.Spec : Prop :=
  ∀ n, P11008486120056619556.a n = A188501 (n + 1)

end A188501

/-!
# A188502: Number of nX3 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188502, there is no canonical definition to state claims against.
-/

/-! ## A188502.P17986216539644248039

`A188508(∑[n+2]+4)`
-/

namespace A188502.P17986216539644248039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188502.P17986216539644248039

/-! ## A188502.P10047330506605678925

`A188508(A167614(n+1))+A178798(n)`
-/

namespace A188502.P10047330506605678925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A167614 (n + 1)).toNat + A178798 n

end

end A188502.P10047330506605678925

/-! ## A188502.P9884753150343097576

`or(A000038(n), A188508(A167614(n+1)))`
-/

namespace A188502.P9884753150343097576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A188508 (A167614 (n + 1)).toNat)

end

end A188502.P9884753150343097576

/-! ## A188502.P9831369223341069974

`or(A083928(n), A188508(A167614(n+1)))`
-/

namespace A188502.P9831369223341069974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083928 n) (A188508 (A167614 (n + 1)).toNat)

end

end A188502.P9831369223341069974

/-! ## A188502.P3829715119733071071

`A188508(A167614(n+1))%A188690(n+1)`
-/

namespace A188502.P3829715119733071071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188508 (A167614 (n + 1)).toNat) (A188690 (n + 1))

end

end A188502.P3829715119733071071

/-!
# A188503: Number of nX4 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188503, there is no canonical definition to state claims against.
-/

/-! ## A188503.P1915385870228859098

`A188508(A141214(n)+7)`
-/

namespace A188503.P1915385870228859098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A141214 n + 7).toNat

end

end A188503.P1915385870228859098

/-! ## A188503.P220178917035341591

`A188508(A052905(n)+9)`
-/

namespace A188503.P220178917035341591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A052905 n + 9).toNat

end

end A188503.P220178917035341591

/-! ## A188503.P6241902913868690922

`A188508(A055999(n)+10)`
-/

namespace A188503.P6241902913868690922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A055999 n + 10).toNat

end

end A188503.P6241902913868690922

/-! ## A188503.P1675303983047101372

`A188508(A167614(n+2)+1)`
-/

namespace A188503.P1675303983047101372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A167614 (n + 2) + 1).toNat

end

end A188503.P1675303983047101372

/-! ## A188503.P986429911489472205

`A188508(eq[5, A131818(n+1)])`
-/

namespace A188503.P986429911489472205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188503.P986429911489472205

/-!
# A188504: Number of nX5 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188504, there is no canonical definition to state claims against.
-/

/-! ## A188504.P15844711682816613919

`A188508(A167614(n+3)+2)`
-/

namespace A188504.P15844711682816613919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A167614 (n + 3) + 2).toNat

end

end A188504.P15844711682816613919

/-! ## A188504.P8658844852159699850

`A188508(A141214(n+1)+8)`
-/

namespace A188504.P8658844852159699850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A141214 (n + 1) + 8).toNat

end

end A188504.P8658844852159699850

/-! ## A188504.P923309491043205805

`A188508(eq[6, A131818(n+1)])`
-/

namespace A188504.P923309491043205805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188504.P923309491043205805

/-! ## A188504.P7818320082096806217

`A188508(A374005(n+1))`
-/

namespace A188504.P7818320082096806217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A374005 (n + 1)).toNat

end

end A188504.P7818320082096806217

/-! ## A188504.P10093197116527837597

`A188508(eq[4, A193592(n)])`
-/

namespace A188504.P10093197116527837597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188504.P10093197116527837597

/-!
# A188505: Number of nX6 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188505, there is no canonical definition to state claims against.
-/

/-! ## A188505.P15347912536093068609

`A188508(eq[7, A131818(n+1)])`
-/

namespace A188505.P15347912536093068609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188505.P15347912536093068609

/-! ## A188505.P11767585618716833283

`A188508(A374007(n+1))`
-/

namespace A188505.P11767585618716833283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A374007 (n + 1)).toNat

end

end A188505.P11767585618716833283

/-! ## A188505.P14109599072135243004

`A188508(A052905(n+3))`
-/

namespace A188505.P14109599072135243004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A052905 (n + 3)).toNat

end

end A188505.P14109599072135243004

/-! ## A188505.P1626444534216334130

`A188508(eq[3, A219347(n)])`
-/

namespace A188505.P1626444534216334130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188505.P1626444534216334130

/-! ## A188505.P13623549323657083608

`A188508(A046691(n+4)-1)`
-/

namespace A188505.P13623549323657083608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A046691 (n + 4) - 1).toNat

end

end A188505.P13623549323657083608

/-!
# A188506: Number of nX7 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188506, there is no canonical definition to state claims against.
-/

/-! ## A188506.P11380520455655023561

`A188508(eq[11, A066657(n)])`
-/

namespace A188506.P11380520455655023561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188506.P11380520455655023561

/-! ## A188506.P8451280520996687616

`A188508(eq[8, A131818(n+1)])`
-/

namespace A188506.P8451280520996687616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188506.P8451280520996687616

/-! ## A188506.P12060898097227126561

`A188508(A374008(n+1))`
-/

namespace A188506.P12060898097227126561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A374008 (n + 1)).toNat

end

end A188506.P12060898097227126561

/-! ## A188506.P4015819336623404883

`A188508(A055999(n+4))`
-/

namespace A188506.P4015819336623404883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A055999 (n + 4)).toNat

end

end A188506.P4015819336623404883

/-! ## A188506.P2714354973544685207

`A188508(eq[4, A219347(n)])`
-/

namespace A188506.P2714354973544685207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188506.P2714354973544685207

/-!
# A188507: Number of nX8 binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188507, there is no canonical definition to state claims against.
-/

/-! ## A188507.P10285947067587067354

`A188508(eq[9, A131818(n+1)])`
-/

namespace A188507.P10285947067587067354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188507.P10285947067587067354

/-! ## A188507.P13482917099689187866

`A188508(A374009(n+1))`
-/

namespace A188507.P13482917099689187866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (A374009 (n + 1)).toNat

end

end A188507.P13482917099689187866

/-! ## A188507.P9752342059417917775

`A188508(eq[5, A219347(n)])`
-/

namespace A188507.P9752342059417917775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188507.P9752342059417917775

/-! ## A188507.P772211263922754066

`A188508(eq[7, A193592(n)])`
-/

namespace A188507.P772211263922754066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188507.P772211263922754066

/-! ## A188507.P13169207838289199919

`A188508(eq[12, A185782(n+1)])`
-/

namespace A188507.P13169207838289199919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188507.P13169207838289199919

/-!
# A188508: T(n,k)=Number of nXk binary arrays without the pattern 0 1 0 diagonally, vertically or horizontally.

The programs for A188508, there is no canonical definition to state claims against.
-/

/-! ## A188508.P5785790497947419285

`A206883(n+1)+A016389(A022166(n))`
-/

namespace A188508.P5785790497947419285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) + A016389 (A022166 n).toNat

end

end A188508.P5785790497947419285

/-! ## A188508.P1665852434176806950

`A206883(n+1)+A016389(A027336(n))`
-/

namespace A188508.P1665852434176806950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) + A016389 (A027336 n).toNat

end

end A188508.P1665852434176806950

/-! ## A188508.P12427217411919960054

`A188695(n+1)+A185203(A131131(n))`
-/

namespace A188508.P12427217411919960054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (n + 1) + A185203 (A131131 n).toNat

end

end A188508.P12427217411919960054

/-! ## A188508.P6096667980965896998

`A188695(n+1)+A185203(A134066(n))`
-/

namespace A188508.P6096667980965896998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188695 (n + 1) + A185203 (A134066 n).toNat

end

end A188508.P6096667980965896998

/-! ## A188508.P17996418974849362275

`A206883(n+1)-A014707(A022171(n))`
-/

namespace A188508.P17996418974849362275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (n + 1) - A014707 (A022171 n).toNat

end

end A188508.P17996418974849362275

/-!
# A188509: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) is the maximal number of colors in a vertex coloring of the cube graph Q_n such that no subgraph Q_k is a rainbow.

The programs for A188509, there is no canonical definition to state claims against.
-/

/-! ## A188509.P6216817703214435451

`A078446(∑[2-char[∑[n]]])`
-/

namespace A188509.P6216817703214435451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188509.P6216817703214435451

/-! ## A188509.P8492053238348443770

`∏[char[∑[n]]+1]-A130330(n)`
-/

namespace A188509.P8492053238348443770
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130330 n

end

end A188509.P8492053238348443770

/-! ## A188509.P14578985010961494706

`A224195(n+1)-∏[char[∑[n]]+1]`
-/

namespace A188509.P14578985010961494706
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188509.P14578985010961494706

/-! ## A188509.P2560317601697712448

`A043569(n+1)+1-∏[char[∑[n]]+1]`
-/

namespace A188509.P2560317601697712448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) + 1 - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188509.P2560317601697712448

/-! ## A188509.P518725459307530947

`A000265(eq[and(n, 2*n), and(n, n-1)]+1)`
-/

namespace A188509.P518725459307530947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188509.P518725459307530947

/-!
# A188510: Expansion of x*(1 + x^2)/(1 + x^4) in powers of x.

The programs for A188510, the canonical program `A188510.P15031766466053517854` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188510 has offset 0).

The definition of A188510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3)/(1+x^4))` (program `A188510.P15031766466053517854`, by `A188510.P15031766466053517854.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188510.P15031766466053517854

`ogf((x+x^3)/(1+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188510

/-- `ogf((x+x^3)/(1+x^4))` -/
def P15031766466053517854.Spec : Prop :=
  ∀ n, P15031766466053517854.a n = A188510 n

theorem P15031766466053517854.correct : P15031766466053517854.Spec := by
  intro n
  simp only [A188510]

end A188510

/-!
# A188511: a(n) = floor(7*n/10).

The programs for A188511, the canonical program `A188511.P17758608116120613602` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188511 has offset 0).

The definition of A188511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n/10)` (program `A188511.P17758608116120613602`, by `A188511.P17758608116120613602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188511.P17758608116120613602

`floor(7*n/10)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188511

/-- `floor(7*n/10)` -/
def P17758608116120613602.Spec : Prop :=
  ∀ n, P17758608116120613602.a n = A188511 n

theorem P17758608116120613602.correct : P17758608116120613602.Spec := by
  intro n
  simp only [A188511]

end A188511

/-! ## A188511.P10105664068849501482

`ogf((x^2+x^3+x^5+x^6+x^8+x^9+x^10)/(1-x-x^10+x^11))`
-/

namespace A188511.P10105664068849501482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A188511.P10105664068849501482

namespace A188511

/-- `ogf((x^2+x^3+x^5+x^6+x^8+x^9+x^10)/(1-x-x^10+x^11))` -/
def P10105664068849501482.Spec : Prop :=
  ∀ n, P10105664068849501482.a n = A188511 n

end A188511

/-! ## A188511.P7062134916882931515

`round((7/acot(n)-5)/10)`
-/

namespace A188511.P7062134916882931515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 / SequenceMachineLib.acot (n : ℝ) - 5) / 10)

end

end A188511.P7062134916882931515

namespace A188511

/-- `round((7/acot(n)-5)/10)` -/
def P7062134916882931515.Spec : Prop :=
  ∀ n, P7062134916882931515.a n = A188511 n

end A188511

/-! ## A188511.P10396860408104277660

`n-∑[∑[n%10]%3]`
-/

namespace A188511.P10396860408104277660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188511.P10396860408104277660

namespace A188511

/-- `n-∑[∑[n%10]%3]` -/
def P10396860408104277660.Spec : Prop :=
  ∀ n, P10396860408104277660.a n = A188511 n

end A188511

/-! ## A188511.P15983923010906708544

`round(n/(acot(n)+10/7))`
-/

namespace A188511.P15983923010906708544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + ((10 : ℚ) / 7 : ℝ)))

end

end A188511.P15983923010906708544

namespace A188511

/-- `round(n/(acot(n)+10/7))` -/
def P15983923010906708544.Spec : Prop :=
  ∀ n, P15983923010906708544.a n = A188511 n

end A188511

/-! ## A188511.P1708393720369232230

`∑[char[∑[((n+1)%10+1)%3]]]`
-/

namespace A188511.P1708393720369232230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 10 + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188511.P1708393720369232230

namespace A188511

/-- `∑[char[∑[((n+1)%10+1)%3]]]` -/
def P1708393720369232230.Spec : Prop :=
  ∀ n, (P1708393720369232230.a n : ℤ) = A188511 n

end A188511

/-! ## A188511.P11927432665581455849

`n-∑[A144597(n+2)]`
-/

namespace A188511.P11927432665581455849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188511.P11927432665581455849

namespace A188511

/-- `n-∑[A144597(n+2)]` -/
def P11927432665581455849.Spec : Prop :=
  ∀ n, P11927432665581455849.a n = A188511 n

end A188511

/-! ## A188511.P13774964503234927609

`n-A327440(n+3)`
-/

namespace A188511.P13774964503234927609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A327440 (n + 3)

end

end A188511.P13774964503234927609

namespace A188511

/-- `n-A327440(n+3)` -/
def P13774964503234927609.Spec : Prop :=
  ∀ n, P13774964503234927609.a n = A188511 n

end A188511

/-! ## A188511.P17107884877292818347

`n-A004526(A057355(n+3))`
-/

namespace A188511.P17107884877292818347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A057355 (n + 3)).toNat

end

end A188511.P17107884877292818347

namespace A188511

/-- `n-A004526(A057355(n+3))` -/
def P17107884877292818347.Spec : Prop :=
  ∀ n, P17107884877292818347.a n = A188511 n

end A188511

/-! ## A188511.P3315714410090270638

`A008619(A057354(n)+n)-1`
-/

namespace A188511.P3315714410090270638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057354 n + (n : ℤ)).toNat - 1

end

end A188511.P3315714410090270638

namespace A188511

/-- `A008619(A057354(n)+n)-1` -/
def P3315714410090270638.Spec : Prop :=
  ∀ n, P3315714410090270638.a n = A188511 n

end A188511

/-! ## A188511.P4970427783288417472

`A004526(A047381(n+1))`
-/

namespace A188511.P4970427783288417472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047381 (n + 1)).toNat

end

end A188511.P4970427783288417472

namespace A188511

/-- `A004526(A047381(n+1))` -/
def P4970427783288417472.Spec : Prop :=
  ∀ n, P4970427783288417472.a n = A188511 n

end A188511

/-! ## A188511.P15978995058721419602

`A140106(A047301(n+2))`
-/

namespace A188511.P15978995058721419602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A047301 (n + 2)).toNat

end

end A188511.P15978995058721419602

namespace A188511

/-- `A140106(A047301(n+2))` -/
def P15978995058721419602.Spec : Prop :=
  ∀ n, P15978995058721419602.a n = A188511 n

end A188511

/-! ## A188511.P18282720050132663662

`A004526(A057354(n)+n)`
-/

namespace A188511.P18282720050132663662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057354 n + (n : ℤ)).toNat

end

end A188511.P18282720050132663662

namespace A188511

/-- `A004526(A057354(n)+n)` -/
def P18282720050132663662.Spec : Prop :=
  ∀ n, P18282720050132663662.a n = A188511 n

end A188511

/-! ## A188511.P7812748491388538074

`A004526(A032796(n+1)-1)`
-/

namespace A188511.P7812748491388538074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032796 (n + 1) - 1).toNat

end

end A188511.P7812748491388538074

namespace A188511

/-- `A004526(A032796(n+1)-1)` -/
def P7812748491388538074.Spec : Prop :=
  ∀ n, P7812748491388538074.a n = A188511 n

end A188511

/-! ## A188511.P5668983550857768679

`A004526(A047301(n+2)-2)`
-/

namespace A188511.P5668983550857768679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047301 (n + 2) - 2).toNat

end

end A188511.P5668983550857768679

namespace A188511

/-- `A004526(A047301(n+2)-2)` -/
def P5668983550857768679.Spec : Prop :=
  ∀ n, P5668983550857768679.a n = A188511 n

end A188511

/-! ## A188511.P13018144604016494040

`A004526(A173276(n)-1+n)`
-/

namespace A188511.P13018144604016494040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A173276 n - 1 + (n : ℤ)).toNat

end

end A188511.P13018144604016494040

namespace A188511

/-- `A004526(A173276(n)-1+n)` -/
def P13018144604016494040.Spec : Prop :=
  ∀ n, P13018144604016494040.a n = A188511 n

end A188511

/-! ## A188511.P12484871985012914929

`A004526(n-(1-A173276(n)))`
-/

namespace A188511.P12484871985012914929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - (1 - A173276 n)).toNat

end

end A188511.P12484871985012914929

namespace A188511

/-- `A004526(n-(1-A173276(n)))` -/
def P12484871985012914929.Spec : Prop :=
  ∀ n, P12484871985012914929.a n = A188511 n

end A188511

/-! ## A188511.P9190000349711127298

`A052928(A057354(n)+n)/2`
-/

namespace A188511.P9190000349711127298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A057354 n + (n : ℤ)).toNat : ℚ) / 2

end

end A188511.P9190000349711127298

namespace A188511

/-- `A052928(A057354(n)+n)/2` -/
def P9190000349711127298.Spec : Prop :=
  ∀ n, P9190000349711127298.a n = (A188511 n : ℚ)

end A188511

/-! ## A188511.P15962616305635070075

`A004526(comp[A001068(2*n)+n+3])`
-/

namespace A188511.P15962616305635070075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n) + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188511.P15962616305635070075

namespace A188511

/-- `A004526(comp[A001068(2*n)+n+3])` -/
def P15962616305635070075.Spec : Prop :=
  ∀ n, P15962616305635070075.a n = A188511 n

end A188511

/-! ## A188511.P18162780366562236245

`A004526(A004526(A090223(n))+n)`
-/

namespace A188511.P18162780366562236245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A090223 n).toNat + (n : ℤ)).toNat

end

end A188511.P18162780366562236245

namespace A188511

/-- `A004526(A004526(A090223(n))+n)` -/
def P18162780366562236245.Spec : Prop :=
  ∀ n, P18162780366562236245.a n = A188511 n

end A188511

/-!
# A188512: Lengths of successive runs of identical terms in A188511.

The programs for A188512, the canonical program `A188512.P6879963095290517568` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188512 has offset 1).

The definition of A188512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188512.P6879963095290517568

`ogf((2+x+2x^2+x^3+2x^4+x^5+x^6)/(1-x^7))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188512

/-- `ogf((2+x+2x^2+x^3+2x^4+x^5+x^6)/(1-x^7))` -/
def P6879963095290517568.Spec : Prop :=
  ∀ n, P6879963095290517568.a n = A188512 (n + 1)

theorem P6879963095290517568.correct : P6879963095290517568.Spec := by
  intro n
  simp only [A188512, Nat.add_sub_cancel]

end A188512

/-!
# A188513: Riordan matrix (1/(x+sqrt(1-4x)),(1-sqrt(1-4x))/(2(x+sqrt(1-4x)))).

The programs for A188513, there is no canonical definition to state claims against.
-/

/-! ## A188513.P2692954917017718851

`A123068(2*A259691(n))`
-/

namespace A188513.P2692954917017718851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (2 * A259691 n).toNat

end

end A188513.P2692954917017718851

/-! ## A188513.P3416694485408404366

`A236674(2*A259691(n))`
-/

namespace A188513.P3416694485408404366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (2 * A259691 n).toNat

end

end A188513.P3416694485408404366

/-! ## A188513.P17483763179931105869

`A123068(2*A056857(n+1))`
-/

namespace A188513.P17483763179931105869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (2 * A056857 (n + 1)).toNat

end

end A188513.P17483763179931105869

/-! ## A188513.P12342955406709431891

`A236674(2*A056857(n+1))`
-/

namespace A188513.P12342955406709431891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (2 * A056857 (n + 1)).toNat

end

end A188513.P12342955406709431891

/-! ## A188513.P5050843025103019628

`A123068(A259691(n)+A259691(n))`
-/

namespace A188513.P5050843025103019628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A259691 n + A259691 n).toNat

end

end A188513.P5050843025103019628

/-!
# A188515: Number of n X n binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188515, there is no canonical definition to state claims against.
-/

/-! ## A188515.P5981164441351330461

`A188523(∑[4*n]+1)`
-/

namespace A188515.P5981164441351330461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188515.P5981164441351330461

/-! ## A188515.P8003604962284021190

`record[gcd(A114327(n), A188523(n+1))]`
-/

namespace A188515.P8003604962284021190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188515.P8003604962284021190

/-! ## A188515.P17376394759622204583

`record[root(A188523(n+1), A059897(n+1))]`
-/

namespace A188515.P17376394759622204583
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188523 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188515.P17376394759622204583

/-! ## A188515.P1229995560184700360

`A188523(A001844(n))+A011736(n)`
-/

namespace A188515.P1229995560184700360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A001844 n).toNat + A011736 n

end

end A188515.P1229995560184700360

/-! ## A188515.P11477098387770898586

`A007318(∑[n])*A188523(A001844(n))`
-/

namespace A188515.P11477098387770898586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A188523 (A001844 n).toNat

end

end A188515.P11477098387770898586

/-!
# A188516: Number of nX2 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188516, the canonical program `A188516.P6023579462451789972` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188516 has offset 1).

The definition of A188516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188516.P8479975357860270706

`ceil(ϕ*sqrt(a(n-1)))²` with `a(0)=4`
-/

namespace A188516.P8479975357860270706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio * Real.sqrt (a (n - 1) : ℝ)⌉ ^ 2

end

end A188516.P8479975357860270706

namespace A188516

/-- `ceil(ϕ*sqrt(a(n-1)))²` -/
def P8479975357860270706.Spec : Prop :=
  ∀ n, P8479975357860270706.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P12096749111246460202

`∑[round(ϕ*a(n-1))]²` with `a(0)=2, a(1)=2`
-/

namespace A188516.P12096749111246460202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A188516.P12096749111246460202

namespace A188516

/-- `∑[round(ϕ*a(n-1))]²` -/
def P12096749111246460202.Spec : Prop :=
  ∀ n, P12096749111246460202.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P18235831764667923421

`(∑[floor(ϕ*a(n-1))]-n)²` with `a(0)=2`
-/

namespace A188516.P18235831764667923421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ 2

end

end A188516.P18235831764667923421

namespace A188516

/-- `(∑[floor(ϕ*a(n-1))]-n)²` -/
def P18235831764667923421.Spec : Prop :=
  ∀ n, P18235831764667923421.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P14200658613661704997

`record[ceil(ϕ*a(n-1))]²` with `a(0)=2, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A188516.P14200658613661704997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0, 1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A188516.P14200658613661704997

namespace A188516

/-- `record[ceil(ϕ*a(n-1))]²` -/
def P14200658613661704997.Spec : Prop :=
  ∀ n, P14200658613661704997.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P6772924116452110779

`(∑[floor(ϕ*a(n-1))]-n)^2` with `a(0)=2`
-/

namespace A188516.P6772924116452110779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) ^ 2

end

end A188516.P6772924116452110779

namespace A188516

/-- `(∑[floor(ϕ*a(n-1))]-n)^2` -/
def P6772924116452110779.Spec : Prop :=
  ∀ n, P6772924116452110779.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P12614753411864548944

`record[floor(ϕ*a(n-1))+1]²` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A188516.P12614753411864548944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A188516.P12614753411864548944

namespace A188516

/-- `record[floor(ϕ*a(n-1))+1]²` -/
def P12614753411864548944.Spec : Prop :=
  ∀ n, P12614753411864548944.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P6023579462451789972

`∑[a(n-1)+a(n-2)]²` with `a(0)=2, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188516

/-- `∑[a(n-1)+a(n-2)]²` -/
def P6023579462451789972.Spec : Prop :=
  ∀ n, (P6023579462451789972.a n : ℤ) = A188516 (n + 1)

theorem P6023579462451789972.correct : P6023579462451789972.Spec := by
  intro n
  simp only [A188516, Nat.add_sub_cancel]

end A188516

/-! ## A188516.P15350438668880980036

`Δ[a(n-1)+a(n-2)+n+2]²` with `a(0)=0, a(1)=2`
-/

namespace A188516.P15350438668880980036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A188516.P15350438668880980036

namespace A188516

/-- `Δ[a(n-1)+a(n-2)+n+2]²` -/
def P15350438668880980036.Spec : Prop :=
  ∀ n, P15350438668880980036.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P3904632129865286839

`(1-A020701(n))²`
-/

namespace A188516.P3904632129865286839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A020701 n) ^ 2

end

end A188516.P3904632129865286839

namespace A188516

/-- `(1-A020701(n))²` -/
def P3904632129865286839.Spec : Prop :=
  ∀ n, P3904632129865286839.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P1505680472928889135

`(2-A020706(n))²`
-/

namespace A188516.P1505680472928889135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A020706 n) ^ 2

end

end A188516.P1505680472928889135

namespace A188516

/-- `(2-A020706(n))²` -/
def P1505680472928889135.Spec : Prop :=
  ∀ n, P1505680472928889135.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P6006746324731360937

`A000071(n+4)²`
-/

namespace A188516.P6006746324731360937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4) ^ 2

end

end A188516.P6006746324731360937

namespace A188516

/-- `A000071(n+4)²` -/
def P6006746324731360937.Spec : Prop :=
  ∀ n, P6006746324731360937.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P15634797589773081989

`(3-A048584(n))²`
-/

namespace A188516.P15634797589773081989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A048584 n) ^ 2

end

end A188516.P15634797589773081989

namespace A188516

/-- `(3-A048584(n))²` -/
def P15634797589773081989.Spec : Prop :=
  ∀ n, P15634797589773081989.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P7219788141031279185

`Δ[A202462(n+1)]`
-/

namespace A188516.P7219788141031279185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188516.P7219788141031279185

namespace A188516

/-- `Δ[A202462(n+1)]` -/
def P7219788141031279185.Spec : Prop :=
  ∀ n, P7219788141031279185.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P11940942554482319753

`Δ[Δ[A014162(n)]]²`
-/

namespace A188516.P11940942554482319753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188516.P11940942554482319753

namespace A188516

/-- `Δ[Δ[A014162(n)]]²` -/
def P11940942554482319753.Spec : Prop :=
  ∀ n, P11940942554482319753.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P781687511043019812

`A267661(n+2)/2`
-/

namespace A188516.P781687511043019812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267661 (n + 2) : ℚ) / 2

end

end A188516.P781687511043019812

namespace A188516

/-- `A267661(n+2)/2` -/
def P781687511043019812.Spec : Prop :=
  ∀ n, P781687511043019812.a n = (A188516 (n + 1) : ℚ)

end A188516

/-! ## A188516.P15656814196201065616

`(Δ[A001891(n)]+1)²`
-/

namespace A188516.P15656814196201065616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A188516.P15656814196201065616

namespace A188516

/-- `(Δ[A001891(n)]+1)²` -/
def P15656814196201065616.Spec : Prop :=
  ∀ n, P15656814196201065616.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P11663701742027046442

`Δ[A001924(n+1)]²`
-/

namespace A188516.P11663701742027046442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188516.P11663701742027046442

namespace A188516

/-- `Δ[A001924(n+1)]²` -/
def P11663701742027046442.Spec : Prop :=
  ∀ n, P11663701742027046442.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P10833008597031908600

`Δ[A000126(n+2)]²`
-/

namespace A188516.P10833008597031908600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A188516.P10833008597031908600

namespace A188516

/-- `Δ[A000126(n+2)]²` -/
def P10833008597031908600.Spec : Prop :=
  ∀ n, P10833008597031908600.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P11178383444019967931

`(1-Δ[A020712(n)])²`
-/

namespace A188516.P11178383444019967931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A188516.P11178383444019967931

namespace A188516

/-- `(1-Δ[A020712(n)])²` -/
def P11178383444019967931.Spec : Prop :=
  ∀ n, P11178383444019967931.a n = A188516 (n + 1)

end A188516

/-! ## A188516.P15961398173745154755

`(1-Δ[A020717(n)])²`
-/

namespace A188516.P15961398173745154755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) ^ 2

end

end A188516.P15961398173745154755

namespace A188516

/-- `(1-Δ[A020717(n)])²` -/
def P15961398173745154755.Spec : Prop :=
  ∀ n, P15961398173745154755.a n = A188516 (n + 1)

end A188516

/-!
# A188517: Number of nX3 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188517, there is no canonical definition to state claims against.
-/

/-! ## A188517.P6620005776845322411

`A188523(∑[n+2]+4)`
-/

namespace A188517.P6620005776845322411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188517.P6620005776845322411

/-! ## A188517.P3540545133535996447

`A188523(A167614(n+1))+A178798(n)`
-/

namespace A188517.P3540545133535996447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167614 (n + 1)).toNat + A178798 n

end

end A188517.P3540545133535996447

/-! ## A188517.P1495804126921586365

`A188523(A167614(n+1))+A185284(n)`
-/

namespace A188517.P1495804126921586365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167614 (n + 1)).toNat + A185284 n

end

end A188517.P1495804126921586365

/-! ## A188517.P3596128671720984088

`A188523(A167614(n+1))-A185246(n)`
-/

namespace A188517.P3596128671720984088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167614 (n + 1)).toNat - A185246 n

end

end A188517.P3596128671720984088

/-! ## A188517.P12142684504390832664

`A015600(n)*A188523(A167614(n+1))`
-/

namespace A188517.P12142684504390832664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A188523 (A167614 (n + 1)).toNat

end

end A188517.P12142684504390832664

/-!
# A188518: Number of nX4 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188518, there is no canonical definition to state claims against.
-/

/-! ## A188518.P13234210739498795160

`A188523(A374004(n+1))`
-/

namespace A188518.P13234210739498795160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A374004 (n + 1)).toNat

end

end A188518.P13234210739498795160

/-! ## A188518.P11487731809005106827

`A188523(A141214(n)+7)`
-/

namespace A188518.P11487731809005106827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A141214 n + 7).toNat

end

end A188518.P11487731809005106827

/-! ## A188518.P6831465982057062074

`A188523(A052905(n)+9)`
-/

namespace A188518.P6831465982057062074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A052905 n + 9).toNat

end

end A188518.P6831465982057062074

/-! ## A188518.P1822541420041137939

`A188523(A055999(n)+10)`
-/

namespace A188518.P1822541420041137939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A055999 n + 10).toNat

end

end A188518.P1822541420041137939

/-! ## A188518.P8535101557192042099

`A188523(A167614(n+2)+1)`
-/

namespace A188518.P8535101557192042099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167614 (n + 2) + 1).toNat

end

end A188518.P8535101557192042099

/-!
# A188519: Number of nX5 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188519, there is no canonical definition to state claims against.
-/

/-! ## A188519.P11116850465912839101

`A188523(A374005(n+1))`
-/

namespace A188519.P11116850465912839101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A374005 (n + 1)).toNat

end

end A188519.P11116850465912839101

/-! ## A188519.P9688982201358892751

`A188523(A167499(n+3))`
-/

namespace A188519.P9688982201358892751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167499 (n + 3)).toNat

end

end A188519.P9688982201358892751

/-! ## A188519.P13477385294106355607

`A188523(A027379(n+2)+8)`
-/

namespace A188519.P13477385294106355607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A027379 (n + 2) + 8).toNat

end

end A188519.P13477385294106355607

/-! ## A188519.P4659151879549711780

`A188523(Δ[A264443(n)])`
-/

namespace A188519.P4659151879549711780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (f1 (n + 1) - f1 n).toNat

end

end A188519.P4659151879549711780

/-! ## A188519.P16604650969315597489

`A188523(A046691(n+3))`
-/

namespace A188519.P16604650969315597489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A046691 (n + 3)).toNat

end

end A188519.P16604650969315597489

/-!
# A188520: Number of nX6 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188520, there is no canonical definition to state claims against.
-/

/-! ## A188520.P9668063537554704083

`A188523(A374007(n+1))`
-/

namespace A188520.P9668063537554704083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A374007 (n + 1)).toNat

end

end A188520.P9668063537554704083

/-! ## A188520.P6663579626170942764

`A188523(A052905(n+3))`
-/

namespace A188520.P6663579626170942764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A052905 (n + 3)).toNat

end

end A188520.P6663579626170942764

/-! ## A188520.P7840641614633948268

`A188523(eq[3, A219347(n)])`
-/

namespace A188520.P7840641614633948268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188520.P7840641614633948268

/-! ## A188520.P416291877308136514

`A188523(eq[5, A193592(n)])`
-/

namespace A188520.P416291877308136514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188520.P416291877308136514

/-! ## A188520.P17702156033573938281

`A188523(eq[16, A057728(n+1)])`
-/

namespace A188520.P17702156033573938281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188520.P17702156033573938281

/-!
# A188521: Number of nX7 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188521, there is no canonical definition to state claims against.
-/

/-! ## A188521.P5860027307523117996

`A188523(A374008(n+1))`
-/

namespace A188521.P5860027307523117996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A374008 (n + 1)).toNat

end

end A188521.P5860027307523117996

/-! ## A188521.P10180585950628130406

`A188523(A167499(n+5)+2)`
-/

namespace A188521.P10180585950628130406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167499 (n + 5) + 2).toNat

end

end A188521.P10180585950628130406

/-! ## A188521.P5176937972555903731

`A188523(A167614(n+5)+4)`
-/

namespace A188521.P5176937972555903731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A167614 (n + 5) + 4).toNat

end

end A188521.P5176937972555903731

/-! ## A188521.P17879018749103787177

`A188523(eq[8, A131818(n+1)])`
-/

namespace A188521.P17879018749103787177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188521.P17879018749103787177

/-! ## A188521.P6123494799775221787

`A188523(A134227(n+5))`
-/

namespace A188521.P6123494799775221787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A134227 (n + 5)).toNat

end

end A188521.P6123494799775221787

/-!
# A188522: Number of nX8 binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188522, there is no canonical definition to state claims against.
-/

/-! ## A188522.P13291300961669419016

`A188523(A374009(n+1))`
-/

namespace A188522.P13291300961669419016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (A374009 (n + 1)).toNat

end

end A188522.P13291300961669419016

/-! ## A188522.P11951614400997036181

`A188523(eq[13, A066657(n)])`
-/

namespace A188522.P11951614400997036181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188522.P11951614400997036181

/-! ## A188522.P16709743508221629642

`A188523(eq[9, A131818(n+1)])`
-/

namespace A188522.P16709743508221629642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188522.P16709743508221629642

/-! ## A188522.P5015032247358115374

`A188523(eq[5, A219347(n)])`
-/

namespace A188522.P5015032247358115374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188522.P5015032247358115374

/-! ## A188522.P13166025273908046893

`A188523(eq[7, A193592(n)])`
-/

namespace A188522.P13166025273908046893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188522.P13166025273908046893

/-!
# A188523: T(n,k) = Number of n X k binary arrays without the pattern 1 1 0 diagonally, vertically or horizontally.

The programs for A188523, there is no canonical definition to state claims against.
-/

/-! ## A188523.P9150754557878111792

`A206785(n+1)-A173636(A174545(n))`
-/

namespace A188523.P9150754557878111792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) - A173636 (A174545 n).toNat

end

end A188523.P9150754557878111792

/-! ## A188523.P9178462123959962303

`A206785(n+1)-A316717(A316576(n+1))²`
-/

namespace A188523.P9178462123959962303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) - A316717 (A316576 (n + 1)).toNat ^ 2

end

end A188523.P9178462123959962303

/-! ## A188523.P905076499855728326

`A206785(n+1)+A016389(A022166(n))`
-/

namespace A188523.P905076499855728326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) + A016389 (A022166 n).toNat

end

end A188523.P905076499855728326

/-! ## A188523.P147245727579658647

`A206785(n+1)+A016389(A176561(n))`
-/

namespace A188523.P147245727579658647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206785 (n + 1) + A016389 (A176561 n).toNat

end

end A188523.P147245727579658647

/-! ## A188523.P5141206000266995444

`A268688(A135302(n))+A188851(n+1)`
-/

namespace A188523.P5141206000266995444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268688 (A135302 n).toNat + A188851 (n + 1)

end

end A188523.P5141206000266995444

/-!
# A188524: In base-2 lunar arithmetic, out of all odd numbers of length n, it appears that 111..1 (with n ones) has the most lunar divisors; the sequence gives the number of lunar divisors of the runner-up.

The programs for A188524, there is no canonical definition to state claims against.
-/

/-! ## A188524.P18361353623316784707

`A014963(A336662(n+3))*A188288(n+3)`
-/

namespace A188524.P18361353623316784707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A336662 (n + 3)).toNat * A188288 (n + 3)

end

end A188524.P18361353623316784707

/-! ## A188524.P7149996704301941472

`A188288(n+3)+A091227(ceil(3^(n-1)))`
-/

namespace A188524.P7149996704301941472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188288 (n + 3) + A091227 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A188524.P7149996704301941472

/-! ## A188524.P1192354984905695693

`A032568(A357745(3*n+4))+A032568(n+1)`
-/

namespace A188524.P1192354984905695693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A357745 (3 * n + 4)).toNat + A032568 (n + 1)

end

end A188524.P1192354984905695693

/-! ## A188524.P13906346125655190313

`A006456(n)+A000119(A104743(n))`
-/

namespace A188524.P13906346125655190313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n + A000119 (A104743 n).toNat

end

end A188524.P13906346125655190313

/-! ## A188524.P7879406702356184924

`A001917(n+2)+A000194(A176605(n))`
-/

namespace A188524.P7879406702356184924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2) + A000194 (A176605 n).toNat

end

end A188524.P7879406702356184924

/-!
# A188525: a(n) = rad(rad(n)^2+1), where rad = A007947.

The programs for A188525, the canonical program `A188525.P10073465298142193575` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188525 has offset 1).

The definition of A188525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(A007947(n+1)²+1)` (program `A188525.P10073465298142193575`, by `A188525.P10073465298142193575.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188525.P16091832531877469937

`A007947(A078615(n+1)+1)`
-/

namespace A188525.P16091832531877469937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078615 (n + 1) + 1).toNat

end

end A188525.P16091832531877469937

namespace A188525

/-- `A007947(A078615(n+1)+1)` -/
def P16091832531877469937.Spec : Prop :=
  ∀ n, P16091832531877469937.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P10073465298142193575

`A007947(A007947(n+1)²+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188525

/-- `A007947(A007947(n+1)²+1)` -/
def P10073465298142193575.Spec : Prop :=
  ∀ n, P10073465298142193575.a n = A188525 (n + 1)

theorem P10073465298142193575.correct : P10073465298142193575.Spec := by
  intro n
  simp only [A188525, Nat.add_sub_cancel]

end A188525

/-! ## A188525.P15887347957247256555

`A078322(∏{p}[n+1, #])`
-/

namespace A188525.P15887347957247256555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A188525.P15887347957247256555

namespace A188525

/-- `A078322(∏{p}[n+1, #])` -/
def P15887347957247256555.Spec : Prop :=
  ∀ n, P15887347957247256555.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P2743865684877774996

`A078322(A007947(n+1))`
-/

namespace A188525.P2743865684877774996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (A007947 (n + 1)).toNat

end

end A188525.P2743865684877774996

namespace A188525

/-- `A078322(A007947(n+1))` -/
def P2743865684877774996.Spec : Prop :=
  ∀ n, P2743865684877774996.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P16462037170105431545

`A078322(sqrt(A078615(n+1)))`
-/

namespace A188525.P16462037170105431545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A188525.P16462037170105431545

namespace A188525

/-- `A078322(sqrt(A078615(n+1)))` -/
def P16462037170105431545.Spec : Prop :=
  ∀ n, P16462037170105431545.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P16490625827625030447

`A078322(n+1-A066503(n+1))`
-/

namespace A188525.P16490625827625030447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 ((n + 1 : ℤ) - A066503 (n + 1)).toNat

end

end A188525.P16490625827625030447

namespace A188525

/-- `A078322(n+1-A066503(n+1))` -/
def P16490625827625030447.Spec : Prop :=
  ∀ n, P16490625827625030447.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P15977794129928861867

`A078322(A073353(n+1)-(n+1))`
-/

namespace A188525.P15977794129928861867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (A073353 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188525.P15977794129928861867

namespace A188525

/-- `A078322(A073353(n+1)-(n+1))` -/
def P15977794129928861867.Spec : Prop :=
  ∀ n, P15977794129928861867.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P276409250481324013

`A078322((n+1)/A003557(n+1))`
-/

namespace A188525.P276409250481324013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A188525.P276409250481324013

namespace A188525

/-- `A078322((n+1)/A003557(n+1))` -/
def P276409250481324013.Spec : Prop :=
  ∀ n, P276409250481324013.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P7087981646300902830

`A078322(A064549(n+1)/(n+1))`
-/

namespace A188525.P7087981646300902830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A188525.P7087981646300902830

namespace A188525

/-- `A078322(A064549(n+1)/(n+1))` -/
def P7087981646300902830.Spec : Prop :=
  ∀ n, P7087981646300902830.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P4594864105678137122

`∏{p}[∏{p}[n+1, #²]+1, #]`
-/

namespace A188525.P4594864105678137122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A188525.P4594864105678137122

namespace A188525

/-- `∏{p}[∏{p}[n+1, #²]+1, #]` -/
def P4594864105678137122.Spec : Prop :=
  ∀ n, (P4594864105678137122.a n : ℤ) = A188525 (n + 1)

end A188525

/-! ## A188525.P3572243162305777337

`∏{p}[root(∏{p}[n+1, #], 1/2)+1, #]`
-/

namespace A188525.P3572243162305777337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A188525.P3572243162305777337

namespace A188525

/-- `∏{p}[root(∏{p}[n+1, #], 1/2)+1, #]` -/
def P3572243162305777337.Spec : Prop :=
  ∀ n, (P3572243162305777337.a n : ℤ) = A188525 (n + 1)

end A188525

/-! ## A188525.P6466184958916592018

`∏{p}[A002522(∏{p}[n+1, #]), #]`
-/

namespace A188525.P6466184958916592018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A188525.P6466184958916592018

namespace A188525

/-- `∏{p}[A002522(∏{p}[n+1, #]), #]` -/
def P6466184958916592018.Spec : Prop :=
  ∀ n, (P6466184958916592018.a n : ℤ) = A188525 (n + 1)

end A188525

/-! ## A188525.P5774928229743345262

`∏{p}[A078310(∏{p}[n+1, #]), #]`
-/

namespace A188525.P5774928229743345262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A188525.P5774928229743345262

namespace A188525

/-- `∏{p}[A078310(∏{p}[n+1, #]), #]` -/
def P5774928229743345262.Spec : Prop :=
  ∀ n, (P5774928229743345262.a n : ℤ) = A188525 (n + 1)

end A188525

/-! ## A188525.P9217776779297581866

`A007947(A078310(A007947((n+1)²)))`
-/

namespace A188525.P9217776779297581866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078310 (A007947 ((n + 1) ^ 2)).toNat).toNat

end

end A188525.P9217776779297581866

namespace A188525

/-- `A007947(A078310(A007947((n+1)²)))` -/
def P9217776779297581866.Spec : Prop :=
  ∀ n, P9217776779297581866.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P11509284756284640620

`A007947(A078310(A073353(n+1)-(n+1)))`
-/

namespace A188525.P11509284756284640620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078310 (A073353 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A188525.P11509284756284640620

namespace A188525

/-- `A007947(A078310(A073353(n+1)-(n+1)))` -/
def P11509284756284640620.Spec : Prop :=
  ∀ n, P11509284756284640620.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P5342286056509739644

`A007947(A097378(A007947((n+1)*(n+1))))`
-/

namespace A188525.P5342286056509739644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A097378 (A007947 ((n + 1) * (n + 1))).toNat).toNat

end

end A188525.P5342286056509739644

namespace A188525

/-- `A007947(A097378(A007947((n+1)*(n+1))))` -/
def P5342286056509739644.Spec : Prop :=
  ∀ n, P5342286056509739644.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P5518849088473572444

`A007947(A078310(A064549(n+1)/(n+1)))`
-/

namespace A188525.P5518849088473572444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078310 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A188525.P5518849088473572444

namespace A188525

/-- `A007947(A078310(A064549(n+1)/(n+1)))` -/
def P5518849088473572444.Spec : Prop :=
  ∀ n, P5518849088473572444.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P2751861441866738639

`A007947(A007947(A097378(A007947(A007948(n+1)))))`
-/

namespace A188525.P2751861441866738639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A097378 (A007947 (A007948 (n + 1)).toNat).toNat).toNat).toNat

end

end A188525.P2751861441866738639

namespace A188525

/-- `A007947(A007947(A097378(A007947(A007948(n+1)))))` -/
def P2751861441866738639.Spec : Prop :=
  ∀ n, P2751861441866738639.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P5594468705757826325

`A007947(A007947(A078310(A007947(A064549(n+1)))))`
-/

namespace A188525.P5594468705757826325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A078310 (A007947 (A064549 (n + 1)).toNat).toNat).toNat).toNat

end

end A188525.P5594468705757826325

namespace A188525

/-- `A007947(A007947(A078310(A007947(A064549(n+1)))))` -/
def P5594468705757826325.Spec : Prop :=
  ∀ n, P5594468705757826325.a n = A188525 (n + 1)

end A188525

/-! ## A188525.P7364461268243965954

`A007947(A007947(A078310(A007947(A355261(n+1)))))`
-/

namespace A188525.P7364461268243965954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A078310 (A007947 (A355261 (n + 1)).toNat).toNat).toNat).toNat

end

end A188525.P7364461268243965954

namespace A188525

/-- `A007947(A007947(A078310(A007947(A355261(n+1)))))` -/
def P7364461268243965954.Spec : Prop :=
  ∀ n, P7364461268243965954.a n = A188525 (n + 1)

end A188525

/-!
# A188526: a(n) = 3^(2*n + 3) + 2^n.

The programs for A188526, the canonical program `A188526.P16171887654232377353` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188526 has offset 0).

The definition of A188526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(2*n+3)+2^n` (program `A188526.P16171887654232377353`, by `A188526.P16171887654232377353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188526.P11230928720163468224

`ogf((28-63x)/(1-11x+18x^2))`
-/

namespace A188526.P11230928720163468224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, -63] [1, -11, 18] n

end

end A188526.P11230928720163468224

namespace A188526

/-- `ogf((28-63x)/(1-11x+18x^2))` -/
def P11230928720163468224.Spec : Prop :=
  ∀ n, P11230928720163468224.a n = A188526 n

end A188526

/-! ## A188526.P16171887654232377353

`3^(2*n+3)+2^n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188526

/-- `3^(2*n+3)+2^n` -/
def P16171887654232377353.Spec : Prop :=
  ∀ n, (P16171887654232377353.a n : ℤ) = A188526 n

theorem P16171887654232377353.correct : P16171887654232377353.Spec := by
  intro n
  simp only [A188526]

end A188526

/-! ## A188526.P13488075786853793625

`7*A188527(n)`
-/

namespace A188526.P13488075786853793625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A188527 n

end

end A188526.P13488075786853793625

namespace A188526

/-- `7*A188527(n)` -/
def P13488075786853793625.Spec : Prop :=
  ∀ n, P13488075786853793625.a n = A188526 n

end A188526

/-! ## A188526.P3401233404927602496

`Δ[A000079(n)+∑[A013708(n)]]`
-/

namespace A188526.P3401233404927602496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P3401233404927602496

namespace A188526

/-- `Δ[A000079(n)+∑[A013708(n)]]` -/
def P3401233404927602496.Spec : Prop :=
  ∀ n, P3401233404927602496.a n = A188526 n

end A188526

/-! ## A188526.P5401582877715261538

`Δ[A006342(2*(n+1))+A000051(n)]`
-/

namespace A188526.P5401582877715261538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * (n + 1)) + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P5401582877715261538

namespace A188526

/-- `Δ[A006342(2*(n+1))+A000051(n)]` -/
def P5401582877715261538.Spec : Prop :=
  ∀ n, P5401582877715261538.a n = A188526 n

end A188526

/-! ## A188526.P12075713761328791809

`Δ[A006342(2*(n+1))+A000079(n)]`
-/

namespace A188526.P12075713761328791809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * (n + 1)) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P12075713761328791809

namespace A188526

/-- `Δ[A006342(2*(n+1))+A000079(n)]` -/
def P12075713761328791809.Spec : Prop :=
  ∀ n, P12075713761328791809.a n = A188526 n

end A188526

/-! ## A188526.P14372092893318425625

`Δ[A033113(2*(n+1))+A000079(n)]`
-/

namespace A188526.P14372092893318425625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (2 * (n + 1)) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P14372092893318425625

namespace A188526

/-- `Δ[A033113(2*(n+1))+A000079(n)]` -/
def P14372092893318425625.Spec : Prop :=
  ∀ n, P14372092893318425625.a n = A188526 n

end A188526

/-! ## A188526.P6390340052937921715

`Δ[A033113(2*(n+1))+A000225(n)]`
-/

namespace A188526.P6390340052937921715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (2 * (n + 1)) + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P6390340052937921715

namespace A188526

/-- `Δ[A033113(2*(n+1))+A000225(n)]` -/
def P6390340052937921715.Spec : Prop :=
  ∀ n, P6390340052937921715.a n = A188526 n

end A188526

/-! ## A188526.P15531159835636792518

`Δ[A033113(2*(n+1))+A000918(n)]`
-/

namespace A188526.P15531159835636792518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (2 * (n + 1)) + A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188526.P15531159835636792518

namespace A188526

/-- `Δ[A033113(2*(n+1))+A000918(n)]` -/
def P15531159835636792518.Spec : Prop :=
  ∀ n, P15531159835636792518.a n = A188526 n

end A188526

/-!
# A188527: a(n) = A188526(n)/7.

The programs for A188527, the canonical program `A188527.P14527143827338873329` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188527 has offset 0).

The definition of A188527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A188526(n)/7` (program `A188527.P14929518749661543554`, by `A188527.P14929518749661543554.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188527.P10613166687344267733

`ogf((4-9x)/(1-11x+18x^2))`
-/

namespace A188527.P10613166687344267733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -11, 18] n

end

end A188527.P10613166687344267733

namespace A188527

/-- `ogf((4-9x)/(1-11x+18x^2))` -/
def P10613166687344267733.Spec : Prop :=
  ∀ n, P10613166687344267733.a n = A188527 n

end A188527

/-! ## A188527.P14527143827338873329

`11*a(n-1)-18*a(n-2)` with `a(0)=4, a(1)=35`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188527

/-- `11*a(n-1)-18*a(n-2)` -/
def P14527143827338873329.Spec : Prop :=
  ∀ n, P14527143827338873329.a n = A188527 n

theorem P14527143827338873329.correct : P14527143827338873329.Spec := by
  intro n
  simp only [A188527]

end A188527

/-! ## A188527.P9616771511741727118

`(3^(2*n+3)+2^n)/7`
-/

namespace A188527.P9616771511741727118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (2 * n + 3) + 2 ^ n : ℚ) / 7

end

end A188527.P9616771511741727118

namespace A188527

/-- `(3^(2*n+3)+2^n)/7` -/
def P9616771511741727118.Spec : Prop :=
  ∀ n, P9616771511741727118.a n = (A188527 n : ℚ)

theorem P9616771511741727118.correct : P9616771511741727118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A188527, Nat.add_sub_cancel, A188527.P9616771511741727118.a, A188527.P14527143827338873329.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A188527, Nat.add_sub_cancel, A188527.P9616771511741727118.a, A188527.P14527143827338873329.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A188527

/-! ## A188527.P14929518749661543554

`A188526(n)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188527.P14929518749661543554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188526 n : ℚ) / 7

end

end A188527.P14929518749661543554

namespace A188527

/-- `A188526(n)/7` -/
def P14929518749661543554.Spec : Prop :=
  ∀ n, P14929518749661543554.a n = (A188527 n : ℚ)

theorem P14929518749661543554.correct : P14929518749661543554.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A188527, Nat.add_sub_cancel, A188527.P14929518749661543554.a, A188527.P14527143827338873329.a, A188526, A188526.P16171887654232377353.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A188527, Nat.add_sub_cancel, A188527.P14929518749661543554.a, A188527.P14527143827338873329.a, A188526, A188526.P16171887654232377353.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A188527

/-! ## A188527.P16441133810000311770

`9*a(n-1)-2^(n-1)` with `a(0)=4`
-/

namespace A188527.P16441133810000311770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  9 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A188527.P16441133810000311770

namespace A188527

/-- `9*a(n-1)-2^(n-1)` -/
def P16441133810000311770.Spec : Prop :=
  ∀ n, P16441133810000311770.a n = (A188527 n : ℚ)

end A188527

/-! ## A188527.P15114614387600486986

`a(n-1)/(1/3)²-2^(n-1)` with `a(0)=4`
-/

namespace A188527.P15114614387600486986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A188527.P15114614387600486986

namespace A188527

/-- `a(n-1)/(1/3)²-2^(n-1)` -/
def P15114614387600486986.Spec : Prop :=
  ∀ n, P15114614387600486986.a n = (A188527 n : ℚ)

end A188527

/-! ## A188527.P6770519506745392656

`a(n-1)+a(n-1)+3^(n+1+n)` with `a(0)=4`
-/

namespace A188527.P6770519506745392656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + 3 ^ (n + 1 + n))

end

end A188527.P6770519506745392656

namespace A188527

/-- `a(n-1)+a(n-1)+3^(n+1+n)` -/
def P6770519506745392656.Spec : Prop :=
  ∀ n, (P6770519506745392656.a n : ℤ) = A188527 n

end A188527

/-! ## A188527.P1450553725335147391

`A176818(n+1)-2^n`
-/

namespace A188527.P1450553725335147391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176818 (n + 1) - (2 ^ n : ℤ)

end

end A188527.P1450553725335147391

namespace A188527

/-- `A176818(n+1)-2^n` -/
def P1450553725335147391.Spec : Prop :=
  ∀ n, P1450553725335147391.a n = A188527 n

end A188527

/-! ## A188527.P11518418481275713093

`A135247(Δ[n²])+2^n`
-/

namespace A188527.P11518418481275713093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (2 ^ n : ℤ)

end

end A188527.P11518418481275713093

namespace A188527

/-- `A135247(Δ[n²])+2^n` -/
def P11518418481275713093.Spec : Prop :=
  ∀ n, P11518418481275713093.a n = A188527 n

end A188527

/-! ## A188527.P1288195920549001441

`A164073(2*n+1)+A135247(2*n+1)`
-/

namespace A188527.P1288195920549001441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (2 * n + 1) + A135247 (2 * n + 1)

end

end A188527.P1288195920549001441

namespace A188527

/-- `A164073(2*n+1)+A135247(2*n+1)` -/
def P1288195920549001441.Spec : Prop :=
  ∀ n, P1288195920549001441.a n = A188527 n

end A188527

/-!
# A188529: Numbers which contain only the digit 3 in their base-4 representation, with at most one exception. If the exception is the most-significant digit, it must be the digit 1 or 2, otherwise the exception must be the digit 2.

The programs for A188529, there is no canonical definition to state claims against.
-/

/-! ## A188529.P15496111919999341395

`record[A231550(A023705(n+1))]`
-/

namespace A188529.P15496111919999341395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A023705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188529.P15496111919999341395

/-! ## A188529.P8094355383134053522

`eq[A085006(n+1), A290251(n)]`
-/

namespace A188529.P8094355383134053522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188529.P8094355383134053522

/-! ## A188529.P2088348799257683303

`eq[A023416(n), A160383(A006068(n))]`
-/

namespace A188529.P2088348799257683303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188529.P2088348799257683303

/-! ## A188529.P5587923683296560978

`eq[A023416(n), A160383(A341916(n))]`
-/

namespace A188529.P5587923683296560978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A341916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188529.P5587923683296560978

/-! ## A188529.P6091700793268344739

`eq[A023416(A001969(n+1)), A059448(n+3)]`
-/

namespace A188529.P6091700793268344739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001969 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188529.P6091700793268344739

/-!
# A188530: a(n) = 2^(2*n+1) - 5*2^(n-1) - 1.

The programs for A188530, the canonical program `A188530.P9435004215558962185` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188530 has offset 1).

The definition of A188530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*(n+1)+1)-5*2^n-1` (program `A188530.P9435004215558962185`, by `A188530.P9435004215558962185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188530.P18283720006691926230

`2*4^(n+1)-5*2^n-1`
-/

namespace A188530.P18283720006691926230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ (n + 1) : ℤ) - (5 * 2 ^ n : ℤ) - 1

end

end A188530.P18283720006691926230

namespace A188530

/-- `2*4^(n+1)-5*2^n-1` -/
def P18283720006691926230.Spec : Prop :=
  ∀ n, P18283720006691926230.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P9435004215558962185

`2^(2*(n+1)+1)-5*2^n-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188530

/-- `2^(2*(n+1)+1)-5*2^n-1` -/
def P9435004215558962185.Spec : Prop :=
  ∀ n, P9435004215558962185.a n = A188530 (n + 1)

theorem P9435004215558962185.correct : P9435004215558962185.Spec := by
  intro n
  simp only [A188530, Nat.add_sub_cancel]

end A188530

/-! ## A188530.P9347061715073982272

`xor(2^n, A267816(1-(n-2*n)))`
-/

namespace A188530.P9347061715073982272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A267816 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A188530.P9347061715073982272

namespace A188530

/-- `xor(2^n, A267816(1-(n-2*n)))` -/
def P9347061715073982272.Spec : Prop :=
  ∀ n, P9347061715073982272.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P4551703480593787211

`or(2*a(n-1), A000051(2*(n+1)))` with `a(0)=2`
-/

namespace A188530.P4551703480593787211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * a (n - 1)) (A000051 (2 * (n + 1)))

end

end A188530.P4551703480593787211

namespace A188530

/-- `or(2*a(n-1), A000051(2*(n+1)))` -/
def P4551703480593787211.Spec : Prop :=
  ∀ n, P4551703480593787211.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P10552867536283260223

`or(2*a(n-1), A083318(2*(n+1)))` with `a(0)=2`
-/

namespace A188530.P10552867536283260223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * a (n - 1)) (A083318 (2 * (n + 1)))

end

end A188530.P10552867536283260223

namespace A188530

/-- `or(2*a(n-1), A083318(2*(n+1)))` -/
def P10552867536283260223.Spec : Prop :=
  ∀ n, P10552867536283260223.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P5452101610355868655

`xor(2*a(n-1), A000051(n+2+n))` with `a(0)=2`
-/

namespace A188530.P5452101610355868655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (2 * a (n - 1)) (A000051 (n + 2 + n))

end

end A188530.P5452101610355868655

namespace A188530

/-- `xor(2*a(n-1), A000051(n+2+n))` -/
def P5452101610355868655.Spec : Prop :=
  ∀ n, P5452101610355868655.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P17948158722456772598

`xor(A059153(n), A086224(n))`
-/

namespace A188530.P17948158722456772598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059153 n) (A086224 n)

end

end A188530.P17948158722456772598

namespace A188530

/-- `xor(A059153(n), A086224(n))` -/
def P17948158722456772598.Spec : Prop :=
  ∀ n, P17948158722456772598.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P4558193434167552740

`xor(A153894(n), A171496(n))`
-/

namespace A188530.P4558193434167552740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153894 n) (A171496 n)

end

end A188530.P4558193434167552740

namespace A188530

/-- `xor(A153894(n), A171496(n))` -/
def P4558193434167552740.Spec : Prop :=
  ∀ n, P4558193434167552740.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P7294105277822252962

`A220236(n+1)%A171472(n)`
-/

namespace A188530.P7294105277822252962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220236 (n + 1)) (A171472 n)

end

end A188530.P7294105277822252962

namespace A188530

/-- `A220236(n+1)%A171472(n)` -/
def P7294105277822252962.Spec : Prop :=
  ∀ n, P7294105277822252962.a n = A188530 (n + 1)

end A188530

/-! ## A188530.P7449394792577843998

`xor(A007283(n), A195460(n+1))`
-/

namespace A188530.P7449394792577843998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A195460 (n + 1))

end

end A188530.P7449394792577843998

namespace A188530

/-- `xor(A007283(n), A195460(n+1))` -/
def P7449394792577843998.Spec : Prop :=
  ∀ n, P7449394792577843998.a n = A188530 (n + 1)

end A188530

/-!
# A188531: Numbers which contain only the digit 4 in their base-5 representation, with at most one exception. If the exception is the most-significant digit, it must be the digit 1, 2, or 3, otherwise the exception must be the digit 3.

The programs for A188531, there is no canonical definition to state claims against.
-/

/-! ## A188531.P1477148840978734647

`lt[A005153(n+1), A022096(A053824(n))]`
-/

namespace A188531.P1477148840978734647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (A053824 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188531.P1477148840978734647

/-! ## A188531.P7671808642256954882

`record[A307403(A032881(n+1))]`
-/

namespace A188531.P7671808642256954882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307403 (A032881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188531.P7671808642256954882

/-! ## A188531.P10385381836756301774

`lt[xor(1, A284801(n)), 5]`
-/

namespace A188531.P10385381836756301774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284801 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188531.P10385381836756301774

/-! ## A188531.P5483900597741669783

`lt[A360634(A284801(n)), 2]`
-/

namespace A188531.P5483900597741669783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (A284801 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188531.P5483900597741669783

/-! ## A188531.P9595583974921563425

`lt[A122047(n)+1, A101943(n)]`
-/

namespace A188531.P9595583974921563425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122047 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101943 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188531.P9595583974921563425

/-!
# A188532: Numbers which contain only the digit 5 in their base-6 representation, with at most one exception. If the exception is the most-significant digit, it must be the digit 1, 2, 3, or 4, otherwise the exception must be the digit 4.

The programs for A188532, there is no canonical definition to state claims against.
-/

/-! ## A188532.P2819219660636695982

`lt[A328171(A284803(n)), 2]`
-/

namespace A188532.P2819219660636695982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328171 (A284803 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188532.P2819219660636695982

/-! ## A188532.P2088929923486801285

`∑[A136760(∏[A084546(n)])]`
-/

namespace A188532.P2088929923486801285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136760 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188532.P2088929923486801285

/-! ## A188532.P12233811525026105165

`∑[dr(A197364(A226660(n+2)))]`
-/

namespace A188532.P12233811525026105165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A197364 (A226660 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188532.P12233811525026105165

/-! ## A188532.P16774959604975535586

`lt[A284803(n), log2(A284783(n+1))]`
-/

namespace A188532.P16774959604975535586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284803 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A284783 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A188532.P16774959604975535586

/-! ## A188532.P1998121485976619987

`lt[A284803(n), log2(A284787(n+1))]`
-/

namespace A188532.P1998121485976619987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284803 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A284787 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A188532.P1998121485976619987

/-!
# A188533: Intersection of A089633 and A188531.

The programs for A188533, there is no canonical definition to state claims against.
-/

/-! ## A188533.P13237547935333507156

`∩[A188531(n+1), A089633(n)]`
-/

namespace A188533.P13237547935333507156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188533.P13237547935333507156

/-! ## A188533.P4545184926058024891

`∩[A188531(n+1), A345297(n)]`
-/

namespace A188533.P4545184926058024891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345297 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188533.P4545184926058024891

/-! ## A188533.P16132782148944675679

`∩[A003754(n+1), A188531(n+1)]`
-/

namespace A188533.P16132782148944675679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188533.P16132782148944675679

/-!
# A188535: Intersection of A188341 and A188532.

The programs for A188535, there is no canonical definition to state claims against.
-/

/-! ## A188535.P1086728088294980078

`∩[A181288(n+1), A188341(n+1)]`
-/

namespace A188535.P1086728088294980078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188535.P1086728088294980078

/-! ## A188535.P12154678971801795373

`∩[A181288(n+1), A191109(n+1)]`
-/

namespace A188535.P12154678971801795373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188535.P12154678971801795373

/-! ## A188535.P12622095550668033354

`∩[A188341(n+1), A188532(n+1)]`
-/

namespace A188535.P12622095550668033354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188535.P12622095550668033354

/-! ## A188535.P8886727940585355797

`∩[A188532(n+1), A191109(n+1)]`
-/

namespace A188535.P8886727940585355797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188535.P8886727940585355797

/-! ## A188535.P17853576613998745122

`∩[A181288(n+1), A371239(n+1)]`
-/

namespace A188535.P17853576613998745122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188535.P17853576613998745122

/-!
# A188538: Row sums of triangle A156070.

The programs for A188538, the canonical program `A188538.P3566959287335844809` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188538 has offset 0).

The definition of A188538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188538.P3566959287335844809

`n+3+A264147(n+1)-A000032(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188538

/-- `n+3+A264147(n+1)-A000032(n+1)` -/
def P3566959287335844809.Spec : Prop :=
  ∀ n, P3566959287335844809.a n = A188538 n

theorem P3566959287335844809.correct : P3566959287335844809.Spec := by
  intro n
  simp only [A188538]

end A188538

/-! ## A188538.P2003651485267272941

`ogf((1-2x-2x^2+6x^3-2x^4)/(1-4x+4x^2+2x^3-4x^4+x^6))`
-/

namespace A188538.P2003651485267272941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, 6, -2] [1, -4, 4, 2, -4, 0, 1] n

end

end A188538.P2003651485267272941

namespace A188538

/-- `ogf((1-2x-2x^2+6x^3-2x^4)/(1-4x+4x^2+2x^3-4x^4+x^6))` -/
def P2003651485267272941.Spec : Prop :=
  ∀ n, P2003651485267272941.a n = A188538 n

end A188538

/-! ## A188538.P17113321643549615049

`A094588(n+1)-A001924(n)`
-/

namespace A188538.P17113321643549615049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) - A001924 n

end

end A188538.P17113321643549615049

namespace A188538

/-- `A094588(n+1)-A001924(n)` -/
def P17113321643549615049.Spec : Prop :=
  ∀ n, P17113321643549615049.a n = A188538 n

end A188538

/-! ## A188538.P13597331164644178221

`A045925(n)-A065220(n+3)`
-/

namespace A188538.P13597331164644178221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - A065220 (n + 3)

end

end A188538.P13597331164644178221

namespace A188538

/-- `A045925(n)-A065220(n+3)` -/
def P13597331164644178221.Spec : Prop :=
  ∀ n, P13597331164644178221.a n = A188538 n

end A188538

/-! ## A188538.P15681650350494434721

`A190062(n)+∑[1-A000045(n)]`
-/

namespace A188538.P15681650350494434721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188538.P15681650350494434721

namespace A188538

/-- `A190062(n)+∑[1-A000045(n)]` -/
def P15681650350494434721.Spec : Prop :=
  ∀ n, P15681650350494434721.a n = A188538 n

end A188538

/-! ## A188538.P15860861071003700387

`A094588(n+1)-∑[∑[A000045(n)]]`
-/

namespace A188538.P15860861071003700387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188538.P15860861071003700387

namespace A188538

/-- `A094588(n+1)-∑[∑[A000045(n)]]` -/
def P15860861071003700387.Spec : Prop :=
  ∀ n, P15860861071003700387.a n = A188538 n

end A188538

/-! ## A188538.P9969599904135623512

`A045925(n)+1-∑[A000071(n+1)]`
-/

namespace A188538.P9969599904135623512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188538.P9969599904135623512

namespace A188538

/-- `A045925(n)+1-∑[A000071(n+1)]` -/
def P9969599904135623512.Spec : Prop :=
  ∀ n, P9969599904135623512.a n = A188538 n

end A188538

/-! ## A188538.P18170470543092931195

`n*A000045(n)+n+3-A000045(n+3)`
-/

namespace A188538.P18170470543092931195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n + ((n + 3 : ℤ) - A000045 (n + 3))

end

end A188538.P18170470543092931195

namespace A188538

/-- `n*A000045(n)+n+3-A000045(n+3)` -/
def P18170470543092931195.Spec : Prop :=
  ∀ n, P18170470543092931195.a n = A188538 n

end A188538

/-! ## A188538.P11525954730664032094

`∑[A264147(n)+1]-A264147(n)`
-/

namespace A188538.P11525954730664032094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A264147 n

end

end A188538.P11525954730664032094

namespace A188538

/-- `∑[A264147(n)+1]-A264147(n)` -/
def P11525954730664032094.Spec : Prop :=
  ∀ n, P11525954730664032094.a n = A188538 n

end A188538

/-! ## A188538.P12322179479698555986

`Δ[A023607(n)]-A001924(n)`
-/

namespace A188538.P12322179479698555986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001924 n

end

end A188538.P12322179479698555986

namespace A188538

/-- `Δ[A023607(n)]-A001924(n)` -/
def P12322179479698555986.Spec : Prop :=
  ∀ n, P12322179479698555986.a n = A188538 n

end A188538

/-! ## A188538.P13191475794504939506

`A094584(n+1)-n*∑[A000032(n)]`
-/

namespace A188538.P13191475794504939506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188538.P13191475794504939506

namespace A188538

/-- `A094584(n+1)-n*∑[A000032(n)]` -/
def P13191475794504939506.Spec : Prop :=
  ∀ n, P13191475794504939506.a n = A188538 n

end A188538

/-!
# A188539: Numbers n such that n^2 plus number of divisors of n^2 is prime.

The programs for A188539, there is no canonical definition to state claims against.
-/

/-! ## A188539.P13841213424593140694

`floor(sqrt(A188665(1+n)))`
-/

namespace A188539.P13841213424593140694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A188665 (1 + n))

end

end A188539.P13841213424593140694

/-! ## A188539.P2466628597662741939

`round(sqrt(A188665(n+1)-A001227(n+1)))`
-/

namespace A188539.P2466628597662741939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188665 (n + 1) - A001227 (n + 1) : ℝ))

end

end A188539.P2466628597662741939

/-! ## A188539.P18346089862375739210

`round(sqrt(A188665(n+1)-A001511(n+1)))`
-/

namespace A188539.P18346089862375739210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188665 (n + 1) - A001511 (n + 1) : ℝ))

end

end A188539.P18346089862375739210

/-! ## A188539.P10085475404143357571

`round(sqrt(A188665(n+1)-A001826(n+1)))`
-/

namespace A188539.P10085475404143357571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188665 (n + 1) - A001826 (n + 1) : ℝ))

end

end A188539.P10085475404143357571

/-! ## A188539.P12395521835633460111

`A029578(ceil(sqrt(A188665(n+1))))`
-/

namespace A188539.P12395521835633460111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ⌈Real.sqrt (A188665 (n + 1) : ℝ)⌉.toNat

end

end A188539.P12395521835633460111

/-!
# A188540: Numbers k such that d(k+2) = 2*d(k) where d(k) is the number of divisors of k (A000005).

The programs for A188540, the canonical program `A188540.P8000585226121098714` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188540 has offset 1).

The definition of A188540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188540.P8000585226121098714

`eq[2*A000005(n+1), A000005(n+3)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188540

/-- `eq[2*A000005(n+1), A000005(n+3)]+1` -/
def P8000585226121098714.Spec : Prop :=
  ∀ n, (P8000585226121098714.a n : ℤ) = A188540 (n + 1)

theorem P8000585226121098714.correct : P8000585226121098714.Spec := by
  intro n
  simp only [A188540, Nat.add_sub_cancel]

end A188540

/-! ## A188540.P1726956354802518676

`eq[A062011(n+2), A145154(n)]`
-/

namespace A188540.P1726956354802518676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188540.P1726956354802518676

namespace A188540

/-- `eq[A062011(n+2), A145154(n)]` -/
def P1726956354802518676.Spec : Prop :=
  ∀ n, (P1726956354802518676.a n : ℤ) = A188540 (n + 1)

end A188540

/-! ## A188540.P6691827016490675850

`eq[A063123(n+2), A092517(n+1)]+1`
-/

namespace A188540.P6691827016490675850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188540.P6691827016490675850

namespace A188540

/-- `eq[A063123(n+2), A092517(n+1)]+1` -/
def P6691827016490675850.Spec : Prop :=
  ∀ n, (P6691827016490675850.a n : ℤ) = A188540 (n + 1)

end A188540

/-! ## A188540.P17832348374176551090

`eq[A063123(n+1), A092517(A028310(n))]`
-/

namespace A188540.P17832348374176551090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188540.P17832348374176551090

namespace A188540

/-- `eq[A063123(n+1), A092517(A028310(n))]` -/
def P17832348374176551090.Spec : Prop :=
  ∀ n, (P17832348374176551090.a n : ℤ) = A188540 (n + 1)

end A188540

/-! ## A188540.P7917218944489826880

`eq[2*A092517(A028310(n)), A092517(n+1)]`
-/

namespace A188540.P7917218944489826880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092517 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188540.P7917218944489826880

namespace A188540

/-- `eq[2*A092517(A028310(n)), A092517(n+1)]` -/
def P7917218944489826880.Spec : Prop :=
  ∀ n, (P7917218944489826880.a n : ℤ) = A188540 (n + 1)

end A188540

/-! ## A188540.P2893751510361184468

`eq[A000005(n+2)+A000005(n+2), A145154(n)]`
-/

namespace A188540.P2893751510361184468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188540.P2893751510361184468

namespace A188540

/-- `eq[A000005(n+2)+A000005(n+2), A145154(n)]` -/
def P2893751510361184468.Spec : Prop :=
  ∀ n, (P2893751510361184468.a n : ℤ) = A188540 (n + 1)

end A188540

/-!
# A188541: a(n) = 2 * A079500(n) - A079500(n+1).

The programs for A188541, there is no canonical definition to state claims against.
-/

/-! ## A188541.P9175929839490521126

`2*A079500(n)-A079500(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188541.P9175929839490521126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079500 n - A079500 (n + 1)

end

end A188541.P9175929839490521126

/-! ## A188541.P8328522941594151846

`A007059(n)-A369116(n+1)`
-/

namespace A188541.P8328522941594151846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 n - A369116 (n + 1)

end

end A188541.P8328522941594151846

/-! ## A188541.P10747344480437820445

`A079500(n)-A368279(n+1)`
-/

namespace A188541.P10747344480437820445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A368279 (n + 1)

end

end A188541.P10747344480437820445

/-! ## A188541.P12317906349117661935

`A007059(n+1)-A368279(n+1)`
-/

namespace A188541.P12317906349117661935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1) - A368279 (n + 1)

end

end A188541.P12317906349117661935

/-! ## A188541.P9281314718673241773

`A079500(n)-Δ[A079500(n)]`
-/

namespace A188541.P9281314718673241773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - (f1 (n + 1) - f1 n)

end

end A188541.P9281314718673241773

/-! ## A188541.P16789846493410166883

`A007059(n+1)+A079500(n)-A079500(n+1)`
-/

namespace A188541.P16789846493410166883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1) + (A079500 n - A079500 (n + 1))

end

end A188541.P16789846493410166883

/-! ## A188541.P11778635265247605730

`A186537(n+1)-(A368279(n+1)+A186537(n))`
-/

namespace A188541.P11778635265247605730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (n + 1) - (A368279 (n + 1) + A186537 n)

end

end A188541.P11778635265247605730

/-! ## A188541.P10370824350305365634

`Δ[A186537(n)-Δ[A186537(n)]]`
-/

namespace A188541.P10370824350305365634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188541.P10370824350305365634

/-!
# A188542: Number of primes between n^3-n and n^3+n.

The programs for A188542, there is no canonical definition to state claims against.
-/

/-! ## A188542.P1540916991074167020

`A216266(n+1)+A216265(n+1)`
-/

namespace A188542.P1540916991074167020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216266 (n + 1) + A216265 (n + 1)

end

end A188542.P1540916991074167020

/-! ## A188542.P10392002997410070141

`A275806(A017996(n)+A002522(n))`
-/

namespace A188542.P10392002997410070141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A017996 n + A002522 n).toNat

end

end A188542.P10392002997410070141

/-! ## A188542.P1250937713255704525

`A216265(n+1)+A096863(A133031(n+1)+A008758(n))`
-/

namespace A188542.P1250937713255704525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216265 (n + 1) + A096863 (A133031 (n + 1) + A008758 n).toNat

end

end A188542.P1250937713255704525

/-! ## A188542.P11128835393230693491

`A001222(or(A087509(n), A210492(n)))`
-/

namespace A188542.P11128835393230693491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A087509 n) (A210492 n)).toNat

end

end A188542.P11128835393230693491

/-! ## A188542.P15856290908737741051

`A094999(n)+A081221(A330910(2*(n+2)))`
-/

namespace A188542.P15856290908737741051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094999 n + A081221 (A330910 (2 * (n + 2))).toNat

end

end A188542.P15856290908737741051

/-!
# A188548: The sum of the divisors of n in base-2 lunar arithmetic.

The programs for A188548, there is no canonical definition to state claims against.
-/

/-! ## A188548.P9743595691288203935

`A007088(or(A086799(n+1), A194550(5*n+6)))`
-/

namespace A188548.P9743595691288203935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A086799 (n + 1)) (A194550 (5 * n + 6))).toNat

end

end A188548.P9743595691288203935

/-! ## A188548.P14213507749205065568

`A007088(or(A187829(n+1), A264977(n)))`
-/

namespace A188548.P14213507749205065568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A187829 (n + 1)) (A264977 n)).toNat

end

end A188548.P14213507749205065568

/-! ## A188548.P15666136617862401487

`A077812(or(A187829(n+1), A264977(n)))`
-/

namespace A188548.P15666136617862401487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077812 (Int.lor (A187829 (n + 1)) (A264977 n)).toNat

end

end A188548.P15666136617862401487

/-! ## A188548.P7046934735592665510

`A115848(or(A187829(n+1), A264977(n)))`
-/

namespace A188548.P7046934735592665510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115848 (Int.lor (A187829 (n + 1)) (A264977 n)).toNat

end

end A188548.P7046934735592665510

/-! ## A188548.P4497262525042297588

`A354838(or(A187829(n+1), A264977(n)))`
-/

namespace A188548.P4497262525042297588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354838 (Int.lor (A187829 (n + 1)) (A264977 n)).toNat

end

end A188548.P4497262525042297588

/-!
# A188549: Numbers k such that 8*k^2+1 is a prime.

The programs for A188549, there is no canonical definition to state claims against.
-/

/-! ## A188549.P10217788976170782730

`floor(sqrt(A090685(1+n)/8))`
-/

namespace A188549.P10217788976170782730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A090685 (1 + n) : ℚ) / 8 : ℝ)⌋

end

end A188549.P10217788976170782730

/-! ## A188549.P10515665736737668362

`record[A290980(A089001(n+3))]`
-/

namespace A188549.P10515665736737668362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290980 (A089001 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188549.P10515665736737668362

/-! ## A188549.P2433704753090235927

`A060681(∩[2*n, A089001(n+1)])`
-/

namespace A188549.P2433704753090235927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A188549.P2433704753090235927

/-! ## A188549.P4171343289407162309

`A032742(∩[2*(n+2), A089001(n+1)])`
-/

namespace A188549.P4171343289407162309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A188549.P4171343289407162309

/-! ## A188549.P14361125941551316948

`A172474(ceil(sqrt(A090685(n+1))))`
-/

namespace A188549.P14361125941551316948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 ⌈Real.sqrt (A090685 (n + 1) : ℝ)⌉.toNat

end

end A188549.P14361125941551316948

/-!
# A188550: Maximal number of divisors d>1 of n-k such that n-d is a multiple of k, when k runs through values 2, 3, ..., floor(sqrt(n)).

The programs for A188550, there is no canonical definition to state claims against.
-/

/-! ## A188550.P18378530463692279832

`∑{p}[A297937(n+1)+A000051(n), A225245(#)]`
-/

namespace A188550.P18378530463692279832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297937 (n + 1) + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225245 p

end

end A188550.P18378530463692279832

/-! ## A188550.P18079964432075923650

`A001222(A293669(3*n+2)+A020639(A293724(3*n+1)))`
-/

namespace A188550.P18079964432075923650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293669 (3 * n + 2) + A020639 (A293724 (3 * n + 1)).toNat).toNat

end

end A188550.P18079964432075923650

/-! ## A188550.P18248132321819551136

`A001221(A002203(and(n, A134028(n))))`
-/

namespace A188550.P18248132321819551136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002203 (Int.land (n : ℤ) (A134028 n)).toNat).toNat

end

end A188550.P18248132321819551136

/-! ## A188550.P2698553643227202332

`A001221(A297937(n+1)+A000051(n))`
-/

namespace A188550.P2698553643227202332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A297937 (n + 1) + A000051 n).toNat

end

end A188550.P2698553643227202332

/-! ## A188550.P1841911817658978790

`A322869(A294116(n)+A138121(n+1))`
-/

namespace A188550.P1841911817658978790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (A294116 n + A138121 (n + 1)).toNat

end

end A188550.P1841911817658978790

/-!
# A188551: Numbers located at angle turns in a pentagonal spiral.

The programs for A188551, the canonical program `A188551.P17665566327567841099` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188551 has offset 1).

The definition of A188551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188551.P17665566327567841099

`ogf((1+x+x^2+x^3+x^4-x^8)/(1-x-2x^5+2x^6+x^10-x^11))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188551

/-- `ogf((1+x+x^2+x^3+x^4-x^8)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P17665566327567841099.Spec : Prop :=
  ∀ n, P17665566327567841099.a n = A188551 (n + 1)

theorem P17665566327567841099.correct : P17665566327567841099.Spec := by
  intro n
  simp only [A188551, Nat.add_sub_cancel]

end A188551

/-! ## A188551.P4475223279371525590

`A130519(A286716(n+1)+A004526(n))+1+n`
-/

namespace A188551.P4475223279371525590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A286716 (n + 1) + A004526 n).toNat + 1 + (n : ℤ)

end

end A188551.P4475223279371525590

namespace A188551

/-- `A130519(A286716(n+1)+A004526(n))+1+n` -/
def P4475223279371525590.Spec : Prop :=
  ∀ n, P4475223279371525590.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P16570062353811357991

`A130519(A057354(2*n+1))+n+1`
-/

namespace A188551.P16570062353811357991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A057354 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A188551.P16570062353811357991

namespace A188551

/-- `A130519(A057354(2*n+1))+n+1` -/
def P16570062353811357991.Spec : Prop :=
  ∀ n, P16570062353811357991.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P17701231501673622047

`∑[A008619(A130497(2*n)%A130497(n+1))]`
-/

namespace A188551.P17701231501673622047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A130497 (2 * n)) (A130497 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188551.P17701231501673622047

namespace A188551

/-- `∑[A008619(A130497(2*n)%A130497(n+1))]` -/
def P17701231501673622047.Spec : Prop :=
  ∀ n, P17701231501673622047.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P7832958994919871514

`record[A008735(n)-A004652(A008615(n))]`
-/

namespace A188551.P7832958994919871514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008735 n - A004652 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188551.P7832958994919871514

namespace A188551

/-- `record[A008735(n)-A004652(A008615(n))]` -/
def P7832958994919871514.Spec : Prop :=
  ∀ n, P7832958994919871514.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P8588823676085868402

`eq[A172471(n), A182210(n+1)]`
-/

namespace A188551.P8588823676085868402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188551.P8588823676085868402

namespace A188551

/-- `eq[A172471(n), A182210(n+1)]` -/
def P8588823676085868402.Spec : Prop :=
  ∀ n, (P8588823676085868402.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P5239315379719726546

`∑[runs[A068344(n+1)]]`
-/

namespace A188551.P5239315379719726546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188551.P5239315379719726546

namespace A188551

/-- `∑[runs[A068344(n+1)]]` -/
def P5239315379719726546.Spec : Prop :=
  ∀ n, (P5239315379719726546.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P3378551640443283680

`eq[A291684(n+1), A291684(A061579(n))]`
-/

namespace A188551.P3378551640443283680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (A061579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188551.P3378551640443283680

namespace A188551

/-- `eq[A291684(n+1), A291684(A061579(n))]` -/
def P3378551640443283680.Spec : Prop :=
  ∀ n, (P3378551640443283680.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P15071818535324348327

`∑[runs[A279415(n+2)]]`
-/

namespace A188551.P15071818535324348327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279415 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188551.P15071818535324348327

namespace A188551

/-- `∑[runs[A279415(n+2)]]` -/
def P15071818535324348327.Spec : Prop :=
  ∀ n, (P15071818535324348327.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P4811491409719974997

`lt[A191314(2*n+1), 2*n]`
-/

namespace A188551.P4811491409719974997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188551.P4811491409719974997

namespace A188551

/-- `lt[A191314(2*n+1), 2*n]` -/
def P4811491409719974997.Spec : Prop :=
  ∀ n, (P4811491409719974997.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P11863422385608102359

`A008619(eq[1, A115139(n+4)])`
-/

namespace A188551.P11863422385608102359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188551.P11863422385608102359

namespace A188551

/-- `A008619(eq[1, A115139(n+4)])` -/
def P11863422385608102359.Spec : Prop :=
  ∀ n, P11863422385608102359.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P18366683950129587885

`record[A032742(A008217(n)+1+n)]`
-/

namespace A188551.P18366683950129587885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A008217 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188551.P18366683950129587885

namespace A188551

/-- `record[A032742(A008217(n)+1+n)]` -/
def P18366683950129587885.Spec : Prop :=
  ∀ n, P18366683950129587885.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P13167637601120966453

`record[A178804(A008217(n)+1+n)]`
-/

namespace A188551.P13167637601120966453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A008217 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188551.P13167637601120966453

namespace A188551

/-- `record[A178804(A008217(n)+1+n)]` -/
def P13167637601120966453.Spec : Prop :=
  ∀ n, P13167637601120966453.a n = A188551 (n + 1)

end A188551

/-! ## A188551.P13548231059406024596

`record[A008619(n)/A034839(n+3)]`
-/

namespace A188551.P13548231059406024596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A034839 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188551.P13548231059406024596

namespace A188551

/-- `record[A008619(n)/A034839(n+3)]` -/
def P13548231059406024596.Spec : Prop :=
  ∀ n, P13548231059406024596.a n = (A188551 (n + 1) : ℚ)

end A188551

/-! ## A188551.P7887281264655034149

`lt[A029648(2*n), A266836(2*n+1)]`
-/

namespace A188551.P7887281264655034149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188551.P7887281264655034149

namespace A188551

/-- `lt[A029648(2*n), A266836(2*n+1)]` -/
def P7887281264655034149.Spec : Prop :=
  ∀ n, (P7887281264655034149.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P15475438414454343370

`lt[A191521(A191558(2*(n+1))), A191558(2*(n+1))]`
-/

namespace A188551.P15475438414454343370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A191558 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188551.P15475438414454343370

namespace A188551

/-- `lt[A191521(A191558(2*(n+1))), A191558(2*(n+1))]` -/
def P15475438414454343370.Spec : Prop :=
  ∀ n, (P15475438414454343370.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P6821668419553845934

`lt[A102541(2*(n+1))²-n, n]`
-/

namespace A188551.P6821668419553845934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (2 * (n + 1)) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A188551.P6821668419553845934

namespace A188551

/-- `lt[A102541(2*(n+1))²-n, n]` -/
def P6821668419553845934.Spec : Prop :=
  ∀ n, (P6821668419553845934.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P498950811099253085

`lt[A102541(2*(n+1))², A006093(n+1)]`
-/

namespace A188551.P498950811099253085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188551.P498950811099253085

namespace A188551

/-- `lt[A102541(2*(n+1))², A006093(n+1)]` -/
def P498950811099253085.Spec : Prop :=
  ∀ n, (P498950811099253085.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P16785615394132712728

`lt[A102541(2*(n+1))², A102553(n+1)]`
-/

namespace A188551.P16785615394132712728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188551.P16785615394132712728

namespace A188551

/-- `lt[A102541(2*(n+1))², A102553(n+1)]` -/
def P16785615394132712728.Spec : Prop :=
  ∀ n, (P16785615394132712728.a n : ℤ) = A188551 (n + 1)

end A188551

/-! ## A188551.P11686628490728068802

`lt[A102541(2*(n+1)), A102548(A102548(n+1))]`
-/

namespace A188551.P11686628490728068802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (A102548 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188551.P11686628490728068802

namespace A188551

/-- `lt[A102541(2*(n+1)), A102548(A102548(n+1))]` -/
def P11686628490728068802.Spec : Prop :=
  ∀ n, (P11686628490728068802.a n : ℤ) = A188551 (n + 1)

end A188551

/-!
# A188552: Prime numbers at locations of angle turns in pentagonal spiral.

The programs for A188552, there is no canonical definition to state claims against.
-/

/-! ## A188552.P1295052228288470211

`p?[floor(n²/8)-1]`
-/

namespace A188552.P1295052228288470211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188552.P1295052228288470211

/-! ## A188552.P4628000156411782250

`record[A006530(∑[or(3, n+1)+1])]`
-/

namespace A188552.P4628000156411782250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188552.P4628000156411782250

/-! ## A188552.P7158704169879215872

`eq[A003415(n), A152830(n)]`
-/

namespace A188552.P7158704169879215872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188552.P7158704169879215872

/-! ## A188552.P2617437928404432606

`eq[A018783(n), A152830(n)]`
-/

namespace A188552.P2617437928404432606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188552.P2617437928404432606

/-! ## A188552.P12515310808176423399

`eq[A152830(n), A175126(n)]`
-/

namespace A188552.P12515310808176423399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188552.P12515310808176423399

/-! ## A188552.P15710589326130947765

`eq[A152830(n), A302055(n)]`
-/

namespace A188552.P15710589326130947765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188552.P15710589326130947765

/-! ## A188552.P1268716225020906771

`record[A006530(A188551(n+2))]`
-/

namespace A188552.P1268716225020906771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A188551 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188552.P1268716225020906771

/-! ## A188552.P567368881666581363

`filter[A188551(n+1), A010051(#)]`
-/

namespace A188552.P567368881666581363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A188552.P567368881666581363

/-! ## A188552.P9066675432569720112

`filter[A188551(n+1), A323153(#)]`
-/

namespace A188552.P9066675432569720112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A188552.P9066675432569720112

/-! ## A188552.P11015717610552964224

`filter[A188551(n+2), A080339(#)]`
-/

namespace A188552.P11015717610552964224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A188552.P11015717610552964224

/-!
# A188553: T(n,k) = Number of n X k binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188553, the canonical program `A188553.P6895799990647270597` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188553 has offset 1).

The definition of A188553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188553.P6895799990647270597

`A049089(1+n)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188553

/-- `A049089(1+n)/2` -/
def P6895799990647270597.Spec : Prop :=
  ∀ n, P6895799990647270597.a n = (A188553 (n + 1) : ℚ)

end A188553

/-! ## A188553.P18038223068231876270

`A210489(comp[∑[n]])`
-/

namespace A188553.P18038223068231876270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A188553.P18038223068231876270

namespace A188553

/-- `A210489(comp[∑[n]])` -/
def P18038223068231876270.Spec : Prop :=
  ∀ n, P18038223068231876270.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P10460441817216951248

`A104732(A099375(n)+1+n)`
-/

namespace A188553.P10460441817216951248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A099375 n + 1 + (n : ℤ)).toNat

end

end A188553.P10460441817216951248

namespace A188553

/-- `A104732(A099375(n)+1+n)` -/
def P10460441817216951248.Spec : Prop :=
  ∀ n, P10460441817216951248.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P17716680216279020471

`A104732(A061579(n)+A003057(n+2))`
-/

namespace A188553.P17716680216279020471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A061579 n + A003057 (n + 2)).toNat

end

end A188553.P17716680216279020471

namespace A188553

/-- `A104732(A061579(n)+A003057(n+2))` -/
def P17716680216279020471.Spec : Prop :=
  ∀ n, P17716680216279020471.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P11983096963121028992

`A104734(A099375(n)+n)-A210489(n)`
-/

namespace A188553.P11983096963121028992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104734 (A099375 n + (n : ℤ)).toNat - A210489 n

end

end A188553.P11983096963121028992

namespace A188553

/-- `A104734(A099375(n)+n)-A210489(n)` -/
def P11983096963121028992.Spec : Prop :=
  ∀ n, P11983096963121028992.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P14091238940110947041

`A104732(A038722(n+1)+A002024(n+1))`
-/

namespace A188553.P14091238940110947041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A188553.P14091238940110947041

namespace A188553

/-- `A104732(A038722(n+1)+A002024(n+1))` -/
def P14091238940110947041.Spec : Prop :=
  ∀ n, P14091238940110947041.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P12199276761172136423

`A001281(A049089(n+1))`
-/

namespace A188553.P12199276761172136423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049089 (n + 1)).toNat

end

end A188553.P12199276761172136423

namespace A188553

/-- `A001281(A049089(n+1))` -/
def P12199276761172136423.Spec : Prop :=
  ∀ n, P12199276761172136423.a n = A188553 (n + 1)

end A188553

/-! ## A188553.P4283858497286475644

`A001057(A049089(n+1)-1)`
-/

namespace A188553.P4283858497286475644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A049089 (n + 1) - 1).toNat

end

end A188553.P4283858497286475644

namespace A188553

/-- `A001057(A049089(n+1)-1)` -/
def P4283858497286475644.Spec : Prop :=
  ∀ n, P4283858497286475644.a n = A188553 (n + 1)

end A188553

/-!
# A188554: Number of 3 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188554, the canonical program `A188554.P14290473559890551000` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188554 has offset 0).

The definition of A188554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188554.P17939889185993024527

`ogf((1-3x^2+4x^3-x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A188554.P17939889185993024527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, 4, -1] [1, -4, 6, -4, 1] n

end

end A188554.P17939889185993024527

namespace A188554

/-- `ogf((1-3x^2+4x^3-x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P17939889185993024527.Spec : Prop :=
  ∀ n, P17939889185993024527.a n = A188554 n

end A188554

/-! ## A188554.P14290473559890551000

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=12, a(4)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188554

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14290473559890551000.Spec : Prop :=
  ∀ n, P14290473559890551000.a n = A188554 n

theorem P14290473559890551000.correct : P14290473559890551000.Spec := by
  intro n
  simp only [A188554]

end A188554

/-! ## A188554.P8690229710497973582

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2`
-/

namespace A188554.P8690229710497973582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188554.P8690229710497973582

namespace A188554

/-- `∑[∑[a(n-1)+1]]` -/
def P8690229710497973582.Spec : Prop :=
  ∀ n, (P8690229710497973582.a n : ℤ) = A188554 n

end A188554

/-! ## A188554.P581006560984829020

`C(n, 2)+2+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A188554.P581006560984829020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.choose n 2 + 2 + a (n - 1)

end

end A188554.P581006560984829020

namespace A188554

/-- `C(n, 2)+2+a(n-1)` -/
def P581006560984829020.Spec : Prop :=
  ∀ n, (P581006560984829020.a n : ℤ) = A188554 n

end A188554

/-! ## A188554.P10212039053138102464

`∑[n-(1-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A188554.P10212039053138102464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188554.P10212039053138102464

namespace A188554

/-- `∑[n-(1-a(n-1))]` -/
def P10212039053138102464.Spec : Prop :=
  ∀ n, P10212039053138102464.a n = A188554 n

end A188554

/-! ## A188554.P9030869674682076254

`A050407(n)+A010000(n)`
-/

namespace A188554.P9030869674682076254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n + A010000 n

end

end A188554.P9030869674682076254

namespace A188554

/-- `A050407(n)+A010000(n)` -/
def P9030869674682076254.Spec : Prop :=
  ∀ n, P9030869674682076254.a n = A188554 n

end A188554

/-! ## A188554.P17077928709418033988

`A065475(n+1)+A004006(n)`
-/

namespace A188554.P17077928709418033988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A004006 n

end

end A188554.P17077928709418033988

namespace A188554

/-- `A065475(n+1)+A004006(n)` -/
def P17077928709418033988.Spec : Prop :=
  ∀ n, P17077928709418033988.a n = A188554 n

end A188554

/-! ## A188554.P1310880528202857554

`A087156(n+1)+A000125(n)`
-/

namespace A188554.P1310880528202857554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A000125 n

end

end A188554.P1310880528202857554

namespace A188554

/-- `A087156(n+1)+A000125(n)` -/
def P1310880528202857554.Spec : Prop :=
  ∀ n, P1310880528202857554.a n = A188554 n

end A188554

/-! ## A188554.P6960442602687870693

`A180415(n+1)+A057427(n)`
-/

namespace A188554.P6960442602687870693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + A057427 n

end

end A188554.P6960442602687870693

namespace A188554

/-- `A180415(n+1)+A057427(n)` -/
def P6960442602687870693.Spec : Prop :=
  ∀ n, P6960442602687870693.a n = A188554 n

end A188554

/-! ## A188554.P8691645627950318920

`A180415(n+1)-A057428(n)`
-/

namespace A188554.P8691645627950318920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) - A057428 n

end

end A188554.P8691645627950318920

namespace A188554

/-- `A180415(n+1)-A057428(n)` -/
def P8691645627950318920.Spec : Prop :=
  ∀ n, P8691645627950318920.a n = A188554 n

end A188554

/-! ## A188554.P14083995634389986336

`A038793(n+3)-A157928(n)`
-/

namespace A188554.P14083995634389986336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038793 (n + 3) - A157928 n

end

end A188554.P14083995634389986336

namespace A188554

/-- `A038793(n+3)-A157928(n)` -/
def P14083995634389986336.Spec : Prop :=
  ∀ n, P14083995634389986336.a n = A188554 n

end A188554

/-! ## A188554.P10502546402107933736

`A000125(n)+A057427(n)+n`
-/

namespace A188554.P10502546402107933736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A057427 n + (n : ℤ))

end

end A188554.P10502546402107933736

namespace A188554

/-- `A000125(n)+A057427(n)+n` -/
def P10502546402107933736.Spec : Prop :=
  ∀ n, P10502546402107933736.a n = A188554 n

end A188554

/-! ## A188554.P12305366998146892456

`A000125(n)+n-A057428(n)`
-/

namespace A188554.P12305366998146892456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ((n : ℤ) - A057428 n)

end

end A188554.P12305366998146892456

namespace A188554

/-- `A000125(n)+n-A057428(n)` -/
def P12305366998146892456.Spec : Prop :=
  ∀ n, P12305366998146892456.a n = A188554 n

end A188554

/-! ## A188554.P17898685612498963936

`A180415(n+1)+1-A000007(n)`
-/

namespace A188554.P17898685612498963936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) + (1 - A000007 n)

end

end A188554.P17898685612498963936

namespace A188554

/-- `A180415(n+1)+1-A000007(n)` -/
def P17898685612498963936.Spec : Prop :=
  ∀ n, P17898685612498963936.a n = A188554 n

end A188554

/-! ## A188554.P7416284532185271045

`A177787(n+1)-A179865(n+1)`
-/

namespace A188554.P7416284532185271045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (n + 1) - A179865 (n + 1)

end

end A188554.P7416284532185271045

namespace A188554

/-- `A177787(n+1)-A179865(n+1)` -/
def P7416284532185271045.Spec : Prop :=
  ∀ n, P7416284532185271045.a n = A188554 n

end A188554

/-! ## A188554.P1982669420304979274

`A211958(n+1)-A059302(n+2)`
-/

namespace A188554.P1982669420304979274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - A059302 (n + 2)

end

end A188554.P1982669420304979274

namespace A188554

/-- `A211958(n+1)-A059302(n+2)` -/
def P1982669420304979274.Spec : Prop :=
  ∀ n, P1982669420304979274.a n = A188554 n

end A188554

/-! ## A188554.P3668367350223948525

`A180415(n+1)+n/A028310(n)`
-/

namespace A188554.P3668367350223948525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180415 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A188554.P3668367350223948525

namespace A188554

/-- `A180415(n+1)+n/A028310(n)` -/
def P3668367350223948525.Spec : Prop :=
  ∀ n, P3668367350223948525.a n = (A188554 n : ℚ)

end A188554

/-! ## A188554.P4039607525458883879

`A000292(n+1)-(A057428(n)+n²)`
-/

namespace A188554.P4039607525458883879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A057428 n + (n ^ 2 : ℤ))

end

end A188554.P4039607525458883879

namespace A188554

/-- `A000292(n+1)-(A057428(n)+n²)` -/
def P4039607525458883879.Spec : Prop :=
  ∀ n, P4039607525458883879.a n = A188554 n

end A188554

/-! ## A188554.P10736129158677684324

`A000124(n+1)+A033547(n)-A003600(n)`
-/

namespace A188554.P10736129158677684324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A033547 n - A003600 n)

end

end A188554.P10736129158677684324

namespace A188554

/-- `A000124(n+1)+A033547(n)-A003600(n)` -/
def P10736129158677684324.Spec : Prop :=
  ∀ n, P10736129158677684324.a n = A188554 n

end A188554

/-!
# A188555: Number of 4 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188555, the canonical program `A188555.P17677957703824641780` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188555 has offset 0).

The definition of A188555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188555.P9357221472424399986

`ogf((1-6x^2+11x^3-7x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A188555.P9357221472424399986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -6, 11, -7, 2] [1, -5, 10, -10, 5, -1] n

end

end A188555.P9357221472424399986

namespace A188555

/-- `ogf((1-6x^2+11x^3-7x^4+2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9357221472424399986.Spec : Prop :=
  ∀ n, P9357221472424399986.a n = A188555 n

end A188555

/-! ## A188555.P17677957703824641780

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=16, a(4)=28, a(5)=48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188555

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17677957703824641780.Spec : Prop :=
  ∀ n, P17677957703824641780.a n = A188555 n

theorem P17677957703824641780.correct : P17677957703824641780.Spec := by
  intro n
  simp only [A188555]

end A188555

/-! ## A188555.P15294343220619309533

`A210489(A167614(n+2)+1)`
-/

namespace A188555.P15294343220619309533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A167614 (n + 2) + 1).toNat

end

end A188555.P15294343220619309533

namespace A188555

/-- `A210489(A167614(n+2)+1)` -/
def P15294343220619309533.Spec : Prop :=
  ∀ n, P15294343220619309533.a n = A188555 n

end A188555

/-! ## A188555.P10404315526103975203

`A104732(A052905(n+1)+1)`
-/

namespace A188555.P10404315526103975203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A052905 (n + 1) + 1).toNat

end

end A188555.P10404315526103975203

namespace A188555

/-- `A104732(A052905(n+1)+1)` -/
def P10404315526103975203.Spec : Prop :=
  ∀ n, P10404315526103975203.a n = A188555 n

end A188555

/-! ## A188555.P14854984244349341623

`A104732(lt[A064861(n+4), A000194(n)])`
-/

namespace A188555.P14854984244349341623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188555.P14854984244349341623

namespace A188555

/-- `A104732(lt[A064861(n+4), A000194(n)])` -/
def P14854984244349341623.Spec : Prop :=
  ∀ n, P14854984244349341623.a n = A188555 n

end A188555

/-!
# A188556: Number of 5 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188556, the canonical program `A188556.P2471542906957635104` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188556 has offset 1).

The definition of A188556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188556.P17341424251287310691

`ogf((6-25x+44x^2-39x^3+18x^4-3x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A188556.P17341424251287310691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -25, 44, -39, 18, -3] [1, -6, 15, -20, 15, -6, 1] n

end

end A188556.P17341424251287310691

namespace A188556

/-- `ogf((6-25x+44x^2-39x^3+18x^4-3x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17341424251287310691.Spec : Prop :=
  ∀ n, P17341424251287310691.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P2471542906957635104

`∑[A188555(n)]+5`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188556

/-- `∑[A188555(n)]+5` -/
def P2471542906957635104.Spec : Prop :=
  ∀ n, P2471542906957635104.a n = A188556 (n + 1)

theorem P2471542906957635104.correct : P2471542906957635104.Spec := by
  intro n
  simp only [A188556, Nat.add_sub_cancel]

end A188556

/-! ## A188556.P1648946851555059266

`A188555(n+1)+A006261(n)`
-/

namespace A188556.P1648946851555059266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) + A006261 n

end

end A188556.P1648946851555059266

namespace A188556

/-- `A188555(n+1)+A006261(n)` -/
def P1648946851555059266.Spec : Prop :=
  ∀ n, P1648946851555059266.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P16674057501331771900

`A188557(n+1)-A008859(n)`
-/

namespace A188556.P16674057501331771900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - A008859 n

end

end A188556.P16674057501331771900

namespace A188556

/-- `A188557(n+1)-A008859(n)` -/
def P16674057501331771900.Spec : Prop :=
  ∀ n, P16674057501331771900.a n = A188556 (n + 1)

theorem P16674057501331771900.correct : P16674057501331771900.Spec := by
  intro n
  simp only [A188556, Nat.add_sub_cancel, A188556.P16674057501331771900.a, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A008859, A008859.P12512463086137342957.f1, A008859.P12512463086137342957.a, A188555, A188555.P17677957703824641780.a, A188557, A188557.P4941890526069849708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188556

/-! ## A188556.P4709281291121624057

`A188555(n+1)+Δ[A008859(n)]`
-/

namespace A188556.P4709281291121624057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188556.P4709281291121624057

namespace A188556

/-- `A188555(n+1)+Δ[A008859(n)]` -/
def P4709281291121624057.Spec : Prop :=
  ∀ n, P4709281291121624057.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P8609324330944492071

`A188557(n+1)-Δ[A008860(n)]`
-/

namespace A188556.P8609324330944492071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - (f1 (n + 1) - f1 n)

end

end A188556.P8609324330944492071

namespace A188556

/-- `A188557(n+1)-Δ[A008860(n)]` -/
def P8609324330944492071.Spec : Prop :=
  ∀ n, P8609324330944492071.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P9132423727643742792

`A188554(n+1)+A006261(n+1)`
-/

namespace A188556.P9132423727643742792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 1) + A006261 (n + 1)

end

end A188556.P9132423727643742792

namespace A188556

/-- `A188554(n+1)+A006261(n+1)` -/
def P9132423727643742792.Spec : Prop :=
  ∀ n, P9132423727643742792.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P1145442492868164065

`A188558(n+1)-A008860(n+1)`
-/

namespace A188556.P1145442492868164065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - A008860 (n + 1)

end

end A188556.P1145442492868164065

namespace A188556

/-- `A188558(n+1)-A008860(n+1)` -/
def P1145442492868164065.Spec : Prop :=
  ∀ n, P1145442492868164065.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P5838500304761630534

`A188557(n+1)-(A115567(n)+1)`
-/

namespace A188556.P5838500304761630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - (A115567 n + 1)

end

end A188556.P5838500304761630534

namespace A188556

/-- `A188557(n+1)-(A115567(n)+1)` -/
def P5838500304761630534.Spec : Prop :=
  ∀ n, P5838500304761630534.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P1566041906519109470

`Δ[A188557(n+1)]`
-/

namespace A188556.P1566041906519109470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188556.P1566041906519109470

namespace A188556

/-- `Δ[A188557(n+1)]` -/
def P1566041906519109470.Spec : Prop :=
  ∀ n, P1566041906519109470.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P12712012713281407556

`A188555(n+1)+Δ[A115567(n)]`
-/

namespace A188556.P12712012713281407556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188556.P12712012713281407556

namespace A188556

/-- `A188555(n+1)+Δ[A115567(n)]` -/
def P12712012713281407556.Spec : Prop :=
  ∀ n, P12712012713281407556.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P10007024108406249670

`A188557(n+2)-A188557(n+1)`
-/

namespace A188556.P10007024108406249670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 2) - A188557 (n + 1)

end

end A188556.P10007024108406249670

namespace A188556

/-- `A188557(n+2)-A188557(n+1)` -/
def P10007024108406249670.Spec : Prop :=
  ∀ n, P10007024108406249670.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P11935612998731475859

`A033547(n+1)+A161701(n+1)+2`
-/

namespace A188556.P11935612998731475859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (n + 1) + (A161701 (n + 1) + 2)

end

end A188556.P11935612998731475859

namespace A188556

/-- `A033547(n+1)+A161701(n+1)+2` -/
def P11935612998731475859.Spec : Prop :=
  ∀ n, P11935612998731475859.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P11126043735363303057

`A161701(n+1)+2*A000125(n+1)`
-/

namespace A188556.P11126043735363303057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 1) + 2 * A000125 (n + 1)

end

end A188556.P11126043735363303057

namespace A188556

/-- `A161701(n+1)+2*A000125(n+1)` -/
def P11126043735363303057.Spec : Prop :=
  ∀ n, P11126043735363303057.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P10359017506479500205

`A000125(n+1)+2+A006261(n+1)+n`
-/

namespace A188556.P10359017506479500205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 1) + 2 + (A006261 (n + 1) + (n : ℤ))

end

end A188556.P10359017506479500205

namespace A188556

/-- `A000125(n+1)+2+A006261(n+1)+n` -/
def P10359017506479500205.Spec : Prop :=
  ∀ n, P10359017506479500205.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P11857911627898498061

`Δ[Δ[A188558(n+1)]]`
-/

namespace A188556.P11857911627898498061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188556.P11857911627898498061

namespace A188556

/-- `Δ[Δ[A188558(n+1)]]` -/
def P11857911627898498061.Spec : Prop :=
  ∀ n, P11857911627898498061.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P4747891332164691808

`A055417(n+2)+A000389(n+1)`
-/

namespace A188556.P4747891332164691808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 (n + 2) + A000389 (n + 1)

end

end A188556.P4747891332164691808

namespace A188556

/-- `A055417(n+2)+A000389(n+1)` -/
def P4747891332164691808.Spec : Prop :=
  ∀ n, P4747891332164691808.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P14036368790455130287

`A161701(n+1)+A046127(n+2)`
-/

namespace A188556.P14036368790455130287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 1) + A046127 (n + 2)

end

end A188556.P14036368790455130287

namespace A188556

/-- `A161701(n+1)+A046127(n+2)` -/
def P14036368790455130287.Spec : Prop :=
  ∀ n, P14036368790455130287.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P9702908366128454266

`Δ[Δ[Δ[A188559(n+1)]]]`
-/

namespace A188556.P9702908366128454266
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188556.P9702908366128454266

namespace A188556

/-- `Δ[Δ[Δ[A188559(n+1)]]]` -/
def P9702908366128454266.Spec : Prop :=
  ∀ n, P9702908366128454266.a n = A188556 (n + 1)

end A188556

/-! ## A188556.P10769055161500817863

`A221948(n+3)+2*(n+2)`
-/

namespace A188556.P10769055161500817863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221948 (n + 3) + (2 * (n + 2) : ℤ)

end

end A188556.P10769055161500817863

namespace A188556

/-- `A221948(n+3)+2*(n+2)` -/
def P10769055161500817863.Spec : Prop :=
  ∀ n, P10769055161500817863.a n = A188556 (n + 1)

end A188556

/-!
# A188557: Number of 6 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188557, the canonical program `A188557.P4941890526069849708` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188557 has offset 1).

The definition of A188557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188557.P16652529474012342487

`ogf((7-36x+80x^2-96x^3+66x^4-24x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A188557.P16652529474012342487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -36, 80, -96, 66, -24, 4] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A188557.P16652529474012342487

namespace A188557

/-- `ogf((7-36x+80x^2-96x^3+66x^4-24x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P16652529474012342487.Spec : Prop :=
  ∀ n, P16652529474012342487.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P4941890526069849708

`A188556(n+1)+A008859(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188557

/-- `A188556(n+1)+A008859(n)` -/
def P4941890526069849708.Spec : Prop :=
  ∀ n, P4941890526069849708.a n = A188557 (n + 1)

theorem P4941890526069849708.correct : P4941890526069849708.Spec := by
  intro n
  simp only [A188557, Nat.add_sub_cancel]

end A188557

/-! ## A188557.P5742241943256925651

`A188558(n+1)-A008860(n)`
-/

namespace A188557.P5742241943256925651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - A008860 n

end

end A188557.P5742241943256925651

namespace A188557

/-- `A188558(n+1)-A008860(n)` -/
def P5742241943256925651.Spec : Prop :=
  ∀ n, P5742241943256925651.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P2783182544969836090

`A188556(n+1)+Δ[A008860(n)]`
-/

namespace A188557.P2783182544969836090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188557.P2783182544969836090

namespace A188557

/-- `A188556(n+1)+Δ[A008860(n)]` -/
def P2783182544969836090.Spec : Prop :=
  ∀ n, P2783182544969836090.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P11039464814490587314

`A188558(n+1)-Δ[A008861(n)]`
-/

namespace A188557.P11039464814490587314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - (f1 (n + 1) - f1 n)

end

end A188557.P11039464814490587314

namespace A188557

/-- `A188558(n+1)-Δ[A008861(n)]` -/
def P11039464814490587314.Spec : Prop :=
  ∀ n, P11039464814490587314.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P8089901990368952789

`A188555(n+1)+A008859(n+1)`
-/

namespace A188557.P8089901990368952789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 (n + 1) + A008859 (n + 1)

end

end A188557.P8089901990368952789

namespace A188557

/-- `A188555(n+1)+A008859(n+1)` -/
def P8089901990368952789.Spec : Prop :=
  ∀ n, P8089901990368952789.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P7546585052275372642

`A188559(n+1)-A008861(n+1)`
-/

namespace A188557.P7546585052275372642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - A008861 (n + 1)

end

end A188557.P7546585052275372642

namespace A188557

/-- `A188559(n+1)-A008861(n+1)` -/
def P7546585052275372642.Spec : Prop :=
  ∀ n, P7546585052275372642.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P16828766342149687679

`Δ[A188558(n+1)]`
-/

namespace A188557.P16828766342149687679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188557.P16828766342149687679

namespace A188557

/-- `Δ[A188558(n+1)]` -/
def P16828766342149687679.Spec : Prop :=
  ∀ n, P16828766342149687679.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P10182741893401609388

`A188556(n+1)+Δ[A116082(n)]`
-/

namespace A188557.P10182741893401609388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188557.P10182741893401609388

namespace A188557

/-- `A188556(n+1)+Δ[A116082(n)]` -/
def P10182741893401609388.Spec : Prop :=
  ∀ n, P10182741893401609388.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P7757403600239606940

`A188558(n+2)-A188558(n+1)`
-/

namespace A188557.P7757403600239606940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 2) - A188558 (n + 1)

end

end A188557.P7757403600239606940

namespace A188557

/-- `A188558(n+2)-A188558(n+1)` -/
def P7757403600239606940.Spec : Prop :=
  ∀ n, P7757403600239606940.a n = A188557 (n + 1)

end A188557

/-! ## A188557.P8859906882308869625

`Δ[Δ[A188559(n+1)]]`
-/

namespace A188557.P8859906882308869625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188557.P8859906882308869625

namespace A188557

/-- `Δ[Δ[A188559(n+1)]]` -/
def P8859906882308869625.Spec : Prop :=
  ∀ n, P8859906882308869625.a n = A188557 (n + 1)

end A188557

/-!
# A188558: Number of 7 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188558, the canonical program `A188558.P17038073912110487584` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188558 has offset 1).

The definition of A188558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188558.P17038073912110487584

`A188557(n)+a(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188558

/-- `A188557(n)+a(n-1)` -/
def P17038073912110487584.Spec : Prop :=
  ∀ n, P17038073912110487584.a n = A188558 (n + 1)

theorem P17038073912110487584.correct : P17038073912110487584.Spec := by
  intro n
  simp only [A188558, Nat.add_sub_cancel]

end A188558

/-! ## A188558.P2125842433052798350

`A188557(n+1)+A008860(n)`
-/

namespace A188558.P2125842433052798350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) + A008860 n

end

end A188558.P2125842433052798350

namespace A188558

/-- `A188557(n+1)+A008860(n)` -/
def P2125842433052798350.Spec : Prop :=
  ∀ n, P2125842433052798350.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P2829212405420065974

`A188559(n+1)-A008861(n)`
-/

namespace A188558.P2829212405420065974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - A008861 n

end

end A188558.P2829212405420065974

namespace A188558

/-- `A188559(n+1)-A008861(n)` -/
def P2829212405420065974.Spec : Prop :=
  ∀ n, P2829212405420065974.a n = A188558 (n + 1)

theorem P2829212405420065974.correct : P2829212405420065974.Spec := by
  intro n
  simp only [A188558, Nat.add_sub_cancel, A188558.P2829212405420065974.a, A188558.P17038073912110487584.a, A008861, A008861.P1219759825960697958.f1, A008861.P1219759825960697958.a, A188557, A188557.P4941890526069849708.a, A188559, A188559.P6003239586972994998.a, A008859, A008859.P12512463086137342957.f1, A008859.P12512463086137342957.a, A188556, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A188555, A188555.P17677957703824641780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188558

/-! ## A188558.P4747928311405170523

`A188559(n+1)-Δ[A008862(n)]`
-/

namespace A188558.P4747928311405170523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - (f1 (n + 1) - f1 n)

end

end A188558.P4747928311405170523

namespace A188558

/-- `A188559(n+1)-Δ[A008862(n)]` -/
def P4747928311405170523.Spec : Prop :=
  ∀ n, P4747928311405170523.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P6965150826891493637

`A188556(n+1)+A008860(n+1)`
-/

namespace A188558.P6965150826891493637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + A008860 (n + 1)

end

end A188558.P6965150826891493637

namespace A188558

/-- `A188556(n+1)+A008860(n+1)` -/
def P6965150826891493637.Spec : Prop :=
  ∀ n, P6965150826891493637.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P1275092325086315888

`Δ[A188559(n+1)]`
-/

namespace A188558.P1275092325086315888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188558.P1275092325086315888

namespace A188558

/-- `Δ[A188559(n+1)]` -/
def P1275092325086315888.Spec : Prop :=
  ∀ n, P1275092325086315888.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P11342588373274357549

`A188559(n+2)-A188559(n+1)`
-/

namespace A188558.P11342588373274357549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 2) - A188559 (n + 1)

end

end A188558.P11342588373274357549

namespace A188558

/-- `A188559(n+2)-A188559(n+1)` -/
def P11342588373274357549.Spec : Prop :=
  ∀ n, P11342588373274357549.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P16244899885787892905

`A188557(n+1)+Δ[Δ[A008862(n)]]`
-/

namespace A188558.P16244899885787892905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188558.P16244899885787892905

namespace A188558

/-- `A188557(n+1)+Δ[Δ[A008862(n)]]` -/
def P16244899885787892905.Spec : Prop :=
  ∀ n, P16244899885787892905.a n = A188558 (n + 1)

end A188558

/-! ## A188558.P12682976463984211575

`∑[A188557(A123108(2*n))]+1`
-/

namespace A188558.P12682976463984211575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A188558.P12682976463984211575

namespace A188558

/-- `∑[A188557(A123108(2*n))]+1` -/
def P12682976463984211575.Spec : Prop :=
  ∀ n, P12682976463984211575.a n = A188558 (n + 1)

end A188558

/-!
# A188559: Number of 8 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

The programs for A188559, the canonical program `A188559.P6003239586972994998` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188559 has offset 1).

The definition of A188559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188559.P6003239586972994998

`A188558(n+1)+A008861(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188559

/-- `A188558(n+1)+A008861(n)` -/
def P6003239586972994998.Spec : Prop :=
  ∀ n, P6003239586972994998.a n = A188559 (n + 1)

theorem P6003239586972994998.correct : P6003239586972994998.Spec := by
  intro n
  simp only [A188559, Nat.add_sub_cancel]

end A188559

/-! ## A188559.P4242682587287858711

`A188558(n+1)+Δ[A008862(n)]`
-/

namespace A188559.P4242682587287858711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188559.P4242682587287858711

namespace A188559

/-- `A188558(n+1)+Δ[A008862(n)]` -/
def P4242682587287858711.Spec : Prop :=
  ∀ n, P4242682587287858711.a n = A188559 (n + 1)

end A188559

/-! ## A188559.P403329631306288945

`A188557(n+1)+A008861(n+1)`
-/

namespace A188559.P403329631306288945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) + A008861 (n + 1)

end

end A188559.P403329631306288945

namespace A188559

/-- `A188557(n+1)+A008861(n+1)` -/
def P403329631306288945.Spec : Prop :=
  ∀ n, P403329631306288945.a n = A188559 (n + 1)

end A188559

/-! ## A188559.P4232181820669987092

`A188558(n+1)+A116690(n)+1`
-/

namespace A188559.P4232181820669987092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) + (A116690 n + 1)

end

end A188559.P4232181820669987092

namespace A188559

/-- `A188558(n+1)+A116690(n)+1` -/
def P4232181820669987092.Spec : Prop :=
  ∀ n, P4232181820669987092.a n = A188559 (n + 1)

end A188559

/-! ## A188559.P16072079237383037099

`A188557(n+1)+Δ[A008862(n+1)]`
-/

namespace A188559.P16072079237383037099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) + (f1 (n + 1) - f1 n)

end

end A188559.P16072079237383037099

namespace A188559

/-- `A188557(n+1)+Δ[A008862(n+1)]` -/
def P16072079237383037099.Spec : Prop :=
  ∀ n, P16072079237383037099.a n = A188559 (n + 1)

end A188559

/-! ## A188559.P6176146531266599012

`A188553(A167499(n+6)+3)`
-/

namespace A188559.P6176146531266599012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188553 (A167499 (n + 6) + 3).toNat

end

end A188559.P6176146531266599012

namespace A188559

/-- `A188553(A167499(n+6)+3)` -/
def P6176146531266599012.Spec : Prop :=
  ∀ n, P6176146531266599012.a n = A188559 (n + 1)

end A188559

/-! ## A188559.P16873180434691657025

`A104732(A052905(n+6)-3)`
-/

namespace A188559.P16873180434691657025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A052905 (n + 6) - 3).toNat

end

end A188559.P16873180434691657025

namespace A188559

/-- `A104732(A052905(n+6)-3)` -/
def P16873180434691657025.Spec : Prop :=
  ∀ n, P16873180434691657025.a n = A188559 (n + 1)

end A188559

/-!
# A188560: Number of n X n binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188560, there is no canonical definition to state claims against.
-/

/-! ## A188560.P2084194896915442812

`A188567(∑[4*n]+1)`
-/

namespace A188560.P2084194896915442812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188560.P2084194896915442812

/-! ## A188560.P23536010484894689

`record[A003982(n)*A188567(n+1)]`
-/

namespace A188560.P23536010484894689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188560.P23536010484894689

/-! ## A188560.P5829589585490905720

`record[gcd(A114327(n), A188567(n+1))]`
-/

namespace A188560.P5829589585490905720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A188567 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188560.P5829589585490905720

/-! ## A188560.P11848092340480916627

`record[root(A188567(n+1), A303950(n+1))]`
-/

namespace A188560.P11848092340480916627
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188567 (n + 1) : ℝ) ^ (1 / (A303950 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188560.P11848092340480916627

/-! ## A188560.P4879317453627997874

`A188567(A001844(n))+A014083(n)`
-/

namespace A188560.P4879317453627997874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A001844 n).toNat + A014083 n

end

end A188560.P4879317453627997874

/-!
# A188561: Number of nX3 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188561, there is no canonical definition to state claims against.
-/

/-! ## A188561.P10319633083788510287

`A188567(∑[n+2]+4)`
-/

namespace A188561.P10319633083788510287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188561.P10319633083788510287

/-! ## A188561.P3024656633309997511

`or(char[1], A188567(A167614(n+1)))`
-/

namespace A188561.P3024656633309997511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A188567 (A167614 (n + 1)).toNat)

end

end A188561.P3024656633309997511

/-! ## A188561.P14487889588467608158

`lcm(A020985(n), A188567(A167614(n+1)))`
-/

namespace A188561.P14487889588467608158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A188567 (A167614 (n + 1)).toNat)

end

end A188561.P14487889588467608158

/-! ## A188561.P7804367735644974047

`or(A188567(A167614(n+1)), A322308(n))`
-/

namespace A188561.P7804367735644974047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188567 (A167614 (n + 1)).toNat) (A322308 n)

end

end A188561.P7804367735644974047

/-! ## A188561.P14660957071459317537

`A000041(C(n, 47))*A188567(A167614(n+1))`
-/

namespace A188561.P14660957071459317537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 47) * A188567 (A167614 (n + 1)).toNat

end

end A188561.P14660957071459317537

/-!
# A188562: Number of nX4 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188562, there is no canonical definition to state claims against.
-/

/-! ## A188562.P4785571405142390157

`A188567(∑[n+3]+7)`
-/

namespace A188562.P4785571405142390157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188562.P4785571405142390157

/-! ## A188562.P6961604591078723900

`A188567(A055999(n)+10)+A000038(n+1)`
-/

namespace A188562.P6961604591078723900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A055999 n + 10).toNat + A000038 (n + 1)

end

end A188562.P6961604591078723900

/-! ## A188562.P3768830648886924687

`A230533(n+1)+A188567(A055999(n)+10)`
-/

namespace A188562.P3768830648886924687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230533 (n + 1) + A188567 (A055999 n + 10).toNat

end

end A188562.P3768830648886924687

/-! ## A188562.P11774845939295743233

`A188567(A055999(n)+10)+A000007(3*n+2)`
-/

namespace A188562.P11774845939295743233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A055999 n + 10).toNat + A000007 (3 * n + 2)

end

end A188562.P11774845939295743233

/-! ## A188562.P1085536986894306276

`A188567(A055998(n+2))+A061858(n)`
-/

namespace A188562.P1085536986894306276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A055998 (n + 2)).toNat + A061858 n

end

end A188562.P1085536986894306276

/-!
# A188563: Number of nX5 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188563, there is no canonical definition to state claims against.
-/

/-! ## A188563.P18322118123995255651

`A188567(A167499(n+3))`
-/

namespace A188563.P18322118123995255651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A167499 (n + 3)).toNat

end

end A188563.P18322118123995255651

/-! ## A188563.P12589489269935957179

`A188567(A056000(n)+15)`
-/

namespace A188563.P12589489269935957179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A056000 n + 15).toNat

end

end A188563.P12589489269935957179

/-! ## A188563.P3344257465724389098

`A188567(Δ[A000125(n+5)]+n-(2*n+1))`
-/

namespace A188563.P3344257465724389098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (f1 (n + 1) - f1 n + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A188563.P3344257465724389098

/-! ## A188563.P15066582140653642367

`A188567(A374005(n+1))`
-/

namespace A188563.P15066582140653642367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A374005 (n + 1)).toNat

end

end A188563.P15066582140653642367

/-! ## A188563.P641063534000153919

`A188567(A046691(n+3))`
-/

namespace A188563.P641063534000153919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A046691 (n + 3)).toNat

end

end A188563.P641063534000153919

/-!
# A188564: Number of nX6 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188564, there is no canonical definition to state claims against.
-/

/-! ## A188564.P9863344327619595831

`A188567(A167499(n+4)+1)`
-/

namespace A188564.P9863344327619595831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A167499 (n + 4) + 1).toNat

end

end A188564.P9863344327619595831

/-! ## A188564.P3617717916799422150

`A188567(A034111(n+1)-A055999(n))`
-/

namespace A188564.P3617717916799422150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A034111 (n + 1) - A055999 n).toNat

end

end A188564.P3617717916799422150

/-! ## A188564.P9645023358038512203

`A188567(A374007(n+1))`
-/

namespace A188564.P9645023358038512203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A374007 (n + 1)).toNat

end

end A188564.P9645023358038512203

/-! ## A188564.P7853875066769756864

`A188567(A052905(n+3))`
-/

namespace A188564.P7853875066769756864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A052905 (n + 3)).toNat

end

end A188564.P7853875066769756864

/-! ## A188564.P5053659285173580742

`A188567(eq[3, A219347(n)])`
-/

namespace A188564.P5053659285173580742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188564.P5053659285173580742

/-!
# A188565: Number of nX7 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188565, there is no canonical definition to state claims against.
-/

/-! ## A188565.P17066561512353225318

`A188567(eq[11, A066657(n)])`
-/

namespace A188565.P17066561512353225318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188565.P17066561512353225318

/-! ## A188565.P6350075023996645984

`A188567(Δ[A000125(n+5)]+n+12)`
-/

namespace A188565.P6350075023996645984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (f1 (n + 1) - f1 n + (n : ℤ) + 12).toNat

end

end A188565.P6350075023996645984

/-! ## A188565.P18038313616080754816

`A188567(A374008(n+1))`
-/

namespace A188565.P18038313616080754816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A374008 (n + 1)).toNat

end

end A188565.P18038313616080754816

/-! ## A188565.P9469014283959710228

`A188567(A134227(n+5))`
-/

namespace A188565.P9469014283959710228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A134227 (n + 5)).toNat

end

end A188565.P9469014283959710228

/-! ## A188565.P5489024929091618738

`A188567(eq[4, A219347(n)])`
-/

namespace A188565.P5489024929091618738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188565.P5489024929091618738

/-!
# A188566: Number of nX8 binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188566, there is no canonical definition to state claims against.
-/

/-! ## A188566.P13268592648704362552

`A188567(A167487(n+6)+1)`
-/

namespace A188566.P13268592648704362552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A167487 (n + 6) + 1).toNat

end

end A188566.P13268592648704362552

/-! ## A188566.P2718372455126445828

`A188567(eq[9, A131818(n+1)])`
-/

namespace A188566.P2718372455126445828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188566.P2718372455126445828

/-! ## A188566.P9555813381974527552

`A188567(A374009(n+1))`
-/

namespace A188566.P9555813381974527552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (A374009 (n + 1)).toNat

end

end A188566.P9555813381974527552

/-! ## A188566.P16178545442812104409

`A188567(eq[5, A219347(n)])`
-/

namespace A188566.P16178545442812104409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188566.P16178545442812104409

/-! ## A188566.P10647496249759231839

`A188567(eq[7, A193592(n)])`
-/

namespace A188566.P10647496249759231839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188566.P10647496249759231839

/-!
# A188567: T(n,k)=Number of nXk binary arrays without the pattern 1 1 1 diagonally, vertically or horizontally.

The programs for A188567, there is no canonical definition to state claims against.
-/

/-! ## A188567.P17116476126131199441

`A206994(A084193(∑[n]))`
-/

namespace A188567.P17116476126131199441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206994 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A188567.P17116476126131199441

/-! ## A188567.P12120729608254300531

`A181224(A004885(n+2))`
-/

namespace A188567.P12120729608254300531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A004885 (n + 2)).toNat

end

end A188567.P12120729608254300531

/-! ## A188567.P10320060480441206662

`A181224(A004896(n+2))`
-/

namespace A188567.P10320060480441206662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A004896 (n + 2)).toNat

end

end A188567.P10320060480441206662

/-! ## A188567.P11505840327555431820

`A181224(A004907(n+2))`
-/

namespace A188567.P11505840327555431820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A004907 (n + 2)).toNat

end

end A188567.P11505840327555431820

/-! ## A188567.P10336691577459336018

`A181224(A004918(n+2))`
-/

namespace A188567.P10336691577459336018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181224 (A004918 (n + 2)).toNat

end

end A188567.P10336691577459336018

/-!
# A188568: Enumeration table T(n,k) by descending antidiagonals. The order of the list - if n is odd: T(n,1), T(2,n-1), T(n-2,3), ..., T(n-1,2), T(1,n); if n is even: T(1,n), T(n-1,2), T(3,n-2), ..., T(2,n-1), T(n,1).

The programs for A188568, there is no canonical definition to state claims against.
-/

/-! ## A188568.P4967553052751729285

`A208233(n+1)+A057944(n)`
-/

namespace A188568.P4967553052751729285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1) + A057944 n

end

end A188568.P4967553052751729285

/-! ## A188568.P11221880576209907027

`A208233(n+1)+n-A002262(n)`
-/

namespace A188568.P11221880576209907027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1) + ((n : ℤ) - A002262 n)

end

end A188568.P11221880576209907027

/-! ## A188568.P2230419545298899397

`A208233(n+1)+n+1-A002260(n+1)`
-/

namespace A188568.P2230419545298899397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A188568.P2230419545298899397

/-! ## A188568.P257597479213629122

`A208233(n+1)+A000217(A003056(n))`
-/

namespace A188568.P257597479213629122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (n + 1) + A000217 (A003056 n).toNat

end

end A188568.P257597479213629122

/-! ## A188568.P1449282261163387138

`A208234(A061579(n)+1)+A057944(n)`
-/

namespace A188568.P1449282261163387138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A061579 n + 1).toNat + A057944 n

end

end A188568.P1449282261163387138

/-! ## A188568.P9533099125748448962

`A064788(A081344(n+1))`
-/

namespace A188568.P9533099125748448962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (A081344 (n + 1)).toNat

end

end A188568.P9533099125748448962

/-! ## A188568.P7214270874321415701

`A194280(A060736(n+1))`
-/

namespace A188568.P7214270874321415701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A060736 (n + 1)).toNat

end

end A188568.P7214270874321415701

/-! ## A188568.P13154743753562831543

`A194280(A220508(n)+1)`
-/

namespace A188568.P13154743753562831543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A220508 n + 1).toNat

end

end A188568.P13154743753562831543

/-! ## A188568.P10011050617691101484

`A194280(A060734(A056023(A056011(n+1))))`
-/

namespace A188568.P10011050617691101484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A060734 (A056023 (A056011 (n + 1)).toNat).toNat).toNat

end

end A188568.P10011050617691101484

/-! ## A188568.P16520119246954659565

`A194280(A213928(A064788(A213928(n+1))))`
-/

namespace A188568.P16520119246954659565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A213928 (A064788 (A213928 (n + 1)).toNat).toNat).toNat

end

end A188568.P16520119246954659565

/-! ## A188568.P14251829036516453868

`A194280(A219159(A064788(A219159(n+1))))`
-/

namespace A188568.P14251829036516453868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194280 (A219159 (A064788 (A219159 (n + 1)).toNat).toNat).toNat

end

end A188568.P14251829036516453868

/-! ## A188568.P246806703770534499

`A211377(A216252(A081344(A213196(A211377(n+1)))))`
-/

namespace A188568.P246806703770534499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216252 (A081344 (A213196 (A211377 (n + 1)).toNat).toNat).toNat).toNat

end

end A188568.P246806703770534499

/-! ## A188568.P10452772988640505794

`A211377(A216253(A060734(n+1)))`
-/

namespace A188568.P10452772988640505794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A216253 (A060734 (n + 1)).toNat).toNat

end

end A188568.P10452772988640505794

/-! ## A188568.P10622685413255722030

`A375797(∑[n]+1)`
-/

namespace A188568.P10622685413255722030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375797 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188568.P10622685413255722030

/-!
# A188569: Degree of the n-th partition class polynomial Hpart_n(x).

The programs for A188569, there is no canonical definition to state claims against.
-/

/-! ## A188569.P10487969519190382476

`A321440(3*(n+1))`
-/

namespace A188569.P10487969519190382476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 (3 * (n + 1))

end

end A188569.P10487969519190382476

/-! ## A188569.P7781657683095060637

`A238872(6*(n+1))`
-/

namespace A188569.P7781657683095060637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (6 * (n + 1))

end

end A188569.P7781657683095060637

/-! ## A188569.P3230256272186925520

`A006371(12*n+11)`
-/

namespace A188569.P3230256272186925520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (12 * n + 11)

end

end A188569.P3230256272186925520

/-! ## A188569.P4456435951902232276

`abs(A292511(6*n+5))`
-/

namespace A188569.P4456435951902232276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292511 (6 * n + 5)|

end

end A188569.P4456435951902232276

/-! ## A188569.P9845020391828499610

`A058305(2*12*(n+1)-1)`
-/

namespace A188569.P9845020391828499610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (2 * (12 * (n + 1)) - 1)

end

end A188569.P9845020391828499610

/-! ## A188569.P3778895070518748055

`abs(A058305(A183010(n+1)))`
-/

namespace A188569.P3778895070518748055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058305 (A183010 (n + 1)).toNat|

end

end A188569.P3778895070518748055

/-! ## A188569.P10317294923482534950

`-A292511(A016789(2*n+1))`
-/

namespace A188569.P10317294923482534950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292511 (A016789 (2 * n + 1)).toNat

end

end A188569.P10317294923482534950

/-!
# A188570: a(n) = coefficient of the term that is independent of sqrt(2) and sqrt(3) in the expansion of (1 + sqrt(2) + sqrt(3))^n.

The programs for A188570, the canonical program `A188570.P11642211153730754809` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188570 has offset 0).

The definition of A188570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188570.P11642211153730754809

`4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188570

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` -/
def P11642211153730754809.Spec : Prop :=
  ∀ n, P11642211153730754809.a n = A188570 n

theorem P11642211153730754809.correct : P11642211153730754809.Spec := by
  intro n
  simp only [A188570]

end A188570

/-! ## A188570.P669145866425859769

`Δ[A188572(n)]-2*A188573(n)`
-/

namespace A188570.P669145866425859769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A188573 n

end

end A188570.P669145866425859769

namespace A188570

/-- `Δ[A188572(n)]-2*A188573(n)` -/
def P669145866425859769.Spec : Prop :=
  ∀ n, P669145866425859769.a n = A188570 n

end A188570

/-! ## A188570.P2658803102527871739

`Δ[A188571(n)]-3*A188573(n)`
-/

namespace A188570.P2658803102527871739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3 * A188573 n

end

end A188570.P2658803102527871739

namespace A188570

/-- `Δ[A188571(n)]-3*A188573(n)` -/
def P2658803102527871739.Spec : Prop :=
  ∀ n, P2658803102527871739.a n = A188570 n

end A188570

/-! ## A188570.P5199604575625008635

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377109(#)]`
-/

namespace A188570.P5199604575625008635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377109 k : ℚ)

end

end A188570.P5199604575625008635

namespace A188570

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377109(#)]` -/
def P5199604575625008635.Spec : Prop :=
  ∀ n, P5199604575625008635.a n = (A188570 n : ℚ)

end A188570

/-!
# A188571: a(n) = coefficient of sqrt(2) in the expansion of (1 + sqrt(2) + sqrt(3))^n.

The programs for A188571, the canonical program `A188571.P448872155368857410` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188571 has offset 0).

The definition of A188571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188571.P17561701000397719372

`ogf((x-2x^2+2x^3)/(1-4x-4x^2+16x^3-8x^4))`
-/

namespace A188571.P17561701000397719372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -4, -4, 16, -8] n

end

end A188571.P17561701000397719372

namespace A188571

/-- `ogf((x-2x^2+2x^3)/(1-4x-4x^2+16x^3-8x^4))` -/
def P17561701000397719372.Spec : Prop :=
  ∀ n, P17561701000397719372.a n = A188571 n

end A188571

/-! ## A188571.P448872155368857410

`4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188571

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` -/
def P448872155368857410.Spec : Prop :=
  ∀ n, P448872155368857410.a n = A188571 n

theorem P448872155368857410.correct : P448872155368857410.Spec := by
  intro n
  simp only [A188571]

end A188571

/-! ## A188571.P13271907000665676920

`Δ[A188573(n)]-A188572(n)`
-/

namespace A188571.P13271907000665676920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188572 n

end

end A188571.P13271907000665676920

namespace A188571

/-- `Δ[A188573(n)]-A188572(n)` -/
def P13271907000665676920.Spec : Prop :=
  ∀ n, P13271907000665676920.a n = A188571 n

end A188571

/-! ## A188571.P15189257613715959860

`A188573(n+1)-(A188573(n)+A188572(n))`
-/

namespace A188571.P15189257613715959860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188573 (n + 1) - (A188573 n + A188572 n)

end

end A188571.P15189257613715959860

namespace A188571

/-- `A188573(n+1)-(A188573(n)+A188572(n))` -/
def P15189257613715959860.Spec : Prop :=
  ∀ n, P15189257613715959860.a n = A188571 n

end A188571

/-! ## A188571.P8871423052367865861

`Δ[3*A188573(n)-A188570(n)]`
-/

namespace A188571.P8871423052367865861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A188573 n - A188570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188571.P8871423052367865861

namespace A188571

/-- `Δ[3*A188573(n)-A188570(n)]` -/
def P8871423052367865861.Spec : Prop :=
  ∀ n, P8871423052367865861.a n = A188571 n

end A188571

/-! ## A188571.P3434258060673541886

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377110(#)]`
-/

namespace A188571.P3434258060673541886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377110 k : ℚ)

end

end A188571.P3434258060673541886

namespace A188571

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377110(#)]` -/
def P3434258060673541886.Spec : Prop :=
  ∀ n, P3434258060673541886.a n = (A188571 n : ℚ)

end A188571

/-!
# A188572: a(n) = coefficient of sqrt(3) in the expansion of (1 + sqrt(2) + sqrt(3))^n sequence.

The programs for A188572, the canonical program `A188572.P2063599917697730357` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188572 has offset 0).

The definition of A188572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188572.P6796160742759053586

`ogf((x-2x^2)/(1-4x-4x^2+16x^3-8x^4))`
-/

namespace A188572.P6796160742759053586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -4, -4, 16, -8] n

end

end A188572.P6796160742759053586

namespace A188572

/-- `ogf((x-2x^2)/(1-4x-4x^2+16x^3-8x^4))` -/
def P6796160742759053586.Spec : Prop :=
  ∀ n, P6796160742759053586.a n = A188572 n

end A188572

/-! ## A188572.P2063599917697730357

`4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188572

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` -/
def P2063599917697730357.Spec : Prop :=
  ∀ n, P2063599917697730357.a n = A188572 n

theorem P2063599917697730357.correct : P2063599917697730357.Spec := by
  intro n
  simp only [A188572]

end A188572

/-! ## A188572.P10499105120085198923

`Δ[A188573(n)]-A188571(n)`
-/

namespace A188572.P10499105120085198923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188571 n

end

end A188572.P10499105120085198923

namespace A188572

/-- `Δ[A188573(n)]-A188571(n)` -/
def P10499105120085198923.Spec : Prop :=
  ∀ n, P10499105120085198923.a n = A188572 n

end A188572

/-! ## A188572.P3154557335169809826

`A188573(n+1)-(A188573(n)+A188571(n))`
-/

namespace A188572.P3154557335169809826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188573 (n + 1) - (A188573 n + A188571 n)

end

end A188572.P3154557335169809826

namespace A188572

/-- `A188573(n+1)-(A188573(n)+A188571(n))` -/
def P3154557335169809826.Spec : Prop :=
  ∀ n, P3154557335169809826.a n = A188572 n

end A188572

/-! ## A188572.P13163615083640537543

`Δ[A188570(n)-2*A188573(n)]`
-/

namespace A188572.P13163615083640537543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188570 n - 2 * A188573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188572.P13163615083640537543

namespace A188572

/-- `Δ[A188570(n)-2*A188573(n)]` -/
def P13163615083640537543.Spec : Prop :=
  ∀ n, P13163615083640537543.a n = A188572 n

end A188572

/-! ## A188572.P16235416779914576714

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377111(#)]`
-/

namespace A188572.P16235416779914576714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377111 k : ℚ)

end

end A188572.P16235416779914576714

namespace A188572

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377111(#)]` -/
def P16235416779914576714.Spec : Prop :=
  ∀ n, P16235416779914576714.a n = (A188572 n : ℚ)

end A188572

/-!
# A188573: a(n) = coefficient of the sqrt(6) term in (1 + sqrt(2) + sqrt(3))^n.

The programs for A188573, the canonical program `A188573.P5783165424590470043` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188573 has offset 0).

The definition of A188573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188573.P16665925257533021384

`ogf((2x^2-2x^3)/(1-4x-4x^2+16x^3-8x^4))`
-/

namespace A188573.P16665925257533021384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -2] [1, -4, -4, 16, -8] n

end

end A188573.P16665925257533021384

namespace A188573

/-- `ogf((2x^2-2x^3)/(1-4x-4x^2+16x^3-8x^4))` -/
def P16665925257533021384.Spec : Prop :=
  ∀ n, P16665925257533021384.a n = A188573 n

end A188573

/-! ## A188573.P5783165424590470043

`4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188573

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)+8*a(n-4)` -/
def P5783165424590470043.Spec : Prop :=
  ∀ n, P5783165424590470043.a n = A188573 n

theorem P5783165424590470043.correct : P5783165424590470043.Spec := by
  intro n
  simp only [A188573]

end A188573

/-! ## A188573.P13755917978124974304

`Δ[A188571(n)-A188572(n)]`
-/

namespace A188573.P13755917978124974304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188571 n - A188572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188573.P13755917978124974304

namespace A188573

/-- `Δ[A188571(n)-A188572(n)]` -/
def P13755917978124974304.Spec : Prop :=
  ∀ n, P13755917978124974304.a n = A188573 n

end A188573

/-! ## A188573.P17474798750275072871

`(Δ[A188572(n)]-A188570(n))/2`
-/

namespace A188573.P17474798750275072871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188572 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A188570 n : ℚ) / 2

end

end A188573.P17474798750275072871

namespace A188573

/-- `(Δ[A188572(n)]-A188570(n))/2` -/
def P17474798750275072871.Spec : Prop :=
  ∀ n, P17474798750275072871.a n = (A188573 n : ℚ)

end A188573

/-! ## A188573.P7398511977256274834

`(Δ[A188571(n)]-A188570(n))/3`
-/

namespace A188573.P7398511977256274834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A188570 n : ℚ) / 3

end

end A188573.P7398511977256274834

namespace A188573

/-- `(Δ[A188571(n)]-A188570(n))/3` -/
def P7398511977256274834.Spec : Prop :=
  ∀ n, P7398511977256274834.a n = (A188573 n : ℚ)

end A188573

/-! ## A188573.P11021561258440550381

`∑{#}[n, (-1)^(n-#)*C(n, #)*A377112(#)]`
-/

namespace A188573.P11021561258440550381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A377112 k : ℚ)

end

end A188573.P11021561258440550381

namespace A188573

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A377112(#)]` -/
def P11021561258440550381.Spec : Prop :=
  ∀ n, P11021561258440550381.a n = (A188573 n : ℚ)

end A188573

/-!
# A188575: Number of non-complete compositions of n.

The programs for A188575, there is no canonical definition to state claims against.
-/

/-! ## A188575.P17921518923129386299

`A356846(1+n)+A251729(n+1)`
-/

namespace A188575.P17921518923129386299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356846 (1 + n) + A251729 (n + 1)

end

end A188575.P17921518923129386299

/-! ## A188575.P18327903186608222511

`2^n-A107429(n+1)`
-/

namespace A188575.P18327903186608222511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A107429 (n + 1)

end

end A188575.P18327903186608222511

/-! ## A188575.P17159276756650642212

`abs(A107429(n+1)-A000079(n))`
-/

namespace A188575.P17159276756650642212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107429 (n + 1) - A000079 n|

end

end A188575.P17159276756650642212

/-! ## A188575.P1461307770203296958

`and(-A107429(n+1), A000225(n))`
-/

namespace A188575.P1461307770203296958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A107429 (n + 1)) (A000225 n)

end

end A188575.P1461307770203296958

/-! ## A188575.P7032781054695961045

`A000918(n)+2-A107429(n+1)`
-/

namespace A188575.P7032781054695961045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A107429 (n + 1))

end

end A188575.P7032781054695961045

/-! ## A188575.P9406108523388470350

`abs(A011782(n+1)-A107429(n+1))`
-/

namespace A188575.P9406108523388470350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A107429 (n + 1)|

end

end A188575.P9406108523388470350

/-! ## A188575.P15626224241732389819

`A000007(n+1)-(A107429(n+1)-A000079(n))`
-/

namespace A188575.P15626224241732389819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A107429 (n + 1) - A000079 n)

end

end A188575.P15626224241732389819

/-! ## A188575.P645529270666787936

`A001523(n+1)+A115981(n+1)-A107429(n+1)`
-/

namespace A188575.P645529270666787936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) + (A115981 (n + 1) - A107429 (n + 1))

end

end A188575.P645529270666787936

/-!
# A188576: Number of compositions of n with the LMV property.

The programs for A188576, there is no canonical definition to state claims against.
-/

/-! ## A188576.P3085340739862288136

`A049918(n+1)%A062504(n²)`
-/

namespace A188576.P3085340739862288136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049918 (n + 1)) (A062504 (n ^ 2))

end

end A188576.P3085340739862288136

/-! ## A188576.P13648334921723662097

`A049918(n+1)-A105348(A003683(n))`
-/

namespace A188576.P13648334921723662097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049918 (n + 1) - A105348 (A003683 n).toNat

end

end A188576.P13648334921723662097

/-! ## A188576.P17711393634618420371

`A049918(A008730(n))%A259943(n+1)`
-/

namespace A188576.P17711393634618420371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049918 (A008730 n).toNat) (A259943 (n + 1))

end

end A188576.P17711393634618420371

/-! ## A188576.P12092638558385286748

`and(A049918(n+1), A086099(A094388(n)))`
-/

namespace A188576.P12092638558385286748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049918 (n + 1)) (A086099 (A094388 n).toNat)

end

end A188576.P12092638558385286748

/-! ## A188576.P5161228495824479348

`A028310(A049918(n+1))%A259943(n+1)`
-/

namespace A188576.P5161228495824479348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A049918 (n + 1)).toNat) (A259943 (n + 1))

end

end A188576.P5161228495824479348

/-!
# A188577: Sum of the largest missing values in all compositions of n with the LMV property.

The programs for A188577, there is no canonical definition to state claims against.
-/

/-! ## A188577.P13818370957400090096

`A262689(A129160(n+1))-1`
-/

namespace A188577.P13818370957400090096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A129160 (n + 1)).toNat - 1

end

end A188577.P13818370957400090096

/-!
# A188578: Expansion of (1 - x^3) * (1 - x^5) * (1 - x^6) / (1 - x^15) in powers of x.

The programs for A188578, the canonical program `A188578.P16934499551718335768` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188578 has offset 0).

The definition of A188578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188578.P16934499551718335768

`ogf((1-x-x^6+x^7)/(1-x+x^3-x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188578

/-- `ogf((1-x-x^6+x^7)/(1-x+x^3-x^4+x^5-x^7+x^8))` -/
def P16934499551718335768.Spec : Prop :=
  ∀ n, P16934499551718335768.a n = A188578 n

theorem P16934499551718335768.correct : P16934499551718335768.Spec := by
  intro n
  simp only [A188578]

end A188578

/-!
# A188579: Numbers m for which max_{2<=k<(m-2)/2} Sum_{d>1: d|m-k, k|m-d} 1 = 3.

The programs for A188579, there is no canonical definition to state claims against.
-/

/-! ## A188579.P12151272980379639875

`eq[3, A188550(n+4)]+4`
-/

namespace A188579.P12151272980379639875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188550 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A188579.P12151272980379639875

/-! ## A188579.P13831377698670240334

`A020705(eq[3, A188550(n+4)])`
-/

namespace A188579.P13831377698670240334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188550 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188579.P13831377698670240334

/-! ## A188579.P8263424438766939210

`A334861(A336116(2*(n+1)))+A334102(n+1)`
-/

namespace A188579.P8263424438766939210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (A336116 (2 * (n + 1))).toNat + A334102 (n + 1)

end

end A188579.P8263424438766939210

/-! ## A188579.P12229572523022346665

`A036234(A345205(3*n+1)+A060967(2*n))`
-/

namespace A188579.P12229572523022346665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A345205 (3 * n + 1) + A060967 (2 * n)).toNat

end

end A188579.P12229572523022346665

/-! ## A188579.P2428917929407503182

`A036234(A345205(3*n+1)+A060970(4*n))`
-/

namespace A188579.P2428917929407503182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A345205 (3 * n + 1) + A060970 (4 * n)).toNat

end

end A188579.P2428917929407503182

/-!
# A188580: Number of words of length n over an alphabet of size 5 which do not contain a run of 5 identical letters.

The programs for A188580, the canonical program `A188580.P16552747066726778049` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188580 has offset 0).

The definition of A188580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188580.P16552747066726778049

`ogf((1+x+x^2+x^3+x^4)/(1-4x-4x^2-4x^3-4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188580

/-- `ogf((1+x+x^2+x^3+x^4)/(1-4x-4x^2-4x^3-4x^4))` -/
def P16552747066726778049.Spec : Prop :=
  ∀ n, P16552747066726778049.a n = A188580 n

theorem P16552747066726778049.correct : P16552747066726778049.Spec := by
  intro n
  simp only [A188580]

end A188580

/-! ## A188580.P5347376107552481613

`and(5^n, A214880(5^n))`
-/

namespace A188580.P5347376107552481613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 ^ n : ℤ) (A214880 (5 ^ n))

end

end A188580.P5347376107552481613

namespace A188580

/-- `and(5^n, A214880(5^n))` -/
def P5347376107552481613.Spec : Prop :=
  ∀ n, P5347376107552481613.a n = A188580 n

end A188580

/-!
# A188581: Inverse Moebius transform of A000688, the number of factorizations of n into prime powers greater than 1.

The programs for A188581, there is no canonical definition to state claims against.
-/

/-! ## A188581.P642045133698235813

`∑{d}[n+1, A000688(#)]`
-/

namespace A188581.P642045133698235813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000688 d

end

end A188581.P642045133698235813

/-! ## A188581.P8032686768012159234

`∏{e}[n+1, A000070(#)]`
-/

namespace A188581.P8032686768012159234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000070 (Nat.factorization (f1 n) p)

end

end A188581.P8032686768012159234

/-! ## A188581.P13363471345531052267

`∏{e}[n+1, A025065(2*#)]`
-/

namespace A188581.P13363471345531052267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025065 (2 * Nat.factorization (f1 n) p)

end

end A188581.P13363471345531052267

/-! ## A188581.P10172467860541555919

`∑{d}[n+1, A000005(#)*A188585((n+1)/#)]`
-/

namespace A188581.P10172467860541555919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A188585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A188581.P10172467860541555919

/-! ## A188581.P9222787826153344657

`∑{d}[A003961(n+1), A101872(#)]`
-/

namespace A188581.P9222787826153344657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A101872 d

end

end A188581.P9222787826153344657

/-! ## A188581.P14427012818867092076

`∑{d}[A003961(n+1), A104404(#)]`
-/

namespace A188581.P14427012818867092076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A104404 d

end

end A188581.P14427012818867092076

/-! ## A188581.P14335504772730402161

`∑{d}[A064988(n+1), A104404(#)]`
-/

namespace A188581.P14335504772730402161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A104404 d

end

end A188581.P14335504772730402161

/-!
# A188582: Decimal expansion of sqrt(2) - 1.

The programs for A188582, there is no canonical definition to state claims against.
-/

/-! ## A188582.P295013660563864339

`A002193(n+1)`
-/

namespace A188582.P295013660563864339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1 + 1)

end

end A188582.P295013660563864339

/-! ## A188582.P14022669588162501151

`9-A101465(n)`
-/

namespace A188582.P14022669588162501151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A101465 n

end

end A188582.P14022669588162501151

/-! ## A188582.P5919279748995327224

`A014176(n+1)`
-/

namespace A188582.P5919279748995327224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1 + 1)

end

end A188582.P5919279748995327224

/-! ## A188582.P5282675047550521257

`A020807(n+1)`
-/

namespace A188582.P5282675047550521257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020807 (n + 1)

end

end A188582.P5282675047550521257

/-! ## A188582.P8628569268287623735

`Δ[A099538(n+1)]`
-/

namespace A188582.P8628569268287623735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188582.P8628569268287623735

/-! ## A188582.P2230079537907246245

`A294671(n+1)-A002163(n+1)`
-/

namespace A188582.P2230079537907246245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1 + 1) - A002163 (n + 1 + 1)

end

end A188582.P2230079537907246245

/-! ## A188582.P8269218134412602761

`A294671(n+1)-A098317(n+1)`
-/

namespace A188582.P8269218134412602761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1 + 1) - A098317 (n + 1 + 1)

end

end A188582.P8269218134412602761

/-! ## A188582.P12468200389370446673

`A294671(n+1)-A229780(n+1)`
-/

namespace A188582.P12468200389370446673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1 + 1) - A229780 (n + 1)

end

end A188582.P12468200389370446673

/-! ## A188582.P12476271807167991841

`A099538(n+2)-A099538(n+1)`
-/

namespace A188582.P12476271807167991841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 2) - A099538 (n + 1)

end

end A188582.P12476271807167991841

/-! ## A188582.P18029460587293415154

`A120731(n+2)`
-/

namespace A188582.P18029460587293415154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 2 + 1)

end

end A188582.P18029460587293415154

/-! ## A188582.P16414067881139184769

`A110812(2*n+3)`
-/

namespace A188582.P16414067881139184769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110812 (2 * n + 3)

end

end A188582.P16414067881139184769

/-! ## A188582.P1575800286785850791

`A098364(∑[n+1]+1)`
-/

namespace A188582.P1575800286785850791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188582.P1575800286785850791

/-! ## A188582.P13973246174016703210

`A098364(C(n+3, 2))`
-/

namespace A188582.P13973246174016703210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (Nat.choose (n + 3) 2)

end

end A188582.P13973246174016703210

/-!
# A188583: Primes p such that 6*p^3+1 is also prime.

The programs for A188583, there is no canonical definition to state claims against.
-/

/-! ## A188583.P10786930810350445843

`A246955(A014741(n+1))`
-/

namespace A188583.P10786930810350445843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246955 (A014741 (n + 1)).toNat

end

end A188583.P10786930810350445843

/-! ## A188583.P1058462962180519052

`A246955(A342320(n)+1)`
-/

namespace A188583.P1058462962180519052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246955 (A342320 n + 1).toNat

end

end A188583.P1058462962180519052

/-!
# A188584: Numerator in first column of matrix exponential of A175992.

The programs for A188584, there is no canonical definition to state claims against.
-/

/-! ## A188584.P9698929860529981140

`A162909(∏{e}[n+1, #+1]^∏{e}[n+1, #])`
-/

namespace A188584.P9698929860529981140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A188584.P9698929860529981140

/-! ## A188584.P11054331698230335154

`A186519(A037289(n+1))`
-/

namespace A188584.P11054331698230335154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186519 (A037289 (n + 1)).toNat

end

end A188584.P11054331698230335154

/-! ## A188584.P17738901501347194234

`A057202(A321751(n+1))`
-/

namespace A188584.P17738901501347194234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057202 (A321751 (n + 1)).toNat

end

end A188584.P17738901501347194234

/-! ## A188584.P9975424560308178494

`A162909(A000005(n+1)^∏{e}[1+n, #])`
-/

namespace A188584.P9975424560308178494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162909 (A000005 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A188584.P9975424560308178494

/-!
# A188585: Moebius inversion of sequence A000688, the number of factorizations of n into prime powers greater than 1.

The programs for A188585, there is no canonical definition to state claims against.
-/

/-! ## A188585.P13169826344081790588

`∑{d}[n+1, A008683((n+1)/#)*A000688(#)]`
-/

namespace A188585.P13169826344081790588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000688 d

end

end A188585.P13169826344081790588

/-! ## A188585.P7205688668993764381

`∏{e}[n+1, A002865(#)]`
-/

namespace A188585.P7205688668993764381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002865 (Nat.factorization (f1 n) p)

end

end A188585.P7205688668993764381

/-! ## A188585.P6201814239543961618

`∏{e}[n+1, A035970(#)]`
-/

namespace A188585.P6201814239543961618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035970 (Nat.factorization (f1 n) p)

end

end A188585.P6201814239543961618

/-! ## A188585.P8442763523547490079

`∏{e}[n+1, A035979(#)]`
-/

namespace A188585.P8442763523547490079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035979 (Nat.factorization (f1 n) p)

end

end A188585.P8442763523547490079

/-! ## A188585.P8410101999975725632

`∏{e}[n+1, A232697(#)-1]`
-/

namespace A188585.P8410101999975725632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A232697 (Nat.factorization (f1 n) p) - 1)

end

end A188585.P8410101999975725632

/-! ## A188585.P7982938334677644750

`∏{e}[n+1, A085811(#+3)]`
-/

namespace A188585.P7982938334677644750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A085811 (Nat.factorization (f1 n) p + 3)

end

end A188585.P7982938334677644750

/-! ## A188585.P1997273908295512359

`∑{d}[n+1, A007427(#)*A188581((n+1)/#)]`
-/

namespace A188585.P1997273908295512359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A188581 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A188585.P1997273908295512359

/-! ## A188585.P12849794858267116488

`A294068((n+1)*A001055(A336736(n+1)))`
-/

namespace A188585.P12849794858267116488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 ((n + 1 : ℤ) * A001055 (A336736 (n + 1)).toNat).toNat

end

end A188585.P12849794858267116488

/-! ## A188585.P15675093103346041949

`A294068((n+1)*A336736(A336736(n+1)))`
-/

namespace A188585.P15675093103346041949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 ((n + 1 : ℤ) * A336736 (A336736 (n + 1)).toNat).toNat

end

end A188585.P15675093103346041949

/-! ## A188585.P215057869022093577

`A294068(n+1)/A336736(A336736(n+1))`
-/

namespace A188585.P215057869022093577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294068 (n + 1) : ℚ) / (A336736 (A336736 (n + 1)).toNat : ℚ)

end

end A188585.P215057869022093577

/-!
# A188587: 1-Euler triangle.

The programs for A188587, the canonical program `A188587.P2773543887625942288` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188587 has offset 0).

The definition of A188587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188587.P2773543887625942288

`(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)*T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188587

/-- `(row(n)-col(n)+1)*T(n-1,k-1)+(col(n)+1)*T(n-1,k)` -/
def P2773543887625942288.Spec : Prop :=
  ∀ n, P2773543887625942288.a n = A188587 n

theorem P2773543887625942288.correct : P2773543887625942288.Spec := by
  intro n
  simp only [A188587]

end A188587

/-!
# A188588: Row sums of 1-Euler triangle A188587.

The programs for A188588, the canonical program `A188588.P13927064779433258903` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188588 has offset 0).

The definition of A188588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188588.P13927064779433258903

`(n+1)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188588

/-- `(n+1)*a(n-1)` -/
def P13927064779433258903.Spec : Prop :=
  ∀ n, (P13927064779433258903.a n : ℤ) = A188588 n

theorem P13927064779433258903.correct : P13927064779433258903.Spec := by
  intro n
  simp only [A188588]

end A188588

/-! ## A188588.P16320203928563929395

`(n+1)*A001710(n)`
-/

namespace A188588.P16320203928563929395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001710 n

end

end A188588.P16320203928563929395

namespace A188588

/-- `(n+1)*A001710(n)` -/
def P16320203928563929395.Spec : Prop :=
  ∀ n, P16320203928563929395.a n = A188588 n

end A188588

/-! ## A188588.P10376229943121263890

`∏[(n+1)/(char[2]+1)]`
-/

namespace A188588.P10376229943121263890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A188588.P10376229943121263890

namespace A188588

/-- `∏[(n+1)/(char[2]+1)]` -/
def P10376229943121263890.Spec : Prop :=
  ∀ n, P10376229943121263890.a n = (A188588 n : ℚ)

end A188588

/-! ## A188588.P11645323814524351933

`(n+1)*ceil(n!/2)`
-/

namespace A188588.P11645323814524351933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(Nat.factorial n : ℚ) / 2⌉

end

end A188588.P11645323814524351933

namespace A188588

/-- `(n+1)*ceil(n!/2)` -/
def P11645323814524351933.Spec : Prop :=
  ∀ n, P11645323814524351933.a n = A188588 n

end A188588

/-! ## A188588.P130243283440540409

`(n+1)*round(n!/2)`
-/

namespace A188588.P130243283440540409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)

end

end A188588.P130243283440540409

namespace A188588

/-- `(n+1)*round(n!/2)` -/
def P130243283440540409.Spec : Prop :=
  ∀ n, P130243283440540409.a n = A188588 n

end A188588

/-! ## A188588.P2201468325559227453

`record[n*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A188588.P2201468325559227453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188588.P2201468325559227453

namespace A188588

/-- `record[n*a(n-1)]` -/
def P2201468325559227453.Spec : Prop :=
  ∀ n, (P2201468325559227453.a n : ℤ) = A188588 n

end A188588

/-! ## A188588.P6202912438927538000

`(n+1)*lcm(2, n!)/2`
-/

namespace A188588.P6202912438927538000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.lcm 2 (Nat.factorial n) : ℚ) / 2)

end

end A188588.P6202912438927538000

namespace A188588

/-- `(n+1)*lcm(2, n!)/2` -/
def P6202912438927538000.Spec : Prop :=
  ∀ n, P6202912438927538000.a n = (A188588 n : ℚ)

end A188588

/-! ## A188588.P10836662943474821921

`a(n-1)/(n+1)^(-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A188588.P10836662943474821921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A188588.P10836662943474821921

namespace A188588

/-- `a(n-1)/(n+1)^(-1)` -/
def P10836662943474821921.Spec : Prop :=
  ∀ n, P10836662943474821921.a n = (A188588 n : ℚ)

end A188588

/-! ## A188588.P3275728732647035480

`record[A094112(n+1)]`
-/

namespace A188588.P3275728732647035480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188588.P3275728732647035480

namespace A188588

/-- `record[A094112(n+1)]` -/
def P3275728732647035480.Spec : Prop :=
  ∀ n, P3275728732647035480.a n = A188588 n

end A188588

/-! ## A188588.P10399291446722411231

`lcm(n+1, A001710(n+1))`
-/

namespace A188588.P10399291446722411231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001710 (n + 1))

end

end A188588.P10399291446722411231

namespace A188588

/-- `lcm(n+1, A001710(n+1))` -/
def P10399291446722411231.Spec : Prop :=
  ∀ n, (P10399291446722411231.a n : ℤ) = A188588 n

end A188588

/-!
# A188589: Expansion of (1-3*x+6*x^2-3*x^3)/((1-x)^2*(1-2*x)).

The programs for A188589, the canonical program `A188589.P17840967960636408064` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188589 has offset 0).

The definition of A188589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+6x^2-3x^3)/(1-4x+5x^2-2x^3))` (program `A188589.P17840967960636408064`, by `A188589.P17840967960636408064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188589.P17840967960636408064

`ogf((1-3x+6x^2-3x^3)/(1-4x+5x^2-2x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188589

/-- `ogf((1-3x+6x^2-3x^3)/(1-4x+5x^2-2x^3))` -/
def P17840967960636408064.Spec : Prop :=
  ∀ n, P17840967960636408064.a n = A188589 n

theorem P17840967960636408064.correct : P17840967960636408064.Spec := by
  intro n
  simp only [A188589]

end A188589

/-! ## A188589.P16621105369774475675

`∑[ogf((1-3x+6x^2-3x^3)/(1-3x+2x^2))]`
-/

namespace A188589.P16621105369774475675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6, -3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188589.P16621105369774475675

namespace A188589

/-- `∑[ogf((1-3x+6x^2-3x^3)/(1-3x+2x^2))]` -/
def P16621105369774475675.Spec : Prop :=
  ∀ n, P16621105369774475675.a n = A188589 n

end A188589

/-! ## A188589.P7968793655726780388

`∑[2*a(n-1)+1]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A188589.P7968793655726780388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188589.P7968793655726780388

namespace A188589

/-- `∑[2*a(n-1)+1]` -/
def P7968793655726780388.Spec : Prop :=
  ∀ n, (P7968793655726780388.a n : ℤ) = A188589 n

end A188589

/-! ## A188589.P1764145190427619956

`∑[or(1, 2*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A188589.P1764145190427619956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  Nat.lor 1 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188589.P1764145190427619956

namespace A188589

/-- `∑[or(1, 2*a(n-1))]` -/
def P1764145190427619956.Spec : Prop :=
  ∀ n, (P1764145190427619956.a n : ℤ) = A188589 n

end A188589

/-! ## A188589.P8913107709809180746

`1+2*a(n-1)+n` with `a(0)=1, a(1)=1`
-/

namespace A188589.P8913107709809180746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + 2 * a (n - 1) + n

end

end A188589.P8913107709809180746

namespace A188589

/-- `1+2*a(n-1)+n` -/
def P8913107709809180746.Spec : Prop :=
  ∀ n, (P8913107709809180746.a n : ℤ) = A188589 n

end A188589

/-! ## A188589.P12895825465403069837

`∑[2*a(n-1)]-n` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A188589.P12895825465403069837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A188589.P12895825465403069837

namespace A188589

/-- `∑[2*a(n-1)]-n` -/
def P12895825465403069837.Spec : Prop :=
  ∀ n, P12895825465403069837.a n = A188589 n

end A188589

/-! ## A188589.P3997727194966788591

`2*a(n-1)-xor(n, -1)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P3997727194966788591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - Int.xor (n : ℤ) (-1)

end

end A188589.P3997727194966788591

namespace A188589

/-- `2*a(n-1)-xor(n, -1)` -/
def P3997727194966788591.Spec : Prop :=
  ∀ n, P3997727194966788591.a n = A188589 n

end A188589

/-! ## A188589.P12871982711627405509

`3-(2*(1-a(n-1))-n)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P12871982711627405509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - (2 * (1 - a (n - 1)) - (n : ℤ))

end

end A188589.P12871982711627405509

namespace A188589

/-- `3-(2*(1-a(n-1))-n)` -/
def P12871982711627405509.Spec : Prop :=
  ∀ n, P12871982711627405509.a n = A188589 n

end A188589

/-! ## A188589.P17670489668631864972

`∑[a(n-1)+a(n-1)+1]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A188589.P17670489668631864972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188589.P17670489668631864972

namespace A188589

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P17670489668631864972.Spec : Prop :=
  ∀ n, (P17670489668631864972.a n : ℤ) = A188589 n

end A188589

/-! ## A188589.P11952005848595695211

`n+1+a(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P11952005848595695211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n + 1 + (a (n - 1) + a (n - 1))

end

end A188589.P11952005848595695211

namespace A188589

/-- `n+1+a(n-1)+a(n-1)` -/
def P11952005848595695211.Spec : Prop :=
  ∀ n, (P11952005848595695211.a n : ℤ) = A188589 n

end A188589

/-! ## A188589.P15698677180342900178

`1-(a(n-1)/(1/2-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P15698677180342900178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 1) / ((1 : ℚ) / 2 - 1) - (n : ℚ))

end

end A188589.P15698677180342900178

namespace A188589

/-- `1-(a(n-1)/(1/2-1)-n)` -/
def P15698677180342900178.Spec : Prop :=
  ∀ n, P15698677180342900178.a n = (A188589 n : ℚ)

end A188589

/-! ## A188589.P671604522888353705

`2-floor(1-a(n-1)-a(n-1)-n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A188589.P671604522888353705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A188589.P671604522888353705

namespace A188589

/-- `2-floor(1-a(n-1)-a(n-1)-n)` -/
def P671604522888353705.Spec : Prop :=
  ∀ n, P671604522888353705.a n = A188589 n

end A188589

/-! ## A188589.P1449893221491846191

`A154117(n)-n`
-/

namespace A188589.P1449893221491846191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 n - (n : ℤ)

end

end A188589.P1449893221491846191

namespace A188589

/-- `A154117(n)-n` -/
def P1449893221491846191.Spec : Prop :=
  ∀ n, P1449893221491846191.a n = A188589 n

end A188589

/-! ## A188589.P16446002796865741544

`abs(2-A052549(n)+n)`
-/

namespace A188589.P16446002796865741544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A052549 n + (n : ℤ)|

end

end A188589.P16446002796865741544

namespace A188589

/-- `abs(2-A052549(n)+n)` -/
def P16446002796865741544.Spec : Prop :=
  ∀ n, P16446002796865741544.a n = A188589 n

end A188589

/-! ## A188589.P5872025945330115142

`A094002((n-1)%(n+1))`
-/

namespace A188589.P5872025945330115142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A188589.P5872025945330115142

namespace A188589

/-- `A094002((n-1)%(n+1))` -/
def P5872025945330115142.Spec : Prop :=
  ∀ n, P5872025945330115142.a n = A188589 n

end A188589

/-! ## A188589.P11157874078563991781

`A054135(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P11157874078563991781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A054135 n + a (n - 1)

end

end A188589.P11157874078563991781

namespace A188589

/-- `A054135(n)+a(n-1)` -/
def P11157874078563991781.Spec : Prop :=
  ∀ n, P11157874078563991781.a n = A188589 n

end A188589

/-! ## A188589.P10291344822145623022

`A052549(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P10291344822145623022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052549 (n - 1) + a (n - 1)

end

end A188589.P10291344822145623022

namespace A188589

/-- `A052549(n-1)+a(n-1)` -/
def P10291344822145623022.Spec : Prop :=
  ∀ n, P10291344822145623022.a n = A188589 n

end A188589

/-! ## A188589.P10744451873873957591

`A153894(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A188589.P10744451873873957591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A153894 (n - 2) + a (n - 1)

end

end A188589.P10744451873873957591

namespace A188589

/-- `A153894(n-2)+a(n-1)` -/
def P10744451873873957591.Spec : Prop :=
  ∀ n, P10744451873873957591.a n = A188589 n

end A188589

/-! ## A188589.P10667056455784323918

`A094002(A289207(n+1))`
-/

namespace A188589.P10667056455784323918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 (A289207 (n + 1)).toNat

end

end A188589.P10667056455784323918

namespace A188589

/-- `A094002(A289207(n+1))` -/
def P10667056455784323918.Spec : Prop :=
  ∀ n, P10667056455784323918.a n = A188589 n

end A188589

/-! ## A188589.P11839576296773014356

`A094002(n-A057427(n))`
-/

namespace A188589.P11839576296773014356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094002 ((n : ℤ) - A057427 n).toNat

end

end A188589.P11839576296773014356

namespace A188589

/-- `A094002(n-A057427(n))` -/
def P11839576296773014356.Spec : Prop :=
  ∀ n, P11839576296773014356.a n = A188589 n

end A188589

/-!
# A188590: [(n+1)*r] - [n*r], where r = 3/2 + sqrt(13)/2 and [...] denotes the floor function.

The programs for A188590, the canonical program `A188590.P3155503654454248992` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188590 has offset 1).

The definition of A188590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188590.P926552610272496147

`Δ[floor((n+1)*(3+sqrt(13))/2)]`
-/

namespace A188590.P926552610272496147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (3 + Real.sqrt (13 : ℝ)) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188590.P926552610272496147

namespace A188590

/-- `Δ[floor((n+1)*(3+sqrt(13))/2)]` -/
def P926552610272496147.Spec : Prop :=
  ∀ n, P926552610272496147.a n = A188590 (n + 1)

theorem P926552610272496147.correct : P926552610272496147.Spec := by
  intro n
  simp only [A188590, Nat.add_sub_cancel, A188590.P926552610272496147.f1, A188590.P926552610272496147.a, A188590.P3155503654454248992.a, A003589, A003589.P2124709164749128788.f1, A003589.P2124709164749128788.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188590

/-! ## A188590.P3155503654454248992

`A003589(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188590

/-- `A003589(n)+1` -/
def P3155503654454248992.Spec : Prop :=
  ∀ n, P3155503654454248992.a n = A188590 (n + 1)

theorem P3155503654454248992.correct : P3155503654454248992.Spec := by
  intro n
  simp only [A188590, Nat.add_sub_cancel]

end A188590

/-! ## A188590.P15777302816426594348

`A276397(n)+3`
-/

namespace A188590.P15777302816426594348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276397 n + 3

end

end A188590.P15777302816426594348

namespace A188590

/-- `A276397(n)+3` -/
def P15777302816426594348.Spec : Prop :=
  ∀ n, P15777302816426594348.a n = A188590 (n + 1)

theorem P15777302816426594348.correct : P15777302816426594348.Spec := by
  intro n
  simp only [A188590, Nat.add_sub_cancel, A188590.P15777302816426594348.a, A188590.P3155503654454248992.a, A003589, A003589.P2124709164749128788.f1, A003589.P2124709164749128788.a, A276397, A276397.P8421453054304162173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188590

/-! ## A188590.P16866527551375293248

`Δ[A001956(n+1)]-1`
-/

namespace A188590.P16866527551375293248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A188590.P16866527551375293248

namespace A188590

/-- `Δ[A001956(n+1)]-1` -/
def P16866527551375293248.Spec : Prop :=
  ∀ n, P16866527551375293248.a n = A188590 (n + 1)

end A188590

/-! ## A188590.P12192327775849538296

`Δ[A184480(n+1)]+2`
-/

namespace A188590.P12192327775849538296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A188590.P12192327775849538296

namespace A188590

/-- `Δ[A184480(n+1)]+2` -/
def P12192327775849538296.Spec : Prop :=
  ∀ n, P12192327775849538296.a n = A188590 (n + 1)

end A188590

/-! ## A188590.P6638127868521189919

`A080081(n+2)-A080081(n+1)`
-/

namespace A188590.P6638127868521189919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080081 (n + 2) - A080081 (n + 1)

end

end A188590.P6638127868521189919

namespace A188590

/-- `A080081(n+2)-A080081(n+1)` -/
def P6638127868521189919.Spec : Prop :=
  ∀ n, P6638127868521189919.a n = A188590 (n + 1)

theorem P6638127868521189919.correct : P6638127868521189919.Spec := by
  intro n
  simp only [A188590, Nat.add_sub_cancel, A188590.P6638127868521189919.a, A188590.P3155503654454248992.a, A003589, A003589.P2124709164749128788.f1, A003589.P2124709164749128788.a, A080081, A080081.P2894289496035499761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188590

/-! ## A188590.P223845130726893750

`A080600(n+2)-A080600(n+1)`
-/

namespace A188590.P223845130726893750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 2) - A080600 (n + 1)

end

end A188590.P223845130726893750

namespace A188590

/-- `A080600(n+2)-A080600(n+1)` -/
def P223845130726893750.Spec : Prop :=
  ∀ n, P223845130726893750.a n = A188590 (n + 1)

end A188590

/-! ## A188590.P2046630517706412854

`Δ[A284676(n+2)]+2`
-/

namespace A188590.P2046630517706412854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A188590.P2046630517706412854

namespace A188590

/-- `Δ[A284676(n+2)]+2` -/
def P2046630517706412854.Spec : Prop :=
  ∀ n, P2046630517706412854.a n = A188590 (n + 1)

end A188590

/-! ## A188590.P8275786801976638753

`Δ[A284678(n+2)]-1`
-/

namespace A188590.P8275786801976638753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A188590.P8275786801976638753

namespace A188590

/-- `Δ[A284678(n+2)]-1` -/
def P8275786801976638753.Spec : Prop :=
  ∀ n, P8275786801976638753.a n = A188590 (n + 1)

end A188590

/-! ## A188590.P16196188153227191207

`Δ[A284679(n+2)]+2`
-/

namespace A188590.P16196188153227191207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A188590.P16196188153227191207

namespace A188590

/-- `Δ[A284679(n+2)]+2` -/
def P16196188153227191207.Spec : Prop :=
  ∀ n, P16196188153227191207.a n = A188590 (n + 1)

end A188590

/-!
# A188591: Records of A188550.

The programs for A188591, there is no canonical definition to state claims against.
-/

/-! ## A188591.P8210412826357558412

`A002183(comp[63*n])`
-/

namespace A188591.P8210412826357558412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A188591.P8210412826357558412

/-! ## A188591.P5763926774403446743

`∑[runs[A103578(n+1)]]`
-/

namespace A188591.P5763926774403446743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188591.P5763926774403446743

/-! ## A188591.P994451147902499409

`A002183(n+1)+char[48]`
-/

namespace A188591.P994451147902499409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188591.P994451147902499409

/-! ## A188591.P12461398895816743005

`∏{digits}[A245500(n+1), #+1]`
-/

namespace A188591.P12461398895816743005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A188591.P12461398895816743005

/-! ## A188591.P11944112426759358239

`record[A273353(n+1)%(10*n+4)]`
-/

namespace A188591.P11944112426759358239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273353 (n + 1)) (10 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188591.P11944112426759358239

/-!
# A188592: Places of records of A188550.

The programs for A188592, there is no canonical definition to state claims against.
-/

/-! ## A188592.P3262970928872934760

`A181808(n+1)+2`
-/

namespace A188592.P3262970928872934760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181808 (n + 1) + 2

end

end A188592.P3262970928872934760

/-! ## A188592.P6483227940547734704

`2*A135372(n+1)`
-/

namespace A188592.P6483227940547734704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135372 (n + 1)

end

end A188592.P6483227940547734704

/-! ## A188592.P5009944567225012508

`2*(1+A002182(n+1))`
-/

namespace A188592.P5009944567225012508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A002182 (n + 1))

end

end A188592.P5009944567225012508

/-! ## A188592.P13312177028778598738

`2*(A340840(n+1)+1)`
-/

namespace A188592.P13312177028778598738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A340840 (n + 1) + 1)

end

end A188592.P13312177028778598738

/-! ## A188592.P10143775317686552633

`2*(sqrt(A046952(n+1))+1)`
-/

namespace A188592.P10143775317686552633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A046952 (n + 1) : ℝ) + 1)

end

end A188592.P10143775317686552633

/-!
# A188598: Numbers k such that d(k-1) > d(k) > d(k+1) where d(k) is the number of divisors of k.

The programs for A188598, there is no canonical definition to state claims against.
-/

/-! ## A188598.P3754948742640820655

`A364718(1+n)+1`
-/

namespace A188598.P3754948742640820655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364718 (1 + n) + 1

end

end A188598.P3754948742640820655

/-! ## A188598.P15831870964959622256

`A303578(eq[1, A303577(n+1)]+1)`
-/

namespace A188598.P15831870964959622256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188598.P15831870964959622256

/-! ## A188598.P2002756914625331564

`∩[A074827(n+1), A303578(n+1)]`
-/

namespace A188598.P2002756914625331564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188598.P2002756914625331564

/-! ## A188598.P11249770886427441681

`∩[A074827(n+2)+1, A074827(n+2)]`
-/

namespace A188598.P11249770886427441681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188598.P11249770886427441681

/-! ## A188598.P2608284136034128794

`∩[A303578(n+2)-1, A303578(n+2)]`
-/

namespace A188598.P2608284136034128794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188598.P2608284136034128794

/-! ## A188598.P3246671701153368125

`A011760(A364718(n+1))`
-/

namespace A188598.P3246671701153368125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A364718 (n + 1)).toNat

end

end A188598.P3246671701153368125

/-! ## A188598.P2472915901656985330

`∩[A074827(n+1), A020725(A074827(n+2))]`
-/

namespace A188598.P2472915901656985330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074827 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188598.P2472915901656985330

/-!
# A188599: Expansion of x/(1-6*x+25*x^2).

The programs for A188599, the canonical program `A188599.P2409912700377059662` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188599 has offset 0).

The definition of A188599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-6x+25x^2))` (program `A188599.P2409912700377059662`, by `A188599.P2409912700377059662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188599.P2409912700377059662

`ogf(x/(1-6x+25x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188599

/-- `ogf(x/(1-6x+25x^2))` -/
def P2409912700377059662.Spec : Prop :=
  ∀ n, P2409912700377059662.a n = A188599 n

theorem P2409912700377059662.correct : P2409912700377059662.Spec := by
  intro n
  simp only [A188599]

end A188599

/-! ## A188599.P2935290271926770694

`6*a(n-1)-25*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A188599.P2935290271926770694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - 25 * a (n - 2)

end

end A188599.P2935290271926770694

namespace A188599

/-- `6*a(n-1)-25*a(n-2)` -/
def P2935290271926770694.Spec : Prop :=
  ∀ n, P2935290271926770694.a n = A188599 n

end A188599

/-! ## A188599.P15482137681167639952

`5^n*sin(n*atan(1/2))*cos(n*atan(1/2))/2`
-/

namespace A188599.P15482137681167639952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℝ) * Real.sin ((n : ℝ) * Real.arctan ((1 : ℚ) / 2 : ℝ)) * Real.cos ((n : ℝ) * Real.arctan ((1 : ℚ) / 2 : ℝ)) / 2

end

end A188599.P15482137681167639952

namespace A188599

/-- `5^n*sin(n*atan(1/2))*cos(n*atan(1/2))/2` -/
def P15482137681167639952.Spec : Prop :=
  ∀ n, P15482137681167639952.a n = (A188599 n : ℝ)

end A188599

/-! ## A188599.P5637824735181688780

`A045873(2*n)/(A084101(2*n)-A084101(2*n+1))`
-/

namespace A188599.P5637824735181688780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045873 (2 * n) : ℚ) / (A084101 (2 * n) - A084101 (2 * n + 1) : ℚ)

end

end A188599.P5637824735181688780

namespace A188599

/-- `A045873(2*n)/(A084101(2*n)-A084101(2*n+1))` -/
def P5637824735181688780.Spec : Prop :=
  ∀ n, P5637824735181688780.a n = (A188599 n : ℚ)

end A188599

