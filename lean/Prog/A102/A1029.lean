import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B010.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
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
# A102900: a(n) = 3*a(n-1) + 4*a(n-2), a(0)=a(1)=1.

The programs for A102900, the canonical program `A102900.P3721317090696560239` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102900 has offset 0).

The definition of A102900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A102900.P3721317090696560239`, by `A102900.P3721317090696560239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102900.P2774127504130110321

`ceil(4^n/5)+floor(4^n/5)`
-/

namespace A102900.P2774127504130110321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 5⌉ + ⌊(4 ^ n : ℚ) / 5⌋

end

end A102900.P2774127504130110321

namespace A102900

/-- `ceil(4^n/5)+floor(4^n/5)` -/
def P2774127504130110321.Spec : Prop :=
  ∀ n, P2774127504130110321.a n = A102900 n

end A102900

/-! ## A102900.P3721317090696560239

`3*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102900

/-- `3*a(n-1)+4*a(n-2)` -/
def P3721317090696560239.Spec : Prop :=
  ∀ n, (P3721317090696560239.a n : ℤ) = A102900 n

theorem P3721317090696560239.correct : P3721317090696560239.Spec := by
  intro n
  simp only [A102900]

end A102900

/-! ## A102900.P2461113011054016461

`ogf((-1+2x)/(-1+3x+4x^2))`
-/

namespace A102900.P2461113011054016461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, -4] n

end

end A102900.P2461113011054016461

namespace A102900

/-- `ogf((-1+2x)/(-1+3x+4x^2))` -/
def P2461113011054016461.Spec : Prop :=
  ∀ n, P2461113011054016461.a n = A102900 n

end A102900

/-! ## A102900.P6023256968684752346

`or(1, floor(2*4^n/5))`
-/

namespace A102900.P6023256968684752346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * ((4 ^ n : ℚ) / 5)⌋

end

end A102900.P6023256968684752346

namespace A102900

/-- `or(1, floor(2*4^n/5))` -/
def P6023256968684752346.Spec : Prop :=
  ∀ n, P6023256968684752346.a n = A102900 n

end A102900

/-! ## A102900.P10266192081749384066

`floor(4^n/2-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A102900.P10266192081749384066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(4 ^ n : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A102900.P10266192081749384066

namespace A102900

/-- `floor(4^n/2-a(n-1))` -/
def P10266192081749384066.Spec : Prop :=
  ∀ n, P10266192081749384066.a n = A102900 n

end A102900

/-! ## A102900.P17267226237737914981

`lcm((-1)^n, ∑[ceil((-4)^n/2)])`
-/

namespace A102900.P17267226237737914981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((-4) ^ n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102900.P17267226237737914981

namespace A102900

/-- `lcm((-1)^n, ∑[ceil((-4)^n/2)])` -/
def P17267226237737914981.Spec : Prop :=
  ∀ n, (P17267226237737914981.a n : ℤ) = A102900 n

end A102900

/-! ## A102900.P5499035839835924482

`(4^n-a(n-1)-a(n-1))/2` with `a(0)=1`
-/

namespace A102900.P5499035839835924482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℚ) - a (n - 1) - a (n - 1)) / 2

end

end A102900.P5499035839835924482

namespace A102900

/-- `(4^n-a(n-1)-a(n-1))/2` -/
def P5499035839835924482.Spec : Prop :=
  ∀ n, P5499035839835924482.a n = (A102900 n : ℚ)

end A102900

/-! ## A102900.P14689935305047827018

`xor(3*a(n-1), ∑[ceil(2^(2*n-3))])` with `a(0)=1`
-/

namespace A102900.P14689935305047827018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (3 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102900.P14689935305047827018

namespace A102900

/-- `xor(3*a(n-1), ∑[ceil(2^(2*n-3))])` -/
def P14689935305047827018.Spec : Prop :=
  ∀ n, P14689935305047827018.a n = A102900 n

end A102900

/-! ## A102900.P1312096307234890752

`(∑[2*a(n-1)]²-2*a(n-1))/2` with `a(0)=1, a(1)=1`
-/

namespace A102900.P1312096307234890752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) - 2 * a (n - 1)) / 2

end

end A102900.P1312096307234890752

namespace A102900

/-- `(∑[2*a(n-1)]²-2*a(n-1))/2` -/
def P1312096307234890752.Spec : Prop :=
  ∀ n, P1312096307234890752.a n = (A102900 n : ℚ)

end A102900

/-! ## A102900.P5805773162295510488

`A007909(2*n)`
-/

namespace A102900.P5805773162295510488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (2 * n)

end

end A102900.P5805773162295510488

namespace A102900

/-- `A007909(2*n)` -/
def P5805773162295510488.Spec : Prop :=
  ∀ n, P5805773162295510488.a n = A102900 n

end A102900

/-! ## A102900.P4926421788909657628

`A274845(4*n)`
-/

namespace A102900.P4926421788909657628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (4 * n)

end

end A102900.P4926421788909657628

namespace A102900

/-- `A274845(4*n)` -/
def P4926421788909657628.Spec : Prop :=
  ∀ n, P4926421788909657628.a n = A102900 n

end A102900

/-! ## A102900.P8279268236739538301

`abs(∑[A009117(n)])`
-/

namespace A102900.P8279268236739538301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A102900.P8279268236739538301

namespace A102900

/-- `abs(∑[A009117(n)])` -/
def P8279268236739538301.Spec : Prop :=
  ∀ n, P8279268236739538301.a n = A102900 n

end A102900

/-! ## A102900.P1499391559962806824

`Δ[A115851(Δ[n²])]`
-/

namespace A102900.P1499391559962806824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102900.P1499391559962806824

namespace A102900

/-- `Δ[A115851(Δ[n²])]` -/
def P1499391559962806824.Spec : Prop :=
  ∀ n, P1499391559962806824.a n = A102900 n

end A102900

/-! ## A102900.P7395397258182465324

`A190569(A004273(n))`
-/

namespace A102900.P7395397258182465324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 (A004273 n).toNat

end

end A102900.P7395397258182465324

namespace A102900

/-- `A190569(A004273(n))` -/
def P7395397258182465324.Spec : Prop :=
  ∀ n, P7395397258182465324.a n = A102900 n

end A102900

/-! ## A102900.P4846900853832733792

`xor(A037481(n), A059841(n))`
-/

namespace A102900.P4846900853832733792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037481 n) (A059841 n)

end

end A102900.P4846900853832733792

namespace A102900

/-- `xor(A037481(n), A059841(n))` -/
def P4846900853832733792.Spec : Prop :=
  ∀ n, P4846900853832733792.a n = A102900 n

end A102900

/-! ## A102900.P13703704890996711183

`xor(A007583(n), A115243(n))`
-/

namespace A102900.P13703704890996711183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007583 n) (A115243 n)

end

end A102900.P13703704890996711183

namespace A102900

/-- `xor(A007583(n), A115243(n))` -/
def P13703704890996711183.Spec : Prop :=
  ∀ n, P13703704890996711183.a n = A102900 n

end A102900

/-! ## A102900.P9641217281201365176

`xor(A010674(n), A363773(n))`
-/

namespace A102900.P9641217281201365176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A363773 n)

end

end A102900.P9641217281201365176

namespace A102900

/-- `xor(A010674(n), A363773(n))` -/
def P9641217281201365176.Spec : Prop :=
  ∀ n, P9641217281201365176.a n = A102900 n

end A102900

/-! ## A102900.P17102501571502192973

`xor(A080674(n), A108981(n))`
-/

namespace A102900.P17102501571502192973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080674 n) (A108981 n)

end

end A102900.P17102501571502192973

namespace A102900

/-- `xor(A080674(n), A108981(n))` -/
def P17102501571502192973.Spec : Prop :=
  ∀ n, P17102501571502192973.a n = A102900 n

end A102900

/-! ## A102900.P17486574132521675919

`A189738(n+1)%A201455(n)`
-/

namespace A102900.P17486574132521675919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189738 (n + 1)) (A201455 n)

end

end A102900.P17486574132521675919

namespace A102900

/-- `A189738(n+1)%A201455(n)` -/
def P17486574132521675919.Spec : Prop :=
  ∀ n, P17486574132521675919.a n = A102900 n

end A102900

/-!
# A102901: a(n) = a(n-1) + 6*a(n-2), a(0)=1, a(1)=0.

The programs for A102901, the canonical program `A102901.P7368539146466770005` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102901 has offset 0).

The definition of A102901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-2)` (program `A102901.P7368539146466770005`, by `A102901.P7368539146466770005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102901.P7368539146466770005

