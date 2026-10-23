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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A005900: Octahedral numbers: a(n) = n*(2*n^2 + 1)/3.

The programs for A005900, the canonical program `A005900.P11090799480023705185` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005900 has offset 0).

The definition of A005900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+1)/3` (program `A005900.P8315940103672463666`, by `A005900.P8315940103672463666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005900.P16020128316247229410

`(2*n^3+n)/3`
-/

namespace A005900.P16020128316247229410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + n : ℚ) / 3

end

end A005900.P16020128316247229410

namespace A005900

/-- `(2*n^3+n)/3` -/
def P16020128316247229410.Spec : Prop :=
  ∀ n, P16020128316247229410.a n = (A005900 n : ℚ)

theorem P16020128316247229410.correct : P16020128316247229410.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005900, Nat.add_sub_cancel, A005900.P16020128316247229410.a, A005900.P11090799480023705185.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005900, Nat.add_sub_cancel, A005900.P16020128316247229410.a, A005900.P11090799480023705185.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005900

/-! ## A005900.P8315940103672463666

`n*(2*n²+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005900.P8315940103672463666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n ^ 2 + 1) : ℚ) / 3

end

end A005900.P8315940103672463666

namespace A005900

/-- `n*(2*n²+1)/3` -/
def P8315940103672463666.Spec : Prop :=
  ∀ n, P8315940103672463666.a n = (A005900 n : ℚ)

theorem P8315940103672463666.correct : P8315940103672463666.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005900, Nat.add_sub_cancel, A005900.P8315940103672463666.a, A005900.P11090799480023705185.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005900, Nat.add_sub_cancel, A005900.P8315940103672463666.a, A005900.P11090799480023705185.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005900

/-! ## A005900.P5158219677464306903

`C(n+2, 3)+2*C(n+1, 3)+C(n, 3)`
-/

namespace A005900.P5158219677464306903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 2 * Nat.choose (n + 1) 3 + Nat.choose n 3

end

end A005900.P5158219677464306903

namespace A005900

/-- `C(n+2, 3)+2*C(n+1, 3)+C(n, 3)` -/
def P5158219677464306903.Spec : Prop :=
  ∀ n, (P5158219677464306903.a n : ℤ) = A005900 n

end A005900

/-! ## A005900.P16025396235534495037

`6*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A005900.P16025396235534495037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) / ((n : ℤ) - 1 : ℚ) + a (n - 2)

end

end A005900.P16025396235534495037

namespace A005900

/-- `6*a(n-1)/(n-1)+a(n-2)` -/
def P16025396235534495037.Spec : Prop :=
  ∀ n, P16025396235534495037.a n = (A005900 n : ℚ)

end A005900

/-! ## A005900.P11090799480023705185

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=19`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005900

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11090799480023705185.Spec : Prop :=
  ∀ n, P11090799480023705185.a n = A005900 n

theorem P11090799480023705185.correct : P11090799480023705185.Spec := by
  intro n
  simp only [A005900]

end A005900

/-! ## A005900.P15211593137443787891

`∑[4*C(n, 2)]+n`
-/

namespace A005900.P15211593137443787891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A005900.P15211593137443787891

namespace A005900

/-- `∑[4*C(n, 2)]+n` -/
def P15211593137443787891.Spec : Prop :=
  ∀ n, (P15211593137443787891.a n : ℤ) = A005900 n

end A005900

/-! ## A005900.P14724076651638751843

`∑[∑[record[n*gcd(2, n)]]]`
-/

namespace A005900.P14724076651638751843
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P14724076651638751843

namespace A005900

/-- `∑[∑[record[n*gcd(2, n)]]]` -/
def P14724076651638751843.Spec : Prop :=
  ∀ n, (P14724076651638751843.a n : ℤ) = A005900 n

end A005900

/-! ## A005900.P2839271619374446208

`∑[record[ceil(lcm(2, n²)/4)]]`
-/

namespace A005900.P2839271619374446208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (n ^ 2) : ℚ) / 4⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P2839271619374446208

namespace A005900

/-- `∑[record[ceil(lcm(2, n²)/4)]]` -/
def P2839271619374446208.Spec : Prop :=
  ∀ n, P2839271619374446208.a n = A005900 n

end A005900

/-! ## A005900.P14750442936430360922

`∑[round(2*n/acot(n-1))]`
-/

namespace A005900.P14750442936430360922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P14750442936430360922

namespace A005900

/-- `∑[round(2*n/acot(n-1))]` -/
def P14750442936430360922.Spec : Prop :=
  ∀ n, P14750442936430360922.a n = A005900 n

end A005900

/-! ## A005900.P9854212890306796199

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A005900.P9854212890306796199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P9854212890306796199

namespace A005900

/-- `∑[∑[a(n-1)+4]]` -/
def P9854212890306796199.Spec : Prop :=
  ∀ n, (P9854212890306796199.a n : ℤ) = A005900 n

end A005900

/-! ## A005900.P12915087451482979407

`n-∑[∑[a(n-1)-4]]` with `a(0)=0, a(1)=0`
-/

namespace A005900.P12915087451482979407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P12915087451482979407

namespace A005900

/-- `n-∑[∑[a(n-1)-4]]` -/
def P12915087451482979407.Spec : Prop :=
  ∀ n, P12915087451482979407.a n = A005900 n

end A005900

/-! ## A005900.P14434683099519356412

`∑[n²+((n-1)%(n+1))²]`
-/

namespace A005900.P14434683099519356412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005900.P14434683099519356412

namespace A005900

/-- `∑[n²+((n-1)%(n+1))²]` -/
def P14434683099519356412.Spec : Prop :=
  ∀ n, P14434683099519356412.a n = A005900 n

end A005900

/-! ## A005900.P14768998711174807131

`a(n-1)+n²+(1-n)²` with `a(0)=0`
-/

namespace A005900.P14768998711174807131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n ^ 2 : ℤ) + (1 - (n : ℤ)) ^ 2

end

end A005900.P14768998711174807131

namespace A005900

/-- `a(n-1)+n²+(1-n)²` -/
def P14768998711174807131.Spec : Prop :=
  ∀ n, P14768998711174807131.a n = A005900 n

end A005900

/-! ## A005900.P9616795457904550786

`a(n-1)+(n-1)*2*n+1` with `a(0)=0`
-/

namespace A005900.P9616795457904550786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (((n : ℤ) - 1) * (2 * n : ℤ) + 1)

end

end A005900.P9616795457904550786

namespace A005900

/-- `a(n-1)+(n-1)*2*n+1` -/
def P9616795457904550786.Spec : Prop :=
  ∀ n, P9616795457904550786.a n = A005900 n

end A005900

/-! ## A005900.P756405668679465920

`C(2*n, 2)-(n-1-a(n-1))` with `a(0)=0`
-/

namespace A005900.P756405668679465920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1 - a (n - 1))

end

end A005900.P756405668679465920

namespace A005900

/-- `C(2*n, 2)-(n-1-a(n-1))` -/
def P756405668679465920.Spec : Prop :=
  ∀ n, P756405668679465920.a n = A005900 n

end A005900

/-! ## A005900.P9095176324869848435

`A006331(n)-n²`
-/

namespace A005900.P9095176324869848435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - (n ^ 2 : ℤ)

end

end A005900.P9095176324869848435

namespace A005900

/-- `A006331(n)-n²` -/
def P9095176324869848435.Spec : Prop :=
  ∀ n, P9095176324869848435.a n = A005900 n

end A005900

/-! ## A005900.P17822027955647027781

`Δ[A103290(n)]-n`
-/

namespace A005900.P17822027955647027781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A005900.P17822027955647027781

namespace A005900

/-- `Δ[A103290(n)]-n` -/
def P17822027955647027781.Spec : Prop :=
  ∀ n, P17822027955647027781.a n = A005900 n

end A005900

/-! ## A005900.P12085624178047979282

`2*A006527(n)-n`
-/

namespace A005900.P12085624178047979282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006527 n - (n : ℤ)

end

end A005900.P12085624178047979282

namespace A005900

/-- `2*A006527(n)-n` -/
def P12085624178047979282.Spec : Prop :=
  ∀ n, P12085624178047979282.a n = A005900 n

end A005900

/-! ## A005900.P4081525690811930754

`A217873(n)/2-n`
-/

namespace A005900.P4081525690811930754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217873 n : ℚ) / 2 - (n : ℚ)

end

end A005900.P4081525690811930754

namespace A005900

/-- `A217873(n)/2-n` -/
def P4081525690811930754.Spec : Prop :=
  ∀ n, P4081525690811930754.a n = (A005900 n : ℚ)

end A005900

/-! ## A005900.P6399372594017317073

`A061349(n)+A006584(n)`
-/

namespace A005900.P6399372594017317073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 n + A006584 n

end

end A005900.P6399372594017317073

namespace A005900

/-- `A061349(n)+A006584(n)` -/
def P6399372594017317073.Spec : Prop :=
  ∀ n, P6399372594017317073.a n = A005900 n

end A005900

/-!
# A005901: Number of points on surface of cuboctahedron (or icosahedron): a(0) = 1; for n > 0, a(n) = 10n^2 + 2. Also coordination sequence for f.c.c. or A_3 or D_3 lattice.

The programs for A005901, the canonical program `A005901.P16073737250919003101` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005901 has offset 0).

The definition of A005901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005901.P16073737250919003101

`∑[and(a(n-1)+20, -2)]` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005901

/-- `∑[and(a(n-1)+20, -2)]` -/
def P16073737250919003101.Spec : Prop :=
  ∀ n, P16073737250919003101.a n = A005901 n

theorem P16073737250919003101.correct : P16073737250919003101.Spec := by
  intro n
  simp only [A005901]

end A005901

/-! ## A005901.P1355703763841423048

`ceil(atan(n+1)+(3*n)²)+n²`
-/

namespace A005901.P1355703763841423048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + ((3 * n) ^ 2 : ℝ)⌉ + (n ^ 2 : ℤ)

end

end A005901.P1355703763841423048

namespace A005901

/-- `ceil(atan(n+1)+(3*n)²)+n²` -/
def P1355703763841423048.Spec : Prop :=
  ∀ n, P1355703763841423048.a n = A005901 n

end A005901

/-! ## A005901.P9488736780373024393

`round((2*n*10*n-1)/2)+2`
-/

namespace A005901.P9488736780373024393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2

end

end A005901.P9488736780373024393

namespace A005901

/-- `round((2*n*10*n-1)/2)+2` -/
def P9488736780373024393.Spec : Prop :=
  ∀ n, P9488736780373024393.a n = A005901 n

end A005901

/-! ## A005901.P1012724944705641238

`abs(floor(acot(n))-2-A033583(n))`
-/

namespace A005901.P1012724944705641238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (n : ℝ)⌋ - 2 - A033583 n|

end

end A005901.P1012724944705641238

namespace A005901

/-- `abs(floor(acot(n))-2-A033583(n))` -/
def P1012724944705641238.Spec : Prop :=
  ∀ n, P1012724944705641238.a n = A005901 n

end A005901

/-! ## A005901.P11086704409459584568

`lcm(A212656(n), A382713(n))`
-/

namespace A005901.P11086704409459584568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A212656 n) (A382713 n)

end

end A005901.P11086704409459584568

namespace A005901

/-- `lcm(A212656(n), A382713(n))` -/
def P11086704409459584568.Spec : Prop :=
  ∀ n, (P11086704409459584568.a n : ℤ) = A005901 n

end A005901

/-! ## A005901.P12452824185678929516

`(A010009(n)+A010000(n))/2`
-/

namespace A005901.P12452824185678929516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010009 n + A010000 n : ℚ) / 2

end

end A005901.P12452824185678929516

namespace A005901

/-- `(A010009(n)+A010000(n))/2` -/
def P12452824185678929516.Spec : Prop :=
  ∀ n, P12452824185678929516.a n = (A005901 n : ℚ)

end A005901

/-! ## A005901.P6650187426771910456

`(5*n²+1)*A020639(A004277(n))`
-/

namespace A005901.P6650187426771910456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 + 1 : ℤ) * A020639 (A004277 n).toNat

end

end A005901.P6650187426771910456

namespace A005901

/-- `(5*n²+1)*A020639(A004277(n))` -/
def P6650187426771910456.Spec : Prop :=
  ∀ n, P6650187426771910456.a n = A005901 n

end A005901

/-! ## A005901.P15032077030981703370

`(A103517(n)-A005843(n))*A212656(n)`
-/

namespace A005901.P15032077030981703370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n - A005843 n) * A212656 n

end

end A005901.P15032077030981703370

namespace A005901

/-- `(A103517(n)-A005843(n))*A212656(n)` -/
def P15032077030981703370.Spec : Prop :=
  ∀ n, P15032077030981703370.a n = A005901 n

end A005901

/-! ## A005901.P7843573532494758051

`ceil((abs((2*n)²-A005897(2*n))+1)/2)`
-/

namespace A005901.P7843573532494758051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|((2 * n) ^ 2 : ℤ) - A005897 (2 * n)| + 1 : ℚ) / 2⌉

end

end A005901.P7843573532494758051

namespace A005901

/-- `ceil((abs((2*n)²-A005897(2*n))+1)/2)` -/
def P7843573532494758051.Spec : Prop :=
  ∀ n, P7843573532494758051.a n = A005901 n

end A005901

/-! ## A005901.P7364114119820093912

`A008253(2*n)`
-/

namespace A005901.P7364114119820093912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 (2 * n)

end

end A005901.P7364114119820093912

namespace A005901

/-- `A008253(2*n)` -/
def P7364114119820093912.Spec : Prop :=
  ∀ n, P7364114119820093912.a n = A005901 n

end A005901

/-! ## A005901.P13497261941398955758

`A009926(2*n)`
-/

namespace A005901.P13497261941398955758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009926 (2 * n)

end

end A005901.P13497261941398955758

namespace A005901

/-- `A009926(2*n)` -/
def P13497261941398955758.Spec : Prop :=
  ∀ n, P13497261941398955758.a n = A005901 n

end A005901

/-! ## A005901.P17200443311432810357

`(5*n²+1)*A089080(A040976(n+1)+1)`
-/

namespace A005901.P17200443311432810357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 + 1 : ℤ) * A089080 (A040976 (n + 1) + 1).toNat

end

end A005901.P17200443311432810357

namespace A005901

/-- `(5*n²+1)*A089080(A040976(n+1)+1)` -/
def P17200443311432810357.Spec : Prop :=
  ∀ n, P17200443311432810357.a n = A005901 n

end A005901

/-! ## A005901.P14182749271984721844

`∩[A116727(n+1), A008253(n)]`
-/

namespace A005901.P14182749271984721844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005901.P14182749271984721844

namespace A005901

/-- `∩[A116727(n+1), A008253(n)]` -/
def P14182749271984721844.Spec : Prop :=
  ∀ n, (P14182749271984721844.a n : ℤ) = A005901 n

end A005901

/-!
# A005902: Centered icosahedral (or cuboctahedral) numbers, also crystal ball sequence for f.c.c. lattice.

The programs for A005902, the canonical program `A005902.P17180095149968854473` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005902 has offset 0).

The definition of A005902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005902.P14711903716948725505

`(2*n+1)*(5*n²+5*n+3)/3`
-/

namespace A005902.P14711903716948725505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (5 * n ^ 2 + 5 * n + 3) : ℚ) / 3

end

end A005902.P14711903716948725505

namespace A005902

/-- `(2*n+1)*(5*n²+5*n+3)/3` -/
def P14711903716948725505.Spec : Prop :=
  ∀ n, P14711903716948725505.a n = (A005902 n : ℚ)

end A005902

/-! ## A005902.P17528812734449410760

`A005917(n+1)-A006331(n)`
-/

namespace A005902.P17528812734449410760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005917 (n + 1) - A006331 n

end

end A005902.P17528812734449410760

namespace A005902

/-- `A005917(n+1)-A006331(n)` -/
def P17528812734449410760.Spec : Prop :=
  ∀ n, P17528812734449410760.a n = A005902 n

end A005902

/-! ## A005902.P17180095149968854473

`A100174(n+1)-A000290(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005902

/-- `A100174(n+1)-A000290(n)` -/
def P17180095149968854473.Spec : Prop :=
  ∀ n, P17180095149968854473.a n = A005902 n

theorem P17180095149968854473.correct : P17180095149968854473.Spec := by
  intro n
  simp only [A005902]

end A005902

/-! ## A005902.P13076598613565092062

`A051673(n+1)+A000578(n)`
-/

namespace A005902.P13076598613565092062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051673 (n + 1) + A000578 n

end

end A005902.P13076598613565092062

namespace A005902

/-- `A051673(n+1)+A000578(n)` -/
def P13076598613565092062.Spec : Prop :=
  ∀ n, P13076598613565092062.a n = A005902 n

end A005902

/-! ## A005902.P1871925770534691179

`∑[∑[and(a(n-1)+20, -2)]]` with `a(0)=1, a(1)=11`
-/

namespace A005902.P1871925770534691179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n f2 =>
  Int.land (f2 (n - 1) + 20) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005902.P1871925770534691179

namespace A005902

/-- `∑[∑[and(a(n-1)+20, -2)]]` -/
def P1871925770534691179.Spec : Prop :=
  ∀ n, P1871925770534691179.a n = A005902 n

end A005902

/-! ## A005902.P4310221442030810547

`or(1, ∑[round((2*n*10*n-1)/2)+2])`
-/

namespace A005902.P4310221442030810547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005902.P4310221442030810547

namespace A005902

/-- `or(1, ∑[round((2*n*10*n-1)/2)+2])` -/
def P4310221442030810547.Spec : Prop :=
  ∀ n, P4310221442030810547.a n = A005902 n

end A005902

/-! ## A005902.P9325940160845351704

`∑[A005901(n)]`
-/

namespace A005902.P9325940160845351704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005902.P9325940160845351704

namespace A005902

/-- `∑[A005901(n)]` -/
def P9325940160845351704.Spec : Prop :=
  ∀ n, P9325940160845351704.a n = A005902 n

end A005902

/-! ## A005902.P18022818749793380237

`∑[A158187(n)]+n`
-/

namespace A005902.P18022818749793380237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005902.P18022818749793380237

namespace A005902

/-- `∑[A158187(n)]+n` -/
def P18022818749793380237.Spec : Prop :=
  ∀ n, P18022818749793380237.a n = A005902 n

end A005902

/-! ## A005902.P2556119174864210689

`∑[A010002(n)+n²]`
-/

namespace A005902.P2556119174864210689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005902.P2556119174864210689

namespace A005902

/-- `∑[A010002(n)+n²]` -/
def P2556119174864210689.Spec : Prop :=
  ∀ n, P2556119174864210689.a n = A005902 n

end A005902

/-! ## A005902.P719888192495002473

`∑[A010003(n)-n²]`
-/

namespace A005902.P719888192495002473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005902.P719888192495002473

namespace A005902

/-- `∑[A010003(n)-n²]` -/
def P719888192495002473.Spec : Prop :=
  ∀ n, P719888192495002473.a n = A005902 n

end A005902

/-! ## A005902.P1060474727822089486

`Δ[n²²-A008911(n)]`
-/

namespace A005902.P1060474727822089486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A008911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005902.P1060474727822089486

namespace A005902

/-- `Δ[n²²-A008911(n)]` -/
def P1060474727822089486.Spec : Prop :=
  ∀ n, P1060474727822089486.a n = A005902 n

end A005902

/-! ## A005902.P9512514229237602883

`A008529(n)-a(n-1)` with `a(0)=1`
-/

namespace A005902.P9512514229237602883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008529 n - a (n - 1)

end

end A005902.P9512514229237602883

namespace A005902

/-- `A008529(n)-a(n-1)` -/
def P9512514229237602883.Spec : Prop :=
  ∀ n, P9512514229237602883.a n = A005902 n

end A005902

/-! ## A005902.P16283905899201369389

`A063491(n+1)+∑[n²]`
-/

namespace A005902.P16283905899201369389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063491 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005902.P16283905899201369389

namespace A005902

/-- `A063491(n+1)+∑[n²]` -/
def P16283905899201369389.Spec : Prop :=
  ∀ n, P16283905899201369389.a n = A005902 n

end A005902

/-! ## A005902.P13636512910931904571

`A063492(n+1)-∑[n²]`
-/

namespace A005902.P13636512910931904571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063492 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005902.P13636512910931904571

namespace A005902

/-- `A063492(n+1)-∑[n²]` -/
def P13636512910931904571.Spec : Prop :=
  ∀ n, P13636512910931904571.a n = A005902 n

end A005902

/-! ## A005902.P16637488040405118221

`∑[A005897(n)+(2*n)²]`
-/

namespace A005902.P16637488040405118221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n + ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005902.P16637488040405118221

namespace A005902

/-- `∑[A005897(n)+(2*n)²]` -/
def P16637488040405118221.Spec : Prop :=
  ∀ n, P16637488040405118221.a n = A005902 n

end A005902

/-! ## A005902.P12091876165392571751

`A005898(n)+A002492(n)`
-/

namespace A005902.P12091876165392571751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + A002492 n

end

end A005902.P12091876165392571751

namespace A005902

/-- `A005898(n)+A002492(n)` -/
def P12091876165392571751.Spec : Prop :=
  ∀ n, P12091876165392571751.a n = A005902 n

end A005902

/-! ## A005902.P15530389323499725606

`A055112(n)+A001845(n)`
-/

namespace A005902.P15530389323499725606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A001845 n

end

end A005902.P15530389323499725606

namespace A005902

/-- `A055112(n)+A001845(n)` -/
def P15530389323499725606.Spec : Prop :=
  ∀ n, P15530389323499725606.a n = A005902 n

end A005902

/-! ## A005902.P15070563844798179486

`A057813(n)+A006331(n)`
-/

namespace A005902.P15070563844798179486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n + A006331 n

end

end A005902.P15070563844798179486

namespace A005902

/-- `A057813(n)+A006331(n)` -/
def P15070563844798179486.Spec : Prop :=
  ∀ n, P15070563844798179486.a n = A005902 n

end A005902

/-! ## A005902.P5300426664482226020

`A139276(n)+A034721(n)`
-/

namespace A005902.P5300426664482226020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + A034721 n

end

end A005902.P5300426664482226020

namespace A005902

/-- `A139276(n)+A034721(n)` -/
def P5300426664482226020.Spec : Prop :=
  ∀ n, P5300426664482226020.a n = A005902 n

end A005902

/-! ## A005902.P14156929922297722650

`A172117(n)+A081268(n)`
-/

namespace A005902.P14156929922297722650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172117 n + A081268 n

end

end A005902.P14156929922297722650

namespace A005902

/-- `A172117(n)+A081268(n)` -/
def P14156929922297722650.Spec : Prop :=
  ∀ n, P14156929922297722650.a n = A005902 n

end A005902

/-!
# A005903: Number of points on surface of dodecahedron: a(n) = 30*n^2 + 2 for n > 0.

The programs for A005903, the canonical program `A005903.P11390078517656857680` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005903 has offset 0).

The definition of A005903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005903.P11390078517656857680

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=32, a(2)=122, a(3)=272`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005903

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11390078517656857680.Spec : Prop :=
  ∀ n, P11390078517656857680.a n = A005903 n

theorem P11390078517656857680.correct : P11390078517656857680.Spec := by
  intro n
  simp only [A005903]

end A005903

/-! ## A005903.P5717185203587459327

`ceil(abs(sin(n)))+30*n²+1`
-/

namespace A005903.P5717185203587459327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ + (30 * n ^ 2 + 1 : ℤ)

end

end A005903.P5717185203587459327

namespace A005903

/-- `ceil(abs(sin(n)))+30*n²+1` -/
def P5717185203587459327.Spec : Prop :=
  ∀ n, P5717185203587459327.a n = A005903 n

end A005903

/-! ## A005903.P10341922147384606007

`Δ[C(abs(1-4*n), 3)]-n²-n²`
-/

namespace A005903.P10341922147384606007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (4 * n : ℤ)|.toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A005903.P10341922147384606007

namespace A005903

/-- `Δ[C(abs(1-4*n), 3)]-n²-n²` -/
def P10341922147384606007.Spec : Prop :=
  ∀ n, P10341922147384606007.a n = A005903 n

end A005903

/-! ## A005903.P16416136377528694248

`(3*n)²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²`
-/

namespace A005903.P16416136377528694248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n) ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - ((2 * n) ^ 2 : ℤ))

end

end A005903.P16416136377528694248

namespace A005903

/-- `(3*n)²+Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²` -/
def P16416136377528694248.Spec : Prop :=
  ∀ n, P16416136377528694248.a n = A005903 n

end A005903

/-! ## A005903.P10953184031535848895

`(A010023(n)+A010008(n))/2`
-/

namespace A005903.P10953184031535848895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010023 n + A010008 n : ℚ) / 2

end

end A005903.P10953184031535848895

namespace A005903

/-- `(A010023(n)+A010008(n))/2` -/
def P10953184031535848895.Spec : Prop :=
  ∀ n, P10953184031535848895.a n = (A005903 n : ℚ)

end A005903

/-! ## A005903.P1459248729256732851

`(A299287(2*n)-n²)%A165016(n+5)`
-/

namespace A005903.P1459248729256732851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299287 (2 * n) - (n ^ 2 : ℤ)) (A165016 (n + 5))

end

end A005903.P1459248729256732851

namespace A005903

/-- `(A299287(2*n)-n²)%A165016(n+5)` -/
def P1459248729256732851.Spec : Prop :=
  ∀ n, P1459248729256732851.a n = A005903 n

end A005903

/-! ## A005903.P3211717885669303519

`(A005897(3*n)+A005897(n))/2`
-/

namespace A005903.P3211717885669303519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 (3 * n) + A005897 n : ℚ) / 2

end

end A005903.P3211717885669303519

namespace A005903

/-- `(A005897(3*n)+A005897(n))/2` -/
def P3211717885669303519.Spec : Prop :=
  ∀ n, P3211717885669303519.a n = (A005903 n : ℚ)

end A005903

/-!
# A005904: Centered dodecahedral numbers.

The programs for A005904, the canonical program `A005904.P6150330656000877991` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005904 has offset 0).

The definition of A005904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005904.P6150330656000877991

`(2*n+1)*(5*n²+5*n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005904

/-- `(2*n+1)*(5*n²+5*n+1)` -/
def P6150330656000877991.Spec : Prop :=
  ∀ n, (P6150330656000877991.a n : ℤ) = A005904 n

theorem P6150330656000877991.correct : P6150330656000877991.Spec := by
  intro n
  simp only [A005904]

end A005904

/-! ## A005904.P15470670397519641049

`lcm(∑[10*n]+1, xor(2*n, (-1)^n))`
-/

namespace A005904.P15470670397519641049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (Int.xor (2 * n : ℤ) ((-1) ^ n))

end

end A005904.P15470670397519641049

namespace A005904

/-- `lcm(∑[10*n]+1, xor(2*n, (-1)^n))` -/
def P15470670397519641049.Spec : Prop :=
  ∀ n, (P15470670397519641049.a n : ℤ) = A005904 n

end A005904

/-! ## A005904.P16485707538543185464

`∑[A005903(n)]`
-/

namespace A005904.P16485707538543185464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005904.P16485707538543185464

namespace A005904

/-- `∑[A005903(n)]` -/
def P16485707538543185464.Spec : Prop :=
  ∀ n, P16485707538543185464.a n = A005904 n

end A005904

/-! ## A005904.P12083020797711591918

`∑[A158558(n)]+n`
-/

namespace A005904.P12083020797711591918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005904.P12083020797711591918

namespace A005904

/-- `∑[A158558(n)]+n` -/
def P12083020797711591918.Spec : Prop :=
  ∀ n, P12083020797711591918.a n = A005904 n

end A005904

/-! ## A005904.P15615868429708535657

`∑[A010019(n)+n²]`
-/

namespace A005904.P15615868429708535657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010019 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005904.P15615868429708535657

namespace A005904

/-- `∑[A010019(n)+n²]` -/
def P15615868429708535657.Spec : Prop :=
  ∀ n, P15615868429708535657.a n = A005904 n

end A005904

/-! ## A005904.P12034814057376063826

`∑[A010020(n)-n²]`
-/

namespace A005904.P12034814057376063826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010020 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005904.P12034814057376063826

namespace A005904

/-- `∑[A010020(n)-n²]` -/
def P12034814057376063826.Spec : Prop :=
  ∀ n, P12034814057376063826.a n = A005904 n

end A005904

/-! ## A005904.P699085876486775151

`n*A383466(n+1)+1`
-/

namespace A005904.P699085876486775151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A383466 (n + 1) + 1

end

end A005904.P699085876486775151

namespace A005904

/-- `n*A383466(n+1)+1` -/
def P699085876486775151.Spec : Prop :=
  ∀ n, P699085876486775151.a n = A005904 n

end A005904

/-! ## A005904.P124421565486735540

`A100165(n+1)+n^3`
-/

namespace A005904.P124421565486735540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100165 (n + 1) + (n ^ 3 : ℤ)

end

end A005904.P124421565486735540

namespace A005904

/-- `A100165(n+1)+n^3` -/
def P124421565486735540.Spec : Prop :=
  ∀ n, P124421565486735540.a n = A005904 n

end A005904

/-! ## A005904.P13630005268736445563

`(n+1)*A080860(n)+n`
-/

namespace A005904.P13630005268736445563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080860 n + (n : ℤ)

end

end A005904.P13630005268736445563

namespace A005904

/-- `(n+1)*A080860(n)+n` -/
def P13630005268736445563.Spec : Prop :=
  ∀ n, P13630005268736445563.a n = A005904 n

end A005904

/-! ## A005904.P14030820275880949708

`∑[12*n²+A010008(n)]`
-/

namespace A005904.P14030820275880949708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) + A010008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005904.P14030820275880949708

namespace A005904

/-- `∑[12*n²+A010008(n)]` -/
def P14030820275880949708.Spec : Prop :=
  ∀ n, P14030820275880949708.a n = A005904 n

end A005904

/-! ## A005904.P5071996039298118815

`A055112(n)+A016755(n)`
-/

namespace A005904.P5071996039298118815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A016755 n

end

end A005904.P5071996039298118815

namespace A005904

/-- `A055112(n)+A016755(n)` -/
def P5071996039298118815.Spec : Prop :=
  ∀ n, P5071996039298118815.a n = A005904 n

end A005904

/-! ## A005904.P904463359248591713

`A084367(n)+A011199(n)`
-/

namespace A005904.P904463359248591713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n + A011199 n

end

end A005904.P904463359248591713

namespace A005904

/-- `A084367(n)+A011199(n)` -/
def P904463359248591713.Spec : Prop :=
  ∀ n, P904463359248591713.a n = A005904 n

end A005904

/-! ## A005904.P3949002265038382800

`A099721(n)+A079588(n)`
-/

namespace A005904.P3949002265038382800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + A079588 n

end

end A005904.P3949002265038382800

namespace A005904

/-- `A099721(n)+A079588(n)` -/
def P3949002265038382800.Spec : Prop :=
  ∀ n, P3949002265038382800.a n = A005904 n

end A005904

/-! ## A005904.P11221772530650636728

`A188050(n)+A005902(n)`
-/

namespace A005904.P11221772530650636728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n + A005902 n

end

end A005904.P11221772530650636728

namespace A005904

/-- `A188050(n)+A005902(n)` -/
def P11221772530650636728.Spec : Prop :=
  ∀ n, P11221772530650636728.a n = A005904 n

end A005904

/-! ## A005904.P5512545170604983717

`A015219(n)-A006331(n)`
-/

namespace A005904.P5512545170604983717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A006331 n

end

end A005904.P5512545170604983717

namespace A005904

/-- `A015219(n)-A006331(n)` -/
def P5512545170604983717.Spec : Prop :=
  ∀ n, P5512545170604983717.a n = A005904 n

end A005904

/-! ## A005904.P16424339170556319588

`A191593(n)-A007588(n)`
-/

namespace A005904.P16424339170556319588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191593 n - A007588 n

end

end A005904.P16424339170556319588

namespace A005904

/-- `A191593(n)-A007588(n)` -/
def P16424339170556319588.Spec : Prop :=
  ∀ n, P16424339170556319588.a n = A005904 n

end A005904

/-! ## A005904.P4255319200966994423

`A016757(n)%A001505(n)`
-/

namespace A005904.P4255319200966994423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016757 n) (A001505 n)

end

end A005904.P4255319200966994423

namespace A005904

/-- `A016757(n)%A001505(n)` -/
def P4255319200966994423.Spec : Prop :=
  ∀ n, P4255319200966994423.a n = A005904 n

end A005904

/-! ## A005904.P12616226000176544170

`A100173(n+1)+A004068(n)`
-/

namespace A005904.P12616226000176544170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100173 (n + 1) + A004068 n

end

end A005904.P12616226000176544170

namespace A005904

/-- `A100173(n+1)+A004068(n)` -/
def P12616226000176544170.Spec : Prop :=
  ∀ n, P12616226000176544170.a n = A005904 n

end A005904

/-! ## A005904.P8352937673127998280

`A100164(n+1)+A004466(n)`
-/

namespace A005904.P8352937673127998280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100164 (n + 1) + A004466 n

end

end A005904.P8352937673127998280

namespace A005904

/-- `A100164(n+1)+A004466(n)` -/
def P8352937673127998280.Spec : Prop :=
  ∀ n, P8352937673127998280.a n = A005904 n

end A005904

/-! ## A005904.P11569948893987760539

`A100172(n+1)+A006003(n)`
-/

namespace A005904.P11569948893987760539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100172 (n + 1) + A006003 n

end

end A005904.P11569948893987760539

namespace A005904

/-- `A100172(n+1)+A006003(n)` -/
def P11569948893987760539.Spec : Prop :=
  ∀ n, P11569948893987760539.a n = A005904 n

end A005904

/-!
# A005905: Number of points on surface of truncated tetrahedron: a(n) = 14*n^2 + 2 for n > 0, a(0)=1.

The programs for A005905, the canonical program `A005905.P7800343722994549359` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005905 has offset 0).

The definition of A005905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005905.P7800343722994549359

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=58, a(3)=128`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005905

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7800343722994549359.Spec : Prop :=
  ∀ n, P7800343722994549359.a n = A005905 n

theorem P7800343722994549359.correct : P7800343722994549359.Spec := by
  intro n
  simp only [A005905]

end A005905

/-! ## A005905.P6012227181947076217

`∑[a(n-1)+28]` with `a(0)=1, a(1)=15, a(2)=42`
-/

namespace A005905.P6012227181947076217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15, 42] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005905.P6012227181947076217

namespace A005905

/-- `∑[a(n-1)+28]` -/
def P6012227181947076217.Spec : Prop :=
  ∀ n, (P6012227181947076217.a n : ℤ) = A005905 n

end A005905

/-! ## A005905.P12738556153480615851

`ceil(atan(n+1)+14*n²)`
-/

namespace A005905.P12738556153480615851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (14 * n ^ 2 : ℝ)⌉

end

end A005905.P12738556153480615851

namespace A005905

/-- `ceil(atan(n+1)+14*n²)` -/
def P12738556153480615851.Spec : Prop :=
  ∀ n, P12738556153480615851.a n = A005905 n

end A005905

/-! ## A005905.P12598233363723109855

`Δ[floor((2*n)²/(2*n+1))^3]+n²-11*n²`
-/

namespace A005905.P12598233363723109855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - (11 * n ^ 2 : ℤ)

end

end A005905.P12598233363723109855

namespace A005905

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-11*n²` -/
def P12598233363723109855.Spec : Prop :=
  ∀ n, P12598233363723109855.a n = A005905 n

end A005905

/-! ## A005905.P6189106872599420721

`abs(n²-A010005(n))`
-/

namespace A005905.P6189106872599420721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A010005 n|

end

end A005905.P6189106872599420721

namespace A005905

/-- `abs(n²-A010005(n))` -/
def P6189106872599420721.Spec : Prop :=
  ∀ n, P6189106872599420721.a n = A005905 n

end A005905

/-! ## A005905.P3084583388700055225

`round((A010018(n)+1)/2)`
-/

namespace A005905.P3084583388700055225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010018 n + 1 : ℚ) / 2)

end

end A005905.P3084583388700055225

namespace A005905

/-- `round((A010018(n)+1)/2)` -/
def P3084583388700055225.Spec : Prop :=
  ∀ n, P3084583388700055225.a n = A005905 n

end A005905

/-! ## A005905.P5788100911498963110