`a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102901

/-- `a(n-1)+6*a(n-2)` -/
def P7368539146466770005.Spec : Prop :=
  ∀ n, (P7368539146466770005.a n : ℤ) = A102901 n

theorem P7368539146466770005.correct : P7368539146466770005.Spec := by
  intro n
  simp only [A102901]

end A102901

/-! ## A102901.P13794429554321580678

`(2*3^n+3*(-2)^n)/5`
-/

namespace A102901.P13794429554321580678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 3 ^ n : ℤ) + 3 * (-2) ^ n : ℚ) / 5

end

end A102901.P13794429554321580678

namespace A102901

/-- `(2*3^n+3*(-2)^n)/5` -/
def P13794429554321580678.Spec : Prop :=
  ∀ n, P13794429554321580678.a n = (A102901 n : ℚ)

theorem P13794429554321580678.correct : P13794429554321580678.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A102901, Nat.add_sub_cancel, A102901.P13794429554321580678.a, A102901.P7368539146466770005.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A102901, Nat.add_sub_cancel, A102901.P13794429554321580678.a, A102901.P7368539146466770005.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102901

/-! ## A102901.P3684225907582399879

`ogf((-1+x)/(-1+x+6x^2))`
-/

namespace A102901.P3684225907582399879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -6] n

end

end A102901.P3684225907582399879

namespace A102901

/-- `ogf((-1+x)/(-1+x+6x^2))` -/
def P3684225907582399879.Spec : Prop :=
  ∀ n, P3684225907582399879.a n = A102901 n

end A102901

/-! ## A102901.P7113821328801926753

`2*(3^(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A102901.P7113821328801926753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A102901.P7113821328801926753

namespace A102901

/-- `2*(3^(n-1)-a(n-1))` -/
def P7113821328801926753.Spec : Prop :=
  ∀ n, P7113821328801926753.a n = (A102901 n : ℚ)

end A102901

/-! ## A102901.P6012084896001810305

`lcm(2, 3^(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A102901.P6012084896001810305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)))

end

end A102901.P6012084896001810305

namespace A102901

/-- `lcm(2, 3^(n-1)-a(n-1))` -/
def P6012084896001810305.Spec : Prop :=
  ∀ n, (P6012084896001810305.a n : ℤ) = A102901 n

end A102901

/-! ## A102901.P13194173732176486726

`7*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A102901.P13194173732176486726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  7 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A102901.P13194173732176486726

namespace A102901

/-- `7*a(n-2)-(a(n-2)-a(n-1))` -/
def P13194173732176486726.Spec : Prop :=
  ∀ n, P13194173732176486726.a n = A102901 n

end A102901

/-! ## A102901.P10531721759226512657

`Δ[A015441(n)]`
-/

namespace A102901.P10531721759226512657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102901.P10531721759226512657

namespace A102901

/-- `Δ[A015441(n)]` -/
def P10531721759226512657.Spec : Prop :=
  ∀ n, P10531721759226512657.a n = A102901 n

end A102901

/-! ## A102901.P15887316704660040475

`Δ[abs(A091005(n+1))]`
-/

namespace A102901.P15887316704660040475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102901.P15887316704660040475

namespace A102901

/-- `Δ[abs(A091005(n+1))]` -/
def P15887316704660040475.Spec : Prop :=
  ∀ n, P15887316704660040475.a n = A102901 n

end A102901

/-! ## A102901.P16368898988782235229

`A232015(n)+A015441(n)`
-/

namespace A102901.P16368898988782235229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 n + A015441 n

end

end A102901.P16368898988782235229

namespace A102901

/-- `A232015(n)+A015441(n)` -/
def P16368898988782235229.Spec : Prop :=
  ∀ n, P16368898988782235229.a n = A102901 n

end A102901

/-! ## A102901.P18050891495890269600

`A091002(n)+∑[A232015(n)]`
-/

namespace A102901.P18050891495890269600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102901.P18050891495890269600

namespace A102901

/-- `A091002(n)+∑[A232015(n)]` -/
def P18050891495890269600.Spec : Prop :=
  ∀ n, P18050891495890269600.a n = A102901 n

end A102901

/-! ## A102901.P6043551325941643188

`Δ[A091002(n)+A091001(n)]`
-/

namespace A102901.P6043551325941643188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + A091001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102901.P6043551325941643188

namespace A102901

/-- `Δ[A091002(n)+A091001(n)]` -/
def P6043551325941643188.Spec : Prop :=
  ∀ n, P6043551325941643188.a n = A102901 n

end A102901

/-! ## A102901.P9552088293910764698

`A091002(n)+A091001(n+1)`
-/

namespace A102901.P9552088293910764698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + A091001 (n + 1)

end

end A102901.P9552088293910764698

namespace A102901

/-- `A091002(n)+A091001(n+1)` -/
def P9552088293910764698.Spec : Prop :=
  ∀ n, P9552088293910764698.a n = A102901 n

end A102901

/-! ## A102901.P14208317699722128960

`A015441(n+1)-A015441(n)`
-/

namespace A102901.P14208317699722128960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (n + 1) - A015441 n

end

end A102901.P14208317699722128960

namespace A102901

/-- `A015441(n+1)-A015441(n)` -/
def P14208317699722128960.Spec : Prop :=
  ∀ n, P14208317699722128960.a n = A102901 n

end A102901

/-! ## A102901.P10238493797007221888

`A094555(n+1)-A091001(n)`
-/

namespace A102901.P10238493797007221888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) - A091001 n

end

end A102901.P10238493797007221888

namespace A102901

/-- `A094555(n+1)-A091001(n)` -/
def P10238493797007221888.Spec : Prop :=
  ∀ n, P10238493797007221888.a n = A102901 n

end A102901

/-! ## A102901.P14821232938970926693

`A094556(n+1)-A091002(n)`
-/

namespace A102901.P14821232938970926693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 (n + 1) - A091002 n

end

end A102901.P14821232938970926693

namespace A102901

/-- `A094556(n+1)-A091002(n)` -/
def P14821232938970926693.Spec : Prop :=
  ∀ n, P14821232938970926693.a n = A102901 n

end A102901

/-! ## A102901.P14775790581669353406

`A122803(n)+2*A015441(n)`
-/

namespace A102901.P14775790581669353406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n + 2 * A015441 n

end

end A102901.P14775790581669353406

namespace A102901

/-- `A122803(n)+2*A015441(n)` -/
def P14775790581669353406.Spec : Prop :=
  ∀ n, P14775790581669353406.a n = A102901 n

end A102901

/-! ## A102901.P2139904794637471180

`2*A232015(n)-A122803(n)`
-/

namespace A102901.P2139904794637471180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232015 n - A122803 n

end

end A102901.P2139904794637471180

namespace A102901

/-- `2*A232015(n)-A122803(n)` -/
def P2139904794637471180.Spec : Prop :=
  ∀ n, P2139904794637471180.a n = A102901 n

end A102901

/-! ## A102901.P13070217697126520042

`A091002(n+1)+A232015(n)-A091002(n)`
-/

namespace A102901.P13070217697126520042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 1) + (A232015 n - A091002 n)

end

end A102901.P13070217697126520042

namespace A102901

/-- `A091002(n+1)+A232015(n)-A091002(n)` -/
def P13070217697126520042.Spec : Prop :=
  ∀ n, P13070217697126520042.a n = A102901 n

end A102901

/-! ## A102901.P8314171930471952166

`Δ[Δ[A091002(n)]]`
-/

namespace A102901.P8314171930471952166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102901.P8314171930471952166

namespace A102901

/-- `Δ[Δ[A091002(n)]]` -/
def P8314171930471952166.Spec : Prop :=
  ∀ n, P8314171930471952166.a n = A102901 n

end A102901

/-! ## A102901.P6512443442940352727

`A025192(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A102901.P6512443442940352727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025192 n - 2 * a (n - 1)

end

end A102901.P6512443442940352727

namespace A102901

/-- `A025192(n)-2*a(n-1)` -/
def P6512443442940352727.Spec : Prop :=
  ∀ n, P6512443442940352727.a n = A102901 n

end A102901

/-!
# A102902: a(n) = 9*a(n-1) - 16*a(n-2), with a(0) = 1, a(1) = 9.

The programs for A102902, the canonical program `A102902.P7039531879404260944` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102902 has offset 0).

The definition of A102902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-16*a(n-2)` (program `A102902.P7039531879404260944`, by `A102902.P7039531879404260944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102902.P7039531879404260944

`9*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102902

/-- `9*a(n-1)-16*a(n-2)` -/
def P7039531879404260944.Spec : Prop :=
  ∀ n, P7039531879404260944.a n = A102902 n

theorem P7039531879404260944.correct : P7039531879404260944.Spec := by
  intro n
  simp only [A102902]

end A102902

/-! ## A102902.P7847234892483851557

`((9+sqrt(17))^(n+1)-(9-sqrt(17))^(n+1))/(2^(n+1)*sqrt(17))`
-/

namespace A102902.P7847234892483851557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (17 : ℝ)) ^ (n + 1) - (9 - Real.sqrt (17 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (17 : ℝ))

end

end A102902.P7847234892483851557

namespace A102902

/-- `((9+sqrt(17))^(n+1)-(9-sqrt(17))^(n+1))/(2^(n+1)*sqrt(17))` -/
def P7847234892483851557.Spec : Prop :=
  ∀ n, P7847234892483851557.a n = (A102902 n : ℝ)

end A102902

/-! ## A102902.P13532257893580940857

`ogf(1/(1-9x+16x^2))`
-/

namespace A102902.P13532257893580940857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 16] n

end

end A102902.P13532257893580940857

namespace A102902

/-- `ogf(1/(1-9x+16x^2))` -/
def P13532257893580940857.Spec : Prop :=
  ∀ n, P13532257893580940857.a n = A102902 n

end A102902

/-! ## A102902.P11512430023562300026

`A006131(Δ[n²])`
-/

namespace A102902.P11512430023562300026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102902.P11512430023562300026

namespace A102902

/-- `A006131(Δ[n²])` -/
def P11512430023562300026.Spec : Prop :=
  ∀ n, P11512430023562300026.a n = A102902 n

end A102902

/-! ## A102902.P14399282028376971671

`∑[A159612(Δ[n²])]`
-/

namespace A102902.P14399282028376971671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159612 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102902.P14399282028376971671

namespace A102902

/-- `∑[A159612(Δ[n²])]` -/
def P14399282028376971671.Spec : Prop :=
  ∀ n, P14399282028376971671.a n = A102902 n

end A102902

/-! ## A102902.P14299402661630335836

`A099580(2*(n+1))`
-/

namespace A102902.P14299402661630335836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099580 (2 * (n + 1))

end

end A102902.P14299402661630335836

namespace A102902

/-- `A099580(2*(n+1))` -/
def P14299402661630335836.Spec : Prop :=
  ∀ n, P14299402661630335836.a n = A102902 n

end A102902

/-! ## A102902.P1515476737062496541

`record[A006131(n*n%2)]`
-/

namespace A102902.P1515476737062496541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102902.P1515476737062496541

namespace A102902

/-- `record[A006131(n*n%2)]` -/
def P1515476737062496541.Spec : Prop :=
  ∀ n, P1515476737062496541.a n = A102902 n

end A102902

/-! ## A102902.P10932862761985860024

`A265987(2*(n+1))-1`
-/

namespace A102902.P10932862761985860024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265987 (2 * (n + 1)) - 1

end

end A102902.P10932862761985860024

namespace A102902

/-- `A265987(2*(n+1))-1` -/
def P10932862761985860024.Spec : Prop :=
  ∀ n, P10932862761985860024.a n = A102902 n

end A102902

/-! ## A102902.P4496779899907989085

`2*A344261(2*n+1)+1`
-/

namespace A102902.P4496779899907989085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344261 (2 * n + 1) + 1

end

end A102902.P4496779899907989085

namespace A102902

/-- `2*A344261(2*n+1)+1` -/
def P4496779899907989085.Spec : Prop :=
  ∀ n, P4496779899907989085.a n = A102902 n

end A102902

/-! ## A102902.P3235437027228390178

`2*A344236(2*n+1)-1`
-/

namespace A102902.P3235437027228390178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344236 (2 * n + 1) - 1

end

end A102902.P3235437027228390178

namespace A102902

/-- `2*A344236(2*n+1)-1` -/
def P3235437027228390178.Spec : Prop :=
  ∀ n, P3235437027228390178.a n = A102902 n

end A102902

/-! ## A102902.P6620762186278682109

`record[A006131(A004442(n))]`
-/

namespace A102902.P6620762186278682109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102902.P6620762186278682109

namespace A102902

/-- `record[A006131(A004442(n))]` -/
def P6620762186278682109.Spec : Prop :=
  ∀ n, P6620762186278682109.a n = A102902 n

end A102902

/-! ## A102902.P3207060035214508995

`record[A006131(A026741(n))]`
-/

namespace A102902.P3207060035214508995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102902.P3207060035214508995

namespace A102902

/-- `record[A006131(A026741(n))]` -/
def P3207060035214508995.Spec : Prop :=
  ∀ n, P3207060035214508995.a n = A102902 n

end A102902

/-! ## A102902.P4803657925704770701

`or(1, A006131(A005408(n)))`
-/

namespace A102902.P4803657925704770701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006131 (A005408 n).toNat)

end

end A102902.P4803657925704770701

namespace A102902

/-- `or(1, A006131(A005408(n)))` -/
def P4803657925704770701.Spec : Prop :=
  ∀ n, P4803657925704770701.a n = A102902 n

end A102902

/-! ## A102902.P13071648131971606152

`A006131(n)*A072265(n+1)`
-/

namespace A102902.P13071648131971606152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n * A072265 (n + 1)

end

end A102902.P13071648131971606152

namespace A102902

/-- `A006131(n)*A072265(n+1)` -/
def P13071648131971606152.Spec : Prop :=
  ∀ n, P13071648131971606152.a n = A102902 n

end A102902

/-! ## A102902.P7957098963608203298

`A072265(n+1)*A190864(2*n)`
-/

namespace A102902.P7957098963608203298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 (n + 1) * A190864 (2 * n)

end

end A102902.P7957098963608203298

namespace A102902

/-- `A072265(n+1)*A190864(2*n)` -/
def P7957098963608203298.Spec : Prop :=
  ∀ n, P7957098963608203298.a n = A102902 n

end A102902

/-! ## A102902.P9247004348357984949

`A006131(2*n+1)+A000007(n+1)`
-/

namespace A102902.P9247004348357984949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (2 * n + 1) + A000007 (n + 1)

end

end A102902.P9247004348357984949

namespace A102902