`(A103517(n)-A005843(n))*A247541(n)`
-/

namespace A005905.P5788100911498963110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n - A005843 n) * A247541 n

end

end A005905.P5788100911498963110

namespace A005905

/-- `(A103517(n)-A005843(n))*A247541(n)` -/
def P5788100911498963110.Spec : Prop :=
  ∀ n, P5788100911498963110.a n = A005905 n

end A005905

/-! ## A005905.P148393900161271608

`A305897(A010018(n))`
-/

namespace A005905.P148393900161271608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (A010018 n).toNat

end

end A005905.P148393900161271608

namespace A005905

/-- `A305897(A010018(n))` -/
def P148393900161271608.Spec : Prop :=
  ∀ n, P148393900161271608.a n = A005905 n

end A005905

/-! ## A005905.P5474671677018602557

`A319702(A158556(n))`
-/

namespace A005905.P5474671677018602557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A158556 n).toNat

end

end A005905.P5474671677018602557

namespace A005905

/-- `A319702(A158556(n))` -/
def P5474671677018602557.Spec : Prop :=
  ∀ n, P5474671677018602557.a n = A005905 n

end A005905

/-! ## A005905.P1565371992446164229

`A047353(A005899(n))`
-/

namespace A005905.P1565371992446164229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (A005899 n).toNat

end

end A005905.P1565371992446164229

namespace A005905

/-- `A047353(A005899(n))` -/
def P1565371992446164229.Spec : Prop :=
  ∀ n, P1565371992446164229.a n = A005905 n

end A005905

/-!
# A005906: Truncated tetrahedral numbers: a(n) = (1/6)*(n+1)*(23*n^2 + 19*n + 6).

The programs for A005906, the canonical program `A005906.P10476087782195300581` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005906 has offset 0).

The definition of A005906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005906.P10476087782195300581

`(n+1)*(23*n²+19*n+6)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005906

/-- `(n+1)*(23*n²+19*n+6)/6` -/
def P10476087782195300581.Spec : Prop :=
  ∀ n, P10476087782195300581.a n = (A005906 n : ℚ)

end A005906

/-! ## A005906.P4361945009504283265

`1/6*(n+1)*(23*n²+19*n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005906.P4361945009504283265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n + 1 : ℚ) * (23 * n ^ 2 + 19 * n + 6 : ℚ)

end

end A005906.P4361945009504283265

namespace A005906

/-- `1/6*(n+1)*(23*n²+19*n+6)` -/
def P4361945009504283265.Spec : Prop :=
  ∀ n, P4361945009504283265.a n = (A005906 n : ℚ)

end A005906

/-! ## A005906.P5744304326260054602

`lcm(n+1, comp[2*n]²)-∑[∑[n]+n]`
-/

namespace A005906.P5744304326260054602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A005906.P5744304326260054602

namespace A005906

/-- `lcm(n+1, comp[2*n]²)-∑[∑[n]+n]` -/
def P5744304326260054602.Spec : Prop :=
  ∀ n, P5744304326260054602.a n = A005906 n

end A005906

/-! ## A005906.P4873255856278235329

`∑[(6*n+1)*2*n+1-C(n, 2)]`
-/

namespace A005906.P4873255856278235329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 1) * (2 * n) + 1 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P4873255856278235329

namespace A005906

/-- `∑[(6*n+1)*2*n+1-C(n, 2)]` -/
def P4873255856278235329.Spec : Prop :=
  ∀ n, P4873255856278235329.a n = A005906 n

end A005906

/-! ## A005906.P12340286796614588836

`A364401(n+1)+∑[n]`
-/

namespace A005906.P12340286796614588836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364401 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005906.P12340286796614588836

namespace A005906

/-- `A364401(n+1)+∑[n]` -/
def P12340286796614588836.Spec : Prop :=
  ∀ n, P12340286796614588836.a n = A005906 n

end A005906

/-! ## A005906.P7917436475380333633

`A220084(n)+n*∑[n]`
-/

namespace A005906.P7917436475380333633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A005906.P7917436475380333633

namespace A005906

/-- `A220084(n)+n*∑[n]` -/
def P7917436475380333633.Spec : Prop :=
  ∀ n, P7917436475380333633.a n = A005906 n

end A005906

/-! ## A005906.P18245534861650229130

`∑[A022279(n)+(n+1)²]`
-/

namespace A005906.P18245534861650229130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P18245534861650229130

namespace A005906

/-- `∑[A022279(n)+(n+1)²]` -/
def P18245534861650229130.Spec : Prop :=
  ∀ n, P18245534861650229130.a n = A005906 n

end A005906

/-! ## A005906.P557799752899484041

`∑[A022281(n)]+(n+1)²`
-/

namespace A005906.P557799752899484041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A005906.P557799752899484041

namespace A005906

/-- `∑[A022281(n)]+(n+1)²` -/
def P557799752899484041.Spec : Prop :=
  ∀ n, P557799752899484041.a n = A005906 n

end A005906

/-! ## A005906.P2426980288740250011

`∑[A244805(n+1)-∑[n]]`
-/

namespace A005906.P2426980288740250011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244805 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P2426980288740250011

namespace A005906

/-- `∑[A244805(n+1)-∑[n]]` -/
def P2426980288740250011.Spec : Prop :=
  ∀ n, P2426980288740250011.a n = A005906 n

end A005906

/-! ## A005906.P10620364722345463373

`∑[A051624(n)+∑[13*n]+1]`
-/

namespace A005906.P10620364722345463373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P10620364722345463373

namespace A005906

/-- `∑[A051624(n)+∑[13*n]+1]` -/
def P10620364722345463373.Spec : Prop :=
  ∀ n, P10620364722345463373.a n = A005906 n

end A005906

/-! ## A005906.P9484385043787351096

`A100186(n+1)+∑[∑[n]-n]`
-/

namespace A005906.P9484385043787351096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P9484385043787351096

namespace A005906

/-- `A100186(n+1)+∑[∑[n]-n]` -/
def P9484385043787351096.Spec : Prop :=
  ∀ n, P9484385043787351096.a n = A005906 n

end A005906

/-! ## A005906.P3038468064942993496

`A139757(n)-∑[n*(n+2)-∑[n]]`
-/

namespace A005906.P3038468064942993496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005906.P3038468064942993496

namespace A005906

/-- `A139757(n)-∑[n*(n+2)-∑[n]]` -/
def P3038468064942993496.Spec : Prop :=
  ∀ n, P3038468064942993496.a n = A005906 n

end A005906

/-! ## A005906.P18233002919463968733

`A169607(n)+A005920(n)`
-/

namespace A005906.P18233002919463968733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n + A005920 n

end

end A005906.P18233002919463968733

namespace A005906

/-- `A169607(n)+A005920(n)` -/
def P18233002919463968733.Spec : Prop :=
  ∀ n, P18233002919463968733.a n = A005906 n

end A005906

/-! ## A005906.P9052064242656873478

`A027849(n)-A304993(n)`
-/

namespace A005906.P9052064242656873478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027849 n - A304993 n

end

end A005906.P9052064242656873478

namespace A005906

/-- `A027849(n)-A304993(n)` -/
def P9052064242656873478.Spec : Prop :=
  ∀ n, P9052064242656873478.a n = A005906 n

end A005906

/-! ## A005906.P7648210401671336772

`A006564(n+1)+A002492(n)`
-/

namespace A005906.P7648210401671336772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1) + A002492 n

end

end A005906.P7648210401671336772

namespace A005906

/-- `A006564(n+1)+A002492(n)` -/
def P7648210401671336772.Spec : Prop :=
  ∀ n, P7648210401671336772.a n = A005906 n

end A005906

/-! ## A005906.P5701259757411972643

`A035005(n+1)+A006000(n)`
-/

namespace A005906.P5701259757411972643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + A006000 n

end

end A005906.P5701259757411972643

namespace A005906

/-- `A035005(n+1)+A006000(n)` -/
def P5701259757411972643.Spec : Prop :=
  ∀ n, P5701259757411972643.a n = A005906 n

end A005906

/-! ## A005906.P9947021211016816401

`A092966(n+1)+A005891(n)`
-/

namespace A005906.P9947021211016816401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092966 (n + 1) + A005891 n

end

end A005906.P9947021211016816401

namespace A005906

/-- `A092966(n+1)+A005891(n)` -/
def P9947021211016816401.Spec : Prop :=
  ∀ n, P9947021211016816401.a n = A005906 n

end A005906

/-! ## A005906.P3222702744769364608

`A100174(n+1)+A006002(n)`
-/

namespace A005906.P3222702744769364608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + A006002 n

end

end A005906.P3222702744769364608

namespace A005906

/-- `A100174(n+1)+A006002(n)` -/
def P3222702744769364608.Spec : Prop :=
  ∀ n, P3222702744769364608.a n = A005906 n

end A005906

/-! ## A005906.P987429813987045842

`A135503(n)+A034720(n+1)`
-/

namespace A005906.P987429813987045842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A034720 (n + 1)

end

end A005906.P987429813987045842

namespace A005906

/-- `A135503(n)+A034720(n+1)` -/
def P987429813987045842.Spec : Prop :=
  ∀ n, P987429813987045842.a n = A005906 n

end A005906

/-! ## A005906.P5049300661950829373

`A174814(n)+A100183(n+1)`
-/

namespace A005906.P5049300661950829373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174814 n + A100183 (n + 1)

end

end A005906.P5049300661950829373

namespace A005906

/-- `A174814(n)+A100183(n+1)` -/
def P5049300661950829373.Spec : Prop :=
  ∀ n, P5049300661950829373.a n = A005906 n

end A005906

/-!
# A005907: a(n) = floor(tau*a(n-2)) + a(n-1) with a(0)=1 and a(1)=3.

The programs for A005907, the canonical program `A005907.P14260330339582156658` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005907 has offset 0).

The definition of A005907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005907.P14260330339582156658

`floor(a(n-1)+ϕ*a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005907

/-- `floor(a(n-1)+ϕ*a(n-2))` -/
def P14260330339582156658.Spec : Prop :=
  ∀ n, P14260330339582156658.a n = A005907 n

theorem P14260330339582156658.correct : P14260330339582156658.Spec := by
  intro n
  simp only [A005907]

end A005907

/-! ## A005907.P17008681193904519227

`a(n-1)-ceil(-(ϕ*a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A005907.P17008681193904519227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - ⌈-(Real.goldenRatio * (a (n - 2) : ℝ))⌉

end

end A005907.P17008681193904519227

namespace A005907

/-- `a(n-1)-ceil(-(ϕ*a(n-2)))` -/
def P17008681193904519227.Spec : Prop :=
  ∀ n, P17008681193904519227.a n = A005907 n

end A005907

/-! ## A005907.P1712928766477342508

`ceil(ϕ*a(n-2)+a(n-1)-1)` with `a(0)=1, a(1)=3`
-/

namespace A005907.P1712928766477342508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ) + (a (n - 1) - 1 : ℝ)⌉

end

end A005907.P1712928766477342508

namespace A005907

/-- `ceil(ϕ*a(n-2)+a(n-1)-1)` -/
def P1712928766477342508.Spec : Prop :=
  ∀ n, P1712928766477342508.a n = A005907 n

end A005907

/-! ## A005907.P1080593064257771485

`floor(a(n-1)+a(n-2)/(ϕ-1))` with `a(0)=1, a(1)=3`
-/

namespace A005907.P1080593064257771485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 2) : ℝ) / (Real.goldenRatio - 1)⌋

end

end A005907.P1080593064257771485

namespace A005907

/-- `floor(a(n-1)+a(n-2)/(ϕ-1))` -/
def P1080593064257771485.Spec : Prop :=
  ∀ n, P1080593064257771485.a n = A005907 n

end A005907

/-! ## A005907.P9098790574395160409

`ceil(ϕ*a(n-2)-(1-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A005907.P9098790574395160409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ) - (1 - a (n - 1) : ℝ)⌉

end

end A005907.P9098790574395160409

namespace A005907

/-- `ceil(ϕ*a(n-2)-(1-a(n-1)))` -/
def P9098790574395160409.Spec : Prop :=
  ∀ n, P9098790574395160409.a n = A005907 n

end A005907

/-!
# A005908: a(n) = floor( phi*a(n-1) ) + floor( phi*a(n-2) ), where phi is the golden ratio.

The programs for A005908, the canonical program `A005908.P1431358548210291200` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005908 has offset 0).

The definition of A005908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005908.P5172396340057745279

`floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A005908.P5172396340057745279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + ⌊Real.goldenRatio * (a (n - 2) : ℝ)⌋

end

end A005908.P5172396340057745279

namespace A005908

/-- `floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` -/
def P5172396340057745279.Spec : Prop :=
  ∀ n, P5172396340057745279.a n = A005908 n

end A005908

/-! ## A005908.P1431358548210291200

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005908

/-- `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)` -/
def P1431358548210291200.Spec : Prop :=
  ∀ n, P1431358548210291200.a n = A005908 n

theorem P1431358548210291200.correct : P1431358548210291200.Spec := by
  intro n
  simp only [A005908]

end A005908

/-! ## A005908.P9588272759213216927

`A005913(n)-A210460(n+1)`
-/

namespace A005908.P9588272759213216927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - A210460 (n + 1)

end

end A005908.P9588272759213216927

namespace A005908

/-- `A005913(n)-A210460(n+1)` -/
def P9588272759213216927.Spec : Prop :=
  ∀ n, P9588272759213216927.a n = A005908 n

end A005908

/-! ## A005908.P10887748425490840069

`A005913(A254667(n))%A210460(n+1)`
-/

namespace A005908.P10887748425490840069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005913 (A254667 n).toNat) (A210460 (n + 1))

end

end A005908.P10887748425490840069

namespace A005908

/-- `A005913(A254667(n))%A210460(n+1)` -/
def P10887748425490840069.Spec : Prop :=
  ∀ n, P10887748425490840069.a n = A005908 n

end A005908

/-!
# A005909: a(n) = floor(tau*a(n-1)) + floor(tau*a(n-2)) with a(0)=0 and a(1)=2.

The programs for A005909, the canonical program `A005909.P10408857993867275050` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005909 has offset 0).

The definition of A005909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005909.P10408857993867275050

`floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005909

/-- `floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` -/
def P10408857993867275050.Spec : Prop :=
  ∀ n, P10408857993867275050.a n = A005909 n

theorem P10408857993867275050.correct : P10408857993867275050.Spec := by
  intro n
  simp only [A005909]

end A005909

/-! ## A005909.P6228778405147726038

`round(ϕ*(a(n-1)+a(n-2)))-1` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A005909.P6228778405147726038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ)) - 1

end

end A005909.P6228778405147726038

namespace A005909

/-- `round(ϕ*(a(n-1)+a(n-2)))-1` -/
def P6228778405147726038.Spec : Prop :=
  ∀ n, P6228778405147726038.a n = A005909 n

end A005909

/-! ## A005909.P11873926780107487874

`A005908(n)+Δ[A005908(n+1)]`
-/

namespace A005909.P11873926780107487874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 n + (f1 (n + 1) - f1 n)

end

end A005909.P11873926780107487874

namespace A005909

/-- `A005908(n)+Δ[A005908(n+1)]` -/
def P11873926780107487874.Spec : Prop :=
  ∀ n, P11873926780107487874.a n = A005909 n

end A005909

/-! ## A005909.P15247491225024943871

`record[A005913(n)-Δ[A272642(n)]]`
-/

namespace A005909.P15247491225024943871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005913 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005909.P15247491225024943871

namespace A005909

/-- `record[A005913(n)-Δ[A272642(n)]]` -/
def P15247491225024943871.Spec : Prop :=
  ∀ n, P15247491225024943871.a n = A005909 n

end A005909

/-! ## A005909.P13797928479394010315

`A184656(a(n-1)+a(n-2))` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A005909.P13797928479394010315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  A184656 (a (n - 1) + a (n - 2)).toNat

end

end A005909.P13797928479394010315

namespace A005909

/-- `A184656(a(n-1)+a(n-2))` -/
def P13797928479394010315.Spec : Prop :=
  ∀ n, P13797928479394010315.a n = A005909 n

end A005909

/-!
# A005910: Truncated octahedral numbers: 16*n^3 - 33*n^2 + 24*n - 6.

The programs for A005910, the canonical program `A005910.P3096839229101576451` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005910 has offset 1).

The definition of A005910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)^3-33*(n+1)²+24*(n+1)-6` (program `A005910.P3096839229101576451`, by `A005910.P3096839229101576451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005910.P3096839229101576451

`16*(n+1)^3-33*(n+1)²+24*(n+1)-6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005910

/-- `16*(n+1)^3-33*(n+1)²+24*(n+1)-6` -/
def P3096839229101576451.Spec : Prop :=
  ∀ n, P3096839229101576451.a n = A005910 (n + 1)

theorem P3096839229101576451.correct : P3096839229101576451.Spec := by
  intro n
  simp only [A005910, Nat.add_sub_cancel]

end A005910

/-!
# A005911: Number of points on surface of truncated cube: a(n) = 46*n^2 + 2 for n > 0.

The programs for A005911, the canonical program `A005911.P18372833306042500955` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005911 has offset 0).

The definition of A005911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005911.P18372833306042500955

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=48, a(2)=186, a(3)=416`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005911

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18372833306042500955.Spec : Prop :=
  ∀ n, P18372833306042500955.a n = A005911 n

theorem P18372833306042500955.correct : P18372833306042500955.Spec := by
  intro n
  simp only [A005911]

end A005911

/-! ## A005911.P8022918329830262800

`round(3/acot(n)²)+43*n²`
-/

namespace A005911.P8022918329830262800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2) + (43 * n ^ 2 : ℤ)

end

end A005911.P8022918329830262800

namespace A005911

/-- `round(3/acot(n)²)+43*n²` -/
def P8022918329830262800.Spec : Prop :=
  ∀ n, P8022918329830262800.a n = A005911 n

end A005911

/-! ## A005911.P882038834441631717

`abs(Δ[C(abs(1-4*n), 3)]+14*n²)`
-/

namespace A005911.P882038834441631717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (4 * n : ℤ)|.toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (14 * n ^ 2 : ℤ)|

end

end A005911.P882038834441631717

namespace A005911

/-- `abs(Δ[C(abs(1-4*n), 3)]+14*n²)` -/
def P882038834441631717.Spec : Prop :=
  ∀ n, P882038834441631717.a n = A005911 n

end A005911

/-! ## A005911.P3555801494835317180

`21*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²`
-/

namespace A005911.P3555801494835317180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n ^ 2 : ℤ))

end

end A005911.P3555801494835317180

namespace A005911

/-- `21*n²+Δ[floor((2*n)²/(2*n+1))^3]+n²` -/
def P3555801494835317180.Spec : Prop :=
  ∀ n, P3555801494835317180.a n = A005911 n

end A005911

/-! ## A005911.P16764994835904042995

`abs((2*n)²+record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+2*n²)`
-/

namespace A005911.P16764994835904042995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((2 * n * (10 * n) : ℤ) - 1 : ℚ) / 2) + 2) * (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n ^ 2 : ℤ))|

end

end A005911.P16764994835904042995

namespace A005911

/-- `abs((2*n)²+record[(round((2*n*10*n-1)/2)+2)*and(1, n+1)]+2*n²)` -/
def P16764994835904042995.Spec : Prop :=
  ∀ n, P16764994835904042995.a n = A005911 n

end A005911

/-! ## A005911.P11864119836600191901

`floor(A016910(n)+(A010009(n)+A010000(n))/2)`
-/

namespace A005911.P11864119836600191901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016910 n : ℚ) + (A010009 n + A010000 n : ℚ) / 2⌋

end

end A005911.P11864119836600191901

namespace A005911

/-- `floor(A016910(n)+(A010009(n)+A010000(n))/2)` -/
def P11864119836600191901.Spec : Prop :=
  ∀ n, P11864119836600191901.a n = A005911 n

end A005911

/-! ## A005911.P18308533691488195940

`A000027(A064761(n)+A010020(n))`
-/

namespace A005911.P18308533691488195940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A064761 n + A010020 n).toNat

end

end A005911.P18308533691488195940

namespace A005911

/-- `A000027(A064761(n)+A010020(n))` -/
def P18308533691488195940.Spec : Prop :=
  ∀ n, P18308533691488195940.a n = A005911 n

end A005911

/-! ## A005911.P11132927596842932700

`A000027(A016910(n)+A008253(2*n))`
-/

namespace A005911.P11132927596842932700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016910 n + A008253 (2 * n)).toNat

end

end A005911.P11132927596842932700

namespace A005911

/-- `A000027(A016910(n)+A008253(2*n))` -/
def P11132927596842932700.Spec : Prop :=
  ∀ n, P11132927596842932700.a n = A005911 n

end A005911

/-! ## A005911.P13518475314550542938

`A000027(A005905(2*n)-A033583(n))`
-/

namespace A005911.P13518475314550542938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005905 (2 * n) - A033583 n).toNat

end

end A005911.P13518475314550542938

namespace A005911

/-- `A000027(A005905(2*n)-A033583(n))` -/
def P13518475314550542938.Spec : Prop :=
  ∀ n, P13518475314550542938.a n = A005911 n

end A005911

/-! ## A005911.P9839058746301471747

`record[A000122(n)*A215148(n)]`
-/

namespace A005911.P9839058746301471747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005911.P9839058746301471747

namespace A005911

/-- `record[A000122(n)*A215148(n)]` -/
def P9839058746301471747.Spec : Prop :=
  ∀ n, P9839058746301471747.a n = A005911 n

end A005911

/-!
# A005912: Truncated cube numbers.

The programs for A005912, the canonical program `A005912.P4137791290748005955` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005912 has offset 0).

The definition of A005912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005912.P4137791290748005955

`77/3*n^3+23*n²+19/3*n+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005912

/-- `77/3*n^3+23*n²+19/3*n+1` -/
def P4137791290748005955.Spec : Prop :=
  ∀ n, P4137791290748005955.a n = (A005912 n : ℚ)

end A005912

/-! ## A005912.P12151085451608770235

`abs(A000578(3*n+1)-A005581(2*n+1)-n)`
-/

namespace A005912.P12151085451608770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 (3 * n + 1) - A005581 (2 * n + 1) - (n : ℤ)|

end

end A005912.P12151085451608770235

namespace A005912

/-- `abs(A000578(3*n+1)-A005581(2*n+1)-n)` -/
def P12151085451608770235.Spec : Prop :=
  ∀ n, P12151085451608770235.a n = A005912 n

end A005912

/-!
# A005913: a(n) = floor(tau*a(n-1)) + floor(tau*a(n-2)) with a(0)=1 and a(1)=3.

The programs for A005913, the canonical program `A005913.P17637009638406168542` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005913 has offset 0).

The definition of A005913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005913.P5449233178040053771

`round(ϕ*(a(n-1)+a(n-2)))-1` with `a(0)=1, a(1)=3`
-/

namespace A005913.P5449233178040053771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ)) - 1

end

end A005913.P5449233178040053771

namespace A005913

/-- `round(ϕ*(a(n-1)+a(n-2)))-1` -/
def P5449233178040053771.Spec : Prop :=
  ∀ n, P5449233178040053771.a n = A005913 n

end A005913

/-! ## A005913.P322261489563414584

`floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A005913.P322261489563414584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ + ⌊Real.goldenRatio * (a (n - 2) : ℝ)⌋

end

end A005913.P322261489563414584

namespace A005913

/-- `floor(ϕ*a(n-1))+floor(ϕ*a(n-2))` -/
def P322261489563414584.Spec : Prop :=
  ∀ n, P322261489563414584.a n = A005913 n

end A005913

/-! ## A005913.P17637009638406168542

`A210460(n+1)+A005908(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005913

/-- `A210460(n+1)+A005908(n)` -/
def P17637009638406168542.Spec : Prop :=
  ∀ n, P17637009638406168542.a n = A005913 n

theorem P17637009638406168542.correct : P17637009638406168542.Spec := by
  intro n
  simp only [A005913]

end A005913

/-! ## A005913.P2248576705379868319

`A272642(n)+record[A005908(A002262(n))]`
-/

namespace A005913.P2248576705379868319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005913.P2248576705379868319

namespace A005913

/-- `A272642(n)+record[A005908(A002262(n))]` -/
def P2248576705379868319.Spec : Prop :=
  ∀ n, P2248576705379868319.a n = A005913 n

end A005913

/-!
# A005914: Number of points on surface of hexagonal prism: 12*n^2 + 2 for n > 0 (coordination sequence for W(2)).

The programs for A005914, the canonical program `A005914.P8929701374310542003` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005914 has offset 0).

The definition of A005914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005914.P8929701374310542003

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=14, a(2)=50, a(3)=110`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005914

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8929701374310542003.Spec : Prop :=
  ∀ n, P8929701374310542003.a n = A005914 n

theorem P8929701374310542003.correct : P8929701374310542003.Spec := by
  intro n
  simp only [A005914]

end A005914

/-! ## A005914.P18130716381721028813

`round(3/acot(2*n)²)`
-/

namespace A005914.P18130716381721028813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2)

end

end A005914.P18130716381721028813

namespace A005914

/-- `round(3/acot(2*n)²)` -/
def P18130716381721028813.Spec : Prop :=
  ∀ n, P18130716381721028813.a n = A005914 n

end A005914

/-! ## A005914.P14255419828201469575

`∑[a(n-1)+24]` with `a(0)=1, a(1)=13, a(2)=36`
-/

namespace A005914.P14255419828201469575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13, 36] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005914.P14255419828201469575

namespace A005914

/-- `∑[a(n-1)+24]` -/
def P14255419828201469575.Spec : Prop :=
  ∀ n, (P14255419828201469575.a n : ℤ) = A005914 n

end A005914

/-! ## A005914.P7131534156680508770

`Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-(3*n)²`
-/

namespace A005914.P7131534156680508770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / (2 * n + 1 : ℚ)⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ) - ((2 * n) ^ 2 : ℤ) - ((3 * n) ^ 2 : ℤ)

end

end A005914.P7131534156680508770

namespace A005914

/-- `Δ[floor((2*n)²/(2*n+1))^3]+n²-(2*n)²-(3*n)²` -/
def P7131534156680508770.Spec : Prop :=
  ∀ n, P7131534156680508770.a n = A005914 n

end A005914

/-! ## A005914.P17853931416324628666

`∑[A101103(n+1)]`
-/

namespace A005914.P17853931416324628666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005914.P17853931416324628666

namespace A005914

/-- `∑[A101103(n+1)]` -/
def P17853931416324628666.Spec : Prop :=
  ∀ n, P17853931416324628666.a n = A005914 n

end A005914

/-! ## A005914.P10506341822149696928

`xor(A010673(n), A110907(n))`
-/

namespace A005914.P10506341822149696928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A110907 n)

end

end A005914.P10506341822149696928

namespace A005914

/-- `xor(A010673(n), A110907(n))` -/
def P10506341822149696928.Spec : Prop :=
  ∀ n, P10506341822149696928.a n = A005914 n

end A005914

/-! ## A005914.P9341890001261627493

`or(A000005(A020639(n+1)), A135453(n))`
-/

namespace A005914.P9341890001261627493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A020639 (n + 1)).toNat) (A135453 n)

end

end A005914.P9341890001261627493

namespace A005914

/-- `or(A000005(A020639(n+1)), A135453(n))` -/
def P9341890001261627493.Spec : Prop :=
  ∀ n, P9341890001261627493.a n = A005914 n

end A005914

/-! ## A005914.P7805507454213455139

`or(A000005(A008578(n+1)), A135453(n))`
-/

namespace A005914.P7805507454213455139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A008578 (n + 1)).toNat) (A135453 n)

end

end A005914.P7805507454213455139

namespace A005914

/-- `or(A000005(A008578(n+1)), A135453(n))` -/
def P7805507454213455139.Spec : Prop :=
  ∀ n, P7805507454213455139.a n = A005914 n

end A005914

/-! ## A005914.P16055080687991120070

`A005918(2*n)`
-/

namespace A005914.P16055080687991120070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (2 * n)

end

end A005914.P16055080687991120070

namespace A005914

/-- `A005918(2*n)` -/
def P16055080687991120070.Spec : Prop :=
  ∀ n, P16055080687991120070.a n = A005914 n

end A005914

/-! ## A005914.P16208552699330811205

`(A299254(2*n)+A299254(n))/2`
-/

namespace A005914.P16208552699330811205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299254 (2 * n) + A299254 n : ℚ) / 2

end

end A005914.P16208552699330811205

namespace A005914

/-- `(A299254(2*n)+A299254(n))/2` -/
def P16208552699330811205.Spec : Prop :=
  ∀ n, P16208552699330811205.a n = (A005914 n : ℚ)

end A005914

/-! ## A005914.P532780242483856781

`A115285(3*n)`
-/

namespace A005914.P532780242483856781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 (3 * n)

end

end A005914.P532780242483856781

namespace A005914

/-- `A115285(3*n)` -/
def P532780242483856781.Spec : Prop :=
  ∀ n, P532780242483856781.a n = A005914 n

end A005914

/-! ## A005914.P16194220980197479654

`∩[A005918(n), A115285(n)]`
-/

namespace A005914.P16194220980197479654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005914.P16194220980197479654

namespace A005914

/-- `∩[A005918(n), A115285(n)]` -/
def P16194220980197479654.Spec : Prop :=
  ∀ n, (P16194220980197479654.a n : ℤ) = A005914 n

end A005914

/-! ## A005914.P9214652942255596198

`A343941(A017545(n))`
-/

namespace A005914.P9214652942255596198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343941 (A017545 n).toNat

end

end A005914.P9214652942255596198

namespace A005914

/-- `A343941(A017545(n))` -/
def P9214652942255596198.Spec : Prop :=
  ∀ n, P9214652942255596198.a n = A005914 n

end A005914

/-! ## A005914.P6477261693702360408

`A276189(∑[n]+n)`
-/

namespace A005914.P6477261693702360408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276189 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005914.P6477261693702360408

namespace A005914

/-- `A276189(∑[n]+n)` -/
def P6477261693702360408.Spec : Prop :=
  ∀ n, P6477261693702360408.a n = A005914 n

end A005914

/-! ## A005914.P15945345988511831693

`∩[A331605(n+1), A115285(n)]`
-/

namespace A005914.P15945345988511831693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005914.P15945345988511831693

namespace A005914

/-- `∩[A331605(n+1), A115285(n)]` -/
def P15945345988511831693.Spec : Prop :=
  ∀ n, (P15945345988511831693.a n : ℤ) = A005914 n

end A005914

/-!
# A005915: Hexagonal prism numbers: a(n) = (n + 1)*(3*n^2 + 3*n + 1).

The programs for A005915, the canonical program `A005915.P10778017196570457320` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005915 has offset 0).

The definition of A005915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(3*n²+3*n+1)` (program `A005915.P10778017196570457320`, by `A005915.P10778017196570457320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005915.P10778017196570457320

`(n+1)*(3*n²+3*n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005915

/-- `(n+1)*(3*n²+3*n+1)` -/
def P10778017196570457320.Spec : Prop :=
  ∀ n, (P10778017196570457320.a n : ℤ) = A005915 n

theorem P10778017196570457320.correct : P10778017196570457320.Spec := by
  intro n
  simp only [A005915]

end A005915

/-! ## A005915.P3101502388069050585

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=57, a(3)=148`
-/

namespace A005915.P3101502388069050585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 57, 148] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A005915.P3101502388069050585

namespace A005915

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3101502388069050585.Spec : Prop :=
  ∀ n, P3101502388069050585.a n = A005915 n

theorem P3101502388069050585.correct : P3101502388069050585.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005915, Nat.add_sub_cancel, A005915.P3101502388069050585.a, A005915.P10778017196570457320.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005915, Nat.add_sub_cancel, A005915.P3101502388069050585.a, A005915.P10778017196570457320.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005915

/-! ## A005915.P260684510275192369

`lcm(n+1, Δ[n^3])`
-/

namespace A005915.P260684510275192369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005915.P260684510275192369

namespace A005915

/-- `lcm(n+1, Δ[n^3])` -/
def P260684510275192369.Spec : Prop :=
  ∀ n, (P260684510275192369.a n : ℤ) = A005915 n

end A005915

/-! ## A005915.P13233115466411222666

`Δ[n²²-C(n, 2)²]`
-/

namespace A005915.P13233115466411222666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005915.P13233115466411222666

namespace A005915

/-- `Δ[n²²-C(n, 2)²]` -/
def P13233115466411222666.Spec : Prop :=
  ∀ n, P13233115466411222666.a n = A005915 n

end A005915

/-! ## A005915.P6421331559673666990

`∑[∑[a(n-1)+18]]` with `a(0)=1, a(1)=12`
-/

namespace A005915.P6421331559673666990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P6421331559673666990

namespace A005915

/-- `∑[∑[a(n-1)+18]]` -/
def P6421331559673666990.Spec : Prop :=
  ∀ n, (P6421331559673666990.a n : ℤ) = A005915 n

end A005915

/-! ## A005915.P10110011328146947496

`∑[∑[ogf((1+10x+7x^2)/(1-2x+x^2))]]`
-/

namespace A005915.P10110011328146947496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 7] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P10110011328146947496

namespace A005915

/-- `∑[∑[ogf((1+10x+7x^2)/(1-2x+x^2))]]` -/
def P10110011328146947496.Spec : Prop :=
  ∀ n, P10110011328146947496.a n = A005915 n

end A005915

/-! ## A005915.P5781455914893106617

`3*lcm(n, (n+1)²)+n+1`
-/

namespace A005915.P5781455914893106617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm n ((n + 1) ^ 2) + (n + 1)

end

end A005915.P5781455914893106617

namespace A005915

/-- `3*lcm(n, (n+1)²)+n+1` -/
def P5781455914893106617.Spec : Prop :=
  ∀ n, (P5781455914893106617.a n : ℤ) = A005915 n

end A005915

/-! ## A005915.P14287612939256886870

`6*(n+1)*C(n+1, 2)+n+1`
-/

namespace A005915.P14287612939256886870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1) * Nat.choose (n + 1) 2) + (n + 1)

end

end A005915.P14287612939256886870

namespace A005915

/-- `6*(n+1)*C(n+1, 2)+n+1` -/
def P14287612939256886870.Spec : Prop :=
  ∀ n, (P14287612939256886870.a n : ℤ) = A005915 n

end A005915

/-! ## A005915.P4061311780430629949

`lcm(2*n+1, ∑[2*n])+(n+1)^3`
-/

namespace A005915.P4061311780430629949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1) ^ 3

end

end A005915.P4061311780430629949

namespace A005915

/-- `lcm(2*n+1, ∑[2*n])+(n+1)^3` -/
def P4061311780430629949.Spec : Prop :=
  ∀ n, (P4061311780430629949.a n : ℤ) = A005915 n

end A005915

/-! ## A005915.P1461814552294544994

`∑[A082040(n)]`
-/

namespace A005915.P1461814552294544994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P1461814552294544994

namespace A005915

/-- `∑[A082040(n)]` -/
def P1461814552294544994.Spec : Prop :=
  ∀ n, P1461814552294544994.a n = A005915 n

end A005915

/-! ## A005915.P3124316577695856383

`∑[∑[A019557(n)]]`
-/

namespace A005915.P3124316577695856383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P3124316577695856383

namespace A005915

/-- `∑[∑[A019557(n)]]` -/
def P3124316577695856383.Spec : Prop :=
  ∀ n, P3124316577695856383.a n = A005915 n

end A005915

/-! ## A005915.P13384632646494790361

`∑[A045945(n)+1]`
-/

namespace A005915.P13384632646494790361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P13384632646494790361

namespace A005915

/-- `∑[A045945(n)+1]` -/
def P13384632646494790361.Spec : Prop :=
  ∀ n, P13384632646494790361.a n = A005915 n

end A005915

/-! ## A005915.P5300628770567366778

`A213829(n+1)/2`
-/

namespace A005915.P5300628770567366778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213829 (n + 1) : ℚ) / 2

end

end A005915.P5300628770567366778

namespace A005915

/-- `A213829(n+1)/2` -/
def P5300628770567366778.Spec : Prop :=
  ∀ n, P5300628770567366778.a n = (A005915 n : ℚ)

end A005915

/-! ## A005915.P16740825093984727737

`A059986(n)+1+n`
-/

namespace A005915.P16740825093984727737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + 1 + (n : ℤ)

end

end A005915.P16740825093984727737

namespace A005915

/-- `A059986(n)+1+n` -/
def P16740825093984727737.Spec : Prop :=
  ∀ n, P16740825093984727737.a n = A005915 n

end A005915

/-! ## A005915.P17412292641530161119

`∑[A236267(n)+n²]`
-/

namespace A005915.P17412292641530161119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P17412292641530161119

namespace A005915

/-- `∑[A236267(n)+n²]` -/
def P17412292641530161119.Spec : Prop :=
  ∀ n, P17412292641530161119.a n = A005915 n

end A005915

/-! ## A005915.P13074190656614999138

`A220084(n)-∑[n²]`
-/

namespace A005915.P13074190656614999138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005915.P13074190656614999138

namespace A005915

/-- `A220084(n)-∑[n²]` -/
def P13074190656614999138.Spec : Prop :=
  ∀ n, P13074190656614999138.a n = A005915 n

end A005915

/-! ## A005915.P3372039551899207874

`∑[2*A081266(n)+1]`
-/

namespace A005915.P3372039551899207874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P3372039551899207874

namespace A005915

/-- `∑[2*A081266(n)+1]` -/
def P3372039551899207874.Spec : Prop :=
  ∀ n, P3372039551899207874.a n = A005915 n

end A005915

/-! ## A005915.P8634494931338665354

`∑[2*A038764(n)-1]`
-/

namespace A005915.P8634494931338665354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038764 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P8634494931338665354

namespace A005915

/-- `∑[2*A038764(n)-1]` -/
def P8634494931338665354.Spec : Prop :=
  ∀ n, P8634494931338665354.a n = A005915 n

end A005915

/-! ## A005915.P3670001598853029449

`∑[A045946(n)/2+1]`
-/

namespace A005915.P3670001598853029449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 n : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P3670001598853029449

namespace A005915

/-- `∑[A045946(n)/2+1]` -/
def P3670001598853029449.Spec : Prop :=
  ∀ n, P3670001598853029449.a n = (A005915 n : ℚ)

end A005915

/-! ## A005915.P4347273603592785201

`∑[(A081272(n)+1)/2]`
-/

namespace A005915.P4347273603592785201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081272 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005915.P4347273603592785201

namespace A005915

/-- `∑[(A081272(n)+1)/2]` -/
def P4347273603592785201.Spec : Prop :=
  ∀ n, P4347273603592785201.a n = (A005915 n : ℚ)

end A005915

/-!
# A005916: Molien series for a certain group of order 52.

The programs for A005916, there is no canonical definition to state claims against.
-/

/-! ## A005916.P12140290103647349561

`floor(Δ[sqrt(A324755(3*(n+1)))])`
-/

namespace A005916.P12140290103647349561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A324755 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A005916.P12140290103647349561

/-! ## A005916.P11922638322342033956

`A000700(2*n)-A059841(A296531(n))`
-/

namespace A005916.P11922638322342033956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n) - A059841 (A296531 n).toNat

end

end A005916.P11922638322342033956

/-! ## A005916.P10607225029423590405

`A241317(n)+A000035(A027602(n))`
-/

namespace A005916.P10607225029423590405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 n + A000035 (A027602 n).toNat

end

end A005916.P10607225029423590405

/-! ## A005916.P12551837643554998730

`A241317(n)+A000035(A077168(n))`
-/

namespace A005916.P12551837643554998730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 n + A000035 (A077168 n).toNat

end

end A005916.P12551837643554998730

/-! ## A005916.P7008268028176903002

`A241317(n)+A011655(A083318(n))`
-/

namespace A005916.P7008268028176903002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 n + A011655 (A083318 n).toNat

end

end A005916.P7008268028176903002

/-!
# A005917: Rhombic dodecahedral numbers: a(n) = n^4 - (n - 1)^4.

The programs for A005917, the canonical program `A005917.P593194106963301078` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005917 has offset 1).

The definition of A005917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4-n^4` (program `A005917.P593194106963301078`, by `A005917.P593194106963301078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005917.P593194106963301078

`(n+1)^4-n^4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005917

/-- `(n+1)^4-n^4` -/
def P593194106963301078.Spec : Prop :=
  ∀ n, P593194106963301078.a n = A005917 (n + 1)

theorem P593194106963301078.correct : P593194106963301078.Spec := by
  intro n
  simp only [A005917, Nat.add_sub_cancel]

end A005917

/-! ## A005917.P10809269710984619251

`(4*C(n+1, 2)+1)*sqrt(8*C(n+1, 2)+1)`
-/

namespace A005917.P10809269710984619251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 1) 2 + 1 : ℝ) * Real.sqrt (8 * Nat.choose (n + 1) 2 + 1 : ℝ)

end

end A005917.P10809269710984619251

namespace A005917

/-- `(4*C(n+1, 2)+1)*sqrt(8*C(n+1, 2)+1)` -/
def P10809269710984619251.Spec : Prop :=
  ∀ n, P10809269710984619251.a n = (A005917 (n + 1) : ℝ)

end A005917

/-! ## A005917.P15634454621629244286

`A005408(n)*A001844(n)`
-/

namespace A005917.P15634454621629244286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A001844 n

end

end A005917.P15634454621629244286

namespace A005917

/-- `A005408(n)*A001844(n)` -/
def P15634454621629244286.Spec : Prop :=
  ∀ n, P15634454621629244286.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P960404313353016274

`A204558(2*(n+1)-1)/(2*(n+1)-1)`
-/

namespace A005917.P960404313353016274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204558 (2 * (n + 1) - 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A005917.P960404313353016274

namespace A005917

/-- `A204558(2*(n+1)-1)/(2*(n+1)-1)` -/
def P960404313353016274.Spec : Prop :=
  ∀ n, P960404313353016274.a n = (A005917 (n + 1) : ℚ)

end A005917

/-! ## A005917.P9598874550340257142

`or(1, Δ[n²²])`
-/

namespace A005917.P9598874550340257142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005917.P9598874550340257142

namespace A005917

/-- `or(1, Δ[n²²])` -/
def P9598874550340257142.Spec : Prop :=
  ∀ n, P9598874550340257142.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P7076373933673133255

`lcm(2, Δ[n²²])/2`
-/

namespace A005917.P7076373933673133255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A005917.P7076373933673133255

namespace A005917

/-- `lcm(2, Δ[n²²])/2` -/
def P7076373933673133255.Spec : Prop :=
  ∀ n, P7076373933673133255.a n = (A005917 (n + 1) : ℚ)

end A005917

/-! ## A005917.P9366414775137912342

`xor(1, Δ[n²²]-1)`
-/

namespace A005917.P9366414775137912342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)

end

end A005917.P9366414775137912342

namespace A005917

/-- `xor(1, Δ[n²²]-1)` -/
def P9366414775137912342.Spec : Prop :=
  ∀ n, P9366414775137912342.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P269414300553550490

`-Δ[xor(-1, n²²)]`
-/

namespace A005917.P269414300553550490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A005917.P269414300553550490

namespace A005917

/-- `-Δ[xor(-1, n²²)]` -/
def P269414300553550490.Spec : Prop :=
  ∀ n, P269414300553550490.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P6338993712985851378

`-Δ[-lcm(n, n²²)]`
-/

namespace A005917.P6338993712985851378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.lcm n ((n ^ 2) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A005917.P6338993712985851378

namespace A005917

/-- `-Δ[-lcm(n, n²²)]` -/
def P6338993712985851378.Spec : Prop :=
  ∀ n, P6338993712985851378.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P11504311238115663504

`∑[round(3/acot(2*n)²)]`
-/

namespace A005917.P11504311238115663504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005917.P11504311238115663504

namespace A005917

/-- `∑[round(3/acot(2*n)²)]` -/
def P11504311238115663504.Spec : Prop :=
  ∀ n, P11504311238115663504.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P8289786673773601058

`gcd(and(2, n²), Δ[n²²])`
-/

namespace A005917.P8289786673773601058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 2 (n ^ 2) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005917.P8289786673773601058

namespace A005917

/-- `gcd(and(2, n²), Δ[n²²])` -/
def P8289786673773601058.Spec : Prop :=
  ∀ n, (P8289786673773601058.a n : ℤ) = A005917 (n + 1)

end A005917

/-! ## A005917.P14423364870180490419

`C(Δ[n²²], ϕ²-ϕ)`
-/

namespace A005917.P14423364870180490419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A005917.P14423364870180490419

namespace A005917

/-- `C(Δ[n²²], ϕ²-ϕ)` -/
def P14423364870180490419.Spec : Prop :=
  ∀ n, (P14423364870180490419.a n : ℤ) = A005917 (n + 1)

end A005917

/-! ## A005917.P2655353063297810692

`and(ϕ-ϕ², Δ[n²²])`
-/

namespace A005917.P2655353063297810692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005917.P2655353063297810692

namespace A005917

/-- `and(ϕ-ϕ², Δ[n²²])` -/
def P2655353063297810692.Spec : Prop :=
  ∀ n, P2655353063297810692.a n = A005917 (n + 1)

end A005917

/-! ## A005917.P10403969532937015962

`gcd(n, n+1)*Δ[n²²]`
-/

namespace A005917.P10403969532937015962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005917.P10403969532937015962

namespace A005917

/-- `gcd(n, n+1)*Δ[n²²]` -/
def P10403969532937015962.Spec : Prop :=
  ∀ n, P10403969532937015962.a n = A005917 (n + 1)

theorem P10403969532937015962.correct : P10403969532937015962.Spec := by
  intro n
  simp only [A005917, Nat.add_sub_cancel, A005917.P10403969532937015962.f1, A005917.P10403969532937015962.a, A005917.P593194106963301078.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A005917

/-! ## A005917.P11813662487760774983

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=13, a(2)=36`
-/

namespace A005917.P11813662487760774983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 13, 36] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005917.P11813662487760774983

namespace A005917

/-- `∑[∑[a(n-1)+24]]` -/
def P11813662487760774983.Spec : Prop :=
  ∀ n, (P11813662487760774983.a n : ℤ) = A005917 (n + 1)

end A005917

/-! ## A005917.P1686055496210142706

`lcm((n+1)²+n², Δ[n²])`
-/

namespace A005917.P1686055496210142706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 + n ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A005917.P1686055496210142706

namespace A005917

/-- `lcm((n+1)²+n², Δ[n²])` -/
def P1686055496210142706.Spec : Prop :=
  ∀ n, (P1686055496210142706.a n : ℤ) = A005917 (n + 1)

end A005917

/-! ## A005917.P10252645056852818522

`Δ[n²²]/gcd(n-1, n²)`
-/

namespace A005917.P10252645056852818522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℚ)

end

end A005917.P10252645056852818522

namespace A005917

/-- `Δ[n²²]/gcd(n-1, n²)` -/
def P10252645056852818522.Spec : Prop :=
  ∀ n, P10252645056852818522.a n = (A005917 (n + 1) : ℚ)

end A005917

/-! ## A005917.P8038042742137705273

`C((2*n+1)²+1, 2)/(2*n+1)`
-/

namespace A005917.P8038042742137705273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * n + 1) ^ 2 + 1) 2 : ℚ) / (2 * n + 1 : ℚ)

end

end A005917.P8038042742137705273

namespace A005917

/-- `C((2*n+1)²+1, 2)/(2*n+1)` -/
def P8038042742137705273.Spec : Prop :=
  ∀ n, P8038042742137705273.a n = (A005917 (n + 1) : ℚ)

end A005917

/-! ## A005917.P754216073264143073

`(2*n+1)/2*xor(3, (2*n+1)²)`
-/

namespace A005917.P754216073264143073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 2 * (Nat.xor 3 ((2 * n + 1) ^ 2) : ℚ)

end

end A005917.P754216073264143073

namespace A005917

/-- `(2*n+1)/2*xor(3, (2*n+1)²)` -/
def P754216073264143073.Spec : Prop :=
  ∀ n, P754216073264143073.a n = (A005917 (n + 1) : ℚ)

end A005917

/-! ## A005917.P4460267716271452519

`(2*n+1)*(C(2*n+1, 2)+n+1)`
-/

namespace A005917.P4460267716271452519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (Nat.choose (2 * n + 1) 2 + (n + 1))

end

end A005917.P4460267716271452519

namespace A005917

/-- `(2*n+1)*(C(2*n+1, 2)+n+1)` -/
def P4460267716271452519.Spec : Prop :=
  ∀ n, (P4460267716271452519.a n : ℤ) = A005917 (n + 1)

end A005917

/-!
# A005918: Number of points on surface of square pyramid: 3*n^2 + 2 (n>0).

The programs for A005918, the canonical program `A005918.P1284474615267403510` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005918 has offset 0).

The definition of A005918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005918.P1284474615267403510

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=29`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005918

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1284474615267403510.Spec : Prop :=
  ∀ n, P1284474615267403510.a n = A005918 n

theorem P1284474615267403510.correct : P1284474615267403510.Spec := by
  intro n
  simp only [A005918]

end A005918

/-! ## A005918.P5705828086943289474

`round(3/acot(n)²)`
-/

namespace A005918.P5705828086943289474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2)

end

end A005918.P5705828086943289474

namespace A005918

/-- `round(3/acot(n)²)` -/
def P5705828086943289474.Spec : Prop :=
  ∀ n, P5705828086943289474.a n = A005918 n

end A005918

/-! ## A005918.P16587995386936333392

`floor((2/acot(n))²)-n²`
-/

namespace A005918.P16587995386936333392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋ - (n ^ 2 : ℤ)

end

end A005918.P16587995386936333392

namespace A005918

/-- `floor((2/acot(n))²)-n²` -/
def P16587995386936333392.Spec : Prop :=
  ∀ n, P16587995386936333392.a n = A005918 n

end A005918

/-! ## A005918.P15834316429246917585

`ceil(2/acot(n)²)+n²`
-/

namespace A005918.P15834316429246917585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉ + (n ^ 2 : ℤ)

end

end A005918.P15834316429246917585

namespace A005918

/-- `ceil(2/acot(n)²)+n²` -/
def P15834316429246917585.Spec : Prop :=
  ∀ n, P15834316429246917585.a n = A005918 n

end A005918

/-! ## A005918.P14623269329215961113

`∑[a(n-1)+6]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A005918.P14623269329215961113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005918.P14623269329215961113

namespace A005918

/-- `∑[a(n-1)+6]` -/
def P14623269329215961113.Spec : Prop :=
  ∀ n, (P14623269329215961113.a n : ℤ) = A005918 n

end A005918

/-! ## A005918.P13206322066346615480

`ceil(atan(n+1)+3*n²)`
-/

namespace A005918.P13206322066346615480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (3 * n ^ 2 : ℝ)⌉

end

end A005918.P13206322066346615480

namespace A005918

/-- `ceil(atan(n+1)+3*n²)` -/
def P13206322066346615480.Spec : Prop :=
  ∀ n, P13206322066346615480.a n = A005918 n

end A005918

/-! ## A005918.P17119239263569121125

`∑[ogf((1+2x+2x^2+x^3)/(1-2x+x^2))]`
-/

namespace A005918.P17119239263569121125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005918.P17119239263569121125

namespace A005918

/-- `∑[ogf((1+2x+2x^2+x^3)/(1-2x+x^2))]` -/
def P17119239263569121125.Spec : Prop :=
  ∀ n, P17119239263569121125.a n = A005918 n

end A005918

/-! ## A005918.P3577005851599496315

`ogf((1+2x+2x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A005918.P3577005851599496315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -3, 3, -1] n

end

end A005918.P3577005851599496315

namespace A005918

/-- `ogf((1+2x+2x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P3577005851599496315.Spec : Prop :=
  ∀ n, P3577005851599496315.a n = A005918 n

end A005918

/-! ## A005918.P2718103774573506624

`6*n+a(n-1)-3` with `a(0)=1, a(1)=5`
-/

namespace A005918.P2718103774573506624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 3)

end

end A005918.P2718103774573506624

namespace A005918

/-- `6*n+a(n-1)-3` -/
def P2718103774573506624.Spec : Prop :=
  ∀ n, P2718103774573506624.a n = A005918 n

end A005918

/-! ## A005918.P6557003425930486974

`6*n-(3-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A005918.P6557003425930486974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (6 * n : ℤ) - (3 - a (n - 1))

end

end A005918.P6557003425930486974

namespace A005918

/-- `6*n-(3-a(n-1))` -/
def P6557003425930486974.Spec : Prop :=
  ∀ n, P6557003425930486974.a n = A005918 n

end A005918

/-! ## A005918.P6370127360465489367

`Δ[floor(n²²/(n+1))]-(n-1)`
-/

namespace A005918.P6370127360465489367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A005918.P6370127360465489367

namespace A005918

/-- `Δ[floor(n²²/(n+1))]-(n-1)` -/
def P6370127360465489367.Spec : Prop :=
  ∀ n, P6370127360465489367.a n = A005918 n

end A005918

/-! ## A005918.P891408822554059449

`∑[A270545(n)]`
-/

namespace A005918.P891408822554059449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005918.P891408822554059449

namespace A005918

/-- `∑[A270545(n)]` -/
def P891408822554059449.Spec : Prop :=
  ∀ n, P891408822554059449.a n = A005918 n

end A005918

/-! ## A005918.P4964818373903836018

`xor(A195143(n), A382713(n))`
-/

namespace A005918.P4964818373903836018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A195143 n) (A382713 n)

end

end A005918.P4964818373903836018

namespace A005918

/-- `xor(A195143(n), A382713(n))` -/
def P4964818373903836018.Spec : Prop :=
  ∀ n, P4964818373903836018.a n = A005918 n

end A005918

/-! ## A005918.P9655765246839453841

`A010020(n)%A144916(n+1)`
-/

namespace A005918.P9655765246839453841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010020 n) (A144916 (n + 1))

end

end A005918.P9655765246839453841

namespace A005918

/-- `A010020(n)%A144916(n+1)` -/
def P9655765246839453841.Spec : Prop :=
  ∀ n, P9655765246839453841.a n = A005918 n

end A005918

/-! ## A005918.P2752576880620472115

`A201722(2*n+1)/4`
-/

namespace A005918.P2752576880620472115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201722 (2 * n + 1) : ℚ) / 4

end

end A005918.P2752576880620472115

namespace A005918

/-- `A201722(2*n+1)/4` -/
def P2752576880620472115.Spec : Prop :=
  ∀ n, P2752576880620472115.a n = (A005918 n : ℚ)

end A005918

/-! ## A005918.P18394477117918928096

`abs(A010000(2*n)-n²)`
-/

namespace A005918.P18394477117918928096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010000 (2 * n) - (n ^ 2 : ℤ)|

end

end A005918.P18394477117918928096

namespace A005918

/-- `abs(A010000(2*n)-n²)` -/
def P18394477117918928096.Spec : Prop :=
  ∀ n, P18394477117918928096.a n = A005918 n

end A005918

/-! ## A005918.P16938122333534826193

`∑[A004281(3*n)]`
-/

namespace A005918.P16938122333534826193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005918.P16938122333534826193

namespace A005918

/-- `∑[A004281(3*n)]` -/
def P16938122333534826193.Spec : Prop :=
  ∀ n, P16938122333534826193.a n = A005918 n

end A005918

/-! ## A005918.P441104451725293977

`record[A092076(n+1)-n]`
-/

namespace A005918.P441104451725293977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005918.P441104451725293977

namespace A005918

/-- `record[A092076(n+1)-n]` -/
def P441104451725293977.Spec : Prop :=
  ∀ n, P441104451725293977.a n = A005918 n

end A005918

/-! ## A005918.P8085667464928843736

`∑[A004276(2*n+1+n)]`
-/

namespace A005918.P8085667464928843736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005918.P8085667464928843736

namespace A005918

/-- `∑[A004276(2*n+1+n)]` -/
def P8085667464928843736.Spec : Prop :=
  ∀ n, P8085667464928843736.a n = A005918 n

end A005918

/-! ## A005918.P9081237497976010460

`A318500(A009946(n))`
-/

namespace A005918.P9081237497976010460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A009946 n).toNat

end

end A005918.P9081237497976010460

namespace A005918

/-- `A318500(A009946(n))` -/
def P9081237497976010460.Spec : Prop :=
  ∀ n, P9081237497976010460.a n = A005918 n

end A005918

/-!
# A005919: Number of points on surface of tricapped prism: a(n) = 7*n^2 + 2 for n > 0, a(0)=1.

The programs for A005919, the canonical program `A005919.P11472428845517152074` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005919 has offset 0).

The definition of A005919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005919.P11472428845517152074

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=30, a(3)=65`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005919

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11472428845517152074.Spec : Prop :=
  ∀ n, P11472428845517152074.a n = A005919 n

theorem P11472428845517152074.correct : P11472428845517152074.Spec := by
  intro n
  simp only [A005919]

end A005919

/-! ## A005919.P7154482140026538105

`∑[ogf((1+6x+6x^2+x^3)/(1-2x+x^2))]`
-/

namespace A005919.P7154482140026538105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 6, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005919.P7154482140026538105

namespace A005919

/-- `∑[ogf((1+6x+6x^2+x^3)/(1-2x+x^2))]` -/
def P7154482140026538105.Spec : Prop :=
  ∀ n, P7154482140026538105.a n = A005919 n

end A005919

/-! ## A005919.P14558235030268543431

`ogf((1+6x+6x^2+x^3)/(1-3x+3x^2-x^3))`
-/

namespace A005919.P14558235030268543431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 6, 1] [1, -3, 3, -1] n

end

end A005919.P14558235030268543431

namespace A005919

/-- `ogf((1+6x+6x^2+x^3)/(1-3x+3x^2-x^3))` -/
def P14558235030268543431.Spec : Prop :=
  ∀ n, P14558235030268543431.a n = A005919 n

end A005919

/-! ## A005919.P7488951832560849380

`ceil(2/acot(2*n)²)-n²`
-/

namespace A005919.P7488951832560849380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉ - (n ^ 2 : ℤ)

end

end A005919.P7488951832560849380

namespace A005919

/-- `ceil(2/acot(2*n)²)-n²` -/
def P7488951832560849380.Spec : Prop :=
  ∀ n, P7488951832560849380.a n = A005919 n

end A005919

/-! ## A005919.P14484064728995481971

`∑[a(n-1)+12]+n²` with `a(0)=1, a(1)=7, a(2)=18`
-/

namespace A005919.P14484064728995481971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 18] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A005919.P14484064728995481971

namespace A005919

/-- `∑[a(n-1)+12]+n²` -/
def P14484064728995481971.Spec : Prop :=
  ∀ n, (P14484064728995481971.a n : ℤ) = A005919 n

end A005919

/-! ## A005919.P13015332722062932629

`abs(∑[a(n-1)+14]+n+1)` with `a(0)=0, a(1)=7, a(2)=20`
-/

namespace A005919.P13015332722062932629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 20] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A005919.P13015332722062932629

namespace A005919

/-- `abs(∑[a(n-1)+14]+n+1)` -/
def P13015332722062932629.Spec : Prop :=
  ∀ n, (P13015332722062932629.a n : ℤ) = A005919 n

end A005919

/-! ## A005919.P18242407356453927655

`comp[2*(n+1)]²+Δ[n²]²-n²`
-/

namespace A005919.P18242407356453927655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - (n ^ 2 : ℤ)

end

end A005919.P18242407356453927655

namespace A005919

/-- `comp[2*(n+1)]²+Δ[n²]²-n²` -/
def P18242407356453927655.Spec : Prop :=
  ∀ n, P18242407356453927655.a n = A005919 n

end A005919

/-! ## A005919.P6679276711457224286

`ceil(sqrt(A247541(n)²+n))`
-/

namespace A005919.P6679276711457224286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A247541 n ^ 2 + (n : ℤ) : ℝ)⌉

end

end A005919.P6679276711457224286

namespace A005919

/-- `ceil(sqrt(A247541(n)²+n))` -/
def P6679276711457224286.Spec : Prop :=
  ∀ n, P6679276711457224286.a n = A005919 n

end A005919

/-! ## A005919.P13953248833909515499

`(A005901(n)+A005899(n))/2`
-/

namespace A005919.P13953248833909515499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005901 n + A005899 n : ℚ) / 2

end

end A005919.P13953248833909515499

namespace A005919

/-- `(A005901(n)+A005899(n))/2` -/
def P13953248833909515499.Spec : Prop :=
  ∀ n, P13953248833909515499.a n = (A005919 n : ℚ)

end A005919

/-! ## A005919.P15990377490016519270

`(A008527(n)+A005897(n))/2`
-/

namespace A005919.P15990377490016519270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008527 n + A005897 n : ℚ) / 2

end

end A005919.P15990377490016519270

namespace A005919

/-- `(A008527(n)+A005897(n))/2` -/
def P15990377490016519270.Spec : Prop :=
  ∀ n, P15990377490016519270.a n = (A005919 n : ℚ)

end A005919

/-!
# A005920: Tricapped prism numbers.

The programs for A005920, the canonical program `A005920.P17017073397502979736` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005920 has offset 0).

The definition of A005920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005920.P11304569555840766831

`(n+1)*(3*n²+4*n+2)/2`
-/

namespace A005920.P11304569555840766831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (3 * n ^ 2 + 4 * n + 2) : ℚ) / 2

end

end A005920.P11304569555840766831

namespace A005920

/-- `(n+1)*(3*n²+4*n+2)/2` -/
def P11304569555840766831.Spec : Prop :=
  ∀ n, P11304569555840766831.a n = (A005920 n : ℚ)

theorem P11304569555840766831.correct : P11304569555840766831.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005920, Nat.add_sub_cancel, A005920.P11304569555840766831.a, A005920.P17017073397502979736.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005920, Nat.add_sub_cancel, A005920.P11304569555840766831.a, A005920.P17017073397502979736.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005920

/-! ## A005920.P17017073397502979736

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=33, a(3)=82`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005920

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17017073397502979736.Spec : Prop :=
  ∀ n, P17017073397502979736.a n = A005920 n

theorem P17017073397502979736.correct : P17017073397502979736.Spec := by
  intro n
  simp only [A005920]

end A005920

/-! ## A005920.P1453437045494055660

`(n+1)*(n+1)*(3*n+2)/2-A000217(n)`
-/

namespace A005920.P1453437045494055660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((n + 1) * (3 * n + 2) : ℚ) / 2) - (A000217 n : ℚ)

end

end A005920.P1453437045494055660

namespace A005920

/-- `(n+1)*(n+1)*(3*n+2)/2-A000217(n)` -/
def P1453437045494055660.Spec : Prop :=
  ∀ n, P1453437045494055660.a n = (A005920 n : ℚ)

end A005920

/-! ## A005920.P1202214282319156846

`∑[∑[a(n-1)+9]]` with `a(0)=1, a(1)=7`
-/

namespace A005920.P1202214282319156846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P1202214282319156846

namespace A005920

/-- `∑[∑[a(n-1)+9]]` -/
def P1202214282319156846.Spec : Prop :=
  ∀ n, (P1202214282319156846.a n : ℤ) = A005920 n

end A005920

/-! ## A005920.P9605651546107545300

`∑[∑[ogf((1+5x+3x^2)/(1-2x+x^2))]]`
-/

namespace A005920.P9605651546107545300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P9605651546107545300

namespace A005920

/-- `∑[∑[ogf((1+5x+3x^2)/(1-2x+x^2))]]` -/
def P9605651546107545300.Spec : Prop :=
  ∀ n, P9605651546107545300.a n = A005920 n

end A005920

/-! ## A005920.P17795918623297373049

`ogf((1+5x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A005920.P17795918623297373049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -4, 6, -4, 1] n

end

end A005920.P17795918623297373049

namespace A005920

/-- `ogf((1+5x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17795918623297373049.Spec : Prop :=
  ∀ n, P17795918623297373049.a n = A005920 n

end A005920

/-! ## A005920.P7808187493168900391

`∑[3-∑[a(n-1)-9]]` with `a(0)=2`
-/

namespace A005920.P7808187493168900391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P7808187493168900391

namespace A005920

/-- `∑[3-∑[a(n-1)-9]]` -/
def P7808187493168900391.Spec : Prop :=
  ∀ n, P7808187493168900391.a n = A005920 n

end A005920

/-! ## A005920.P1243247625963543338

`(cosh(log(n+1))+n)*(n+1)²`
-/

namespace A005920.P1243247625963543338
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cosh (Real.log (n + 1 : ℝ)) + (n : ℝ)) * ((n + 1) ^ 2 : ℝ)

end

end A005920.P1243247625963543338

namespace A005920

/-- `(cosh(log(n+1))+n)*(n+1)²` -/
def P1243247625963543338.Spec : Prop :=
  ∀ n, P1243247625963543338.a n = (A005920 n : ℝ)

end A005920

/-! ## A005920.P545697067738492146

`∑[(2*n)²+C(n+3, 2)-2]`
-/

namespace A005920.P545697067738492146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + ((Nat.choose (n + 3) 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P545697067738492146

namespace A005920

/-- `∑[(2*n)²+C(n+3, 2)-2]` -/
def P545697067738492146.Spec : Prop :=
  ∀ n, P545697067738492146.a n = A005920 n

end A005920

/-! ## A005920.P2851011168155789774

`∑[C(n+2, 2)+(2*n)²+n]`
-/

namespace A005920.P2851011168155789774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 + ((2 * n) ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P2851011168155789774

namespace A005920

/-- `∑[C(n+2, 2)+(2*n)²+n]` -/
def P2851011168155789774.Spec : Prop :=
  ∀ n, (P2851011168155789774.a n : ℤ) = A005920 n

end A005920

/-! ## A005920.P11899472387932702324

`∑[lcm(2*n+1, 2*n)+∑[n]+1]`
-/

namespace A005920.P11899472387932702324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P11899472387932702324

namespace A005920

/-- `∑[lcm(2*n+1, 2*n)+∑[n]+1]` -/
def P11899472387932702324.Spec : Prop :=
  ∀ n, (P11899472387932702324.a n : ℤ) = A005920 n

end A005920

/-! ## A005920.P3500316934391681099

`∑[A064225(n)]`
-/

namespace A005920.P3500316934391681099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P3500316934391681099

namespace A005920

/-- `∑[A064225(n)]` -/
def P3500316934391681099.Spec : Prop :=
  ∀ n, P3500316934391681099.a n = A005920 n

end A005920

/-! ## A005920.P496986182319106592

`∑[A062725(n)+1]`
-/

namespace A005920.P496986182319106592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P496986182319106592

namespace A005920

/-- `∑[A062725(n)+1]` -/
def P496986182319106592.Spec : Prop :=
  ∀ n, P496986182319106592.a n = A005920 n

end A005920

/-! ## A005920.P11838741666073896613

`∑[A038764(n)+n]`
-/

namespace A005920.P11838741666073896613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P11838741666073896613

namespace A005920

/-- `∑[A038764(n)+n]` -/
def P11838741666073896613.Spec : Prop :=
  ∀ n, P11838741666073896613.a n = A005920 n

end A005920

/-! ## A005920.P8037148142336670385

`A050509(n)-∑[n]`
-/

namespace A005920.P8037148142336670385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005920.P8037148142336670385

namespace A005920

/-- `A050509(n)-∑[n]` -/
def P8037148142336670385.Spec : Prop :=
  ∀ n, P8037148142336670385.a n = A005920 n

end A005920

/-! ## A005920.P1602554199058360968

`∑[A081267(n)-n]`
-/

namespace A005920.P1602554199058360968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P1602554199058360968

namespace A005920

/-- `∑[A081267(n)-n]` -/
def P1602554199058360968.Spec : Prop :=
  ∀ n, P1602554199058360968.a n = A005920 n

end A005920

/-! ## A005920.P14833284726589005892

`∑[A081266(n)+n+1]`
-/

namespace A005920.P14833284726589005892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005920.P14833284726589005892

namespace A005920

/-- `∑[A081266(n)+n+1]` -/
def P14833284726589005892.Spec : Prop :=
  ∀ n, P14833284726589005892.a n = A005920 n

end A005920

/-! ## A005920.P16769672838596421766

`A100175(n+1)+∑[n]`
-/

namespace A005920.P16769672838596421766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005920.P16769672838596421766

namespace A005920

/-- `A100175(n+1)+∑[n]` -/
def P16769672838596421766.Spec : Prop :=
  ∀ n, P16769672838596421766.a n = A005920 n

end A005920

/-! ## A005920.P2449363270789758026

`A143690(n)+n²+n`
-/

namespace A005920.P2449363270789758026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143690 n + (n ^ 2 + n : ℤ)

end

end A005920.P2449363270789758026

namespace A005920

/-- `A143690(n)+n²+n` -/
def P2449363270789758026.Spec : Prop :=
  ∀ n, P2449363270789758026.a n = A005920 n

end A005920

/-! ## A005920.P9550425763371719968

`A002411(n)+(n+1)^3`
-/

namespace A005920.P9550425763371719968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + ((n + 1) ^ 3 : ℤ)

end

end A005920.P9550425763371719968

namespace A005920

/-- `A002411(n)+(n+1)^3` -/
def P9550425763371719968.Spec : Prop :=
  ∀ n, P9550425763371719968.a n = A005920 n

end A005920

/-!
# A005921: From solution to a difference equation.

The programs for A005921, the canonical program `A005921.P12402531588266021822` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005921 has offset 0).

The definition of A005921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005921.P12402531588266021822

`n*(a(n-1)+a(n-2)*(n-1))` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005921

/-- `n*(a(n-1)+a(n-2)*(n-1))` -/
def P12402531588266021822.Spec : Prop :=
  ∀ n, P12402531588266021822.a n = A005921 n

theorem P12402531588266021822.correct : P12402531588266021822.Spec := by
  intro n
  simp only [A005921]

end A005921

/-! ## A005921.P4416575589014804064

`A365962(∑[n])`
-/

namespace A005921.P4416575589014804064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005921.P4416575589014804064

namespace A005921

/-- `A365962(∑[n])` -/
def P4416575589014804064.Spec : Prop :=
  ∀ n, P4416575589014804064.a n = A005921 n

end A005921

/-! ## A005921.P845872780899277501

`record[A365962(n)]`
-/

namespace A005921.P845872780899277501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005921.P845872780899277501

namespace A005921

/-- `record[A365962(n)]` -/
def P845872780899277501.Spec : Prop :=
  ∀ n, P845872780899277501.a n = A005921 n

end A005921

/-! ## A005921.P10280437378954544097

`n!*A071679(n+1)`
-/

namespace A005921.P10280437378954544097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A071679 (n + 1)

end

end A005921.P10280437378954544097

namespace A005921

/-- `n!*A071679(n+1)` -/
def P10280437378954544097.Spec : Prop :=
  ∀ n, P10280437378954544097.a n = A005921 n

end A005921

/-! ## A005921.P9664704935414807778

`n!*A116470(A005408(n))`
-/

namespace A005921.P9664704935414807778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A116470 (A005408 n).toNat

end

end A005921.P9664704935414807778

namespace A005921

/-- `n!*A116470(A005408(n))` -/
def P9664704935414807778.Spec : Prop :=
  ∀ n, P9664704935414807778.a n = A005921 n

end A005921

/-! ## A005921.P4046324394691668792

`n!*A123231(A103517(n))`
-/

namespace A005921.P4046324394691668792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A123231 (A103517 n).toNat

end

end A005921.P4046324394691668792

namespace A005921

/-- `n!*A123231(A103517(n))` -/
def P4046324394691668792.Spec : Prop :=
  ∀ n, P4046324394691668792.a n = A005921 n

end A005921

/-! ## A005921.P389387671139699094

`A000142(n)*A071679(n+1)`
-/

namespace A005921.P389387671139699094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A071679 (n + 1)

end

end A005921.P389387671139699094

namespace A005921

/-- `A000142(n)*A071679(n+1)` -/
def P389387671139699094.Spec : Prop :=
  ∀ n, P389387671139699094.a n = A005921 n

end A005921

/-! ## A005921.P16359049690793681716

`n!*A108035(A134869(n+1))`
-/

namespace A005921.P16359049690793681716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A108035 (A134869 (n + 1)).toNat

end

end A005921.P16359049690793681716

namespace A005921

/-- `n!*A108035(A134869(n+1))` -/
def P16359049690793681716.Spec : Prop :=
  ∀ n, P16359049690793681716.a n = A005921 n

end A005921

/-! ## A005921.P17556217549190528961

`n!*A000045(A157532(n+1)+n)`
-/

namespace A005921.P17556217549190528961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000045 (A157532 (n + 1) + (n : ℤ)).toNat

end

end A005921.P17556217549190528961

namespace A005921

/-- `n!*A000045(A157532(n+1)+n)` -/
def P17556217549190528961.Spec : Prop :=
  ∀ n, P17556217549190528961.a n = A005921 n

end A005921

/-! ## A005921.P15705554215145968826

`record[A000045(A003602(n+6))]*A000142(n)`
-/

namespace A005921.P15705554215145968826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003602 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000142 n

end

end A005921.P15705554215145968826

namespace A005921

/-- `record[A000045(A003602(n+6))]*A000142(n)` -/
def P15705554215145968826.Spec : Prop :=
  ∀ n, P15705554215145968826.a n = A005921 n

end A005921

/-!
# A005922: a(1)=1; a(n) = n!*Fibonacci(n+2), n > 1.

The programs for A005922, there is no canonical definition to state claims against.
-/

/-! ## A005922.P1247849842280535015

`(n+1)*A005921(n)`
-/

namespace A005922.P1247849842280535015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005921 n

end

end A005922.P1247849842280535015

/-! ## A005922.P17615292357071932917

`A365962(∑[n+1]+1)`
-/

namespace A005922.P17615292357071932917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005922.P17615292357071932917

/-! ## A005922.P3758398858954175344

`(n+1)!*A071679(n+1)`
-/

namespace A005922.P3758398858954175344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A071679 (n + 1)

end

end A005922.P3758398858954175344

/-! ## A005922.P1927236080540470833

`(n+1)!*record[A053602(n+4)]`
-/

namespace A005922.P1927236080540470833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005922.P1927236080540470833

/-! ## A005922.P1873768715839130944

`A322044(A027379(n)+2)`
-/

namespace A005922.P1873768715839130944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322044 (A027379 n + 2).toNat

end

end A005922.P1873768715839130944

/-! ## A005922.P5091827690785307313

`A322044(A134869(n+1)+n)`
-/

namespace A005922.P5091827690785307313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322044 (A134869 (n + 1) + (n : ℤ)).toNat

end

end A005922.P5091827690785307313

/-! ## A005922.P5587819516348650692

`A322044(A133263(n)+2*n)`
-/

namespace A005922.P5587819516348650692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322044 (A133263 n + (2 * n : ℤ)).toNat

end

end A005922.P5587819516348650692

/-! ## A005922.P18385793875837432944

`A322044(A133263(n)+n+n)`
-/

namespace A005922.P18385793875837432944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322044 (A133263 n + (n : ℤ) + (n : ℤ)).toNat

end

end A005922.P18385793875837432944

/-! ## A005922.P7453574851551846856

`(n+1)!*A123231(A103517(n))`
-/

namespace A005922.P7453574851551846856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A123231 (A103517 n).toNat

end

end A005922.P7453574851551846856

/-! ## A005922.P1353871239851484741

`record[A182062(n)]*A071679(n+1)`
-/

namespace A005922.P1353871239851484741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A071679 (n + 1)

end

end A005922.P1353871239851484741

/-!
# A005923: From solution to a difference equation.

The programs for A005923, there is no canonical definition to state claims against.
-/

/-! ## A005923.P16731034022832131750

`A245155(n)-A320352(n)`
-/

namespace A005923.P16731034022832131750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245155 n - A320352 n

end

end A005923.P16731034022832131750

/-! ## A005923.P5089512985435175139

`2*A364822(n)-A000556(n)`
-/

namespace A005923.P5089512985435175139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364822 n - A000556 n

end

end A005923.P5089512985435175139

/-! ## A005923.P15860968140990406732

`A000556(n)+A000557(n)-A000007(n)`
-/

namespace A005923.P15860968140990406732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A000557 n - A000007 n)

end

end A005923.P15860968140990406732

/-! ## A005923.P6966823651444025587

`A000556(n)+A245155(n)-A000557(n)`
-/

namespace A005923.P6966823651444025587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000556 n + (A245155 n - A000557 n)

end

end A005923.P6966823651444025587

/-! ## A005923.P11045556889655041636

`A341728(n+1)/(n+1)`
-/

namespace A005923.P11045556889655041636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341728 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005923.P11045556889655041636

/-!
# A005924: From solution to a difference equation.

The programs for A005924, there is no canonical definition to state claims against.
-/

/-! ## A005924.P6893182069410094473

`A000557(n+1)-1`
-/

namespace A005924.P6893182069410094473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 (n + 1) - 1

end

end A005924.P6893182069410094473

/-! ## A005924.P11065581194476043037

`∑[abs(Δ[A000557(n)])]`
-/

namespace A005924.P11065581194476043037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005924.P11065581194476043037

/-! ## A005924.P8443199188044542194

`∑[floor(Δ[A245155(n)/2])]`
-/

namespace A005924.P8443199188044542194
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245155 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005924.P8443199188044542194

/-! ## A005924.P13991960069641552303

`A245155(n+1)/2-1`
-/

namespace A005924.P13991960069641552303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245155 (n + 1) : ℚ) / 2 - 1

end

end A005924.P13991960069641552303

/-! ## A005924.P9620576529018945172

`A367887(n+1)-A005923(n+1)`
-/

namespace A005924.P9620576529018945172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367887 (n + 1) - A005923 (n + 1)

end

end A005924.P9620576529018945172

/-!
# A005925: Theta series of diamond.

The programs for A005925, there is no canonical definition to state claims against.
-/

/-! ## A005925.P14878423103243418877

`A004013(n)-A005927(n)`
-/

namespace A005925.P14878423103243418877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n - A005927 n

end

end A005925.P14878423103243418877

/-! ## A005925.P5837119380073399877

`xor(A004013(A088440(n)), A005927(n))`
-/

namespace A005925.P5837119380073399877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004013 (A088440 n).toNat) (A005927 n)