/-- `A006131(2*n+1)+A000007(n+1)` -/
def P9247004348357984949.Spec : Prop :=
  ∀ n, P9247004348357984949.a n = A102902 n

end A102902

/-! ## A102902.P18196330944660457700

`A052923(2*n+1)+A006131(2*n)`
-/

namespace A102902.P18196330944660457700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (2 * n + 1) + A006131 (2 * n)

end

end A102902.P18196330944660457700

namespace A102902

/-- `A052923(2*n+1)+A006131(2*n)` -/
def P18196330944660457700.Spec : Prop :=
  ∀ n, P18196330944660457700.a n = A102902 n

end A102902

/-! ## A102902.P3770718473086779965

`A176738(2*n+1)+A176738(2*n)`
-/

namespace A102902.P3770718473086779965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176738 (2 * n + 1) + A176738 (2 * n)

end

end A102902.P3770718473086779965

namespace A102902

/-- `A176738(2*n+1)+A176738(2*n)` -/
def P3770718473086779965.Spec : Prop :=
  ∀ n, P3770718473086779965.a n = A102902 n

end A102902

/-! ## A102902.P12923199232071955260

`∑[A052923(2*n+1)+A052923(2*n)]`
-/

namespace A102902.P12923199232071955260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (2 * n + 1) + A052923 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102902.P12923199232071955260

namespace A102902

/-- `∑[A052923(2*n+1)+A052923(2*n)]` -/
def P12923199232071955260.Spec : Prop :=
  ∀ n, P12923199232071955260.a n = A102902 n

end A102902

/-! ## A102902.P7704750169691065472

`A026581(2*n)+A052923(2*n+1)/2`
-/

namespace A102902.P7704750169691065472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 (2 * n) : ℚ) + (A052923 (2 * n + 1) : ℚ) / 2

end

end A102902.P7704750169691065472

namespace A102902

/-- `A026581(2*n)+A052923(2*n+1)/2` -/
def P7704750169691065472.Spec : Prop :=
  ∀ n, P7704750169691065472.a n = (A102902 n : ℚ)

end A102902

/-!
# A102903: Primes of the form 3^k + 4.

The programs for A102903, there is no canonical definition to state claims against.
-/

/-! ## A102903.P9511140735434219699

`3^A058958(n+1)+4`
-/

namespace A102903.P9511140735434219699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A058958 (n + 1) : ℤ) + 4

end

end A102903.P9511140735434219699

/-! ## A102903.P10217019119244811824

`A168609(A058958(n+1))`
-/

namespace A102903.P10217019119244811824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168609 (A058958 (n + 1)).toNat

end

end A102903.P10217019119244811824

/-! ## A102903.P7363522714728765388

`∩[A004051(n+1), A168609(n)]`
-/

namespace A102903.P7363522714728765388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168609 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102903.P7363522714728765388

/-! ## A102903.P10930244402371969819

`3^eq[3, A243095(A028310(n))]+4`
-/

namespace A102903.P10930244402371969819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A102903.P10930244402371969819

/-! ## A102903.P11413670744547146891

`3^eq[3, A243095(A233583(n+1))]+4`
-/

namespace A102903.P11413670744547146891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A102903.P11413670744547146891

/-!
# A102904: Primes of the form 3^k + 20.

The programs for A102904, there is no canonical definition to state claims against.
-/

/-! ## A102904.P7061515288790812814

`3^A219040(n+1)+20`
-/

namespace A102904.P7061515288790812814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219040 (n + 1) : ℤ) + 20

end

end A102904.P7061515288790812814

/-! ## A102904.P16540865837562286283

`A205646(A219040(n+1))+4`
-/

namespace A102904.P16540865837562286283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 (A219040 (n + 1)).toNat + 4

end

end A102904.P16540865837562286283

/-! ## A102904.P8187769361562257061

`p?[3^n+20]`
-/

namespace A102904.P8187769361562257061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102904.P8187769361562257061

/-! ## A102904.P14212392954726216484

`or(1, p?[∑[3*a(n-1)]])` with `a(0)=6, a(1)=15, a(2)=2`
-/

namespace A102904.P14212392954726216484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 15, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A102904.P14212392954726216484

/-!
# A102905: a(n) = A113655(Fibonacci(n+1)).

The programs for A102905, the canonical program `A102905.P4240375732378782734` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102905 has offset 0).

The definition of A102905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102905.P4240375732378782734

`A157726(n+1)-A157729(3*(n+1))%6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102905

/-- `A157726(n+1)-A157729(3*(n+1))%6` -/
def P4240375732378782734.Spec : Prop :=
  ∀ n, P4240375732378782734.a n = A102905 n

theorem P4240375732378782734.correct : P4240375732378782734.Spec := by
  intro n
  simp only [A102905]

end A102905

/-! ## A102905.P338508507464602876

`A008458(A293543(n+1))-A157725(n+1)`
-/

namespace A102905.P338508507464602876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A293543 (n + 1)).toNat - A157725 (n + 1)

end

end A102905.P338508507464602876

namespace A102905

/-- `A008458(A293543(n+1))-A157725(n+1)` -/
def P338508507464602876.Spec : Prop :=
  ∀ n, P338508507464602876.a n = A102905 n

end A102905

/-! ## A102905.P3091543008160118937

`A113655(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A102905.P3091543008160118937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (f1 (n + 1) - f1 n).toNat

end

end A102905.P3091543008160118937

namespace A102905

/-- `A113655(Δ[round(ϕ*a(n-1))])` -/
def P3091543008160118937.Spec : Prop :=
  ∀ n, P3091543008160118937.a n = A102905 n

end A102905

/-! ## A102905.P16943936761810839607

`A113655(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A102905.P16943936761810839607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102905.P16943936761810839607

namespace A102905

/-- `A113655(∑[round(ϕ*a(n-1))])` -/
def P16943936761810839607.Spec : Prop :=
  ∀ n, P16943936761810839607.a n = A102905 n

end A102905

/-! ## A102905.P9952292542837840268

`A113655(∑[A212804(n)])`
-/

namespace A102905.P9952292542837840268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102905.P9952292542837840268

namespace A102905

/-- `A113655(∑[A212804(n)])` -/
def P9952292542837840268.Spec : Prop :=
  ∀ n, P9952292542837840268.a n = A102905 n

end A102905

/-!
# A102906: Primes of the form 3^k + 28.

The programs for A102906, there is no canonical definition to state claims against.
-/

/-! ## A102906.P6785247502489846841

`p?[3^n+28]`
-/

namespace A102906.P6785247502489846841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102906.P6785247502489846841

/-! ## A102906.P9974370085244835387

`or(1, p?[∑[3*a(n-1)]])` with `a(0)=1, a(1)=28, a(2)=2`
-/

namespace A102906.P9974370085244835387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 28, 2] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A102906.P9974370085244835387

/-! ## A102906.P8449821575478213545

`record[A020639(3^n+28)]`
-/

namespace A102906.P8449821575478213545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 ^ n + 28)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102906.P8449821575478213545

/-!
# A102907: Primes of the form 3^k + 10.

The programs for A102907, there is no canonical definition to state claims against.
-/

/-! ## A102907.P8752122291507420185

`3^A217137(n+1)+10`
-/

namespace A102907.P8752122291507420185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A217137 (n + 1) : ℤ) + 10

end

end A102907.P8752122291507420185

/-! ## A102907.P533984958515233919

`A168609(A217137(n+1))+6`
-/

namespace A102907.P533984958515233919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168609 (A217137 (n + 1)).toNat + 6

end

end A102907.P533984958515233919

/-!
# A102909: a(n) = Sum_{j=0..8} n^j.

The programs for A102909, the canonical program `A102909.P16540505337403562300` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102909 has offset 0).

The definition of A102909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102909.P16540505337403562300

`(n²+n+1)*(n^6+n^3+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102909

/-- `(n²+n+1)*(n^6+n^3+1)` -/
def P16540505337403562300.Spec : Prop :=
  ∀ n, (P16540505337403562300.a n : ℤ) = A102909 n

theorem P16540505337403562300.correct : P16540505337403562300.Spec := by
  intro n
  simp only [A102909]

end A102909

/-! ## A102909.P335492107298818576

`A228292(n)+1`
-/

namespace A102909.P335492107298818576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228292 n + 1

end

end A102909.P335492107298818576

namespace A102909

/-- `A228292(n)+1` -/
def P335492107298818576.Spec : Prop :=
  ∀ n, P335492107298818576.a n = A102909 n

end A102909

/-! ## A102909.P17412633897418162936

`n*A053717(n)+1`
-/

namespace A102909.P17412633897418162936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053717 n + 1

end

end A102909.P17412633897418162936

namespace A102909

/-- `n*A053717(n)+1` -/
def P17412633897418162936.Spec : Prop :=
  ∀ n, P17412633897418162936.a n = A102909 n

end A102909

/-! ## A102909.P13916911310487329871

`n*(A228291(n)+1)+1`
-/

namespace A102909.P13916911310487329871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228291 n + 1) + 1

end

end A102909.P13916911310487329871

namespace A102909

/-- `n*(A228291(n)+1)+1` -/
def P13916911310487329871.Spec : Prop :=
  ∀ n, P13916911310487329871.a n = A102909 n

end A102909

/-! ## A102909.P3874063652373620651

`A103623(n)-n*n²²²`
-/

namespace A102909.P3874063652373620651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103623 n - (n * ((n ^ 2) ^ 2) ^ 2 : ℤ)

end

end A102909.P3874063652373620651

namespace A102909

/-- `A103623(n)-n*n²²²` -/
def P3874063652373620651.Spec : Prop :=
  ∀ n, P3874063652373620651.a n = A102909 n

end A102909

/-! ## A102909.P6777960783732943045

`(n+1)*n*A059830(n)+1`
-/

namespace A102909.P6777960783732943045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A059830 n) + 1

end

end A102909.P6777960783732943045

namespace A102909

/-- `(n+1)*n*A059830(n)+1` -/
def P6777960783732943045.Spec : Prop :=
  ∀ n, P6777960783732943045.a n = A102909 n

end A102909

/-! ## A102909.P2773300761196775907

`(n²+1)*∑[2*n]*A002523(n)+1`
-/

namespace A102909.P2773300761196775907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A002523 n + 1

end

end A102909.P2773300761196775907

namespace A102909

/-- `(n²+1)*∑[2*n]*A002523(n)+1` -/
def P2773300761196775907.Spec : Prop :=
  ∀ n, P2773300761196775907.a n = A102909 n

end A102909

/-! ## A102909.P8185806169648285750

`A053717(n)+A001016(n)`
-/

namespace A102909.P8185806169648285750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n + A001016 n

end

end A102909.P8185806169648285750

namespace A102909

/-- `A053717(n)+A001016(n)` -/
def P8185806169648285750.Spec : Prop :=
  ∀ n, P8185806169648285750.a n = A102909 n

end A102909

/-! ## A102909.P14954672666291235726

`A228293(n)+A024007(n)`
-/

namespace A102909.P14954672666291235726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228293 n + A024007 n

end

end A102909.P14954672666291235726

namespace A102909

/-- `A228293(n)+A024007(n)` -/
def P14954672666291235726.Spec : Prop :=
  ∀ n, P14954672666291235726.a n = A102909 n

end A102909

/-! ## A102909.P12321735856719172184

`A228291(n)+A060890(n)`
-/

namespace A102909.P12321735856719172184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228291 n + A060890 n

end

end A102909.P12321735856719172184

namespace A102909

/-- `A228291(n)+A060890(n)` -/
def P12321735856719172184.Spec : Prop :=
  ∀ n, P12321735856719172184.a n = A102909 n

end A102909

/-! ## A102909.P2183354611487698944

`A001016(n)+A228291(n)+1`
-/

namespace A102909.P2183354611487698944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n + (A228291 n + 1)

end

end A102909.P2183354611487698944

namespace A102909

/-- `A001016(n)+A228291(n)+1` -/
def P2183354611487698944.Spec : Prop :=
  ∀ n, P2183354611487698944.a n = A102909 n

end A102909

/-! ## A102909.P1328993607756352980

`A053717(n)+1-A024006(n)`
-/

namespace A102909.P1328993607756352980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n + (1 - A024006 n)

end

end A102909.P1328993607756352980

namespace A102909

/-- `A053717(n)+1-A024006(n)` -/
def P1328993607756352980.Spec : Prop :=
  ∀ n, P1328993607756352980.a n = A102909 n

end A102909

/-! ## A102909.P684224942408142279

`A053717(n)+A060890(n)-1`
-/

namespace A102909.P684224942408142279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053717 n + (A060890 n - 1)

end

end A102909.P684224942408142279

namespace A102909

/-- `A053717(n)+A060890(n)-1` -/
def P684224942408142279.Spec : Prop :=
  ∀ n, P684224942408142279.a n = A102909 n

end A102909

/-! ## A102909.P5929012095250517187

`A228293(n)+1-A001017(n)`
-/

namespace A102909.P5929012095250517187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228293 n + (1 - A001017 n)

end

end A102909.P5929012095250517187

namespace A102909

/-- `A228293(n)+1-A001017(n)` -/
def P5929012095250517187.Spec : Prop :=
  ∀ n, P5929012095250517187.a n = A102909 n

end A102909

/-! ## A102909.P16521227271230051000

`A002523(n)*A027445(n)+1`
-/

namespace A102909.P16521227271230051000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n * A027445 n + 1

end

end A102909.P16521227271230051000

namespace A102909

/-- `A002523(n)*A027445(n)+1` -/
def P16521227271230051000.Spec : Prop :=
  ∀ n, P16521227271230051000.a n = A102909 n

end A102909

/-! ## A102909.P15229154940951293907

`A002378(n)*A059830(n)+1`
-/

namespace A102909.P15229154940951293907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A059830 n + 1

end

end A102909.P15229154940951293907

namespace A102909

/-- `A002378(n)*A059830(n)+1` -/
def P15229154940951293907.Spec : Prop :=
  ∀ n, P15229154940951293907.a n = A102909 n

end A102909

/-! ## A102909.P7194529518941807129

`A053698(n)*A131471(n)+1`
-/

namespace A102909.P7194529518941807129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 n * A131471 n + 1

end

end A102909.P7194529518941807129

namespace A102909

/-- `A053698(n)*A131471(n)+1` -/
def P7194529518941807129.Spec : Prop :=
  ∀ n, P7194529518941807129.a n = A102909 n

end A102909

/-! ## A102909.P7642782479737087026

`A059839(n)+n*A059830(n)`
-/

namespace A102909.P7642782479737087026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059839 n + (n : ℤ) * A059830 n

end

end A102909.P7642782479737087026

namespace A102909

/-- `A059839(n)+n*A059830(n)` -/
def P7642782479737087026.Spec : Prop :=
  ∀ n, P7642782479737087026.a n = A102909 n

end A102909

/-! ## A102909.P6358203618501139830

`A059830(n)/2*A046092(n)+1`
-/

namespace A102909.P6358203618501139830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059830 n : ℚ) / 2 * (A046092 n : ℚ) + 1

end

end A102909.P6358203618501139830

namespace A102909

/-- `A059830(n)/2*A046092(n)+1` -/
def P6358203618501139830.Spec : Prop :=
  ∀ n, P6358203618501139830.a n = (A102909 n : ℚ)

end A102909

/-! ## A102909.P5536802539743705377

`A053699(n)+A000583(n)*A027445(n)`
-/

namespace A102909.P5536802539743705377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 n + A000583 n * A027445 n

end

end A102909.P5536802539743705377

namespace A102909

/-- `A053699(n)+A000583(n)*A027445(n)` -/
def P5536802539743705377.Spec : Prop :=
  ∀ n, P5536802539743705377.a n = A102909 n

end A102909

/-!
# A102911: Number of unlabeled (and unrooted) trees on 2n nodes with a bicentroid.

The programs for A102911, there is no canonical definition to state claims against.
-/

/-! ## A102911.P606799621472976841

`C(A000081(n)+1, 2)`
-/

namespace A102911.P606799621472976841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000081 n + 1).toNat 2

end

end A102911.P606799621472976841

/-! ## A102911.P9609190455490338269

`C(A106234(∑[n]+2)+1, 2)`
-/

namespace A102911.P9609190455490338269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1).toNat 2

end

end A102911.P9609190455490338269

/-! ## A102911.P2699681856273258367

`C(∑[A174145(abs(1-n))]+1, 2)`
-/

namespace A102911.P2699681856273258367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A102911.P2699681856273258367

/-! ## A102911.P10452844556970980068

`C(A095341(n+1)/(n+1)+1, 2)`
-/

namespace A102911.P10452844556970980068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A095341 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat 2

end

end A102911.P10452844556970980068

/-! ## A102911.P284197875988684338

`C(A222380(n)+A222379(n)+1, 2)`
-/

namespace A102911.P284197875988684338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222380 n + A222379 n + 1).toNat 2

end

end A102911.P284197875988684338

/-! ## A102911.P17000441578267103704

`C(A213674(n)-A213683(n)+1, 2)`
-/

namespace A102911.P17000441578267103704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213674 n - A213683 n + 1).toNat 2

end

end A102911.P17000441578267103704

/-! ## A102911.P6790425971241235705

`C(A033185(A000124(n))-A174145(n)+1, 2)`
-/

namespace A102911.P6790425971241235705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033185 (A000124 n).toNat - A174145 n + 1).toNat 2

end

end A102911.P6790425971241235705

/-! ## A102911.P4830270710095274386

`A000055(2*n)-A027416(2*n)`
-/

namespace A102911.P4830270710095274386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (2 * n) - A027416 (2 * n)

end

end A102911.P4830270710095274386

/-! ## A102911.P11333410820913507741

`A136605(A179865(2*n+1))-A027416(2*n)`
-/

namespace A102911.P11333410820913507741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (A179865 (2 * n + 1)).toNat - A027416 (2 * n)

end

end A102911.P11333410820913507741

/-!
# A102915: Numbers n such that n3 is prime and n is a multiple of 10.

The programs for A102915, the canonical program `A102915.P10532418710621167245` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102915 has offset 1).

The definition of A102915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102915.P10532418710621167245