end

end A005925.P5837119380073399877

/-! ## A005925.P6631564858722507710

`A005927(n)+A004013(n)*A128130(n)`
-/

namespace A005925.P6631564858722507710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005927 n + A004013 n * A128130 n

end

end A005925.P6631564858722507710

/-! ## A005925.P13500300103611257841

`A102560(n)*A213384(n)-A005927(n)`
-/

namespace A005925.P13500300103611257841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A213384 n - A005927 n

end

end A005925.P13500300103611257841

/-! ## A005925.P3669966269630810645

`lcm(A005875(n)-A005927(n), A102560(n))`
-/

namespace A005925.P3669966269630810645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005875 n - A005927 n) (A102560 n)

end

end A005925.P3669966269630810645

/-! ## A005925.P2136789160584890601

`xor(A004013(n)*A133872(n), A005927(n))`
-/

namespace A005925.P2136789160584890601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004013 n * A133872 n) (A005927 n)

end

end A005925.P2136789160584890601

/-! ## A005925.P17075450485127075311

`xor(A004013(n)*A219977(n), A005927(n))`
-/

namespace A005925.P17075450485127075311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004013 n * A219977 n) (A005927 n)

end

end A005925.P17075450485127075311

/-! ## A005925.P11072053582279939131

`A004013(n)-2*A045830(n)`
-/

namespace A005925.P11072053582279939131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n - 2 * A045830 n

end

end A005925.P11072053582279939131

/-! ## A005925.P15673592055041599436

`A004013(n)-A005843(A045830(n))`
-/

namespace A005925.P15673592055041599436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n - A005843 (A045830 n).toNat

end

end A005925.P15673592055041599436

/-! ## A005925.P3830272100448801460

`xor(A004013(A109043(n)), A005927(n))`
-/

namespace A005925.P3830272100448801460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004013 (A109043 n).toNat) (A005927 n)

end

end A005925.P3830272100448801460

/-! ## A005925.P15270505085738312663

`A290705(2*n)-A005927(n)`
-/

namespace A005925.P15270505085738312663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290705 (2 * n) - A005927 n

end

end A005925.P15270505085738312663

/-!
# A005926: Theta series of diamond with respect to midpoint of edge.

The programs for A005926, there is no canonical definition to state claims against.
-/

/-! ## A005926.P11261734457406118787

`2*A008437(A322016(n+1))`
-/

namespace A005926.P11261734457406118787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 (A322016 (n + 1)).toNat

end

end A005926.P11261734457406118787

/-! ## A005926.P13344383413406322350

`2*A008437(A322017(n+1))`
-/

namespace A005926.P13344383413406322350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 (A322017 (n + 1)).toNat

end

end A005926.P13344383413406322350

/-! ## A005926.P15052973498777660111

`2*A008437(n*A014577(n))`
-/

namespace A005926.P15052973498777660111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 ((n : ℤ) * A014577 n).toNat

end

end A005926.P15052973498777660111

/-! ## A005926.P11795056677960546464

`2*A008437(n*A106665(n))`
-/

namespace A005926.P11795056677960546464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 ((n : ℤ) * A106665 n).toNat

end

end A005926.P11795056677960546464

/-! ## A005926.P4775471486069601744

`2*A008437(n*A144603(n))`
-/

namespace A005926.P4775471486069601744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 ((n : ℤ) * A144603 n).toNat

end

end A005926.P4775471486069601744

/-! ## A005926.P6843202090365890350

`2*A008437(n)*A270823(n)`
-/

namespace A005926.P6843202090365890350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008437 n * A270823 n)

end

end A005926.P6843202090365890350

/-! ## A005926.P7074829195237434059

`2*A008437(n*A372258(n))`
-/

namespace A005926.P7074829195237434059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008437 ((n : ℤ) * A372258 n).toNat

end

end A005926.P7074829195237434059

/-! ## A005926.P5583821947200303268

`and(2, A055902(n+6))*A008437(n)`
-/

namespace A005926.P5583821947200303268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A055902 (n + 6)) * A008437 n

end

end A005926.P5583821947200303268

/-! ## A005926.P16926828726266891691

`2*A045840(n)`
-/

namespace A005926.P16926828726266891691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045840 n

end

end A005926.P16926828726266891691

/-! ## A005926.P17303852164854230615

`A005843(A045840(n))`
-/

namespace A005926.P17303852164854230615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045840 n).toNat

end

end A005926.P17303852164854230615

/-! ## A005926.P18251010173239905403

`A045840(n)+A045840(n)%A000203(n+1)`
-/

namespace A005926.P18251010173239905403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + Int.tmod (A045840 n) (A000203 (n + 1))

end

end A005926.P18251010173239905403

/-! ## A005926.P14640235594192520591

`A045840(n)+A045840(n%A008578(n+1))`
-/

namespace A005926.P14640235594192520591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + A045840 (Int.tmod (n : ℤ) (A008578 (n + 1))).toNat

end

end A005926.P14640235594192520591

/-! ## A005926.P17804903090439882209

`A045840(n)+A045840(A028928(n))+A045840(n)`
-/

namespace A005926.P17804903090439882209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + (A045840 (A028928 n).toNat + A045840 n)

end

end A005926.P17804903090439882209

/-! ## A005926.P9254319640483126644

`A045840(n)+A045840(A000010(n+1))+A045840(n)`
-/

namespace A005926.P9254319640483126644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + (A045840 (A000010 (n + 1)).toNat + A045840 n)

end

end A005926.P9254319640483126644

/-! ## A005926.P11253119677340553140

`A045840(n)+A045840(A034444(n+1))+A045840(n)`
-/

namespace A005926.P11253119677340553140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045840 n + (A045840 (A034444 (n + 1)).toNat + A045840 n)

end

end A005926.P11253119677340553140

/-!
# A005927: Theta series of diamond with respect to deep hole.

The programs for A005927, there is no canonical definition to state claims against.
-/

/-! ## A005927.P11130983770267147339

`A004013(n)-A005925(n)`
-/

namespace A005927.P11130983770267147339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n - A005925 n

end

end A005927.P11130983770267147339

/-! ## A005927.P6580406927274279294

`A004013(n)/2*A010873(A004525(n))`
-/

namespace A005927.P6580406927274279294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 n : ℚ) / 2 * (A010873 (A004525 n).toNat : ℚ)

end

end A005927.P6580406927274279294

/-! ## A005927.P11599730824096032583

`A004013(n)/2*A010873(A004526(n))`
-/

namespace A005927.P11599730824096032583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 n : ℚ) / 2 * (A010873 (A004526 n).toNat : ℚ)

end

end A005927.P11599730824096032583

/-! ## A005927.P12027191859609380867

`A004524(and(3, A004524(n))*A004013(n))`
-/

namespace A005927.P12027191859609380867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.land 3 (A004524 n) * A004013 n).toNat

end

end A005927.P12027191859609380867

/-! ## A005927.P16691883115299280766

`A004525(A004013(n))*A010873(A004525(n))`
-/

namespace A005927.P16691883115299280766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004013 n).toNat * A010873 (A004525 n).toNat

end

end A005927.P16691883115299280766

/-! ## A005927.P16088993823766958470

`A004526(A004013(n))*A010873(A004526(n))`
-/

namespace A005927.P16088993823766958470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004013 n).toNat * A010873 (A004526 n).toNat

end

end A005927.P16088993823766958470

/-! ## A005927.P9525600718245491995

`2*A045830(n)`
-/

namespace A005927.P9525600718245491995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045830 n

end

end A005927.P9525600718245491995

/-! ## A005927.P5351453058390561654

`A005843(A045830(n))`
-/

namespace A005927.P5351453058390561654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A045830 n).toNat

end

end A005927.P5351453058390561654

/-! ## A005927.P3657473954458548379

`lcm(A045830(n), A080917(n))`
-/

namespace A005927.P3657473954458548379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045830 n) (A080917 n)

end

end A005927.P3657473954458548379

/-! ## A005927.P10074735975126159994

`A045830(A028310(n))+A045830(n)`
-/

namespace A005927.P10074735975126159994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045830 (A028310 n).toNat + A045830 n

end

end A005927.P10074735975126159994

/-! ## A005927.P6794851572283843771

`xor(A004013(A109043(n)), A005925(n))`
-/

namespace A005927.P6794851572283843771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004013 (A109043 n).toNat) (A005925 n)

end

end A005927.P6794851572283843771

/-! ## A005927.P9024430943696991280

`A290705(2*n)-A005925(n)`
-/

namespace A005927.P9024430943696991280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290705 (2 * n) - A005925 n

end

end A005927.P9024430943696991280

/-!
# A005928: G.f.: s(1)^3/s(3), where s(k) = eta(q^k) and eta(q) is Dedekind's function, cf. A010815.

The programs for A005928, there is no canonical definition to state claims against.
-/

/-! ## A005928.P6163325353148029670

`(-1)^n*A226535(n)`
-/

namespace A005928.P6163325353148029670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A226535 n

end

end A005928.P6163325353148029670

/-! ## A005928.P9921008844134672279

`A004016(n)/(-2)^(∑[n]%3)`
-/

namespace A005928.P9921008844134672279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / ((-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A005928.P9921008844134672279

/-! ## A005928.P13755576187946007158

`A113062(n)-A217219(n)`
-/

namespace A005928.P13755576187946007158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n - A217219 n

end

end A005928.P13755576187946007158

/-! ## A005928.P6837558468850923533

`A049347(n)*A113062(n)`
-/

namespace A005928.P6837558468850923533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A113062 n

end

end A005928.P6837558468850923533

/-! ## A005928.P4227335604665496573

`A078070(n)*A097109(n)`
-/

namespace A005928.P4227335604665496573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078070 n * A097109 n

end

end A005928.P4227335604665496573

/-! ## A005928.P6931432469930895507

`A113062(n)*A257075(n)`
-/

namespace A005928.P6931432469930895507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A257075 n

end

end A005928.P6931432469930895507

/-! ## A005928.P10612065294624270990

`A004016(n)/A131713(n)`
-/

namespace A005928.P10612065294624270990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A131713 n : ℚ)

end

end A005928.P10612065294624270990

/-! ## A005928.P15520337850663587122

`A180318(n)/A057079(n)`
-/

namespace A005928.P15520337850663587122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A057079 n : ℚ)

end

end A005928.P15520337850663587122

/-! ## A005928.P7267182413959058102

`A180318(n)/A132954(n)`
-/

namespace A005928.P7267182413959058102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A132954 n : ℚ)

end

end A005928.P7267182413959058102

/-! ## A005928.P10300516262474347976

`A113062(n)*A343785(n+1)`
-/

namespace A005928.P10300516262474347976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A343785 (n + 1)

end

end A005928.P10300516262474347976

/-! ## A005928.P1205419046772652554

`A004016(n)/(2-A010882(n)²)`
-/

namespace A005928.P1205419046772652554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A010882 n ^ 2 : ℚ)

end

end A005928.P1205419046772652554

/-! ## A005928.P2019763032779892426

`A004016(n)/(2-A057079(n)²)`
-/

namespace A005928.P2019763032779892426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A005928.P2019763032779892426

/-! ## A005928.P4182195769413405373

`A004016(n)/(2-A069705(n)²)`
-/

namespace A005928.P4182195769413405373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A069705 n ^ 2 : ℚ)

end

end A005928.P4182195769413405373

/-! ## A005928.P1231173002430934730

`A004016(n)/(2-A130196(n)²)`
-/

namespace A005928.P1231173002430934730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A130196 n ^ 2 : ℚ)

end

end A005928.P1231173002430934730

/-! ## A005928.P15328877712231280192

`A004016(n)/(2-A131534(n)²)`
-/

namespace A005928.P15328877712231280192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A131534 n ^ 2 : ℚ)

end

end A005928.P15328877712231280192

/-! ## A005928.P6353729295058395370

`A004016(n)/(2-A132677(n)²)`
-/

namespace A005928.P6353729295058395370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A132677 n ^ 2 : ℚ)

end

end A005928.P6353729295058395370

/-! ## A005928.P5016017956653840315

`A004016(n)/(2-A132954(n)²)`
-/

namespace A005928.P5016017956653840315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A005928.P5016017956653840315

/-! ## A005928.P10647068426532891833

`A004016(n)/(2-A060236(n+1)²)`
-/

namespace A005928.P10647068426532891833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 - A060236 (n + 1) ^ 2 : ℚ)

end

end A005928.P10647068426532891833

/-! ## A005928.P2728639295640118751

`A004016(n)/A008653(n)*A242874(n)`
-/

namespace A005928.P2728639295640118751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A008653 n : ℚ) * (A242874 n : ℚ)

end

end A005928.P2728639295640118751

/-! ## A005928.P17572547046050597657

`A004016(n)/A242874(n)*A281722(n)`
-/

namespace A005928.P17572547046050597657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A242874 n : ℚ) * (A281722 n : ℚ)

end

end A005928.P17572547046050597657

/-!
# A005929: Theta series of hexagonal net with respect to midpoint of edge.

The programs for A005929, the canonical program `A005929.P17002143773609211712` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005929 has offset 0).

The definition of A005929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005929.P10396611434965921041

`2*A045839(n)`
-/

namespace A005929.P10396611434965921041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045839 n

end

end A005929.P10396611434965921041

namespace A005929

/-- `2*A045839(n)` -/
def P10396611434965921041.Spec : Prop :=
  ∀ n, P10396611434965921041.a n = A005929 n

end A005929

/-! ## A005929.P17002143773609211712

`2*A045833(A091685(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005929

/-- `2*A045833(A091685(n))` -/
def P17002143773609211712.Spec : Prop :=
  ∀ n, P17002143773609211712.a n = A005929 n

theorem P17002143773609211712.correct : P17002143773609211712.Spec := by
  intro n
  simp only [A005929]

end A005929

/-! ## A005929.P16954650626277407191

`2*A045833(A190621(n))`
-/

namespace A005929.P16954650626277407191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 (A190621 n).toNat

end

end A005929.P16954650626277407191

namespace A005929

/-- `2*A045833(A190621(n))` -/
def P16954650626277407191.Spec : Prop :=
  ∀ n, P16954650626277407191.a n = A005929 n

end A005929

/-! ## A005929.P9014184315091882187

`A010673(n)*A045833(n)`
-/

namespace A005929.P9014184315091882187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A045833 n

end

end A005929.P9014184315091882187

namespace A005929

/-- `A010673(n)*A045833(n)` -/
def P9014184315091882187.Spec : Prop :=
  ∀ n, P9014184315091882187.a n = A005929 n

end A005929

/-! ## A005929.P3583636087060682911

`A033716(n)*A110270(n)`
-/

namespace A005929.P3583636087060682911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A110270 n

end

end A005929.P3583636087060682911

namespace A005929

/-- `A033716(n)*A110270(n)` -/
def P3583636087060682911.Spec : Prop :=
  ∀ n, P3583636087060682911.a n = A005929 n

end A005929

/-! ## A005929.P3109486476109472471

`A033716(n)*A134667(n)`
-/

namespace A005929.P3109486476109472471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A134667 n

end

end A005929.P3109486476109472471

namespace A005929

/-- `A033716(n)*A134667(n)` -/
def P3109486476109472471.Spec : Prop :=
  ∀ n, P3109486476109472471.a n = A005929 n

end A005929

/-! ## A005929.P13168695676564106451

`A110270(n)*A123330(n)`
-/

namespace A005929.P13168695676564106451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110270 n * A123330 n

end

end A005929.P13168695676564106451

namespace A005929

/-- `A110270(n)*A123330(n)` -/
def P13168695676564106451.Spec : Prop :=
  ∀ n, P13168695676564106451.a n = A005929 n

end A005929

/-! ## A005929.P11130362627402884088

`A123330(n)*A134667(n)`
-/

namespace A005929.P11130362627402884088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n * A134667 n

end

end A005929.P11130362627402884088

namespace A005929

/-- `A123330(n)*A134667(n)` -/
def P11130362627402884088.Spec : Prop :=
  ∀ n, P11130362627402884088.a n = A005929 n

end A005929

/-! ## A005929.P12223402272529257897

`A134667(n)*A138805(n)`
-/

namespace A005929.P12223402272529257897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n * A138805 n

end

end A005929.P12223402272529257897

namespace A005929

/-- `A134667(n)*A138805(n)` -/
def P12223402272529257897.Spec : Prop :=
  ∀ n, P12223402272529257897.a n = A005929 n

end A005929

/-! ## A005929.P17686499870496061531

`lcm(A033716(n), A045839(n))`
-/

namespace A005929.P17686499870496061531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033716 n) (A045839 n)

end

end A005929.P17686499870496061531

namespace A005929

/-- `lcm(A033716(n), A045839(n))` -/
def P17686499870496061531.Spec : Prop :=
  ∀ n, (P17686499870496061531.a n : ℤ) = A005929 n

end A005929

/-! ## A005929.P8803888285841938286

`lcm(A109017(n), A113973(n))`
-/

namespace A005929.P8803888285841938286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109017 n) (A113973 n)

end

end A005929.P8803888285841938286

namespace A005929

/-- `lcm(A109017(n), A113973(n))` -/
def P8803888285841938286.Spec : Prop :=
  ∀ n, (P8803888285841938286.a n : ℤ) = A005929 n

end A005929

/-! ## A005929.P6743451527256091753

`lcm(A110161(n), A115978(n))`
-/

namespace A005929.P6743451527256091753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110161 n) (A115978 n)

end

end A005929.P6743451527256091753

namespace A005929

/-- `lcm(A110161(n), A115978(n))` -/
def P6743451527256091753.Spec : Prop :=
  ∀ n, (P6743451527256091753.a n : ℤ) = A005929 n

end A005929

/-! ## A005929.P6894783033130795809

`lcm(A123330(n), A322796(n))`
-/

namespace A005929.P6894783033130795809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123330 n) (A322796 n)

end

end A005929.P6894783033130795809

namespace A005929

/-- `lcm(A123330(n), A322796(n))` -/
def P6894783033130795809.Spec : Prop :=
  ∀ n, (P6894783033130795809.a n : ℤ) = A005929 n

end A005929

/-! ## A005929.P571669846019834094

`char[A016921(n)]*A033716(n)`
-/

namespace A005929.P571669846019834094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033716 n

end

end A005929.P571669846019834094

namespace A005929

/-- `char[A016921(n)]*A033716(n)` -/
def P571669846019834094.Spec : Prop :=
  ∀ n, P571669846019834094.a n = A005929 n

end A005929

/-! ## A005929.P10980725164245372832

`2*A045833(n*A000035(n))`
-/

namespace A005929.P10980725164245372832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 ((n : ℤ) * A000035 n).toNat

end

end A005929.P10980725164245372832

namespace A005929

/-- `2*A045833(n*A000035(n))` -/
def P10980725164245372832.Spec : Prop :=
  ∀ n, P10980725164245372832.a n = A005929 n

end A005929

/-! ## A005929.P7750997184422381937

`2*A045833(n*A039982(n))`
-/

namespace A005929.P7750997184422381937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 ((n : ℤ) * A039982 n).toNat

end

end A005929.P7750997184422381937

namespace A005929

/-- `2*A045833(n*A039982(n))` -/
def P7750997184422381937.Spec : Prop :=
  ∀ n, P7750997184422381937.a n = A005929 n

end A005929

/-! ## A005929.P8509808285679767317

`2*A045833(n)*A060396(n)`
-/

namespace A005929.P8509808285679767317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045833 n * A060396 n)

end

end A005929.P8509808285679767317

namespace A005929

/-- `2*A045833(n)*A060396(n)` -/
def P8509808285679767317.Spec : Prop :=
  ∀ n, P8509808285679767317.a n = A005929 n

end A005929

/-! ## A005929.P1802393987007738740

`2*A045833(n)*A070432(n)`
-/

namespace A005929.P1802393987007738740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045833 n * A070432 n)

end

end A005929.P1802393987007738740

namespace A005929

/-- `2*A045833(n)*A070432(n)` -/
def P1802393987007738740.Spec : Prop :=
  ∀ n, P1802393987007738740.a n = A005929 n

end A005929

/-! ## A005929.P8731293648533829608

`2*A045833(n*A088911(n))`
-/

namespace A005929.P8731293648533829608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 ((n : ℤ) * A088911 n).toNat

end

end A005929.P8731293648533829608

namespace A005929

/-- `2*A045833(n*A088911(n))` -/
def P8731293648533829608.Spec : Prop :=
  ∀ n, P8731293648533829608.a n = A005929 n

end A005929

/-! ## A005929.P11759374443846265166

`2*A045833(n*A093719(n))`
-/

namespace A005929.P11759374443846265166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045833 ((n : ℤ) * A093719 n).toNat

end

end A005929.P11759374443846265166

namespace A005929

/-- `2*A045833(n*A093719(n))` -/
def P11759374443846265166.Spec : Prop :=
  ∀ n, P11759374443846265166.a n = A005929 n

end A005929

/-!
# A005930: Theta series of D_5 lattice.

The programs for A005930, there is no canonical definition to state claims against.
-/

/-! ## A005930.P17427809755326428466

`A000132(2*n)`
-/

namespace A005930.P17427809755326428466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 (2 * n)

end

end A005930.P17427809755326428466

/-! ## A005930.P12328131452153789429

`xor(1, xor(1, A000132(n+n)))`
-/

namespace A005930.P12328131452153789429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000132 (n + n)))

end

end A005930.P12328131452153789429

/-! ## A005930.P7922723295301680220

`and(-1, A000132(A005843(n)))`
-/

namespace A005930.P7922723295301680220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000132 (A005843 n).toNat)

end

end A005930.P7922723295301680220

/-! ## A005930.P15898537682168242739

`lcm(∑[A002448(n)], A000132(n+n))`
-/

namespace A005930.P15898537682168242739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000132 (n + n))

end

end A005930.P15898537682168242739

/-! ## A005930.P16943192630989095845

`A000132(n+n)%A000132(n+1)²`
-/

namespace A005930.P16943192630989095845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000132 (n + n)) (A000132 (n + 1) ^ 2)

end

end A005930.P16943192630989095845

/-! ## A005930.P11220174424417682197

`A000132(A005843(n))%A054840(n+1)`
-/

namespace A005930.P11220174424417682197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000132 (A005843 n).toNat) (A054840 (n + 1))

end

end A005930.P11220174424417682197

/-! ## A005930.P16752495428982986126

`A008433(8*n)`
-/

namespace A005930.P16752495428982986126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008433 (8 * n)

end

end A005930.P16752495428982986126

/-! ## A005930.P5073315086302020839

`A008422(8*n)`
-/

namespace A005930.P5073315086302020839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008422 (8 * n)

end

end A005930.P5073315086302020839

/-! ## A005930.P220449926051783991

`A122141(A091823(n+2)-2)`
-/

namespace A005930.P220449926051783991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122141 (A091823 (n + 2) - 2).toNat

end

end A005930.P220449926051783991

/-!
# A005931: Theta series of the coset of the E_7 lattice in its dual.

The programs for A005931, there is no canonical definition to state claims against.
-/

/-! ## A005931.P12719815339408957067

`A023919(16*n+12)`
-/

namespace A005931.P12719815339408957067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (16 * n + 12)

end

end A005931.P12719815339408957067

/-! ## A005931.P966853406741066810

`A030443(Δ[n²])`
-/

namespace A005931.P966853406741066810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005931.P966853406741066810

/-! ## A005931.P3594554819703018477

`lcm(2, A030443(2*n+1))`
-/

namespace A005931.P3594554819703018477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A030443 (2 * n + 1))

end

end A005931.P3594554819703018477

/-! ## A005931.P17852943706236679258

`A003781(4*n+3)`
-/

namespace A005931.P17852943706236679258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (4 * n + 3)

end

end A005931.P17852943706236679258

/-! ## A005931.P5317516694270379579

`lcm(2, A003781(A004767(n)))`
-/

namespace A005931.P5317516694270379579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A003781 (A004767 n).toNat)

end

end A005931.P5317516694270379579

/-! ## A005931.P13317514468306693072

`A033999(n)²*A003781(A004767(n))`
-/

namespace A005931.P13317514468306693072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A003781 (A004767 n).toNat

end

end A005931.P13317514468306693072

/-! ## A005931.P1361249377110424894

`char[A038572(n)]*A003781(A004767(n))`
-/

namespace A005931.P1361249377110424894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003781 (A004767 n).toNat

end

end A005931.P1361249377110424894

/-! ## A005931.P16522154837694638067

`A003781(A004767(n))+A000007(n+1)`
-/

namespace A005931.P16522154837694638067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A004767 n).toNat + A000007 (n + 1)

end

end A005931.P16522154837694638067

/-! ## A005931.P12096888925627740068

`A000034(2*n)*A003781(A004767(n))`
-/

namespace A005931.P12096888925627740068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A003781 (A004767 n).toNat

end

end A005931.P12096888925627740068

/-! ## A005931.P4778254599028881124

`A003781(A004767(n))+char[A308635(n+1)]`
-/

namespace A005931.P4778254599028881124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308635 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A004767 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005931.P4778254599028881124

/-! ## A005931.P7600550995795063324

`A003781(A004767(n))+char[A308636(n+1)]`
-/

namespace A005931.P7600550995795063324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308636 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A004767 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005931.P7600550995795063324

/-! ## A005931.P13437156342609828103

`A003781(A004767(n))/A055396(A001747(n+1))`
-/

namespace A005931.P13437156342609828103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003781 (A004767 n).toNat : ℚ) / (A055396 (A001747 (n + 1)).toNat : ℚ)

end

end A005931.P13437156342609828103

/-!
# A005934: Highly powerful numbers: numbers with record value of the product of the exponents in prime factorization (A005361).

The programs for A005934, there is no canonical definition to state claims against.
-/

/-! ## A005934.P12591690105101248329

`A085629(A036965(n+1))`
-/

namespace A005934.P12591690105101248329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (A036965 (n + 1)).toNat

end

end A005934.P12591690105101248329

/-! ## A005934.P1005175475483539799

`A085629(record[A052306(n+1)])`
-/

namespace A005934.P1005175475483539799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005934.P1005175475483539799

/-! ## A005934.P17437381487246753595

`A085629(record[A212647(n+1)])`
-/

namespace A005934.P17437381487246753595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005934.P17437381487246753595

/-! ## A005934.P10635004173033686566

`A085629(∏{e}[A335850(n+1), #-1])`
-/

namespace A005934.P10635004173033686566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)).toNat

end

end A005934.P10635004173033686566

/-! ## A005934.P10592507461895483019

`A085629(record[A005361(n+1)])`
-/

namespace A005934.P10592507461895483019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085629 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A005934.P10592507461895483019

/-!
# A005935: Pseudoprimes to base 3.

The programs for A005935, there is no canonical definition to state claims against.
-/

/-! ## A005935.P6189518908160459165

`∩[A122780(n+1), A263239(n+1)]`
-/

namespace A005935.P6189518908160459165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P6189518908160459165

/-! ## A005935.P17149574552570848921

`∪[A130433(n+1), A351336(n+1)]`
-/

namespace A005935.P17149574552570848921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P17149574552570848921

/-! ## A005935.P16557243240367691050

`∩[A020138(n+1), A122780(n+1)]`
-/

namespace A005935.P16557243240367691050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P16557243240367691050

/-! ## A005935.P3307593940664331984

`∩[A020209(n+1), A122780(n+1)]`
-/

namespace A005935.P3307593940664331984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P3307593940664331984

/-! ## A005935.P5178723739493870859

`∩[A020138(n+1), A020155(n+1)]`
-/

namespace A005935.P5178723739493870859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P5178723739493870859

/-! ## A005935.P16938925136899550531

`∩[A020155(n+1), A020209(n+1)]`
-/

namespace A005935.P16938925136899550531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P16938925136899550531

/-! ## A005935.P13093160994286791200

`∩[A020155(n+1), A122780(n+1)]`
-/

namespace A005935.P13093160994286791200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P13093160994286791200

/-! ## A005935.P14975164583321304858

`∩[A020155(n+1), A122786(n+1)]`
-/

namespace A005935.P14975164583321304858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P14975164583321304858

/-! ## A005935.P14487847473546515745

`∩[A020155(n+1), A263239(n+1)]`
-/

namespace A005935.P14487847473546515745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005935.P14487847473546515745

/-! ## A005935.P6495966029108788441

`filter[A263239(n+1), A359374(#)]`
-/

namespace A005935.P6495966029108788441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A005935.P6495966029108788441

/-!
# A005936: Pseudoprimes to base 5.

The programs for A005936, there is no canonical definition to state claims against.
-/

/-! ## A005936.P7504995613554514005

`∩[A020153(n+1), A122782(n+1)]`
-/

namespace A005936.P7504995613554514005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005936.P7504995613554514005

/-! ## A005936.P12435851569305526441

`∩[A020153(n+1), A123091(n+1)]`
-/

namespace A005936.P12435851569305526441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005936.P12435851569305526441

/-! ## A005936.P4510239604737510975

`filter[A122782(n+2), A358847(#)]`
-/

namespace A005936.P4510239604737510975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A005936.P4510239604737510975

/-! ## A005936.P17926392472522087756

`filter[A122782(n+2), A011558(#)]`
-/

namespace A005936.P17926392472522087756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A005936.P17926392472522087756

/-!
# A005937: Pseudoprimes to base 6.

The programs for A005937, there is no canonical definition to state claims against.
-/

/-! ## A005937.P13333095009725212069

`∩[A020164(n+1), A122783(n+1)]`
-/

namespace A005937.P13333095009725212069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005937.P13333095009725212069

/-! ## A005937.P9592244912570261271

`filter[A122783(n+2), A187074(#)]`
-/

namespace A005937.P9592244912570261271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A005937.P9592244912570261271

/-! ## A005937.P18106447924846866283

`filter[A122783(n+2), A372574(#)]`
-/

namespace A005937.P18106447924846866283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A005937.P18106447924846866283

/-! ## A005937.P15904977701505929153

`filter[A122783(n+2), A373154(#)]`
-/

namespace A005937.P15904977701505929153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A005937.P15904977701505929153

/-! ## A005937.P5320724764512379436

`filter[A122783(n+2), A373155(#)]`
-/

namespace A005937.P5320724764512379436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A005937.P5320724764512379436

/-! ## A005937.P3758368527970321534

`filter[A122783(n+2), A373991(#)]`
-/

namespace A005937.P3758368527970321534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A005937.P3758368527970321534

/-! ## A005937.P4789524284902394933

`filter[A122783(n+2), A374041(#)]`
-/

namespace A005937.P4789524284902394933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A005937.P4789524284902394933

/-! ## A005937.P2470986272288906289

`filter[A122783(n+2), A374043(#)]`
-/

namespace A005937.P2470986272288906289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A005937.P2470986272288906289

/-! ## A005937.P2356795248619263822

`filter[A122783(n+2), A354354(#)]`
-/

namespace A005937.P2356795248619263822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A005937.P2356795248619263822

/-! ## A005937.P5490031132814076546

`∩[A038509(n+1), A122783(n+1)]`
-/

namespace A005937.P5490031132814076546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005937.P5490031132814076546

/-!
# A005938: Pseudoprimes to base 7.

The programs for A005938, there is no canonical definition to state claims against.
-/

/-! ## A005938.P1654536773161168814

`∩[A020177(n+1), A122784(n+1)]`
-/

namespace A005938.P1654536773161168814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005938.P1654536773161168814

/-! ## A005938.P12322573426905909660

`filter[A122784(n+2), A109720(#)]`
-/

namespace A005938.P12322573426905909660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A005938.P12322573426905909660

/-! ## A005938.P3735903791453485943

`A028902(A262104(n+1))`
-/

namespace A005938.P3735903791453485943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A262104 (n + 1)).toNat

end

end A005938.P3735903791453485943

/-!
# A005939: Pseudoprimes to base 10.

The programs for A005939, there is no canonical definition to state claims against.
-/

/-! ## A005939.P6832880244366691869

`∩[A020228(n+1), A121014(n+1)]`
-/

namespace A005939.P6832880244366691869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P6832880244366691869

/-! ## A005939.P2692867460671622319

`∩[A020228(n+1), A104381(n+1)]`
-/

namespace A005939.P2692867460671622319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P2692867460671622319

/-! ## A005939.P7293299582280614511

`∩[A020228(n+1), A121912(n+1)]`
-/

namespace A005939.P7293299582280614511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P7293299582280614511

/-! ## A005939.P3772058254324428717

`∩[A053795(n+1), A104381(n+1)]`
-/

namespace A005939.P3772058254324428717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P3772058254324428717

/-! ## A005939.P8484978262290648722

`∩[A053795(n+1), A121014(n+1)]`
-/

namespace A005939.P8484978262290648722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P8484978262290648722

/-! ## A005939.P13013675080207882368

`∩[A053795(n+1), A121912(n+1)]`
-/

namespace A005939.P13013675080207882368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P13013675080207882368

/-! ## A005939.P6450736580346411856

`∩[A067887(n+1), A104381(n+1)]`
-/

namespace A005939.P6450736580346411856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P6450736580346411856

/-! ## A005939.P1174145103302954112

`∩[A071904(n+1), A104381(n+1)]`
-/

namespace A005939.P1174145103302954112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P1174145103302954112

/-! ## A005939.P11399057451748463035

`∩[A104381(n+1), A333039(n+1)]`
-/

namespace A005939.P11399057451748463035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P11399057451748463035

/-! ## A005939.P4688807749331174659

`∩[A078505(n+1), A104381(n+1)]`
-/

namespace A005939.P4688807749331174659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005939.P4688807749331174659

/-!
# A005940: The Doudna sequence: write n-1 in binary; power of prime(k) in a(n) is # of 1's that are followed by k-1 0's.

The programs for A005940, the canonical program `A005940.P997646858218259533` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005940 has offset 1).

The definition of A005940 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A243353, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005940.P997646858218259533

`A243353(A006068(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005940

/-- `A243353(A006068(n))` -/
def P997646858218259533.Spec : Prop :=
  ∀ n, P997646858218259533.a n = A005940 (n + 1)

theorem P997646858218259533.correct : P997646858218259533.Spec := by
  intro n
  simp only [A005940, Nat.add_sub_cancel]

end A005940

/-! ## A005940.P3187976220260343607

`A250246(A252753(n))`
-/

namespace A005940.P3187976220260343607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 n).toNat

end

end A005940.P3187976220260343607

namespace A005940

/-- `A250246(A252753(n))` -/
def P3187976220260343607.Spec : Prop :=
  ∀ n, P3187976220260343607.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P5971876647857525285

`A003961(a(A003602(n+1)-1))*A006519(n+1)` with `a(0)=1`
-/

namespace A005940.P5971876647857525285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003961 (a (A003602 (n + 1) - 1).toNat).toNat * A006519 (n + 1)

end

end A005940.P5971876647857525285

namespace A005940

/-- `A003961(a(A003602(n+1)-1))*A006519(n+1)` -/
def P5971876647857525285.Spec : Prop :=
  ∀ n, P5971876647857525285.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P5942875842694471387

`A122111(A253563(n))`
-/

namespace A005940.P5942875842694471387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253563 n).toNat

end

end A005940.P5942875842694471387

namespace A005940

/-- `A122111(A253563(n))` -/
def P5942875842694471387.Spec : Prop :=
  ∀ n, P5942875842694471387.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P7213813979024872892

`A364499(n+1)+1+n`
-/

namespace A005940.P7213813979024872892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364499 (n + 1) + 1 + (n : ℤ)

end

end A005940.P7213813979024872892

namespace A005940

/-- `A364499(n+1)+1+n` -/
def P7213813979024872892.Spec : Prop :=
  ∀ n, P7213813979024872892.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P17505952626028182179

`A366263(A193231(n))`
-/

namespace A005940.P17505952626028182179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A193231 n).toNat

end

end A005940.P17505952626028182179

namespace A005940

/-- `A366263(A193231(n))` -/
def P17505952626028182179.Spec : Prop :=
  ∀ n, P17505952626028182179.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P12608727830837549465

`A366260(A303768(n))`
-/

namespace A005940.P12608727830837549465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 (A303768 n).toNat

end

end A005940.P12608727830837549465

namespace A005940

/-- `A366260(A303768(n))` -/
def P12608727830837549465.Spec : Prop :=
  ∀ n, P12608727830837549465.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P5793127165731327406

`A324394(n)*A324395(n)`
-/

namespace A005940.P5793127165731327406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 n * A324395 n

end

end A005940.P5793127165731327406

namespace A005940

/-- `A324394(n)*A324395(n)` -/
def P5793127165731327406.Spec : Prop :=
  ∀ n, P5793127165731327406.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P8118455048892518079

`2*A290077(n)-A324052(n)`
-/

namespace A005940.P8118455048892518079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290077 n - A324052 n

end

end A005940.P8118455048892518079

namespace A005940

/-- `2*A290077(n)-A324052(n)` -/
def P8118455048892518079.Spec : Prop :=
  ∀ n, P8118455048892518079.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P3838587233380494797

`(A324055(n)+A324054(n))/2`
-/

namespace A005940.P3838587233380494797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324055 n + A324054 n : ℚ) / 2

end

end A005940.P3838587233380494797

namespace A005940

/-- `(A324055(n)+A324054(n))/2` -/
def P3838587233380494797.Spec : Prop :=
  ∀ n, P3838587233380494797.a n = (A005940 (n + 1) : ℚ)

end A005940

/-! ## A005940.P15457260321985683731

`A340362(n+1)+A324106(n+1)`
-/

namespace A005940.P15457260321985683731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1) + A324106 (n + 1)

end

end A005940.P15457260321985683731

namespace A005940

/-- `A340362(n+1)+A324106(n+1)` -/
def P15457260321985683731.Spec : Prop :=
  ∀ n, P15457260321985683731.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P15445618878200750560

`A324641(n+1)-A324640(n+1)`
-/

namespace A005940.P15445618878200750560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A324640 (n + 1)

end

end A005940.P15445618878200750560

namespace A005940

/-- `A324641(n+1)-A324640(n+1)` -/
def P15445618878200750560.Spec : Prop :=
  ∀ n, P15445618878200750560.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P5844001507748519744

`A340364(n+1)*A340365(n+1)`
-/

namespace A005940.P5844001507748519744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340364 (n + 1) * A340365 (n + 1)

end

end A005940.P5844001507748519744

namespace A005940

/-- `A340364(n+1)*A340365(n+1)` -/
def P5844001507748519744.Spec : Prop :=
  ∀ n, P5844001507748519744.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P13857685146234102427

`A364500(n+1)*A364502(n+1)`
-/

namespace A005940.P13857685146234102427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364500 (n + 1) * A364502 (n + 1)

end

end A005940.P13857685146234102427

namespace A005940

/-- `A364500(n+1)*A364502(n+1)` -/
def P13857685146234102427.Spec : Prop :=
  ∀ n, P13857685146234102427.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P7570430862326098426

`A340362(n+1)+A340364(n+1)*A340366(n+1)`
-/

namespace A005940.P7570430862326098426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1)

end

end A005940.P7570430862326098426

namespace A005940

/-- `A340362(n+1)+A340364(n+1)*A340366(n+1)` -/
def P7570430862326098426.Spec : Prop :=
  ∀ n, P7570430862326098426.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P15757511472325525743

`A324106(n+1)*A340365(n+1)/A340366(n+1)`
-/

namespace A005940.P15757511472325525743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324106 (n + 1) * A340365 (n + 1) : ℚ) / (A340366 (n + 1) : ℚ)

end

end A005940.P15757511472325525743

namespace A005940

/-- `A324106(n+1)*A340365(n+1)/A340366(n+1)` -/
def P15757511472325525743.Spec : Prop :=
  ∀ n, P15757511472325525743.a n = (A005940 (n + 1) : ℚ)

end A005940

/-! ## A005940.P17356582748863591851

`A337375(n)*A337376(n)`
-/

namespace A005940.P17356582748863591851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 n * A337376 n

end

end A005940.P17356582748863591851

namespace A005940

/-- `A337375(n)*A337376(n)` -/
def P17356582748863591851.Spec : Prop :=
  ∀ n, P17356582748863591851.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P15539871686355617084

`A163511(A337909(n+1)-1)`
-/

namespace A005940.P15539871686355617084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A337909 (n + 1) - 1).toNat

end

end A005940.P15539871686355617084

namespace A005940

/-- `A163511(A337909(n+1)-1)` -/
def P15539871686355617084.Spec : Prop :=
  ∀ n, P15539871686355617084.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P17119626446945741134

`A279338(A279344(n))`
-/

namespace A005940.P17119626446945741134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279344 n).toNat

end

end A005940.P17119626446945741134

namespace A005940

/-- `A279338(A279344(n))` -/
def P17119626446945741134.Spec : Prop :=
  ∀ n, P17119626446945741134.a n = A005940 (n + 1)

end A005940

/-! ## A005940.P1762641043470666009

`A163511(A092569(2*n)/2)`
-/

namespace A005940.P1762641043470666009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A005940.P1762641043470666009

namespace A005940

/-- `A163511(A092569(2*n)/2)` -/
def P1762641043470666009.Spec : Prop :=
  ∀ n, P1762641043470666009.a n = A005940 (n + 1)

end A005940

/-!
# A005941: Inverse of the Doudna sequence A005940.

The programs for A005941, the canonical program `A005941.P9595689460679922607` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005941 has offset 1).

The definition of A005941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005941.P17275936780034543328

`1+A156552(n+1)`
-/

namespace A005941.P17275936780034543328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A156552 (n + 1)

end

end A005941.P17275936780034543328

namespace A005941

/-- `1+A156552(n+1)` -/
def P17275936780034543328.Spec : Prop :=
  ∀ n, P17275936780034543328.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P9595689460679922607

`∑{d}[n+1, A364557(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A005941

/-- `∑{d}[n+1, A364557(#)]` -/
def P9595689460679922607.Spec : Prop :=
  ∀ n, P9595689460679922607.a n = A005941 (n + 1)

theorem P9595689460679922607.correct : P9595689460679922607.Spec := by
  intro n
  simp only [A005941, Nat.add_sub_cancel]

end A005941

/-! ## A005941.P13340426662760960945

`A364559(n+1)+1+n`
-/

namespace A005941.P13340426662760960945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364559 (n + 1) + 1 + (n : ℤ)

end

end A005941.P13340426662760960945

namespace A005941

/-- `A364559(n+1)+1+n` -/
def P13340426662760960945.Spec : Prop :=
  ∀ n, P13340426662760960945.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P10611939606139724978

`A048675(n+1)+A323905(n+1)+1`
-/

namespace A005941.P10611939606139724978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) + 1)

end

end A005941.P10611939606139724978

namespace A005941

/-- `A048675(n+1)+A323905(n+1)+1` -/
def P10611939606139724978.Spec : Prop :=
  ∀ n, P10611939606139724978.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P8824972849287131988

`A297112(n+1)+A297168(n+1)+1`
-/

namespace A005941.P8824972849287131988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (n + 1) + (A297168 (n + 1) + 1)

end

end A005941.P8824972849287131988

namespace A005941

/-- `A297112(n+1)+A297168(n+1)+1` -/
def P8824972849287131988.Spec : Prop :=
  ∀ n, P8824972849287131988.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P11195894502971205001

`A323244(n+1)+A324865(n+1)+1`
-/

namespace A005941.P11195894502971205001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + (A324865 (n + 1) + 1)

end

end A005941.P11195894502971205001

namespace A005941

/-- `A323244(n+1)+A324865(n+1)+1` -/
def P11195894502971205001.Spec : Prop :=
  ∀ n, P11195894502971205001.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P56837723497624885

`(A322993(2*(n+1))+1)/2`
-/

namespace A005941.P56837723497624885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322993 (2 * (n + 1)) + 1 : ℚ) / 2

end

end A005941.P56837723497624885

namespace A005941

/-- `(A322993(2*(n+1))+1)/2` -/
def P56837723497624885.Spec : Prop :=
  ∀ n, P56837723497624885.a n = (A005941 (n + 1) : ℚ)

end A005941

/-! ## A005941.P7958016715653865995

`A323243(n+1)+1-A324865(n+1)`
-/

namespace A005941.P7958016715653865995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) + (1 - A324865 (n + 1))

end

end A005941.P7958016715653865995

namespace A005941

/-- `A323243(n+1)+1-A324865(n+1)` -/
def P7958016715653865995.Spec : Prop :=
  ∀ n, P7958016715653865995.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P8427228450461092144

`xor(A324865(n+1), A324867(n+1))+1`
-/

namespace A005941.P8427228450461092144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324865 (n + 1)) (A324867 (n + 1)) + 1

end

end A005941.P8427228450461092144

namespace A005941

/-- `xor(A324865(n+1), A324867(n+1))+1` -/
def P8427228450461092144.Spec : Prop :=
  ∀ n, P8427228450461092144.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P10196494036300861105

`A292380(n+1)+A292382(n+1)+1`
-/

namespace A005941.P10196494036300861105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) + 1)

end

end A005941.P10196494036300861105

namespace A005941

/-- `A292380(n+1)+A292382(n+1)+1` -/
def P10196494036300861105.Spec : Prop :=
  ∀ n, P10196494036300861105.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P6732404098856424250

`A305418(A091202(n+1))+1`
-/

namespace A005941.P6732404098856424250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A091202 (n + 1)).toNat + 1

end

end A005941.P6732404098856424250

namespace A005941

/-- `A305418(A091202(n+1))+1` -/
def P6732404098856424250.Spec : Prop :=
  ∀ n, P6732404098856424250.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P9344391597219201408

`A332816(A108548(n+1))+1`
-/

namespace A005941.P9344391597219201408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332816 (A108548 (n + 1)).toNat + 1

end

end A005941.P9344391597219201408

namespace A005941

/-- `A332816(A108548(n+1))+1` -/
def P9344391597219201408.Spec : Prop :=
  ∀ n, P9344391597219201408.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P13749247731788821087

`A252754(A250245(n+1))+1`
-/

namespace A005941.P13749247731788821087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat + 1

end

end A005941.P13749247731788821087

namespace A005941

/-- `A252754(A250245(n+1))+1` -/
def P13749247731788821087.Spec : Prop :=
  ∀ n, P13749247731788821087.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P6597336256266966173

`A269388(A302025(n+1))+1`
-/

namespace A005941.P6597336256266966173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat + 1

end

end A005941.P6597336256266966173

namespace A005941

/-- `A269388(A302025(n+1))+1` -/
def P6597336256266966173.Spec : Prop :=
  ∀ n, P6597336256266966173.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P15857972272920623082

`A156552(A297165(n+1))`
-/

namespace A005941.P15857972272920623082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A297165 (n + 1)).toNat

end

end A005941.P15857972272920623082

namespace A005941

/-- `A156552(A297165(n+1))` -/
def P15857972272920623082.Spec : Prop :=
  ∀ n, P15857972272920623082.a n = A005941 (n + 1)

end A005941

/-! ## A005941.P14440528056608940777

`A244153(A048673(n+1))+1`
-/

namespace A005941.P14440528056608940777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A048673 (n + 1)).toNat + 1

end

end A005941.P14440528056608940777

namespace A005941

/-- `A244153(A048673(n+1))+1` -/
def P14440528056608940777.Spec : Prop :=
  ∀ n, P14440528056608940777.a n = A005941 (n + 1)

end A005941

/-!
# A005942: a(2n) = a(n) + a(n+1), a(2n+1) = 2a(n+1), if n >= 2.

The programs for A005942, the canonical program `A005942.P13366138311068225912` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005942 has offset 0).

The definition of A005942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005942.P13366138311068225912

`∑[A214212(abs(1-n))]-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005942

/-- `∑[A214212(abs(1-n))]-1` -/
def P13366138311068225912.Spec : Prop :=
  ∀ n, P13366138311068225912.a n = A005942 n

theorem P13366138311068225912.correct : P13366138311068225912.Spec := by
  intro n
  simp only [A005942]

end A005942

/-! ## A005942.P1207191097864259041

`A214212(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005942.P1207191097864259041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214212 (n - 1) + a (n - 1)

end

end A005942.P1207191097864259041

namespace A005942

/-- `A214212(n-1)+a(n-1)` -/
def P1207191097864259041.Spec : Prop :=
  ∀ n, P1207191097864259041.a n = A005942 n

end A005942

/-! ## A005942.P10378800734125968001

`A214214(n)+1-A214212(n)`
-/

namespace A005942.P10378800734125968001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n + (1 - A214212 n)

end

end A005942.P10378800734125968001

namespace A005942

/-- `A214214(n)+1-A214212(n)` -/
def P10378800734125968001.Spec : Prop :=
  ∀ n, P10378800734125968001.a n = A005942 n

end A005942

/-! ## A005942.P2605189686267935257

`∑[A214212(∑[n+1]-A133263(n))]`
-/

namespace A005942.P2605189686267935257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005942.P2605189686267935257

namespace A005942

/-- `∑[A214212(∑[n+1]-A133263(n))]` -/
def P2605189686267935257.Spec : Prop :=
  ∀ n, P2605189686267935257.a n = A005942 n

end A005942

/-! ## A005942.P10137136406797646718

`∑[A214212(A014681(2*n)-n)]`
-/

namespace A005942.P10137136406797646718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (A014681 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005942.P10137136406797646718

namespace A005942

/-- `∑[A214212(A014681(2*n)-n)]` -/
def P10137136406797646718.Spec : Prop :=
  ∀ n, P10137136406797646718.a n = A005942 n

end A005942

/-! ## A005942.P9501033401230818665

`A014681(∑[A214212(n)])-A214212(n)`
-/

namespace A005942.P9501033401230818665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A214212 n

end

end A005942.P9501033401230818665

namespace A005942

/-- `A014681(∑[A214212(n)])-A214212(n)` -/
def P9501033401230818665.Spec : Prop :=
  ∀ n, P9501033401230818665.a n = A005942 n

end A005942

/-! ## A005942.P17861111585476001977

`∑[A214212(log2(A011782(n)))]`
-/

namespace A005942.P17861111585476001977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005942.P17861111585476001977

namespace A005942

/-- `∑[A214212(log2(A011782(n)))]` -/
def P17861111585476001977.Spec : Prop :=
  ∀ n, P17861111585476001977.a n = A005942 n

end A005942

/-! ## A005942.P4040366594718798054

`2*A373700(n)-A159782(n)`
-/

namespace A005942.P4040366594718798054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A373700 n - A159782 n

end

end A005942.P4040366594718798054

namespace A005942

/-- `2*A373700(n)-A159782(n)` -/
def P4040366594718798054.Spec : Prop :=
  ∀ n, P4040366594718798054.a n = A005942 n

end A005942

/-!
# A005944: Theta series of 18-dimensional lattice associated with Sp_4(4), with det 1024 and minimal norm 4.

The programs for A005944, there is no canonical definition to state claims against.
-/

/-! ## A005944.P14258701609124763567

`A005950(2*n)`
-/

namespace A005944.P14258701609124763567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005950 (2 * n)

end

end A005944.P14258701609124763567

/-! ## A005944.P15272805745361088052

`A005950(A005843(n))+char[11]`
-/

namespace A005944.P15272805745361088052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005950 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A005944.P15272805745361088052

/-! ## A005944.P12477980296681404225

`A005950(A004277(n))+A000007(n)`
-/

namespace A005944.P12477980296681404225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005950 (A004277 n).toNat + A000007 n

end

end A005944.P12477980296681404225

/-! ## A005944.P728972784799216490

`A058348(n)+A005950(A004277(n))`
-/

namespace A005944.P728972784799216490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + A005950 (A004277 n).toNat

end

end A005944.P728972784799216490

/-! ## A005944.P17810315275254449796

`gcd(A005950(A005843(n)), A058348(n))`
-/

namespace A005944.P17810315275254449796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005950 (A005843 n).toNat) (A058348 n)

end

end A005944.P17810315275254449796

/-!
# A005945: Number of n-step mappings with 4 inputs.

The programs for A005945, the canonical program `A005945.P457557800414493776` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005945 has offset 0).

The definition of A005945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005945.P153523638327707760

`n*(3*n-1)*(2*n-1)/2`
-/

namespace A005945.P153523638327707760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 * n : ℤ) - 1) * ((2 * n : ℤ) - 1) : ℚ) / 2

end

end A005945.P153523638327707760

namespace A005945

/-- `n*(3*n-1)*(2*n-1)/2` -/
def P153523638327707760.Spec : Prop :=
  ∀ n, P153523638327707760.a n = (A005945 n : ℚ)

theorem P153523638327707760.correct : P153523638327707760.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A005945, Nat.add_sub_cancel, A005945.P153523638327707760.a, A005945.P457557800414493776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A005945, Nat.add_sub_cancel, A005945.P153523638327707760.a, A005945.P457557800414493776.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005945

/-! ## A005945.P457557800414493776

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=60`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005945

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P457557800414493776.Spec : Prop :=
  ∀ n, P457557800414493776.a n = A005945 n

theorem P457557800414493776.correct : P457557800414493776.Spec := by
  intro n
  simp only [A005945]

end A005945

/-! ## A005945.P2737325062083198995

`∑[n]+6*n*C(n, 2)`
-/

namespace A005945.P2737325062083198995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * n * Nat.choose n 2

end

end A005945.P2737325062083198995

namespace A005945

/-- `∑[n]+6*n*C(n, 2)` -/
def P2737325062083198995.Spec : Prop :=
  ∀ n, (P2737325062083198995.a n : ℤ) = A005945 n

end A005945

/-! ## A005945.P7138513012383583625

`(6*n+1)*C(n, 2)+n`
-/

namespace A005945.P7138513012383583625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 1) * Nat.choose n 2 + n

end

end A005945.P7138513012383583625

namespace A005945

/-- `(6*n+1)*C(n, 2)+n` -/
def P7138513012383583625.Spec : Prop :=
  ∀ n, (P7138513012383583625.a n : ℤ) = A005945 n

end A005945

/-! ## A005945.P7951841947181072878

`C(∑[2*n], 2)-C((1-n)², 2)`
-/

namespace A005945.P7951841947181072878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2 : ℤ)

end

end A005945.P7951841947181072878

namespace A005945

/-- `C(∑[2*n], 2)-C((1-n)², 2)` -/
def P7951841947181072878.Spec : Prop :=
  ∀ n, P7951841947181072878.a n = A005945 n

end A005945

/-! ## A005945.P12991429899171962097

`n/2*A033568(n)`
-/

namespace A005945.P12991429899171962097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A033568 n : ℚ)

end

end A005945.P12991429899171962097

namespace A005945

/-- `n/2*A033568(n)` -/
def P12991429899171962097.Spec : Prop :=
  ∀ n, P12991429899171962097.a n = (A005945 n : ℚ)

end A005945

/-! ## A005945.P1703942897955430910

`A172073(n)+A007531(n)`
-/

namespace A005945.P1703942897955430910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n + A007531 n

end

end A005945.P1703942897955430910

namespace A005945

/-- `A172073(n)+A007531(n)` -/
def P1703942897955430910.Spec : Prop :=
  ∀ n, P1703942897955430910.a n = A005945 n

end A005945

/-! ## A005945.P14790127230200576462

`A160378(n)+A059722(n)`
-/

namespace A005945.P14790127230200576462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A059722 n

end

end A005945.P14790127230200576462

namespace A005945

/-- `A160378(n)+A059722(n)` -/
def P14790127230200576462.Spec : Prop :=
  ∀ n, P14790127230200576462.a n = A005945 n

end A005945

/-! ## A005945.P5828156204791944717

`A270205(n)+A001106(n)`
-/

namespace A005945.P5828156204791944717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + A001106 n

end

end A005945.P5828156204791944717

namespace A005945

/-- `A270205(n)+A001106(n)` -/
def P5828156204791944717.Spec : Prop :=
  ∀ n, P5828156204791944717.a n = A005945 n

end A005945

/-! ## A005945.P5194875810316651792

`A027903(n)-A022271(n)`
-/

namespace A005945.P5194875810316651792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - A022271 n

end

end A005945.P5194875810316651792

namespace A005945

/-- `A027903(n)-A022271(n)` -/
def P5194875810316651792.Spec : Prop :=
  ∀ n, P5194875810316651792.a n = A005945 n

end A005945

/-! ## A005945.P14678821952715055300

`A067389(n)-A022267(n)`
-/

namespace A005945.P14678821952715055300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - A022267 n

end

end A005945.P14678821952715055300

namespace A005945

/-- `A067389(n)-A022267(n)` -/
def P14678821952715055300.Spec : Prop :=
  ∀ n, P14678821952715055300.a n = A005945 n

end A005945

/-! ## A005945.P5276641507538147685

`A117642(n)-A005476(n)`
-/

namespace A005945.P5276641507538147685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A005476 n

end

end A005945.P5276641507538147685

namespace A005945

/-- `A117642(n)-A005476(n)` -/
def P5276641507538147685.Spec : Prop :=
  ∀ n, P5276641507538147685.a n = A005945 n

end A005945

/-! ## A005945.P14478793186954587893

`A115519(n)-A016742(n)`
-/

namespace A005945.P14478793186954587893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n - A016742 n

end

end A005945.P14478793186954587893

namespace A005945

/-- `A115519(n)-A016742(n)` -/
def P14478793186954587893.Spec : Prop :=
  ∀ n, P14478793186954587893.a n = A005945 n

end A005945

/-! ## A005945.P16614487171277370931

`A130884(n)-A006137(n)`
-/

namespace A005945.P16614487171277370931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130884 n - A006137 n

end

end A005945.P16614487171277370931

namespace A005945

/-- `A130884(n)-A006137(n)` -/
def P16614487171277370931.Spec : Prop :=
  ∀ n, P16614487171277370931.a n = A005945 n

end A005945

/-! ## A005945.P8386848920567591732

`A119536(n)-A028895(n)`
-/

namespace A005945.P8386848920567591732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n - A028895 n

end

end A005945.P8386848920567591732

namespace A005945

/-- `A119536(n)-A028895(n)` -/
def P8386848920567591732.Spec : Prop :=
  ∀ n, P8386848920567591732.a n = A005945 n

end A005945

/-! ## A005945.P15999688848658460851

`A196507(n)-A022275(n)`
-/

namespace A005945.P15999688848658460851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n - A022275 n

end

end A005945.P15999688848658460851

namespace A005945

/-- `A196507(n)-A022275(n)` -/
def P15999688848658460851.Spec : Prop :=
  ∀ n, P15999688848658460851.a n = A005945 n

end A005945

/-! ## A005945.P14406181626725781574

`A211545(n)-A027444(n)`
-/

namespace A005945.P14406181626725781574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211545 n - A027444 n

end

end A005945.P14406181626725781574

namespace A005945

/-- `A211545(n)-A027444(n)` -/
def P14406181626725781574.Spec : Prop :=
  ∀ n, P14406181626725781574.a n = A005945 n

end A005945

/-! ## A005945.P6830129925002738365

`A249354(n)-A022269(n)`
-/

namespace A005945.P6830129925002738365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n - A022269 n

end

end A005945.P6830129925002738365

namespace A005945

/-- `A249354(n)-A022269(n)` -/
def P6830129925002738365.Spec : Prop :=
  ∀ n, P6830129925002738365.a n = A005945 n

end A005945

/-! ## A005945.P16423966685774223447

`A257042(n)-A022276(n)`
-/

namespace A005945.P16423966685774223447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257042 n - A022276 n

end

end A005945.P16423966685774223447

namespace A005945

/-- `A257042(n)-A022276(n)` -/
def P16423966685774223447.Spec : Prop :=
  ∀ n, P16423966685774223447.a n = A005945 n

end A005945

/-! ## A005945.P9012267558276232518

`A220443(n)-A092277(n)`
-/

namespace A005945.P9012267558276232518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n - A092277 n

end

end A005945.P9012267558276232518

namespace A005945

/-- `A220443(n)-A092277(n)` -/
def P9012267558276232518.Spec : Prop :=
  ∀ n, P9012267558276232518.a n = A005945 n

end A005945

/-!
# A005946: Number of n-step mappings with 5 inputs.

The programs for A005946, the canonical program `A005946.P11046766925565559433` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005946 has offset 1).

The definition of A005946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005946.P11046766925565559433

`A000566(n+1)*A000567(n+1)-A002492(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005946

/-- `A000566(n+1)*A000567(n+1)-A002492(n)` -/
def P11046766925565559433.Spec : Prop :=
  ∀ n, P11046766925565559433.a n = A005946 (n + 1)

theorem P11046766925565559433.correct : P11046766925565559433.Spec := by
  intro n
  simp only [A005946, Nat.add_sub_cancel]

end A005946

/-! ## A005946.P2337283804195856188

`A144150(A167499(n+4))`
-/

namespace A005946.P2337283804195856188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A167499 (n + 4)).toNat

end

end A005946.P2337283804195856188

namespace A005946

/-- `A144150(A167499(n+4))` -/
def P2337283804195856188.Spec : Prop :=
  ∀ n, P2337283804195856188.a n = A005946 (n + 1)

end A005946

/-! ## A005946.P6475776493666182886

`A144150(eq[5, A002262(n)])`
-/

namespace A005946.P6475776493666182886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005946.P6475776493666182886

namespace A005946

/-- `A144150(eq[5, A002262(n)])` -/
def P6475776493666182886.Spec : Prop :=
  ∀ n, P6475776493666182886.a n = A005946 (n + 1)

end A005946

/-! ## A005946.P35312575929830955

`A144150(A000124(n+5)+4)`
-/

namespace A005946.P35312575929830955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A000124 (n + 5) + 4).toNat

end

end A005946.P35312575929830955

namespace A005946

/-- `A144150(A000124(n+5)+4)` -/
def P35312575929830955.Spec : Prop :=
  ∀ n, P35312575929830955.a n = A005946 (n + 1)

end A005946

/-! ## A005946.P3368844869713667264

`A144150(A000217(n+5)+5)`
-/

namespace A005946.P3368844869713667264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A000217 (n + 5) + 5).toNat

end

end A005946.P3368844869713667264

namespace A005946

/-- `A144150(A000217(n+5)+5)` -/
def P3368844869713667264.Spec : Prop :=
  ∀ n, P3368844869713667264.a n = A005946 (n + 1)

end A005946

/-!
# A005947: Tumbling distance for n-input mappings with 2 steps.

The programs for A005947, there is no canonical definition to state claims against.
-/

/-! ## A005947.P865000362436306169

`n*A120057(A133263(n))`
-/

namespace A005947.P865000362436306169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120057 (A133263 n).toNat

end

end A005947.P865000362436306169

/-! ## A005947.P6579660828745374637

`n*(A087648(n)-A003128(n))`
-/

namespace A005947.P6579660828745374637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A087648 n - A003128 n)

end

end A005947.P6579660828745374637

/-! ## A005947.P7876118709501293907

`n*(A078468(n)-A033452(n))`
-/

namespace A005947.P7876118709501293907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A078468 n - A033452 n)

end

end A005947.P7876118709501293907

/-! ## A005947.P1557227538327637534

`n*(A005493(n)-A226506(n))`
-/

namespace A005947.P1557227538327637534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005493 n - A226506 n)

end

end A005947.P1557227538327637534

/-! ## A005947.P2971816926046712158

`n*(A000110(n)+Δ[A186021(n)])`
-/

namespace A005947.P2971816926046712158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000110 n + (f1 (n + 1) - f1 n))

end

end A005947.P2971816926046712158

/-!
# A005948: Tumbling distance for n-input mappings with 3 steps.

The programs for A005948, there is no canonical definition to state claims against.
-/

/-! ## A005948.P9728399980185037913

`A325432(A226733(n)+1)%xor(1, 10^n-4^n)`
-/

namespace A005948.P9728399980185037913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325432 (A226733 n + 1).toNat) (Int.xor 1 ((10 ^ n : ℤ) - (4 ^ n : ℤ)))

end

end A005948.P9728399980185037913

/-!
# A005950: Theta series of 18-dimensional lattice associated with Sp_4(4), with det 256 and minimal norm 3.

The programs for A005950, there is no canonical definition to state claims against.
-/

/-! ## A005950.P2462802681960752092

`A336042(n+1)%3*A136506(n)`
-/

namespace A005950.P2462802681960752092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336042 (n + 1)) 3 * A136506 n

end

end A005950.P2462802681960752092

/-!
# A005951: Theta series of P_{9a} packing.

The programs for A005951, there is no canonical definition to state claims against.
-/

/-! ## A005951.P15914609831361470285

`∏{p}[A393421(n), floor(#/4)]`
-/

namespace A005951.P15914609831361470285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(p : ℚ) / 4⌋

end

end A005951.P15914609831361470285

/-!
# A005955: Number of acyclic secondary alcohols with n carbon atoms.

The programs for A005955, there is no canonical definition to state claims against.
-/

/-! ## A005955.P18146439672397714564

`A005958(n+3)-A000625(n+2)`
-/

namespace A005955.P18146439672397714564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005958 (n + 3) - A000625 (n + 2)

end

end A005955.P18146439672397714564

/-! ## A005955.P4884235145582035878

`A245473(A151093(n))`
-/

namespace A005955.P4884235145582035878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A151093 n).toNat

end

end A005955.P4884235145582035878

/-! ## A005955.P15030923019621450903

`A024417(A303882(n+2)/2)`
-/

namespace A005955.P15030923019621450903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (SequenceMachineLib.roundAway ((A303882 (n + 2) : ℚ) / 2)).toNat

end

end A005955.P15030923019621450903

/-!
# A005956: Number of acyclic tertiary alcohols with n carbon atoms.

The programs for A005956, there is no canonical definition to state claims against.
-/

/-! ## A005956.P13726476009779288425

`A000624(n+4)+A000623(n+4)`
-/

namespace A005956.P13726476009779288425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000624 (n + 4) + A000623 (n + 4)

end

end A005956.P13726476009779288425

/-! ## A005956.P1478389955964660657

`A000625(A020705(n))-A005958(A020705(n))`
-/

namespace A005956.P1478389955964660657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 (A020705 n).toNat - A005958 (A020705 n).toNat

end

end A005956.P1478389955964660657

/-!
# A005957: Number of acyclic ketone and aldehyde stereo-isomers with n carbon atoms.

The programs for A005957, there is no canonical definition to state claims against.
-/

/-! ## A005957.P13954901948835432133

`A106432(A098182(n))`
-/

namespace A005957.P13954901948835432133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A098182 n).toNat

end

end A005957.P13954901948835432133

/-! ## A005957.P3598335315810181906

`A324965(A393656(n))`
-/

namespace A005957.P3598335315810181906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A393656 n).toNat

end

end A005957.P3598335315810181906

/-! ## A005957.P13892828329638020942

`A184514(A002024(n!))`
-/

namespace A005957.P13892828329638020942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184514 (A002024 (Nat.factorial n)).toNat

end

end A005957.P13892828329638020942

/-! ## A005957.P4593147068781739022

`A184514(A074712(n!))`
-/

namespace A005957.P4593147068781739022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184514 (A074712 (Nat.factorial n)).toNat

end

end A005957.P4593147068781739022

/-!
# A005958: Number of esters with n carbon atoms up to stereo-isomerism.

The programs for A005958, there is no canonical definition to state claims against.
-/

/-! ## A005958.P13697931494446574154

`A005962(n+1)+A005957(n+2)-A000628(n+1)`
-/

namespace A005958.P13697931494446574154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005962 (n + 1) + (A005957 (n + 2) - A000628 (n + 1))