`floor(A101780(n+1)/10)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102915

/-- `floor(A101780(n+1)/10)` -/
def P10532418710621167245.Spec : Prop :=
  ∀ n, P10532418710621167245.a n = A102915 (n + 1)

theorem P10532418710621167245.correct : P10532418710621167245.Spec := by
  intro n
  simp only [A102915, Nat.add_sub_cancel]

end A102915

/-! ## A102915.P8611839984379453239

`round(A101780(n+1)/10)*A054977(n)`
-/

namespace A102915.P8611839984379453239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10) * A054977 n

end

end A102915.P8611839984379453239

namespace A102915

/-- `round(A101780(n+1)/10)*A054977(n)` -/
def P8611839984379453239.Spec : Prop :=
  ∀ n, P8611839984379453239.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P15278759521230532261

`round(A101780(n+1)/10*A057427(n))`
-/

namespace A102915.P15278759521230532261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10 * (A057427 n : ℚ))

end

end A102915.P15278759521230532261

namespace A102915

/-- `round(A101780(n+1)/10*A057427(n))` -/
def P15278759521230532261.Spec : Prop :=
  ∀ n, P15278759521230532261.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P6899698113243094352

`round(A101780(n+1)/10)%A000145(n)`
-/

namespace A102915.P6899698113243094352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10)) (A000145 n)

end

end A102915.P6899698113243094352

namespace A102915

/-- `round(A101780(n+1)/10)%A000145(n)` -/
def P6899698113243094352.Spec : Prop :=
  ∀ n, P6899698113243094352.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P2800154490420337917

`round(A101780(gcd(n, A008586(n))+1)/10)`
-/

namespace A102915.P2800154490420337917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101780 (Int.gcd (n : ℤ) (A008586 n) + 1) : ℚ) / 10)

end

end A102915.P2800154490420337917

namespace A102915

/-- `round(A101780(gcd(n, A008586(n))+1)/10)` -/
def P2800154490420337917.Spec : Prop :=
  ∀ n, P2800154490420337917.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P6552407193559612603

`lcm(round(A101780(n+1)/10), A000034(n))`
-/

namespace A102915.P6552407193559612603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10)) (A000034 n)

end

end A102915.P6552407193559612603

namespace A102915

/-- `lcm(round(A101780(n+1)/10), A000034(n))` -/
def P6552407193559612603.Spec : Prop :=
  ∀ n, (P6552407193559612603.a n : ℤ) = A102915 (n + 1)

end A102915

/-! ## A102915.P14377795808221017138

`A000038(n+1)+round(A101780(n+1)/10)`
-/

namespace A102915.P14377795808221017138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10)

end

end A102915.P14377795808221017138

namespace A102915

/-- `A000038(n+1)+round(A101780(n+1)/10)` -/
def P14377795808221017138.Spec : Prop :=
  ∀ n, P14377795808221017138.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P15154478096949820144

`round(A101780(n+1)/10)/A000265(n+1)%2`
-/

namespace A102915.P15154478096949820144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10) : ℚ) / (Int.tmod (A000265 (n + 1)) 2 : ℚ)

end

end A102915.P15154478096949820144

namespace A102915

/-- `round(A101780(n+1)/10)/A000265(n+1)%2` -/
def P15154478096949820144.Spec : Prop :=
  ∀ n, P15154478096949820144.a n = (A102915 (n + 1) : ℚ)

end A102915

/-! ## A102915.P17652121001726520390

`round(A101780(n+1)/10)/A001221(A001316(n+1))`
-/

namespace A102915.P17652121001726520390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A101780 (n + 1) : ℚ) / 10) : ℚ) / (A001221 (A001316 (n + 1)).toNat : ℚ)

end

end A102915.P17652121001726520390

namespace A102915

/-- `round(A101780(n+1)/10)/A001221(A001316(n+1))` -/
def P17652121001726520390.Spec : Prop :=
  ∀ n, P17652121001726520390.a n = (A102915 (n + 1) : ℚ)

end A102915

/-! ## A102915.P6266304991707394536

`round(A000007(n+1)+A101780(n+1)/10)`
-/

namespace A102915.P6266304991707394536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A101780 (n + 1) : ℚ) / 10)

end

end A102915.P6266304991707394536

namespace A102915

/-- `round(A000007(n+1)+A101780(n+1)/10)` -/
def P6266304991707394536.Spec : Prop :=
  ∀ n, P6266304991707394536.a n = A102915 (n + 1)

end A102915

/-! ## A102915.P10387680724000735880

`∩[A102338(n+1), A008592(n)]`
-/

namespace A102915.P10387680724000735880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102915.P10387680724000735880

namespace A102915

/-- `∩[A102338(n+1), A008592(n)]` -/
def P10387680724000735880.Spec : Prop :=
  ∀ n, (P10387680724000735880.a n : ℤ) = A102915 (n + 1)

end A102915

/-!
# A102917: Column 0 of triangle A102916.

The programs for A102917, there is no canonical definition to state claims against.
-/

/-! ## A102917.P12170226291384774607

`A102916(∑[n])`
-/

namespace A102917.P12170226291384774607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102917.P12170226291384774607

/-! ## A102917.P15143990076175417748

`lcm(1-2*n%2, A102916(n*(n+1)/2))`
-/

namespace A102917.P15143990076175417748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A102916 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A102917.P15143990076175417748

/-! ## A102917.P4391900658295182886

`and(-1, A102916(A000217(n)))`
-/

namespace A102917.P4391900658295182886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A102916 (A000217 n).toNat)

end

end A102917.P4391900658295182886

/-! ## A102917.P1230679868121858029

`A000027(A102916(C(n+1, 2)))`
-/

namespace A102917.P1230679868121858029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A102916 (Nat.choose (n + 1) 2)).toNat

end

end A102917.P1230679868121858029

/-! ## A102917.P6362653316887819393

`A174615(n)+A102916(C(n+1, 2))`
-/

namespace A102917.P6362653316887819393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174615 n + A102916 (Nat.choose (n + 1) 2)

end

end A102917.P6362653316887819393

/-!
# A102918: Column 1 of triangle A102916.

The programs for A102918, there is no canonical definition to state claims against.
-/

/-! ## A102918.P16788645109373801628

`∪[A102099(n), A102922(n)]`
-/

namespace A102918.P16788645109373801628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102918.P16788645109373801628

/-! ## A102918.P18344690262013923408

`∪[A102098(A000124(n+1)), A102922(n)]`
-/

namespace A102918.P18344690262013923408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102098 (A000124 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102918.P18344690262013923408

/-! ## A102918.P3222442981299922715

`record[xor(A102916(n), A141665(n))]`
-/

namespace A102918.P3222442981299922715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102916 n) (A141665 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102918.P3222442981299922715

/-! ## A102918.P2206214701201015167

`A102916(A000124(n))-floor(acot(n))`
-/

namespace A102918.P2206214701201015167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102916 (A000124 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A102918.P2206214701201015167

/-! ## A102918.P9896586765266267004

`A102916(∑[n]+1)%A102088(n)`
-/

namespace A102918.P9896586765266267004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A102088 n)

end

end A102918.P9896586765266267004

/-!
# A102919: Row sums of triangle A102916.

The programs for A102919, there is no canonical definition to state claims against.
-/

/-! ## A102919.P15273240258427353879

`A266350(Δ[(n-1)!+n*a(n-1)])` with `a(0)=1`
-/

namespace A102919.P15273240258427353879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.factorial ((n : ℤ) - 1).toNat + n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102919.P15273240258427353879

/-! ## A102919.P12151311005631779495

`∑[A039708(∑[A137958(n)])]`
-/

namespace A102919.P12151311005631779495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102919.P12151311005631779495

/-!
# A102921: Column 0 of triangle A102920, which equals the matrix square of A102098.

The programs for A102921, there is no canonical definition to state claims against.
-/

/-! ## A102921.P11867929981403025722

`A102917(Δ[n²])`
-/

namespace A102921.P11867929981403025722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A102921.P11867929981403025722

/-! ## A102921.P7369254938735016297

`record[A102917(n*n%2)]`
-/

namespace A102921.P7369254938735016297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102921.P7369254938735016297

/-! ## A102921.P5920908737831233083

`record[A102917(A004442(n))]`
-/

namespace A102921.P5920908737831233083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102921.P5920908737831233083

/-! ## A102921.P5229772016830440997

`record[A102917(A102899(n))]`
-/

namespace A102921.P5229772016830440997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (A102899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102921.P5229772016830440997

/-! ## A102921.P2204981845553759593

`record[A102917(A033999(n)+n)]`
-/

namespace A102921.P2204981845553759593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102921.P2204981845553759593

/-!
# A102922: Column 1 of triangle A102920, which equals the matrix square of A102098.

The programs for A102922, there is no canonical definition to state claims against.
-/

/-! ## A102922.P16929972769310307661

`A102918(2*n)`
-/

namespace A102922.P16929972769310307661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (2 * n)

end

end A102922.P16929972769310307661

/-! ## A102922.P712490510991435518

`record[A102918(A014681(n))]`
-/

namespace A102922.P712490510991435518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102918 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102922.P712490510991435518

/-! ## A102922.P3758909057295125070

`lcm(2, A102918(A005843(n)))`
-/

namespace A102922.P3758909057295125070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A102918 (A005843 n).toNat)

end

end A102922.P3758909057295125070

/-! ## A102922.P8219367345334819762

`record[A102918(n)/A033999(n)]`
-/

namespace A102922.P8219367345334819762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102918 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102922.P8219367345334819762

/-! ## A102922.P18237712282933362734

`record[and(A098986(n), A102918(n))]`
-/

namespace A102922.P18237712282933362734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098986 n) (A102918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102922.P18237712282933362734

/-!
# A102927: Partial products of A102926.

The programs for A102927, there is no canonical definition to state claims against.
-/

/-! ## A102927.P10470786593096676106

`∏[A102926(n+1)]`
-/

namespace A102927.P10470786593096676106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102927.P10470786593096676106

/-! ## A102927.P14012338147224772187

`∏[p?[A102926(A348553(n))]]`
-/

namespace A102927.P14012338147224772187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102926 (A348553 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102927.P14012338147224772187

/-! ## A102927.P776056377807875371

`∏[p?[A084598(n+1)]]`
-/

namespace A102927.P776056377807875371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102927.P776056377807875371

/-! ## A102927.P2681229316177283418

`∏[∏{d}[A084598(n+1), A020639(#)]]`
-/

namespace A102927.P2681229316177283418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A020639 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102927.P2681229316177283418

/-!
# A102928: Numerator of the harmonic mean of the first n positive integers.

The programs for A102928, the canonical program `A102928.P4713113639802046422` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102928 has offset 1).

The definition of A102928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102928.P4713113639802046422

`lcm(A025529(n+1), A081528(n+1))/A025529(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A102928

/-- `lcm(A025529(n+1), A081528(n+1))/A025529(n+1)` -/
def P4713113639802046422.Spec : Prop :=
  ∀ n, P4713113639802046422.a n = (A102928 (n + 1) : ℚ)

end A102928

/-! ## A102928.P5338099217229650491

`(n+1)*A002805(A242474(n+1))`
-/

namespace A102928.P5338099217229650491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002805 (A242474 (n + 1)).toNat

end

end A102928.P5338099217229650491

namespace A102928

/-- `(n+1)*A002805(A242474(n+1))` -/
def P5338099217229650491.Spec : Prop :=
  ∀ n, P5338099217229650491.a n = A102928 (n + 1)

end A102928

/-! ## A102928.P17023856105405998890

`(n+1)*A002805(A351374(n+1))`
-/

namespace A102928.P17023856105405998890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002805 (A351374 (n + 1)).toNat

end

end A102928.P17023856105405998890

namespace A102928

/-- `(n+1)*A002805(A351374(n+1))` -/
def P17023856105405998890.Spec : Prop :=
  ∀ n, P17023856105405998890.a n = A102928 (n + 1)

end A102928

/-! ## A102928.P6504381683505604571

`A002805(A242474(n+1))*A291769(n)`
-/

namespace A102928.P6504381683505604571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A242474 (n + 1)).toNat * A291769 n

end

end A102928.P6504381683505604571

namespace A102928

/-- `A002805(A242474(n+1))*A291769(n)` -/
def P6504381683505604571.Spec : Prop :=
  ∀ n, P6504381683505604571.a n = A102928 (n + 1)

end A102928

/-! ## A102928.P17942308791107675583

`A001222(A000079(n+1))*A002805(n+1)`
-/

namespace A102928.P17942308791107675583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 (n + 1)).toNat * A002805 (n + 1)

end

end A102928.P17942308791107675583

namespace A102928

/-- `A001222(A000079(n+1))*A002805(n+1)` -/
def P17942308791107675583.Spec : Prop :=
  ∀ n, P17942308791107675583.a n = A102928 (n + 1)

end A102928

/-!
# A102929: Numbers k such that 10^k + 2*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102929, there is no canonical definition to state claims against.
-/

/-! ## A102929.P16955563250085935207

`A102009(A028310(n))+ceil(sin(n)²)`
-/

namespace A102929.P16955563250085935207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102009 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A102929.P16955563250085935207

/-! ## A102929.P4491758167175109453

`A102009(A028310(n))+A057427(n)`
-/

namespace A102929.P4491758167175109453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102009 (A028310 n).toNat + A057427 n

end

end A102929.P4491758167175109453

/-! ## A102929.P13810193892538316886

`A102009(A028310(n))-A057428(n)`
-/

namespace A102929.P13810193892538316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102009 (A028310 n).toNat - A057428 n

end

end A102929.P13810193892538316886

/-!
# A102930: Numbers k such that 10^k + 2*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102930, there is no canonical definition to state claims against.
-/

/-! ## A102930.P16954325187101373212

`A102010(n+1)+1`
-/

namespace A102930.P16954325187101373212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102010 (n + 1) + 1

end

end A102930.P16954325187101373212

/-!
# A102931: Numbers k such that 10^k + 2*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102931, there is no canonical definition to state claims against.
-/

/-! ## A102931.P15759926445112133649

`A102011(n+1)+1`
-/

namespace A102931.P15759926445112133649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102011 (n + 1) + 1

end

end A102931.P15759926445112133649

/-!
# A102932: Numbers k such that 10^k + 3*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102932, there is no canonical definition to state claims against.
-/

/-! ## A102932.P9486213688884830386

`A102013(A028310(n))-(floor(acot(n))-1)`
-/

namespace A102932.P9486213688884830386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102013 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A102932.P9486213688884830386

/-! ## A102932.P17450643020588709456

`A102013(A028310(n))+A057427(n)`
-/

namespace A102932.P17450643020588709456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102013 (A028310 n).toNat + A057427 n

end

end A102932.P17450643020588709456

/-! ## A102932.P3406970409216823926

`A178334(n)+A102013(A028310(n))`
-/

namespace A102932.P3406970409216823926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A102013 (A028310 n).toNat

end

end A102932.P3406970409216823926

/-! ## A102932.P8485669164172765479

`A102013(A000007(n)+n)+A000040(n+1)%2`
-/

namespace A102932.P8485669164172765479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102013 (A000007 n + (n : ℤ)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102932.P8485669164172765479

/-! ## A102932.P11022119272129228257

`A102013(A000007(n)+n)+A008683(2*A000040(n+1))`
-/

namespace A102932.P11022119272129228257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102013 (A000007 n + (n : ℤ)).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A102932.P11022119272129228257

/-!
# A102933: Numbers k such that 10^k + 3*R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102933, there is no canonical definition to state claims against.
-/

/-! ## A102933.P16664254409695625830

`A102014(n+1)+1`
-/

namespace A102933.P16664254409695625830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102014 (n + 1) + 1

end

end A102933.P16664254409695625830

/-! ## A102933.P8244580420285620378

`A004482(A102014(n+1))`
-/

namespace A102933.P8244580420285620378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A102014 (n + 1)).toNat

end

end A102933.P8244580420285620378

/-!
# A102934: Numbers k such that 10^k + 4*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102934, there is no canonical definition to state claims against.
-/

/-! ## A102934.P11236638795382513771

`A102016(n+1)+1`
-/

namespace A102934.P11236638795382513771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102016 (n + 1) + 1

end

end A102934.P11236638795382513771

/-! ## A102934.P2525226971415509868

`Δ[n²]-(2*n-A102016(A348553(n)))`
-/

namespace A102934.P2525226971415509868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((2 * n : ℤ) - A102016 (A348553 n).toNat)

end

end A102934.P2525226971415509868

/-! ## A102934.P15581436488832863915

`A061800(A102016(n+1))`
-/

namespace A102934.P15581436488832863915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A102016 (n + 1)).toNat

end

end A102934.P15581436488832863915

/-!
# A102935: Numbers k such that 10^k + 4*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102935, there is no canonical definition to state claims against.
-/

/-! ## A102935.P11269225668328976891

`A102017(n+1)+1`
-/

namespace A102935.P11269225668328976891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102017 (n + 1) + 1

end

end A102935.P11269225668328976891

/-! ## A102935.P11986597982951699526

`A249822(A270831(2*n+1))+n`
-/

namespace A102935.P11986597982951699526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (A270831 (2 * n + 1)).toNat + (n : ℤ)

end

end A102935.P11986597982951699526

/-! ## A102935.P7453195401450009099

`∑[A209439(A181015(n+1)+A005843(n))]`
-/

namespace A102935.P7453195401450009099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 (A181015 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102935.P7453195401450009099

/-!
# A102936: Numbers k such that 10^k + 5*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102936, there is no canonical definition to state claims against.
-/

/-! ## A102936.P2622229855679898224

`A102019(n+1)+1`
-/

namespace A102936.P2622229855679898224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102019 (n + 1) + 1

end

end A102936.P2622229855679898224

/-!
# A102938: Numbers k such that 10^k + 5*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102938, there is no canonical definition to state claims against.
-/

/-! ## A102938.P17459956956734439481

`A102021(n+1)+1`
-/

namespace A102938.P17459956956734439481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102021 (n + 1) + 1

end

end A102938.P17459956956734439481

/-! ## A102938.P17712493476064826779

`A061800(A102021(n+1))`
-/

namespace A102938.P17712493476064826779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A102021 (n + 1)).toNat

end

end A102938.P17712493476064826779

/-!
# A102939: Numbers k such that 10^k + 6*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102939, there is no canonical definition to state claims against.
-/

/-! ## A102939.P15620233947256484611

`A102023(n+1)+1`
-/

namespace A102939.P15620233947256484611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102023 (n + 1) + 1

end

end A102939.P15620233947256484611

/-! ## A102939.P13823620265264344743

`A061951(A061933(n+1))%A061919(3*n+2)`
-/

namespace A102939.P13823620265264344743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061951 (A061933 (n + 1)).toNat) (A061919 (3 * n + 2))

end

end A102939.P13823620265264344743

/-!
# A102940: Numbers k such that 10^k + 6*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102940, there is no canonical definition to state claims against.
-/

/-! ## A102940.P890624080691475068

`A102024(A028310(n))+A000040(n+1)%2`
-/

namespace A102940.P890624080691475068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102940.P890624080691475068

/-! ## A102940.P12927128314822135323

`A102024(A028310(n))+A000045(n²%(n+1))`
-/

namespace A102940.P12927128314822135323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A000045 (n ^ 2 % (n + 1))

end

end A102940.P12927128314822135323

/-! ## A102940.P6922273040771441833

`A102024(A028310(n))+A000032(C(2, n+2))-1`
-/

namespace A102940.P6922273040771441833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A000032 (Nat.choose 2 (n + 2)) - 1

end

end A102940.P6922273040771441833

/-! ## A102940.P3866818100343531994

`A102024(A028310(n))+A020639(A000040(n+1)-1)-1`
-/

namespace A102940.P3866818100343531994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A020639 (A000040 (n + 1) - 1).toNat - 1

end

end A102940.P3866818100343531994

/-! ## A102940.P8195575906791839299

`A102024(A028310(n))+A001221(2*A000040(n+1))-1`
-/

namespace A102940.P8195575906791839299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102024 (A028310 n).toNat + A001221 (2 * A000040 (n + 1)).toNat - 1

end

end A102940.P8195575906791839299

/-!
# A102941: Numbers k such that 10^k + 6*R_k + 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102941, there is no canonical definition to state claims against.
-/

/-! ## A102941.P18175255832988332617

`A102025(n+1)+1`
-/

namespace A102941.P18175255832988332617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102025 (n + 1) + 1

end

end A102941.P18175255832988332617

/-!
# A102942: Numbers k such that 10^k + 7*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102942, there is no canonical definition to state claims against.
-/

/-! ## A102942.P15220634850705830482

`A102027(n+1)+1`
-/

namespace A102942.P15220634850705830482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102027 (n + 1) + 1

end

end A102942.P15220634850705830482

/-! ## A102942.P18049427767424725726

`A004482(A102027(n+1))`
-/

namespace A102942.P18049427767424725726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A102027 (n + 1)).toNat

end

end A102942.P18049427767424725726

/-!
# A102943: Numbers k such that 10^k + 7*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102943, there is no canonical definition to state claims against.
-/

/-! ## A102943.P11696285056181185387

`A102028(n+1)+1`
-/

namespace A102943.P11696285056181185387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102028 (n + 1) + 1

end

end A102943.P11696285056181185387

/-!
# A102944: Numbers k such that 10^k + 8*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102944, there is no canonical definition to state claims against.
-/

/-! ## A102944.P12115841853864446629

`A102030(n+1)+1`
-/

namespace A102944.P12115841853864446629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102030 (n + 1) + 1

end

end A102944.P12115841853864446629

/-!
# A102945: Numbers k such that 10^k + 8*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102945, there is no canonical definition to state claims against.
-/

/-! ## A102945.P3930033924740970689

`A102031(n+1)+1`
-/

namespace A102945.P3930033924740970689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102031 (n + 1) + 1

end

end A102945.P3930033924740970689

/-!
# A102946: Numbers n such that 2*10^n - 7 is prime.

The programs for A102946, there is no canonical definition to state claims against.
-/

/-! ## A102946.P15853218659963445808

`A102033(n+1)+1`
-/

namespace A102946.P15853218659963445808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102033 (n + 1) + 1

end

end A102946.P15853218659963445808

/-! ## A102946.P7485066902440997205

`filter[A305630(n+1), A334812(#)]`
-/

namespace A102946.P7485066902440997205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334812 (f1 j).toNat = 1) n)

end

end A102946.P7485066902440997205

/-! ## A102946.P7767271953570505497

`∩[A035947(n+1), A191282(n+1)]`
-/

namespace A102946.P7767271953570505497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102946.P7767271953570505497

/-!
# A102947: Numbers n such that 2*10^n-3 is prime.

The programs for A102947, there is no canonical definition to state claims against.
-/

/-! ## A102947.P16385229265269545247

`A102034(n+1)+1`
-/

namespace A102947.P16385229265269545247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102034 (n + 1) + 1

end

end A102947.P16385229265269545247

/-!
# A102948: Numbers k such that 2*10^k + R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102948, there is no canonical definition to state claims against.
-/

/-! ## A102948.P4541967869952040393

`A101953(n+1)+1`
-/

namespace A102948.P4541967869952040393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101953 (n + 1) + 1

end

end A102948.P4541967869952040393

/-!
# A102949: Numbers k such that 2*10^k + R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102949, there is no canonical definition to state claims against.
-/

/-! ## A102949.P258120172874620346

`A101954(n+1)+1`
-/

namespace A102949.P258120172874620346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101954 (n + 1) + 1

end

end A102949.P258120172874620346

/-!
# A102950: Numbers k such that 2*10^k + R_k + 8 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102950, there is no canonical definition to state claims against.
-/

/-! ## A102950.P1830220106798467918

`A101955(n+1)+1`
-/

namespace A102950.P1830220106798467918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101955 (n + 1) + 1

end

end A102950.P1830220106798467918

/-! ## A102950.P14950798189230233167

`A077859(A101955(n+1))`
-/

namespace A102950.P14950798189230233167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 (A101955 (n + 1)).toNat

end

end A102950.P14950798189230233167

/-!
# A102951: Numbers k such that 2*10^k + 3*R_k + 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102951, there is no canonical definition to state claims against.
-/

/-! ## A102951.P10848349167152598590

`A101956(n+1)+1`
-/

namespace A102951.P10848349167152598590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101956 (n + 1) + 1

end

end A102951.P10848349167152598590

/-! ## A102951.P8562320339420238870

`A199343(A101956(n+1))`
-/

namespace A102951.P8562320339420238870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A101956 (n + 1)).toNat

end

end A102951.P8562320339420238870

/-!
# A102952: Numbers k such that 2*10^k + 4*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102952, there is no canonical definition to state claims against.
-/

/-! ## A102952.P10118008089543417382

`A101957(n+1)+1`
-/

namespace A102952.P10118008089543417382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101957 (n + 1) + 1

end

end A102952.P10118008089543417382

/-! ## A102952.P8240995862026998896

`A020725(A101957(n+1))`
-/

namespace A102952.P8240995862026998896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101957 (n + 1)).toNat