end

end A005958.P13697931494446574154

/-! ## A005958.P6104290003347551218

`A039708(A367655(n))`
-/

namespace A005958.P6104290003347551218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A367655 n).toNat

end

end A005958.P6104290003347551218

/-! ## A005958.P2725365040447520456

`A323931(n+1)+A003104(n+2)-A323924(n+2)`
-/

namespace A005958.P2725365040447520456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323931 (n + 1) + (A003104 (n + 2) - A323924 (n + 2))

end

end A005958.P2725365040447520456

/-!
# A005959: Number of acyclic ethylene derivatives with n carbon atoms.

The programs for A005959, there is no canonical definition to state claims against.
-/

/-! ## A005959.P14375250261978108505

`A172233(A084214(n)+1)`
-/

namespace A005959.P14375250261978108505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172233 (A084214 n + 1).toNat

end

end A005959.P14375250261978108505

/-! ## A005959.P17428680470539814136

`A170905(A055029(n)+A001835(n))`
-/

namespace A005959.P17428680470539814136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (A055029 n + A001835 n).toNat

end

end A005959.P17428680470539814136

/-! ## A005959.P14594657044962811045

`A184411(A208452(n)+A071635(n))`
-/

namespace A005959.P14594657044962811045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184411 (A208452 n + A071635 n).toNat

end

end A005959.P14594657044962811045

/-!
# A005960: Number of acyclic disubstituted alkanes with n carbon atoms and distinct substituents.

The programs for A005960, there is no canonical definition to state claims against.
-/

/-! ## A005960.P13230429284909966031

`A005627(2*(n+1))`
-/

namespace A005960.P13230429284909966031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 (2 * (n + 1))

end

end A005960.P13230429284909966031

/-! ## A005960.P877665613174404844

`record[A005627(xor(1, n)+1)]`
-/

namespace A005960.P877665613174404844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P877665613174404844

/-! ## A005960.P15848769587772631826

`record[A005627(and(n, n+1))]`
-/

namespace A005960.P15848769587772631826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P15848769587772631826

/-! ## A005960.P9213968402587458060

`record[A005627(abs(xor(n, -2)))]`
-/

namespace A005960.P9213968402587458060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P9213968402587458060

/-! ## A005960.P14476902012721136495

`record[A005627(-xor(n, -2))]`
-/

namespace A005960.P14476902012721136495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P14476902012721136495

/-! ## A005960.P4347621396788698644

`record[A005627(n+3)/gcd(2, n)]`
-/

namespace A005960.P4347621396788698644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005627 (n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P4347621396788698644

/-! ## A005960.P1563343487341439070

`record[A005627(A115273(n))]`
-/

namespace A005960.P1563343487341439070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005627 (A115273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005960.P1563343487341439070

/-! ## A005960.P13666107209438406655

`A000625(2*(n+1))-A005628(2*(n+1))`
-/

namespace A005960.P13666107209438406655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 (2 * (n + 1)) - A005628 (2 * (n + 1))

end

end A005960.P13666107209438406655

/-!
# A005961: Number of acyclic disubstituted alkanes with n carbon atoms and identical substituents.

The programs for A005961, there is no canonical definition to state claims against.
-/

/-! ## A005961.P17838063165064800636

`A005629(2*(n+1))-A261336(n+1)`
-/

namespace A005961.P17838063165064800636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005629 (2 * (n + 1)) - A261336 (n + 1)

end

end A005961.P17838063165064800636

/-! ## A005961.P14442156558206484605

`A005629(A028310(2*(n+1)))-A005628(n+1)/2`
-/

namespace A005961.P14442156558206484605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005629 (A028310 (2 * (n + 1))).toNat : ℚ) - (A005628 (n + 1) : ℚ) / 2

end

end A005961.P14442156558206484605

/-! ## A005961.P4563342188621242110

`(A005960(n+1)+A005627(n+1))/2`
-/

namespace A005961.P4563342188621242110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005960 (n + 1) + A005627 (n + 1) : ℚ) / 2

end

end A005961.P4563342188621242110

/-! ## A005961.P8780313263331415012

`(A005627(2*(n+1))+A005627(n+1))/2`
-/

namespace A005961.P8780313263331415012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005627 (2 * (n + 1)) + A005627 (n + 1) : ℚ) / 2

end

end A005961.P8780313263331415012

/-! ## A005961.P3268152742932227746

`A001281(A005960(n+1)+A005627(n+1))`
-/

namespace A005961.P3268152742932227746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005960 (n + 1) + A005627 (n + 1)).toNat

end

end A005961.P3268152742932227746

/-!
# A005962: Number of carbon trees with n carbon atoms.

The programs for A005962, there is no canonical definition to state claims against.
-/

/-! ## A005962.P10795981364905180313

`A000628(n+1)+A005958(n+2)-A005957(n+2)`
-/

namespace A005962.P10795981364905180313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (n + 1) + (A005958 (n + 2) - A005957 (n + 2))

end

end A005962.P10795981364905180313

/-! ## A005962.P10321011890131440750

`A047435(A002024(n!))`
-/

namespace A005962.P10321011890131440750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (A002024 (Nat.factorial n)).toNat

end

end A005962.P10321011890131440750

/-! ## A005962.P3572485418022126592

`A047435(A074712(n!))`
-/

namespace A005962.P3572485418022126592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (A074712 (Nat.factorial n)).toNat

end

end A005962.P3572485418022126592

/-! ## A005962.P1368728862498377881

`A262689(∏[∑[A230000(n)]])`
-/

namespace A005962.P1368728862498377881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005962.P1368728862498377881

/-!
# A005963: Number of restricted hexagonal polyominoes with n cells.

The programs for A005963, there is no canonical definition to state claims against.
-/

/-! ## A005963.P5801144185475050219

`A000228(n+1)-A002216(n+1)`
-/

namespace A005963.P5801144185475050219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - A002216 (n + 1)

end

end A005963.P5801144185475050219

/-! ## A005963.P6573630982660389739

`A038144(n+1)+A018190(n+1)-A002216(n+1)`
-/

namespace A005963.P6573630982660389739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038144 (n + 1) + A018190 (n + 1) - A002216 (n + 1)

end

end A005963.P6573630982660389739

/-! ## A005963.P7795886149737899734

`A030226(n+1)+A030225(n+1)-A002216(n+1)`
-/

namespace A005963.P7795886149737899734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030226 (n + 1) + A030225 (n + 1) - A002216 (n + 1)

end

end A005963.P7795886149737899734

/-! ## A005963.P518081434652119440

`A070767(n+1)+A070766(n+1)-A002216(n+1)`
-/

namespace A005963.P518081434652119440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070767 (n + 1) + A070766 (n + 1) - A002216 (n + 1)

end

end A005963.P518081434652119440

/-! ## A005963.P9070771797517088793

`A006535(n+1)-A030226(n+1)-A002216(n+1)`
-/

namespace A005963.P9070771797517088793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006535 (n + 1) - A030226 (n + 1) - A002216 (n + 1)

end

end A005963.P9070771797517088793

/-!
# A005964: Number of trivalent connected (or cubic) planar graphs with 2n nodes.

The programs for A005964, there is no canonical definition to state claims against.
-/

/-! ## A005964.P5623389814397606427

`A002851(n+1)-A204186(n+1)`
-/

namespace A005964.P5623389814397606427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 (n + 1) - A204186 (n + 1)

end

end A005964.P5623389814397606427

/-! ## A005964.P16424669258867064257

`record[A275744(n+1)]-A204186(n+1)`
-/

namespace A005964.P16424669258867064257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A204186 (n + 1)

end

end A005964.P16424669258867064257

/-! ## A005964.P14690749011623696786

`A390643(A337567(n))`
-/

namespace A005964.P14690749011623696786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390643 (A337567 n).toNat

end

end A005964.P14690749011623696786

/-!
# A005966: Number of trivalent planar loopless multigraphs with 2n nodes.

The programs for A005966, there is no canonical definition to state claims against.
-/

/-! ## A005966.P14955705509228365108

`A076369(n*a(n-1)+1)+1` with `a(0)=1`
-/

namespace A005966.P14955705509228365108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076369 ((n : ℤ) * a (n - 1) + 1).toNat + 1

end

end A005966.P14955705509228365108

/-! ## A005966.P9338322022233064191

`or(A008621(A166677(n)), A011848(n))`
-/

namespace A005966.P9338322022233064191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A166677 n).toNat) (A011848 n)

end

end A005966.P9338322022233064191

/-! ## A005966.P12200180347685247705

`A000720(A262442(n)+A074143(n+1))`
-/

namespace A005966.P12200180347685247705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A262442 n + A074143 (n + 1)).toNat

end

end A005966.P12200180347685247705

/-!
# A005967: Number of isomorphism classes of connected 3-regular multigraphs of order 2n, loops allowed.

The programs for A005967, there is no canonical definition to state claims against.
-/

/-! ## A005967.P6022192588108680493

`record[A333397(A046691(n+4))]`
-/

namespace A005967.P6022192588108680493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A046691 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005967.P6022192588108680493

/-! ## A005967.P797623575575045586

`A333397(A014105(n+3)-4)`
-/

namespace A005967.P797623575575045586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A014105 (n + 3) - 4).toNat

end

end A005967.P797623575575045586

/-! ## A005967.P9207679447524501147

`A333397(A055998(2*(n+2))-1)`
-/

namespace A005967.P9207679447524501147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A055998 (2 * (n + 2)) - 1).toNat

end

end A005967.P9207679447524501147

/-! ## A005967.P9248584976260615636

`A333397(A055999(2*n+3)+2)`
-/

namespace A005967.P9248584976260615636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A055999 (2 * n + 3) + 2).toNat

end

end A005967.P9248584976260615636

/-! ## A005967.P6555693640510530248

`A333397(A167614(2*n+5)-7)`
-/

namespace A005967.P6555693640510530248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333397 (A167614 (2 * n + 5) - 7).toNat

end

end A005967.P6555693640510530248

/-!
# A005968: Sum of cubes of first n Fibonacci numbers.

The programs for A005968, the canonical program `A005968.P14781786617469582651` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005968 has offset 0).

The definition of A005968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005968.P7558571121071749313

`∑[round(ϕ^n/sqrt(5))^3]`
-/

namespace A005968.P7558571121071749313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005968.P7558571121071749313

namespace A005968

/-- `∑[round(ϕ^n/sqrt(5))^3]` -/
def P7558571121071749313.Spec : Prop :=
  ∀ n, P7558571121071749313.a n = A005968 n

end A005968

/-! ## A005968.P14781786617469582651

`and(∑[A056570(n)], -1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005968

/-- `and(∑[A056570(n)], -1)` -/
def P14781786617469582651.Spec : Prop :=
  ∀ n, P14781786617469582651.a n = A005968 n

theorem P14781786617469582651.correct : P14781786617469582651.Spec := by
  intro n
  simp only [A005968]

end A005968

/-! ## A005968.P10398587412512157565

`∑[A056570(round(acot(n)+n))]-1`
-/

namespace A005968.P10398587412512157565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005968.P10398587412512157565

namespace A005968

/-- `∑[A056570(round(acot(n)+n))]-1` -/
def P10398587412512157565.Spec : Prop :=
  ∀ n, P10398587412512157565.a n = A005968 n

end A005968

/-! ## A005968.P13825427205444402633

`∑[A056570(round(sqrt(n²+1)))]-1`
-/

namespace A005968.P13825427205444402633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005968.P13825427205444402633

namespace A005968

/-- `∑[A056570(round(sqrt(n²+1)))]-1` -/
def P13825427205444402633.Spec : Prop :=
  ∀ n, P13825427205444402633.a n = A005968 n

end A005968

/-! ## A005968.P17501686482421689903

`∑[A056570(n)]%A110224(n)`
-/

namespace A005968.P17501686482421689903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A110224 n)

end

end A005968.P17501686482421689903

namespace A005968

/-- `∑[A056570(n)]%A110224(n)` -/
def P17501686482421689903.Spec : Prop :=
  ∀ n, P17501686482421689903.a n = A005968 n

end A005968

/-! ## A005968.P12090242043067145324

`∑[A056570(n)]*A019426(2*n)`
-/

namespace A005968.P12090242043067145324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A019426 (2 * n)

end

end A005968.P12090242043067145324

namespace A005968

/-- `∑[A056570(n)]*A019426(2*n)` -/
def P12090242043067145324.Spec : Prop :=
  ∀ n, P12090242043067145324.a n = A005968 n

end A005968

/-! ## A005968.P6825654260597725782

`abs(∑[(A245306(n)-1)*A000045(n)])`
-/

namespace A005968.P6825654260597725782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245306 n - 1) * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005968.P6825654260597725782

namespace A005968

/-- `abs(∑[(A245306(n)-1)*A000045(n)])` -/
def P6825654260597725782.Spec : Prop :=
  ∀ n, P6825654260597725782.a n = A005968 n

end A005968

/-! ## A005968.P17283210151572835928

`A292278(n+1)-A110224(n)`
-/

namespace A005968.P17283210151572835928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) - A110224 n

end

end A005968.P17283210151572835928

namespace A005968

/-- `A292278(n+1)-A110224(n)` -/
def P17283210151572835928.Spec : Prop :=
  ∀ n, P17283210151572835928.a n = A005968 n

end A005968

/-! ## A005968.P5872121511418050734

`A001655(n)-(A215038(n)+A056570(n+1))`
-/

namespace A005968.P5872121511418050734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n - (A215038 n + A056570 (n + 1))

end

end A005968.P5872121511418050734

namespace A005968

/-- `A001655(n)-(A215038(n)+A056570(n+1))` -/
def P5872121511418050734.Spec : Prop :=
  ∀ n, P5872121511418050734.a n = A005968 n

end A005968

/-! ## A005968.P1017108239732391157

`A292278(n+1)-(A056570(n+1)+A056570(n))`
-/

namespace A005968.P1017108239732391157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) - (A056570 (n + 1) + A056570 n)

end

end A005968.P1017108239732391157

namespace A005968

/-- `A292278(n+1)-(A056570(n+1)+A056570(n))` -/
def P1017108239732391157.Spec : Prop :=
  ∀ n, P1017108239732391157.a n = A005968 n

end A005968

/-!
# A005969: Sum of fourth powers of Fibonacci numbers.

The programs for A005969, the canonical program `A005969.P9290357630931119181` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005969 has offset 1).

The definition of A005969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005969.P9290357630931119181

`∑[∑[a(n-1)+a(n-2)]^4]` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005969

/-- `∑[∑[a(n-1)+a(n-2)]^4]` -/
def P9290357630931119181.Spec : Prop :=
  ∀ n, (P9290357630931119181.a n : ℤ) = A005969 (n + 1)

theorem P9290357630931119181.correct : P9290357630931119181.Spec := by
  intro n
  simp only [A005969, Nat.add_sub_cancel]

end A005969

/-! ## A005969.P10496282183882927043

`∑[∑[a(n-1)+a(n-2)]²²]` with `a(0)=1, a(1)=0`
-/

namespace A005969.P10496282183882927043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P10496282183882927043

namespace A005969

/-- `∑[∑[a(n-1)+a(n-2)]²²]` -/
def P10496282183882927043.Spec : Prop :=
  ∀ n, (P10496282183882927043.a n : ℤ) = A005969 (n + 1)

theorem P10496282183882927043.correct : P10496282183882927043.Spec := by
  intro n
  simp only [A005969, Nat.add_sub_cancel, A005969.P10496282183882927043.f2, A005969.P10496282183882927043.f1, A005969.P10496282183882927043.a, A005969.P9290357630931119181.f2, A005969.P9290357630931119181.f1, A005969.P9290357630931119181.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005969

/-! ## A005969.P16284062690975068885

`∑[∑[floor(a(n-2)-a(n-1))]²²]` with `a(0)=1, a(1)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A005969.P16284062690975068885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P16284062690975068885

namespace A005969

/-- `∑[∑[floor(a(n-2)-a(n-1))]²²]` -/
def P16284062690975068885.Spec : Prop :=
  ∀ n, P16284062690975068885.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P16029548483284432243

`∑[A056571(n+1)]`
-/

namespace A005969.P16029548483284432243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P16029548483284432243

namespace A005969

/-- `∑[A056571(n+1)]` -/
def P16029548483284432243.Spec : Prop :=
  ∀ n, P16029548483284432243.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P9777097760475197867

`∑[abs(Δ[A119285(n)])]`
-/

namespace A005969.P9777097760475197867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P9777097760475197867

namespace A005969

/-- `∑[abs(Δ[A119285(n)])]` -/
def P9777097760475197867.Spec : Prop :=
  ∀ n, P9777097760475197867.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P8629049804529291667

`∑[∑[A099496(n)]²]`
-/

namespace A005969.P8629049804529291667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P8629049804529291667

namespace A005969

/-- `∑[∑[A099496(n)]²]` -/
def P8629049804529291667.Spec : Prop :=
  ∀ n, P8629049804529291667.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P13214442361928903948

`∑[Δ[A001654(n)]²]`
-/

namespace A005969.P13214442361928903948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P13214442361928903948

namespace A005969

/-- `∑[Δ[A001654(n)]²]` -/
def P13214442361928903948.Spec : Prop :=
  ∀ n, P13214442361928903948.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P15002358479648008094

`∑[A007598(n+1)²]`
-/

namespace A005969.P15002358479648008094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P15002358479648008094

namespace A005969

/-- `∑[A007598(n+1)²]` -/
def P15002358479648008094.Spec : Prop :=
  ∀ n, P15002358479648008094.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P9574213839771091604

`∑[A006498(2*n)²]`
-/

namespace A005969.P9574213839771091604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P9574213839771091604

namespace A005969

/-- `∑[A006498(2*n)²]` -/
def P9574213839771091604.Spec : Prop :=
  ∀ n, P9574213839771091604.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P14691710155758171106

`∑[A016095(∑[n])²²]`
-/

namespace A005969.P14691710155758171106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016095 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P14691710155758171106

namespace A005969

/-- `∑[A016095(∑[n])²²]` -/
def P14691710155758171106.Spec : Prop :=
  ∀ n, P14691710155758171106.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P14264292033089940170

`∑[A036355(∑[n])²²]`
-/

namespace A005969.P14264292033089940170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036355 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P14264292033089940170

namespace A005969

/-- `∑[A036355(∑[n])²²]` -/
def P14264292033089940170.Spec : Prop :=
  ∀ n, P14264292033089940170.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P1119780698908746898

`∑[A037027(∑[n])²²]`
-/

namespace A005969.P1119780698908746898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037027 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P1119780698908746898

namespace A005969

/-- `∑[A037027(∑[n])²²]` -/
def P1119780698908746898.Spec : Prop :=
  ∀ n, P1119780698908746898.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P1678560172899403756

`∑[∑[A212804(n)]²²]`
-/

namespace A005969.P1678560172899403756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P1678560172899403756

namespace A005969

/-- `∑[∑[A212804(n)]²²]` -/
def P1678560172899403756.Spec : Prop :=
  ∀ n, P1678560172899403756.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P17554916965610045172

`∑[Δ[A119282(n)]²²]`
-/

namespace A005969.P17554916965610045172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P17554916965610045172

namespace A005969

/-- `∑[Δ[A119282(n)]²²]` -/
def P17554916965610045172.Spec : Prop :=
  ∀ n, P17554916965610045172.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P14605863975208566687

`∑[A000045(n+1)^4]`
-/

namespace A005969.P14605863975208566687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P14605863975208566687

namespace A005969

/-- `∑[A000045(n+1)^4]` -/
def P14605863975208566687.Spec : Prop :=
  ∀ n, P14605863975208566687.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P11030915454573870866

`∑[A236191(n+1)^4]`
-/

namespace A005969.P11030915454573870866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236191 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P11030915454573870866

namespace A005969

/-- `∑[A236191(n+1)^4]` -/
def P11030915454573870866.Spec : Prop :=
  ∀ n, P11030915454573870866.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P11072932018467219849

`∑[A333378(n+1)^4]`
-/

namespace A005969.P11072932018467219849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P11072932018467219849

namespace A005969

/-- `∑[A333378(n+1)^4]` -/
def P11072932018467219849.Spec : Prop :=
  ∀ n, P11072932018467219849.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P4516175559255529542

`∑[A324969(n+2)²²]`
-/

namespace A005969.P4516175559255529542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324969 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P4516175559255529542

namespace A005969

/-- `∑[A324969(n+2)²²]` -/
def P4516175559255529542.Spec : Prop :=
  ∀ n, P4516175559255529542.a n = A005969 (n + 1)

end A005969

/-! ## A005969.P18356972575596103040

`∑[A079977(2*n)²²]`
-/

namespace A005969.P18356972575596103040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079977 (2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005969.P18356972575596103040

namespace A005969

/-- `∑[A079977(2*n)²²]` -/
def P18356972575596103040.Spec : Prop :=
  ∀ n, P18356972575596103040.a n = A005969 (n + 1)

end A005969

/-!
# A005970: Partial sums of squares of Lucas numbers.

The programs for A005970, the canonical program `A005970.P16554638422591792955` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005970 has offset 1).

The definition of A005970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005970.P16554638422591792955

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=10, a(2)=26, a(3)=75`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005970

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P16554638422591792955.Spec : Prop :=
  ∀ n, P16554638422591792955.a n = A005970 (n + 1)

theorem P16554638422591792955.correct : P16554638422591792955.Spec := by
  intro n
  simp only [A005970, Nat.add_sub_cancel]

end A005970

/-! ## A005970.P14021789283398618822

`A215602(n+1)-2`
-/

namespace A005970.P14021789283398618822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 (n + 1) - 2

end

end A005970.P14021789283398618822

namespace A005970

/-- `A215602(n+1)-2` -/
def P14021789283398618822.Spec : Prop :=
  ∀ n, P14021789283398618822.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P2517495484543692538

`∑[ceil((-ϕ)^(n+1))²]`
-/

namespace A005970.P2517495484543692538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-Real.goldenRatio) ^ (n + 1)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005970.P2517495484543692538

namespace A005970

/-- `∑[ceil((-ϕ)^(n+1))²]` -/
def P2517495484543692538.Spec : Prop :=
  ∀ n, P2517495484543692538.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P4642341228395786126

`a(n-1)+round(ϕ^(n+1))²` with `a(0)=1`
-/

namespace A005970.P4642341228395786126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1)) ^ 2

end

end A005970.P4642341228395786126

namespace A005970

/-- `a(n-1)+round(ϕ^(n+1))²` -/
def P4642341228395786126.Spec : Prop :=
  ∀ n, P4642341228395786126.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P3738125930457229758

`Δ[A215580(n)]-2`
-/

namespace A005970.P3738125930457229758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A005970.P3738125930457229758

namespace A005970

/-- `Δ[A215580(n)]-2` -/
def P3738125930457229758.Spec : Prop :=
  ∀ n, P3738125930457229758.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P12512062556741486911

`A216243(n+1)-4`
-/

namespace A005970.P12512062556741486911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216243 (n + 1) - 4

end

end A005970.P12512062556741486911

namespace A005970

/-- `A216243(n+1)-4` -/
def P12512062556741486911.Spec : Prop :=
  ∀ n, P12512062556741486911.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P515092197884419865

`A006499(Δ[n²])-2`
-/

namespace A005970.P515092197884419865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A005970.P515092197884419865

namespace A005970

/-- `A006499(Δ[n²])-2` -/
def P515092197884419865.Spec : Prop :=
  ∀ n, P515092197884419865.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P10480660071651123276

`∑[record[A000032(n)²]]-3`
-/

namespace A005970.P10480660071651123276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A005970.P10480660071651123276

namespace A005970

/-- `∑[record[A000032(n)²]]-3` -/
def P10480660071651123276.Spec : Prop :=
  ∀ n, P10480660071651123276.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P8306954404004601692

`∑[A080023(n+1)²]-3`
-/

namespace A005970.P8306954404004601692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A005970.P8306954404004601692

namespace A005970

/-- `∑[A080023(n+1)²]-3` -/
def P8306954404004601692.Spec : Prop :=
  ∀ n, P8306954404004601692.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P15369917252217580629

`∑[A169985(n+1)²]-3`
-/

namespace A005970.P15369917252217580629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A005970.P15369917252217580629

namespace A005970

/-- `∑[A169985(n+1)²]-3` -/
def P15369917252217580629.Spec : Prop :=
  ∀ n, P15369917252217580629.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P7480063213611977076

`A001254(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A005970.P7480063213611977076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001254 (n + 1) + a (n - 1)

end

end A005970.P7480063213611977076

namespace A005970

/-- `A001254(n+1)+a(n-1)` -/
def P7480063213611977076.Spec : Prop :=
  ∀ n, P7480063213611977076.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P16407140705548924792

`A192750(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A005970.P16407140705548924792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192750 (2 * n) - a (n - 1)

end

end A005970.P16407140705548924792

namespace A005970

/-- `A192750(2*n)-a(n-1)` -/
def P16407140705548924792.Spec : Prop :=
  ∀ n, P16407140705548924792.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P14779872558379832046

`A027004(n)+A010673(n)`
-/

namespace A005970.P14779872558379832046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027004 n + A010673 n

end

end A005970.P14779872558379832046

namespace A005970

/-- `A027004(n)+A010673(n)` -/
def P14779872558379832046.Spec : Prop :=
  ∀ n, P14779872558379832046.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P17698836951496538954

`A110035(n)+A080144(n)`
-/

namespace A005970.P17698836951496538954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n + A080144 n

end

end A005970.P17698836951496538954

namespace A005970

/-- `A110035(n)+A080144(n)` -/
def P17698836951496538954.Spec : Prop :=
  ∀ n, P17698836951496538954.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P10768907556566522831

`A002878(n+1)-A176040(n)`
-/

namespace A005970.P10768907556566522831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - A176040 n

end

end A005970.P10768907556566522831

namespace A005970

/-- `A002878(n+1)-A176040(n)` -/
def P10768907556566522831.Spec : Prop :=
  ∀ n, P10768907556566522831.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P13041448073998993512

`A075193(n)²-(2-A215602(n))`
-/

namespace A005970.P13041448073998993512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n ^ 2 - (2 - A215602 n)

end

end A005970.P13041448073998993512

namespace A005970

/-- `A075193(n)²-(2-A215602(n))` -/
def P13041448073998993512.Spec : Prop :=
  ∀ n, P13041448073998993512.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P15581449688274223653

`A004146(n+2)-A110391(n+1)`
-/

namespace A005970.P15581449688274223653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 2) - A110391 (n + 1)

end

end A005970.P15581449688274223653

namespace A005970

/-- `A004146(n+2)-A110391(n+1)` -/
def P15581449688274223653.Spec : Prop :=
  ∀ n, P15581449688274223653.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P11478557084272798084

`A338225(n+1)+A236428(n)-2`
-/

namespace A005970.P11478557084272798084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338225 (n + 1) + (A236428 n - 2)

end

end A005970.P11478557084272798084

namespace A005970

/-- `A338225(n+1)+A236428(n)-2` -/
def P11478557084272798084.Spec : Prop :=
  ∀ n, P11478557084272798084.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P15476369877973551439

`A000032(n+1)*A000032(n+2)-2`
-/

namespace A005970.P15476369877973551439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A000032 (n + 2) - 2

end

end A005970.P15476369877973551439

namespace A005970

/-- `A000032(n+1)*A000032(n+2)-2` -/
def P15476369877973551439.Spec : Prop :=
  ∀ n, P15476369877973551439.a n = A005970 (n + 1)

end A005970

/-! ## A005970.P6647198182993217738

`lcm(A000032(n+1), A075193(n+1))-2`
-/

namespace A005970.P6647198182993217738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000032 (n + 1)) (A075193 (n + 1)) : ℤ) - 2

end

end A005970.P6647198182993217738

namespace A005970

/-- `lcm(A000032(n+1), A075193(n+1))-2` -/
def P6647198182993217738.Spec : Prop :=
  ∀ n, P6647198182993217738.a n = A005970 (n + 1)

end A005970

/-!
# A005971: Partial sums of cubes of Lucas numbers.

The programs for A005971, the canonical program `A005971.P9083751540979319941` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005971 has offset 1).

The definition of A005971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005971.P9083751540979319941

`A000032(3*(n+1)+2)/2+3*(-1)^(n+1)*A000032(n)+3/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005971

/-- `A000032(3*(n+1)+2)/2+3*(-1)^(n+1)*A000032(n)+3/2` -/
def P9083751540979319941.Spec : Prop :=
  ∀ n, P9083751540979319941.a n = (A005971 (n + 1) : ℚ)

end A005971

/-! ## A005971.P10567988332575995864

`∑[round(ϕ^((n+1)%(n+1)²))^3]`
-/

namespace A005971.P10567988332575995864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P10567988332575995864

namespace A005971

/-- `∑[round(ϕ^((n+1)%(n+1)²))^3]` -/
def P10567988332575995864.Spec : Prop :=
  ∀ n, P10567988332575995864.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P14957497057894086831

`∑[record[round(ϕ^((2*n)%(n+2)))]^3]`
-/

namespace A005971.P14957497057894086831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n % (n + 2)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P14957497057894086831

namespace A005971

/-- `∑[record[round(ϕ^((2*n)%(n+2)))]^3]` -/
def P14957497057894086831.Spec : Prop :=
  ∀ n, P14957497057894086831.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P8482731457902851704

`∑[round((ϕ-C(2, n+2))^(n+1))^3]`
-/

namespace A005971.P8482731457902851704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio - (Nat.choose 2 (n + 2) : ℝ)) ^ (n + 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P8482731457902851704

namespace A005971

/-- `∑[round((ϕ-C(2, n+2))^(n+1))^3]` -/
def P8482731457902851704.Spec : Prop :=
  ∀ n, P8482731457902851704.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P1220125506320686393

`∑[∑[a(n-1)+a(n-2)]^3]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A005971.P1220125506320686393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P1220125506320686393

namespace A005971

/-- `∑[∑[a(n-1)+a(n-2)]^3]` -/
def P1220125506320686393.Spec : Prop :=
  ∀ n, (P1220125506320686393.a n : ℤ) = A005971 (n + 1)

end A005971

/-! ## A005971.P8697014425679609025

`∑[A075155(n+1)]`
-/

namespace A005971.P8697014425679609025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P8697014425679609025

namespace A005971

/-- `∑[A075155(n+1)]` -/
def P8697014425679609025.Spec : Prop :=
  ∀ n, P8697014425679609025.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P13842262623499948685

`∑[abs(A075151(n+1))]`
-/

namespace A005971.P13842262623499948685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075151 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P13842262623499948685

namespace A005971

/-- `∑[abs(A075151(n+1))]` -/
def P13842262623499948685.Spec : Prop :=
  ∀ n, P13842262623499948685.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P12511996306925857983

`∑[A232965(3*(n+1))]`
-/

namespace A005971.P12511996306925857983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232965 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P12511996306925857983

namespace A005971

/-- `∑[A232965(3*(n+1))]` -/
def P12511996306925857983.Spec : Prop :=
  ∀ n, P12511996306925857983.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P1545506168565882049

`∑[A000032(n+1)^3]`
-/

namespace A005971.P1545506168565882049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P1545506168565882049

namespace A005971

/-- `∑[A000032(n+1)^3]` -/
def P1545506168565882049.Spec : Prop :=
  ∀ n, P1545506168565882049.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P17075441180195988445

`∑[A000204(n+1)^3]`
-/

namespace A005971.P17075441180195988445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P17075441180195988445

namespace A005971

/-- `∑[A000204(n+1)^3]` -/
def P17075441180195988445.Spec : Prop :=
  ∀ n, P17075441180195988445.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P6522168283504503618

`∑[(A001610(n)+1)^3]`
-/

namespace A005971.P6522168283504503618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P6522168283504503618

namespace A005971

/-- `∑[(A001610(n)+1)^3]` -/
def P6522168283504503618.Spec : Prop :=
  ∀ n, P6522168283504503618.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P8411324708466127032

`∑[A329723(n+3)^3]`
-/

namespace A005971.P8411324708466127032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P8411324708466127032

namespace A005971

/-- `∑[A329723(n+3)^3]` -/
def P8411324708466127032.Spec : Prop :=
  ∀ n, P8411324708466127032.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P9822098581011481834

`∑[A090244(2*n)^3]`
-/

namespace A005971.P9822098581011481834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P9822098581011481834

namespace A005971

/-- `∑[A090244(2*n)^3]` -/
def P9822098581011481834.Spec : Prop :=
  ∀ n, P9822098581011481834.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P7560027270157115079

`∑[∑[A000032(abs(1-n))]^3]`
-/

namespace A005971.P7560027270157115079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P7560027270157115079

namespace A005971

/-- `∑[∑[A000032(abs(1-n))]^3]` -/
def P7560027270157115079.Spec : Prop :=
  ∀ n, P7560027270157115079.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P9929341294818092670

`record[A000032(n)^3]+a(n-1)` with `a(0)=1`
-/

namespace A005971.P9929341294818092670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A005971.P9929341294818092670

namespace A005971

/-- `record[A000032(n)^3]+a(n-1)` -/
def P9929341294818092670.Spec : Prop :=
  ∀ n, P9929341294818092670.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P15857942869950008770

`∑[abs(A075193(n))*A075193(n)²]`
-/

namespace A005971.P15857942869950008770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 n| * A075193 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P15857942869950008770

namespace A005971

/-- `∑[abs(A075193(n))*A075193(n)²]` -/
def P15857942869950008770.Spec : Prop :=
  ∀ n, P15857942869950008770.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P9183774711908079142

`∑[(A000045(n+2)+A000045(n))^3]`
-/

namespace A005971.P9183774711908079142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) + A000045 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P9183774711908079142

namespace A005971

/-- `∑[(A000045(n+2)+A000045(n))^3]` -/
def P9183774711908079142.Spec : Prop :=
  ∀ n, P9183774711908079142.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P6612686583026136319

`∑[sqrt(A001254(n+1))*A001254(n+1)]`
-/

namespace A005971.P6612686583026136319
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001254 (n + 1) : ℝ) * (A001254 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P6612686583026136319

namespace A005971

/-- `∑[sqrt(A001254(n+1))*A001254(n+1)]` -/
def P6612686583026136319.Spec : Prop :=
  ∀ n, P6612686583026136319.a n = (A005971 (n + 1) : ℝ)

end A005971

/-! ## A005971.P8305071900992865582

`∑[A082587(2*n+1)²*A082587(2*n+1)]`
-/

namespace A005971.P8305071900992865582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n + 1) ^ 2 * A082587 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P8305071900992865582

namespace A005971

/-- `∑[A082587(2*n+1)²*A082587(2*n+1)]` -/
def P8305071900992865582.Spec : Prop :=
  ∀ n, P8305071900992865582.a n = A005971 (n + 1)

end A005971

/-! ## A005971.P4607444244283172451

`∑[A115339(2*(n+1))²*A115339(2*(n+1))]`
-/

namespace A005971.P4607444244283172451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * (n + 1)) ^ 2 * A115339 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005971.P4607444244283172451

namespace A005971

/-- `∑[A115339(2*(n+1))²*A115339(2*(n+1))]` -/
def P4607444244283172451.Spec : Prop :=
  ∀ n, P4607444244283172451.a n = A005971 (n + 1)

end A005971

/-!
# A005972: Partial sums of fourth powers of Lucas numbers.

The programs for A005972, the canonical program `A005972.P15898933163936439843` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005972 has offset 1).

The definition of A005972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005972.P15898933163936439843

`A000045(4*(n+1)+2)+4*(-1)^(n+1)*(A000045(n+1)²+A000045(n+2)²)+6*(n+1)-5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005972

/-- `A000045(4*(n+1)+2)+4*(-1)^(n+1)*(A000045(n+1)²+A000045(n+2)²)+6*(n+1)-5` -/
def P15898933163936439843.Spec : Prop :=
  ∀ n, P15898933163936439843.a n = A005972 (n + 1)

theorem P15898933163936439843.correct : P15898933163936439843.Spec := by
  intro n
  simp only [A005972, Nat.add_sub_cancel]

end A005972

/-! ## A005972.P13468006797085626068

`∑[ceil((-ϕ)^(n+1))^4]`
-/

namespace A005972.P13468006797085626068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-Real.goldenRatio) ^ (n + 1)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005972.P13468006797085626068

namespace A005972

/-- `∑[ceil((-ϕ)^(n+1))^4]` -/
def P13468006797085626068.Spec : Prop :=
  ∀ n, P13468006797085626068.a n = A005972 (n + 1)