end

end A102952.P8240995862026998896

/-! ## A102952.P18225984985102876281

`abs(A131738(A101957(Δ[n²]-n)))`
-/

namespace A102952.P18225984985102876281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (A101957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A102952.P18225984985102876281

/-!
# A102953: Numbers k such that 2*10^k + 4*R_k - 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102953, there is no canonical definition to state claims against.
-/

/-! ## A102953.P9696836887288474525

`A101958(n+1)+1`
-/

namespace A102953.P9696836887288474525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101958 (n + 1) + 1

end

end A102953.P9696836887288474525

/-! ## A102953.P8370765326291377741

`∑[A272620(∑[A291241(2*(n+1))])]`
-/

namespace A102953.P8370765326291377741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102953.P8370765326291377741

/-!
# A102954: Numbers n such that 2*10^n + 4*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102954, there is no canonical definition to state claims against.
-/

/-! ## A102954.P15614674678296610718

`A101959(n+1)+1`
-/

namespace A102954.P15614674678296610718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101959 (n + 1) + 1

end

end A102954.P15614674678296610718

/-! ## A102954.P5737194782621954568

`A020725(A101959(n+1))`
-/

namespace A102954.P5737194782621954568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101959 (n + 1)).toNat

end

end A102954.P5737194782621954568

/-!
# A102955: Numbers n such that 2*10^n + 4*R_n + 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102955, there is no canonical definition to state claims against.
-/

/-! ## A102955.P4112912360507203259

`A101960(n+1)+1`
-/

namespace A102955.P4112912360507203259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101960 (n + 1) + 1

end

end A102955.P4112912360507203259

/-!
# A102956: Numbers n such that 2*10^n + 5*R_n + 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102956, there is no canonical definition to state claims against.
-/

/-! ## A102956.P16679171327647848071

`A101963(n+1)+1`
-/

namespace A102956.P16679171327647848071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101963 (n + 1) + 1

end

end A102956.P16679171327647848071

/-! ## A102956.P2447736214693611608

`A030118(A101963(n+1))`
-/

namespace A102956.P2447736214693611608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A101963 (n + 1)).toNat

end

end A102956.P2447736214693611608

/-!
# A102957: Numbers n such that 2*10^n + 6*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102957, there is no canonical definition to state claims against.
-/

/-! ## A102957.P10852990845417251379

`A101965(A028310(n))+A057427(n)`
-/

namespace A102957.P10852990845417251379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101965 (A028310 n).toNat + A057427 n

end

end A102957.P10852990845417251379

/-! ## A102957.P14611226567553750270

`A178334(n)+A101965(A028310(n))`
-/

namespace A102957.P14611226567553750270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101965 (A028310 n).toNat

end

end A102957.P14611226567553750270

/-! ## A102957.P10658606649792142722

`A101965(A028310(n))+char[A007318(n)]`
-/

namespace A102957.P10658606649792142722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101965 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102957.P10658606649792142722

/-! ## A102957.P10810719441935772647

`A101965(A028310(n))+A000040(n+1)%2`
-/

namespace A102957.P10810719441935772647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101965 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102957.P10810719441935772647

/-! ## A102957.P10124334600600898207

`A101965(A028310(n))+A007318(∑[n])%(n+1)`
-/

namespace A102957.P10124334600600898207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101965 (A028310 n).toNat + Int.tmod (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A102957.P10124334600600898207

/-!
# A102958: Numbers n such that 2*10^n + 7*R_n - 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102958, there is no canonical definition to state claims against.
-/

/-! ## A102958.P7725406042219546461

`A101967(A028310(n))-(floor(acot(n))-1)`
-/

namespace A102958.P7725406042219546461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101967 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A102958.P7725406042219546461

/-! ## A102958.P6641752035084966622

`A101967(A028310(n))+n/A028310(n)`
-/

namespace A102958.P6641752035084966622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101967 (A028310 n).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A102958.P6641752035084966622

/-!
# A102959: Numbers n such that 2*10^n + 7*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102959, there is no canonical definition to state claims against.
-/

/-! ## A102959.P2504492273451469052

`A101968(n+1)+1`
-/

namespace A102959.P2504492273451469052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101968 (n + 1) + 1

end

end A102959.P2504492273451469052

/-!
# A102960: Numbers n such that 2*10^n + 8*R_n - 7 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102960, there is no canonical definition to state claims against.
-/

/-! ## A102960.P7677492490207267139

`A101969(n+1)+1`
-/

namespace A102960.P7677492490207267139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101969 (n + 1) + 1

end

end A102960.P7677492490207267139

/-! ## A102960.P4934536812843810429

`A020725(A101969(n+1))`
-/

namespace A102960.P4934536812843810429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101969 (n + 1)).toNat

end

end A102960.P4934536812843810429

/-!
# A102961: Numbers k such that 2*10^k + 8*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102961, there is no canonical definition to state claims against.
-/

/-! ## A102961.P15635509560787779114

`A101970(n+1)+1`
-/

namespace A102961.P15635509560787779114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101970 (n + 1) + 1

end

end A102961.P15635509560787779114

/-! ## A102961.P10457330111654020230

`A068696(A057651(n))+A039653(n)`
-/

namespace A102961.P10457330111654020230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068696 (A057651 n).toNat + A039653 n

end

end A102961.P10457330111654020230

/-!
# A102962: Numbers n such that 2*10^n + 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102962, there is no canonical definition to state claims against.
-/

/-! ## A102962.P16183560808597087797

`A101971(n+1)+1`
-/

namespace A102962.P16183560808597087797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101971 (n + 1) + 1

end

end A102962.P16183560808597087797

/-! ## A102962.P14920831168201981537

`A020725(A101971(n+1))`
-/

namespace A102962.P14920831168201981537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101971 (n + 1)).toNat

end

end A102962.P14920831168201981537

/-!
# A102963: Numbers n such that 2*10^n + 8*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102963, there is no canonical definition to state claims against.
-/

/-! ## A102963.P12763616811548382963

`A101972(A028310(n))-(floor(acot(n))-1)`
-/

namespace A102963.P12763616811548382963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101972 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A102963.P12763616811548382963

/-! ## A102963.P15757515064563870485

`A101972(A023931(n)+n)+n²%(n+1)`
-/

namespace A102963.P15757515064563870485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101972 (A023931 n + (n : ℤ)).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A102963.P15757515064563870485

/-! ## A102963.P14776412045325218157

`A101972(A028310(n))+A057427(n)`
-/

namespace A102963.P14776412045325218157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101972 (A028310 n).toNat + A057427 n

end

end A102963.P14776412045325218157

/-! ## A102963.P3062889582012156069

`A101972(A028310(n))+A000040(n+1)%2`
-/

namespace A102963.P3062889582012156069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101972 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102963.P3062889582012156069

/-! ## A102963.P4039774848343537703

`A101972(A028310(n))+1-A008683((n+1)²)`
-/

namespace A102963.P4039774848343537703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101972 (A028310 n).toNat + (1 - A008683 ((n + 1) ^ 2))

end

end A102963.P4039774848343537703

/-!
# A102964: Numbers n such that 3*10^n-7 is prime.

The programs for A102964, there is no canonical definition to state claims against.
-/

/-! ## A102964.P11945691943983108125

`A101973(n+1)+1`
-/

namespace A102964.P11945691943983108125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101973 (n + 1) + 1

end

end A102964.P11945691943983108125

/-!
# A102965: Numbers n such that 3*10^n + R_n + 8 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102965, there is no canonical definition to state claims against.
-/

/-! ## A102965.P7517989129597218565

`xor(A054977(n), A101827(A028310(n)))`
-/

namespace A102965.P7517989129597218565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A101827 (A028310 n).toNat)

end

end A102965.P7517989129597218565

/-!
# A102966: Numbers n such that 3*10^n + 2*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102966, there is no canonical definition to state claims against.
-/

/-! ## A102966.P1964016221252666842

`A101828(round(sqrt(n²+1)))+ceil(n/63)`
-/

namespace A102966.P1964016221252666842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101828 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌈(n : ℚ) / 63⌉

end

end A102966.P1964016221252666842

/-! ## A102966.P11280412556181037706

`A178334(n)+A101828(A028310(n))`
-/

namespace A102966.P11280412556181037706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101828 (A028310 n).toNat

end

end A102966.P11280412556181037706

/-!
# A102968: Numbers k such that 3*10^k + 2*R_k + 7 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102968, there is no canonical definition to state claims against.
-/

/-! ## A102968.P15749761713917036262

`A101831(n+1)+1`
-/

namespace A102968.P15749761713917036262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101831 (n + 1) + 1

end

end A102968.P15749761713917036262

/-! ## A102968.P18077587796351542312

`A005408(n)-(2*n-A101831(A348553(n)))`
-/

namespace A102968.P18077587796351542312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A101831 (A348553 n).toNat)

end

end A102968.P18077587796351542312

/-! ## A102968.P10902539612049709013

`A020725(A101831(n+1))`
-/

namespace A102968.P10902539612049709013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101831 (n + 1)).toNat

end

end A102968.P10902539612049709013

/-!
# A102969: Numbers n such that 3*10^n + 4*R_n + 3 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102969, there is no canonical definition to state claims against.
-/

/-! ## A102969.P14940083601606202501

`A101833(n+1)+1`
-/

namespace A102969.P14940083601606202501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101833 (n + 1) + 1

end

end A102969.P14940083601606202501

/-! ## A102969.P2441553575737448472

`A222257(A101833(n+1))`
-/

namespace A102969.P2441553575737448472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (A101833 (n + 1)).toNat

end

end A102969.P2441553575737448472

/-!
# A102970: Numbers k such that 3*10^k + 4*R_k + 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102970, there is no canonical definition to state claims against.
-/

/-! ## A102970.P4807863297640360397

`A101834(n+1)+1`
-/

namespace A102970.P4807863297640360397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101834 (n + 1) + 1

end

end A102970.P4807863297640360397

/-! ## A102970.P16479163395826996808

`A020725(A101834(n+1))`
-/

namespace A102970.P16479163395826996808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101834 (n + 1)).toNat

end

end A102970.P16479163395826996808

/-!
# A102971: Numbers k such that 3*10^k + 5*R_k - 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102971, there is no canonical definition to state claims against.
-/

/-! ## A102971.P8139736270251594335

`A101835(n+1)+1`
-/

namespace A102971.P8139736270251594335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101835 (n + 1) + 1

end

end A102971.P8139736270251594335

/-!
# A102972: Numbers k such that 3*10^k + 5*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102972, there is no canonical definition to state claims against.
-/

/-! ## A102972.P14681203685522443435

`A101837(round(sqrt(n²+1)))+ceil(n/63)`
-/

namespace A102972.P14681203685522443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101837 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌈(n : ℚ) / 63⌉

end

end A102972.P14681203685522443435

/-! ## A102972.P4146546975458530847

`A178334(n)+A101837(round(sqrt(n²+1)))`
-/

namespace A102972.P4146546975458530847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101837 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A102972.P4146546975458530847

/-!
# A102973: Numbers k such that 3*10^k + 5*R_k + 4 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102973, there is no canonical definition to state claims against.
-/

/-! ## A102973.P17567685665729023717

`(A101838(A028310(n))+1)%(4^n)`
-/

namespace A102973.P17567685665729023717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101838 (A028310 n).toNat + 1) (4 ^ n : ℤ)

end

end A102973.P17567685665729023717

/-! ## A102973.P14716534084960163872

`A101838(A028310(n))+1-A000038(n)`
-/

namespace A102973.P14716534084960163872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101838 (A028310 n).toNat + (1 - A000038 n)

end

end A102973.P14716534084960163872

/-! ## A102973.P6026740026601492951

`(A101838(A028310(n))+1)*A057427(n)`
-/

namespace A102973.P6026740026601492951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101838 (A028310 n).toNat + 1) * A057427 n

end

end A102973.P6026740026601492951

/-! ## A102973.P7374245980180138683

`(A101838(A028310(n))+1)*char[A007318(n)]`
-/

namespace A102973.P7374245980180138683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101838 (A028310 n).toNat + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102973.P7374245980180138683

/-! ## A102973.P8919508145032241419

`(A101838(A028310(n))+1)*and(1, A000040(n+1))`
-/

namespace A102973.P8919508145032241419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101838 (A028310 n).toNat + 1) * Int.land 1 (A000040 (n + 1))

end

end A102973.P8919508145032241419

/-!
# A102974: Numbers k such that 3*10^k + 6*R_k - 5 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102974, there is no canonical definition to state claims against.
-/

/-! ## A102974.P10407536909746101554

`A101839(n+1)+1`
-/

namespace A102974.P10407536909746101554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101839 (n + 1) + 1

end

end A102974.P10407536909746101554

/-!
# A102975: Numbers k such that 3*10^k + 6*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102975, there is no canonical definition to state claims against.
-/

/-! ## A102975.P15755843113802385770

`A101840(n+1)+1`
-/

namespace A102975.P15755843113802385770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101840 (n + 1) + 1

end

end A102975.P15755843113802385770

/-! ## A102975.P9897832131497810153

`2-(A271954(n)-A101840(A348553(n)))`
-/

namespace A102975.P9897832131497810153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A271954 n - A101840 (A348553 n).toNat)

end

end A102975.P9897832131497810153

/-! ## A102975.P6100481768704359919

`2-(A271955(n)-A101840(A348553(n)))`
-/

namespace A102975.P6100481768704359919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A271955 n - A101840 (A348553 n).toNat)

end

end A102975.P6100481768704359919

/-! ## A102975.P3079940538834971249

`A000040((-1)^(2*n))-(1-A101840(A348553(n)))`
-/

namespace A102975.P3079940538834971249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((-1) ^ (2 * n)).toNat - (1 - A101840 (A348553 n).toNat)

end

end A102975.P3079940538834971249

/-! ## A102975.P2154221409134651424

`1-(A277815(A277817(n))-A101840(A348553(n)))`
-/

namespace A102975.P2154221409134651424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A277815 (A277817 n).toNat - A101840 (A348553 n).toNat)

end

end A102975.P2154221409134651424

/-!
# A102976: Numbers k such that 3*10^k + 7*R_k - 6 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102976, there is no canonical definition to state claims against.
-/

/-! ## A102976.P5256682144102887770

`A101841(n+1)+1`
-/

namespace A102976.P5256682144102887770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101841 (n + 1) + 1

end

end A102976.P5256682144102887770

/-!
# A102978: Numbers k such that 3*10^k + 8*R_k - 7 is a prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A102978, there is no canonical definition to state claims against.
-/

/-! ## A102978.P11139927168737315769