end A005972

/-! ## A005972.P14911522063946574709

`A099923(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A005972.P14911522063946574709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099923 (n + 1) + a (n - 1)

end

end A005972.P14911522063946574709

namespace A005972

/-- `A099923(n+1)+a(n-1)` -/
def P14911522063946574709.Spec : Prop :=
  ∀ n, P14911522063946574709.a n = A005972 (n + 1)

end A005972

/-! ## A005972.P2658791579460092620

`a(n-1)+A000204(n+1)^4` with `a(0)=1`
-/

namespace A005972.P2658791579460092620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000204 (n + 1) ^ 4

end

end A005972.P2658791579460092620

namespace A005972

/-- `a(n-1)+A000204(n+1)^4` -/
def P2658791579460092620.Spec : Prop :=
  ∀ n, P2658791579460092620.a n = A005972 (n + 1)

end A005972

/-! ## A005972.P8807456054239243391

`a(n-1)+A000032(2*n+1-n)²²` with `a(0)=1`
-/

namespace A005972.P8807456054239243391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000032 (2 * n + 1 - n) ^ 2) ^ 2

end

end A005972.P8807456054239243391

namespace A005972

/-- `a(n-1)+A000032(2*n+1-n)²²` -/
def P8807456054239243391.Spec : Prop :=
  ∀ n, P8807456054239243391.a n = A005972 (n + 1)

end A005972

/-! ## A005972.P17714205470884583191

`or(∑[A099923(n+1)], A000007(n))`
-/

namespace A005972.P17714205470884583191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A005972.P17714205470884583191

namespace A005972

/-- `or(∑[A099923(n+1)], A000007(n))` -/
def P17714205470884583191.Spec : Prop :=
  ∀ n, P17714205470884583191.a n = A005972 (n + 1)

end A005972

/-!
# A005973: Number of connected labeled interval graphs with n nodes.

The programs for A005973, there is no canonical definition to state claims against.
-/

/-! ## A005973.P6247237812765326791

`∑[A007947(A143637(n))]-A189804(n+1)`
-/

namespace A005973.P6247237812765326791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A143637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189804 (n + 1)

end

end A005973.P6247237812765326791

/-!
# A005974: Number of unlabeled connected identity interval graphs with n nodes.

The programs for A005974, there is no canonical definition to state claims against.
-/

/-! ## A005974.P6386579654766865404

`A054899(15*A020069(n))`
-/

namespace A005974.P6386579654766865404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (15 * A020069 n).toNat

end

end A005974.P6386579654766865404

/-! ## A005974.P17364219455111820838

`A020081(n)-A160382(A286076(n))`
-/

namespace A005974.P17364219455111820838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020081 n - A160382 (A286076 n).toNat

end

end A005974.P17364219455111820838

/-! ## A005974.P9630936809181355868

`A008651(A333883(2*n))+A008651(n)`
-/

namespace A005974.P9630936809181355868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A333883 (2 * n)).toNat + A008651 n

end

end A005974.P9630936809181355868

/-! ## A005974.P11540896620159776740

`A008651(A333883(2*n)-A008651(n))`
-/

namespace A005974.P11540896620159776740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A333883 (2 * n) - A008651 n).toNat

end

end A005974.P11540896620159776740

/-!
# A005975: Number of interval graphs on n unlabeled nodes.

The programs for A005975, there is no canonical definition to state claims against.
-/

/-! ## A005975.P2371812610001073805

`∑[A243283(∏[A017984(n)])]`
-/

namespace A005975.P2371812610001073805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005975.P2371812610001073805

/-! ## A005975.P5027223645156345057

`∑[A048865(A367061(n))+1]`
-/

namespace A005975.P5027223645156345057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A367061 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005975.P5027223645156345057

/-! ## A005975.P9832635602604337628

`A054899(A052849(n))+A026898(n)`
-/

namespace A005975.P9832635602604337628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A052849 n).toNat + A026898 n

end

end A005975.P9832635602604337628

/-!
# A005976: Number of unlabeled connected interval graphs with n nodes.

The programs for A005976, there is no canonical definition to state claims against.
-/

/-! ## A005976.P2886931363960161680

`A008616(2*(a(n-2)+(4*n-2)*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A005976.P2886931363960161680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008616 (2 * (a (n - 2) + ((4 * n : ℤ) - 2) * a (n - 1))).toNat

end

end A005976.P2886931363960161680

/-! ## A005976.P12833115060771744269

`A211964(A182904(n))`
-/

namespace A005976.P12833115060771744269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A182904 n).toNat

end

end A005976.P12833115060771744269

/-! ## A005976.P7251896160372155706

`A055679(A310789(n!))`
-/

namespace A005976.P7251896160372155706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A310789 (Nat.factorial n)).toNat

end

end A005976.P7251896160372155706

/-!
# A005977: Reduced interval graphs with n nodes.

The programs for A005977, there is no canonical definition to state claims against.
-/

/-! ## A005977.P10722882456447445486

`A353848(A000102(n))`
-/

namespace A005977.P10722882456447445486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A000102 n).toNat

end

end A005977.P10722882456447445486

/-! ## A005977.P12190535357304371536

`∑[round(A002322(A001868(n))/12)]`
-/

namespace A005977.P12190535357304371536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002322 (A001868 n).toNat : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005977.P12190535357304371536

/-! ## A005977.P4224175623774201564

`A008647(A138550(n)+A062745(n))`
-/

namespace A005977.P4224175623774201564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A138550 n + A062745 n).toNat

end

end A005977.P4224175623774201564

/-! ## A005977.P9975118527152242619

`A054899(A320813(n)+A000719(n))`
-/

namespace A005977.P9975118527152242619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A320813 n + A000719 n).toNat

end

end A005977.P9975118527152242619

/-! ## A005977.P17136228542350249903

`A342696(A271271(n)+A000096(n))`
-/

namespace A005977.P17136228542350249903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A271271 n + A000096 n).toNat

end

end A005977.P17136228542350249903

/-!
# A005979: Number of Hamiltonian rooted triangulations with n internal nodes and 5 external nodes.

The programs for A005979, there is no canonical definition to state claims against.
-/

/-! ## A005979.P17242987452421158592

`A391153(∑[n+3])`
-/

namespace A005979.P17242987452421158592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005979.P17242987452421158592

/-!
# A005981: Number of 2 up, 2 down, 2 up, ... permutations of length 2n + 1.

The programs for A005981, there is no canonical definition to state claims against.
-/

/-! ## A005981.P6785289302755073950

`A058258(Δ[n²])`
-/

namespace A005981.P6785289302755073950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005981.P6785289302755073950

/-! ## A005981.P13170697845030508563

`A058257(A008619(n)*A016825(n))`
-/

namespace A005981.P13170697845030508563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058257 (A008619 n * A016825 n).toNat

end

end A005981.P13170697845030508563

/-! ## A005981.P16321164418761486380

`A131455(n+1)/(n+1)`
-/

namespace A005981.P16321164418761486380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131455 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A005981.P16321164418761486380

/-! ## A005981.P15697520769704507170

`A229892(A033816(n)%∏[n+3])`
-/

namespace A005981.P15697520769704507170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (A033816 n) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A005981.P15697520769704507170

/-! ## A005981.P4538845551362012374

`A229892(A033816(A000007(n)+n))`
-/

namespace A005981.P4538845551362012374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A033816 (A000007 n + (n : ℤ)).toNat).toNat

end

end A005981.P4538845551362012374

/-!
# A005982: 3 up, 3 down, 3 up, ... permutations of length 3n+1.

The programs for A005982, there is no canonical definition to state claims against.
-/

/-! ## A005982.P4663543111963697282

`A229884(3*n+4)`
-/

namespace A005982.P4663543111963697282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229884 (3 * n + 4)

end

end A005982.P4663543111963697282

/-! ## A005982.P5189147203339961543

`record[A229884(Δ[A128223(n)])]`
-/

namespace A005982.P5189147203339961543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229884 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005982.P5189147203339961543

/-! ## A005982.P13668814623027646605

`record[A229884(and(n, A049347(n)))]`
-/

namespace A005982.P13668814623027646605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229884 (Int.land (n : ℤ) (A049347 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005982.P13668814623027646605

/-! ## A005982.P9895006524559424012

`record[A229884(n+1)^A049347(n)]`
-/

namespace A005982.P9895006524559424012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229884 (n + 1) : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005982.P9895006524559424012

/-! ## A005982.P16783985318706707731

`A229892(A167614(3*(n+1)))`
-/

namespace A005982.P16783985318706707731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A167614 (3 * (n + 1))).toNat

end

end A005982.P16783985318706707731

/-!
# A005983: Number of 4 up, 4 down, 4 up, ... permutations of length 4n+1.

The programs for A005983, there is no canonical definition to state claims against.
-/

/-! ## A005983.P15367866883858581305

`A229885(4*n+1)`
-/

namespace A005983.P15367866883858581305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229885 (4 * n + 1)

end

end A005983.P15367866883858581305

/-! ## A005983.P18000436820758834029

`xor(1, xor(1, A229885(A016813(n))))`
-/

namespace A005983.P18000436820758834029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A229885 (A016813 n).toNat))

end

end A005983.P18000436820758834029

/-! ## A005983.P3763464559952369271

`A229885(A016813(n))/A000108(C(2, n+2))`
-/

namespace A005983.P3763464559952369271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229885 (A016813 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A005983.P3763464559952369271

/-! ## A005983.P7886030196761576286

`a(A008683(n)²)*A229885(A016813(n))` with `a(0)=1, a(1)=1`
-/

namespace A005983.P7886030196761576286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A008683 n ^ 2).toNat * A229885 (A016813 n).toNat

end

end A005983.P7886030196761576286

/-! ## A005983.P14425132810205121648

`A229885(A016813(n))/A000041(((-1)^n)²)`
-/

namespace A005983.P14425132810205121648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229885 (A016813 n).toNat : ℚ) / (A000041 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A005983.P14425132810205121648

/-!
# A005984: Related to recurrences over rings.

The programs for A005984, there is no canonical definition to state claims against.
-/

/-! ## A005984.P12339188813728329806

`A212645(∑[A026150(n)]+1)`
-/

namespace A005984.P12339188813728329806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212645 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A005984.P12339188813728329806

/-! ## A005984.P10971366710923336965

`lt[A061357(A343237(2*n)), A317023(n+2)]`
-/

namespace A005984.P10971366710923336965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A343237 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005984.P10971366710923336965

/-!
# A005985: Length of longest trail (i.e., path with all distinct edges) on the edges of an n-cube.

The programs for A005985, the canonical program `A005985.P1907091864974252131` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005985 has offset 0).

The definition of A005985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005985.P1907091864974252131

`(2*n*2^n-(1-(-1)^n)*(2^n-2))/4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005985

/-- `(2*n*2^n-(1-(-1)^n)*(2^n-2))/4` -/
def P1907091864974252131.Spec : Prop :=
  ∀ n, P1907091864974252131.a n = (A005985 n : ℚ)

end A005985

/-! ## A005985.P13381278412532406429

`and(1, n)+2^n*A004526(n)`
-/

namespace A005985.P13381278412532406429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (2 ^ n : ℤ) * A004526 n

end

end A005985.P13381278412532406429

namespace A005985

/-- `and(1, n)+2^n*A004526(n)` -/
def P13381278412532406429.Spec : Prop :=
  ∀ n, P13381278412532406429.a n = A005985 n

end A005985

/-! ## A005985.P13308557271539180188

`char[2*n+1]+2^n*A002265(2*n)`
-/

namespace A005985.P13308557271539180188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (2 ^ n : ℤ) * A002265 (2 * n)

end

end A005985.P13308557271539180188

namespace A005985

/-- `char[2*n+1]+2^n*A002265(2*n)` -/
def P13308557271539180188.Spec : Prop :=
  ∀ n, P13308557271539180188.a n = A005985 n

end A005985

/-! ## A005985.P10714332210293968485

`A134353(n)-A051049(n)`
-/

namespace A005985.P10714332210293968485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134353 n - A051049 n

end

end A005985.P10714332210293968485

namespace A005985

/-- `A134353(n)-A051049(n)` -/
def P10714332210293968485.Spec : Prop :=
  ∀ n, P10714332210293968485.a n = A005985 n

end A005985

/-! ## A005985.P10271846036474610053

`A001792(n)-A277867(n)`
-/

namespace A005985.P10271846036474610053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A277867 n

end

end A005985.P10271846036474610053

namespace A005985

/-- `A001792(n)-A277867(n)` -/
def P10271846036474610053.Spec : Prop :=
  ∀ n, P10271846036474610053.a n = A005985 n

end A005985

/-! ## A005985.P3466314684929749564

`∑[A045623(n)]-A277867(n)`
-/

namespace A005985.P3466314684929749564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A277867 n

end

end A005985.P3466314684929749564

namespace A005985

/-- `∑[A045623(n)]-A277867(n)` -/
def P3466314684929749564.Spec : Prop :=
  ∀ n, P3466314684929749564.a n = A005985 n

end A005985

/-! ## A005985.P14071797949256482845

`A000918(n)*A004526(n)+n`
-/

namespace A005985.P14071797949256482845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n * A004526 n + (n : ℤ)

end

end A005985.P14071797949256482845

namespace A005985

/-- `A000918(n)*A004526(n)+n` -/
def P14071797949256482845.Spec : Prop :=
  ∀ n, P14071797949256482845.a n = A005985 n

end A005985

/-! ## A005985.P617859643730989364

`A004526(n)*A296965(n)+n`
-/

namespace A005985.P617859643730989364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A296965 n + (n : ℤ)

end

end A005985.P617859643730989364

namespace A005985

/-- `A004526(n)*A296965(n)+n` -/
def P617859643730989364.Spec : Prop :=
  ∀ n, P617859643730989364.a n = A005985 n

end A005985

/-! ## A005985.P3965832085133570419

`A000035(n)+A000079(n)*A004526(n)`
-/

namespace A005985.P3965832085133570419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000079 n * A004526 n

end

end A005985.P3965832085133570419

namespace A005985

/-- `A000035(n)+A000079(n)*A004526(n)` -/
def P3965832085133570419.Spec : Prop :=
  ∀ n, P3965832085133570419.a n = A005985 n

end A005985

/-! ## A005985.P18206961512337188480

`A004526(n+1)+A000225(n)*A004526(n)`
-/

namespace A005985.P18206961512337188480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A000225 n * A004526 n

end

end A005985.P18206961512337188480

namespace A005985

/-- `A004526(n+1)+A000225(n)*A004526(n)` -/
def P18206961512337188480.Spec : Prop :=
  ∀ n, P18206961512337188480.a n = A005985 n

end A005985

/-! ## A005985.P13541980902532403860

`or(1, n)*A011782(n)-(A011782(n)-A000035(n))`
-/

namespace A005985.P13541980902532403860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A011782 n - (A011782 n - A000035 n)

end

end A005985.P13541980902532403860

namespace A005985

/-- `or(1, n)*A011782(n)-(A011782(n)-A000035(n))` -/
def P13541980902532403860.Spec : Prop :=
  ∀ n, P13541980902532403860.a n = A005985 n

end A005985

/-! ## A005985.P12967764305934943836

`2*a(n-1)+5*a(n-2)-10*a(n-3)-4*a(n-4)+8*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=32`
-/

namespace A005985.P12967764305934943836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 32] fun n a =>
  2 * a (n - 1) + 5 * a (n - 2) - 10 * a (n - 3) - 4 * a (n - 4) + 8 * a (n - 5)

end

end A005985.P12967764305934943836

namespace A005985

/-- `2*a(n-1)+5*a(n-2)-10*a(n-3)-4*a(n-4)+8*a(n-5)` -/
def P12967764305934943836.Spec : Prop :=
  ∀ n, P12967764305934943836.a n = A005985 n

end A005985

/-! ## A005985.P5629362542485239963

`and(A057711(n+1)-n, A134169(n+1))`
-/

namespace A005985.P5629362542485239963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057711 (n + 1) - (n : ℤ)) (A134169 (n + 1))

end

end A005985.P5629362542485239963

namespace A005985

/-- `and(A057711(n+1)-n, A134169(n+1))` -/
def P5629362542485239963.Spec : Prop :=
  ∀ n, P5629362542485239963.a n = A005985 n

end A005985

/-!
# A005986: Number of column-strict plane partitions of n.

The programs for A005986, there is no canonical definition to state claims against.
-/

/-! ## A005986.P10605059692231359240

`2*A323655(2*n)-A005380(2*n)`
-/

namespace A005986.P10605059692231359240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323655 (2 * n) - A005380 (2 * n)

end

end A005986.P10605059692231359240

/-! ## A005986.P3290606481607798500

`record[2*A331485(n)-A219727(n)]`
-/

namespace A005986.P3290606481607798500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331485 n - A219727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005986.P3290606481607798500

/-! ## A005986.P1108871502593315291

`∑[A354928(∑[A332280(n)])]-n`
-/

namespace A005986.P1108871502593315291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005986.P1108871502593315291

/-! ## A005986.P6668151501399381571

`A006856(A000070(n))+A000041(n)`
-/

namespace A005986.P6668151501399381571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006856 (A000070 n).toNat + A000041 n

end

end A005986.P6668151501399381571

/-!
# A005987: Number of symmetric plane partitions of n.

The programs for A005987, there is no canonical definition to state claims against.
-/

/-! ## A005987.P6155189474425997918

`A000219(n)-2*A306098(n)`
-/

namespace A005987.P6155189474425997918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n - 2 * A306098 n

end

end A005987.P6155189474425997918

/-! ## A005987.P9174088817454220448

`A048140(floor(sqrt(n²+1)))-A306098(n)`
-/

namespace A005987.P9174088817454220448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048140 (Nat.sqrt (n ^ 2 + 1)) - A306098 n

end

end A005987.P9174088817454220448

/-! ## A005987.P10957177835106207656

`A242642(A179865(n+1))-2*A306098(n)`
-/

namespace A005987.P10957177835106207656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat - 2 * A306098 n

end

end A005987.P10957177835106207656

/-! ## A005987.P15143974497516599821

`A242641(2*n²+1)-A306098(n)-A306098(n)`
-/

namespace A005987.P15143974497516599821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * n ^ 2 + 1) - A306098 n - A306098 n

end

end A005987.P15143974497516599821

/-! ## A005987.P14879572482311400440

`A306100(A055998(n)+1)-A306098(n)-A306098(n)`
-/

namespace A005987.P14879572482311400440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 (A055998 n + 1).toNat - A306098 n - A306098 n

end

end A005987.P14879572482311400440

/-!
# A005989: Values B(2,n)/4 of Gandhi polynomials defined by B(x,0)=x and B(x,n) = x^2 (B(x+1,n-1) - B(x,n-1)).

The programs for A005989, there is no canonical definition to state claims against.
-/

/-! ## A005989.P5109111738348694995

`A161680(n)+A004773(A005172(n+1))`
-/

namespace A005989.P5109111738348694995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A004773 (A005172 (n + 1)).toNat

end

end A005989.P5109111738348694995

/-!
# A005990: a(n) = (n-1)*(n+1)!/6.

The programs for A005990, the canonical program `A005990.P2472045444777514295` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005990 has offset 1).

The definition of A005990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005990.P17066842248990850347

`A090672(n+1)/2`
-/

namespace A005990.P17066842248990850347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090672 (n + 1) : ℚ) / 2

end

end A005990.P17066842248990850347

namespace A005990

/-- `A090672(n+1)/2` -/
def P17066842248990850347.Spec : Prop :=
  ∀ n, P17066842248990850347.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P2472045444777514295

`n*(n+2)!/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005990

/-- `n*(n+2)!/6` -/
def P2472045444777514295.Spec : Prop :=
  ∀ n, P2472045444777514295.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P6371491666307385770

`A052571(n+2)/6`
-/

namespace A005990.P6371491666307385770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052571 (n + 2) : ℚ) / 6

end

end A005990.P6371491666307385770

namespace A005990

/-- `A052571(n+2)/6` -/
def P6371491666307385770.Spec : Prop :=
  ∀ n, P6371491666307385770.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P15058004837251057931

`n!*∑[∑[n]]`
-/

namespace A005990.P15058004837251057931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005990.P15058004837251057931

namespace A005990

/-- `n!*∑[∑[n]]` -/
def P15058004837251057931.Spec : Prop :=
  ∀ n, (P15058004837251057931.a n : ℤ) = A005990 (n + 1)

end A005990

/-! ## A005990.P10803606321818790657

`n/6*∏[n+2]`
-/

namespace A005990.P10803606321818790657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 6 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A005990.P10803606321818790657

namespace A005990

/-- `n/6*∏[n+2]` -/
def P10803606321818790657.Spec : Prop :=
  ∀ n, P10803606321818790657.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P12638361287347311153

`∑[∑[n]]/n!^-1`
-/

namespace A005990.P12638361287347311153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A005990.P12638361287347311153

namespace A005990

/-- `∑[∑[n]]/n!^-1` -/
def P12638361287347311153.Spec : Prop :=
  ∀ n, P12638361287347311153.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P12655617069063171292

`lcm(n, n!*C(n+2, 3))`
-/

namespace A005990.P12655617069063171292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.factorial n * Nat.choose (n + 2) 3)

end

end A005990.P12655617069063171292

namespace A005990

/-- `lcm(n, n!*C(n+2, 3))` -/
def P12655617069063171292.Spec : Prop :=
  ∀ n, (P12655617069063171292.a n : ℤ) = A005990 (n + 1)

end A005990

/-! ## A005990.P4328449563594745957

`A317527(n+2)/3`
-/

namespace A005990.P4328449563594745957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317527 (n + 2) : ℚ) / 3

end

end A005990.P4328449563594745957

namespace A005990

/-- `A317527(n+2)/3` -/
def P4328449563594745957.Spec : Prop :=
  ∀ n, P4328449563594745957.a n = (A005990 (n + 1) : ℚ)

end A005990

/-! ## A005990.P10358308616052746135

`abs(∑[∑[n]]*A133942(n))`
-/

namespace A005990.P10358308616052746135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A133942 n|

end

end A005990.P10358308616052746135

namespace A005990

/-- `abs(∑[∑[n]]*A133942(n))` -/
def P10358308616052746135.Spec : Prop :=
  ∀ n, P10358308616052746135.a n = A005990 (n + 1)

end A005990

/-! ## A005990.P5580165999691808089

`A180119(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A005990.P5580165999691808089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A180119 n + (n : ℤ) * a (n - 1)

end

end A005990.P5580165999691808089

namespace A005990

/-- `A180119(n)+n*a(n-1)` -/
def P5580165999691808089.Spec : Prop :=
  ∀ n, P5580165999691808089.a n = A005990 (n + 1)

end A005990

/-!
# A005993: Expansion of (1+x^2)/((1-x)^2*(1-x^2)^2).

The programs for A005993, the canonical program `A005993.P1030123146035920100` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005993 has offset 0).

The definition of A005993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` (program `A005993.P1030123146035920100`, by `A005993.P1030123146035920100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005993.P1030123146035920100

`ogf((1+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005993

/-- `ogf((1+x^2)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P1030123146035920100.Spec : Prop :=
  ∀ n, P1030123146035920100.a n = A005993 n

theorem P1030123146035920100.correct : P1030123146035920100.Spec := by
  intro n
  simp only [A005993]

end A005993

/-! ## A005993.P975013733638178712

`(n+2)*(3*(-1)^n+2*n²+8*n+9)/24`
-/

namespace A005993.P975013733638178712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (3 * (-1) ^ n + (2 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9) : ℚ) / 24

end

end A005993.P975013733638178712

namespace A005993

/-- `(n+2)*(3*(-1)^n+2*n²+8*n+9)/24` -/
def P975013733638178712.Spec : Prop :=
  ∀ n, P975013733638178712.a n = (A005993 n : ℚ)

end A005993

/-! ## A005993.P6947530241256472607

`A027656(n)+2*A006918(n)`
-/

namespace A005993.P6947530241256472607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + 2 * A006918 n

end

end A005993.P6947530241256472607

namespace A005993

/-- `A027656(n)+2*A006918(n)` -/
def P6947530241256472607.Spec : Prop :=
  ∀ n, P6947530241256472607.a n = A005993 n

end A005993

/-! ## A005993.P15412585650501328194

`∑[∑[log2(gcd(2, n))]²]`
-/

namespace A005993.P15412585650501328194
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P15412585650501328194

namespace A005993

/-- `∑[∑[log2(gcd(2, n))]²]` -/
def P15412585650501328194.Spec : Prop :=
  ∀ n, P15412585650501328194.a n = (A005993 n : ℝ)

end A005993

/-! ## A005993.P12550263049179877890

`∑[∑[C(xor(1, n), n)]]`
-/

namespace A005993.P12550263049179877890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P12550263049179877890

namespace A005993

/-- `∑[∑[C(xor(1, n), n)]]` -/
def P12550263049179877890.Spec : Prop :=
  ∀ n, (P12550263049179877890.a n : ℤ) = A005993 n

end A005993

/-! ## A005993.P6169281250893968430

`∑[∑[1-a(n-1)]²]` with `a(0)=1`
-/

namespace A005993.P6169281250893968430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P6169281250893968430

namespace A005993

/-- `∑[∑[1-a(n-1)]²]` -/
def P6169281250893968430.Spec : Prop :=
  ∀ n, P6169281250893968430.a n = A005993 n

end A005993

/-! ## A005993.P8033668599999312767

`∑[or(1, n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A005993.P8033668599999312767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A005993.P8033668599999312767

namespace A005993

/-- `∑[or(1, n)]+a(n-2)` -/
def P8033668599999312767.Spec : Prop :=
  ∀ n, (P8033668599999312767.a n : ℤ) = A005993 n

end A005993

/-! ## A005993.P1319636414383313595

`∑[∑[lcm(2, n+1)-(n+1)]]`
-/

namespace A005993.P1319636414383313595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P1319636414383313595

namespace A005993

/-- `∑[∑[lcm(2, n+1)-(n+1)]]` -/
def P1319636414383313595.Spec : Prop :=
  ∀ n, P1319636414383313595.a n = A005993 n

end A005993

/-! ## A005993.P12917234195847088979

`∑[∑[or(1, n)]]-a(n-1)` with `a(0)=1`
-/

namespace A005993.P12917234195847088979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A005993.P12917234195847088979

namespace A005993

/-- `∑[∑[or(1, n)]]-a(n-1)` -/
def P12917234195847088979.Spec : Prop :=
  ∀ n, P12917234195847088979.a n = A005993 n

end A005993

/-! ## A005993.P13182287632293899712

`a(n-1)+(floor(n/2)+1)²` with `a(0)=1`
-/

namespace A005993.P13182287632293899712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℚ) / 2⌋ + 1) ^ 2

end

end A005993.P13182287632293899712

namespace A005993

/-- `a(n-1)+(floor(n/2)+1)²` -/
def P13182287632293899712.Spec : Prop :=
  ∀ n, P13182287632293899712.a n = A005993 n

end A005993

/-! ## A005993.P11562760429829479070

`abs(∑[∑[(n+1)%2]²]-1)+1`
-/

namespace A005993.P11562760429829479070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| + 1

end

end A005993.P11562760429829479070

namespace A005993

/-- `abs(∑[∑[(n+1)%2]²]-1)+1` -/
def P11562760429829479070.Spec : Prop :=
  ∀ n, P11562760429829479070.a n = A005993 n

end A005993

/-! ## A005993.P9122727326455658545

`∑[∑[(n+1)*a(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A005993.P9122727326455658545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  (n + 1) * f2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P9122727326455658545

namespace A005993

/-- `∑[∑[(n+1)*a(a(n-3))]]` -/
def P9122727326455658545.Spec : Prop :=
  ∀ n, (P9122727326455658545.a n : ℤ) = A005993 n

end A005993

/-! ## A005993.P8522354936588415861

`∑[∑[a(n-2)+2]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A005993.P8522354936588415861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P8522354936588415861

namespace A005993

/-- `∑[∑[a(n-2)+2]-a(n-1)]` -/
def P8522354936588415861.Spec : Prop :=
  ∀ n, P8522354936588415861.a n = A005993 n

end A005993

/-! ## A005993.P5358621848112670942

`∑[∑[2*n-a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A005993.P5358621848112670942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 * n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A005993.P5358621848112670942

namespace A005993

/-- `∑[∑[2*n-a(n-1)]]-a(n-1)` -/
def P5358621848112670942.Spec : Prop :=
  ∀ n, P5358621848112670942.a n = A005993 n

end A005993

/-! ## A005993.P4007429356743669301

`∑[∑[n-(a(n-1)-n)]]-a(n-1)` with `a(0)=1`
-/

namespace A005993.P4007429356743669301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - (f2 (n - 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A005993.P4007429356743669301

namespace A005993

/-- `∑[∑[n-(a(n-1)-n)]]-a(n-1)` -/
def P4007429356743669301.Spec : Prop :=
  ∀ n, P4007429356743669301.a n = A005993 n

end A005993

/-! ## A005993.P13036422395189415896

`A109622(n)+n`
-/

namespace A005993.P13036422395189415896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109622 n + (n : ℤ)

end

end A005993.P13036422395189415896

namespace A005993

/-- `A109622(n)+n` -/
def P13036422395189415896.Spec : Prop :=
  ∀ n, P13036422395189415896.a n = A005993 n

end A005993

/-! ## A005993.P16956566192678681171

`∑[A008619(n)²]`
-/

namespace A005993.P16956566192678681171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P16956566192678681171

namespace A005993

/-- `∑[A008619(n)²]` -/
def P16956566192678681171.Spec : Prop :=
  ∀ n, P16956566192678681171.a n = A005993 n

end A005993

/-! ## A005993.P6959128452485493707

`∑[(A004526(n)+1)²]`
-/

namespace A005993.P6959128452485493707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P6959128452485493707

namespace A005993

/-- `∑[(A004526(n)+1)²]` -/
def P6959128452485493707.Spec : Prop :=
  ∀ n, P6959128452485493707.a n = A005993 n

end A005993

/-! ## A005993.P1397156824129977332

`∑[A110654(n+1)²]`
-/

namespace A005993.P1397156824129977332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P1397156824129977332

namespace A005993

/-- `∑[A110654(n+1)²]` -/
def P1397156824129977332.Spec : Prop :=
  ∀ n, P1397156824129977332.a n = A005993 n

end A005993

/-! ## A005993.P11093115926830849987

`∑[∑[A193356(n+1)]]`
-/

namespace A005993.P11093115926830849987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005993.P11093115926830849987

namespace A005993

/-- `∑[∑[A193356(n+1)]]` -/
def P11093115926830849987.Spec : Prop :=
  ∀ n, P11093115926830849987.a n = A005993 n

end A005993

/-!
# A005994: Alkane (or paraffin) numbers l(7,n).

The programs for A005994, the canonical program `A005994.P313789826886004477` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005994 has offset 0).

The definition of A005994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006009, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005994.P313789826886004477

`A006009(n+1)/2-A000332(n+4)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005994

/-- `A006009(n+1)/2-A000332(n+4)` -/
def P313789826886004477.Spec : Prop :=
  ∀ n, P313789826886004477.a n = (A005994 n : ℚ)

end A005994

/-! ## A005994.P6910691651591305132

`∑[∑[∑[log2(gcd(2, n))]²]]`
-/

namespace A005994.P6910691651591305132
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005994.P6910691651591305132

namespace A005994

/-- `∑[∑[∑[log2(gcd(2, n))]²]]` -/
def P6910691651591305132.Spec : Prop :=
  ∀ n, P6910691651591305132.a n = (A005994 n : ℝ)

end A005994

/-! ## A005994.P13532255699165545025

`∑[∑[∑[C(xor(1, n), n)]]]`
-/

namespace A005994.P13532255699165545025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005994.P13532255699165545025

namespace A005994

/-- `∑[∑[∑[C(xor(1, n), n)]]]` -/
def P13532255699165545025.Spec : Prop :=
  ∀ n, (P13532255699165545025.a n : ℤ) = A005994 n

end A005994

/-! ## A005994.P9002252823857143244

`∑[∑[∑[char[2*n]]²]]`
-/

namespace A005994.P9002252823857143244
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005994.P9002252823857143244

namespace A005994

/-- `∑[∑[∑[char[2*n]]²]]` -/
def P9002252823857143244.Spec : Prop :=
  ∀ n, (P9002252823857143244.a n : ℤ) = A005994 n

end A005994

/-! ## A005994.P4742061430479077605

`∑[∑[(or(1, n)+1)²/2]]/2`
-/

namespace A005994.P4742061430479077605
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) ^ 2 : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A005994.P4742061430479077605

namespace A005994

/-- `∑[∑[(or(1, n)+1)²/2]]/2` -/
def P4742061430479077605.Spec : Prop :=
  ∀ n, P4742061430479077605.a n = (A005994 n : ℚ)

end A005994

/-! ## A005994.P15523825691395010192

`floor(∑[∑[∑[1-a(n-1)]²]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A005994.P15523825691395010192
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005994.P15523825691395010192

namespace A005994

/-- `floor(∑[∑[∑[1-a(n-1)]²]])` -/
def P15523825691395010192.Spec : Prop :=
  ∀ n, P15523825691395010192.a n = A005994 n

end A005994

/-! ## A005994.P6624277159675937690

`∑[∑[∑[2-a(n-1)]²]]/4` with `a(0)=2`
-/

namespace A005994.P6624277159675937690
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A005994.P6624277159675937690

namespace A005994

/-- `∑[∑[∑[2-a(n-1)]²]]/4` -/
def P6624277159675937690.Spec : Prop :=
  ∀ n, P6624277159675937690.a n = (A005994 n : ℚ)

end A005994

/-! ## A005994.P9386885952422085278

`∑[∑[1-a(n-1)]²]+a(n-1)` with `a(0)=1`
-/

namespace A005994.P9386885952422085278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A005994.P9386885952422085278

namespace A005994

/-- `∑[∑[1-a(n-1)]²]+a(n-1)` -/
def P9386885952422085278.Spec : Prop :=
  ∀ n, P9386885952422085278.a n = A005994 n

end A005994

/-! ## A005994.P18355423562481492883

`∑[A316261(n)]-n²`
-/

namespace A005994.P18355423562481492883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A005994.P18355423562481492883

namespace A005994

/-- `∑[A316261(n)]-n²` -/
def P18355423562481492883.Spec : Prop :=
  ∀ n, P18355423562481492883.a n = A005994 n

end A005994

/-! ## A005994.P11993848755958916356

`∑[A168380(n+1)]/2`
-/

namespace A005994.P11993848755958916356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A005994.P11993848755958916356

namespace A005994

/-- `∑[A168380(n+1)]/2` -/
def P11993848755958916356.Spec : Prop :=
  ∀ n, P11993848755958916356.a n = (A005994 n : ℚ)

end A005994

/-! ## A005994.P7720113760177409401

`A005993(n)+a(n-1)` with `a(0)=1`
-/

namespace A005994.P7720113760177409401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005993 n + a (n - 1)

end

end A005994.P7720113760177409401

namespace A005994

/-- `A005993(n)+a(n-1)` -/
def P7720113760177409401.Spec : Prop :=
  ∀ n, P7720113760177409401.a n = A005994 n

end A005994

/-! ## A005994.P16222910098181793500

`A203286(n)-a(n-1)` with `a(0)=1`
-/

namespace A005994.P16222910098181793500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203286 n - a (n - 1)

end

end A005994.P16222910098181793500

namespace A005994

/-- `A203286(n)-a(n-1)` -/
def P16222910098181793500.Spec : Prop :=
  ∀ n, P16222910098181793500.a n = A005994 n

end A005994

/-! ## A005994.P16452103094383986252

`A246695(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A005994.P16452103094383986252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A246695 n + a (n - 3)

end

end A005994.P16452103094383986252

namespace A005994

/-- `A246695(n)+a(n-3)` -/
def P16452103094383986252.Spec : Prop :=
  ∀ n, P16452103094383986252.a n = A005994 n

end A005994

/-! ## A005994.P10279983896123387888

`a(n-1)+A109622(n)+n` with `a(0)=1`
-/

namespace A005994.P10279983896123387888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A109622 n + (n : ℤ))

end

end A005994.P10279983896123387888

namespace A005994

/-- `a(n-1)+A109622(n)+n` -/
def P10279983896123387888.Spec : Prop :=
  ∀ n, P10279983896123387888.a n = A005994 n

end A005994

/-! ## A005994.P16690916354589486526

`A001752(n)-A006918(n)`
-/

namespace A005994.P16690916354589486526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A006918 n

end

end A005994.P16690916354589486526

namespace A005994

/-- `A001752(n)-A006918(n)` -/
def P16690916354589486526.Spec : Prop :=
  ∀ n, P16690916354589486526.a n = A005994 n

end A005994

/-! ## A005994.P1910002746776814759

`A000217(n)+∑[A109622(n)]`
-/

namespace A005994.P1910002746776814759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005994.P1910002746776814759

namespace A005994

/-- `A000217(n)+∑[A109622(n)]` -/
def P1910002746776814759.Spec : Prop :=
  ∀ n, P1910002746776814759.a n = A005994 n

end A005994

/-! ## A005994.P4385193486571111157

`2*A002624(n)-A002623(n)`
-/

namespace A005994.P4385193486571111157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002624 n - A002623 n

end

end A005994.P4385193486571111157

namespace A005994

/-- `2*A002624(n)-A002623(n)` -/
def P4385193486571111157.Spec : Prop :=
  ∀ n, P4385193486571111157.a n = A005994 n

end A005994

/-! ## A005994.P12545802656413667471

`A032091(n+6)-A002623(n)`
-/

namespace A005994.P12545802656413667471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) - A002623 n

end

end A005994.P12545802656413667471

namespace A005994

/-- `A032091(n+6)-A002623(n)` -/
def P12545802656413667471.Spec : Prop :=
  ∀ n, P12545802656413667471.a n = A005994 n

end A005994

/-! ## A005994.P16444970077959174248

`A082289(n+4)-A213780(n+1)`
-/

namespace A005994.P16444970077959174248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082289 (n + 4) - A213780 (n + 1)

end

end A005994.P16444970077959174248

namespace A005994

/-- `A082289(n+4)-A213780(n+1)` -/
def P16444970077959174248.Spec : Prop :=
  ∀ n, P16444970077959174248.a n = A005994 n

end A005994

/-! ## A005994.P16472737121458942207

`A007009(n+1)+A002624(n)-A001752(n)`
-/

namespace A005994.P16472737121458942207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) + (A002624 n - A001752 n)

end

end A005994.P16472737121458942207

namespace A005994

/-- `A007009(n+1)+A002624(n)-A001752(n)` -/
def P16472737121458942207.Spec : Prop :=
  ∀ n, P16472737121458942207.a n = A005994 n

end A005994

/-!
# A005995: Alkane (or paraffin) numbers l(8,n).

The programs for A005995, the canonical program `A005995.P4464072021336214688` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005995 has offset 0).