`A101844(n+1)+1`
-/

namespace A102978.P11139927168737315769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101844 (n + 1) + 1

end

end A102978.P11139927168737315769

/-!
# A102980: Numbers n such that 3*10^n + 8*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102980, there is no canonical definition to state claims against.
-/

/-! ## A102980.P13899806454566601504

`A101847(n+1)+1`
-/

namespace A102980.P13899806454566601504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101847 (n + 1) + 1

end

end A102980.P13899806454566601504

/-! ## A102980.P11124323057639842962

`A020725(A101847(n+1))`
-/

namespace A102980.P11124323057639842962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101847 (n + 1)).toNat

end

end A102980.P11124323057639842962

/-!
# A102981: Numbers n such that 4*10^n + R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102981, there is no canonical definition to state claims against.
-/

/-! ## A102981.P16470791052112408210

`A101716(n+1)+1`
-/

namespace A102981.P16470791052112408210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101716 (n + 1) + 1

end

end A102981.P16470791052112408210

/-! ## A102981.P3346928501255101437

`A199343(A101716(n+1))`
-/

namespace A102981.P3346928501255101437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A101716 (n + 1)).toNat

end

end A102981.P3346928501255101437

/-!
# A102982: Numbers n such that 4*10^n + R_n + 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102982, there is no canonical definition to state claims against.
-/

/-! ## A102982.P5500926938192646377

`A101717(n+1)+1`
-/

namespace A102982.P5500926938192646377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101717 (n + 1) + 1

end

end A102982.P5500926938192646377

/-! ## A102982.P18070982262400309522

`A117571(A101717(n+1))`
-/

namespace A102982.P18070982262400309522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A101717 (n + 1)).toNat

end

end A102982.P18070982262400309522

/-!
# A102983: Numbers n such that 4*10^n + R_n + 8 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102983, there is no canonical definition to state claims against.
-/

/-! ## A102983.P15846790495532876441

`A101718(n+1)+1`
-/

namespace A102983.P15846790495532876441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101718 (n + 1) + 1

end

end A102983.P15846790495532876441

/-! ## A102983.P12320017451407729536

`A004482(A101718(n+1))`
-/

namespace A102983.P12320017451407729536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A101718 (n + 1)).toNat

end

end A102983.P12320017451407729536

/-!
# A102984: Numbers n such that 4*10^n + 2*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102984, there is no canonical definition to state claims against.
-/

/-! ## A102984.P15911601742508722698

`A101719(A028310(n))-(floor(acot(n))-1)`
-/

namespace A102984.P15911601742508722698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101719 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A102984.P15911601742508722698

/-! ## A102984.P17580334323976125969

`A101719(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A102984.P17580334323976125969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101719 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A102984.P17580334323976125969

/-! ## A102984.P7612084948721351052

`∪[A101706(3*n+1), A101719(n+1)+1]`
-/

namespace A102984.P7612084948721351052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101719 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102984.P7612084948721351052

/-! ## A102984.P3754812617699581671

`A287866(n+1)+A101719(A028310(n))`
-/

namespace A102984.P3754812617699581671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287866 (n + 1) + A101719 (A028310 n).toNat

end

end A102984.P3754812617699581671

/-! ## A102984.P10761566158149652028

`A287866(n+1)+A101719(A274933(n+1))`
-/

namespace A102984.P10761566158149652028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287866 (n + 1) + A101719 (A274933 (n + 1)).toNat

end

end A102984.P10761566158149652028

/-!
# A102985: Numbers n such that 4*10^n + 2*R_n + 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102985, there is no canonical definition to state claims against.
-/

/-! ## A102985.P6666352490852012934

`A178334(n)+A101720(round(sqrt(n²+1)))`
-/

namespace A102985.P6666352490852012934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101720 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A102985.P6666352490852012934

/-! ## A102985.P3312103937775258474

`A101720(A028310(n))+char[A007318(n)]`
-/

namespace A102985.P3312103937775258474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101720 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102985.P3312103937775258474

/-! ## A102985.P7630714168037415631

`A101720(A028310(n))+ceil(n/A000041(n))`
-/

namespace A102985.P7630714168037415631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101720 (A028310 n).toNat + ⌈(n : ℚ) / (A000041 n : ℚ)⌉

end

end A102985.P7630714168037415631

/-! ## A102985.P2535105193429779189

`A101720(A028310(n))+A000040(n+1)%2`
-/

namespace A102985.P2535105193429779189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101720 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102985.P2535105193429779189

/-! ## A102985.P15590348919778978427

`A101720(A028310(n))+A000045(round(n/(n+1)))`
-/

namespace A102985.P15590348919778978427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101720 (A028310 n).toNat + A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A102985.P15590348919778978427

/-!
# A102986: Numbers n such that 4*10^n + 2*R_n + 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102986, there is no canonical definition to state claims against.
-/

/-! ## A102986.P9915913639650519225

`A101721(n+1)+1`
-/

namespace A102986.P9915913639650519225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101721 (n + 1) + 1

end

end A102986.P9915913639650519225

/-!
# A102988: Numbers n such that 4*10^n + 3*R_n - 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102988, there is no canonical definition to state claims against.
-/

/-! ## A102988.P10969600171795513481

`A101723(n+1)+1`
-/

namespace A102988.P10969600171795513481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101723 (n + 1) + 1

end

end A102988.P10969600171795513481

/-! ## A102988.P11854774762990678232

`A183071(A229621(2*(n+1)))-n`
-/

namespace A102988.P11854774762990678232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183071 (A229621 (2 * (n + 1))).toNat - (n : ℤ)

end

end A102988.P11854774762990678232

/-! ## A102988.P3290559335665916994

`∑[A335519(A323433(n)-A074795(n+1))]`
-/

namespace A102988.P3290559335665916994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (A323433 n - A074795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102988.P3290559335665916994

/-! ## A102988.P4299647579502267132

`A227507(record[A227507(n+1)])+A170886(n)`
-/

namespace A102988.P4299647579502267132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A170886 n

end

end A102988.P4299647579502267132

/-!
# A102989: Numbers n such that 4*10^n + 3*R_n + 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102989, there is no canonical definition to state claims against.
-/

/-! ## A102989.P2310506018289767301

`A101724(n+1)+1`
-/

namespace A102989.P2310506018289767301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101724 (n + 1) + 1

end

end A102989.P2310506018289767301

/-!
# A102990: Numbers n such that 4*10^n + 3*R_n + 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102990, there is no canonical definition to state claims against.
-/

/-! ## A102990.P6913677649692123949

`A101725(n+1)+1`
-/

namespace A102990.P6913677649692123949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101725 (n + 1) + 1

end

end A102990.P6913677649692123949

/-! ## A102990.P2371270232213417646

`A020725(A101725(n+1))`
-/

namespace A102990.P2371270232213417646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101725 (n + 1)).toNat

end

end A102990.P2371270232213417646

/-!
# A102991: Numbers n such that 4*10^n + 5*R_n - 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102991, there is no canonical definition to state claims against.
-/

/-! ## A102991.P16379684425623407382

`A101726(A028310(n))+A057427(n)`
-/

namespace A102991.P16379684425623407382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101726 (A028310 n).toNat + A057427 n

end

end A102991.P16379684425623407382

/-! ## A102991.P10527203409409026345

`A178334(n)+A101726(A028310(n))`
-/

namespace A102991.P10527203409409026345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101726 (A028310 n).toNat

end

end A102991.P10527203409409026345

/-! ## A102991.P8913541674171426890

`A101726(A028310(n))+char[A007318(n)]`
-/

namespace A102991.P8913541674171426890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101726 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102991.P8913541674171426890

/-! ## A102991.P18339490482317959708

`A101726(A028310(n))+A000040(n+1)%2`
-/

namespace A102991.P18339490482317959708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101726 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102991.P18339490482317959708

/-! ## A102991.P15548387691439873300

`A101726(A028310(n))+A008683(2*A000040(n+1))`
-/

namespace A102991.P15548387691439873300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101726 (A028310 n).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A102991.P15548387691439873300

/-!
# A102992: Numbers n such that 4*10^n + 5*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102992, there is no canonical definition to state claims against.
-/

/-! ## A102992.P15251109455330022495

`A101727(n+1)+1`
-/

namespace A102992.P15251109455330022495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101727 (n + 1) + 1

end

end A102992.P15251109455330022495

/-!
# A102993: Numbers n such that 4*10^n + 5*R_n + 4 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102993, there is no canonical definition to state claims against.
-/

/-! ## A102993.P10576909120825233768

`A101728(n+1)+1`
-/

namespace A102993.P10576909120825233768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101728 (n + 1) + 1

end

end A102993.P10576909120825233768

/-! ## A102993.P1433449332292126477

`A020725(A101728(n+1))`
-/

namespace A102993.P1433449332292126477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101728 (n + 1)).toNat

end

end A102993.P1433449332292126477

/-!
# A102994: Numbers n such that 4*10^n + 6*R_n - 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102994, there is no canonical definition to state claims against.
-/

/-! ## A102994.P10257564024041723250

`A101729(n+1)+1`
-/

namespace A102994.P10257564024041723250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101729 (n + 1) + 1

end

end A102994.P10257564024041723250

/-!
# A102995: Numbers n such that 4*10^n + 7*R_n - 6 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102995, there is no canonical definition to state claims against.
-/

/-! ## A102995.P9254822102675653756

`A101732(n+1)+1`
-/

namespace A102995.P9254822102675653756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101732 (n + 1) + 1

end

end A102995.P9254822102675653756

/-!
# A102996: Numbers n such that 4*10^n + 7*R_n + 2 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102996, there is no canonical definition to state claims against.
-/

/-! ## A102996.P3413799194875933243

`A101733(n+1)+1`
-/

namespace A102996.P3413799194875933243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101733 (n + 1) + 1

end

end A102996.P3413799194875933243

/-! ## A102996.P11146869331545566495

`A020725(A101733(n+1))`
-/

namespace A102996.P11146869331545566495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101733 (n + 1)).toNat

end

end A102996.P11146869331545566495

/-!
# A102998: Numbers n such that 4*10^n + 8*R_n - 5 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102998, there is no canonical definition to state claims against.
-/

/-! ## A102998.P507060870603930580

`A101735(n+1)+1`
-/

namespace A102998.P507060870603930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101735 (n + 1) + 1

end

end A102998.P507060870603930580

/-!
# A102999: Numbers n such that 4*10^n + 8*R_n - 1 is prime, where R_n = 11...1 is the repunit (A002275) of length n.

The programs for A102999, there is no canonical definition to state claims against.
-/

/-! ## A102999.P4195184223562814207

`∪[A101706(3*n+1), A101736(n+1)+1]`
-/

namespace A102999.P4195184223562814207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101736 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102999.P4195184223562814207

/-! ## A102999.P16774405244161006394

`A101736(A028310(n))+A057427(n)`
-/

namespace A102999.P16774405244161006394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101736 (A028310 n).toNat + A057427 n

end

end A102999.P16774405244161006394

/-! ## A102999.P850385740292366161

`A178334(n)+A101736(A028310(n))`
-/

namespace A102999.P850385740292366161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101736 (A028310 n).toNat

end

end A102999.P850385740292366161

/-! ## A102999.P250241295682128501

`A101736(A028310(n))-A057428(n)`
-/

namespace A102999.P250241295682128501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101736 (A028310 n).toNat - A057428 n

end

end A102999.P250241295682128501

/-! ## A102999.P1549724982001780580

`A101736(A028310(n))+A000040(n+1)%2`
-/

namespace A102999.P1549724982001780580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101736 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A102999.P1549724982001780580