The definition of A005995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005995.P8313895034087808524

`∑[∑[∑[∑[n+1]*char[2*n]]]]`
-/

namespace A005995.P8313895034087808524
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) * (if ∃ j, f5 j = n then 1 else 0)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005995.P8313895034087808524

namespace A005995

/-- `∑[∑[∑[∑[n+1]*char[2*n]]]]` -/
def P8313895034087808524.Spec : Prop :=
  ∀ n, (P8313895034087808524.a n : ℤ) = A005995 n

end A005995

/-! ## A005995.P4464072021336214688

`A001753(n)-2*A096338(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005995

/-- `A001753(n)-2*A096338(n)` -/
def P4464072021336214688.Spec : Prop :=
  ∀ n, P4464072021336214688.a n = A005995 n

theorem P4464072021336214688.correct : P4464072021336214688.Spec := by
  intro n
  simp only [A005995]

end A005995

/-! ## A005995.P3452756962020489902

`∪[A053132(n+5), A271870(n)]`
-/

namespace A005995.P3452756962020489902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053132 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005995.P3452756962020489902

namespace A005995

/-- `∪[A053132(n+5), A271870(n)]` -/
def P3452756962020489902.Spec : Prop :=
  ∀ n, (P3452756962020489902.a n : ℤ) = A005995 n

end A005995

/-! ## A005995.P5054156363457261627

`A032092(n+7)-2*A002624(n)`
-/

namespace A005995.P5054156363457261627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7) - 2 * A002624 n

end

end A005995.P5054156363457261627

namespace A005995

/-- `A032092(n+7)-2*A002624(n)` -/
def P5054156363457261627.Spec : Prop :=
  ∀ n, P5054156363457261627.a n = A005995 n

end A005995

/-! ## A005995.P5133438118410281442

`A032092(n+7)-A032091(n+6)`
-/

namespace A005995.P5133438118410281442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (n + 7) - A032091 (n + 6)

end

end A005995.P5133438118410281442

namespace A005995

/-- `A032092(n+7)-A032091(n+6)` -/
def P5133438118410281442.Spec : Prop :=
  ∀ n, P5133438118410281442.a n = A005995 n

end A005995

/-! ## A005995.P1237582974897725018

`A062135(A167614(n+2))`
-/

namespace A005995.P1237582974897725018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062135 (A167614 (n + 2)).toNat

end

end A005995.P1237582974897725018

namespace A005995

/-- `A062135(A167614(n+2))` -/
def P1237582974897725018.Spec : Prop :=
  ∀ n, P1237582974897725018.a n = A005995 n

end A005995

/-! ## A005995.P10878703142490541549

`A159916(A000217(n+4)+5)`
-/

namespace A005995.P10878703142490541549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159916 (A000217 (n + 4) + 5).toNat

end

end A005995.P10878703142490541549

namespace A005995

/-- `A159916(A000217(n+4)+5)` -/
def P10878703142490541549.Spec : Prop :=
  ∀ n, P10878703142490541549.a n = A005995 n

end A005995

/-! ## A005995.P9906751556597114971

`A034851(eq[5, A002262(n)])`
-/

namespace A005995.P9906751556597114971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005995.P9906751556597114971

namespace A005995

/-- `A034851(eq[5, A002262(n)])` -/
def P9906751556597114971.Spec : Prop :=
  ∀ n, P9906751556597114971.a n = A005995 n

end A005995

/-! ## A005995.P14507753681965113713

`A102541((n+3)²+n)`
-/

namespace A005995.P14507753681965113713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102541 ((n + 3) ^ 2 + n)

end

end A005995.P14507753681965113713

namespace A005995

/-- `A102541((n+3)²+n)` -/
def P14507753681965113713.Spec : Prop :=
  ∀ n, P14507753681965113713.a n = A005995 n

end A005995

/-! ## A005995.P10948669647132596662

`A228570(∑[n+3]+(n+2)²)`
-/

namespace A005995.P10948669647132596662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228570 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ 2)

end

end A005995.P10948669647132596662

namespace A005995

/-- `A228570(∑[n+3]+(n+2)²)` -/
def P10948669647132596662.Spec : Prop :=
  ∀ n, P10948669647132596662.a n = A005995 n

end A005995

/-!
# A005996: G.f.: 2*(1-x^3)/((1-x)^5*(1+x)^2).

The programs for A005996, the canonical program `A005996.P5883780416022045654` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005996 has offset 1).

The definition of A005996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005996.P7617836309566226787

`(n+2)*(2*(n+1)*(n+3)+1-(-1)^(n+1))/8`
-/

namespace A005996.P7617836309566226787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((2 * (n + 1) * (n + 3) + 1 : ℤ) - (-1) ^ (n + 1)) : ℚ) / 8

end

end A005996.P7617836309566226787

namespace A005996

/-- `(n+2)*(2*(n+1)*(n+3)+1-(-1)^(n+1))/8` -/
def P7617836309566226787.Spec : Prop :=
  ∀ n, P7617836309566226787.a n = (A005996 (n + 1) : ℚ)

end A005996

/-! ## A005996.P9225634991653193512

`A128624(n+1)+A002620(n+2)`
-/

namespace A005996.P9225634991653193512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128624 (n + 1) + A002620 (n + 2)

end

end A005996.P9225634991653193512

namespace A005996

/-- `A128624(n+1)+A002620(n+2)` -/
def P9225634991653193512.Spec : Prop :=
  ∀ n, P9225634991653193512.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P5883780416022045654

`A143785(n+1)-A002620(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005996

/-- `A143785(n+1)-A002620(n+2)` -/
def P5883780416022045654.Spec : Prop :=
  ∀ n, P5883780416022045654.a n = A005996 (n + 1)

theorem P5883780416022045654.correct : P5883780416022045654.Spec := by
  intro n
  simp only [A005996, Nat.add_sub_cancel]

end A005996

/-! ## A005996.P8670084187800363438

`∑[∑[lcm(2, n+1)]]`
-/

namespace A005996.P8670084187800363438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P8670084187800363438

namespace A005996

/-- `∑[∑[lcm(2, n+1)]]` -/
def P8670084187800363438.Spec : Prop :=
  ∀ n, (P8670084187800363438.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P7441328920442053362

`∑[∑[(n+1)*gcd(2, n)]]`
-/

namespace A005996.P7441328920442053362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P7441328920442053362

namespace A005996

/-- `∑[∑[(n+1)*gcd(2, n)]]` -/
def P7441328920442053362.Spec : Prop :=
  ∀ n, (P7441328920442053362.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P9656300658556997686

`∑[∑[sqrt(lcm(4, record[(1-n)²]))]]`
-/

namespace A005996.P9656300658556997686
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm 4 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P9656300658556997686

namespace A005996

/-- `∑[∑[sqrt(lcm(4, record[(1-n)²]))]]` -/
def P9656300658556997686.Spec : Prop :=
  ∀ n, P9656300658556997686.a n = (A005996 (n + 1) : ℝ)

end A005996

/-! ## A005996.P6133932052024960311

`∑[∑[(n+1)*(2-n%2)]]`
-/

namespace A005996.P6133932052024960311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P6133932052024960311

namespace A005996

/-- `∑[∑[(n+1)*(2-n%2)]]` -/
def P6133932052024960311.Spec : Prop :=
  ∀ n, P6133932052024960311.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P4016059590042844084

`∑[∑[(2-and(1, n))*(n+1)]]`
-/

namespace A005996.P4016059590042844084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P4016059590042844084

namespace A005996

/-- `∑[∑[(2-and(1, n))*(n+1)]]` -/
def P4016059590042844084.Spec : Prop :=
  ∀ n, P4016059590042844084.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P6106065468376984104

`∑[2*∑[∑[n]/a(n-1)]]` with `a(0)=1`
-/

namespace A005996.P6106065468376984104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P6106065468376984104

namespace A005996

/-- `∑[2*∑[∑[n]/a(n-1)]]` -/
def P6106065468376984104.Spec : Prop :=
  ∀ n, P6106065468376984104.a n = (A005996 (n + 1) : ℚ)

end A005996

/-! ## A005996.P16236852902930806196

`∑[∑[∑[∑[ogf((2+2x+2x^2)/(1+2x+x^2))]]]]`
-/

namespace A005996.P16236852902930806196
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2] [1, 2, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P16236852902930806196

namespace A005996

/-- `∑[∑[∑[∑[ogf((2+2x+2x^2)/(1+2x+x^2))]]]]` -/
def P16236852902930806196.Spec : Prop :=
  ∀ n, P16236852902930806196.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P6756801209063246564

`(n+2)*∑[a(n-2)+1]` with `a(0)=1, a(1)=1`
-/

namespace A005996.P6756801209063246564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005996.P6756801209063246564

namespace A005996

/-- `(n+2)*∑[a(n-2)+1]` -/
def P6756801209063246564.Spec : Prop :=
  ∀ n, (P6756801209063246564.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P4490044772691565926

`∑[∑[((n+1)%2+1)*(n+1)]]`
-/

namespace A005996.P4490044772691565926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 2 + 1) * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P4490044772691565926

namespace A005996

/-- `∑[∑[((n+1)%2+1)*(n+1)]]` -/
def P4490044772691565926.Spec : Prop :=
  ∀ n, (P4490044772691565926.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P6573319740964271276

`∑[∑[(and(1, n+1)+1)*(n+1)]]`
-/

namespace A005996.P6573319740964271276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P6573319740964271276

namespace A005996

/-- `∑[∑[(and(1, n+1)+1)*(n+1)]]` -/
def P6573319740964271276.Spec : Prop :=
  ∀ n, (P6573319740964271276.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P1531549633337294388

`∑[∑[a(n-2)+6]-a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A005996.P1531549633337294388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P1531549633337294388

namespace A005996

/-- `∑[∑[a(n-2)+6]-a(n-1)]` -/
def P1531549633337294388.Spec : Prop :=
  ∀ n, P1531549633337294388.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P1354469100562833794

`lcm(n+2, (n+2)*floor(((n+2)/2)²))`
-/

namespace A005996.P1354469100562833794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ((n + 2 : ℤ) * ⌊((n + 2 : ℚ) / 2) ^ 2⌋)

end

end A005996.P1354469100562833794

namespace A005996

/-- `lcm(n+2, (n+2)*floor(((n+2)/2)²))` -/
def P1354469100562833794.Spec : Prop :=
  ∀ n, (P1354469100562833794.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P14287565594466094070

`∑[∑[C(or(1, n+2)-1, n+1)+n]]`
-/

namespace A005996.P14287565594466094070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lor 1 (n + 2) : ℤ) - 1).toNat (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P14287565594466094070

namespace A005996

/-- `∑[∑[C(or(1, n+2)-1, n+1)+n]]` -/
def P14287565594466094070.Spec : Prop :=
  ∀ n, (P14287565594466094070.a n : ℤ) = A005996 (n + 1)

end A005996

/-! ## A005996.P1312973150861919771

`∑[∑[(n+2+n)/gcd(n+1, n-1)]]`
-/

namespace A005996.P1312973150861919771
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 + n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P1312973150861919771

namespace A005996

/-- `∑[∑[(n+2+n)/gcd(n+1, n-1)]]` -/
def P1312973150861919771.Spec : Prop :=
  ∀ n, P1312973150861919771.a n = (A005996 (n + 1) : ℚ)

end A005996

/-! ## A005996.P16332900487552349942

`∑[∑[A109043(n+1)]]`
-/

namespace A005996.P16332900487552349942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P16332900487552349942

namespace A005996

/-- `∑[∑[A109043(n+1)]]` -/
def P16332900487552349942.Spec : Prop :=
  ∀ n, P16332900487552349942.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P6446737304767060863

`∑[A135370(n+1)+1]`
-/

namespace A005996.P6446737304767060863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P6446737304767060863

namespace A005996

/-- `∑[A135370(n+1)+1]` -/
def P6446737304767060863.Spec : Prop :=
  ∀ n, P6446737304767060863.a n = A005996 (n + 1)

end A005996

/-! ## A005996.P17899639666476605776

`∑[2*(A144065(n)+1)]`
-/

namespace A005996.P17899639666476605776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144065 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005996.P17899639666476605776

namespace A005996

/-- `∑[2*(A144065(n)+1)]` -/
def P17899639666476605776.Spec : Prop :=
  ∀ n, P17899639666476605776.a n = A005996 (n + 1)

end A005996

/-!
# A005997: Number of paraffins.

The programs for A005997, the canonical program `A005997.P6788587237910551337` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005997 has offset 1).

The definition of A005997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005997.P6788587237910551337

`(n+2)*(2*(n+1)²-(-1)^(n+1)+1)/8`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005997

/-- `(n+2)*(2*(n+1)²-(-1)^(n+1)+1)/8` -/
def P6788587237910551337.Spec : Prop :=
  ∀ n, P6788587237910551337.a n = (A005997 (n + 1) : ℚ)

end A005997

/-! ## A005997.P11929673228138633162

`A005999(n+1)+n²`
-/

namespace A005997.P11929673228138633162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005999 (n + 1) + (n ^ 2 : ℤ)

end

end A005997.P11929673228138633162

namespace A005997

/-- `A005999(n+1)+n²` -/
def P11929673228138633162.Spec : Prop :=
  ∀ n, P11929673228138633162.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P11145567781409469563

`∑[∑[lcm(2, n+1)-1]]`
-/

namespace A005997.P11145567781409469563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P11145567781409469563

namespace A005997

/-- `∑[∑[lcm(2, n+1)-1]]` -/
def P11145567781409469563.Spec : Prop :=
  ∀ n, P11145567781409469563.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P9453275150428916772

`∑[∑[or(1, n*gcd(2, n))]]`
-/

namespace A005997.P9453275150428916772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P9453275150428916772

namespace A005997

/-- `∑[∑[or(1, n*gcd(2, n))]]` -/
def P9453275150428916772.Spec : Prop :=
  ∀ n, (P9453275150428916772.a n : ℤ) = A005997 (n + 1)

end A005997

/-! ## A005997.P5257179081492289594

`∑[∑[C(xor(1, n), n)+n]]`
-/

namespace A005997.P5257179081492289594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P5257179081492289594

namespace A005997

/-- `∑[∑[C(xor(1, n), n)+n]]` -/
def P5257179081492289594.Spec : Prop :=
  ∀ n, (P5257179081492289594.a n : ℤ) = A005997 (n + 1)

end A005997

/-! ## A005997.P12176549217896497660

`(n+2)*∑[or(1, n)/2]`
-/

namespace A005997.P12176549217896497660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005997.P12176549217896497660

namespace A005997

/-- `(n+2)*∑[or(1, n)/2]` -/
def P12176549217896497660.Spec : Prop :=
  ∀ n, P12176549217896497660.a n = (A005997 (n + 1) : ℚ)

end A005997

/-! ## A005997.P4396868879737168732

`∑[∑[n]+∑[1-a(n-1)]²]` with `a(0)=1`
-/

namespace A005997.P4396868879737168732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P4396868879737168732

namespace A005997

/-- `∑[∑[n]+∑[1-a(n-1)]²]` -/
def P4396868879737168732.Spec : Prop :=
  ∀ n, P4396868879737168732.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P5136372050387789736

`(n+2)*(a(n-2)/n+n)` with `a(0)=1, a(1)=3`
-/

namespace A005997.P5136372050387789736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 2 : ℚ) * (a (n - 2) / (n : ℚ) + (n : ℚ))

end

end A005997.P5136372050387789736

namespace A005997

/-- `(n+2)*(a(n-2)/n+n)` -/
def P5136372050387789736.Spec : Prop :=
  ∀ n, P5136372050387789736.a n = (A005997 (n + 1) : ℚ)

end A005997

/-! ## A005997.P8760998045120417269

`C(n+1, 2)+a(n-1)+(floor(n/2)+1)²` with `a(0)=1`
-/

namespace A005997.P8760998045120417269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 1) 2 : ℤ) + (a (n - 1) + (⌊(n : ℚ) / 2⌋ + 1) ^ 2)

end

end A005997.P8760998045120417269

namespace A005997

/-- `C(n+1, 2)+a(n-1)+(floor(n/2)+1)²` -/
def P8760998045120417269.Spec : Prop :=
  ∀ n, P8760998045120417269.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P15824614838098658449

`∑[A309805(n+1)]`
-/

namespace A005997.P15824614838098658449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P15824614838098658449

namespace A005997

/-- `∑[A309805(n+1)]` -/
def P15824614838098658449.Spec : Prop :=
  ∀ n, P15824614838098658449.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P7510648110780958071

`∑[∑[A133090(n+1)]]`
-/

namespace A005997.P7510648110780958071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P7510648110780958071

namespace A005997

/-- `∑[∑[A133090(n+1)]]` -/
def P7510648110780958071.Spec : Prop :=
  ∀ n, P7510648110780958071.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P17466696913960262526

`A005993(n)+∑[∑[n]]`
-/

namespace A005997.P17466696913960262526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005997.P17466696913960262526

namespace A005997

/-- `A005993(n)+∑[∑[n]]` -/
def P17466696913960262526.Spec : Prop :=
  ∀ n, P17466696913960262526.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P13090022249934768461

`A005998(n+1)+∑[n]`
-/

namespace A005997.P13090022249934768461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005998 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005997.P13090022249934768461

namespace A005997

/-- `A005998(n+1)+∑[n]` -/
def P13090022249934768461.Spec : Prop :=
  ∀ n, P13090022249934768461.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P706359584601641239

`∑[A135370(n+1)-n]`
-/

namespace A005997.P706359584601641239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005997.P706359584601641239

namespace A005997

/-- `∑[A135370(n+1)-n]` -/
def P706359584601641239.Spec : Prop :=
  ∀ n, P706359584601641239.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P10984796026883864621

`A200252(n+1)-(n+2)²`
-/

namespace A005997.P10984796026883864621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200252 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A005997.P10984796026883864621

namespace A005997

/-- `A200252(n+1)-(n+2)²` -/
def P10984796026883864621.Spec : Prop :=
  ∀ n, P10984796026883864621.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P9641109527578141035

`A005996(n+1)-∑[n+1]`
-/

namespace A005997.P9641109527578141035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005997.P9641109527578141035

namespace A005997

/-- `A005996(n+1)-∑[n+1]` -/
def P9641109527578141035.Spec : Prop :=
  ∀ n, P9641109527578141035.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P9134498190550263688

`A246695(n)+A002620(n)`
-/

namespace A005997.P9134498190550263688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n + A002620 n

end

end A005997.P9134498190550263688

namespace A005997

/-- `A246695(n)+A002620(n)` -/
def P9134498190550263688.Spec : Prop :=
  ∀ n, P9134498190550263688.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P15855225769023033456

`A247643(n)+A212561(n)`
-/

namespace A005997.P15855225769023033456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n + A212561 n

end

end A005997.P15855225769023033456

namespace A005997

/-- `A247643(n)+A212561(n)` -/
def P15855225769023033456.Spec : Prop :=
  ∀ n, P15855225769023033456.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P4015877297354097116

`A173196(n)+A049778(n+1)`
-/

namespace A005997.P4015877297354097116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A049778 (n + 1)

end

end A005997.P4015877297354097116

namespace A005997

/-- `A173196(n)+A049778(n+1)` -/
def P4015877297354097116.Spec : Prop :=
  ∀ n, P4015877297354097116.a n = A005997 (n + 1)

end A005997

/-! ## A005997.P1161155013833755712

`A213389(n)+A174114(n+1)`
-/

namespace A005997.P1161155013833755712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + A174114 (n + 1)

end

end A005997.P1161155013833755712

namespace A005997

/-- `A213389(n)+A174114(n+1)` -/
def P1161155013833755712.Spec : Prop :=
  ∀ n, P1161155013833755712.a n = A005997 (n + 1)

end A005997

/-!
# A005998: Number of paraffins.

The programs for A005998, the canonical program `A005998.P4663235419972821705` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005998 has offset 1).

The definition of A005998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005998.P4663235419972821705

`1/8*(2*(n+1)^3-2*(n+1)²+5*(n+1)-(-1)^(n+1)*(n+2)+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005998

/-- `1/8*(2*(n+1)^3-2*(n+1)²+5*(n+1)-(-1)^(n+1)*(n+2)+1)` -/
def P4663235419972821705.Spec : Prop :=
  ∀ n, P4663235419972821705.a n = (A005998 (n + 1) : ℚ)

end A005998

/-! ## A005998.P11157083607502235040

`∑[∑[lcm(2, n+1)-2]+1]`
-/

namespace A005998.P11157083607502235040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P11157083607502235040

namespace A005998

/-- `∑[∑[lcm(2, n+1)-2]+1]` -/
def P11157083607502235040.Spec : Prop :=
  ∀ n, P11157083607502235040.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P17528516246957224148

`∑[∑[or(1, n*gcd(2, n))]-n]`
-/

namespace A005998.P17528516246957224148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P17528516246957224148

namespace A005998

/-- `∑[∑[or(1, n*gcd(2, n))]-n]` -/
def P17528516246957224148.Spec : Prop :=
  ∀ n, P17528516246957224148.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P17891240034945665128

`∑[∑[C(xor(1, n), n)+n]-n]`
-/

namespace A005998.P17891240034945665128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P17891240034945665128

namespace A005998

/-- `∑[∑[C(xor(1, n), n)+n]-n]` -/
def P17891240034945665128.Spec : Prop :=
  ∀ n, P17891240034945665128.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P7540497552839032307

`ceil((n*(∑[or(1, n)]+1)+1)/2)`
-/

namespace A005998.P7540497552839032307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 : ℕ) : ℚ) / 2⌉

end

end A005998.P7540497552839032307

namespace A005998

/-- `ceil((n*(∑[or(1, n)]+1)+1)/2)` -/
def P7540497552839032307.Spec : Prop :=
  ∀ n, P7540497552839032307.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P1482218161557401844

`∑[∑[or(1, n*(2-n%2))]-n]`
-/

namespace A005998.P1482218161557401844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P1482218161557401844

namespace A005998

/-- `∑[∑[or(1, n*(2-n%2))]-n]` -/
def P1482218161557401844.Spec : Prop :=
  ∀ n, P1482218161557401844.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P14046956027503788003

`∑[2*A211539(n)+1]`
-/

namespace A005998.P14046956027503788003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211539 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P14046956027503788003

namespace A005998

/-- `∑[2*A211539(n)+1]` -/
def P14046956027503788003.Spec : Prop :=
  ∀ n, P14046956027503788003.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P11764355681244642183

`A005997(n+1)-∑[n]`
-/

namespace A005998.P11764355681244642183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005997 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A005998.P11764355681244642183

namespace A005998

/-- `A005997(n+1)-∑[n]` -/
def P11764355681244642183.Spec : Prop :=
  ∀ n, P11764355681244642183.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P9291440376952148779

`∑[A309805(n+1)-n]`
-/

namespace A005998.P9291440376952148779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P9291440376952148779

namespace A005998

/-- `∑[A309805(n+1)-n]` -/
def P9291440376952148779.Spec : Prop :=
  ∀ n, P9291440376952148779.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P10294297062334269541

`∑[∑[A133090(n+1)]-n]`
-/

namespace A005998.P10294297062334269541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P10294297062334269541

namespace A005998

/-- `∑[∑[A133090(n+1)]-n]` -/
def P10294297062334269541.Spec : Prop :=
  ∀ n, P10294297062334269541.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P10947904716178484548

`A005996(n+1)-(n+1)²`
-/

namespace A005998.P10947904716178484548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A005998.P10947904716178484548

namespace A005998

/-- `A005996(n+1)-(n+1)²` -/
def P10947904716178484548.Spec : Prop :=
  ∀ n, P10947904716178484548.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P5387479491176879314

`∑[A135370(n+1)-2*n]`
-/

namespace A005998.P5387479491176879314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135370 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P5387479491176879314

namespace A005998

/-- `∑[A135370(n+1)-2*n]` -/
def P5387479491176879314.Spec : Prop :=
  ∀ n, P5387479491176879314.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P17165245183415062888

`∑[∑[3*n-A059029(n)]+1]`
-/

namespace A005998.P17165245183415062888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A059029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005998.P17165245183415062888

namespace A005998

/-- `∑[∑[3*n-A059029(n)]+1]` -/
def P17165245183415062888.Spec : Prop :=
  ∀ n, P17165245183415062888.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P9069240427299362894

`abs(1-(n+2)*(A002620(n)+1))`
-/

namespace A005998.P9069240427299362894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n + 2 : ℤ) * (A002620 n + 1)|

end

end A005998.P9069240427299362894

namespace A005998

/-- `abs(1-(n+2)*(A002620(n)+1))` -/
def P9069240427299362894.Spec : Prop :=
  ∀ n, P9069240427299362894.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P17742101962247850430

`A019298(n)+A008805(n)`
-/

namespace A005998.P17742101962247850430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + A008805 n

end

end A005998.P17742101962247850430

namespace A005998

/-- `A019298(n)+A008805(n)` -/
def P17742101962247850430.Spec : Prop :=
  ∀ n, P17742101962247850430.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P11433321923092201946

`A059329(n)+A006584(n)`
-/

namespace A005998.P11433321923092201946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n + A006584 n

end

end A005998.P11433321923092201946

namespace A005998

/-- `A059329(n)+A006584(n)` -/
def P11433321923092201946.Spec : Prop :=
  ∀ n, P11433321923092201946.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P2111266774747737272

`A109622(n)+A004006(n)`
-/

namespace A005998.P2111266774747737272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109622 n + A004006 n

end

end A005998.P2111266774747737272

namespace A005998

/-- `A109622(n)+A004006(n)` -/
def P2111266774747737272.Spec : Prop :=
  ∀ n, P2111266774747737272.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P7251234456118569051

`A257083(n)+A212561(n)`
-/

namespace A005998.P7251234456118569051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + A212561 n

end

end A005998.P7251234456118569051

namespace A005998

/-- `A257083(n)+A212561(n)` -/
def P7251234456118569051.Spec : Prop :=
  ∀ n, P7251234456118569051.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P8614144237904099984

`A161680(n)+A005999(n+1)`
-/

namespace A005998.P8614144237904099984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A005999 (n + 1)

end

end A005998.P8614144237904099984

namespace A005998

/-- `A161680(n)+A005999(n+1)` -/
def P8614144237904099984.Spec : Prop :=
  ∀ n, P8614144237904099984.a n = A005998 (n + 1)

end A005998

/-! ## A005998.P3053359314313617190

`A280186(n)+A014112(n+1)`
-/

namespace A005998.P3053359314313617190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n + A014112 (n + 1)

end

end A005998.P3053359314313617190

namespace A005998

/-- `A280186(n)+A014112(n+1)` -/
def P3053359314313617190.Spec : Prop :=
  ∀ n, P3053359314313617190.a n = A005998 (n + 1)

end A005998

/-!
# A005999: Number of paraffins.

The programs for A005999, the canonical program `A005999.P10147716973400053761` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005999 has offset 1).

The definition of A005999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005999.P5420865126956276740

`1/8*(2*(n+1)^3-6*(n+1)²+17*(n+1)-7-(n+2)*(-1)^(n+1))`
-/

namespace A005999.P5420865126956276740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * ((2 * (n + 1) ^ 3 : ℤ) - (6 * (n + 1) ^ 2 : ℤ) + (17 * (n + 1) : ℤ) - 7 - (n + 2 : ℤ) * (-1) ^ (n + 1) : ℚ)

end

end A005999.P5420865126956276740

namespace A005999

/-- `1/8*(2*(n+1)^3-6*(n+1)²+17*(n+1)-7-(n+2)*(-1)^(n+1))` -/
def P5420865126956276740.Spec : Prop :=
  ∀ n, P5420865126956276740.a n = (A005999 (n + 1) : ℚ)

end A005999

/-! ## A005999.P10147716973400053761

`A005997(n+1)-n²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005999

/-- `A005997(n+1)-n²` -/
def P10147716973400053761.Spec : Prop :=
  ∀ n, P10147716973400053761.a n = A005999 (n + 1)

theorem P10147716973400053761.correct : P10147716973400053761.Spec := by
  intro n
  simp only [A005999, Nat.add_sub_cancel]

end A005999

/-! ## A005999.P17964507240801895254

`∑[∑[char[2*n]]²]+C(n, 3)`
-/

namespace A005999.P17964507240801895254
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A005999.P17964507240801895254

namespace A005999

/-- `∑[∑[char[2*n]]²]+C(n, 3)` -/
def P17964507240801895254.Spec : Prop :=
  ∀ n, (P17964507240801895254.a n : ℤ) = A005999 (n + 1)

end A005999

/-! ## A005999.P8305351746623954953

`∑[∑[lcm(2, n+1)-1]]-n²`
-/

namespace A005999.P8305351746623954953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A005999.P8305351746623954953

namespace A005999

/-- `∑[∑[lcm(2, n+1)-1]]-n²` -/
def P8305351746623954953.Spec : Prop :=
  ∀ n, P8305351746623954953.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P6441638388777023527

`∑[∑[or(1, n*gcd(2, n))]]-n²`
-/

namespace A005999.P6441638388777023527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A005999.P6441638388777023527

namespace A005999

/-- `∑[∑[or(1, n*gcd(2, n))]]-n²` -/
def P6441638388777023527.Spec : Prop :=
  ∀ n, P6441638388777023527.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P17096418461339328912

`∑[∑[C(xor(1, n), n)+n]]-n²`
-/

namespace A005999.P17096418461339328912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A005999.P17096418461339328912

namespace A005999

/-- `∑[∑[C(xor(1, n), n)+n]]-n²` -/
def P17096418461339328912.Spec : Prop :=
  ∀ n, P17096418461339328912.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P1077846433156049517

`(n+2)*∑[or(1, n)/2]-n²`
-/

namespace A005999.P1077846433156049517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n ^ 2 : ℚ)

end

end A005999.P1077846433156049517

namespace A005999

/-- `(n+2)*∑[or(1, n)/2]-n²` -/
def P1077846433156049517.Spec : Prop :=
  ∀ n, P1077846433156049517.a n = (A005999 (n + 1) : ℚ)

end A005999

/-! ## A005999.P1435141604663752497

`∑[A309805(n+1)]-n²`
-/

namespace A005999.P1435141604663752497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A005999.P1435141604663752497

namespace A005999

/-- `∑[A309805(n+1)]-n²` -/
def P1435141604663752497.Spec : Prop :=
  ∀ n, P1435141604663752497.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P6924813140278967195

`A246695(n)-A077043(n)`
-/

namespace A005999.P6924813140278967195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n - A077043 n

end

end A005999.P6924813140278967195

namespace A005999

/-- `A246695(n)-A077043(n)` -/
def P6924813140278967195.Spec : Prop :=
  ∀ n, P6924813140278967195.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P12831463887087130898

`A213389(n)+A123684(n+1)`
-/

namespace A005999.P12831463887087130898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + A123684 (n + 1)

end

end A005999.P12831463887087130898

namespace A005999

/-- `A213389(n)+A123684(n+1)` -/
def P12831463887087130898.Spec : Prop :=
  ∀ n, P12831463887087130898.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P15744171842610844804

`A212561(n)+A140144(n+1)`
-/

namespace A005999.P15744171842610844804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 n + A140144 (n + 1)

end

end A005999.P15744171842610844804

namespace A005999

/-- `A212561(n)+A140144(n+1)` -/
def P15744171842610844804.Spec : Prop :=
  ∀ n, P15744171842610844804.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P17707098318461882907

`A005998(n+1)-A161680(n)`
-/

namespace A005999.P17707098318461882907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005998 (n + 1) - A161680 n

end

end A005999.P17707098318461882907

namespace A005999

/-- `A005998(n+1)-A161680(n)` -/
def P17707098318461882907.Spec : Prop :=
  ∀ n, P17707098318461882907.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P7548686456316303076

`∑[A309805(n+1)-A004273(n)]`
-/

namespace A005999.P7548686456316303076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005999.P7548686456316303076

namespace A005999

/-- `∑[A309805(n+1)-A004273(n)]` -/
def P7548686456316303076.Spec : Prop :=
  ∀ n, P7548686456316303076.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P12102697421851692810

`∑[∑[A289207(n)]+A008619(n)²]`
-/

namespace A005999.P12102697421851692810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005999.P12102697421851692810

namespace A005999

/-- `∑[∑[A289207(n)]+A008619(n)²]` -/
def P12102697421851692810.Spec : Prop :=
  ∀ n, P12102697421851692810.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P14972935569053095968

`A005996(n+1)-A005448(n+1)`
-/

namespace A005999.P14972935569053095968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1) - A005448 (n + 1)

end

end A005999.P14972935569053095968

namespace A005999

/-- `A005996(n+1)-A005448(n+1)` -/
def P14972935569053095968.Spec : Prop :=
  ∀ n, P14972935569053095968.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P4637404771812963227

`∑[∑[2*A026741(n+1)]-A008486(n)]`
-/

namespace A005999.P4637404771812963227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005999.P4637404771812963227

namespace A005999

/-- `∑[∑[2*A026741(n+1)]-A008486(n)]` -/
def P4637404771812963227.Spec : Prop :=
  ∀ n, P4637404771812963227.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P14271707465064226506

`A000332(n+1)+A005993(n)-A000332(n)`
-/

namespace A005999.P14271707465064226506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A005993 n - A000332 n)

end

end A005999.P14271707465064226506

namespace A005999

/-- `A000332(n+1)+A005993(n)-A000332(n)` -/
def P14271707465064226506.Spec : Prop :=
  ∀ n, P14271707465064226506.a n = A005999 (n + 1)

end A005999

/-! ## A005999.P16526999487983264489

`A000027(A005993(n)+C(n, 3))`
-/

namespace A005999.P16526999487983264489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005993 n + (Nat.choose n 3 : ℤ)).toNat

end

end A005999.P16526999487983264489

namespace A005999

/-- `A000027(A005993(n)+C(n, 3))` -/
def P16526999487983264489.Spec : Prop :=
  ∀ n, P16526999487983264489.a n = A005999 (n + 1)

end A005999

